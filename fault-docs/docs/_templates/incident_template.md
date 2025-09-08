---
title: "<在此填写故障标题>"
module: "<platform|networking|storage|registry|compute|security|monitoring|logging|gitops>"
severity: "P1|P2|P3|P4"
audience: ["SRE", "一线工程师", "开发"]
tags: ["关键词1", "关键词2"]
updated: "<YYYY-MM-DD>"
---

> **目的**：以最短路径恢复服务，并提供可执行的改进项。

## 1. 症状与影响
- 现象：
- 影响范围：  - 触发背景（变更/流量/演练）：

## 2. 立即处置（Runbook）
1. 快速止血：
   ```bash
   # 例：切换 VIP / 扩容副本 / 退回变更  风险广播与降噪：

3. 诊断路径（最短链路）
是/否判定树（3~5 步）

关键命令（可直接复制；附示例输出）

证据采集（日志/事件/指标/抓包）

{% include "_snippets/collect_basic.md" %}

4. 根因与证据
根因候选：

强证据（日志/指标/事件/变更）：

5. 恢复与验证
恢复步骤（幂等/可回滚）：

验证点与回归项：

6. 预防改进
配置/架构/容量/流程：

监控/告警/演练建议：
