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

# 中科宇航 underlay 环境，节点访问pod 不通

underlay网络pod访问不通，特别是节点访问本节点及跨节点pod均不通 节点192.168.140.202访问本节点及跨节点pod失败，但其他节点(201/203)跨节点访问正常 交换机转发异常导致节点bond1未捕获icmp报文

## Cause
- 交换机bond1接口网卡转发异常

## Resolution
- 关闭交换机bond0接口的其中一个网卡

## [workaround]

## [Related Information]
**Screenshots**
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-2-57.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-4-0.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-8-22.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-10-36.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-11-5.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-14-17.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-15-52.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-16-4.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-17-3.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-21-43.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-22-31.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-22-54.png)
![](assets/zhong-ke-yu-hang-underlay-huan-jing-jie-dian-fang-wen-pod-bu-tong/image-2023-9-12_16-27-12.png)
- Environment: CNI版本: kube-ovn 1.8.14 | ACP版本: 3.8.2 | underlay使用bond1网卡 | 节点IP: 192.168.140.201/202/203
- kube-ovn
- ovn-nb/sb表
- bond1
- iptables
- provider-networks
- Component: kube-Ovn
- Page ID: 163061934
- Original Title: 中科宇航 underlay 环境，节点访问pod 不通
