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

# prometheus界面部分监控指标报错

write to WAL: log samples: write /prometheus/wal/: no space left on device 磁盘空间使用达到100%

## Cause
- /cpaas/monitoring目录存储空间耗尽

## Resolution
- 扩容/cpaas目录存储
- 清理监控数据并调整监控数据保存时间

## [workaround]

## [Related Information]
**Screenshots**
![](assets/prometheusjie-mian-bu-fen-jian-kong-zhi-biao-bao-cuo-ti-shi-write-to-wal-log-sam/image2022-7-8_10-28-59.png)
- Environment: 通用
- /prometheus/wal
- /cpaas/monitoring
- prometheus
- grafana
- alertmanager
- 监控数据保存时间配置
- Component: Prometheus
- Page ID: 120098280
- Original Title: prometheus界面部分监控指标报错-提示write to WAL : log samples : write / prometheus / wal / : no space left on device
