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

# 如何备份gitlabofficials

需要备份通过devops-tools-operator部署的gitlabofficials

## Cause
- 默认配置task-runner组件

## Resolution
- 修改gitlabofficials的yaml配置，添加task-runner配置段
- 执行命令进入task-runner容器创建备份: kubectl -n operators exec -it gitlab-ce-task-runner-9d78d96d8-kkj97 bash; gitlab-rake gitlab:backup:create

## [workaround]

## [Related Information]
- Environment: TKE 3.6以上
- task-runner
- gitaly
- spec.helmValues.gitlab.task-runner
- gitlab-rake gitlab:backup:create
- app: gitaly
- Component: gitlab
- Page ID: 115517452
- Original Title: 如何备份gitlabofficials
