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

# DevOps (DEVOPS)

Pod状态持续为CrashLoopBackOff 容器反复崩溃重启 查看容器日志显示应用启动失败

## Cause
- 应用启动时发生致命错误
- 容器因OOMKilled被终止
- 依赖服务(如数据库)不可达
- ConfigMap/Secret配置错误或挂载失败
- Liveness/Readiness探针配置不合理

## Resolution
- 检查应用日志: `kubectl logs <pod> --previous`
- 检查资源限制: `kubectl describe pod`查看OOMKilled标记
- 验证依赖服务连通性: `kubectl exec -it <pod> -- nc -zv <service> <port>`
- 检查配置映射: `kubectl get configmap/<name> -o yaml`
- 调整探针参数: 适当增加initialDelaySeconds/timeoutSeconds

## [workaround]
- 增加容器重启延迟: spec.template.spec.containers[0].restartPolicy=OnFailure + spec.template.spec.terminationGracePeriodSeconds=60
- 临时禁用就绪探针: 注释掉readinessProbe配置节

## [Related Information]
- Environment: Kubernetes集群
- Pod
- Deployment
- ConfigMap
- Secret
- LivenessProbe
- ReadinessProbe
- Component: (待归类)
- Page ID: 216105987
- Original Title: DevOps (DEVOPS)
