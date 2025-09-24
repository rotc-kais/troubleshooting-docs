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

# Troubleshooting upgrade

Job 'upgrade-health-check-xxxx' in 'kube-system' namespace did not complete in 15s Timeout error in pod logs: '[ERROR CreateJob]: Job "upgrade-health-check-xxxx" in the namespace "kube-system" did not complete in 15s .....' Job eventually completes successfully after timeout

## Cause
- 15-second timeout insufficient for health check job completion in slow-response clusters

## Resolution
- Edit 'kube-node-upgrade-scripts' ConfigMap in 'cpaas-system' namespace: add 'CreateJob' to '--ignore-preflight-errors' parameter
- Edit 'kube-node-upgrade-scripts' ConfigMap in 'kube-system' namespace: add 'CreateJob' to '--ignore-preflight-errors' parameter
- Delete 'upgrade-xxx' pod in 'kube-system' namespace to trigger new pod creation

## [workaround]

## [Related Information]
- Environment: Kubernetes 3.18.x and later
- upgrade-health-check
- kube-node-upgrade-scripts
- --ignore-preflight-errors
- cpaas-system
- kube-system
- Component: Kubernetes
- Page ID: 273351918
- Original Title: Troubleshooting upgrade-health-check Job Timeouts
