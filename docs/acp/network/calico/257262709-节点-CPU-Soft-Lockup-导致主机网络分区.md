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

# 节点 CPU Soft Lockup 导致主机网络分区

节点进程卡死（hung） 容器网络分区（部分MQ副本无法访问） 三副本MQ工作不正常导致业务长时间故障

## Cause
- 节点主机CPU出现重复间断性软锁导致网络异常

## Resolution
- 重新添加calico-node健康检查触发容器重建
- kubelet自动重建calico-node容器恢复路由

## [workaround]

## [Related Information]
- Environment: CNI版本：Calico v3.26.3 ~ v3.29.1
- calico-node/felix进程
- BIRD进程
- BGP端口179
- ip route proto bird
- Component: Calico
- Page ID: 257262709
- Original Title: 节点 CPU Soft Lockup 导致主机网络分区
