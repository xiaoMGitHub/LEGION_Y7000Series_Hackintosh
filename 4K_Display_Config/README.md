## 概述
首先感谢群友（小云飞）提供的修改方案，让 Y7000 系列换上了4K屏幕并在黑果下面实现了完美驱动。有兴趣可以加群讨论：780936290

## 效果图
![image](./4K_01.png)
![image](./4K_02.png)
## 测试成功机型
* 2018款 y7000P 1060 144Hz 版本
* 2019款 y7000 1660ti 版本 （需更换屏线）
* 2019款 y7000P 1660ti 144Hz 版本
* 2019款 y7000P RTX2060 144Hz 版本
* 2019款 y7000 PG0 1650 版本 （需更换屏线）
* 2018款 y7000 1050/1050ti 版本（需要更换主板的屏线底座、屏线）
* 2018款 y7000P 1050ti 版本（需更换屏线）
* 2020款 y7000P 
* 2020款 y7000

## 你需要什么
* 更换一块4K屏幕

  > 参考型号： 
  * B156ZAN03.1 
  * B156ZAN03.2 （推荐，全系完美。2018款y7000需要更换屏线以及底座，屏线购买型号DC02C00FC10）
  * B156ZAN03.3 
  * B156ZAN04.2 
  * MNF601EA1-1 
  * NE156QUM-N6C （需要注入EDID解决黑屏）
  
 * 修改配置文件 config.plist （Clover 和 OC 同样适用）
 
  > 1、在配置文件中找到这一段

 ```XML
	<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
	<dict>
		<key>AAPL,ig-platform-id</key>
		<data>AACbPg==</data>
		.....
	</dict>
 ```
  > 2、修改成这样，保存即可
 ```XML
	<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
	<dict>
		<key>AAPL,ig-platform-id</key>
		<data>AACbPg==</data>
		.....
		<key>dpcd-max-link-rate</key>
		<data>FAAAAA==</data>
		<key>enable-dpcd-max-link-rate-fix</key>
		<data>AQAAAA==</data>
		<key>enable-max-pixel-clock-override</key>
		<data>AQAAAA==</data>
		<key>enable-hdmi20</key>
		<data>AQAAAA==</data>
	</dict>
  ```
