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

# node节点网络异常，创建pod报错networkPlugin cni failed to set up pod

创建pod报错networkPlugin cni failed to set up pod kube-ovn-cni/kube-proxy组件日志报错夯住

## Cause
- kube-ovn-cni/kube-proxy组件异常

## Resolution
- 重启异常节点kube-ovn-cni和kube-proxy pod
- 重建受影响pod

## [workaround]

## [Related Information]
- Environment: 3.4.2
- kube-ovn-cni
- kube-proxy
- pod
- Component: Node
- Page ID: 115513524
- Original Title: node节点网络异常，创建pod报错networkPlugin cni failed to set up pod
