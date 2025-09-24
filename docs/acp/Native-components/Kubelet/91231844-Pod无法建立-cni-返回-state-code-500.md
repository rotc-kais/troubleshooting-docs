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

# Pod无法建立, cni 返回 state code 500

pod 无法建立. kubelet 表示 network: request ip return 500 no available ip for pod. controller 无异常日志, kube-ovn-cni 仅有一行报错内容.

## Cause
- 交换机上没有成功部署 trunk, 导致 pod 建立时, ping gw的测试没有通过.
- ping测试在建立流程的最后, 因此除了此报错不存在其他异常日志.

## Resolution
- 找交换机管理员正确设置交换机 trunk 端口即可.

## [workaround]

## [Related Information]
- Environment: Underlay 部署
- kube-ovn-cni
- trunk 端口
- Component: Kubelet
- Page ID: 91231844
- Original Title: Pod无法建立, cni 返回 state code 500
