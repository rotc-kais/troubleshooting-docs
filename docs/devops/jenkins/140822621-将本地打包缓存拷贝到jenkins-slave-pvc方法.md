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

# 将本地打包缓存拷贝到jenkins slave pvc方法

## 环境信息 适用版本：TKE 3.4以上

## Cause

## Resolution
- 在jenkins所在名称空间创建java使用的PVC
- 在工具链集成选择jenkins实例，更新java构建节点页面添加构建缓存并选择PVC
- 创建临时流水线将maven构建命令改为sleep 1d保持pod运行
- 打包本地repository目录为demo_java.zip
- 获取java pod名称后执行：kubectl cp将数据拷贝到容器/root目录
- 通过kubectl exec进入容器解压到/root/.m2/repository
- 取消临时流水线执行
- 确认settings.xml中Local Repository路径为/root/.m2/repository

## [workaround]

## [Related Information]
**Screenshots**
![](assets/jiang-ben-di-da-bao-huan-cun-kao-bei-dao-jenkins-slave-pvcfang-fa/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_f7dafb4b-c1e7-427e-a869-dd53f99d9d22.png)
![](assets/jiang-ben-di-da-bao-huan-cun-kao-bei-dao-jenkins-slave-pvcfang-fa/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_218b1888-5c76-4fc7-8d33-ba7f020ca77f.png)
![](assets/jiang-ben-di-da-bao-huan-cun-kao-bei-dao-jenkins-slave-pvcfang-fa/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_511232d5-e30c-4383-9cfc-c06b53009178.png)
![](assets/jiang-ben-di-da-bao-huan-cun-kao-bei-dao-jenkins-slave-pvcfang-fa/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_a172602e-e1cc-4c79-87d6-f2d4e28e9b15.png)
![](assets/jiang-ben-di-da-bao-huan-cun-kao-bei-dao-jenkins-slave-pvcfang-fa/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_33d2f8d9-8688-407b-9fff-ddff53658557.png)
- Environment: TKE 3.4以上
- pvc
- jenkins
- java构建节点
- /root/.m2/repository
- settings.xml
- Component: jenkins
- Page ID: 140822621
- Original Title: 将本地打包缓存拷贝到jenkins slave pvc方法
