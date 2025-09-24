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

# 【Underlay】ACP升级时节点网络中断

节点网络中断，vswitchd 进程在 06:24 退出后未自动重启，直到 08:02 节点重启后恢复 kube-ovn-cni 日志显示 'failed to add nic eth1 to external bridge br-local-p-l1: Link not found' kubelet 日志显示 'failed to update lease' 错误，节点与 apiserver 通信中断

## Cause
- ovs-ovn/kube-ovn-cni 的 Pod 被删除后未能创建新 Pod，导致 OVS 组件异常
- vswitchd 进程异常退出后未及时重启，导致 OVS 网桥(br-provider/br-int)被删除

## Resolution
- 通过重启节点临时恢复网络

## [workaround]

## [Related Information]
- Environment: Kylin Linux Advanced Server V10 (Sword), 内核 4.19.90-24.4.v2101.ky10.aarch64
- br-provider
- br-int
- kube-ovn-cni
- vswitchd
- /var/log/openvswitch/ovs-vswitchd.log
- /var/log/messages
- Component: 升级
- Page ID: 133086031
- Original Title: 【Underlay】ACP升级时节点网络中断
