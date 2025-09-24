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

# Pod IP 对外暴露，iptables 规则问题

访问集群外部地址不通（ARM集群） 切换为containerd后出现，未切换的x86集群正常

## Cause
- 节点重启后iptables规则丢失

## Resolution
- 手动补充iptables规则并持久化配置

## [workaround]
- 节点重启后手动重新配置iptables规则

## [Related Information]
**Screenshots**
![](assets/pod-ip-dui-wai-bao-lu-iptables-gui-ze-wen-ti/image-2023-11-20_17-20-12.png)
- Environment: ACP 3.12.1, kube-ovn v1.9, ARM集群
- iptables
- kube-ovn
- Pod IP对外暴露方案
- /pages/viewpage.action?pageId=155326760
- Component: Docker
- Page ID: 172524848
- Original Title: Pod IP 对外暴露，iptables 规则问题
