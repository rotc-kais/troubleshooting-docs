### 常用采集片段（拷贝即用）

```bash
# 节点健康
kubectl get nodes -owide
kubectl describe node "$(kubectl get node -o name | head -n1)"

# 关键组件状态
kubectl -n kube-system get pods
kubectl -n kube-system describe po <pod>

# 事件与告警
kubectl get events --sort-by=.metadata.creationTimestamp | tail -n 50

# 系统层面
dmesg | tail -n 100
journalctl -xe --no-pager | tail -n 200
```
