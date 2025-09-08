# ACP / Storage / NFS — 故障诊断

## 快速排查  ```bash
showmount -e <nfs-server>
mount -t nfs -o vers=4.1 <server>:/path /mnt/test
dmesg | tail -n 200
```

## 诊断路径（示例）
1. 服务端导出/权限/锁
2. 客户端挂载参数（vers、rsize/wsize、hard/soft、timeo）
3. 网络丢包/超时/MTU
