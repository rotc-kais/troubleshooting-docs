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

# 创建集群失败报错"kubeadm.Init error"

kubeadm init phase mark-control-plane timeout error Docker cgroup driver 'systemd' overriding Kubelet's 'cgroupfs' curl https://<vip>:6443 timeout

## Cause
- Cgroup driver mismatch between Docker (systemd) and Kubelet (cgroupfs)
- VIP:6443 connectivity issues in non-HA cluster setup

## Resolution
- Re-deploy cluster using master node IP instead of VIP for cluster address

## [workaround]

## [Related Information]
- Environment: 3.10.1
- 6443
- /etc/kubernetes/kubeadm-config.yaml
- kubeadm
- kubelet
- Docker cgroup driver
- Component: Kubelet
- Page ID: 140823117
- Original Title: 创建集群失败报错"kubeadm.Init error"
