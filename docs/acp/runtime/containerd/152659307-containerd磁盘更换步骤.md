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

# containerd磁盘更换步骤

containerd磁盘空间不足

## Cause
- 磁盘空间不足需要更换更大磁盘

## Resolution
- 停止kubelet和containerd服务: systemctl stop kubelet containerd
- 备份原路径文件，格式化新磁盘并挂载至/var/lib/containerd，拷贝原文件至新目录
- 清理/var/log/pods并创建软链接至/var/lib/containerd/pods: rm -fr /var/log/pods && mkdir /var/lib/containerd/pods && ln -s /var/lib/containerd/pods /var/log/pods
- 启动containerd和kubelet服务: systemctl start containerd kubelet

## [workaround]

## [Related Information]
- Environment: 通用
- /var/lib/containerd
- /var/log/pods
- kubelet
- containerd
- Component: containerd
- Page ID: 152659307
- Original Title: containerd磁盘更换步骤
