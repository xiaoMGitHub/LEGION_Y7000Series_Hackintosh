## Introduction (Welcome to our QQ (tencent chatting program) group：285680890)
Our purpose is to allow Lenovo Y7000 laptop to run mac OS mojave as natively as possible

Tips: Y7000 does not have whitelist upon WLAN hardware, you even do not need to modify your BIOS

## What do you need
- Lenovo Legion Y7000 Series Notebook
- Mojave disk image is prepared, nomally .dmg file, 10.14.2 version has been tested
- USB storage (at least 8 Gigabyte)
- Broadcom BCM94352z WLAN PCIE card (AKA: DW1560)

## BIOS Configration
- Boot mode: UEFI
- security boot should be disabled
- Storage mode: AHCI

## Tutorial Video（Thanks for netizen "Z"）
[Lenovo Legion Y7000/Y530 series hackintosh guide (attached with kext)](https://www.bilibili.com/video/av42366930)

## Attention
- if Dashboard is blurred as gadgets are added, It can be solved by using SwitchResX to set Millions for colors
- If panic always occured as system boots, try to move the kext files in EFI/CLOVER/kext/other to /Library/Extensions 

## Full Compatibility
- Boot clover with UEFI mode
- Built-in keyboard (Function key and Num keyboard works well, Thanks for tech support from netizen "Dagouzi")
- native USB3 / USB2 ports 
- AppleHDA native audio, Speakers + Internal Mic + Headphone
- Built in Camera
- Native power management
- Battery Status (Percentage can be displayed)
- Brightness control (can be adjusted by function key with hotpatch)
- Backlit keyboard
- INTEL iGPU (DGPU has been disabled by hotpatch)
- Ethernet port
- Mac App Store works normally
- CPU SpeedStep
- Sleep + Wake (Waked by mouse, keyboard, and power button)
- Wireless LAN (Broadcom BCM94352z)
- Bluetooth (Broadcom BCM94352z)

## Disabled devices
- HDMI, HDMI port is connected with disabled NVIDIA DGPU
- Touchpad, we will keep updating this function. Currently, even though we try to follow penghubinzhou's guide to make i2c touchpad work, it doesn't work

## About how to use alc_fix
- Execute "install双击自动安装.command"
- This command is used to solve audio problem, if system can not shift ouput automatically as 3.5mm headphone has been plugged in, or the sound effect is rumble

## System Screen Shot
### System Info
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E6%A6%82%E8%A7%88.png)
### Displays
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E5%86%85%E5%BB%BA%E6%98%BE%E7%A4%BA%E5%99%A8.png)
### Power menu
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E7%94%B5%E6%BA%90%E8%8F%9C%E5%8D%95.png)
### USB ports
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/USB.png)
### Graphics
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E6%98%BE%E5%8D%A1.png)
### Audio
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E5%A3%B0%E5%8D%A1.png)
### Power
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E7%94%B5%E6%BA%90.png)
### wifi
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/wifi.png)
### Bluetooth
![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E8%93%9D%E7%89%99.png)

## About tipping

If you approve my work, please suppoort me to keep updating via tipping

| Wechat pay                                                       | Alipay                                               |
| ---------------------------------------------------------- | ---------------------------------------------------- |
| ![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E5%BE%AE%E4%BF%A1160.jpg) | ![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E6%94%AF%E4%BB%98%E5%AE%9D160.jpg) |


