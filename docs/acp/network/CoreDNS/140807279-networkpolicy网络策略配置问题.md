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

# networkpolicy网络策略配置问题

无法通过内部域名访问kubernetes.default调用apiserver 域名解析失败

## Cause
- NetworkPolicy未放行kube-system命名空间下CoreDNS的53/UDP端口
- 未放行kubernetes.default的svc地址段(140.140.0.0/16)和ep地址段(192.168.15.0/24)

## Resolution
- 配置egress规则放行kube-system命名空间的53/UDP端口
- 配置egress规则允许访问svc地址段140.140.0.0/16和ep地址段192.168.15.0/24

## [workaround]

## [Related Information]
- Environment: 3.8
- 53/UDP
- 140.140.0.0/16
- 192.168.15.0/24
- kubernetes.default
- coredns
- kube-system
- bussness-ns
- Component: CoreDNS
- Page ID: 140807279
- Original Title: networkpolicy网络策略配置问题
