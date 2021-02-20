# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~294MB)

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.10.2-alpine-3.13.2
2021/02/20 14:19:50 [INFO] ▶ Start clair-scanner
2021/02/20 14:19:53 [INFO] ▶ Server listening on port 9279
2021/02/20 14:19:53 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 14:19:53 [INFO] ▶ Analyzing 9dfa6448ed214918756e4078e993fc37c3be43006c47102bb2368d7e2d9cec87
2021/02/20 14:19:53 [INFO] ▶ Analyzing 6eb5ecf1fc3800ec37c56154ccd792c6aa987e0ee531c12e3dbfd12038edb691
2021/02/20 14:19:53 [INFO] ▶ Analyzing 1b9a826cdccd128f15d627844e2afb04895840e6bda4ee39283e9704fbedefed
2021/02/20 14:19:53 [WARN] ▶ Image [secureimages/elasticsearch-oss:7.10.2-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 14:19:53 [ERRO] ▶ Image [secureimages/elasticsearch-oss:7.10.2-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/elasticsearch-oss:7.10.2-alpine-3.13.2
2021-02-20T14:20:03.331Z        INFO    Need to update DB
2021-02-20T14:20:03.331Z        INFO    Downloading DB...
2021-02-20T14:20:09.848Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T14:20:09.851Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/elasticsearch-oss:7.10.2-alpine-3.13.2 (alpine 3.13.2)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~699MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2
2021/02/20 14:20:14 [INFO] ▶ Start clair-scanner
2021/02/20 14:20:24 [INFO] ▶ Server listening on port 9279
2021/02/20 14:20:24 [INFO] ▶ Analyzing b5ad3981919b474c18caec8885fc124b01bc7c3e7fa19738cbfae253a22d4a16
2021/02/20 14:20:24 [INFO] ▶ Analyzing 1bc987adcf62f974528c43ad55a8ab34bbab2ddd2116bd3d22cee57e81221b47
2021/02/20 14:20:27 [INFO] ▶ Analyzing e25832a8be2dfd6baca61557da785808a68b6938d6b507abf71f11ff98bb0846
2021/02/20 14:20:27 [INFO] ▶ Analyzing 2b2a56f9ad92ecbcf87fcedf9c47800716bdaac710dee1bffe13744a1c4b5fe6
2021/02/20 14:20:27 [INFO] ▶ Analyzing f97e172b771b3997d6366d41c95776a0841a0f8782943b70082c4976c99578b0
2021/02/20 14:20:27 [INFO] ▶ Analyzing 125e812c22b94772ad4a6da701b61a87dc6a3534a1883c3048bb353bbbb341dd
2021/02/20 14:20:27 [INFO] ▶ Analyzing 6167c2a29b7a22ff071df2977f468d9a5b98565c16a2927d3cd5d461ab0ae03c
2021/02/20 14:20:27 [INFO] ▶ Analyzing a9f0348762f51694a22f70acf2c3f324217d5e048b6c4ddd4cb92634072458ce
2021/02/20 14:20:27 [INFO] ▶ Analyzing d42c90f0a9d3f49a2a054e1568a18ffeae468f981fd601c38cf44c2774ff9e8c
2021/02/20 14:20:27 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2
2021-02-20T14:20:29.163Z        INFO    Need to update DB
2021-02-20T14:20:29.163Z        INFO    Downloading DB...
2021-02-20T14:20:43.963Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2021-02-20T14:20:44.036Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2 (centos 8.3.2011)
==========================================================================
Total: 168 (UNKNOWN: 0, LOW: 79, MEDIUM: 84, HIGH: 5, CRITICAL: 0)
```
