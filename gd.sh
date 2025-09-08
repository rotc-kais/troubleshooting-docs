#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"

info() { printf "\033[32m[OK]\033[0m %s\n" "$*"; }
skip() { printf "\033[33m[SKIP]\033[0m %s\n" "$*"; }

mkfile() {
  local path="$1"
  shift
  local content="$*"
  local dir
  dir="$(dirname "$path")"
  mkdir -p "$ROOT/$dir"
  if [[ -f "$ROOT/$path" ]]; then
    skip "$path 已存在，跳过"
  else
    printf "%s" "$content" > "$ROOT/$path"
    info "创建 $path"
  fi
}

# ---------- 首页 ----------
mkfile docs/index.md "\
# Overview

这里是 **故障诊断指南** 的首页。导航按**产品模块**组织，建议每篇卡片遵循“**症状 → 诊断 → 恢复 → 预防**”结构。

- 写作规范：3~5 步给出**最短诊断链路**，恢复步骤**幂等可回滚**，提供**验证点**
- 贡献方式：点击右上角 **Edit this page** 直接在仓库中修改

> 提示：文中可复用公共片段（见 \`docs/_snippets\`），新卡片可从模板开始（见 \`docs/_templates\`）。
"

# ---------- 通用模板 & 片段 ----------
mkfile docs/_templates/incident_template.md "\
---
title: \"<在此填写故障标题>\"
module: \"<acp|ait|middleware|ai|devops|others>\"
area: \"<network|storage|...>\"
severity: \"P1|P2|P3|P4\"
audience: [\"SRE\", \"一线工程师\", \"开发\"]
tags: [\"关键词1\", \"关键词2\"]
updated: \"<YYYY-MM-DD>\"
---

> **目的**：以最短路径恢复服务，并提供可执行的改进项。

## 1. 症状与影响
- 现象：
- 影响范围：  - 触发背景（变更/流量/演练）：

## 2. 立即处置（Runbook）
1. 快速止血：
   \`\`\`bash
   # 示例：切换 VIP / 回滚变更 / 提升副本数
   \`\`\`
2. 风险广播与降噪：

## 3. 诊断路径（最短链路）
- 是/否判定树（3~5 步）
- 关键命令（可直接复制；附示例输出）
- 证据采集（日志/事件/指标/抓包）

{% include \"_snippets/collect_basic.md\" %}

## 4. 根因与证据
- 根因候选：
- 强证据（日志/指标/事件/变更）：

## 5. 恢复与验证
- 恢复步骤（幂等/可回滚）：
- 验证点与回归项：

## 6. 预防改进
- 配置/架构/容量/流程：
- 监控/告警/演练建议：

## 附录
- 参考链接：
- 相关工单/变更编号：
"

mkfile docs/_snippets/collect_basic.md "\
### 常用采集片段（拷贝即用）

\`\`\`bash
# 节点健康
kubectl get nodes -owide
kubectl describe node \"\$(kubectl get node -o name | head -n1)\"

# 关键组件状态
kubectl -n kube-system get pods
kubectl -n kube-system describe po <pod>

# 事件与告警
kubectl get events --sort-by=.metadata.creationTimestamp | tail -n 50

# 系统层面
dmesg | tail -n 100
journalctl -xe --no-pager | tail -n 200
\`\`\`
"

# ---------- ACP ----------
mkfile docs/acp/index.md "\
# ACP / Container Platform — Overview

本目录收录 **容器平台（ACP）** 相关的故障诊断：网络、存储等。
"

# ACP / Network
mkfile docs/acp/network/index.md "\
# ACP / Network — Overview

聚焦 CNI、Service/LB、VIP、IPVS 等网络层问题。
编写建议：按**现象分类**（如“Pod 互通失败”“Service 无法访问”“VIP 抖动”）列卡片。
"
mkfile docs/acp/network/calico.md "\
# ACP / Network / Calico — 故障诊断

!!! tip \"常见场景\"
    - 新节点加入后 Pod 互通失败
    - BGP 邻居不稳定/黑洞
    - IP 池耗尽/冲突

## 快速排查  \`\`\`bash
calicoctl get ippool -o wide
calicoctl node status
kubectl -n kube-system logs -l k8s-app=calico-node --tail=200
\`\`\`

## 诊断路径（示例）
1. IPPool 是否耗尽/重叠 → 调整或扩容
2. BGP 邻居建立/抖动 → 对端路由/MTU/网卡 offload
3. NetworkPolicy 命中情况 → 临时禁用/放开验证

{% include \"_snippets/collect_basic.md\" %}
"
mkfile docs/acp/network/kube-ovn.md "\
# ACP / Network / Kube-OVN — 故障诊断

!!! tip \"常见场景\"
    - Pod DNS 解析失败
    - Overlay/Underlay 路由异常
    - OVS/OVN 组件不健康

## 快速排查  \`\`\`bash
kubectl -n kube-system get pod -l app=kube-ovn-controller -owide
kubectl -n kube-system logs -l app=kube-ovn-cni --tail=200
ovn-nbctl show
\`\`\`

## 诊断路径（示例）
1. 组件健康（controller/cni/speaker）
2. OVS/OVN 流表与路由
3. MTU/隧道/多路径路由冲突
"

# ACP / Storage
mkfile docs/acp/storage/index.md "\
# ACP / Storage — Overview

聚焦 CSI、PV、性能与可用性问题。建议按**存储系统**（Ceph/NFS…）分卡片。
"
mkfile docs/acp/storage/ceph.md "\
# ACP / Storage / Ceph — 故障诊断

!!! warning \"常见场景\"
    - IO 延迟高 / OSD Flapping
    - PG 卡住 / 读写报错
    - Mon 选主异常

## 快速排查  \`\`\`bash
ceph -s
ceph osd tree
ceph health detail
\`\`\`

## 诊断路径（示例）
1. 硬盘与网络延迟 → iostat / nic stats
2. 负载与副本/EC 策略 → 调整/限速
3. 版本与已知缺陷核对
"
mkfile docs/acp/storage/nfs.md "\
# ACP / Storage / NFS — 故障诊断

## 快速排查  \`\`\`bash
showmount -e <nfs-server>
mount -t nfs -o vers=4.1 <server>:/path /mnt/test
dmesg | tail -n 200
\`\`\`

## 诊断路径（示例）
1. 服务端导出/权限/锁
2. 客户端挂载参数（vers、rsize/wsize、hard/soft、timeo）
3. 网络丢包/超时/MTU
"

# ---------- 其他一级模块 ----------
mkfile docs/ait/index.md "\
# AIT / Infrastructure — Overview

记录 **基础设施**（计算/网络/存储/虚拟化/裸金属）相关的故障诊断。
"

mkfile docs/middleware/index.md "\
# Middleware / Data Service — Overview

记录 **中间件/数据服务**（如 PostgreSQL、Redis、Kafka、ES 等）相关的故障诊断与运行手册。
"

mkfile docs/ai/index.md "\
# AI — Overview

记录 **AI 平台/模型服务/向量库/特征存储** 等相关故障诊断与运维建议。
"

mkfile docs/devops/index.md "\
# DevOps — Overview

记录 **CI/CD、制品、流水线、GitOps、观测** 相关的故障诊断与最佳实践。
"

mkfile docs/others/index.md "\
# Others — Overview

放置不便归类或跨域的故障诊断与经验沉淀。
"

# ---------- 给出 nav 片段方便对齐 ----------
mkfile mkdocs.nav.partial.yml "\
# 复制到 mkdocs.yml 的 nav 下即可  nav:
  - Overview: index.md
  - ACP:
    - Overview: acp/index.md
    - Network:
      - Overview: acp/network/index.md
      - Calico: acp/network/calico.md
      - Kube-OVN: acp/network/kube-ovn.md
    - Storage:
      - Overview: acp/storage/index.md
      - Ceph: acp/storage/ceph.md
      - NFS: acp/storage/nfs.md
  - AIT: ait/index.md
  - Middleware: middleware/index.md
  - AI: ai/index.md
  - DevOps: devops/index.md
  - Others: others/index.md
"

info "全部完成。请确保 mkdocs.yml 已包含以上 nav 结构，并启用 'pymdownx.snippets' 扩展以支持 {% include %}。"

