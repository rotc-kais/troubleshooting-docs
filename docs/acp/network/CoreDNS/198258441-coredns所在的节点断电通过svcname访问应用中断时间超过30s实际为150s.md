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

# coredns所在的节点断电，通过svcname访问应用中断时间超过30s，实际为150s

通过svcname访问应用中断时间约150秒 pod的DNS请求流量在ep切换后仍被DNAT到已断电的coredns节点

## Cause
- ovn-northd的northd_probe_interval参数默认设置为180000ms（180秒），导致节点断电后连接释放延迟

## Resolution
- 修改ovn-northd的northd_probe_interval参数为5000ms，加速探测与连接释放

## [workaround]

## [Related Information]
**Screenshots**
![](assets/corednssuo-zai-de-jie-dian-duan-dian-tong-guo-svcnamefang-wen-ying-yong-zhong-du/174705_image-2024-03-27-16-24-41-983_1.png)
![](assets/corednssuo-zai-de-jie-dian-duan-dian-tong-guo-svcnamefang-wen-ying-yong-zhong-du/174794_image-2024-03-28-13-13-32-906_1.png)
![](assets/corednssuo-zai-de-jie-dian-duan-dian-tong-guo-svcnamefang-wen-ying-yong-zhong-du/174702_image-2024-03-27-16-19-48-875_1.png)
![](assets/corednssuo-zai-de-jie-dian-duan-dian-tong-guo-svcnamefang-wen-ying-yong-zhong-du/image-2024-3-29_16-11-50.png)
![](assets/corednssuo-zai-de-jie-dian-duan-dian-tong-guo-svcnamefang-wen-ying-yong-zhong-du/image-2024-3-29_16-20-20.png)
- Environment: CNI版本: kube-ovn v1.12.8
- coredns
- kube-ovn
- ovn-nb
- ovn-sb
- ovn-northd
- northd_probe_interval
- Component: CoreDNS
- Page ID: 198258441
- Original Title: coredns所在的节点断电，通过svcname访问应用中断时间超过30s，实际为150s
