# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~294MB)

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.7.0-alpine-3.11.6
2020/05/14 11:55:53 [INFO] ▶ Start clair-scanner
2020/05/14 11:55:56 [INFO] ▶ Server listening on port 9279
2020/05/14 11:55:56 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/14 11:55:56 [INFO] ▶ Analyzing 9af03f0f9c4cba706e04bf528f369e5bf85f69380d59c3a70b6838178a7920c2
2020/05/14 11:55:56 [INFO] ▶ Analyzing c20a7f2296994402962e8b0cd3f3ea3650276e5e4160dd7778493e3969ba89e6
2020/05/14 11:55:56 [INFO] ▶ Analyzing df4fade9d34944f936acfae76832b7fb445e07e9f07c3420fbb6d954bde8411d
2020/05/14 11:55:56 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.7.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/elasticsearch-oss:7.7.0-alpine-3.11.6
2020-05-14T08:56:00.600Z        INFO    Need to update DB
2020-05-14T08:56:00.600Z        INFO    Downloading DB...
2020-05-14T08:56:08.135Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.7.0-alpine-3.11.6 (alpine 3.11.6)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~646MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.0
2020/05/14 11:56:17 [INFO] ▶ Start clair-scanner
2020/05/14 11:56:28 [INFO] ▶ Server listening on port 9279
2020/05/14 11:56:28 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/05/14 11:56:28 [INFO] ▶ Analyzing a98618dd07d42a15e9fd4869ee5a64481d747829c3240427e925004d0f31ad0a
2020/05/14 11:56:28 [INFO] ▶ Analyzing bc944bc05758f50723215006d24c7c5e7ecad430b48535e6228b8ef2d736515f
2020/05/14 11:56:29 [INFO] ▶ Analyzing 9d8d998f7a26e62212b6dc74cf173af9a310eb053c022536b584ae33fc8458a2
2020/05/14 11:56:29 [INFO] ▶ Analyzing 7b9ee5c53f2c5cbcdf082d423cf30f2568896f1ff9f00ff97d1d79840880b51c
2020/05/14 11:56:29 [INFO] ▶ Analyzing e71b0e71d4ba1941ea86535024e8fb50a902a0c1a263327f1c1871dff3d575e1
2020/05/14 11:56:29 [INFO] ▶ Analyzing a269198fcd6f8d56912888a0c194d9eda20cb3ed87384516e6137cb4ddd1948d
2020/05/14 11:56:29 [INFO] ▶ Analyzing 5d708863433f345194786c4b7eae1d99291ec27c3873deb1a9c61e28cf7cd7f3
2020/05/14 11:56:29 [INFO] ▶ Analyzing 03cdc96af10a937b67523147edf1067e23027644827dd196dfcaa1be69b7b5ed
2020/05/14 11:56:29 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.0
2020-05-14T08:56:31.399Z        INFO    Need to update DB
2020-05-14T08:56:31.399Z        INFO    Downloading DB...
2020-05-14T08:56:46.832Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.0 (centos 7.8.2003)
=========================================================================
Total: 607 (UNKNOWN: 0, LOW: 365, MEDIUM: 237, HIGH: 5, CRITICAL: 0)
```
