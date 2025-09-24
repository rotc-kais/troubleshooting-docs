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

# kafka所在主机断电重启后kafak异常

KafkaServer启动失败，日志显示Cluster ID不一致：The Cluster ID sIyk8bdDT-GPGIV_ntLbmA doesn't match stored clusterId Some(-iiClE5uQh-OWW1e1HFh9w) in meta.properties

## Cause
- Zookeeper未使用持久化存储，断电重启后生成新元数据，而Kafka使用持久化存储保留了旧元数据，导致元数据不一致

## Resolution
- 删除所有Kafka实例的meta.properties文件：rm -f /var/lib/kubelet/pods/.../mount/kafka-log0/meta.properties
- 重启所有Kafka实例：kubectl delete pod demo-kafka-kafka-0 demo-kafka-kafka-1 demo-kafka-kafka-2 -n demo-db --force

## [workaround]

## [Related Information]
- Environment: 3.4.x, 3.6.x
- meta.properties
- zookeeper.connect
- Kafka
- Zookeeper
- topolvm
- Component: Kubernetes
- Page ID: 127433189
- Original Title: 数据服务-kafka-kafka所在主机断电重启后kafak异常
