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

# 重复 IP：duplicate IPv4 address found on logical switch port

Pod 无法分配 IP kube-ovn-controller 日志报错 duplicate IPv4 address found on logical switch port 存在两个 Pod（A/B）使用相同 IP，其中 Pod B 处于 Running 状态

## Cause
- kube-ovn-controller leader 启动时 IPAM 初始化未包含 Pod B
- kube-ovn-controller 与 apiserver 通信故障导致数据同步不完整
- 证书错误导致无法访问 apiserver（x509: certificate is valid for 127.0.0.1, 10.193.0.5... not 10.97.0.1）
- 升级过程中 ipvs 缺少 apiserver svc ip 转发项，流量被 ALB 处理

## Resolution
- 重启 kube-ovn-controller
- 删除并重建已占用 IP 的 Pod

## [workaround]

## [Related Information]
- Environment: CNI 版本：Kube-OVN v1.8.14
- kube-ovn-controller
- IPAM
- apiserver svc ip (10.97.0.1)
- kube-ovn-controller 证书配置
- ipvs 转发规则
- ALB
- Component: Kubernetes
- Page ID: 152661058
- Original Title: 重复 IP：duplicate IPv4 address found on logical switch port
