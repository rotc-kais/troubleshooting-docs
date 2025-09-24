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

# 流水线发布应用阶段报错rads not found

流水线发布应用阶段报错deployment.apps "rads-rads" not found

## Cause
- 容器平台rads应用的deployment名称已变更，流水线应用阶段仍使用旧deployment名称配置

## Resolution
- 在流水线应用阶段配置中重新选择动态表单下的应用及对应deployment关系，更新配置后重新运行流水线

## [workaround]

## [Related Information]
- Environment: TKE 3.8.2
- 流水线应用阶段配置
- 动态表单
- rads应用
- deployment名称
- Component: 流水线
- Page ID: 133075569
- Original Title: 流水线发布应用阶段报错rads not found
