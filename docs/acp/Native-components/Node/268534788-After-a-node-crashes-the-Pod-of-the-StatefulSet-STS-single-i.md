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

# After a node crashes, the Pod of the StatefulSet (STS) single instance service cannot automatically migrate to other nodes without specifying the node settings

StatefulSet (STS) single-instance Pod cannot automatically migrate to other nodes after a node crash

## Cause
- Inherent rule limitations of StatefulSet single-instance mode prevent Pod drift during deletion process

## Resolution
- Execute manual forced deletion via: kubectl delete pod <pod-name> -n <namespace> --grace-period=0 --force

## [workaround]

## [Related Information]
- Environment: general
- StatefulSet
- Pod
- kubectl delete
- --grace-period=0
- --force
- Component: Node
- Page ID: 268534788
- Original Title: After a node crashes, the Pod of the StatefulSet (STS) single instance service cannot automatically migrate to other nodes without specifying the node settings
