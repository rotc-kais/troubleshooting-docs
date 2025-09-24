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

# 流水线更新应用失败，报错label和selector不匹配

流水线更新应用失败，报错`spec.template.metadata.labels`与`selector`不匹配 报错信息显示BUILD_ID标签值与当前应用存在不一致

## Cause
- 流水线记录被删除导致BUILD_ID版本号不连续
- 当前应用BUILD_ID(3)大于流水线携带的BUILD_ID(3)

## Resolution
- 删除应用所有BUILD_ID标签
- 更新应用配置后重新执行流水线

## [workaround]

## [Related Information]
- Environment: 2.6.x
- Deployment
- spec.template.metadata.labels
- spec.selector.matchLabels
- BUILD_ID
- JOB_BASE_NAME
- Component: 流水线
- Page ID: 115536846
- Original Title: 流水线更新应用失败，报错label和selector不匹配
