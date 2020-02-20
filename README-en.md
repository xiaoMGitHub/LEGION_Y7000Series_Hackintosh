## Introduction

[中文版](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/README.md)|[English](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/README-en.md)

Our purpose is to allow Lenovo Y7000/Y530/Y540 laptop to run mac OS mojave as natively as possible

Tips: Y7000/Y530/Y540 does not have whitelist upon WLAN hardware, you even do not need to modify your BIOS

## Releases
The latest version is v3.0.1 and can be downloaded on the [release page](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh_Clover/releases).

## What do you need
- Lenovo Legion Y7000/Y530/Y540 Series Notebook
- Mojave disk image is prepared, nomally .dmg file, 10.15.1 version has been tested
- USB storage (at least 16 Gigabyte)
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

## After the installation is complete
```
sudo sh -c "$(curl -fsSL https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Script/Optimize.sh)"
```

## About tipping

If you approve my work, please suppoort me to keep updating via tipping

| Wechat pay                                                       | Alipay                                               |
| ---------------------------------------------------------- | ---------------------------------------------------- |
| ![image](https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Screenshot/%E5%BE%AE%E4%BF%A1160.jpg) | ![image](https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Screenshot/%E6%94%AF%E4%BB%98%E5%AE%9D160.jpg) |


