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

# 修改global集群lanaya组件的服务配置

服务经常OOM

## Cause
- 日志数据量较大导致内存不足

## Resolution
- kubectl get prdb base
- kubectl edit prdb base 添加 valuesOverride.ait/chart-alauda-aiops.lanaya.resources 配置
- kubectl get deployment -n cpaas-system lanaya -oyaml|grep resources: -A 6

## [workaround]

## [Related Information]
- Environment: 3.0.x 3.4.x
- prdb/base
- deployment/lanaya
- cpaas-system
- resources.requests
- resources.limits
- Component: (待归类)
- Page ID: 112055203
- Original Title: 修改global集群lanaya组件的服务配置
