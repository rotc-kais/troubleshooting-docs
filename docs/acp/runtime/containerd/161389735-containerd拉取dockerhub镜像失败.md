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

# containerd拉取dockerhub镜像失败

containerd拉取dockerhub镜像失败

## Cause
- containerd版本1.6.6-5存在bug

## Resolution
- 替换containerd为1.6.20-4版本，路径：/usr/bin/containerd

## [workaround]

## [Related Information]
- Environment: containerd 1.6.6-5
- containerd
- /usr/bin/containerd
- Component: containerd
- Page ID: 161389735
- Original Title: containerd拉取dockerhub镜像失败
