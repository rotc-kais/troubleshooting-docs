---
title: "calico-node felix 进程消耗大量 CPU
---

# calico-node felix 进程消耗大量 CPU

环境信息
----

操作系统：

内核：

Kubernetes 版本：

CNI 版本：calico v3.16

其他信息：ACP v3.6

问题现象
----

calico-node felix 进程持续占用 ~1000% CPU。重建 calico-node 后依然如此。

排查步骤
----

找到一个 calico 的 issue：[https://github.com/projectcalico/calico/issues/4129](https://github.com/projectcalico/calico/issues/4129)

用户自己对这个进程进行了 pprof 分析，与 issue 中的分析相同，均为 gc 消耗：

![](../images/image-2023-08-09-13-12-47-677.png)

  

解决方法
----

根据 issue 对应的 PR，对 calico-node 进行 hotfix。

优化措施
----

文档：

测试：

自动化检测：

代码变更：