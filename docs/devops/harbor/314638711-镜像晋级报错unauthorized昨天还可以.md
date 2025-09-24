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

# 镜像晋级报错unauthorized，昨天还可以

Error getting artifact details: errors: [{"code":"UNAUTHORIZED","message":"unauthorized"}]

## Cause
- 问题原因是测试harbor与生产的harbor的集成卡片使用了同一个凭据，导致晋级执行时没有获取到正确的凭据，从katanomi-artifact日志中可以看到。

## Resolution
- 不同集成卡片使用的凭据应该不同，测试的harbor重新使用的新的凭据后恢复
- ## 解决方案

## [workaround]

## [Related Information]
**Screenshots**
![](assets/devops-jing-xiang-jin-ji-bao-cuo-unauthorized-zuo-tian-huan-ke-yi-112693/mceclip2_1752142857690_qg7ur.png)
![](assets/devops-jing-xiang-jin-ji-bao-cuo-unauthorized-zuo-tian-huan-ke-yi-112693/mceclip0_1752142841128_uarpk.png)
![](assets/devops-jing-xiang-jin-ji-bao-cuo-unauthorized-zuo-tian-huan-ke-yi-112693/mceclip1_1752142845615_ltbkc.png)
- 16
- /devops-jing-xiang-jin-ji-bao-cuo-unauthorized-zuo-tian-huan-ke-yi-112693/mceclip2_1752142857690_qg7ur.png
- /devops-jing-xiang-jin-ji-bao-cuo-unauthorized-zuo-tian-huan-ke-yi-112693/mceclip0_1752142841128_uarpk.png
- /devops-jing-xiang-jin-ji-bao-cuo-unauthorized-zuo-tian-huan-ke-yi-112693/mceclip1_1752142845615_ltbkc.png
- Component: harbor
- Page ID: 314638711
- Original Title: Devops-镜像晋级报错unauthorized，昨天还可以-112693
