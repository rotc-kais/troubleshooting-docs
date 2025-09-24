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

# 127.0.0.1 TCP 端口连接超时 / sendmsg: Invalid argument

nc 连接 127.0.0.1 的 TCP 端口超时 ping 127.0.0.1 出现 sendmsg: Invalid argument 错误

## Cause
- ARP 缓存设置不足（gc_thresh 参数过小）
- OVN 网络环境下 ARP 信息同步问题

## Resolution
- 调整 sysctl ARP 缓存参数：net.ipv4.neigh.default.gc_thresh1=1024, net.ipv4.neigh.default.gc_thresh2=2048, net.ipv4.neigh.default.gc_thresh3=4096
- IPv6 环境需调整 net.ipv6.neigh.default.gc_thresh 参数

## [workaround]

## [Related Information]
**Screenshots**
![](assets/127-0-0-1-tcp-duan-kou-lian-jie-chao-shi-sendmsg-invalid-argument/Screen%20Shot%202022-07-07%20at%2009.40.26_1.png)
- 2379
- kubelet
- docker
- OVN
- net.ipv4.neigh.default.gc_thresh1
- net.ipv4.neigh.default.gc_thresh2
- net.ipv4.neigh.default.gc_thresh3
- Component: Calico
- Page ID: 115517677
- Original Title: 127.0.0.1 TCP 端口连接超时 / sendmsg: Invalid argument
