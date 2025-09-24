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

# zookeeper一个实例crashloopbackoff 无法启动

crashloopbackoff unable to load database on disk

## Cause
- 该节点的zk数据损坏

## Resolution
- kubectl get pod --all-namespaces -owide |grep zook
- kubectl scale -n cpaas-system deploy cpaas-zookeeper --replicas=0
- cd /cpaas/data/zookeeper
- mv zookeeper zookeeper.bak
- kubectl scale -n cpaas-system deploy cpaas-zookeeper --replicas=3
- kubectl get pod --all-namespaces |grep zook

## [workaround]

## [Related Information]
- Environment: 通用
- /cpaas/data/zookeeper
- cpaas-zookeeper
- cpaas-system
- unable to load database on disk
- Component: zookeeper
- Page ID: 119087454
- Original Title: zookeeper一个实例crashloopbackoff 无法启动
