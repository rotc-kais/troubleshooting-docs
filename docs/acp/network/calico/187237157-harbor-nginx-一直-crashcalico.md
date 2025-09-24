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

# harbor nginx 一直 crash，calico

calico-node 处于 not ready 状态 BGP not established with xxxxxxx 错误 harbor nginx pod 持续 crash

## Cause
- calico-node 的 IP 自动探测配置 interface=bond0 未精确匹配 bond0 网卡
- bird 进程监听了 bond0.150 而非 bond0 网卡

## Resolution
- 修改 calico-node 环境变量为 interface=^bond0$ 精确匹配网卡名称

## [workaround]

## [Related Information]
- 179
- bird
- calico-node
- interface=^bond0$
- bond0.150
- Component: Calico
- Page ID: 187237157
- Original Title: harbor nginx 一直 crash，calico-node 一直 not ready
