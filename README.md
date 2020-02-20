![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/Picture/10.15.x.png)

## 概述

疑问解答可以提 [issues](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/issues) 给我或者加入我的QQ群：1014806625（提供包括但不限于视频安装教程、疑难杂症解答等）

[中文版](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/README.md)|[English](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/README-en.md)

本文的目的是让LENOVO LEGION Y7000/Y7000P-2018、Y7000/Y7000P-2019、Y530、Y540 系列笔记本电脑尽量完美的使用上 MacOS

注意：此系列笔记本电脑没有WiFi白名单。

## 发布

最后发布的版本是 v3.0.2，前往 [Release Page](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/releases) 下载即可。

## 你需要什么
- 下载好的 MacOS Catalna 镜像，本人用的是Catalna 10.15.2 的镜像
- 16GB U盘
- 8代处理安装 10.15.x 需要设置BIOS高级模式：[传送门](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup_Instructions.md)

## BIOS确保设置
- 启用UEFI启动。
- 禁用安全启动。
- SATA模式设置为AHCI。

## 正常工作的功能
- UEFI通过 Clover/OC 启动。
- 支持任意版本系统OTA升级到最新系统。
- 内置键盘以及数字键盘。
- 原生USB3.0/USB2.0 
- AppleHDA原生音频，包括耳机。
- 内置摄像头。
- 原生电源管理。
- 电池状态。
- 背光控制。
- 背光键盘。
- 核显驱动（独显已经 hotpatch 屏蔽）。
- 有线以太网卡。
- Mac App Store正常运行。
- CPU变频。
- 睡眠唤醒（鼠标，键盘、电源键唤醒均正常）。
- 无线网络（更换白果卡BCM943602cs）。
- 蓝牙（更换白果卡BCM943602cs）。
- 触控板 (部分低配机型不支持多指操作)。
- 随航（有线/无线）。

## 不能正常使用的功能
- HDMI ，因为HDMI 端口连接到已禁用的Nvidia卡。

## 优化命令
```
sudo sh -c "$(curl -fsSL https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Script/Optimize.sh)"
```

## 关于捐赠

如果您认可我的工作，可以通过捐赠支持我后续的更新

| 微信                                                       | 支付宝                                               |
| ---------------------------------------------------------- | ---------------------------------------------------- |
| ![image](https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Screenshot/%E5%BE%AE%E4%BF%A1160.jpg) | ![image](https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Screenshot/%E6%94%AF%E4%BB%98%E5%AE%9D160.jpg) |


