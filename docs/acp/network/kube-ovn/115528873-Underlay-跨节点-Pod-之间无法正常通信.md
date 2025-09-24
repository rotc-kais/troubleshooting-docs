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

# Underlay 跨节点 Pod 之间无法正常通信

Underlay 模式下跨节点 Pod 之间连接超时，ICMP 卡顿或出现 DUP 包 仅两个特定 VMWare 虚拟机节点上的 Pod 互相通信异常 节点直接访问 Pod 正常，物理网络无丢包

## Cause
- VMWare 物理机双网卡 bond 导致重复 ICMP Reply 包通过 ens224 进入 OVS Datapath
- OVS fdb 表异常导致流量被错误转发

## Resolution
- 临时方法：将 bond1 的其中一个网卡手动设置为 down 或分散调度虚拟机到不同物理机
- 永久方法：在 VMWare 主机设置 Net.ReversePathFwdCheckPromisc=1

## [workaround]

## [Related Information]
**Screenshots**
![](assets/underlay-kua-jie-dian-pod-zhi-jian-wu-fa-zheng-chang-tong-xin/image2022-6-9_18-27-16.png)
- ens224
- ovs-dpctl dump-flows
- br-provider
- fdb 表
- Net.ReversePathFwdCheckPromisc
- patch-localnet.ovn-default-to-br-int
- Component: kube-Ovn
- Page ID: 115528873
- Original Title: Underlay 跨节点 Pod 之间无法正常通信
