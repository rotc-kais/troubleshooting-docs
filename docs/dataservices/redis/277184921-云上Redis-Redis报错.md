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

# 云上Redis Redis报错

Redis报错OOM（内存溢出）

## Cause
- 内存不足导致溢出

## Resolution
- 调整实例内存规格

## [workaround]
- 修改maxmemory-policy参数为allkeys-lru
- 清除不常用key值

## [Related Information]
- Environment: 3.18.1
- maxmemory-policy
- Component: redis
- Page ID: 277184921
- Original Title: 数据服务-云上Redis Redis报错-105736
