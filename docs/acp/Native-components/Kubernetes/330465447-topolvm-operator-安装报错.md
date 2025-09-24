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

# topolvm operator 安装报错

topolvm-controller服务Pod启动报错`csidrivers.storage.k8s.io "topolvm.cybozu.com" not found` 平台界面导航栏缺少本地存储位置

## Cause
- 部署初期相关资源未完全创建
- 安装过程缺少`--target - catalog - source = system`参数

## Resolution
- 等待topolvm-operator正常启动后继续操作
- 重新触发上传并添加`--target - catalog - source = system`参数

## [workaround]

## [Related Information]
- Environment: 4.0.1
- csidrivers.storage.k8s.io
- topolvm.cybozu.com
- topolvm-operator
- --target - catalog - source = system
- Component: Kubernetes
- Page ID: 330465447
- Original Title: 容器平台-存储-topolvm存储-topolvm operator 安装报错-114787
