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

# 【Underlay】KubeVirt 虚拟机偶现通信故障

偶现网络故障 节点 ping Pod 偶现重复 ICMP 响应包

## Cause
- mac 学习异常
- 物理机环境可能存在类似 hairpin 行为

## Resolution
- 清理 ovs fdb

## [workaround]
- 在 ovs-ovn pod 中运行循环检测 fdb 的脚本

## [Related Information]
**Screenshots**
![](https://jira.alauda.cn/secure/attachment/124871/124871_image-2022-10-09-17-08-52-555.png)
![](https://jira.alauda.cn/secure/attachment/124872/124872_image-2022-10-09-17-09-53-234.png)
- ovs-ovn pod
- fdb
- mac age
- ofproto_dpif_xlate
- Component: 虚拟机
- Page ID: 127411865
- Original Title: 【Underlay】KubeVirt 虚拟机偶现通信故障
