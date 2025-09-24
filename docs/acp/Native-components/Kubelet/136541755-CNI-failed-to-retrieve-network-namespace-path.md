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

# CNI failed to retrieve network namespace path

Pod 卡在 ContainerCreating 状态 kubelet 报错 CNI failed to retrieve network namespace path pause 容器持续退出并重建

## Cause
- CNI 无法读取 pause 容器的 network namespace
- docker 调用了错误版本的 runc（系统存在 podman 和版本不一致的 runc）

## Resolution
- 删除系统自带的 runc 版本

## [workaround]

## [Related Information]
- kube-ovn-cni
- docker
- runc
- podman
- Component: Kubelet
- Page ID: 136541755
- Original Title: CNI failed to retrieve network namespace path
