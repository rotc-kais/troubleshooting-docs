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

# containerd如何构建镜像

ctr没有build，commit功能

## Cause
- containerd原生工具ctr不支持镜像构建功能

## Resolution
- 安装buildkit工具集(buildkitd/buildctl)
- 启动buildkitd服务时指定containerd后端: buildkitd --oci-worker=false --containerd-worker=true &
- 使用buildctl构建镜像: buildctl build --frontend=dockerfile.v0 --local context=. --local dockerfile=. --output type=image,name=IMAGE_NAME

## [workaround]

## [Related Information]
- Environment: containerd集群
- buildkit
- buildctl
- containerd-worker
- Dockerfile
- /run/buildkit/buildkitd.sock
- buildkit命名空间
- Component: containerd
- Page ID: 124684428
- Original Title: containerd如何构建镜像
