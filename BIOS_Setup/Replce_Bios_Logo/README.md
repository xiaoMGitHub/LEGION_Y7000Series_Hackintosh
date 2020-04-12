## 概述
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/apple_logo.jpg)  
本教材基于小新pro13的机型进行编写，感谢小新pro13群里的@小宝大佬
此教程仅限拯救者Y7000系列机型，另外因为bios的限制，修改bios后无法使用官方升级工具（未证实），必须使用fptw64工具强制刷写，因此有一定风险，如若你看完本教程处于懵逼状态，我不建议你自己修改并刷写bios，一旦刷写错误bios极有可能导致电脑无法开机或损坏，有编程器的可以重新写入正确bios，无编程器的只能送修。

## 使用到的工具
* [UEFITool](https://github.com/LongSoft/UEFITool/releases)
* [Intel CSME System Tools v12 r20](https://comsystem-tlt.ru/obzori/me-txe-region)
*[Y7000系列一键修改BIOS高级设置脚本](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/raw/master/BIOS_Setup/Y7000%E7%B3%BB%E5%88%97%E4%B8%80%E9%94%AE%E4%BF%AE%E6%94%B9BIOS%E9%AB%98%E7%BA%A7%E9%80%89%E9%A1%B9_20200412.zip)
* InsydeH2O Tools


## 备份 BIOS
用软件备份bios。总共两个版本：16M、11M两个bios文件。
其中16M的是完整的bios备份。11M的是不带ME固件的。修改开机logo使用的是11M的不带me固件的。下载文件（群里提供）之后，得到以下文件。  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_0.png)  
进入 备份bios工具WIN64 > WIN64中，然后以管理员身份执行批处理脚本，即自动备份BIOS文件。

## 修改开机 logo

### 备份 logo

打开修改软件 UEFITool  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_1.png)  
然后 File > Open image file （打开前文备份的 11mb.fd 文件）  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_2.png)  
先找到BIOS中原来的logo  
File > Search > GUID  
输入 FE4102C1-1B0C-4C92-B285-DC12F491C3A7  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_3.png)  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_4.png)   
在Raw section 右键Extract body，另存为logo_orig_1.bmp  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_5.png)   
在下一行，备份第二个logo（开机右下角的logo）

### 修改 logo

![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_6.png)   
替换完logo后保存修改后的BIOS文件为bin文件  
菜单 Flie > save image file  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_7.png)   
保存后  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_8.png)

## 解锁 BIOS （已提供已经解锁脚本）

必须解锁BIOS lock，否则用FPTW64刷不了bios 

### 方法一
打开InsydeH2OUVE文件夹，如图：  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_9.png)  
打开H2OUVE工具，点击Load runtime稍等一下会看到窗口变化（这里注意要关闭杀毒软件）win10自带的那个也要关闭。  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_10.png)   
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_11.png)   
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_12.png)   
修改完这两项之后，先重启电脑，重启之后才生效。  

### 方法二
使用一键修改BIOS高级设置脚本  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_14.png)  
选择2修改后，重启生效。

## 刷写 BIOS
将修改后的BIOS文件（AppleLogo.bin）拷贝到备份bios工具WIN64 > WIN64中  
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/BIOS_Setup/Replce_Bios_Logo/Picture/Step_13.png)     

然后以管理员身份执行批处理脚本即可进行BIOS刷写  


