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

# ceph cluster监控异常

ceph_health_status{job="rook-ceph-mgr"} 指标在集群健康时持续为1触发告警

## Cause
- rook-ceph-mgr 进程存在历史脏数据影响 Prometheus 判断

## Resolution
- 重启 rook-ceph-mgr 的 Pod 刷新数据源

## [workaround]

## [Related Information]
- Environment: 3.x
- ceph_health_status
- job=rook-ceph-mgr
- rook-ceph-mgr pod
- Component: Ceph
- Page ID: 130555366
- Original Title: ceph cluster监控异常
