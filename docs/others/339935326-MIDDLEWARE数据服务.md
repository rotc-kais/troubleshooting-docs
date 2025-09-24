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

# MIDDLEWARE（数据服务）

应用报错Could not connect to Redis Kafka监控显示消息堆积，消费者组延迟持续增长 MySQL主从同步延迟突然增大，Slave_IO_Running状态异常

## Cause
- Redis服务不可达（网络策略/端口限制）
- redis.conf配置requirepass与应用配置不一致
- Kafka消费者处理逻辑存在阻塞或配置session.timeout.ms过短
- MySQL主库大量写入导致binlog同步延迟
- 从库sync_binlog=1和innodb_flush_log_at_trx_commit=1配置导致IO压力

## Resolution
- 执行nc -zv <redis_host> 6379检查端口连通性
- 核对spring.redis.password与redis.conf requirepass配置
- 使用redis-cli -h <host> -a <password> PING验证认证
- 优化Kafka消费者代码逻辑，增加线程池处理能力
- 调整Kafka消费者max.poll.records=500减少单次拉取量
- 在MySQL从库设置set global sync_binlog=0和innodb_flush_log_at_trx_commit=2
- 使用pt-kill处理长时间未提交的事务

## [workaround]
- 临时放开安全组6379端口访问策略
- 通过kubectl scale deployment consumer --replicas=3快速扩容消费者
- set global sql_slave_skip_counter=1跳过错误事务（需谨慎使用）

## [Related Information]
- Environment: Kubernetes 1.20集群环境；CentOS 7.9操作系统
- 6379
- redis.conf/requirepass
- server.cnf/sync_binlog
- max.poll.records
- auto.offset.reset
- Slave_IO_Running
- pt-kill
- Component: (待归类)
- Page ID: 339935326
- Original Title: MIDDLEWARE（数据服务）
