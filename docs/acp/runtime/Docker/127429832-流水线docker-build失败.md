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

# 流水线docker build失败

Error response from daemon: Dockerfile parse error line 1: unknown instruction: TEST

## Cause
- Dockerfile 填写有误，首行包含未知指令 TEST

## Resolution
- 修正 Dockerfile 中的错误指令，将 TEST 改为有效指令（如 FROM）

## [workaround]

## [Related Information]
**Screenshots**
![](assets/liu-shui-xian-docker-buildshi-bai/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_c172e2f5-a914-4010-a0a0-bcf3155f3fcb_1661242436804_j1tvo.png)
![](assets/liu-shui-xian-docker-buildshi-bai/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_b07c4bcb-75ea-44b2-a46c-2a58e045ea96_1661242431148_34ng8.png)
- Environment: TKE 3.4.2 以上
- Dockerfile
- Component: Docker
- Page ID: 127429832
- Original Title: 流水线docker build失败
