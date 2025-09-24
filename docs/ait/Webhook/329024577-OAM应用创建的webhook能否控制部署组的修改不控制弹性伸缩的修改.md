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

# OAM应用创建的webhook能否控制部署组的修改，不控制弹性伸缩的修改。

OAM应用下的组件在部署组页面更新按钮置灰 生产环境的Deployment资源缺少OAM标签(app.oam.dev/name) 无法使用弹性伸缩(HPA)

## Cause
- tsfgroup模板未包含OAM参数导致标签注入缺失
- tsf-controller未正确注入OAM标签到Deployment
- tsfgroup模板资源不支持弹性伸缩配置

## Resolution
- 检查tsfgroup模板是否包含OAM相关annotations/labels
- 验证tsf-controller是否将app.oam.dev/name标签注入Deployment
- 修改tsfgroup模板以支持HPA配置

## [workaround]
- 手动为Deployment添加app.oam.dev/name标签以启用按钮

## [Related Information]
- Environment: 3.12.2
- tsfgroup
- tsf-controller
- app.oam.dev/name
- HPA
- Deployment
- OAM annotations
- Component: Webhook
- Page ID: 329024577
- Original Title: 容器平台-应用管理-OAM应用-OAM应用创建的webhook能否控制部署组的修改，不控制弹性伸缩的修改。-114409
