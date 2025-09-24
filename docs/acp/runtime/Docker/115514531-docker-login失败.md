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

# docker login失败

docker login报错: Error response from daemon: Get <http://10.17.5.3:31104/v2/>: net/http: request canceled (Client.Timeout exceeded while awaiting headers) Harbor页面显示request backend timeout http/https error

## Cause
- harbor-core线程堆积
- harbor-core进程卡死

## Resolution
- 重建harbor-core组件

## [workaround]

## [Related Information]
- Environment: 生产环境
- 31104端口
- /etc/docker/daemon.json
- .docker/config
- harbor-core
- insecure-registry
- Component: Docker
- Page ID: 115514531
- Original Title: docker login失败
