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

# Network script 的 Bond LACP 的配置

业务网卡down

## Cause
- 使用team部署bond lacp网卡触发bug

## Resolution
- 安装network-scripts: sudo yum install network-scripts
- 创建Bond主接口配置文件: /etc/sysconfig/network-scripts/ifcfg-enp4s2
- 配置从属接口: 编辑ifcfg-p4t3和ifcfg-p8t3文件
- 重启网络服务: sudo systemctl restart network 或 sudo service network restart
- 验证配置: cat /proc/net/bonding/enp4s2 和 ip addr show enp4s2

## [workaround]

## [Related Information]
- Environment: Red Hat系系统（如CentOS、RHEL）
- /etc/sysconfig/network-scripts/
- network-scripts
- NetworkManager
- BONDING_OPTS
- MASTER
- SLAVE
- enp4s2
- p4t3
- p8t3
- Component: (待归类)
- Page ID: 265652908
- Original Title: Network script 的 Bond LACP 的配置
