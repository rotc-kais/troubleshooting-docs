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

# 持续构建maven添加settings文件

## 环境信息 适用版本：TKE 3.11

## Cause

## Resolution
- 将settings.xml放入custom-settings保密字典
- 在build YAML的runTemplate.spec.workspaces添加secret映射
- 在workspaces声明中增加settings workspace
- 在maven task的workspaces映射settings workspace
- 通过script步骤自动拷贝settings.xml到/root/.m2

## [workaround]

## [Related Information]
- Environment: TKE 3.11
- custom-settings
- maven clustertask
- settings workspace
- /root/.m2
- Component: 持续构建
- Page ID: 136530389
- Original Title: 持续构建maven添加settings文件
