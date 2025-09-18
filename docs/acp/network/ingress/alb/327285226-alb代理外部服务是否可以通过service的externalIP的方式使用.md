---kind:   - Troubleshootingproducts:    - Alauda Container Platform   - Alauda DevOps   - Alauda AI   - Alauda Application Services   - Alauda Service Mesh   - Alauda Developer PortalProductsVersion:   - 4.1.0,4.2.x---<!-- A type of document that involves encountering a fault, diag...it, performing root cause analysis, and providing solutions. --># alb代理外部服务，是否可以通过service的externalIP的方式使用JIRA Jira：## Cause## Resolution- 创建externalIP类型Service: kubectl apply -f - <<EOF
apiVersion: v1
kind: Service
metadata:
  name: external-ip-svc
spec:
  externalIPs:
  - 1.2.3.4
  ports:
  - port: 80
    targetPort: 80
EOF- 在Ingress配置路径转发到该Service- 或创建externalName类型Service: kubectl apply -f - <<EOF
apiVersion: v1
kind: Service
metadata:
  name: external-dns-svc
spec:
  type: ExternalName
  externalName: external.service.com
EOF## [workaround]## [Related Information]- Environment: 4.0.3- Service- externalIPs- externalName- Ingress- Component: alb- Page ID: 327285226- Original Title: 容器平台-网络-ALB-alb代理外部服务，是否可以通过service的externalIP的方式使用-114025