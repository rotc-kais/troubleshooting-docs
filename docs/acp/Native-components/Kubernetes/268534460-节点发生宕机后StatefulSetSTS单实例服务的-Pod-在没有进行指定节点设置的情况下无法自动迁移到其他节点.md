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

# 节点发生宕机后，StatefulSet（STS）单实例服务的 Pod 在没有进行指定节点设置的情况下，无法自动迁移到其他节点

StatefulSet单实例Pod在节点宕机后无法自动迁移到其他节点

## Cause
- StatefulSet单实例模式本身的规则限制

## Resolution
- kubectl get pods -n <namespace>
- kubectl delete pod <pod-name> -n <namespace> --grace-period=0 --force

## [workaround]

## [Related Information]
- Environment: 通用
- StatefulSet
- Pod
- kubectl delete
- --grace-period=0
- --force
- Component: Kubernetes
- Page ID: 268534460
- Original Title: 节点发生宕机后，StatefulSet（STS）单实例服务的 Pod 在没有进行指定节点设置的情况下，无法自动迁移到其他节点
