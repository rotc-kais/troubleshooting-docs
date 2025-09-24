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

# 【Underlay】主机网络无法通过 Service IP 访问服务

主机网络无法通过 Service IP 访问服务，但通过 Pod IP 可正常访问 tcpdump 显示 Pod 回包到达 br0 但未到达 br-provider

## Cause
- net.bridge.bridge-nf-call-iptables=1 导致桥接流量被 iptables 过滤

## Resolution
- 修改 sysctl 参数: sysctl -w net.bridge.bridge-nf-call-iptables=0
- IPv6/双栈需同步修改: sysctl -w net.bridge.bridge-nf-call-ip6tables=0

## [workaround]

## [Related Information]
- br0
- br-provider
- net.bridge.bridge-nf-call-iptables
- net.bridge.bridge-nf-call-ip6tables
- Component: Kubernetes
- Page ID: 124700501
- Original Title: 【Underlay】主机网络无法通过 Service IP 访问服务
