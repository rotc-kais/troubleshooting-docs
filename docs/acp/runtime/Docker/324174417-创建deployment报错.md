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

# 创建deployment报错

创建deployment挂载configmap报错

## Cause
- configmap的defaultmode字段使用了八进制数值420，而Kubernetes需要十进制表示

## Resolution
- 将configmap的defaultmode字段改为十进制数值（如420的八进制对应十进制272）

## [workaround]

## [Related Information]
**Screenshots**
![](assets/rong-qi-ping-tai-yuan-sheng-zu-jian-kubernetes-dockerdeng-yuan-sheng-zu-jian-wen/1753862066_99781_64fba3_%25E5%25BE%25AE%25E4%25BF%25A1%25E5%259B%25BE%25E7%2589%2587_2025-07-30_155304_641_1.png)
- Environment: 3.18.2
- configmap volume挂载配置
- defaultMode
- Component: Docker
- Page ID: 324174417
- Original Title: 容器平台-原生组件-Kubernetes，Docker等原生组件问题-创建deployment报错-114109
