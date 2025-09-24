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

# 执行 cleanup.sh 后 /etc/cni/net.d/01

执行 cleanup.sh 后 /etc/cni/net.d/01-kube-ovn.conflist 未被删除

## Cause
- kube-ovn 旧版本的 ovs-ovn DaemonSet 未挂载 /etc/cni/net.d 目录

## Resolution
- 在 cleanup.sh 的 set -eu 前添加补丁代码，修补 DaemonSet 并重建 OVS Pod

## [workaround]

## [Related Information]
- Environment: kube-ovn 版本低于 1.7.1
- ovs-ovn DaemonSet
- /etc/cni/net.d
- 01-kube-ovn.conflist
- kubectl patch
- Component: kube-Ovn
- Page ID: 91240324
- Original Title: 执行 cleanup.sh 后 /etc/cni/net.d/01-kube-ovn.conflist 未被删除
