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

# fork/exec: cannot allocate memory

kube-ovn-cni Probe 失败，日志超时 错误日志：'ovs-vsctl --timeout=30 --if-exists del-br br-external' 失败，报错 'fork/exec: cannot allocate memory' docker 日志中 'runc' 和 'docker-init' 同样报错

## Cause
- 宿主机进程/线程数达到上限，由两个容器应用进程（各两万多个线程）导致线程泄漏

## Resolution
- 终止或重启问题容器
- 修复应用代码中的线程泄漏问题

## [workaround]

## [Related Information]
**Screenshots**
![](assets/fork-exec-cannot-allocate-memory/image2022-5-16_16-40-15.png)
- Environment: CNI 版本：kube-ovn v1.7.3
- ovs-vsctl
- runc
- docker-init
- kube-ovn-cni
- br-external
- Component: Docker
- Page ID: 115517464
- Original Title: fork/exec: cannot allocate memory
