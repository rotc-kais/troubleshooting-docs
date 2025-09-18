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
<!-- A type of document that involves encountering a fault, diag...it, performing root cause analysis, and providing solutions. -->
# etcd 报错：use of closed network connectionetcd报错: use of closed network connection dial 127.0.0.1:2379 timed out ovn-central Pod在ready后变为not ready
## Cause
- drclient.service进程干扰网络通信- 系统服务与etcd的127.0.0.1:2379端口产生冲突
## Resolution
- systemctl disable --now drclient.service
## [workaround]
## [Related Information]
**Screenshots**![](assets/etcd-bao-cuo-use-of-closed-network-connection/image2023-4-4_15-17-24.png)![](assets/etcd-bao-cuo-use-of-closed-network-connection/image2023-4-4_15-13-31.png)![](assets/etcd-bao-cuo-use-of-closed-network-connection/image2023-4-4_15-14-0.png)![](assets/etcd-bao-cuo-use-of-closed-network-connection/image2023-4-4_15-15-25.png)![](assets/etcd-bao-cuo-use-of-closed-network-connection/image2023-4-4_15-16-7.png)![](assets/etcd-bao-cuo-use-of-closed-network-connection/image2023-4-4_15-18-44.png)
- Environment: Kylin v10 x86, Kube-OVN v1.7, ACP v3.6.2- etcd- Kube-OVN- drclient.service- 127.0.0.1:2379- ovn-central- Component: ETCD- Page ID: 140833388- Original Title: etcd 报错：use of closed network connection