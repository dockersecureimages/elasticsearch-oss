# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.6.1-alpine-3.11.5
2020/03/24 17:11:28 [INFO] ▶ Start clair-scanner
2020/03/24 17:11:31 [INFO] ▶ Server listening on port 9279
2020/03/24 17:11:31 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 17:11:31 [INFO] ▶ Analyzing 75374ef8a15c97e86973833b122ba48ee26953fcaa415090282076206f161b98
2020/03/24 17:11:31 [INFO] ▶ Analyzing 10f109fef464dd145c388cc752f2ded25e5ec02cca87988edea591aabf064b0d
2020/03/24 17:11:31 [INFO] ▶ Analyzing 70e117b83dd4d25341a9fa69c1b5a2ccaca3ba1a92179370d0a937e278d78be0
2020/03/24 17:11:31 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.6.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/elasticsearch-oss:7.6.1-alpine-3.11.5
2020-03-24T15:11:34.954Z        INFO    Need to update DB
2020-03-24T15:11:34.954Z        INFO    Downloading DB...
2020-03-24T15:11:38.689Z        INFO    Reopening DB...
2020-03-24T15:11:43.721Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.6.1-alpine-3.11.5 (alpine 3.11.5)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.1
2020/03/24 17:11:49 [INFO] ▶ Start clair-scanner
2020/03/24 17:11:59 [INFO] ▶ Server listening on port 9279
2020/03/24 17:11:59 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/24 17:12:00 [INFO] ▶ Analyzing 505ffa8057ea7f09b5f5fbe5af8f7f6641ad5714a51fd04f9499950462d4a9b6
2020/03/24 17:12:01 [INFO] ▶ Analyzing 4a076a7c5bdd6cd8e2fa6bbaecef505c5479b17f1213105763fce301e1f29ea6
2020/03/24 17:12:01 [INFO] ▶ Analyzing 74f738f0127464d87783cccaa04b00d79599f069e222704950f6612d34c4320b
2020/03/24 17:12:01 [INFO] ▶ Analyzing 60ca3011bf18cf6c998a2fe41d40de08dabd0b9ab0b0e7aa50d638fe129075a5
2020/03/24 17:12:01 [INFO] ▶ Analyzing c6f381f9406a00a190a6d887f8bb2bd258b0c4975e2b5da860710a64e476a778
2020/03/24 17:12:01 [INFO] ▶ Analyzing d54d71b1ce7b7f5f77c3852fc00f4e944aa726301dc9981556fe6bff222269a4
2020/03/24 17:12:01 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.1
2020-03-24T15:12:03.382Z        INFO    Need to update DB
2020-03-24T15:12:03.382Z        INFO    Downloading DB...
2020-03-24T15:12:08.118Z        INFO    Reopening DB...
2020-03-24T15:12:21.568Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.1 (centos 7.7.1908)
=========================================================================
Total: 637 (UNKNOWN: 0, LOW: 67, MEDIUM: 460, HIGH: 106, CRITICAL: 4)
```
