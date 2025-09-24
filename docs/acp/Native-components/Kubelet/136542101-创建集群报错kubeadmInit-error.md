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

# 创建集群报错kubeadm.Init error

kubeadm init phase mark-control-plane 执行失败，错误码 exit code 1 检测到 Docker cgroup driver 为 systemd，但 KubeletConfiguration 中指定了 cgroupfs 连接 vip:6443 超时

## Cause
- 非高可用集群错误配置了 VIP 地址
- VIP 转发配置异常导致连接超时

## Resolution
- 清理集群后重新部署
- 填写集群地址参数时使用 master1 节点的实际 IP 替代 VIP

## [workaround]

## [Related Information]
- Environment: 3.8.2
- /etc/kubernetes/kubeadm-config.yaml
- KubeletConfiguration.cgroupDriver
- vip:6443
- kubeadm
- kubelet
- Component: Kubelet
- Page ID: 136542101
- Original Title: 创建集群报错kubeadm.Init error
