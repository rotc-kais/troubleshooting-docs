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

# 【Underlay】KubeVirt 虚拟机中运行的 Underlay 集群无法正常工作

Pod 无法正常创建（ContainerCreating） 物理网关连通性检查失败

## Cause
- OVN 流表无法解析陌生 MAC 地址对应的 LSP（get_fdb(eth.dst) 结果为 none）

## Resolution
- 手动在 KubeVirt 虚拟机的 LSP 地址中增加 unknown

## [workaround]

## [Related Information]
- OVS fdb
- ovn-trace
- LSP
- localnet_learn_fdb
- Component: 虚拟机
- Page ID: 130557449
- Original Title: 【Underlay】KubeVirt 虚拟机中运行的 Underlay 集群无法正常工作
