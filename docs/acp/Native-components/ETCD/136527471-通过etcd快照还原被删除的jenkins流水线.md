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

# 通过etcd快照还原被删除的jenkins流水线

jenkins公共项目分配取消后，流水线资源及执行记录被自动清空

## Cause
- 取消公共项目分配时平台自动删除关联资源

## Resolution
- 使用etcdctl snapshot restore命令还原备份快照
- 在未运行etcd的slave节点启动新etcd容器并挂载恢复数据
- 通过etcdctl get命令确认并导出/pipelineconfigs路径下的资源
- 修改导出的pipeline资源中jenkinsBinding名称和UID后通过kubectl apply导入

## [workaround]

## [Related Information]
- Environment: 3.10.1
- etcd:2379
- /registry/devops.alauda.io/devops.alauda.io/pipelineconfigs
- jenkinsbindings
- etcdctl snapshot restore
- kubectl apply
- Component: ETCD
- Page ID: 136527471
- Original Title: 通过etcd快照还原被删除的jenkins流水线
