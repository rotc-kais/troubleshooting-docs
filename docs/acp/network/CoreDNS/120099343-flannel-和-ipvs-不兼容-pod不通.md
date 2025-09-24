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

# flannel 和 ipvs 不兼容, pod不通

pod 间通信失败 返回包的 src ip 未变（仍为 pod ip） conntrack 条目状态为 unreplied

## Cause
- 返回包的源 IP 未正确修改导致 conntrack 条目未被回复
- kube-proxy 的 masqueradeall 参数未启用

## Resolution
- 修改 kube-proxy 的 masqueradeall 参数为 true

## [workaround]

## [Related Information]
- Environment: Kubernetes 1.24.1 集群, CNI: flannel
- flannel
- ipvs
- kube-proxy
- iptables
- conntrack
- Component: CoreDNS
- Page ID: 120099343
- Original Title: flannel 和 ipvs 不兼容, pod不通
