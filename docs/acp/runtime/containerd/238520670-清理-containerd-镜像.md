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

# 清理 containerd 镜像

同一个镜像在某些节点无法运行，但在其他节点运行正常 不同节点的镜像 ID 相同 镜像启动后马上输出 exec format error 或其它表示无法运行的错误

## Cause
- containerd 镜像损坏导致无法启动，删除镜像未清理 snapshot 文件

## Resolution
- 执行 clean-image.sh 脚本清理 snapshot 并重新生成镜像
- bash clean-image.sh <镜像名>
- 清理后通过 crictl pull 重新拉取镜像

## [workaround]

## [Related Information]
- Environment: v3.14 v3.16 v3.18
- containerd
- crictl
- ctr
- k8s.io 命名空间
- snapshot 文件
- overlayfs
- Component: containerd
- Page ID: 238520670
- Original Title: 清理 containerd 镜像
