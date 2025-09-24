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

# http2: client connection lost

Pod 访问 API Server 失败，报错：http2: client connection lost ovs-vswitchd.log 中存在错误：execute ct(commit,zone=8,label=0/0x1),5 failed (Invalid argument) on packet icmp

## Cause
- net.ipv4.tcp_mtu_probing 参数未启用导致 MTU 探测问题

## Resolution
- 在 Pod 所在节点执行 sysctl -w net.ipv4.tcp_mtu_probing=1

## [workaround]

## [Related Information]
- Environment: 运行 Open vSwitch 的 Kubernetes 节点
- ovs-vswitchd
- sysctl
- net.ipv4.tcp_mtu_probing
- /var/log/openvswitch/ovs-vswitchd.log
- Component: (待归类)
- Page ID: 108105078
- Original Title: http2: client connection lost
