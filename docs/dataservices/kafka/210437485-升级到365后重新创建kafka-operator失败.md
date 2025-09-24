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

# 升级到3.6.5后重新创建kafka operator失败

kafka operator pod无法启动 istio相关webhook阻塞导致pod创建失败

## Cause
- istio webhook配置拦截了operator创建

## Resolution
- 备份并删除对应的webhook资源

## [workaround]

## [Related Information]
- Environment: 3.6.5
- webhook
- Component: kafka
- Page ID: 210437485
- Original Title: 数据服务-kafka-升级到3.6.5后重新创建kafka operator失败
