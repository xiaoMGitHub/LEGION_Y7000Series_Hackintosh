## 概述
首先感谢群友（小云飞）提供的修改方案，让 Y7000 系列换上了4K屏幕并在黑果下面实现了完美驱动。有兴趣可以加群讨论：1014806625

## 效果图
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/4K_Display_Config/4K_01.png)
![image](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/blob/master/4K_Display_Config/4K_02.png)
## 测试成功机型
* 2018款 y7000P 1060 144Hz 版本
* 2019款 y7000 1660ti 版本
* 2019款 y7000P 1660ti 144Hz 版本
* 2019款 y7000P RTX2060 144Hz 版本
* 2019款 y7000 PG0 1650 版本

## 你需要什么
* 更换一块4K屏幕

  > 参考型号： 
  * B156ZAN03.1 （2018款 y7000P 1060 144Hz 版本、2019款 y7000P RTX2060 144Hz 版本测试通过） 
  * B156ZAN03.2 （2019款 y7000 1660ti 版本测试通过，y7000需要更换屏线，购买型号DC02C00FC10） 
  * B156ZAN04.2 （2019款 y7000P 1660ti 144Hz 版本测试通过）
  
* 修改BIOS高级模式

  > 1、将 advance -> system agent(SA) configuration -> graphics configuration -> DVMT pre-Allocated 的数值由 32M 修改为  64M（只适用于八代处理器）
  
  > 2、至于九代处理器的机子，可以使用 setup_var 的修改方法来修改 DVMT pre-Allocated 的数值，具体参考： [教程](http://bbs.pcbeta.com/viewthread-1845189-1-2.html) ，感谢群友 @晓 的坚持不懈的折腾。
  
  > 3、目前尚未找到通过修改配置文件 config.plist 实现的方法，如果你有更好的解决方案欢迎你告知我们。
  
 * 修改配置文件 config.plist （Clover 和 OC 同样适用）
 
  > 1、在配置文件中找到这一段

 ```XML
			<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
			<dict>
				<key>AAPL,ig-platform-id</key>
				<data>AACbPg==</data>
				<key>framebuffer-fbmem</key>
				<data>AACQAA==</data>
				<key>framebuffer-patch-enable</key>
				<data>AQAAAA==</data>
				<key>framebuffer-stolenmem</key>
				<data>AAAwAQ==</data>
			</dict>
 ```
  > 2、修改成这样，保存即可
 ```XML
			<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
			<dict>
				<key>AAPL,ig-platform-id</key>
				<data>AACbPg==</data>
				<key>dpcd-max-link-rate</key>
				<data>FAAAAA==</data>
				<key>enable-dpcd-max-link-rate-fix</key>
				<data>AQAAAA==</data>
				<key>enable-hdmi20</key>
				<data>AQAAAA==</data>
			</dict>
  ```
