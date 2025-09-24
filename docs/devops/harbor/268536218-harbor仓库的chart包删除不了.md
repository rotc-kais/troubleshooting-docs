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

# harbor仓库的chart包删除不了

无法在Harbor界面删除chart包 前端界面残留显示已删除的chart包 重启redis pod无效

## Cause
- chartmuseum对含多个'-'的包名处理缺陷
- chart包命名不符合社区要求

## Resolution
- 升级Harbor到2.6.4版本
- 规范chart包命名格式为<name>-<version>.tgz

## [workaround]
- redis-cli进入select 3后删除对应仓库key
- 删除chartmuseum pod中/chart_storage/<registry>/index-cache.yaml相关条目

## [Related Information]
**Screenshots**
![](assets/devops-harborcang-ku-de-chartbao-shan-chu-bu-liao-101170/mceclip4_1740133759708_c2t9o.png)
![](assets/devops-harborcang-ku-de-chartbao-shan-chu-bu-liao-101170/mceclip5_1740133770264_uplu8.png)
![](assets/devops-harborcang-ku-de-chartbao-shan-chu-bu-liao-101170/mceclip0_1740372857205_teacg.png)
- Environment: Harbor 3.12.2
- redis
- chartmuseum
- index-cache.yaml
- chart_storage路径
- redis key分区3
- Component: harbor
- Page ID: 268536218
- Original Title: Devops-harbor仓库的chart包删除不了-101170
