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

# pod不配置limit和request无法启动

无法创建出pod

## Cause
- 命名空间配置了resourcequota和limits资源

## Resolution
- pod必须配置resource.limit或者request

## [workaround]

## [Related Information]
- Environment: Kubernetes 所有版本
- resourcequota
- limits
- resource.limit
- resource.request
- Component: (待归类)
- Page ID: 130561130
- Original Title: 基础架构-pod不配置limit和request无法启动
