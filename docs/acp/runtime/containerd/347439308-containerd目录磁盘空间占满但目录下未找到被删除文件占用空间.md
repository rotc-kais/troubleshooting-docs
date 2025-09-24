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

# containerd目录磁盘空间占满，但目录下未找到被删除文件占用空间

containerd目录磁盘空间占满但未找到被删除文件 已退出的容器占用空间 业务Pod存在大量文件生成/删除动作

## Cause
- 已退出的容器未清理占用存储空间
- 业务Pod挂载主机目录导致大量文件操作

## Resolution
- 清理已退出的容器: crictl ps -a |grep -iv running
- 优化业务Pod文件操作逻辑

## [workaround]
- 定期执行容器清理: crictl rm <容器ID>

## [Related Information]
**Screenshots**
![](assets/rong-qi-ping-tai-containerdmu-lu-ci-pan-kong-jian-zhan-man-dan-mu-lu-xia-wei-zha/1758077824_99781_fad50b_%25E6%259F%25A5%25E7%259C%258B%25E6%2596%2587%25E4%25BB%25B6%25E5%258D%25A0%25E7%2594%25A8%25E5%258F%258A%25E7%25A3%2581%25E7%259B%2598%25E5%258D%25A0%25E7%2594%25A8.png)![](assets/rong-qi-ping-tai-containerdmu-lu-ci-pan-kong-jian-zhan-man-dan-mu-lu-xia-wei-zha/1758077824_99781_4d793e_lsof%25E6%2589%25BE%25E4%25B8%258D%25E5%2588%25B0%25E5%2588%25A0%25E9%2599%25A4%25E6%2596%2587%25E4%25BB%25B6.png)
![](assets/rong-qi-ping-tai-containerdmu-lu-ci-pan-kong-jian-zhan-man-dan-mu-lu-xia-wei-zha/mceclip1_1758094638307_586fc.png)
![](assets/rong-qi-ping-tai-containerdmu-lu-ci-pan-kong-jian-zhan-man-dan-mu-lu-xia-wei-zha/mceclip2_1758094778921_muebg.png)
![](assets/rong-qi-ping-tai-containerdmu-lu-ci-pan-kong-jian-zhan-man-dan-mu-lu-xia-wei-zha/mceclip0_1758106476071_9irhg.png)
![](assets/rong-qi-ping-tai-containerdmu-lu-ci-pan-kong-jian-zhan-man-dan-mu-lu-xia-wei-zha/mceclip0_1758108300136_ghiqs.png)
- Environment: 3.14.2
- crictl ps -a |grep -iv running
- containerd目录
- 业务Pod主机目录挂载配置
- Component: containerd
- Page ID: 347439308
- Original Title: 容器平台-containerd目录磁盘空间占满，但目录下未找到被删除文件占用空间-117895
