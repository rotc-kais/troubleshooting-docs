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

# The Problem that calico

calico-node fails to start monitoring check failure in error logs issue occurs when application pod is scheduled to a node

## Cause
- Application occupies port 9099 required by calico-node for health checks and status communication

## Resolution
- Modify application's yaml to use a different port (e.g., 9098)
- Redeploy application and verify calico-node status via `kubectl get pods -n kube-system`

## [workaround]

## [Related Information]
- Environment: Kubernetes cluster using Calico network plugin
- 9099
- calico-node
- /var/lib/calico/nodename
- kube-system
- kubectl get no
- kubectl get pods -n kube-system
- Component: Calico
- Page ID: 268535331
- Original Title: The Problem that calico-node Fails to Start due to the Application Occupying Port 9099
