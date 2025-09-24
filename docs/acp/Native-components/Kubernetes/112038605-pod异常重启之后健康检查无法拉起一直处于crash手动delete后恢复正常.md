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

# pod异常重启之后健康检查无法拉起一直处于crash，手动delete后恢复正常

pod异常重启之后健康检查不通过无法拉起 pod一直处于crash状态 需手动delete恢复

## Cause
- 使用subpath挂载configmap时触发Kubernetes已知bug（issues/68211）

## Resolution
- 修改yaml配置，取消subpath挂载configmap

## [workaround]
- 手动delete pod恢复

## [Related Information]
**Screenshots**
![](https://jira.alauda.cn/secure/attachment/107708/107708_image-2022-03-22-10-33-24-572.png)
- Environment: TKE3.6以下版本（K8S版本1.9以下）
- subpath
- configmap
- kubelet
- issues/68211
- pages/viewpage.action?pageId=81406249
- Component: Kubernetes
- Page ID: 112038605
- Original Title: pod异常重启之后健康检查无法拉起一直处于crash，手动delete后恢复正常
