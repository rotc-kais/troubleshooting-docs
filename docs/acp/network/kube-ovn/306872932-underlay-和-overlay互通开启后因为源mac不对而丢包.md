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

# underlay 和 overlay互通开启后因为源mac不对而丢包

underlay pod无法访问api-server 回报的dstmac变为chassis mac导致丢包

## Cause
- 华为SDN对任意报文都会更新arp缓存
- underlay pod访问api-server的tcp报文src mac持续为chassis mac

## Resolution
- https://github.com/kubeovn/kube-ovn/pull/5192
- https://github.com/kubeovn/kube-ovn/pull/5385

## [workaround]

## [Related Information]
- Environment: 民泰银行环境，华为SDN网络
- u2oInterconnection
- 华为SDN
- arp缓存
- chassis mac
- api-server
- underlay/overlay网络
- Component: kube-ovn
- Page ID: 306872932
- Original Title: underlay 和 overlay互通开启后因为源mac不对而丢包
