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

# change minio instance port

MinIO instance using port 80 with potential security risk

## Cause
- MinIO service configured with HTTP protocol on port 80

## Resolution
- kubectl edit svc -n minio-system minio and modify port field to 443

## [workaround]

## [Related Information]
**Screenshots**
![](assets/rong-qi-ping-tai-cun-chu-qi-ta-rong-qi-dui-xiang-cun-chu-jie-kou-kuai-zhao-kong/mceclip0_1754659654625_j1p68.png)
![](assets/rong-qi-ping-tai-cun-chu-qi-ta-rong-qi-dui-xiang-cun-chu-jie-kou-kuai-zhao-kong/mceclip1_1754659695144_9s28d.png)
![](assets/rong-qi-ping-tai-cun-chu-qi-ta-rong-qi-dui-xiang-cun-chu-jie-kou-kuai-zhao-kong/mceclip2_1754659727564_bte7c.png)
- Environment: ACP 3.16.2 (TopoLVM-based production environment)
- minio-system/minio Service
- port configuration
- mc command
- Component: S3/MinIO
- Page ID: 330466249
- Original Title: 容器平台-存储-其他（容器对象存储接口/快照控制器）-change minio instance port-1857
