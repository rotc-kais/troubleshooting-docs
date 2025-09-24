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

# Physical Machine Node Migration/Failover Solution in Russia

VIP configuration conflicts after node migration Registry synchronization failures during migration Pods not running normally after VIP removal

## Cause
- Old VIP not completely removed from original master nodes
- Incorrect IP substitution in HAProxy configuration files
- Incomplete synchronization of MinIO registry data
- Missing node labels on newly added master nodes

## Resolution
- Execute `ip addr del` to remove old VIP and verify removal with `ip a`
- Validate sed replacements in /etc/haproxy/haproxy.cfg
- Complete mirror synchronization using `mc --insecure mirror`
- Apply required labels via `kubectl label` after node addition

## [workaround]
- Temporary VIP assignment on tmp-global-vip node using `ip addr add`
- Manual DNS record modification for platform access FQDN

## [Related Information]
- Environment: Kubernetes v3.16.2 deployment with HAProxy, MinIO v3.16.7, CentOS/Ubuntu nodes, self-managed VIPs
- 6443
- 80
- 443
- /etc/haproxy/haproxy.cfg
- /etc/kubernetes/manifests/keepalived.yaml
- MINIO_ROOT_USER
- MINIO_ROOT_PASSWORD
- kube-ovn/role label
- Component: Node
- Page ID: 272237475
- Original Title: Physical Machine Node Migration/Failover Solution in Russia
