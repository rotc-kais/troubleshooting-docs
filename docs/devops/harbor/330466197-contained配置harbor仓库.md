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

# contained配置harbor仓库

使用ctr拉取镜像报错

## Cause
- ctr默认使用https协议连接镜像仓库，而目标harbor仓库提供http服务

## Resolution
- 在节点使用crictl pull拉取镜像

## [workaround]

## [Related Information]
**Screenshots**
![](assets/devops-gong-ju-lian-harbor-containedpei-zhi-harborcang-ku-114886/mceclip0_1754900698011_2s57o.png)
![](assets/devops-gong-ju-lian-harbor-containedpei-zhi-harborcang-ku-114886/mceclip1_1754901101039_n7spo.png)
- Environment: Harbor 3.18.1
- ctr
- crictl
- http协议
- harbor仓库地址
- Component: harbor
- Page ID: 330466197
- Original Title: Devops-工具链-Harbor-contained配置harbor仓库-114886
