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

# 迁移 docker 数据后 calico

calico-node 异常，日志报错 Operation not permitted getcap /usr/sbin/ipset 结果为空

## Cause
- 数据迁移时 rsync 未携带 -X 参数导致文件扩展属性丢失

## Resolution
- 清空 docker 数据

## [workaround]
- 使用 rsync -X 重新迁移数据

## [Related Information]
- Environment: Kubernetes v3.12.1 (ACP), Calico v3.26
- /var/lib/docker
- rsync
- security.capability
- calico-node
- ipset
- Component: Calico
- Page ID: 163072059
- Original Title: 迁移 docker 数据后 calico-node 异常：Operation not permitted
