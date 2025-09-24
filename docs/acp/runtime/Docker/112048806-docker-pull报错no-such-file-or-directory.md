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

# docker pull报错no such file or directory

docker pull失败 failed to register layer: symlink ../0c9eeb9db2435acafbdadeff98b83b00d2d0c5b6d0ef5b83f48ad0565095f5b6/diff /var/lib/docker/overlay2/1/JOW34ACQV4ADPPVK2DQPS2A7GM: no such file or directory

## Cause
- docker overlay2数据损坏或存储混乱

## Resolution
- kubectl cordon禁止节点调度
- kubectl delete节点业务应用pod
- systemctl stop docker停止服务
- 备份并清空/var/lib/docker目录
- systemctl restart docker ; systemctl restart kubelet

## [workaround]

## [Related Information]
- Environment: 通用
- overlay2
- /var/lib/docker
- kubelet
- Component: Docker
- Page ID: 112048806
- Original Title: docker pull报错no such file or directory
