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

# cce登录registry仓库

无法在容器内使用用户名密码登录registry仓库

## Cause
- 需要使用Harbor token代替普通凭据登录

## Resolution
- 执行curl命令获取token: curl -X POST -H 'Content-Type: application/x-www-form-urlencoded' -k "https://${CCE_HOSTNAME}/auth/realms/CCE/protocol/openid-connect/token" -d "scope=openid&client_id=cce-client&response_type=code&grant_type=password&username=${username}&password=${password}" 2>/dev/null | sed 's|.*access_token":"\([^"]*\)".*|\1|g'
- 设置环境变量: export token=<获取的token>
- 使用token登录: docker login 1.1.1.1 --dest-creds="_registrytoken:${token}"

## [workaround]

## [Related Information]
- Environment: cce
- harbor
- docker
- skopeo
- token获取脚本
- /auth/realms/CCE/protocol/openid-connect/token
- client_id=cce-client
- Component: harbor
- Page ID: 127429676
- Original Title: cce登录registry仓库
