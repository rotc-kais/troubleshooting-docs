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

# 平台生态（MiddleWare）

Pod频繁重启 健康检查探针持续失败 日志出现 Connection refused 错误

## Cause
- service.spec.ports.containerPort配置错误
- livenessProbe.httpGet.port与业务监听端口不一致
- 容器启动顺序导致依赖服务未就绪

## Resolution
- kubectl get svc <service-name> -o yaml 检查containerPort配置
- 确认deployment中livenessProbe配置的端口与业务实际监听端口一致
- 在容器配置中添加dependsOn字段控制启动顺序

## [workaround]
- kubectl delete pod <pod-name> --force --grace-period=0 强制重建Pod

## [Related Information]
- Environment: Kubernetes 1.18+
- service.spec.ports.containerPort
- livenessProbe.httpGet.port
- dependsOn
- readinessProbe
- Component: (待归类)
- Page ID: 216105984
- Original Title: 平台生态（MiddleWare）
