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

Headless Service 无法发现 Pod DNS 解析异常 Pod 域名不符合预期格式

## Cause
- Service 未设置 clusterIP: None
- Service 的 selector 与 StatefulSet Pod 标签不匹配
- StatefulSet.spec.serviceName 与 Headless Service 名称不一致
- 创建后修改 StatefulSet.spec.serviceName

## Resolution
- 检查 Service 配置包含 clusterIP: None
- 确保 Service selector 与 StatefulSet Pod 标签完全匹配
- 验证 StatefulSet.spec.serviceName 与 Headless Service 名称严格一致
- 重建 StatefulSet（不可修改已存在的 serviceName）

## [workaround]

## [Related Information]
- Environment: Kubernetes 集群中使用 StatefulSet 和 Headless Service 的场景
- serviceName
- spec.selector.matchLabels
- spec.template.metadata.labels
- clusterIP: None
- DNS 域名格式
- Component: redis
- Page ID: 341705096
- Original Title: 基于sts设置Headless Service的注意事项
