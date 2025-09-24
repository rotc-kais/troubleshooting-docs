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

# 修改集群nevermore的image版本

JIRA Jira：

## Cause

## Resolution
- 获取集群名称: `kubectl get clsm`
- 修改对应集群的clsm资源: `kubectl edit clsm <集群名称>`
- 在.spec.valuesOverride下添加镜像配置: `ait/chart-alauda-log-agent.global.images.nevermore.tag: <新版本>`
- 等待5-10分钟平台自动更新
- 检查镜像版本: `kubectl get ds -n cpaas-system nevermore -oyaml|grep image`

## [workaround]

## [Related Information]
- Environment: 3.0.x,3.4.x,3.6.x
- clsm
- nevermore
- cpaas-system
- valuesOverride
- ait/chart-alauda-log-agent
- global.images.nevermore.tag
- Component: (待归类)
- Page ID: 98885192
- Original Title: 修改集群nevermore的image版本
