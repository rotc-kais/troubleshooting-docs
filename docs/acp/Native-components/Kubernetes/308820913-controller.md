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

# controller

controller-manager频繁重启 Pod处于CrashLoopBackOff状态 OOM（内存不足）错误日志

## Cause
- controller-manager内存资源不足

## Resolution
- 增加controller-manager Pod内存限制
- 调整controller-manager启动参数优化内存使用
- 持续监控运行状态

## [workaround]

## [Related Information]
**Screenshots**
![](assets/ji-chu-jia-gou-controller-managerchu-xian-yi-chang-110731-zh/mceclip0_1750068509551_9rdik.png)
![](assets/ji-chu-jia-gou-controller-managerchu-xian-yi-chang-110731-zh/mceclip1_1750068520026_m49hs.png)
![](assets/ji-chu-jia-gou-controller-managerchu-xian-yi-chang-110731-zh/mceclip2_1750068529781_dbla4.png)
![](assets/ji-chu-jia-gou-controller-managerchu-xian-yi-chang-110731-zh/mceclip3_1750068549696_k40uc.png)
![](assets/ji-chu-jia-gou-controller-managerchu-xian-yi-chang-110731-zh/mceclip4_1750068562515_27c0o.png)
![](assets/ji-chu-jia-gou-controller-managerchu-xian-yi-chang-110731-zh/mceclip5_1750068587319_ljg2c.png)
![](assets/ji-chu-jia-gou-controller-managerchu-xian-yi-chang-110731-zh/mceclip6_1750068621231_f5afc.png)
![](assets/ji-chu-jia-gou-controller-managerchu-xian-yi-chang-110731-zh/1750039457_99781_83ebde_%25E5%25BE%25AE%25E4%25BF%25A1%25E6%2588%25AA%25E5%259B%25BE_20250616100252_1.png)
- Environment: Kubernetes v3.18.1
- kube-controller-manager
- Pod资源限制配置
- CrashLoopBackOff
- OOMKilled
- Component: Kubernetes
- Page ID: 308820913
- Original Title: 基础架构-controller-manager出现异常-110731-zh
