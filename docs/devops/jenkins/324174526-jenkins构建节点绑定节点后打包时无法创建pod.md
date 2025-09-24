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

# jenkins构建节点绑定节点后，打包时无法创建pod

jenkins构建节点绑定节点后，打包时无法创建pod 使用nfs存储类时pvc无法挂载

## Cause
- nfs存储类的白名单缺少应用节点

## Resolution
- 联系nfs管理员将应用节点加入白名单

## [workaround]

## [Related Information]
**Screenshots**
![](assets/devops-jenkinsgou-jian-jie-dian-bang-ding-jie-dian-hou-da-bao-shi-wu-fa-chuang-j/1753257514_99781_8ae45a_%25E6%2588%25AA%25E5%259B%25BE3_1.png)
- Environment: 3.12.2
- nfs存储类
- pvc
- 应用节点
- Component: jenkins
- Page ID: 324174526
- Original Title: Devops-jenkins构建节点绑定节点后，打包时无法创建pod-113593
