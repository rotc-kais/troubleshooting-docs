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

# tekton clone 代码报错

tekton 流水线克隆代码时出现证书验证失败错误

## Cause
- gitlab 证书校验未正确关闭
- tekton 的 GIT_SSL_NO_VERIFY=true 配置未生效

## Resolution
- 在构建所在 namespace 创建 ConfigMap:
apiVersion: v1
kind: ConfigMap
metadata:
  name: build-manager-config
  namespace: cmp-dev
data:
  default-buildRun-config: |-
    git:
      options:
        preScript: "export GIT_SSL_NO_VERIFY=true"

## [workaround]
- 在 tekton task 中直接设置环境变量 GIT_SSL_NO_VERIFY=true

## [Related Information]
- Environment: 3.14.1
- build-manager-config
- GIT_SSL_NO_VERIFY
- cmp-dev
- preScript
- Component: jenkins
- Page ID: 277184574
- Original Title: Devops-tekton clone 代码报错-105757
