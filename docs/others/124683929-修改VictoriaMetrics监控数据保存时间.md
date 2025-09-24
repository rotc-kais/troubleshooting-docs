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

# 修改VictoriaMetrics监控数据保存时间

JIRA Jira：

## Cause
- VictoriaMetrics默认监控数据保存时间为4个月

## Resolution
- 编辑vmclusters资源，修改spec.retentionPeriod字段配置
kubectl edit vmclusters -n cpaas-system cluster

## [workaround]

## [Related Information]
- Environment: 3.8.x
- vmclusters
- vminsert
- retentionPeriod
- Component: (待归类)
- Page ID: 124683929
- Original Title: 修改VictoriaMetrics监控数据保存时间
