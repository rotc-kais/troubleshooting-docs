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

# 【Underlay】ACP 升级时 OVS 网桥上的节点 IP 丢失

节点 OVS 网桥 br-provider 上的 IP 丢失 节点网络瘫痪

## Cause
- OVS internal port 被重建
- OVS 版本降级导致(branch-2.16 切换到 OVN 21.06 配置的 OVS 子模块)

## Resolution
- 更新 OVS 版本到 branch-2.16 分支并修复 OVN 编译问题

## [workaround]

## [Related Information]
**Screenshots**
![](https://jira.alauda.cn/secure/attachment/126277/126277_image-2022-10-25-11-13-26-328.png) ![](https://jira.alauda.cn/secure/attachment/126278/126278_image-2022-10-25-11-13-34-795.png)
- br-provider
- ovs-vswitchd
- Kube-OVN 1.8/1.9.8/1.11
- OVS branch-2.16
- OVN 21.06
- socket_util_unix
- SIOCGIFFLAGS
- Component: kube-Ovn
- Page ID: 127429798
- Original Title: 【Underlay】ACP 升级时 OVS 网桥上的节点 IP 丢失
