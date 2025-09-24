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

# 【Underlay】Pod 无法 ping 通 Service IP

无法从 Pod 中 ping 通 Service IP 使用 Calico 时无此问题

## Cause
- Underlay 模式流量不经过节点主机网络
- Kubernetes Service 不实现 ICMP 协议

## Resolution

## [workaround]
- 使用正确方法检查 Service 连通性（如 curl/nc 等 TCP/UDP 协议工具）

## [Related Information]
- Environment: Underlay 集群 + kube-proxy 使用 ipvs 模式
- kube-proxy
- ipvs 模式
- kube-ipvs0
- Service IP
- ICMP 协议
- Component: Kubernetes
- Page ID: 127411925
- Original Title: 【Underlay】Pod 无法 ping 通 Service IP
