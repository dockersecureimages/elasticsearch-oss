# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~293MB)

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.8.0-alpine-3.12.0
2020/06/19 21:24:53 [INFO] ▶ Start clair-scanner
2020/06/19 21:24:56 [INFO] ▶ Server listening on port 9279
2020/06/19 21:24:56 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/19 21:24:56 [INFO] ▶ Analyzing e479b4a929f5c17d8e21543944eed6a12d3f12c89b6702692d80645f2554fbc4
2020/06/19 21:24:56 [INFO] ▶ Analyzing 23554ea8ffebea2c6ad8ebd6af1e706d5d0051a06e46252c1f8e1877ce5eb380
2020/06/19 21:24:56 [INFO] ▶ Analyzing e60d1997ff66bda2c4428b793624d9b49be16c05e99e6f7760ad0830e3cf7f5c
2020/06/19 21:24:56 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.8.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/elasticsearch-oss:7.8.0-alpine-3.12.0
2020-06-19T18:24:59.505Z        INFO    Need to update DB
2020-06-19T18:24:59.505Z        INFO    Downloading DB...
2020-06-19T18:25:07.140Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.8.0-alpine-3.12.0 (alpine 3.12.0)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~696MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.8.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.8.0
2020/06/19 21:25:12 [INFO] ▶ Start clair-scanner
2020/06/19 21:25:22 [INFO] ▶ Server listening on port 9279
2020/06/19 21:25:22 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/19 21:25:22 [INFO] ▶ Analyzing 0ac0760e9f7b034362396a6556315afa4e45eb359c1f1dc8159868685c621c69
2020/06/19 21:25:22 [INFO] ▶ Analyzing fb5da3ff03fecfc418d98b375c2e736d977d263ee7256d416470671304e0631a
2020/06/19 21:25:23 [INFO] ▶ Analyzing a2fee0f7794ebed0b412808cf76a4777d7c602919062ee4041d73196cd07eab4
2020/06/19 21:25:23 [INFO] ▶ Analyzing 955ec06787ef933de83fa10fabed9db078963ee011c8c93edea44b544d2029ea
2020/06/19 21:25:23 [INFO] ▶ Analyzing c391e51ba6de3e092fc5d66cdeb302efd2ed080c3e5f56f3981714e097108ce1
2020/06/19 21:25:23 [INFO] ▶ Analyzing 7a6de9978b50f855f7db09da607496969cc48b4080f07d9a8d4cf158c4cd876d
2020/06/19 21:25:23 [INFO] ▶ Analyzing b87e15c224d6aa5be2b4ebf4b39ba348530b1fa1cc3bbb5512991671867113e7
2020/06/19 21:25:23 [INFO] ▶ Analyzing c557a15c8e97fa4759feb703c8a17c4c9fa10bc97b2ce71e96a9f542de0f33b9
2020/06/19 21:25:23 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.8.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.8.0
2020-06-19T18:25:25.513Z        INFO    Need to update DB
2020-06-19T18:25:25.513Z        INFO    Downloading DB...
2020-06-19T18:25:40.404Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.8.0 (centos 7.8.2003)
=========================================================================
Total: 621 (UNKNOWN: 0, LOW: 364, MEDIUM: 252, HIGH: 5, CRITICAL: 0)
```
