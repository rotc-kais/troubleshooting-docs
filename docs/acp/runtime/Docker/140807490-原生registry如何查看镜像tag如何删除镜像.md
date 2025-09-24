---
kind:
  - Troubleshooting
products:
  - Alauda Container Platform
  - Alauda DevOps
  - Alauda AI
  - Alauda Application Services
  - Alauda Service Mesh
  - Alauda Developer Portal
ProductsVersion:
  - 4.1.0,4.2.x
---
<!-- A type of document that involves encountering a fault, diagnosing it, performing root cause analysis, and providing solutions. -->

# 原生registry如何查看镜像tag，如何删除镜像

JIRA Jira：

## Cause

## Resolution
- curl -X GET http://registry_host:5000/v2/_catalog
- curl -X GET http://registry_host:5000/v2/<images_name>/tags/list
- curl --header "Accept: application/vnd.docker.distribution.manifest.v2+json" -I -X GET http://registry_host:5000/v2/<images_name>/manifests/<tag>
- curl -I -X DELETE http://10.74.234.17:5001/v2/<images_name>/manifests/<Digest>

## [workaround]

## [Related Information]
- Environment: 通用
- 5000
- /v2/_catalog
- /v2/<images_name>/tags/list
- /v2/<images_name>/manifests/<tag>
- registry
- Docker-Content-Digest
- Component: Docker
- Page ID: 140807490
- Original Title: 原生registry如何查看镜像tag，如何删除镜像
