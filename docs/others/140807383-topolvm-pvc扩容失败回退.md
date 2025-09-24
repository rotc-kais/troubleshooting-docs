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

# topolvm pvc扩容失败回退

pvc扩容失败 无法调整pvc容量 pvc使用率达100%

## Cause
- 扩容容量超过节点实际剩余存储空间(节点剩余500G但扩容到1T)

## Resolution
- 编辑pvc绑定的pv，将persistentVolumeReclaimPolicy改为Retain
- 删除pv的claimRef.uid和claimRef.resourceVersion字段
- 删除pvc和对应pod
- 等待重建

## [workaround]

## [Related Information]
- Environment: 3.10.1
- topolvm
- pvc
- pv
- persistentVolumeReclaimPolicy
- claimRef
- Component: (待归类)
- Page ID: 140807383
- Original Title: topolvm pvc扩容失败回退
