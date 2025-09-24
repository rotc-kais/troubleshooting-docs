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

# acp v3.14.2 升级到 v3.18.2，u2o 行为发生变更导致 underlay pod 无法访问 api server

underlay pod 无法访问 api server 策略路由失效，路由走物理网关导致被防火墙拦截

## Cause
- kube-ovn 新版本中 u2o 实现变更，underlay 子网访问 apiserver 默认走物理网络

## Resolution
- 手动添加 ovn 策略路由恢复原来的网络路径

## [workaround]

## [Related Information]
- u2o
- kube-ovn
- 策略路由
- join 子网
- ovn 策略路由
- network policy
- Component: 升级
- Page ID: 347046133
- Original Title: acp v3.14.2 升级到 v3.18.2，u2o 行为发生变更导致 underlay pod 无法访问 api server
