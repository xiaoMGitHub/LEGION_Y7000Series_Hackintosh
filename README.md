![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/Picture/MacOS_Monterey_Beta.png)

## 概述

疑问解答加入我的QQ群：780936290

本文的目的是让 LENOVO 拯救者系列笔记本电脑尽量完美的使用上 MacOS。

注意：此系列笔记本电脑没有WiFi白名单，可以更换任意网卡，但强烈不推荐 DW1820A。

## 适用系统

MacOS Monterey 12 Beta  
MacOS Big Sur 11.x  
MacOS Catalina 10.15.x  
MacOS Mojave 10.14.x  
MacOS High Sierra 10.13.6 (17G2112)

## 适用型号

- Y7000/Y7000P/Y9000K-2018
- Y7000/Y7000P/Y9000K-2019
- Y7000/Y7000P/Y9000K-2020
- Y530/Y540/Y545/Y730/Y740
- Legion 5i/Legion 7

## 发布

最后发布的版本是 v3.0.3，前往 [Release Page](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/releases) 下载即可。

## 你需要什么
- 下载好的 MacOS 镜像（支持 macOS High Sierra (10.13.6) - macOS Big Sur 的镜像安装）
- 16GB U盘

## BIOS确保设置
- 启用UEFI启动。
- 禁用安全启动。
- SATA模式设置为AHCI。

## 正常工作的功能
- UEFI通过 Clover/OC 启动
- 支持任意版本系统OTA升级到最新系统
- 内置键盘以及数字键盘
- 原生USB3.0/USB2.0 
- AppleHDA原生音频，包括耳机
- 内置摄像头
- 原生电源管理
- 电池状态
- 背光控制
- 背光键盘
- 核显驱动（独显已经 hotpatch 屏蔽）
- 有线以太网卡
- Mac App Store正常运行
- CPU变频
- 睡眠唤醒（鼠标，键盘、电源键唤醒均正常）
- 无线网络（更换白果卡BCM94360CD）
- 蓝牙（更换白果卡BCM94360CD）
- 触控板 （全系支持全手势）
- 随航（有线/无线）
- 4K 屏幕（[教程](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/tree/master/4K_Display_Config)）
- iMessage/FaceTime

## 不能正常使用的功能
- HDMI ，因为HDMI 端口连接到已禁用的Nvidia卡

## 优化命令
```
sudo sh -c "$(curl -fsSL https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Script/Optimize.sh)"
```

## 关于捐赠

如果您认可我的工作，可以通过捐赠支持我后续的更新

| 微信                                                       | 支付宝                                               | Paypal |                                                    
| ---------------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------------- | 
| ![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/Picture/weixin160.jpg) | ![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/Picture/alipay160.jpg) | [xiaoMGitHub](https://www.paypal.me/xiaoMGitHub) | 

## 致谢

感谢 [apple](https://www.apple.com.cn/) 提供的 MacOS  
感谢 [acidanthera](https://github.com/acidanthera) 提供的绝大部分核心驱动  
感谢 [VoodooI2C](https://github.com/VoodooI2C) 提供的触控板驱动  
感谢 [chilledHamza](https://github.com/chilledHamza/) 提供的 2018 款数字键盘修改方案  
感谢 [rajiteh](https://github.com/rajiteh) 提供的 2019/2020 款数字键盘驱动方案
