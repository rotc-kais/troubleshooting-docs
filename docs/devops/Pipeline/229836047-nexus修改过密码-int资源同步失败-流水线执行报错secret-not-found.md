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

# nexus修改过密码 int资源同步失败 流水线执行报错secret not found

流水线执行到maven阶段报错secret not found nexus日志显示401未授权错误 artifactRegistry资源状态异常

## Cause
- 修改nexus密码后integrations同步失败
- artifactRegistry使用的secret与artifactRegistryManager/artifactRegistrybinding不一致(nexus vs nexus-admin)
- clusterintegration中默认仓库缺失导致同步检查失败

## Resolution
- 删除clusterintegration资源中异常的默认仓库(maven-snapshot/maven-release/npm)
- 确保artifactRegistry使用正确的secret(nexus-admin)
- 重建artifactRegistry资源验证状态恢复

## [workaround]

## [Related Information]
**Screenshots**
![](assets/devops-liu-shui-xian-nexusxiu-gai-guo-mi-ma-intzi-yuan-tong-bu-shi-bai-liu-shui/1721898283_99781_e2c0da_nexus-5.png)
![](assets/devops-liu-shui-xian-nexusxiu-gai-guo-mi-ma-intzi-yuan-tong-bu-shi-bai-liu-shui/1721898283_99781_233129_nexus-4.png)
![](assets/devops-liu-shui-xian-nexusxiu-gai-guo-mi-ma-intzi-yuan-tong-bu-shi-bai-liu-shui/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_17223325966037.png)
![](assets/devops-liu-shui-xian-nexusxiu-gai-guo-mi-ma-intzi-yuan-tong-bu-shi-bai-liu-shui/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_1722332630105.png)
![](assets/devops-liu-shui-xian-nexusxiu-gai-guo-mi-ma-intzi-yuan-tong-bu-shi-bai-liu-shui/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_17223326567899.png)
![](assets/devops-liu-shui-xian-nexusxiu-gai-guo-mi-ma-intzi-yuan-tong-bu-shi-bai-liu-shui/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_17223328673154.png)
![](assets/devops-liu-shui-xian-nexusxiu-gai-guo-mi-ma-intzi-yuan-tong-bu-shi-bai-liu-shui/image-2024-9-13_11-10-20.png)
![](assets/devops-liu-shui-xian-nexusxiu-gai-guo-mi-ma-intzi-yuan-tong-bu-shi-bai-liu-shui/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_17223353934342.png)
![](assets/devops-liu-shui-xian-nexusxiu-gai-guo-mi-ma-intzi-yuan-tong-bu-shi-bai-liu-shui/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_17223354339556.png)
![](assets/devops-liu-shui-xian-nexusxiu-gai-guo-mi-ma-intzi-yuan-tong-bu-shi-bai-liu-shui/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_17223364723323.png)
- Environment: 3.14.1
- clusterintegration
- integration
- artifactRegistry
- artifactRegistryManager
- artifactRegistrybinding
- nexus-admin secret
- maven-snapshot
- maven-release
- npm
- Component: 流水线
- Page ID: 229836047
- Original Title: Devops-流水线-nexus修改过密码 int资源同步失败 流水线执行报错secret not found
