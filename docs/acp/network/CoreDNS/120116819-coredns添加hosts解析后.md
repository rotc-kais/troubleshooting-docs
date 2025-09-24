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

# coredns添加hosts解析后

容器内无法解析添加的hosts解析

## Cause
- FQDN中点分数量（4）小于ndots默认值（5），导致DNS查询尝试补全搜索域后无法解析

## Resolution
- 在应用yaml的spec.template.spec下添加dnsConfig设置ndots为3

## [workaround]

## [Related Information]
- Environment: 通用
- ndots
- dnsConfig
- dnsPolicy
- ClusterFirstWithHostNet
- hostNetwork
- coredns
- Component: CoreDNS
- Page ID: 120116819
- Original Title: coredns添加hosts解析后-容器内无法解析-外部域名点分过数量过多导致
