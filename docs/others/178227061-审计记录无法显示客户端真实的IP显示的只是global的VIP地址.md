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

# 审计记录，无法显示客户端真实的IP，显示的只是global的VIP地址

审计记录无法显示客户端真实IP，显示为global的VIP地址

## Cause
- haproxy配置采用tcp模式，未启用IP透传机制

## Resolution
- 将frontend和backend的mode从tcp改为http
- 在backend段添加option forwardfor配置
- 重新编译haproxy支持ssl（make TARGET=linux31 USE_OPENSSL=1 ADDLIB=-lz）
- 配置ssl证书（bind *:443 ssl crt /opt/dex.pem）
- 修改后端server转发模式为ssl（server s0 192.168.39.201:443 check ssl verify none）

## [workaround]

## [Related Information]
- Environment: 自建软负载环境（haproxy+keepalived），paas平台后端对接kubernetes集群，使用tcp模式监听导致IP透传失效
- haproxy.cfg
- frontend cpaas_frontend_80
- backend cpaas_80
- mode http
- option forwardfor
- ssl crt /opt/dex.pem
- 端口80/443
- keepalived
- X-Forwarded-For
- Component: (待归类)
- Page ID: 178227061
- Original Title: 审计记录，无法显示客户端真实的IP，显示的只是global的VIP地址
