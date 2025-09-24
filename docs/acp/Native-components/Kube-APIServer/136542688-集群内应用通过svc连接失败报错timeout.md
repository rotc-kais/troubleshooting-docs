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

# 集群内应用通过svc连接失败报错timeout

nslookup <svc-name> coredns-svcip 无法解析 nslookup kubernetes.default.svc.cluster.local coredns-svc-ip无法解析 通过cluster-ip无法访问

## Cause
- kube-apiserver和kube-proxy的EndpointSlice配置不一致（apiserver禁用，kube-proxy默认开启）

## Resolution
- 修改kube-proxy配置添加EndpointSlice配置，重启kube-proxy容器

## [workaround]

## [Related Information]
- Environment: Kubernetes 3.4
- EndpointSlice
- kube-proxy
- kube-apiserver
- ipvs
- coredns
- feature-gate
- Component: Kube-APIServer
- Page ID: 136542688
- Original Title: 集群内应用通过svc连接失败报错timeout
