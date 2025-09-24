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

# ovsdb 异常导致的ovn组件pod不正常(ovndb数据库恢复)

ovs组件总是无法正常工作，长期保持重启或0/1 not ready状态 northd ha集群始终不稳定 底层不稳定导致上层网络不稳定及不可用

## Cause
- 磁盘被用户用完等情况导致网络状态未及时同步到ovsdb(nb, sb)
- 重启pod时数据库无法正常同步和启动

## Resolution
- 确定基准node，将ovn组件的replica number置0
- 在基准node执行：docker run -it -v /etc/origin/openvswitch:/etc/openvswitch kubeovn/kube-ovn:v1.3.0 bash
- 根据ovn版本进入对应目录后执行：ovsdb-tool cluster-to-standalone ovnnb_db_standalone.db ovnnb_db.db 和 ovsdb-tool cluster-to-standalone ovnsb_db_standalone.db ovnsb_db.db
- 将恢复后的ovndb(nb/sb)复制到每个node
- 恢复ovn组件replica

## [workaround]
- 执行网络重置（不需要恢复网络状态时）

## [Related Information]
- Environment: Kubernetes环境使用Kube-OVN v1.3.0，OVN版本1.3或1.7+
- ovsdb
- ovnnb_db
- ovnsb_db
- northd
- /etc/origin/openvswitch
- /etc/origin/ovn
- ovsdb-tool
- kubeovn/kube-ovn:v1.3.0
- Component: kube-Ovn
- Page ID: 94872746
- Original Title: ovsdb 异常导致的ovn组件pod不正常(ovndb数据库恢复)
