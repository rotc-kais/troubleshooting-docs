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

# 单点harbor 迁移ha harbor 的方案

需要将单点Harbor迁移到高可用（HA）Harbor集群。单点Harbor存在单点故障风险，无法满足生产环境的高可用需求。迁移过程中需要确保数据一致性、服务连续性以及配置的正确性。

## Cause

## Resolution
- ## 排查过程
- 1. 检查当前单点Harbor的版本、存储后端（如文件系统、S3等）以及数据库配置。
- 4. 验证网络连通性及权限配置，确保源Harbor与目标Harbor之间的数据传输畅通。
- ## 解决方法
- 2. 使用Harbor的迁移工具或手动导出导入数据。对于镜像数据，可以通过`docker pull`和`docker push`的方式迁移，或直接复制存储后端数据（需确保Registry处于只读状态）。
- 3. 迁移完成后，更新DNS或负载均衡配置，将流量切换到新的HA Harbor集群。
- 5. 监控新集群的运行状态，及时处理可能出现的问题。

## [workaround]

## [Related Information]
**Screenshots**
![](assets/devops-dan-dian-harbor-qian-yi-ha-harbor-de-fang-an-110602-zh/mceclip4_1749718143968_5oqpg.png)
- harbor
- 16
- /devops-dan-dian-harbor-qian-yi-ha-harbor-de-fang-an-110602-zh/mceclip4_1749718143968_5oqpg.png
- Component: harbor
- Page ID: 302286200
- Original Title: Devops-单点harbor 迁移ha harbor 的方案-110602-zh
