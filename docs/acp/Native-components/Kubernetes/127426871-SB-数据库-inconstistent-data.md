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

# SB 数据库 inconstistent data

ovsdb error: inconsistent data ovsdb-tool compact error: syntax "["set",[]]": syntax error: set must have 1 to 4294967295 members but 0 are present

## Cause
- Multicast_Group.ports contains empty set ["set",[]] which violates schema's min:1 constraint
- nb_cfg value regression from 141073 to 141069 in SB_Global table

## Resolution

## [workaround]

## [Related Information]
- Multicast_Group.ports
- SB_Global.nb_cfg
- ovn-northd
- /var/run/ovn/ovnsb_db.ctl
- ovsdb-tool cluster-to-standalone
- ovsdb-tool compact
- Component: Kubernetes
- Page ID: 127426871
- Original Title: SB 数据库 inconstistent data
