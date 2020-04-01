# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.6.2-alpine-3.11.5
2020/04/01 15:48:35 [INFO] ▶ Start clair-scanner
2020/04/01 15:48:37 [INFO] ▶ Server listening on port 9279
2020/04/01 15:48:37 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/01 15:48:37 [INFO] ▶ Analyzing acb1eefc22473825d83ac2d42dc8de2f23991f8eb6d3e9230ada5e3beba74b4b
2020/04/01 15:48:37 [INFO] ▶ Analyzing 183da8b1dcee4c4d2c9f8b5efdf780eb65d4b206f2ccb693c3354104fc5b0e2d
2020/04/01 15:48:37 [INFO] ▶ Analyzing 60e8e1f2d4fdf306f6b45dba3ce7ba0353102e4fa6db575d27d82e7b252c5388
2020/04/01 15:48:37 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.6.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/elasticsearch-oss:7.6.2-alpine-3.11.5
2020-04-01T12:48:46.083Z        INFO    Need to update DB
2020-04-01T12:48:46.083Z        INFO    Downloading DB...
2020-04-01T12:48:51.479Z        INFO    Reopening DB...
2020-04-01T12:48:56.390Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.6.2-alpine-3.11.5 (alpine 3.11.5)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2
2020/04/01 15:49:11 [INFO] ▶ Start clair-scanner
2020/04/01 15:49:23 [INFO] ▶ Server listening on port 9279
2020/04/01 15:49:23 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/04/01 15:49:23 [INFO] ▶ Analyzing 2438ff49e7169e3866489720c24b0380a507be1b4310fc85713075cf94a3281f
2020/04/01 15:49:24 [INFO] ▶ Analyzing 44da533f6b62505320103351f4a2abf7356f49742ffcf7af0624e86f8a287826
2020/04/01 15:49:24 [INFO] ▶ Analyzing 4bcdd24e74c140a638ed0906552795cf55f91a73d8631aca4854222cb3896539
2020/04/01 15:49:24 [INFO] ▶ Analyzing 15126ac4404e6cac84017641e6a6f989d4b76becff4ec82da55ffe80d2f257c1
2020/04/01 15:49:24 [INFO] ▶ Analyzing 3f0b99f207beb4bb5ae50d6a7b51e4fc9696759f1f2638564c4a2dd7093f2eb7
2020/04/01 15:49:25 [INFO] ▶ Analyzing 0e616a7fba66170d9c6ab7d04f65fb49c6be22f1830a64c0d9efc48f9e011564
2020/04/01 15:49:25 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2
2020-04-01T12:49:27.294Z        INFO    Need to update DB
2020-04-01T12:49:27.294Z        INFO    Downloading DB...
2020-04-01T12:49:40.600Z        INFO    Reopening DB...
2020-04-01T12:50:09.697Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.2 (centos 7.7.1908)
=========================================================================
Total: 635 (UNKNOWN: 0, LOW: 66, MEDIUM: 459, HIGH: 106, CRITICAL: 4)
```
