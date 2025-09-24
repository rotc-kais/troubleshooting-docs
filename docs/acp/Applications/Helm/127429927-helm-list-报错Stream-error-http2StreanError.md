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

# helm list 报错:Stream error http2.StreanError

Error: UPGRADE FAILED: Stream error http2.StreanError (StreamlD:0x15,Code:0x2,Cause:error(nil)} when reading response body, may be caused by closed connection

## Cause
- 请求返回的数据太多导致

## Resolution
- 减少返回数据量（如使用 helm list --max 或 --filter 参数限制结果数量）

## [workaround]

## [Related Information]
- Environment: 通用
- helm list
- --max
- --filter
- Component: Helm
- Page ID: 127429927
- Original Title: helm list 报错:Stream error http2.StreanError
