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

# coredns 修改了，  alb打印日志还是旧的地址

alb日志中的upstream_addr仍为旧的nginx地址 upstream timed out (110: Operation timed out) while connecting to upstream

## Cause
- ALB组件存在DNS缓存未及时刷新
- CoreDNS修改后未触发ALB重新解析域名

## Resolution
- 重启ALB组件和CoreDNS组件Pod强制刷新缓存
- 等待DNS记录TTL过期后自动更新解析

## [workaround]
- 强制重启ALB控制器组件

## [Related Information]
- Environment: 3.16.2
- alb
- coredns
- upstream_addr
- 华为vip
- 业务nginx
- Component: alb
- Page ID: 330465881
- Original Title: 容器平台-coredns 修改了，  alb打印日志还是旧的地址-114388
