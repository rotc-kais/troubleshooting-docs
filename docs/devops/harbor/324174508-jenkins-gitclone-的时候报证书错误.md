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

# jenkins gitclone 的时候报证书错误

git clone 时出现证书错误 添加 http.sslVerify=false 参数未生效

## Cause
- nexus 证书颁发域名与实际使用域名不匹配
- 构建节点未正确信任 CA 证书

## Resolution
- 创建包含 CA 证书的构建节点镜像：FROM [原镜像] COPY server.cer /
- 执行证书导入命令：keytool -import -trustcacerts -alias intermediate -file server.cer -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit
- 重新标记并推送镜像到仓库
- 使用新镜像创建自定义构建节点

## [workaround]
- 临时改用 http 协议访问 nexus

## [Related Information]
**Screenshots**
![](assets/devops-jenkins-gitclone-de-shi-hou-bao-zheng-shu-cuo-wu-113611/1753262022_99781_c2f41b_213-430c-b78f-30954080cd2c.png)
- Environment: 4.0.3
- $JAVA_HOME/jre/lib/security/cacerts
- nexus 域名配置
- server.cer 证书文件
- Component: Harbor
- Page ID: 324174508
- Original Title: Devops-jenkins gitclone 的时候报证书错误-113611
