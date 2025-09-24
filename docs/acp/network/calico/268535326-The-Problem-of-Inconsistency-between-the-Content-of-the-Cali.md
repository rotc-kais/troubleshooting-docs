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

# The Problem of Inconsistency between the Content of the Calico

Content of /var/lib/calico/nodename file inconsistent with K8s node name

## Cause
- Mismatch between /var/lib/calico/nodename file content and actual K8s node name

## Resolution
- rm -rf /var/lib/calico/nodename
- kubectl delete pod -nkube-system podname

## [workaround]

## [Related Information]
- /var/lib/calico/nodename
- calico-node
- kube-system
- kubectl get node
- Component: Calico
- Page ID: 268535326
- Original Title: The Problem of Inconsistency between the Content of the Calico-node Node File and the K8s Node Name
