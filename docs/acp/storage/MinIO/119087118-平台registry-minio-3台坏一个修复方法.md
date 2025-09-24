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

# 平台registry minio 3台坏一个修复方法

其中一台master节点上的registry minio服务宕机且无法恢复

## Cause

## Resolution
- 移动坏节点上的/etc/kubernetes/manifests/registry.yaml文件
- 清理/cpaas/minio/下的内容
- 恢复registry.yaml文件到原目录

## [workaround]

## [Related Information]
- Environment: TKE3.6
- /etc/kubernetes/manifests/registry.yaml
- /cpaas/minio/
- minio
- registry
- Component: S3/MinIO
- Page ID: 119087118
- Original Title: 平台registry minio 3台坏一个修复方法
