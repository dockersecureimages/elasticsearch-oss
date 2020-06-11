# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~290MB)

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.7.1-alpine-3.12.0
2020/06/11 13:36:16 [INFO] ▶ Start clair-scanner
2020/06/11 13:36:18 [INFO] ▶ Server listening on port 9279
2020/06/11 13:36:18 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 13:36:18 [INFO] ▶ Analyzing e338694e9395fc8f98d85e29679c7487ef34710c3abd421b4ee847993074bb3f
2020/06/11 13:36:19 [INFO] ▶ Analyzing 40f9c4b61fa9d6f348cf91a0258380459fa834a4cf55199d98f92d16f9dd4e99
2020/06/11 13:36:19 [INFO] ▶ Analyzing f7ebd4bef56de87d63ed72a304673bc795762a32d4c6bb9043e546b6029ba6bf
2020/06/11 13:36:19 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.7.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/elasticsearch-oss:7.7.1-alpine-3.12.0
2020-06-11T10:36:25.064Z        INFO    Need to update DB
2020-06-11T10:36:25.064Z        INFO    Downloading DB...
2020-06-11T10:36:32.302Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.7.1-alpine-3.12.0 (alpine 3.12.0)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~693MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.1
2020/06/11 13:36:38 [INFO] ▶ Start clair-scanner
2020/06/11 13:36:47 [INFO] ▶ Server listening on port 9279
2020/06/11 13:36:47 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/11 13:36:47 [INFO] ▶ Analyzing a98618dd07d42a15e9fd4869ee5a64481d747829c3240427e925004d0f31ad0a
2020/06/11 13:36:48 [INFO] ▶ Analyzing 60ad86edb46840d4cd8458cfa19639092d3b77e79e59695f81c14ad9c0891797
2020/06/11 13:36:49 [INFO] ▶ Analyzing fc7e8e421170a7dd58c0b35b528ce9c4eb76b93d59f52dc1078278e5d88cb3ca
2020/06/11 13:36:49 [INFO] ▶ Analyzing f9d731efaf683b69339d409701f561ecd04d6f317ff1cfca8252566dd1f2efec
2020/06/11 13:36:49 [INFO] ▶ Analyzing 708b69bb3c7550a6fccae66fe0f035d9812d17a88228afd3342ef681b6eb6fad
2020/06/11 13:36:49 [INFO] ▶ Analyzing 9497cecf596d8249b690ac89ead2fd21875a3003764cc78abafdcabf782f61c6
2020/06/11 13:36:49 [INFO] ▶ Analyzing 383228d28a890b5de1ead8c4e3cb3df830c7bac17ff8b0155940d42afa0d2626
2020/06/11 13:36:49 [INFO] ▶ Analyzing b49e6b8a9e0aed098440e7fde3585c4620759e45a8c130a9be5bb6014b80ba8c
2020/06/11 13:36:49 [WARN] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.1] contains 1 total vulnerabilities
2020/06/11 13:36:49 [ERRO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.1
2020-06-11T10:36:51.282Z        INFO    Need to update DB
2020-06-11T10:36:51.282Z        INFO    Downloading DB...
2020-06-11T10:37:10.354Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.1 (centos 7.8.2003)
=========================================================================
Total: 617 (UNKNOWN: 0, LOW: 366, MEDIUM: 244, HIGH: 7, CRITICAL: 0)
```
