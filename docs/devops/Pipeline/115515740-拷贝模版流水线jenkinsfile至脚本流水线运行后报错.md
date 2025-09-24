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

# 拷贝模版流水线jenkinsfile至脚本流水线运行后报错

ERROR: Cannot invoke method startsWith() on null object 流水线执行时 params._clone_buildRef 为空值

## Cause
- 脚本式流水线不支持参数化流水线的选择功能，导致 params._clone_buildRef 变量为空

## Resolution
- 在 jenkinsfile 开头添加变量声明: def clone_buildRef = 'xxxxx'
- 将全文中 params._clone_buildRef 替换为 clone_buildRef

## [workaround]

## [Related Information]
- Environment: TKE 3.6.0以上版本
- params._clone_buildRef
- AlaudaDevopsDSL
- devops-client
- jenkinsfile
- Component: 流水线
- Page ID: 115515740
- Original Title: 拷贝模版流水线jenkinsfile至脚本流水线运行后报错
