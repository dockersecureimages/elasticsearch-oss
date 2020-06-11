FROM alpine:3.12.0
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG ELASTICSEARCH_VERSION=7.7.1
ARG ES_TARBALL_ASC="https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-oss-${ELASTICSEARCH_VERSION}-no-jdk-linux-x86_64.tar.gz.asc"
## https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-oss-7.7.1-no-jdk-linux-x86_64.tar.gz.sha512
ARG EXPECTED_SHA_URL="https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-oss-${ELASTICSEARCH_VERSION}-no-jdk-linux-x86_64.tar.gz.sha512"
ARG ES_TARBALL_SHA="22afb445a3bdca4cfdcc32c9bbd2599bc3c294415985b1863247a5caf98dbcae58362b8c809820ef55f98a51a1d91b8db922578a5146447c0228f01da9985bba"
ARG GPG_KEY="46095ACC8548582C1A2699A9D27D666CD88E42B4"

ENV PATH=/usr/share/elasticsearch/bin:$PATH \
    ES_TMPDIR=/usr/share/elasticsearch/tmp

RUN apk add --no-cache openjdk11-jre-headless su-exec bash ;\
    apk add --no-cache -t .build-deps wget ca-certificates gnupg openssl ;\
    set -ex ;\
    wget -O /tmp/elasticsearch.tar.gz https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-oss-${ELASTICSEARCH_VERSION}-no-jdk-linux-x86_64.tar.gz ;\
    if [ "$ES_TARBALL_SHA" ]; then \
      echo "$ES_TARBALL_SHA  /tmp/elasticsearch.tar.gz" | sha512sum -c - ;\
    fi ;\
    if [ "$ES_TARBALL_ASC" ]; then \
      wget -O /tmp/elasticsearch.tar.gz.asc "$ES_TARBALL_ASC" ;\
      export GNUPGHOME="$(mktemp -d)" ;\
      ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" \
      || gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" \
      || gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY" ) ;\
      gpg --batch --verify /tmp/elasticsearch.tar.gz.asc /tmp/elasticsearch.tar.gz ;\
      rm -rf "$GNUPGHOME" || true ;\
    fi ;\
    tar -xf /tmp/elasticsearch.tar.gz -C /tmp/ ;\
    mv /tmp/elasticsearch-$ELASTICSEARCH_VERSION /usr/share/elasticsearch ;\
    adduser -D -h /usr/share/elasticsearch elasticsearch ;\
    for path in \
      /usr/share/elasticsearch/data \
      /usr/share/elasticsearch/logs \
      /usr/share/elasticsearch/config \
      /usr/share/elasticsearch/config/scripts \
      /usr/share/elasticsearch/tmp \
      /usr/share/elasticsearch/plugins ;\
    do \
      mkdir -p "$path" ;\
      chown -R elasticsearch:elasticsearch "$path" ;\
    done ;\
    apk del --purge .build-deps ;\
    rm -rf /tmp/* /var/cache/apk/* /usr/share/elasticsearch/jdk

# TODO: remove this (it removes X-Pack ML so it works on Alpine)
RUN rm -rf /usr/share/elasticsearch/modules/x-pack-ml/platform/linux-x86_64

ADD data/ /

RUN chmod +x /*.sh

WORKDIR /usr/share/elasticsearch

VOLUME ["/usr/share/elasticsearch/data"]

EXPOSE 9200 9300

ENTRYPOINT ["/elastic-entrypoint.sh"]

CMD ["elasticsearch"]

# HEALTHCHECK CMD ["docker-healthcheck.sh"]
