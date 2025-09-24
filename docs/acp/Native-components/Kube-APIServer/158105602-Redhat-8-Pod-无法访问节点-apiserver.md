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

# Redhat 8 Pod 无法访问节点/apiserver

Overlay Pod 无法通过节点/apiserver TLS 握手失败，Client 未收到 Server 响应 抓包显示节点发送异常 SYN 包导致 Pod 响应 RST

## Cause
- kube-ovn 的 svc_ipv4_cidr patch 在 Redhat 8.6 导致 OVS 异常 SNAT 行为

## Resolution
- 修改 svc_ipv4_cidr patch 实现方式: https://github.com/kubeovn/kube-ovn/pull/3131

## [workaround]
- 执行 kubectl ko nbctl remove nb . options svc_ipv4_cidr

## [Related Information]
- Environment: Redhat 8.6 + kube-ovn v1.9
- 6443
- ovs-dpctl
- kube-ovn
- svc_ipv4_cidr
- ovn0
- conntrack
- ovs-appctl
- Component: Kube-APIServer
- Page ID: 158105602
- Original Title: Redhat 8 Pod 无法访问节点/apiserver
