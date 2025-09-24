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

# 有状态副本集的pod无法正常启动，报错FailedCreatePodSandBox

overlay sts pod 创建失败 ping 网关失败，arp 无法获取

## Cause
- kube-ovn-controller 更新 logical_switch_port 时未保留 vendor/ls 字段
- commit 3552db38497ee97838b4c737ea515d2c218c422d 引入缺陷

## Resolution
- 应用修复补丁 https://github.com/kubeovn/kube-ovn/pull/3776

## [workaround]

## [Related Information]
**Screenshots**
,![WeChatWorkScreenshot_fab849a4-f866-4d59-9b6c-4031622b61c2.png](assets/you-zhuang-tai-fu-ben-ji-de-podwu-fa-zheng-chang-qi-dong-bao-cuo-failedcreatepod/WeChatWorkScreenshot_fab849a4-f866-4d59-9b6c-4031622b61c2_1.png)
![](https://private-user-images.githubusercontent.com/47097611/308457450-d134c972-5ea0-4a57-8931-40f43a4e74dd.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDk1MTk4OTAsIm5iZiI6MTcwOTUxOTU5MCwicGF0aCI6Ii80NzA5NzYxMS8zMDg0NTc0NTAtZDEzNGM5NzItNWVhMC00YTU3LTg5MzEtNDBmNDNhNGU3NGRkLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAzMDQlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMzA0VDAyMzMxMFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWNkYzE2ZTk0YWU3Y2Y3NjhlZGFjMTQ0YjcwMTRmN2FlOWM5N2NkNzgwODE0MzI2YmM3OTU1Nzc3OWM5M2IyZGEmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.o1uxK7eTFkHkuPrBaOyvu5bWn7RcdeIZe7wKKu1siGA)
- Environment: CNI 版本：kubeovn:v1.12.6
- kube-ovn-controller
- logical_switch_port
- external_ids.vendor
- external_ids.ls
- kubectl ko trace
- Component: kube-ovn
- Page ID: 194052488
- Original Title: 有状态副本集的pod无法正常启动，报错FailedCreatePodSandBox
