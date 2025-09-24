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

# subnet 对应的, 在 node 上指向 ovn0 的路由不存在

node 和 pod 网络不通 node 到 pod 的路由缺失 pod 对应两个不同的子网

## Cause
- 存在两个 CNI 插件(podman 和 kubeovn)同时生效
- podman 的 /cni.d/05 优先级可能覆盖 kubeovn 的 01 配置

## Resolution
- 使用 yum 正确卸载 podman 避免连带删除 runc
- 清理残留 CNI 配置确保 kubeovn 单 CNI 生效

## [workaround]

## [Related Information]
- Environment: 长沙银行 acp 3.6.2 ovn 1.7.3
- /cni.d/
- default-subnet
- podman
- kubeovn
- runc
- kubelet
- Component: Node
- Page ID: 123606216
- Original Title: subnet 对应的, 在 node 上指向 ovn0 的路由不存在
