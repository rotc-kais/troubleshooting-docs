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

# global集群添加master节点

master节点因系统等原因导致节点重置，需重新添加到global集群

## Cause
- 原master节点已从global集群中删除（kubectl get node无法查询到）

## Resolution
- 手动创建Machine资源，填写正确clusterName、ip、networkDevice、labels、port、username、password、type、role
- 检查恢复后节点的etcd状态
- 将其他master节点的/etc/kubernetes/manifests/registry.yaml拷贝到当前节点

## [workaround]

## [Related Information]
- Environment: 3.6.x、3.8.x
- platform.tkestack.io/v1/Machine
- /etc/kubernetes/manifests/registry.yaml
- kubectl get node
- 节点labels
- password的base64编码
- 22端口
- eth0网卡
- root用户
- Component: ETCD
- Page ID: 123609599
- Original Title: global集群添加master节点-(3.6.x/3.8.x)
