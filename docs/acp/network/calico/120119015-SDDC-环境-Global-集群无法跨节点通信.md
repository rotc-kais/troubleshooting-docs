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

# SDDC 环境 Global 集群无法跨节点通信

节点无法访问其它节点上的 Pod IPIP 网络包从 veth-pair 进入 OVS 后未从物理网卡 eth2 发出 OVS 流表中存在 actions:drop 的规则

## Cause
- IPIP 隧道配置异常
- OVS 流表规则导致 IPIP 包被丢弃
- 网络连接跟踪状态异常

## Resolution
- 临时关闭 Calico 的 IPIP 模式

## [workaround]
- 关闭 IPIP 模式

## [Related Information]
- Calico
- Kube-OVN
- OVS 流表
- IPIP 协议
- veth-pair c095685a52fd_h
- 物理网卡 eth2
- Component: Calico
- Page ID: 120119015
- Original Title: SDDC 环境 Global 集群无法跨节点通信
