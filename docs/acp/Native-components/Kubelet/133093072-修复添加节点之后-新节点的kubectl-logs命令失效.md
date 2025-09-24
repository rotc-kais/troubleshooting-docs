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

# 修复添加节点之后, 新节点的kubectl logs命令失效

kubectl logs等命令报证书错误无法运行

## Cause
- 新节点的kubelet配置文件未正确配置tls证书信息

## Resolution
- 修改/var/lib/kubelet/config.yaml添加tlsCertFile和tlsPrivateKeyFile配置
- 执行systemctl restart kubelet重启服务

## [workaround]

## [Related Information]
- Environment: 从3.8升级到3.10.0或3.10.1版本
- /var/lib/kubelet/config.yaml
- /etc/kubernetes/pki/kubelet.crt
- /etc/kubernetes/pki/kubelet.key
- kubelet
- Component: Kubelet
- Page ID: 133093072
- Original Title: 修复添加节点之后, 新节点的kubectl logs命令失效
