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

# Pod 无法解析 Service 域名

Pod 无法解析某个 Service 的域名，Java 报错 UnknownHostException 容器内的 /etc/resolv.conf 存在用户配置的 search 选项

## Cause
- 容器内 /etc/resolv.conf 中用户自定义的 search 配置导致域名解析异常

## Resolution
- 删除节点 /etc/resolv.conf 中的 search 配置
- 重建 Pod

## [workaround]

## [Related Information]
- /etc/resolv.conf
- search
- Service 域名解析
- Component: Kubernetes
- Page ID: 124682956
- Original Title: Pod 无法解析 Service 域名 - UnknownHostException
