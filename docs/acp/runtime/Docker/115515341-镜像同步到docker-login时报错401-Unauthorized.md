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

# 镜像同步到docker login时报错：401 Unauthorized

镜像同步到docker login时报错：401 Unauthorized

## Cause
- 源地址仓库和目标地址仓库时间不同步
- 高可用harbor环境中registry节点与core节点时间不同步

## Resolution
- 同步源地址仓库与目标地址仓库时间
- 同步高可用harbor环境中registry节点和core节点时间

## [workaround]

## [Related Information]
- Environment: 所有版本
- docker login
- harbor-registry
- harbor-core
- ntp/time_sync
- Component: Docker
- Page ID: 115515341
- Original Title: 镜像同步到docker login时报错：401 Unauthorized
