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

# kubernetes中OOMKiller关注的指标

pod.status.state 显示为 OOMKiller 状态

## Cause
- 当 container_memory_working_set_bytes 达到容器内存限制时触发 OOMKiller

## Resolution
- 监控 container_memory_working_set_bytes 指标作为内存使用参考

## [workaround]

## [Related Information]
**Screenshots**
![](https://miro.medium.com/max/1400/1*Gz40O-32944c41LAUISV8w.png)
![](https://miro.medium.com/max/1400/1*io85xea_tViLsMekR02DcQ.png)
![](https://miro.medium.com/max/1400/1*cIHRX97OnMMzAf1KgVTcfA.png)
- Environment: Kubernetes 通用版本
- container_memory_usage_bytes
- container_memory_working_set_bytes
- 内存限制（memory limit）
- Component: Kubernetes
- Page ID: 115530208
- Original Title: kubernetes中OOMKiller关注的指标
