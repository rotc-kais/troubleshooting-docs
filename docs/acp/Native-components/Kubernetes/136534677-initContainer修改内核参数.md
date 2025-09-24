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

# initContainer修改内核参数

## 环境信息 适用版本：通用

## Cause

## Resolution
- 使用 initContainer 执行 sysctl -w vm.max_map_count=262144
- 配置 securityContext.privileged: true 和 runAsUser: 0

## [workaround]

## [Related Information]
- Environment: 通用
- sysctl
- vm.max_map_count
- initContainers
- securityContext
- privileged
- runAsUser
- Component: Kubernetes
- Page ID: 136534677
- Original Title: initContainer修改内核参数
