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

# 添加spring boot架构应用无jvm指标数据

无jvm指标数据

## Cause
- spring-cloud-monitor未关联对应svc
- 65095端口port.name未配置为prometheus

## Resolution
- 检查servicemonitor的selector.matchlabels标签与svc标签匹配
- 修改svc 65095端口的port.name为prometheus

## [workaround]

## [Related Information]
- Environment: 3.6.1
- servicemonitor
- svc
- 65095端口
- selector.matchlabels
- Component: Prometheus
- Page ID: 115527017
- Original Title: 添加spring boot架构应用无jvm指标数据
