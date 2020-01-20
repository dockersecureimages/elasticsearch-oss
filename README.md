# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.5.1-alpine-3.11.3
2020/01/20 23:35:31 [INFO] ▶ Start clair-scanner
2020/01/20 23:35:34 [INFO] ▶ Server listening on port 9279
2020/01/20 23:35:34 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 23:35:34 [INFO] ▶ Analyzing d38464c45121d41b1393851bfc0564418d9590ed7be60c1f2864e10267335fd4
2020/01/20 23:35:34 [INFO] ▶ Analyzing 695a2ae119232a743c7b5a401a582b6bbfc99cb52296450f20039b3c64ef8a2a
2020/01/20 23:35:34 [INFO] ▶ Analyzing 5f786d5612d543f61c1b6ff9c163f0e854687cfbdb2bd9f6162da0368abd02d2
2020/01/20 23:35:34 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.5.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/elasticsearch-oss:7.5.1-alpine-3.11.3
2020-01-20T21:35:38.542Z        INFO    Need to update DB
2020-01-20T21:35:38.542Z        INFO    Downloading DB...
2020-01-20T21:35:41.998Z        INFO    Reopening DB...
2020-01-20T21:35:45.232Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.5.1-alpine-3.11.3 (alpine 3.11.3)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.1
2020/01/20 23:35:51 [INFO] ▶ Start clair-scanner
2020/01/20 23:36:01 [INFO] ▶ Server listening on port 9279
2020/01/20 23:36:01 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/01/20 23:36:02 [INFO] ▶ Analyzing fd0023f383834b00571add95085dce65fffade62a50bd0b2588adc30df19ad7f
2020/01/20 23:36:03 [INFO] ▶ Analyzing d27bfefa24126609ee6f96ffca0eecfbc7dd753827820ce5e398c013cececf2a
2020/01/20 23:36:03 [INFO] ▶ Analyzing 2e0d28359c7de57dfccfc4df655399749ea6a3771090817ab08420b7cbe0e66f
2020/01/20 23:36:04 [INFO] ▶ Analyzing fa5cf8c295dcb254afe6b2633c3b989199b3610fd3ddcd1c7c1f29e10f279122
2020/01/20 23:36:04 [INFO] ▶ Analyzing 27d4beb8191543a0a0e46584e5fc5f62b60b24b58808e2234e7164074bb806cb
2020/01/20 23:36:04 [INFO] ▶ Analyzing 2bf91410c5e768082af580697de6d7bdc4ff6fbc4b4006fd869035a319709383
2020/01/20 23:36:04 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.1
2020-01-20T21:36:06.617Z        INFO    Need to update DB
2020-01-20T21:36:06.617Z        INFO    Downloading DB...
2020-01-20T21:36:11.053Z        INFO    Reopening DB...
2020-01-20T21:36:24.456Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.1 (centos 7.7.1908)
=========================================================================
Total: 624 (UNKNOWN: 0, LOW: 61, MEDIUM: 455, HIGH: 102, CRITICAL: 6)
```
