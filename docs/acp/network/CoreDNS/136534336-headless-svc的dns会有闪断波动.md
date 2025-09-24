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

# headless svc的dns会有闪断波动

dns解析在pod重启过程中波动 nslookup查询结果不稳定 业务应用连接受影响

## Cause
- headless svc默认未设置publishNotReadyAddresses
- 未就绪状态的pod被加入dns记录

## Resolution
- 设置service.spec.publishNotReadyAddresses=false
- 配置就绪探针(Readiness Probe)
- 调整启动探针(Startup Probe)的initDeploy时间至20秒以上

## [workaround]

## [Related Information]
- Environment: Kubernetes通用版本
- publishNotReadyAddresses
- Endpoints
- EndpointSlice
- StatefulSet
- SRV记录
- getaddrinfo
- Component: CoreDNS
- Page ID: 136534336
- Original Title: headless svc的dns会有闪断波动
