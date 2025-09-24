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

# 【Underlay】IP 转移功能在 Ubuntu 下失败

IP 转移失败，导致节点网络中断 AddrReplace/RouteReplace 函数偶现报错：cannot assign requested address 物理网卡上的 IP/路由存在可疑变化（来自其他进程操作）

## Cause
- systemd-networkd 在 IP 转移过程中对网卡 IP/路由 进行了操作，导致 kube-ovn-cni 操作冲突

## Resolution
- 修改 kube-ovn-cni 代码，等待 systemd-networkd 操作完成后再进行 IP/路由转移

## [workaround]

## [Related Information]
**Screenshots**
![](assets/underlay-ip-zhuan-yi-gong-neng-zai-ubuntu-xia-shi-bai/image2023-3-20_15-52-45.png)
- Environment: Ubuntu 18.04, Kube-OVN v1.9.21
- renderer: networkd
- systemd-networkd
- kube-ovn-cni
- Component: Kubernetes
- Page ID: 140817222
- Original Title: 【Underlay】IP 转移功能在 Ubuntu 下失败
