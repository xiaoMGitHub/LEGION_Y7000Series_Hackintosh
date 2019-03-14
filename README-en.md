## Introduction (Welcome to our QQ (tencent chatting program) group：285680890)

[中文版](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/README.md)|[English](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/README-en.md)

Our purpose is to allow Lenovo Y7000/Y530 laptop to run mac OS mojave as natively as possible

Tips: Y7000/Y530 does not have whitelist upon WLAN hardware, you even do not need to modify your BIOS

## What do you need
- Lenovo Legion Y7000/Y530 Series Notebook
- Mojave disk image is prepared, nomally .dmg file, 10.14.2 version has been tested
- USB storage (at least 8 Gigabyte)
- Broadcom BCM94352z WLAN PCIE card (AKA: DW1560)

## BIOS Configration
- Boot mode: UEFI
- security boot should be disabled
- Storage mode: AHCI

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
- Touchpad

## Disabled devices
- HDMI, HDMI port is connected with disabled NVIDIA DGPU

## About how to use alc_fix
- Execute "install双击自动安装.command"
- This command is used to solve audio problem, if system can not shift ouput automatically as 3.5mm headphone has been plugged in, or the sound effect is rumble

## About tipping

If you approve my work, please suppoort me to keep updating via tipping

| Wechat pay                                                       | Alipay                                               |
| ---------------------------------------------------------- | ---------------------------------------------------- |
| ![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E5%BE%AE%E4%BF%A1160.jpg) | ![image](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/screenshot/%E6%94%AF%E4%BB%98%E5%AE%9D160.jpg) |


