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

# 麒麟 V10 SP3 偶现 overlay Pod 一直卡在 ContainerCreating 状态

Pod 卡在 ContainerCreating 状态 event 报错 ping 子网网关失败 pod 的 ARP 请求网关 MAC 地址无响应

## Cause
- 内核 openvswitch 模块未触发 upcall

## Resolution

## [workaround]

## [Related Information]
- Environment: Kylin Linux Advanced Server V10 (Lance), 内核 4.19.90-52.22.v2207.ky10.x86_64, ACP v3.12.2, ovs v2.16.8
- ovs-vswitchd
- ovn-controller
- nb/sb 数据库
- ovn-trace
- ovs-appctl dpctl/dump-flows
- 内核流表
- netlink
- vlog 配置
- Component: kube-Ovn
- Page ID: 252972562
- Original Title: 麒麟 V10 SP3 偶现 overlay Pod 一直卡在 ContainerCreating 状态
