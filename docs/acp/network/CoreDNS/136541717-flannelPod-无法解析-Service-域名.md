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

# 【flannel】Pod 无法解析 Service 域名

Pod 无法解析 Service 域名，日志报错：lookup system.cpass-system.svc on 172.21.0.10:53: read udp xxxxx -> 172.21.0.10:53 i/o timeout 节点通过 Service IP 解析域名失败，但使用 Pod IP 正常 CoreDNS 对应的 IPVS 配置中 real server 与实际的 CoreDNS Pod IP 不一致

## Cause
- kube-apiserver 关闭了 EndpointSlice 的 feature gate，但 kube-proxy 未关闭 EndpointSliceProxying，导致配置不一致

## Resolution
- 在 kube-proxy 的 ConfigMap 中关闭 EndpointSliceProxying

## [workaround]

## [Related Information]
**Screenshots**
![](assets/flannel-pod-wu-fa-jie-xi-service-yu-ming/image2023-2-20_15-49-46.png)
![](assets/flannel-pod-wu-fa-jie-xi-service-yu-ming/image2023-2-20_15-51-49.png)
![](assets/flannel-pod-wu-fa-jie-xi-service-yu-ming/image2023-2-20_15-53-41.png)
![](assets/flannel-pod-wu-fa-jie-xi-service-yu-ming/image2023-2-20_15-54-39.png)
- Environment: Kubernetes 版本：v1.19；CNI：flannel
- kube-proxy 的 EndpointSliceProxying 配置
- kube-apiserver 的 --feature-gates=EndpointSlice=false
- kube-dns Service 和 EndpointSlice
- IPVS 配置
- CoreDNS Pod IP
- Component: CoreDNS
- Page ID: 136541717
- Original Title: 【flannel】Pod 无法解析 Service 域名
