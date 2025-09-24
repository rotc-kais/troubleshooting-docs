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

# coredns设置hosts解析不生效问题

coredns设置hosts解析不生效 解析顺序不符合hosts > forward的预期

## Cause
- hosts插件配置格式不符合版本要求
- 未正确指定hosts文件路径

## Resolution
- 修改hosts配置格式为：hosts /etc/coredns/hosts { ... }
- 添加reload参数并保持fallthrough配置

## [workaround]

## [Related Information]
- Environment: CoreDNS 3.8+/3.10+版本（3.12+版本可通过界面配置）
- hosts插件
- forward插件
- Corefile配置
- test.com.cn:53服务器块
- Component: CoreDNS
- Page ID: 149610700
- Original Title: coredns设置hosts解析不生效问题-hosts格式问题
