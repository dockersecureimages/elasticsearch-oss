# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.6.0-alpine-3.11.3
2020/02/11 20:22:38 [INFO] ▶ Start clair-scanner
2020/02/11 20:22:41 [INFO] ▶ Server listening on port 9279
2020/02/11 20:22:41 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/11 20:22:41 [INFO] ▶ Analyzing 24c0a62de08fec2f873edb9fcca1f8ba20c65ce747ac8d9ce48f0063f1dbea50
2020/02/11 20:22:41 [INFO] ▶ Analyzing e1fb8367c00cca953d56c9d988f4eb50c9b49e7867b34bed3450d00439bea9a3
2020/02/11 20:22:41 [INFO] ▶ Analyzing 8e2e94dd4ba75af5b1c0b70cd519c0837565aa310713138aec80062ac209d2f6
2020/02/11 20:22:41 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.6.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/elasticsearch-oss:7.6.0-alpine-3.11.3
2020-02-11T18:22:49.305Z        INFO    Need to update DB
2020-02-11T18:22:49.305Z        INFO    Downloading DB...
2020-02-11T18:22:53.346Z        INFO    Reopening DB...
2020-02-11T18:22:58.106Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.6.0-alpine-3.11.3 (alpine 3.11.3)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.0
2020/02/11 20:23:09 [INFO] ▶ Start clair-scanner
2020/02/11 20:23:19 [INFO] ▶ Server listening on port 9279
2020/02/11 20:23:19 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/02/11 20:23:19 [INFO] ▶ Analyzing edd3503a710b0fd21a754607b9b04c02c2e21b453111d55b898e9a2280d6b08f
2020/02/11 20:23:20 [INFO] ▶ Analyzing 2aac3c0618308434f57622aa6e9d5ebbe340fb28eab09b51fe96726d5ff48532
2020/02/11 20:23:20 [INFO] ▶ Analyzing f7dc52aa1320ea5b24e43992a79a6afba38717a528a71da65de2af4ae5af9e39
2020/02/11 20:23:20 [INFO] ▶ Analyzing 877884d30d5b7582f9792a34b81e636cf0af3f14d38d9cd7e21dac2f168fd5da
2020/02/11 20:23:20 [INFO] ▶ Analyzing 30be77b928351ca51ae7170931c807e360a3d0265392e93afe235a82a9fd0bf1
2020/02/11 20:23:20 [INFO] ▶ Analyzing 5f5abd777010dc2a76c88ad1a956cb08799ceb0f4d64e80d1acb063d8aaa5955
2020/02/11 20:23:20 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.0
2020-02-11T18:23:22.953Z        INFO    Need to update DB
2020-02-11T18:23:22.953Z        INFO    Downloading DB...
2020-02-11T18:23:27.028Z        INFO    Reopening DB...
2020-02-11T18:23:38.727Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.0 (centos 7.7.1908)
=========================================================================
Total: 621 (UNKNOWN: 0, LOW: 61, MEDIUM: 453, HIGH: 103, CRITICAL: 4)
```
