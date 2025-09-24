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

# 新加节点topolvm部署topolvm

新加节点上的 topolvm-node 未运行

## Cause
- 新添加节点的磁盘未正确格式化或配置

## Resolution
- 从 yaml 中删除刚添加的节点
- 格式化磁盘
- 从 yaml 中重新添加该节点的磁盘或通过界面添加该节点磁盘
- 重启 topolvm-operator（必须重启）

## [workaround]

## [Related Information]
- Environment: Kubernetes 集群（TopoLVM 环境）
- topolvm-node
- topolvm-operator
- 节点磁盘配置 yaml
- Component: (待归类)
- Page ID: 130577094
- Original Title: 新加节点topolvm部署topolvm-node未运行
