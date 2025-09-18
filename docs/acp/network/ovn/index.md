# ACP / Network / Kube-OVN — 故障诊断

!!! tip "常见场景"
    - Pod DNS 解析失败
    - Overlay/Underlay 路由异常
    - OVS/OVN 组件不健康

## 快速排查  ```bash
kubectl -n kube-system get pod -l app=kube-ovn-controller -owide
kubectl -n kube-system logs -l app=kube-ovn-cni --tail=200
ovn-nbctl show
```

## 诊断路径（示例）
1. 组件健康（controller/cni/speaker）
2. OVS/OVN 流表与路由
3. MTU/隧道/多路径路由冲突
