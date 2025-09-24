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

# 基于sts设置Headless Service的注意事项

Headless Service 无法发现 Pod DNS 解析异常 StatefulSet Pod 的 DNS 记录未生成

## Cause
- Service 未设置 clusterIP: None
- Service 的 selector 标签与 StatefulSet Pod 标签不匹配
- StatefulSet 的 serviceName 与 Headless Service 名称不一致
- 创建 StatefulSet 后修改了 serviceName

## Resolution
- 确保 Service 定义包含 clusterIP: None
- 检查 Service 和 StatefulSet 的 selector 标签完全一致
- StatefulSet 的 serviceName 必须与 Headless Service 名称严格一致
- 禁止修改已创建 StatefulSet 的 serviceName 字段

## [workaround]

## [Related Information]
- Environment: Kubernetes 集群
- serviceName
- clusterIP: None
- selector.app
- StatefulSet.spec.serviceName
- pod名.服务名.命名空间.svc.cluster.local
- Component: redis
- Page ID: 338493730
- Original Title: 基于sts设置Headless Service的注意事项
