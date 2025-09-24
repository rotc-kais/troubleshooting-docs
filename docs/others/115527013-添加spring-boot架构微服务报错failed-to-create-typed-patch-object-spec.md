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

# 添加spring boot架构微服务报错：failed to create typed patch object: .spec.ports: duplicate entries for key [port=65095,protocol=\"TCP\"

添加spring boot架构微服务时报错：failed to create typed patch object: .spec.ports: duplicate entries for key [port=65095,protocol="TCP"

## Cause
- 删除应用后未自动清理svc中65095端口配置，导致重复添加时端口冲突

## Resolution
- 1. 定位应用对应的Service资源
2. 删除svc中65095端口的配置
3. 重新添加应用

## [workaround]

## [Related Information]
- Environment: 3.6.1
- 65095
- TCP
- svc
- Component: (待归类)
- Page ID: 115527013
- Original Title: 添加spring boot架构微服务报错：failed to create typed patch object: .spec.ports: duplicate entries for key [port=65095,protocol=\"TCP\"
