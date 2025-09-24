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

# 开启 u2o 后 Overlay Pod 无法访问 API Server

kube-ovn-pinger crash 无法访问 API Server 未更新 kube-ovn 的集群也有此问题

## Cause
- 存在旧版本残留的 LR Policy

## Resolution
- kubectl -n kube-system exec svc/ovn-nb -- ovn-nbctl lr-policy-del ovn-cluster
- kubectl -n kube-system delete pod -l app=kube-ovn-controller

## [workaround]

## [Related Information]
- Environment: CNI 版本：kube-ovn v1.11
- ovn-cluster
- LR Policy
- kube-ovn-controller
- kube-ovn-pinger
- Component: Kubernetes
- Page ID: 201461015
- Original Title: 开启 u2o 后 Overlay Pod 无法访问 API Server
