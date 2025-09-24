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

# 访问kubelet metrics方式

环境信息 适用版本：TKE 3.8.1以下

## Cause

## Resolution
- curl -k https://[节点IP]:10250/metrics --cacert /etc/kubernetes/pki/ca.crt --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt --key /etc/kubernetes/pki/apiserver-kubelet-client.key
- curl -k https://[节点IP]:10250/metrics/cadvisor --cacert /etc/kubernetes/pki/ca.crt --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt --key /etc/kubernetes/pki/apiserver-kubelet-client.key

## [workaround]

## [Related Information]
- Environment: TKE 3.8.1以下
- 10250
- /metrics
- /metrics/cadvisor
- kubelet
- cAdvisor
- /etc/kubernetes/pki/ca.crt
- /etc/kubernetes/pki/apiserver-kubelet-client.crt
- /etc/kubernetes/pki/apiserver-kubelet-client.key
- Component: Kubelet
- Page ID: 127416167
- Original Title: 访问kubelet metrics方式
