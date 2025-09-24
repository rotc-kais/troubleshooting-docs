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

# 通过ProductBase修改es镜像方案

直接修改Deployment后配置被平台还原 es镜像版本未按预期更新

## Cause
- 平台会主动还原对Deployment的手动修改

## Resolution
- 通过kubectl edit prdb base命令，在spec.valuesOverride下添加ait/chart-elasticsearch.global.images.tag配置
- 执行验证命令：kubectl get deploy -n cpaas-system cpaas-elasticsearch -oyaml|grep image 和 kubectl get pod -n cpaas-system cpaas-elasticsearch-xxx -oyaml|grep image

## [workaround]

## [Related Information]
- Environment: 3.4.x
- prdb
- cpaas-elasticsearch Deployment
- ait/chart-elasticsearch
- valuesOverride配置键
- Component: (待归类)
- Page ID: 119088879
- Original Title: 通过ProductBase修改es镜像方案
