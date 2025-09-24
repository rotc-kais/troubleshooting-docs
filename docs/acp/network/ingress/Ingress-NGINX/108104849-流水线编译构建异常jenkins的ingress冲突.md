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

# 流水线编译构建异常，jenkins的ingress冲突

流水线构建偶现失败 错误日志显示 Not Enough memory，但内存实际充足

## Cause
- 存在两个 Jenkins 实例导致 ingress 冲突

## Resolution
- 手工删除 devops-tool-operator 下的 Jenkins 相关实例
- 通过 pod 配置编辑 Jenkins CR yaml 文件
- 备份并清理冲突的 ingress
- 重新创建 Jenkins CR

## [workaround]

## [Related Information]
- Environment: 3.4.3
- jenkins CR
- ingress
- devops-tool-operator
- kubectl get jenkins -A
- Component: Ingress NGINX
- Page ID: 108104849
- Original Title: 流水线编译构建异常，jenkins的ingress冲突
