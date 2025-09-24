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

# VictoriaMetrics重装部署失败

cannot parse configuration file: error (11): invalid group "general" in file "/etc/vmalert/config/vm-alert-rulefiles-0/sf-express-namespace-testcomp.yaml": invalid rule "general"."workload.pod.container.cpu.utilization-jir03-27fcdf11ecb944babbfc75ddd9db103d": expression can't be empty

## Cause
- 存在处于告警状态的监控告警策略导致配置文件无效

## Resolution
- 关闭已触发的告警策略后重启vmalert-alert组件

## [workaround]

## [Related Information]
**Screenshots**
![image-2022-06-13-11-29-21-590.png](https://jira.alauda.cn/secure/attachment/114606/image-2022-06-13-11-29-21-590.png)
- Environment: VictoriaMetrics 3.8.x
- /etc/vmalert/config/vm-alert-rulefiles-0/<namespace name>-<告警策略名称>.yaml
- vmalert-alert
- Component: (待归类)
- Page ID: 120095291
- Original Title: VictoriaMetrics重装部署失败
