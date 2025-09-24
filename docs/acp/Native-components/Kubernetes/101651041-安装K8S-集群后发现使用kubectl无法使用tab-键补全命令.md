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

# 安装K8S 集群后发现使用kubectl无法使用tab 键补全命令

kubectl无法使用tab键补全命令

## Cause
- 未安装bash-completion组件
- kubectl自动补全功能未配置

## Resolution
- yum install -y bash-completion
- source /usr/share/bash-completion/bash_completion
- source <(kubectl completion bash)
- echo "source <(kubectl completion bash)" >> ~/.bashrc

## [workaround]

## [Related Information]
- Environment: 通用
- bash-completion
- kubectl completion
- ~/.bashrc
- Component: Kubernetes
- Page ID: 101651041
- Original Title: 安装K8S 集群后发现使用kubectl无法使用tab 键补全命令
