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

# AI deployment

Error: no package found in ai-v1.3.3-hybrid.tar

## Cause
- The ai-v1.3.3-hybrid.tar is a multi-package archive requiring extraction before pushing

## Resolution
- Extract ai-v1.3.3-hybrid.tar to obtain internal packages
- Push the extracted .tgz file with command: violet push --platform-address=<address> --platform-username=<user> --platform-password=<password> --clusters=global <aml-global-xxx.tgz>

## [workaround]

## [Related Information]
- Environment: 4.0.2
- violet
- ai-v1.3.3-hybrid.tar
- aml-global-v1.3.4.all-in-one.tgz
- --clusters=global
- Component: (待归类)
- Page ID: 324174355
- Original Title: 容器平台-应用管理-OAM应用-AI deployment-1764
