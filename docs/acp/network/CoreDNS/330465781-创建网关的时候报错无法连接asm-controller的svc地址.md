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

# 创建网关的时候报错无法连接asm controller的svc地址

创建网关时报错无法连接asm controller的svc地址 容器网络空间nslookup解析asm-controller-webhook svc域名异常 kube-proxy日志存在异常且未刷新

## Cause
- kube-proxy组件异常导致无法维护Kubernetes svc路由

## Resolution
- 重启所有节点kube-proxy组件：systemctl restart kube-proxy.service
- 重新创建网关验证

## [workaround]

## [Related Information]
**Screenshots**
![](assets/rong-qi-ping-tai-wang-luo-chuang-jian-wang-guan-de-shi-hou-bao-cuo-wu-fa-lian-ji/mceclip0_1754639668474_c9u1i.png)
- Environment: 3.14.2
- kube-proxy
- coredns
- asm-controller-webhook.svc
- /var/log/kube-proxy.log
- Component: CoreDNS
- Page ID: 330465781
- Original Title: 容器平台-网络-创建网关的时候报错无法连接asm controller的svc地址-114709
