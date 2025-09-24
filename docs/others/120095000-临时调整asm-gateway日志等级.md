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

# 临时调整asm gateway日志等级

asm gateway日志量较大

## Cause
- 默认日志等级设置为debug

## Resolution
- curl -XPOST <http://localhost:15000/logging> 查询当前日志等级
- curl -XPOST <http://localhost:15000/logging?level=info> 修改为info级别

## [workaround]
- 临时调整日志等级为info

## [Related Information]
- Environment: 3.x
- asm gateway
- 15000端口
- logging配置
- Component: (待归类)
- Page ID: 120095000
- Original Title: 临时调整asm gateway日志等级
