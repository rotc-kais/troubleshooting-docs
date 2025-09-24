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

# API方式导入维保合约、license许可

无法切换域名至备集群，备集群无其他访问方式

## Cause

## Resolution
- 使用 kubectl get cc cc-global -o jsonpath='{.token}' 获取 API token
- 通过 curl 调用 /lic/v2/licenses 接口，设置 x-license-kind: license 或 enterprise-support
- 许可证示例：curl 'https://平台地址/lic/v2/licenses' -H 'authorization: Bearer <token>' -H 'x-license-kind: license' -H 'x-license-password: <密码>' --data-raw '许可内容' --insecure
- 维保合约示例：curl 'https://平台地址/lic/v2/licenses' -H 'authorization: Bearer <token>' -H 'x-license-kind: enterprise-support' -H 'x-license-password: <密码>' --data-raw '合约内容' --insecure

## [workaround]

## [Related Information]
- Environment: 3.12
- /lic/v2/licenses
- kubectl
- curl
- x-license-kind
- x-license-password
- Bearer token
- Component: (待归类)
- Page ID: 264799643
- Original Title: API方式导入维保合约、license许可
