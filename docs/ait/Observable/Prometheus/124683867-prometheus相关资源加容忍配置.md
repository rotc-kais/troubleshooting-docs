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

# prometheus相关资源加容忍配置

JIRA Jira：

## Cause

## Resolution
- 查找对应集群的prometheus资源: `kubectl get minfo | grep prometheus | grep <region-name>`
- 编辑minfo资源: `kubectl edit minfo <region-name>-xxxx`
- 在spec.valuesOverride.ait/chart-kube-prometheus.prometheus下添加tolerations配置

## [workaround]

## [Related Information]
- Environment: 3.8.x
- minfo
- prometheus
- tolerations
- ait/chart-kube-prometheus
- valuesOverride
- Component: Prometheus
- Page ID: 124683867
- Original Title: prometheus相关资源加容忍配置
