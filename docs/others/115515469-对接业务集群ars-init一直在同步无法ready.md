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

# 对接业务集群ars init一直在同步无法ready

ars init无法ready init中的region name一直在变化

## Cause
- 备global集群存在未清理的clsm和cluster资源

## Resolution
- 删除备global集群中未清理的clsm和cluster资源
- 前端删除集群后重新接入

## [workaround]

## [Related Information]
- Environment: 3.4.2容灾环境
- clsm
- cluster
- region name
- Component: (待归类)
- Page ID: 115515469
- Original Title: 对接业务集群ars init一直在同步无法ready
