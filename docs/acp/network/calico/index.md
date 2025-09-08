# ACP / Network / Calico — 故障诊断

!!! tip "常见场景"
    - 新节点加入后 Pod 互通失败
    - BGP 邻居不稳定/黑洞
    - IP 池耗尽/冲突

## 快速排查  ```bash
calicoctl get ippool -o wide
calicoctl node status
kubectl -n kube-system logs -l k8s-app=calico-node --tail=200
```

## 诊断路径（示例）
1. IPPool 是否耗尽/重叠 → 调整或扩容
2. BGP 邻居建立/抖动 → 对端路由/MTU/网卡 offload
3. NetworkPolicy 命中情况 → 临时禁用/放开验证


{% include "_auto_index.md" %}