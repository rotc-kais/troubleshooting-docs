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

# kafka压测报错Map failed

kafka压测报错Map failed 日志提示分区数过大

## Cause
- segment.bytes参数配置不合理导致日志段数量过多

## Resolution
- 通过yaml方式调整segment.bytes参数配置

## [workaround]

## [Related Information]
**Screenshots**
![](https://jira.alauda.cn/secure/attachment/116302/116302_image-2022-07-02-12-05-01-415.png)
![](assets/kafkaya-ce-bao-cuo-map-failed/image2022-7-21_10-50-7.png)
![](assets/kafkaya-ce-bao-cuo-map-failed/image2022-7-21_10-48-46.png)
- Environment: 3.8.1
- segment.bytes
- kafka分区数
- Component: kafka
- Page ID: 120107961
- Original Title: kafka压测报错Map failed
