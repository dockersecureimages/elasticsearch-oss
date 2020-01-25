# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.5.2-alpine-3.11.3
2020/01/25 17:02:42 [INFO] ▶ Start clair-scanner
2020/01/25 17:02:45 [INFO] ▶ Server listening on port 9279
2020/01/25 17:02:45 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/25 17:02:45 [INFO] ▶ Analyzing 52ee5cc9ecd31e94d34d545103d2f25f7f3c26caefc567790944eec58208ad3e
2020/01/25 17:02:45 [INFO] ▶ Analyzing d578d057db7a6725408b17d415c7771371e762832309e8e058a9693fed2d6769
2020/01/25 17:02:45 [INFO] ▶ Analyzing 147ef7875ba582f0fc6942c66590d1b723e7e6d07291648540502509cc475a89
2020/01/25 17:02:45 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.5.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/elasticsearch-oss:7.5.2-alpine-3.11.3
2020-01-25T15:02:51.336Z        INFO    Need to update DB
2020-01-25T15:02:51.336Z        INFO    Downloading DB...
2020-01-25T15:02:55.303Z        INFO    Reopening DB...
2020-01-25T15:02:59.563Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.5.2-alpine-3.11.3 (alpine 3.11.3)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.2
2020/01/25 17:03:06 [INFO] ▶ Start clair-scanner
2020/01/25 17:03:16 [INFO] ▶ Server listening on port 9279
2020/01/25 17:03:16 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/01/25 17:03:18 [INFO] ▶ Analyzing c0c41e57eb5009a03a3f53416a9bd9175391ad934ef50f416cb73f8be757ca85
2020/01/25 17:03:19 [INFO] ▶ Analyzing 62f9bc776d7f444a5b54cf0206fbd695a7df7c504683ed7f0a05acdf4ca9864a
2020/01/25 17:03:19 [INFO] ▶ Analyzing d48e50d12a8300693cf7a212b4268fc1934eb911085a2d846488d2c321e577c3
2020/01/25 17:03:19 [INFO] ▶ Analyzing 6da802831299f26caa77b23beaa08c3403f06ffe170c5b1f8d5f545ec977d3e4
2020/01/25 17:03:19 [INFO] ▶ Analyzing ae3cf4ae9753ba4218bf534b2c56e2439b47494e509758ff48e47c66596b33ed
2020/01/25 17:03:19 [INFO] ▶ Analyzing 19a1edb6b2dbebc2fe3b97a9181271b146959db51ce47c6003538258f61c3d93
2020/01/25 17:03:19 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.2
2020-01-25T15:03:42.849Z        INFO    Need to update DB
2020-01-25T15:03:42.850Z        INFO    Downloading DB...
2020-01-25T15:03:46.357Z        INFO    Reopening DB...
2020-01-25T15:03:57.165Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.2 (centos 7.7.1908)
=========================================================================
Total: 627 (UNKNOWN: 0, LOW: 61, MEDIUM: 457, HIGH: 103, CRITICAL: 6)
```
