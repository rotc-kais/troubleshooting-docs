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

# Pod 处于 ContainerCreatiing 状态，事件显示 netplugin failed with no error message

Pod 处于 ContainerCreating 状态 kubelet 日志和 pod 事件显示 netplugin failed with no error message

## Cause
- cni 二进制异常退出
- 父进程调用 cni 链路出现异常导致 multus 进程被 SIGPIPE 终止

## Resolution
- systemctl restart kubelet
- systemctl restart containerd

## [workaround]

## [Related Information]
- Environment: Kubernetes
- multus
- kubelet
- containerd
- cni 二进制
- Component: Kubelet
- Page ID: 91231811
- Original Title: Pod 处于 ContainerCreatiing 状态，事件显示 netplugin failed with no error message
