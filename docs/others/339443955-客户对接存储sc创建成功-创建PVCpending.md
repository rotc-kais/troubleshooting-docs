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

# 客户对接存储sc创建成功 创建PVCpending

PVC pending 日志报错：找不到可用拓扑（no available topology found）

## Cause
- StorageClass缺少allowedTopologies字段

## Resolution
- 在StorageClass YAML中添加allowedTopologies字段并配置拓扑约束

## [workaround]

## [Related Information]
**Screenshots**
`![](assets/rong-qi-ping-tai-cun-chu-ke-hu-dui-jie-cun-chu-scchuang-jian-cheng-gong-chuang-j/mceclip1_1756461041864_9j4i4.png)`
`![](assets/rong-qi-ping-tai-cun-chu-ke-hu-dui-jie-cun-chu-scchuang-jian-cheng-gong-chuang-j/mceclip0_1756461029512_hahec.png)`
`![](assets/rong-qi-ping-tai-cun-chu-ke-hu-dui-jie-cun-chu-scchuang-jian-cheng-gong-chuang-j/mceclip3_1756460980646_6advp.png)`
- Environment: 容器平台4.0版本，华为存储
- StorageClass
- allowedTopologies
- topology.kubernetes.io/zone
- Component: (待归类)
- Page ID: 339443955
- Original Title: 容器平台-存储-客户对接存储sc创建成功 创建PVCpending-116461
