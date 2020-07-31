# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~292MB)

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.8.1-alpine-3.12.0
2020/07/31 17:04:04 [INFO] ▶ Start clair-scanner
2020/07/31 17:04:07 [INFO] ▶ Server listening on port 9279
2020/07/31 17:04:07 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/31 17:04:07 [INFO] ▶ Analyzing c22f5f5452504fa7e38c02458fc9787bd4433da3b0c7a645fd11e69ddc3ddf5c
2020/07/31 17:04:07 [INFO] ▶ Analyzing 74dbb4468b10d2175aa058534d17f48245cc700c538058df12daf4251ef8fbab
2020/07/31 17:04:07 [INFO] ▶ Analyzing 85cedf795aaad99c2338309fbe0d0c3c5c973b53322867f5b5862ed4caa4b5fe
2020/07/31 17:04:07 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.8.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress secureimages/elasticsearch-oss:7.8.1-alpine-3.12.0
2020-07-31T14:04:11.629Z        INFO    Need to update DB
2020-07-31T14:04:11.629Z        INFO    Downloading DB...
2020-07-31T14:04:18.686Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.8.1-alpine-3.12.0 (alpine 3.12.0)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~698MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.8.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.8.1
2020/07/31 17:04:35 [INFO] ▶ Start clair-scanner
2020/07/31 17:04:45 [INFO] ▶ Server listening on port 9279
2020/07/31 17:04:45 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/07/31 17:04:45 [INFO] ▶ Analyzing ac7518d96f4d4197b1040646dcf79af96ddc9ad7f06333a20a8a8f3512035932
2020/07/31 17:04:45 [INFO] ▶ Analyzing 294f8f3468f2b3eb8c584e6bf5756159a33c5d2225ab65e7a9923a5e03ed3a7f
2020/07/31 17:04:46 [INFO] ▶ Analyzing 44ead99e8d09c67ef36b979155fa6451ffc64884735a31c2ef3764edd4d33274
2020/07/31 17:04:46 [INFO] ▶ Analyzing cbc98a22010328928100260fb0fdf8ab466bf02b6791af24027bc8adf2289dc7
2020/07/31 17:04:46 [INFO] ▶ Analyzing f24ea10ff618536229b641df801dae62f7cbd17e4178ea31817b281a11f033b2
2020/07/31 17:04:46 [INFO] ▶ Analyzing 34c99480e023101441cb1e6e1cd4bd772381fba12704fdb5080f6025ca6e7d19
2020/07/31 17:04:46 [INFO] ▶ Analyzing 71992f6fc5edab6d907f9989653b34d5f366831419ada159c91b8aa4dad5aa2c
2020/07/31 17:04:46 [INFO] ▶ Analyzing df37e30ec5334dc271371c0a9995018b528714b401a960e3642d27141f72c8b8
2020/07/31 17:04:46 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.8.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.8.1
2020-07-31T14:04:49.055Z        INFO    Need to update DB
2020-07-31T14:04:49.055Z        INFO    Downloading DB...
2020-07-31T14:05:03.551Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.8.1 (centos 7.8.2003)
=========================================================================
Total: 624 (UNKNOWN: 0, LOW: 365, MEDIUM: 254, HIGH: 5, CRITICAL: 0)
```
