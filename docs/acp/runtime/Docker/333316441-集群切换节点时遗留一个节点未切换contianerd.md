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

# 集群切换节点时，遗留一个节点未切换contianerd

遗留一个节点未切换containerd 新加节点依然使用docker

## Cause
- containerd-migration DaemonSet未在该节点运行
- 节点runtime annotation未更新

## Resolution
- 重新修改节点运行时配置
- 更新cls资源中的runtime annotation

## [workaround]

## [Related Information]
- Environment: 3.14.2
- containerd-migration DaemonSet
- cls资源
- runtime annotation
- Component: Docker
- Page ID: 333316441
- Original Title: 容器平台-原生组件-Kubernetes，Docker等原生组件问题-集群切换节点时，遗留一个节点未切换contianerd-115342
