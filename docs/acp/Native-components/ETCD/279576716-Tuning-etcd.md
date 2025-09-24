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

# Tuning etcd

--- ---

## Cause

## Resolution
- Run etcd on an SSD disk
- Use a dedicated disk for etcd
- Avoid running compute workloads on control nodes
- Configure etcd’s disk priority with `ionice` on Linux: `sudo ionice -c2 -n0 -p `pgrep etcd``
- Adjust Election Timeout and Heartbeat Interval values with cluster-wide consistency: `--heartbeat-interval=500` and `--election-timeout==2500`
- Reconfigure after cluster upgrade
- Modify `/etc/kubernetes/manifests/etcd.yaml` on all masters for automatic restart

## [workaround]

## [Related Information]
- Environment: Linux
- /etc/kubernetes/manifests/etcd.yaml
- --heartbeat-interval
- --election-timeout
- ionice
- etcd
- control nodes
- SSD disk
- Component: ETCD
- Page ID: 279576716
- Original Title: Tuning etcd
