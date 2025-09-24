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

# kubernetes中使用context切换集群失败，报错you need login

使用use-context切换集群无法正常切换，报错you need login

## Cause
- region1和region2的user均为kubernetes-admin但证书不同导致冲突

## Resolution
- 更改各集群user用户名使证书区分开

## [workaround]

## [Related Information]
- Environment: 通用
- kubernetes-admin
- kubectl config
- context配置
- Component: Kubernetes
- Page ID: 146362703
- Original Title: kubernetes中使用context切换集群失败，报错you need login
