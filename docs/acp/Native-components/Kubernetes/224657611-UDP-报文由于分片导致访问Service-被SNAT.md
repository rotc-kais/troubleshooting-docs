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

# UDP 报文由于分片导致访问Service 被SNAT

Pod 起不来报到达网关不通 src ip 会被snat成join网段

## Cause
- UDP 报文分片导致访问Service被SNAT

## Resolution
- 在pod ns执行 ethtool -K eth0 udp-fragmentation-offload off

## [workaround]

## [Related Information]
- Environment: centos 3.10, Kubernetes, CNI 1.11.4, ACP 3.14.2
- udp-fragmentation-offload
- eth0
- service clusterIP
- Component: Kubernetes
- Page ID: 224657611
- Original Title: UDP 报文由于分片导致访问Service 被SNAT
