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

# asm通过网关 api路由访问API分组的api时后台访问正常，界面无法正常访问

asm通过网关api路由访问API分组的api时界面无法正常访问 后台访问正常

## Cause
- 客户端本地网络(192.168.1.0/24)与平台界面集群子网存在网段冲突

## Resolution
- 删除集群内冲突的ovn网络子网(192.168.1.0/24)

## [workaround]

## [Related Information]
- Environment: 通用
- ovn网络子网
- API分组
- 网关api路由
- 192.168.1.0/24网段
- Component: kube-Ovn
- Page ID: 149615121
- Original Title: asm通过网关 api路由访问API分组的api时后台访问正常，界面无法正常访问-客户端网络与平台子网冲突导致
