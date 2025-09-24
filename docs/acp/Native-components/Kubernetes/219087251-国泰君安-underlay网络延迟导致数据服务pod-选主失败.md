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

# 国泰君安 underlay网络延迟导致数据服务pod 选主失败

跨节点pod间访问超时 数据服务pod选主失败

## Cause
- underlay物理网卡到pod段网络丢包
- 交换机未正确过滤vlan流量

## Resolution
- 交换机配置仅允许vlan 1601报文通过

## [workaround]

## [Related Information]
**Screenshots**
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_10-0-52.png)
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_9-50-25.png)
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_9-59-24.png)
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_9-53-10.png)
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_9-56-8.png)
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_9-56-26.png)
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_9-56-36.png)
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_10-2-56.png)
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_10-2-27.png)
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_10-5-49.png)
![](assets/guo-tai-jun-an-underlaywang-luo-yan-chi-dao-zhi-shu-ju-fu-wu-pod-xuan-zhu-shi-ba/image-2024-7-1_10-2-36.png)
- Environment: CNI: kube-ovn v1.11.15, ACP 3.14.2
- kube-ovn
- br-provider
- ovs-vswitchd
- vlan 1601
- em2物理网卡
- Component: Kubernetes
- Page ID: 219087251
- Original Title: 国泰君安 underlay网络延迟导致数据服务pod 选主失败
