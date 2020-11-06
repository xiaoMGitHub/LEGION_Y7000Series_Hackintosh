LEGION Y7000Series Hackintosh Changelog
========================================
-  想提前体验最新EFI可以选择加入QQ群组[付费群，拒绝用爱发电] ：1014806625(已满)、216384299(新群)
-  EFI 3.0.3尚未提供下载，可以前往下载 [3.0.2版本](https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/releases/tag/v3.0.2)
- 本EFI支持以下机型：
  * 2018款 Y7000/Y7000P 以及国际版 Y530 全系列机型
  * 2019款 Y7000/Y7000P 以及国际版 Y540/Y545 全系列机型
  * 2020款 Y7000/Y7000P 以及国际版 Legion 5i 全系列机型
  * 2020款 Y9000K 以及国际版 Legion 7 全系列机型
- 本人提供的EFI如果没有特别注明，默认适用于 10.13.6 - 10.15.6

#### v3.0.3
- 11月06日更新内容：
  * 更新 [ALCPlugFix](https://github.com/black-dragon74/ALCPlugFix-Swift) 
- 10月17日更新内容：
  * 部分ELAN061B型号触控板支持多指手势
- 10月16日更新内容：
  * 常规更新基于OC 0.6.2 制作的EFI
  * 常规更新基于Clover 5124制作的EFI
  * OC引导支持 big sur beta 10
  * 移除部分过时的热补丁，再次精简
- 9月26号更新内容：
  * 解决独显屏蔽后耗电问题
- 9月8号更新内容：
  * OC更新 0.6.1 版本
  * 所有相关驱动更新
  * 尝试解决部分机器睡眠唤醒重启问题
  * 初步尝试从休眠中唤醒
- 9月4号更新内容：
  * 完美支持 Big Sur Beta6
- 8月30号更新内容：
  * 一键修改BIOS高级设置脚本提供英文版本
- 8月20号更新内容：
  * 完美支持 Big Sur Beta5
- 8月16号更新内容：
  * 完美支持 Big Sur Beta4/Public Beta1
- 8月4号更新内容：
  * OC更新 0.6.0 版本
  * Clover更新 5120 版本
  * 初步适配 macOS Big Sur
- 6月10号更新内容：
  * OC支持0.5.9
  * 新增2020款y7000/y7000P/y9000k支持
  * 新增国际版legion 5i/legion 7支持 
- 5月5号更新内容：
  * 优化一键修改BIOS高级设置脚本
  * OC 支持0.5.8
- 4月19号更新内容：
  * 增加一键修改BIOS高级设置脚本，全系适用
  * 解决大部分问题

#### v3.0.2
  * 更新 OpenCore 0.5.7 支持
  * 精简 Clover 配置文件无效的配置参数
  * 添加 OC 原生主题支持
  * 所有驱动更新到最新版本
  * 完美支持 10.15.4 更新
  * ~~更新 OpenCore 0.5.6 支持~~
  * ~~提供 OpenCore [GUI](https://github.com/n-d-k/NdkBootPicker) 支持，定制拯救者开机主题~~
  * 更换键盘驱动，解决大小写切换延迟
  * Clover 更新版本为 v5104
  * ~~更新 OpenCore 0.5.4 支持~~
  * 优化 OpenCore 引导热补丁
  * OpenCore 引导支持原生NVRAM
  * 八代处理器的机子触控板提供 GPIO 中断模式支持
  * 精简无用配置
