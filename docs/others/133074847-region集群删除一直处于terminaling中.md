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

# region集群删除一直处于terminaling中

region集群删除一直处于terminaling中 后台查看cluster状态terminaling

## Cause
- cluster资源存在finalizers字段阻止删除
- 缺少对应的ClusterCredential(CC)资源

## Resolution
- 删除cluster资源的finalizers字段
- 手动创建缺失的ClusterCredential资源(使用指定模板yaml)
- apply新创建的ClusterCredential资源后再次删除cluster

## [workaround]

## [Related Information]
- Environment: 3.6.1
- cluster资源
- ClusterCredential(CC)资源
- finalizers字段
- platform.tkestack.io/v1
- ClusterCredential
- cc-xxxxxxxxx
- Component: (待归类)
- Page ID: 133074847
- Original Title: region集群删除一直处于terminaling中
