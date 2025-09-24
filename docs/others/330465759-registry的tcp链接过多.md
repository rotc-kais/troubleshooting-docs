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

# registry的tcp链接过多

registry的tcp链接过多，达到2.4w+，触发告警

## Cause
- tcp连接访问registry后未被正常释放（可能程序未正常退出）
- F5负载均衡配置了会话保持导致请求集中到同一节点

## Resolution
- 升级到3.15及以上版本优化连接释放机制
- 调整F5负载均衡的会话保持配置

## [workaround]
- 重启registry进程释放连接

## [Related Information]
- Environment: 3.14.2
- registry
- F5负载均衡配置
- tcp连接
- Component: (待归类)
- Page ID: 330465759
- Original Title: 基础架构-产品生命周期管理-部署-registry的tcp链接过多-114811
