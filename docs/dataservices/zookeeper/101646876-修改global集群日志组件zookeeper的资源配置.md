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

# 修改global集群日志组件zookeeper的资源配置

JIRA Jira：

## Cause

## Resolution
- 登录global集群节点执行：kubectl edit prdb base
- 在.spec.valuesOverride添加配置：
    ait/chart-kafka-zookeeper:
      cpaasZookeeper:
        resources:
          requests:
            cpu: 200m
            memory: 256Mi
          limits:
            cpu: "2"
            memory: 4Gi
- 检查生效状态：kubectl get deployment -n cpaas-system cpaas-zookeeper -oyaml

## [workaround]
- 等待平台自动更新（约5-10分钟）

## [Related Information]
- Environment: global集群（3.0.X/3.4.X）
- prdb/base
- cpaas-zookeeper
- cpaas-system
- ait/chart-kafka-zookeeper
- resources.requests.cpu
- resources.requests.memory
- resources.limits.cpu
- resources.limits.memory
- Component: zookeeper
- Page ID: 101646876
- Original Title: 修改global集群日志组件zookeeper的资源配置
