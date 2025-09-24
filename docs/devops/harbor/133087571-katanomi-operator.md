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

# katanomi operator

持续发布制品触发器不支持HTTP 协议的 harbor

## Cause

## Resolution
- 将hotfix 镜像全部上传到11443仓库
- 安装kubectl artifact插件：docker create --entrypoint /bin/bash $(kubectl get deploy -n cpaas-system artifact-controller -o=jsonpath='{..image}') | xargs -I {} docker cp {}:/kubectl-artifact $(dirname $(which kubectl))
- 新建katanomi operator的artifactVersion资源：kubectl artifact createVersion --artifact operatorhub-katanomi-operator --tag="hotfix-sup.2212261030" --namespace cpaas-system
- 等待operatorhub同步新资源并验证pod镜像

## [workaround]

## [Related Information]
- Environment: TKE 3.10.1
- artifact-controller
- operatorhub-katanomi-operator
- 11443仓库
- cpaas-system命名空间
- Component: harbor
- Page ID: 133087571
- Original Title: katanomi operator-hotfix 192
