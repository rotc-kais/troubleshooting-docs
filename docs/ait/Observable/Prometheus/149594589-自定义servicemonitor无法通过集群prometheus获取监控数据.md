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

# 自定义servicemonitor无法通过集群prometheus获取监控数据

自定义servicemonitor无法在prometheus中获取监控数据 target中无对应的信息

## Cause
- servicemonitor缺少prometheus: kube-prometheus的label

## Resolution
- kubectl label servicemonitor -n <ns_name> <servicemonitor_name> prometheus=kube-prometheus

## [workaround]

## [Related Information]
- Environment: 通用
- servicemonitor
- prometheus cr
- servicemonitorselector
- prometheus=kube-prometheus
- Component: Prometheus
- Page ID: 149594589
- Original Title: 自定义servicemonitor无法通过集群prometheus获取监控数据
