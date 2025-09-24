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

# coredns针对指定域名使用固定dns服务器解析

特定域名解析未使用指定DNS服务器 域名解析结果不符合预期

## Cause
- CoreDNS未正确配置域名与DNS服务器的映射关系
- forward插件顺序配置错误

## Resolution
- 在Corefile中优先配置特定域名的forward规则: forward lab.example.local:1053 10.20.0.1
- 为特定域名创建独立server block: lab.example.local:1053 { forward . 10.20.0.1 }

## [workaround]

## [Related Information]
- Environment: 通用
- 1053
- 9153
- Corefile
- /etc/coredns/hosts
- /etc/resolv.conf
- forward插件
- kubernetes插件
- hosts插件
- Component: CoreDNS
- Page ID: 236323329
- Original Title: coredns针对指定域名使用固定dns服务器解析
