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

# 业务重启containerd，containerd起不来，pod也起不来

containerd无法启动 Pod无法创建 kubelet连接containerd异常

## Cause
- 节点缺失runc二进制文件导致containerd启动失败

## Resolution
- 从正常节点复制runc命令到故障节点

## [workaround]

## [Related Information]
**Screenshots**
![](assets/rong-qi-ping-tai-yuan-sheng-zu-jian-kubernetes-dockerdeng-yuan-sheng-zu-jian-wen/mceclip0_1755489370945_nsm8g.png)
![](assets/rong-qi-ping-tai-yuan-sheng-zu-jian-kubernetes-dockerdeng-yuan-sheng-zu-jian-wen/mceclip1_1755489737133_51abg.png)
![](assets/rong-qi-ping-tai-yuan-sheng-zu-jian-kubernetes-dockerdeng-yuan-sheng-zu-jian-wen/mceclip2_1755496045342_u4lrk.png)
![](assets/rong-qi-ping-tai-yuan-sheng-zu-jian-kubernetes-dockerdeng-yuan-sheng-zu-jian-wen/mceclip5_1755496085089_rapgk.png)
- Environment: 3.16.2
- runc
- containerd.sock
- /var/lib/containerd
- kubelet日志
- containerd日志
- Component: containerd
- Page ID: 333316772
- Original Title: 容器平台-原生组件-Kubernetes，Docker等原生组件问题-业务重启containerd，containerd起不来，pod也起不来-115405
