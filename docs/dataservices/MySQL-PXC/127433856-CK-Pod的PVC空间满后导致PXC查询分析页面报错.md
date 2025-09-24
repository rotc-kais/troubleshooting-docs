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

# CK Pod的PVC空间满后，导致PXC查询分析页面报错

CK Pod状态为Error log-volume-template PVC空间满

## Cause
- ClickHouse自身Bug导致日志过量生成
- 默认日志轮转策略不合理
- log PVC容量配置不足(默认1Gi)

## Resolution
- 将log-volume-template PVC扩容至12GB

## [workaround]

## [Related Information]
**Screenshots**
![image-20220530222904654](http://cdn.xnginx.com//image/image-20220530222904654.png)
![image-20220530222934382](http://cdn.xnginx.com//image/image-20220530222934382.png)
![image-20220530223007656](http://cdn.xnginx.com//image/image-20220530223007656.png)
![image-20220530223045436](http://cdn.xnginx.com//image/image-20220530223045436.png)
- Environment: 3.8.1
- log-volume-template-chi-pxc-ck-slowsql-cluster-0-0-0
- data-volume-template-chi-pxc-ck-slowsql-cluster-0-0-0
- sc-topolvm
- /var/log/clickhouse-server
- Component: MySQL/PXC
- Page ID: 127433856
- Original Title: 数据服务-ClickHouse-CK Pod的PVC空间满后，导致PXC查询分析页面报错
