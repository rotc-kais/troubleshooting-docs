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

# Container Network Disconnected After VM Reboot, Calico

calico-node Pod stuck at 0/1 status Container network disconnection Kernel-related errors in calico-node logs

## Cause
- VM unexpected reboot affecting IaaS layer dependencies
- Corrupted calico-node container image

## Resolution
- systemctl stop kubelet
- docker rm -f <container_id>
- docker rmi <image_id>
- systemctl start kubelet
- kubectl get pods -n kube-system | grep calico-node

## [workaround]

## [Related Information]
- Environment: Kubernetes cluster with Calico CNI
- calico-node
- kubelet
- docker
- kube-system namespace
- /var/log/messages
- dmesg
- journalctl
- Component: Calico
- Page ID: 268535299
- Original Title: Container Network Disconnected After VM Reboot, Calico-node Stuck at 0/1
