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

# pod启动报错事件信息返回ERROR: for log Cannot start service log: Ocl runtime create failed: container linux.go: 346: starting container process caused"process linux. go: 319: getting the final childs pidfrom pipe caused"EOF: unknown

ERROR: for log Cannot start service log: Ocl runtime create failed: container linux.go: 346: starting container process caused"process linux.go: 319: getting the final childs pidfrom pipe caused"EOF: unknown Unable to create nf_conn slab cache

## Cause
- 主机节点内存不足导致新pod无法启动
- cgroup的kmem account特性在3.x内核上存在内存泄漏问题

## Resolution
- 修改节点/etc/default/grub文件，在crashkernel=auto后添加cgroup.memory=nokmem
- 执行命令grub2-mkconfig -o /boot/grub2/grub.cfg
- 重启主机
- 验证/proc/cmdline中是否包含新增参数

## [workaround]

## [Related Information]
- Environment: 通用
- /etc/default/grub
- /boot/grub2/grub.cfg
- /proc/cmdline
- cgroup.memory=nokmem
- crashkernel=auto
- https://github.com/torvalds/linux/commit/d6e0b7fa11862433773d986b5f995ffdf47ce672
- Component: (待归类)
- Page ID: 120098868
- Original Title: pod启动报错事件信息返回ERROR: for log Cannot start service log: Ocl runtime create failed: container linux.go: 346: starting container process caused"process linux. go: 319: getting the final childs pidfrom pipe caused"EOF: unknown
