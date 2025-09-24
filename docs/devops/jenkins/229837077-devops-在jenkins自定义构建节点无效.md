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

# devops 在jenkins自定义构建节点无效

jenkins创建自定义构建节点在流水线配置无法选择到 旧的jenkins添加完构建节点后页面上无法选到但jenkins UI中存在该节点

## Cause
- devops相关组件阻塞了jenkins事件

## Resolution
- 重启devops组件

## [workaround]

## [Related Information]
**Screenshots**
![](assets/devops-devops-zai-jenkinszi-ding-yi-gou-jian-jie-dian-wu-xiao/1723597531_99781_b1af21_%25E5%25BE%25AE%25E4%25BF%25A1%25E6%2588%25AA%25E5%259B%25BE_20240814090345.png)
![](assets/devops-devops-zai-jenkinszi-ding-yi-gou-jian-jie-dian-wu-xiao/1723597532_99781_037c48_%25E5%25BE%25AE%25E4%25BF%25A1%25E5%259B%25BE%25E7%2589%2587_20240814090503.png)
- Environment: 3.14.1
- jenkins构建节点配置
- devops组件
- Component: jenkins
- Page ID: 229837077
- Original Title: Devops-devops 在jenkins自定义构建节点无效
