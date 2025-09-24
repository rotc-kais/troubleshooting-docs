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

# prometheus

prometheus targets处于down状态 server returned HTTP status 500 Internal Server Error

## Cause
- 存在closed状态的Elasticsearch索引

## Resolution
- kubectl get secret -A|grep acp-config-secret
- kubectl get secret -n cpaas-system acp-config-secret
- curl -uadmin:password http://x.x.x.x/_prometheus/metrics
- 删除错误的closed索引

## [workaround]

## [Related Information]
- Environment: 3.4
- acp-config-secret
- cpaas-system
- _prometheus/metrics
- Elasticsearch密码
- Component: Prometheus
- Page ID: 120095052
- Original Title: prometheus-es-targes-down问题
