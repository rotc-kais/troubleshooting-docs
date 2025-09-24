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

# containerd添加镜像加速

国内环境下拉取镜像缓慢

## Cause
- 默认镜像源在国内网络环境下访问速度慢

## Resolution
- 修改/etc/containerd/config.toml配置文件，在plugins."io.containerd.grpc.v1.cri".registry.mirrors下添加国内镜像地址
- 执行systemctl restart containerd重启服务
- 使用crictl pull验证镜像下载

## [workaround]

## [Related Information]
- Environment: containerd集群通用
- /etc/containerd/config.toml
- plugins."io.containerd.grpc.v1.cri".registry.mirrors
- registry.cn-hangzhou.aliyuncs.com
- systemctl restart containerd
- crictl pull
- Component: containerd
- Page ID: 124684338
- Original Title: containerd添加镜像加速
