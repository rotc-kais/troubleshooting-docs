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

# 使用自动化脚本操作 subnet 扩容时, 新的 subnets 无法创建

新的 subnets 无法创建 新建的 subnet 状态无法 ready 无法在 host node 上建立对应的 route

## Cause
- 子网 CIDR 冲突（如 10.200.0.0/24 重复使用）
- controller 遍历 namespace 的 pod 的 logical_switch 标签时比较失败

## Resolution
- 修复 kube-ovn 中 subnet 创建时的 CIDR 冲突检查逻辑
- 修复 controller 遍历 logical_switch 标签时的逻辑错误（参考 ACP-17010）

## [workaround]

## [Related Information]
- Environment: CNI 版本：kube-ovn 1.9.8
- subnet CIDR
- logical_switch 标签
- controller 日志
- kube-ovn
- Component: Kubernetes
- Page ID: 124694694
- Original Title: 使用自动化脚本操作 subnet 扩容时, 新的 subnets 无法创建
