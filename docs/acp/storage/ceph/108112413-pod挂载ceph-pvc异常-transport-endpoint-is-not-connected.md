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

# pod挂载ceph pvc异常 transport endpoint is not connected

pod异常，掉存储 pvc事件报错transport endpoint is not connected 主机mount显示ceph-fuse挂载路径/var/lib/kubelet/pods/xxxxxx

## Cause
- kubelet重启导致ceph-fuse进程被终止
- 使用ceph-fuse挂载时kubelet退出会kill fuse-daemon

## Resolution
- 卸载主机ceph-fuse包改用内核态挂载（需评估内核版本是否≥4.17以支持配额）
- 重启受影响pod触发kubelet重新挂载volume
- 修改kubelet.service配置KillMode=process（需评估副作用）

## [workaround]
- 重启所有受影响的pod

## [Related Information]
- Environment: 通用
- ceph-fuse
- kubelet.service
- cephfs-provisioner
- /var/lib/kubelet/pods
- Component: Ceph
- Page ID: 108112413
- Original Title: pod挂载ceph pvc异常 transport endpoint is not connected
