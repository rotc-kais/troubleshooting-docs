# ACP / Storage / Ceph — 故障诊断

!!! warning "常见场景"
    - IO 延迟高 / OSD Flapping
    - PG 卡住 / 读写报错
    - Mon 选主异常

## 快速排查  ```bash
ceph -s
ceph osd tree
ceph health detail
```

## 诊断路径（示例）
1. 硬盘与网络延迟 → iostat / nic stats
2. 负载与副本/EC 策略 → 调整/限速
3. 版本与已知缺陷核对
