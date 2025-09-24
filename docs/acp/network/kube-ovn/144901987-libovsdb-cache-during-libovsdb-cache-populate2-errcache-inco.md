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

# libovsdb/cache: during libovsdb cache populate2 err=cache inconsistent

Pod 无法访问集群外网络 kube-ovn-controller 日志报错 'failed to get port group ovn.default.192.168.143.17: object not found' libovsdb 日志报错 'cache inconsistent: row with uuid ... does not exist'

## Cause
- libovsdb 缓存与 OVN_Northbound 数据库出现不一致
- kube-ovn-controller 的 libovsdb 客户端连接到非 leader 节点
- NB 数据库集群存在频繁切换现象

## Resolution
- 执行 kubectl -n kube-system rollout restart deploy kube-ovn-controller
- 检查并确保 OVN_Northbound 数据库集群稳定性

## [workaround]
- 在 libovsdb 重连时删除已有缓存 (参考 https://github.com/kubeovn/kube-ovn/pull/2627)

## [Related Information]
- Environment: Kube-OVN v1.9
- 6641
- /var/run/ovn/ovnnb_db.ctl
- kube-ovn-controller
- OVN_Northbound
- port_group ovn.default.192.168.143.17
- external_ids.np="ovn-default/192.168.143.17"
- Component: kube-ovn
- Page ID: 144901987
- Original Title: libovsdb/cache: during libovsdb cache populate2 err=cache inconsistent
