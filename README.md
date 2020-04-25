# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~294MB)

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.6.2-alpine-3.11.6
2020/04/25 12:19:01 [INFO] ▶ Start clair-scanner
2020/04/25 12:19:04 [INFO] ▶ Server listening on port 9279
2020/04/25 12:19:04 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 12:19:04 [INFO] ▶ Analyzing 1c763aec450d4e65221ced53b85c480df6c2f31f75eea06723aba4562f7f6018
2020/04/25 12:19:04 [INFO] ▶ Analyzing 53d3cc5c7dce29cc6bb6cc44bc191c9497893bb1d579eb926d9cbd4607e7a764
2020/04/25 12:19:04 [INFO] ▶ Analyzing 7135c4e19872e095818c667a9b6f765a497682cc47ff8ecee9b3c494b61d224a
2020/04/25 12:19:04 [INFO] ▶ Analyzing 89bde34b8718520da888a18272a4b114a7da522955286dea4d6b72ca1433aada
2020/04/25 12:19:04 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.6.2-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/elasticsearch-oss:7.6.2-alpine-3.11.6
2020-04-25T09:19:10.885Z        INFO    Need to update DB
2020-04-25T09:19:10.885Z        INFO    Downloading DB...
2020-04-25T09:19:18.125Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.6.2-alpine-3.11.6 (alpine 3.11.6)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~690MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2
2020/04/25 12:19:28 [INFO] ▶ Start clair-scanner
2020/04/25 12:19:38 [INFO] ▶ Server listening on port 9279
2020/04/25 12:19:38 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/04/25 12:19:38 [INFO] ▶ Analyzing 2438ff49e7169e3866489720c24b0380a507be1b4310fc85713075cf94a3281f
2020/04/25 12:19:40 [INFO] ▶ Analyzing 44da533f6b62505320103351f4a2abf7356f49742ffcf7af0624e86f8a287826
2020/04/25 12:19:40 [INFO] ▶ Analyzing 4bcdd24e74c140a638ed0906552795cf55f91a73d8631aca4854222cb3896539
2020/04/25 12:19:40 [INFO] ▶ Analyzing 15126ac4404e6cac84017641e6a6f989d4b76becff4ec82da55ffe80d2f257c1
2020/04/25 12:19:40 [INFO] ▶ Analyzing 3f0b99f207beb4bb5ae50d6a7b51e4fc9696759f1f2638564c4a2dd7093f2eb7
2020/04/25 12:19:40 [INFO] ▶ Analyzing 0e616a7fba66170d9c6ab7d04f65fb49c6be22f1830a64c0d9efc48f9e011564
2020/04/25 12:19:40 [WARN] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2] contains 12 total vulnerabilities
2020/04/25 12:19:40 [ERRO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2] contains 12 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2
2020-04-25T09:19:42.683Z        INFO    Need to update DB
2020-04-25T09:19:42.683Z        INFO    Downloading DB...
2020-04-25T09:19:58.639Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2 (centos 7.7.1908)
=========================================================================
Total: 633 (UNKNOWN: 0, LOW: 64, MEDIUM: 459, HIGH: 106, CRITICAL: 4)
```
