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

# 【重复 IP】duplicate IPv4 address found on logical switch port

Pod 分配到重复 IP 地址 创建 LSP 时报错: duplicate IPv4 address '40.19.122.185' found on logical switch port

## Cause
- Kube-OVN v1.7 版本存在 IP 地址分配冲突问题
- 未合入修复补丁 3205b88eaf94238c6819760acd1e57b5b96d70f9

## Resolution
- 升级 ACP 到包含修复的版本
- 升级 Kube-OVN 到 1.8 或更高版本

## [workaround]

## [Related Information]
- Environment: Kube-OVN v1.7, ACP v3.6.3
- logical_switch_port
- subnet-ft2
- 40.19.122.185
- tbp-tbm-ft2-67b8f58bf5-7fg6v.tbp-nft2
- Component: kube-ovn
- Page ID: 124695382
- Original Title: 【重复 IP】duplicate IPv4 address found on logical switch port
