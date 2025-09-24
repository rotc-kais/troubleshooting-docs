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

# 3.12.2版本更改harbor admin token

JIRA Jira：

## Cause

## Resolution
- 在工具链集成页面将凭据修改
- 在所有涉及Harbor的集群中使用脚本查找仍使用旧密码的凭据
- 将查找到的旧凭据更改为新密码base64后的内容

## [workaround]

## [Related Information]
- Environment: 3.12.2
- harbor
- admin token
- 工具链集成页面
- base64
- 集群凭据
- Component: harbor
- Page ID: 330466241
- Original Title: Devops-3.12.2版本更改harbor admin token-114295
