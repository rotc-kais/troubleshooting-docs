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

# POD的IP段与现有业务IP段有冲突，如何变更POD的IP

POD的IP段与现有业务IP段有冲突，导致业务不能调用集群外服务

## Cause
- POD网段和宿主机网段存在冲突

## Resolution
- 修改POD的IP段（需安排现场调整，切换时业务会中断）

## [workaround]
- 增加临时容器网段供POD使用

## [Related Information]
- Environment: 3.18.2
- pod网段
- 宿主机网段
- 容器网段配置
- Component: (待归类)
- Page ID: 333316476
- Original Title: 容器平台-网络-其他-POD的IP段与现有业务IP段有冲突，如何变更POD的IP-115603
