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

# NetworkPolicy 对使用主机网络的 Pod 不生效

NetworkPolicy 对使用主机网络的 Pod 不生效 设置出站规则白名单后仍能 ping 通其他网段或 pod ip

## Cause
- Pod 使用主机网络

## Resolution
- 无（calico 不支持该用法）

## [workaround]

## [Related Information]
- NetworkPolicy
- calico
- hostNetwork
- Component: Calico
- Page ID: 187237200
- Original Title: NetworkPolicy 对使用主机网络的 Pod 不生效
