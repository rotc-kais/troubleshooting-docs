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

# northd 报错：No path for static route 0.0.0.0/0; next hop 173.12.0.1

northd 报错：No path for static route 0.0.0.0/0; next hop 173.12.0.1 ovn-central 一直不 ready

## Cause
- join 子网网段与 ovn-cluster 路由网段不一致
- kube-ovn-controller 的 node-switch-cidr 参数值(173.12.0.0/16)与实际 join 子网网段(100.64.0.1)不匹配
- 集群修改过 join 网段但未更新 cluster 资源中的值

## Resolution
- 修改 kube-ovn-controller 的 node-switch-cidr 参数为正确值
- 关闭 sentry 后恢复正常
- 确保 cluster 资源中的 join 网段配置与实际一致

## [workaround]

## [Related Information]
- kube-ovn-controller
- node-switch-cidr
- subnet
- ovn-cluster
- kubectl get subnet
- kubectl ko nbctl lr-route-list ovn-cluster
- Component: Kubernetes
- Page ID: 136541753
- Original Title: northd 报错：No path for static route 0.0.0.0/0; next hop 173.12.0.1
