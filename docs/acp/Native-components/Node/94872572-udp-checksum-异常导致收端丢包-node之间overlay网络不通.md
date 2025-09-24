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

# udp checksum 异常导致收端丢包, node之间overlay网络不通

跨 node 网络不通 经过 ovs 的网络路径都不通 收端收到包时 checksum 错误

## Cause
- 网卡驱动或内核问题（hns3 网卡出现，mellanox 网卡未出现）

## Resolution
- ethtool -K ETH tx off
- 加入 iptables 条目去掉无谓的标签（kubeovn 1.7.1 后默认加入）
- ovs-vsctl set open . external-ids:ovn-encap-csum=false

## [workaround]

## [Related Information]
- Environment: 使用 hns3 网卡的环境
- ovs
- ovn0
- geneve
- hns3 网卡
- mellanox 网卡
- kubeovn 1.7.1
- iptables
- ethtool
- Component: Node
- Page ID: 94872572
- Original Title: udp checksum 异常导致收端丢包, node之间overlay网络不通
