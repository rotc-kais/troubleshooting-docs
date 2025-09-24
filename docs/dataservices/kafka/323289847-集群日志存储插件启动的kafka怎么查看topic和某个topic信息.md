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

# 集群日志存储插件启动的kafka怎么查看topic和某个topic信息

执行kafka-topics.sh命令时报错缺少tools-log4j.properties文件 使用NodePort服务时无法查看Kafka topic信息 从其他Kafka复制tools-log4j.properties文件后仍报错

## Cause
- kafka容器内缺少tools-log4j.properties文件
- client.properties配置未正确替换用户名和密码
- 从非当前集群镜像复制的配置文件导致不兼容

## Resolution
- 从当前集群cpaas-kafka镜像内拷贝tools-log4j.properties文件到容器：
docker run --rm -d --name temp_kafka_copy xxxxxxxx tail -f /dev/null
docker cp temp_kafka_copy:/opt/kafka/config/tools-log4j.properties .
docker stop temp_kafka_copy
- 确保client.properties中username/password字段已正确配置
- 手动创建tools-log4j.properties文件并放置到/opt/kafka/config目录

## [workaround]
- 每次容器重启后需重新创建tools-log4j.properties文件
- 4.0+版本已内置该文件但需自行维护client.properties

## [Related Information]
**Screenshots**
![](assets/ji-chu-jia-gou-yun-wei-zhong-xin-ri-zhi-shi-jian-shen-ji-ji-qun-ri-zhi-cun-chu-c/1753324185_99781_598a6e_ee-45ac-98b9-de26e006f0be%257D_1.png)
![](assets/ji-chu-jia-gou-yun-wei-zhong-xin-ri-zhi-shi-jian-shen-ji-ji-qun-ri-zhi-cun-chu-c/mceclip0_1753342296225_qtcse.png)
- Environment: 3.18.0-alpha.513版本集群，4.0+版本已添加tools-log4j.properties文件
- client.properties
- tools-log4j.properties
- kafka-topics.sh
- cpaas-kafka
- /opt/kafka/config
- Component: kafka
- Page ID: 323289847
- Original Title: 基础架构-运维中心-日志事件审计-集群日志存储插件启动的kafka怎么查看topic和某个topic信息-113638
