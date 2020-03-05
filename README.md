# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.6.1-alpine-3.11.3
2020/03/05 15:19:23 [INFO] ▶ Start clair-scanner
2020/03/05 15:19:26 [INFO] ▶ Server listening on port 9279
2020/03/05 15:19:26 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/05 15:19:26 [INFO] ▶ Analyzing 2936adf17b4afd0b9d7c432c13e74b9a5e31be26e4342b99295951311cbe1dab
2020/03/05 15:19:26 [INFO] ▶ Analyzing 74150e5e34222ba46cee19b3310e77ce08c843f762d8c75ebba593a0f0117331
2020/03/05 15:19:26 [INFO] ▶ Analyzing 3b29dbc13b9273adac813a0d31f2419940b9e349b5ccc83022a00bf598d0d895
2020/03/05 15:19:26 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.6.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/elasticsearch-oss:7.6.1-alpine-3.11.3
2020-03-05T13:19:31.393Z        INFO    Need to update DB
2020-03-05T13:19:31.393Z        INFO    Downloading DB...
2020-03-05T13:19:35.331Z        INFO    Reopening DB...
2020-03-05T13:19:38.605Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.6.1-alpine-3.11.3 (alpine 3.11.3)
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
2020/03/05 15:19:53 [INFO] ▶ Start clair-scanner
2020/03/05 15:20:05 [INFO] ▶ Server listening on port 9279
2020/03/05 15:20:05 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/05 15:20:05 [INFO] ▶ Analyzing 505ffa8057ea7f09b5f5fbe5af8f7f6641ad5714a51fd04f9499950462d4a9b6
2020/03/05 15:20:05 [INFO] ▶ Analyzing 4a076a7c5bdd6cd8e2fa6bbaecef505c5479b17f1213105763fce301e1f29ea6
2020/03/05 15:20:05 [INFO] ▶ Analyzing 74f738f0127464d87783cccaa04b00d79599f069e222704950f6612d34c4320b
2020/03/05 15:20:05 [INFO] ▶ Analyzing 60ca3011bf18cf6c998a2fe41d40de08dabd0b9ab0b0e7aa50d638fe129075a5
2020/03/05 15:20:05 [INFO] ▶ Analyzing c6f381f9406a00a190a6d887f8bb2bd258b0c4975e2b5da860710a64e476a778
2020/03/05 15:20:05 [INFO] ▶ Analyzing d54d71b1ce7b7f5f77c3852fc00f4e944aa726301dc9981556fe6bff222269a4
2020/03/05 15:20:05 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.1
2020-03-05T13:20:09.798Z        INFO    Need to update DB
2020-03-05T13:20:09.798Z        INFO    Downloading DB...
2020-03-05T13:20:15.088Z        INFO    Reopening DB...
2020-03-05T13:20:27.468Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.1 (centos 7.7.1908)
=========================================================================
Total: 629 (UNKNOWN: 0, LOW: 63, MEDIUM: 460, HIGH: 102, CRITICAL: 4)
```
