## 概述（欢迎加入拯救者Y7000/y530系列黑苹果QQ群：285680890）
本文的目的是让Lenovo Legion Y7000 笔记本电脑系列尽量完美的使用上Mojave

注意：此系列笔记本电脑似乎没有WiFi白名单，因此您无需进行任何BIOS修改。

## 你需要什么
- Lenovo Legion Y7000系列笔记本
- 下载好的Mojave镜像，本人用的是Mojave 14.2 的镜像
- 8GB U盘
- 博通BCM94352z 无线网卡

## BIOS确保设置
- 启用UEFI启动。
- 禁用安全启动。
- SATA模式设置为AHCI。

## 安装视频（感谢网友z的友情出演）
[联想拯救者Y7000/Y530系列黑苹果安装教程（附驱动）](https://www.bilibili.com/video/av42366930)

## 注意
- 如果水纹波花屏，可以用SwitchResX设置 Millions for colors 来解决
- 如果开机经常 panic 建议将 EFI/CLOVER/kext/other 下面的驱动转移到 /Library/Extensions 来解决

## 正常工作的功能
- UEFI通过Clover启动。
- 内置键盘（带特殊功能键，小键盘已成功驱动，感谢大狗子网友的方法提供）。
- 原生USB3 / USB2 
- AppleHDA原生音频，包括耳机。
- 内置摄像头。
- 原生电源管理。
- 电池状态。
- 背光控制（使用hotpatch打补丁实现Fn+功能键调节亮度）。
- 背光键盘。
- 核显驱动（独显已经 hotpatch 屏蔽）。
- 有线以太网卡。
- Mac App Store正常运行。
- CPU变频。
- 睡眠唤醒（鼠标，键盘、电源键唤醒均正常）。
- 无线网络（更换博通BCM94352z）。
- 蓝牙（更换博通BCM94352z）。

## 不能正常使用的功能
- HDMI ，因为HDMI 端口连接到已禁用的Nvidia卡。
- 触控板，已参考penghubinzhou的教程去驱动I2C触控板但没效果，后期继续跟进。

## 关于 alc_fix 的使用
- 进入alc_fix目录下，执行 “install双击自动安装.command” 即可
- 该程序主要是为了解决耳机插入时系统不能自动切换耳麦问题以及耳机杂音等问题

## 系统截图
### 概览
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E6%A6%82%E8%A7%88.png)
### 显示器
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E5%86%85%E5%BB%BA%E6%98%BE%E7%A4%BA%E5%99%A8.png)
### 电源按钮菜单
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E7%94%B5%E6%BA%90%E8%8F%9C%E5%8D%95.png)
### USB
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/USB.png)
### 显卡
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E6%98%BE%E5%8D%A1.png)
### 声卡
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E5%A3%B0%E5%8D%A1.png)
### 电源
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E7%94%B5%E6%BA%90.png)
### wifi
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/wifi.png)
### 蓝牙
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E8%93%9D%E7%89%99.png)

## 关于打赏

如果您认可我的工作，请通过打赏支持我后续的更新

| 微信                                                       | 支付宝                                               |
| ---------------------------------------------------------- | ---------------------------------------------------- |
| ![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E5%BE%AE%E4%BF%A1160.jpg) | ![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E6%94%AF%E4%BB%98%E5%AE%9D160.jpg) |


