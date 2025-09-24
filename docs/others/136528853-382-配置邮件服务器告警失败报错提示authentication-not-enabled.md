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

# 3.8.2 配置邮件服务器告警失败报错提示authentication not enabled

authentication not enabled

## Cause
- 邮件服务器允许匿名登录，但配置了smtpd_sasl_auth_enable = yes参数强制要求认证

## Resolution
- 修改Postfix配置，参考https://serverfault.com/questions/712903/503-5-5-1-error-authentication-not-enabled-when-trying-to-connect-to-my-postf配置smtpd_sasl_auth_enable等参数

## [workaround]

## [Related Information]
- Environment: 3.8.2
- smtpd_sasl_auth_enable
- Postfix
- Component: (待归类)
- Page ID: 136528853
- Original Title: 3.8.2 配置邮件服务器告警失败报错提示authentication not enabled
