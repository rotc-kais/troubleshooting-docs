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

# helm创建自定义应用，参数表单显示异常，helm包含schema.values.json，但是表单未完整显示所有参数

参数表单未完整显示所有参数 深层嵌套的参数未显示

## Cause
- 平台前端对schema.values.json 的嵌套层级有限制（不超过2层）

## Resolution
- 使用descriptor对表单项进行显式描述

## [workaround]

## [Related Information]
- Environment: 通用版本
- schema.values.json
- descriptor
- helm参数表单
- Component: Helm
- Page ID: 112054463
- Original Title: helm创建自定义应用，参数表单显示异常，helm包含schema.values.json，但是表单未完整显示所有参数
