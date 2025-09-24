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

# gitlab push大代码处理建议

git index-pack 报错 git内存溢出

## Cause
- 要提交的代码过大

## Resolution
- git config --global http.postBuffer 524288000
- 使用 split 分割大文件后分批提交: split -b 100M path/to/large-file part_, git add part_*, commit 后 push，服务端用 cat part_* > large-file 合并

## [workaround]

## [Related Information]
- Environment: 通用
- http.postBuffer
- split
- git add
- git commit
- git push
- cat
- Component: gitlab
- Page ID: 216107912
- Original Title: gitlab push大代码处理建议
