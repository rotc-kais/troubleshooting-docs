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

# region1的istio已经删除，但是提示证书过期

证书过期告警持续存在 删除istio后证书仍显示过期

## Cause
- 残留的asm历史资源未清理

## Resolution
- 手动删除asm历史资源
- 重启region zeus组件

## [workaround]
- 删除istio-system命名空间下的secret
- 重启cert-manager所有pod

## [Related Information]
**Screenshots**
![](assets/wei-fu-wu-yun-yuan-sheng-ying-yong-istioxiang-guan-region1de-istioyi-jing-shan-c/1753404019_99781_282d57_%25E5%25B1%258F%25E5%25B9%2595%25E6%2588%25AA%25E5%259B%25BE%25202025-07-25%2520083959_1.png)
![](assets/wei-fu-wu-yun-yuan-sheng-ying-yong-istioxiang-guan-region1de-istioyi-jing-shan-c/%25E5%25B1%258F%25E5%25B9%2595%25E6%2588%25AA%25E5%259B%25BE%25202025-07-25%2520093527_1.png)对应的是第一个？已删
![](assets/wei-fu-wu-yun-yuan-sheng-ying-yong-istioxiang-guan-region1de-istioyi-jing-shan-c/%25E5%25B1%258F%25E5%25B9%2595%25E6%2588%25AA%25E5%259B%25BE%25202025-07-25%2520153723_1.png)
- Environment: 3.16.1
- cert-manager
- istio-system
- asm
- region zeus
- Component: Istio
- Page ID: 324174600
- Original Title: 微服务-云原生应用-Istio相关-region1的istio已经删除，但是提示证书过期-113707
