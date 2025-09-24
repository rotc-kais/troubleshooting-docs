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

# Platform deployment using an external image registry

--- ---

## Cause

## Resolution
- cd installer 
bash "res/upload.sh" "all"  "${REGISTRY}" "${USERNAME}" "${PASSWORD}"
bash "res/upload.sh" "necessary"   "${REGISTRY}" "${USERNAME}" "${PASSWORD}"
- bash setup.sh --registry   "${REGISTRY}"   --username  "${USERNAME}"    --password "${PASSWORD}"

## [workaround]

## [Related Information]
- Environment: platform version v4.0.2+
- REGISTRY
- USERNAME
- PASSWORD
- upload.sh
- setup.sh
- --registry
- --username
- --password
- installer/res/upload.sh
- Component: (待归类)
- Page ID: 280100934
- Original Title: Platform deployment using an external image registry
