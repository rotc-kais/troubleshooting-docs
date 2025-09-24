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

# VictorMetrics部署失败

部署chart时拉取超时 vmagent容器未启动 加载数据时检测到重复监控数据项

## Cause
- 存在重复的PodMonitor监控项配置

## Resolution
- 备份并删除重复的podmonitor配置
- 重启vmagent容器

## [workaround]

## [Related Information]
**Screenshots**
![](https://pro-upload-center.kefutoutiao.com/tid99781/1655948129_99781_de87c7_%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_16559481253139.png?OSSAccessKeyId=bPexlr6MCcadDhfu&Expires=1687495001&Signature=o4g2UK8g%2FnLt%2BwprOE1DE3r%2FuLc%3D)
![image_1655958094123_bj4vo.png](assets/victormetricsbu-shu-shi-bai/image_1655958094123_bj4vo.png)
![image_1655958528696_ce9cg.png](assets/victormetricsbu-shu-shi-bai/image_1655958528696_ce9cg.png)
![image_1655958583862_69sig.png](assets/victormetricsbu-shu-shi-bai/image_1655958583862_69sig.png)
![image_1655958642760_rtji8.png](assets/victormetricsbu-shu-shi-bai/image_1655958642760_rtji8.png)
![image_1655958652491_5jttg.png](assets/victormetricsbu-shu-shi-bai/image_1655958652491_5jttg.png)
![image_1655958687578_45ku8.png](assets/victormetricsbu-shu-shi-bai/image_1655958687578_45ku8.png)
![](assets/victormetricsbu-shu-shi-bai/image2022-6-23_12-40-42.png)
- Environment: 3.8
- vmagent
- PodMonitor
- sentry日志
- 监控项配置
- Component: (待归类)
- Page ID: 119080430
- Original Title: VictorMetrics部署失败
