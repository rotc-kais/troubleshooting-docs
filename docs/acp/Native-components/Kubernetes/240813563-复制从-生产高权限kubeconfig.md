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

# 复制从 生产高权限kubeconfig

权限不足 无法生成有效token

## Cause
- ClusterRole名称错误：cluster-admin1应为cluster-admin
- Secret注解缩进错误导致关联失败

## Resolution
- 修正ClusterRoleBinding配置：roleRef.name: cluster-admin
- 修复Secret YAML缩进：annotations字段使用标准缩进

## [workaround]
- 手动创建正确ClusterRoleBinding：kubectl edit clusterrolebinding admin-user

## [Related Information]
- Environment: Kubernetes生产集群(kube-system命名空间)
- cluster-admin
- ClusterRoleBinding
- ServiceAccount
- /etc/kubernetes/pki/ca.crt
- /cpaas/read-config
- Component: Kubernetes
- Page ID: 240813563
- Original Title: 复制从 生产高权限kubeconfig
