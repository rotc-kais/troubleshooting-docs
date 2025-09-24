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

# 通过master1做高可用的k8s集群，在master1节点损坏的情况情况下临时修复方法

业务pod无法启动

## Cause
- 原master1节点IP入口失效导致集群功能异常

## Resolution
- 在正常master节点执行ip addr add 1.1.1.1/24 dev eth0绑定原master1节点IP

## [workaround]

## [Related Information]
- Environment: TKE 3.0.4集群，三master架构，calico网络组件
- calico
- master节点IP配置
- Component: Kubernetes
- Page ID: 146359170
- Original Title: 通过master1做高可用的k8s集群，在master1节点损坏的情况情况下临时修复方法
