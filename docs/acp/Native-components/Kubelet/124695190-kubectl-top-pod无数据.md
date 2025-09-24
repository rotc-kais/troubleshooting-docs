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

# kubectl top pod无数据

kubectl top pod无数据 grafana缺少container_cpu_usage_total指标 kubelet:10250/metrics/cadvisor接口缺少container_cpu_usage_total指标

## Cause
- kubelet的BUG导致cadvisor无法在内存缓存中找到数据(https://github.com/google/cadvisor/issues/1932)

## Resolution
- 更新kubelet二进制文件

## [workaround]

## [Related Information]
- Environment: TKE3.6
- kubelet
- cAdvisor
- 10250端口
- container_cpu_usage_total
- Component: Kubelet
- Page ID: 124695190
- Original Title: kubectl top pod无数据
