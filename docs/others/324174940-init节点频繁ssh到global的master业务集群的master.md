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

# init节点频繁ssh到global的master、业务集群的master

init节点频繁ssh到global的master、业务集群的master

## Cause
- 旧版本逻辑中init节点会通过ssh对集群节点进行探测

## Resolution
- 升级到已修改该逻辑的后续版本

## [workaround]

## [Related Information]
**Screenshots**
![](assets/ji-chu-jia-gou-chan-pin-sheng-ming-zhou-qi-guan-li-bu-shu-initjie-dian-pin-fan-s/%25E4%25BC%2581%25E4%25B8%259A%25E5%25BE%25AE%25E4%25BF%25A1%25E6%2588%25AA%25E5%259B%25BE_17534124142444_1.png)
- Environment: 3.8
- init节点
- global master
- 业务集群master
- ssh探测逻辑
- Component: (待归类)
- Page ID: 324174940
- Original Title: 基础架构-产品生命周期管理-部署-init节点频繁ssh到global的master、业务集群的master-113731
