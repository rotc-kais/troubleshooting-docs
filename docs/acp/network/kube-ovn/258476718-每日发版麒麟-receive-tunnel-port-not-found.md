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

# 每日发版麒麟 receive tunnel port not found

kube-ovn-pinger 起不来 访问 api-server 不通 ovs-vswitchd.log 出现 'receive tunnel port not found' 错误

## Cause
- 纯 IPv6 环境不支持 alive VIP
- 麒麟内核问题导致 datapath 未更新

## Resolution
- 手动删掉管理网卡上的 alive VIP
- 重启 ovs-ovn

## [workaround]

## [Related Information]
**Screenshots**
![](assets/mei-ri-fa-ban-qi-lin-receive-tunnel-port-not-found/image-2025-1-16_10-21-47.png)
![](assets/mei-ri-fa-ban-qi-lin-receive-tunnel-port-not-found/image-2025-1-16_10-52-6.png)
![](assets/mei-ri-fa-ban-qi-lin-receive-tunnel-port-not-found/image-2025-1-16_10-51-44.png)
![](assets/mei-ri-fa-ban-qi-lin-receive-tunnel-port-not-found/image-2025-1-16_11-2-27.png)
![](assets/mei-ri-fa-ban-qi-lin-receive-tunnel-port-not-found/image-2025-1-16_13-30-28.png)
![](assets/mei-ri-fa-ban-qi-lin-receive-tunnel-port-not-found/image-2025-1-16_13-33-14.png)
![](assets/mei-ri-fa-ban-qi-lin-receive-tunnel-port-not-found/image-2025-1-16_11-55-17.png)
![](assets/mei-ri-fa-ban-qi-lin-receive-tunnel-port-not-found/image-2025-1-16_11-55-42.png)
![](assets/mei-ri-fa-ban-qi-lin-receive-tunnel-port-not-found/image-2025-1-16_14-19-44.png)
![](assets/mei-ri-fa-ban-qi-lin-receive-tunnel-port-not-found/image-2025-1-16_13-55-46.png)
- Environment: 操作系统：麒麟；内核：Linux 4.19.90-52.22.v2207.ky10.x86_64；CNI 版本：1.12.26 kube-ovn overlay；环境类型：纯 IPv6
- kube-ovn-pinger
- ovs-vswitchd
- alived
- conntrack
- /etc/origin/ovn/ovn nb
- /etc/origin/ovn/ovn sb
- /etc/origin/ovn/conf.db
- Component: kube-Ovn
- Page ID: 258476718
- Original Title: 每日发版麒麟 receive tunnel port not found
