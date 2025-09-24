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

# 修改k8s默认Nodeport端口范围

## 环境信息 适用版本：TKE2.6 TKE2.9 TKE3.x

## Cause
- 默认NodePort端口范围（30000-32767）不符合网络安全要求

## Resolution
- 修改master节点kube-apiserver配置文件，添加--service-node-port-range=30000-52767
- 删除kube-apiserver容器：docker ps -a|awk '/kube-api/{cmd="docker rm -f "$1;system(cmd)}'
- 重启kubelet：systemctl restart kubelet
- 其他master节点重复相同操作
- 创建svc验证NodePort范围

## [workaround]

## [Related Information]
- Environment: TKE2.6 TKE2.9 TKE3.x
- kube-apiserver.yaml
- --service-node-port-range
- kubelet
- docker
- /etc/kubernetes/manifests/kube-apiserver.yaml
- Component: Kubernetes
- Page ID: 98870725
- Original Title: 修改k8s默认Nodeport端口范围-解决方案
