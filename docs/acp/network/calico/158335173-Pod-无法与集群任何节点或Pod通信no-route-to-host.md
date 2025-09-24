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

# Pod 无法与集群任何节点或Pod通信：no route to host

Pod 无法与集群任何节点或Pod通信，出现 no route to host 错误 Pod 中的 neighbor 状态为 FAILED 在 pod netns 中抓包只有 ARP 请求没有响应

## Cause
- veth peer 不匹配导致网络通信失败

## Resolution
- 清理 ALB 相关资源
- 重启所有故障节点

## [workaround]

## [Related Information]
**Screenshots**
![](assets/pod-wu-fa-yu-ji-qun-ren-he-jie-dian-huo-podtong-xin-no-route-to-host/image-2023-8-14_15-36-13.png)
![](assets/pod-wu-fa-yu-ji-qun-ren-he-jie-dian-huo-podtong-xin-no-route-to-host/image-2023-8-14_15-41-42.png)
![](assets/pod-wu-fa-yu-ji-qun-ren-he-jie-dian-huo-podtong-xin-no-route-to-host/image-2023-8-14_15-47-9.png)
![](assets/pod-wu-fa-yu-ji-qun-ren-he-jie-dian-huo-podtong-xin-no-route-to-host/image-2023-8-14_15-45-38.png)
- Environment: centos 7.9, calico v3.16, ACP v3.6
- etcd service
- calico v3.16
- veth 设备
- neigh.default.gc_thresh
- ip -t mon link all-nsid
- Component: Calico
- Page ID: 158335173
- Original Title: Pod 无法与集群任何节点或Pod通信：no route to host
