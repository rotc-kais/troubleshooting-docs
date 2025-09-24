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

# 外网通过kubeconfig访问内网下k8s集群

Unable to connect to the server: x509: certificate is valid for 10.96.0.1, 192.168.0.x, not x.x.x.x

## Cause
- kube-apiserver证书未包含外网IP导致x509校验失败

## Resolution
- 备份/etc/kubernetes配置
- 删除旧证书：rm -rf /etc/kubernetes/pki/apiserver.*
- 生成新证书并添加外网IP到subjectAltName
- openssl genrsa -out apiserver.key 2048
- openssl req -new -key apiserver.key -subj "/CN=kube-apiserver," -out apiserver.csr
- 创建包含外网IP的apiserver.ext文件
- openssl x509 -req -in apiserver.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out apiserver.crt -days 3650 -extfile apiserver.ext
- 更新证书后重启kube-apiserver
- kubeadm alpha certs renew admin.conf
- 更新kubeconfig的server地址为公网IP

## [workaround]

## [Related Information]
- Environment: 公有云部署的Kubernetes集群，使用私网IP(192.168.x.x)部署
- kube-apiserver
- /etc/kubernetes/pki/apiserver.*
- admin.conf
- ~/.kube/config
- extraSANS
- subjectAltName
- Component: Kubernetes
- Page ID: 140824967
- Original Title: 外网通过kubeconfig访问内网下k8s集群
