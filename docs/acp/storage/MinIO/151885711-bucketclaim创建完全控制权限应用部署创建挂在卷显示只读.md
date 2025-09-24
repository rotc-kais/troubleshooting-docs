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

# bucketclaim创建完全控制权限，应用部署创建挂在卷显示只读

挂载卷显示只读且被置灰不可修改

## Cause
- bucketclaim挂载的是存储桶访问配置信息而非实际存储卷

## Resolution
- 通过S3协议使用AK/SK和endpoint进行存储桶读写操作

## [workaround]

## [Related Information]
- Environment: 3.10.2
- bucketclaim
- 配置字典
- S3协议
- AK/SK
- endpoint
- Component: S3/MinIO
- Page ID: 151885711
- Original Title: bucketclaim创建完全控制权限，应用部署创建挂在卷显示只读
