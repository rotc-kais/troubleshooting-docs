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

# maven构建报错缺少maven

maven-help-plugin:3.5.1依赖解析失败 maven-plugin-tools-generators:3.13.1未找到 jsoup:1.17.2未找到

## Cause
- nexus仓库缺少maven-help-plugin及其依赖项
- 本地仓库存在缓存失败记录未更新

## Resolution
- 上传缺失的maven-help-plugin 3.5.1及其依赖到nexus仓库
- 改用java构建阶段模板并配置正确settings.xml

## [workaround]

## [Related Information]
- Environment: 通用
- maven-help-plugin:3.5.1
- maven-plugin-tools-generators:3.13.1
- jsoup:1.17.2
- maven-reporting-api:4.0.0
- http://10.4.2.100:31110/repository/maven-public/
- mvn help:evaluate -Dexpression=project.version -q -DforceStdout
- Component: jenkins
- Page ID: 342670847
- Original Title: Devops-maven构建报错缺少maven-help插件问题
