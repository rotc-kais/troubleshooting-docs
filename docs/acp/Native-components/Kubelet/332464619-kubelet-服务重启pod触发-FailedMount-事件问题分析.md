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

# kubelet 服务重启pod触发 FailedMount 事件问题分析

修改kubelet参数`--v=4`并重启后触发FailedMount事件 仅使用特定存储类的pod受影响

## Cause
- kubelet重启时volume manager检查volume状态时CSI Node Plugin的gRPC socket未准备好

## Resolution
- 无需处理，volume manager会周期重试直至挂载成功

## [workaround]

## [Related Information]
- Environment: 通用
- kubelet参数`--v=4`
- CSI Node Plugin
- volume manager
- 存储类
- gRPC socket
- Component: 原生组件
- Page ID: 332464619
- Original Title: 容器平台-原生组件-kubelet 服务重启pod触发 FailedMount 事件问题分析-114829
