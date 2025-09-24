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

# 如何为指定命名空间下的所有deploy添加NodeSelector标签

JIRA ## 环境信息

## Cause

## Resolution
- for deployment in $(kubectl get deployments -n <namespace> -o jsonpath='{.items[*].metadata.name}'); do kubectl patch deployment $deployment -n <namespace> -p '{"spec": {"template": {"spec": {"nodeSelector": {"disk": "ssd"}}}}}' --type=merge; done

## [workaround]

## [Related Information]
- Environment: 通用
- kubectl
- deployments
- nodeSelector
- namespace
- Component: (待归类)
- Page ID: 140824056
- Original Title: 如何为指定命名空间下的所有deploy添加NodeSelector标签
