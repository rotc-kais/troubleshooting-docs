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

# 修改cgroup.memory启动项重启机器不生效

修改cgroup.memory启动项并重启后参数未生效

## Cause
- UEFI/LEGACY启动模式对应的grub配置文件路径不正确

## Resolution
- 使用对应启动模式的配置文件路径执行命令：grub2-mkconfig -o /boot/efi/EFI/centos/grub.cfg(UEFI模式) 或 grub2-mkconfig -o /boot/grub2/grub.cfg(LEGACY模式)

## [workaround]

## [Related Information]
- Environment: 3.x
- /etc/default/grub
- /boot/efi/EFI/kylin/grub.cfg
- grub2-mkconfig
- GRUB_CMDLINE_LINUX
- Component: (待归类)
- Page ID: 127418792
- Original Title: 修改cgroup.memory启动项重启机器不生效
