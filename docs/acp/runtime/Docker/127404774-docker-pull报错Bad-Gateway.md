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

# docker pull报错Bad Gateway

docker pull报错Bad Gateway 仅当前节点存在故障 网络连通性正常（ping/telnet成功）

## Cause
- docker配置存在http proxy

## Resolution
- 删除/etc/systemd/system/docker.service.d/docker-proxy.service.conf文件
- 执行systemctl daemon-reload
- 执行systemctl restart docker

## [workaround]

## [Related Information]
- Environment: 通用
- /etc/systemd/system/docker.service.d/docker-proxy.service.conf
- docker.service
- docker info
- http proxy
- Component: Docker
- Page ID: 127404774
- Original Title: docker pull报错Bad Gateway
