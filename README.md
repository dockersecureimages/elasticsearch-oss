# Elasticsearch OSS

Elasticsearch OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~293MB)

Security scanning using Clair
```
clair-scanner secureimages/elasticsearch-oss:7.9.1-alpine-3.12.0
2020/09/04 16:22:12 [INFO] ▶ Start clair-scanner
2020/09/04 16:22:14 [INFO] ▶ Server listening on port 9279
2020/09/04 16:22:14 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/04 16:22:14 [INFO] ▶ Analyzing d297ed78bafb1111248e701c79c98c5b8d21a21683f07287e5083f1fefe3771e
2020/09/04 16:22:14 [INFO] ▶ Analyzing e45eabe9b6c32626fbcac9b9437dd15ee22da0c8237497b407a3e90171219956
2020/09/04 16:22:14 [INFO] ▶ Analyzing 60035b56c902c8508f7eb9d43258594f6436e02f5533582e705143c36877ebff
2020/09/04 16:22:14 [INFO] ▶ Image [secureimages/elasticsearch-oss:7.9.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/elasticsearch-oss:7.9.1-alpine-3.12.0
2020-09-04T16:22:18.797Z        INFO    Need to update DB
2020-09-04T16:22:18.797Z        INFO    Downloading DB...
2020-09-04T16:22:26.342Z        INFO    Detecting Alpine vulnerabilities...

secureimages/elasticsearch-oss:7.9.1-alpine-3.12.0 (alpine 3.12.0)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~649MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:7.9.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/elasticsearch/elasticsearch-oss:7.9.1
2020/09/04 16:22:31 [INFO] ▶ Start clair-scanner
2020/09/04 16:22:40 [INFO] ▶ Server listening on port 9279
2020/09/04 16:22:40 [INFO] ▶ Analyzing 33b5e87a65b65985a0445827bd27436b3467bb578d1b1cc2aa0b6000685fb4bf
2020/09/04 16:22:40 [INFO] ▶ Analyzing aab095dcf6e7d3d755e6530525de0e72be8d18418ded914255f6f92a1ddba262
2020/09/04 16:22:40 [INFO] ▶ Analyzing 9f01972b7bf4b02c1b3e4ba626c5fb16fddcb837c4ba9ad4aa8f5b73594fdc48
2020/09/04 16:22:42 [INFO] ▶ Analyzing da26c09e8baf76464ed291b07e01e24a7061f931f605ff39076c3999ad093cf1
2020/09/04 16:22:42 [INFO] ▶ Analyzing 17d5da88301563dc83c357aa36827cc4eaa36647cb43741894a4e7bb69f33aed
2020/09/04 16:22:43 [INFO] ▶ Analyzing b549fcace86bdef504a85960b93c4503ec42170655ee8b058e64ef115203826a
2020/09/04 16:22:43 [INFO] ▶ Analyzing aea24f5c4575070981f0e53934631eb0da35b763145f4a084365cecc1adc1043
2020/09/04 16:22:43 [INFO] ▶ Analyzing 06b52fd50733d5b8a786972edb7cea6506d2e47cf56afdec79d42a3c67906f78
2020/09/04 16:22:43 [INFO] ▶ Analyzing 147aff34bbfc2cf2cc7c2ada5dc8c4337b6236c6e00c0f9828e662e985df98a3
2020/09/04 16:22:43 [INFO] ▶ Image [docker.elastic.co/elasticsearch/elasticsearch-oss:7.9.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress docker.elastic.co/elasticsearch/elasticsearch-oss:7.9.1
2020-09-04T16:22:44.496Z        INFO    Need to update DB
2020-09-04T16:22:44.496Z        INFO    Downloading DB...
2020-09-04T16:22:59.302Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/elasticsearch/elasticsearch-oss:7.9.1 (centos 7.8.2003)
=========================================================================
Total: 642 (UNKNOWN: 0, LOW: 369, MEDIUM: 268, HIGH: 5, CRITICAL: 0)
```
