## 概述
由于8代处理器的 y7000/y7000p/y530 的BIOS设置不兼容升级10.15.x，所以需要进入BIOS高级模式对相关设置进行修改，感谢[965987400abc](https://github.com/965987400abc)提供的BIOS修改方案。

## 进入BIOS高级模式（适用于任何版本的BIOS）
- 在 win/macOS/关机状态 中同时按 FN + o + d （国外机友反馈只需要按 FN + o，自行测试）
- 重启后即可进入BIOS高级设置模式

## 升级 10.15.x 需要修改BIOS设置
- Advanced > Debug settings > Kernel Debug Serial Port 修改为 Leagacy UART

## 开启I2C触控板GPIO中断模式（只适用于8代处理器的机子）
- Advanced > PCH-IO Configuration >  Security Configuration >  Force unlock on all GPIO pads 修改为 Enabled
- 打开 SSDT-I2C.aml 文件，找到 _INI 方法，修改如下：
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
