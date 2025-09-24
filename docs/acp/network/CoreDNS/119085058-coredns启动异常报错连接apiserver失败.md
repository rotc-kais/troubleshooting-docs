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

# coredns启动异常报错连接apiserver失败

coredns启动失败，报错连接apiserver超时 在coredns网络空间中通过svc和ep连接apiserver失败 容器内无法ping通节点IP，抓包显示对端未收到包

## Cause
- iaas层网络限制，仅允许TCP协议，禁止ICMP和UDP

## Resolution
- 联系iaas层管理员放开所有内部网络权限，允许所有协议

## [workaround]

## [Related Information]
**Screenshots**
![screenshot-2.png](https://jira.alauda.cn/secure/attachment/115846/screenshot-2.png)
- Environment: 3.4.2版本，tilnux，网络限制环境
- apiserver的svc和ep
- 节点IP
- coredns网络命名空间
- iptables
- firewalld
- ICMP/UDP协议
- Component: CoreDNS
- Page ID: 119085058
- Original Title: coredns启动异常报错连接apiserver失败
