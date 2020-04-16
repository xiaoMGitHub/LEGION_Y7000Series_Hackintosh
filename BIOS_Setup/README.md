## 升级 10.15.x 需要修改BIOS设置（只适用于8代处理器的机子，其他处理器无需设置）
- 感谢 [965987400abc](https://github.com/965987400abc) 提供的BIOS修改方案
- 在 win/macOS/关机状态 中同时按 FN + o + d （国外机友反馈只需要按 FN + o，自行测试）
- 重启后即可进入BIOS高级设置模式
- 将 Advanced > Debug settings > Kernel Debug Serial Port 修改为 Leagacy UART

## 开启I2C触控板GPIO中断模式

- 八代、九代处理器通用  
 ![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_14.png)  
 
- 使用 [MaciASL](https://github.com/acidanthera/MaciASL/releases) 工具打开 SSDT-I2C.aml 文件，找到 _INI 方法，修改如下：
  ```Swift
    Scope (_SB.PCI0.I2C1)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                OSYS = 0x07DF
                TPDM = Zero //增加这一行
            }
        }
        ....
     }
  ```
## 修改BIOS引导界面logo
- 定制自己的开机logo，[教程](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/README.md)
