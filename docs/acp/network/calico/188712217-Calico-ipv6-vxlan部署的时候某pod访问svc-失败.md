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

# Calico ipv6 vxlan部署的时候某pod访问svc 失败

跨节点的endpoint访问失败 访问跨节点后端提示no route to host vxlan路由缺失

## Cause
- 内核版本3.10.0-1127.el7.x86_64低于vxlan ipv6要求的4.19+

## Resolution
- 升级内核至4.19及以上版本

## [workaround]

## [Related Information]
**Screenshots**
![](assets/calico-ipv6-vxlanbu-shu-de-shi-hou-mou-podfang-wen-svc-shi-bai/image-2024-2-5_16-44-13.png)
![](assets/calico-ipv6-vxlanbu-shu-de-shi-hou-mou-podfang-wen-svc-shi-bai/image-2024-2-5_16-45-33.png)
![](assets/calico-ipv6-vxlanbu-shu-de-shi-hou-mou-podfang-wen-svc-shi-bai/image-2024-2-5_16-48-23.png)
- Environment: centos 3.10.0-1127.el7.x86_64 calico 3.24
- calico vxlan
- ipv6
- ipvsadm
- calico-node日志
- vxlan.calico/ipv6_vxlan_enabled
- Component: Calico
- Page ID: 188712217
- Original Title: Calico ipv6 vxlan部署的时候某pod访问svc 失败
