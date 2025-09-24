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

# calico 部署的时候calico

calico-kube-controller启动失败 跨节点Pod通信出现no route to host错误 tunl0接口收到icmp request返回admin prohibited

## Cause
- 节点自定义iptables规则导致网络策略冲突

## Resolution
- 删除冲突的防火墙规则
- 检查并关闭相关服务的iptables规则配置

## [workaround]

## [Related Information]
**Screenshots**
![](assets/calico-bu-shu-de-shi-hou-calico-kube-controllerqi-dong-shi-bai/image-2024-2-5_16-54-18.png)
![](assets/calico-bu-shu-de-shi-hou-calico-kube-controllerqi-dong-shi-bai/image-2024-2-5_17-0-8.png)
![](assets/calico-bu-shu-de-shi-hou-calico-kube-controllerqi-dong-shi-bai/image-2024-2-5_17-1-48.png)
- Environment: CentOS系统/Calico 3.24/ACP 3.12.1
- tunl0
- ipip模式
- calico-kube-controller
- iptables
- Component: Calico
- Page ID: 188712238
- Original Title: calico 部署的时候calico-kube-controller启动失败
