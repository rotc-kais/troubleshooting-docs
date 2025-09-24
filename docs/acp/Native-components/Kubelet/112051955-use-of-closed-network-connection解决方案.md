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

# use of closed network connection解决方案

kubelet日志中出现use of closed network connection

## Cause

## Resolution
- 修改/etc/systemd/system/kubelet.service，添加环境变量SCRIPT检测错误日志并自动重启kubelet
- 执行命令生成check-kubelet.service并重启服务: systemctl daemon-reload; systemctl restart check-kubelet

## [workaround]

## [Related Information]
- Environment: 通用
- 6443
- /etc/systemd/system/kubelet.service
- /etc/systemd/system/check-kubelet.service
- kubelet.service配置中的Environment='SCRIPT=...'
- Component: Kubelet
- Page ID: 112051955
- Original Title: use of closed network connection解决方案
