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

# 用tekton执行maven失败，本地maven成功

[ERROR] Failed to execute goal org.apache.maven.plugins:maven-install-plugin:2.5.2:install (default-install) on project zfs-plugin: Failed to install metadata cn.zfs.prj:zfs-plugin/maven-metadata.xml: Could not parse metadata /root/.m2/repository/cn/zfs/prj/zfs-plugin/maven-metadata-local.xml: in epilog non whitespace content is not allowed but got t (position: END_TAG seen ...t... @13:2)

## Cause
- maven-metadata-local.xml文件存在损坏或格式错误

## Resolution
- 删除PVC中的/workspace/cache/repository/cn/zfs/prj/zfs-plugin/maven-metadata-local.xml文件后重新执行

## [workaround]

## [Related Information]
**Screenshots**
![](assets/devops-gong-ju-lian-jenkins-yong-tektonzhi-xing-mavenshi-bai-ben-di-mavencheng-g/1753945916_99781_5fe6f2_%25E5%25BE%25AE%25E4%25BF%25A1%25E5%259B%25BE%25E7%2589%2587_20250731151036_213_1.png)![](assets/devops-gong-ju-lian-jenkins-yong-tektonzhi-xing-mavenshi-bai-ben-di-mavencheng-g/1753945917_99781_c44b9d_%25E5%25BE%25AE%25E4%25BF%25A1%25E5%259B%25BE%25E7%2589%2587_20250731151042_220_1.png)
- Environment: 3.16.1
- /workspace/cache/repository/cn/zfs/prj/zfs-plugin/maven-metadata-local.xml
- maven-install-plugin
- PVC持久化存储
- Component: tekton
- Page ID: 326795301
- Original Title: Devops-工具链-Jenkins-用tekton执行maven失败，本地maven成功-114184
