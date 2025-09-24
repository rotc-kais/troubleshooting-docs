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

# asm对接VictoriaMetrics没有监控数据

asm对接VictoriaMetrics没有监控数据

## Cause
- VictoriaMetrics的maxLabelsPerTimeseries参数默认值30小于istio metrics的37个label需求

## Resolution
- 设置VictoriaMetrics运行参数--maxLabelsPerTimeseries=50

## [workaround]

## [Related Information]
- Environment: 3.8.1
- VictoriaMetrics
- asm
- istio
- maxLabelsPerTimeseries
- Component: (待归类)
- Page ID: 124693530
- Original Title: asm对接VictoriaMetrics没有监控数据
