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

# pod 无法删除，状态一直处于Terminating对应存储卷在节点无法完成umount动作提示“device or resource busy”

pod无法删除，状态一直处于Terminating 存储卷在节点无法完成umount动作提示'device or resource busy'

## Cause
- 存储卷被占用导致无法完成umount操作

## Resolution
- 手动umount对应的挂载路径

## [workaround]

## [Related Information]
**Screenshots**
![](assets/pod-wu-fa-shan-chu-zhuang-tai-yi-zhi-chu-yu-terminatingdui-ying-cun-chu-juan-zai/image2023-2-9_14-59-48.png)
- Environment: 通用
- kubelet日志
- 存储卷挂载路径
- PV名称
- Component: Kubelet
- Page ID: 136533621
- Original Title: pod 无法删除，状态一直处于Terminating对应存储卷在节点无法完成umount动作提示“device or resource busy”
