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

# 容器重启后，怎么取出kubelet和docker日志

容器重启后需要取出kubelet和docker日志

## Cause
- K8s未记录Pod的上次调度节点
- Pod事件可能被回收

## Resolution
- 使用`kubectl get pod -o wide`确定节点
- 通过平台事件查看调度历史
- 登录对应节点检查kubelet和docker日志

## [workaround]
- 删除Pod前记录节点信息
- 配置事件保留策略或日志收集工具

## [Related Information]
- Environment: 通用Kubernetes环境
- kubectl
- kubelet
- docker
- Pod事件
- Component: Kubelet
- Page ID: 130562776
- Original Title: 容器重启后，怎么取出kubelet和docker日志
