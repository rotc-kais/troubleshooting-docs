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

# 如何修改topolvm的discover

资源不足导致频繁重启

## Cause
- discover-device默认资源配置50m50mi不足
- 直接修改Deployment会被还原

## Resolution
- 通过nativestor-setting ConfigMap动态配置资源

## [workaround]

## [Related Information]
- Environment: 3.8.1
- nativestor-setting
- DISCOVER_DEVICE_RESOURCE
- configmap
- nativestor-system
- Component: (待归类)
- Page ID: 124682383
- Original Title: 如何修改topolvm的discover-device资源
