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

# 【Underlay】DNS解析偶现卡顿超时或失败

业务 Pod 解析域名偶现卡顿、超时或失败，且频率较高（~50%）

## Cause
- 物理网关在转发 DNAT 后的网络包时存在丢包现象

## Resolution

## [workaround]
- 在业务 Pod 中使用 *nslookup -port=1053 <域名> <COREDNS_POD_IP>* 直接解析

## [Related Information]
- Environment: Kubernetes, CNI: Kube-OVN v1.9, ACP v3.10
- 1053
- COREDNS_POD_IP
- DNAT
- Kube-OVN
- Service IP
- Component: CoreDNS
- Page ID: 151884647
- Original Title: 【Underlay】DNS解析偶现卡顿超时或失败
