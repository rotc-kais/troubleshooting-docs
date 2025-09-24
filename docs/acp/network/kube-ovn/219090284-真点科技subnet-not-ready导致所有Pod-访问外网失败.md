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

# 真点科技subnet not ready导致所有Pod 访问外网失败

所有Pod访问外网失败 subnet状态出现SetLogicalSwitchConfigFailed

## Cause
- 磁盘同步操作触发ovs-db频繁重新选主
- subnet未就绪导致路由丢失

## Resolution
- 应用kube-ovn的修复补丁(https://github.com/kubeovn/kube-ovn/pull/4258)

## [workaround]

## [Related Information]
**Screenshots**
![](assets/zhen-dian-ke-ji-subnet-not-readydao-zhi-suo-you-pod-fang-wen-wai-wang-shi-bai/image-2024-7-4_19-20-45.png)
![](assets/zhen-dian-ke-ji-subnet-not-readydao-zhi-suo-you-pod-fang-wen-wai-wang-shi-bai/image-2024-7-4_19-21-51.png)
- Environment: CNI版本：kube-ovn 1.9.27
- kube-ovn-cni.log
- kube-ovn-controller.log
- ovn db
- subnet资源
- SetLogicalSwitchConfigFailed
- Component: kube-ovn
- Page ID: 219090284
- Original Title: 真点科技subnet not ready导致所有Pod 访问外网失败
