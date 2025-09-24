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

# pod 一直卡在terminating 状态

pod 一直卡在terminating 状态 容器进程可能已终止但未被正确清理 强制删除后问题解决

## Cause
- 容器进程异常终止导致Docker未正确清理
- 可能涉及僵尸进程或资源未释放问题

## Resolution
- docker rm -f 容器id
- docker rm -f pause容器id
- kubectl delete pod pod名 -n 命名空间 --grace-period=0 --force

## [workaround]

## [Related Information]
- Environment: 3.8
- kubelet
- docker
- containerd
- finalizer
- Component: Docker
- Page ID: 333316766
- Original Title: 容器平台-原生组件-Kubernetes，Docker等原生组件问题-pod 一直卡在terminating 状态-115666
