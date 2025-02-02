---
title: 小米手机线刷方式刷机指南(绝对新手友好)
index_img: /img/web-黑色背景-小米手机刷机指南-加水印.png
date: 2024-11-01 09:00:00
categories: 
    - 安全冲浪
tags:
    - 小米
    - xiaomi
    - 刷机
    - flash
    - LineageOS 
---
<!-- update_date -->
> 更新时间：2024-11-01 09:00:00
<!-- update_date -->
# 简介
强烈你避开VIVO、华为、OPPO、Google（Google一直反对root的）等机型，基本刷机root和你彻底无关，因为这几个品牌已经彻底的限制用户解锁BL，限制用户刷机了，并且不是时间问题，长久不不支持，无需等待。
非澎湃系统的小米红米手机一直支持官方解锁BL（一般7天解锁），通过解锁BL后就可以刷机玩机获取root操作等，小米的解锁BL也是最神奇的，堪称完美。
以下教程以为 `MIX 3` 机型 - `MIUI 12.5.1` - `Android 10`举例。要是你目前没有旧的安卓手机，强烈建议买二手的`MI 8`，200元左右就能买个不错的二手，解BL锁还容易

# 刷机的概念
刷机是指将手机的系统ROM进行升级、更换或恢复的操作，一般分为线刷和卡刷。接下来以线刷为例子。
## 线刷
线刷通常需要使用数据线和电脑配合进行。用户需要在电脑上下载官方的固件包（ROM）和刷机工具，然后通过这些工具将固件包刷入手机。

- 风险程度： 线刷相对比较安全，因为使用的是官方固件，不容易出现兼容性问题。但是，如果操作不当，比如断电或者选择了错误的固件，可能会导致手机变砖。

- 其他特点： 线刷可以彻底清除手机中的数据，适合需要恢复出厂设置的情况。
## 卡刷
卡刷是将固件包放在手机的SD卡或者内置存储中，然后在手机上运行刷机软件进行刷写。卡刷不需要连接电脑。

- 风险程度： 卡刷可能存在一定的风险，因为第三方ROM可能不完全兼容某些机型，导致系统不稳定或者功能缺失。

- 其他特点： 卡刷相对方便，可以在没有电脑的情况下进行。但是，如果刷机过程中出现意外，比如电量耗尽或者刷机包损坏，也可能导致手机变砖。


## BL（Bootloader）
Bootloader 就像是电脑或手机启动时的第一个“助手”，它帮助电脑或手机准备好启动操作系统。想象一下，当你早上起床后，你需要先穿衣服、洗漱，然后才能开始一天的活动。Bootloader 就做类似的事情，它先检查并准备好电脑或手机的各个部分，然后才开始运行像 Windows 或 Android 这样的操作系统。简单来说，Bootloader 是一个让电脑或手机能够正常启动的程序。
解BL锁就是可以随意变更“助手”的工作流程。

## FastBoot 模式
FastBoot 是一种用于与 Android 设备进行底层通信的协议，通常用于执行刷机操作、解锁 Bootloader、刷写分区等。进入 FastBoot 模式通常涉及以下步骤：
- 如何进入：在设备电源关闭的情况下，长按 `电源`+ `声音减` ，直到屏幕上出现`MI`标志，然后松开，一般10s左右
## Recovery 模式
ecovery 模式是安卓设备上的一种特殊模式，它可以通俗地理解为手机的“急救模式”或“恢复模式”。在这个模式下，你可以执行一些维护和修复操作，类似于电脑上的安全模式。在刷机过程一般用来清除数据的。
- 如何进入：在设备电源关闭的情况下，长按 `电源`+ `声音加` ，直到屏幕上出现`MI`标志，然后松开，一般10s左右 

# 刷机准备事项
- 线刷方式刷机会清除手机数据。因此手机如果有数据，请先外置备份数据。
- 将手机充电，最好在80%以上。
- 下载[platform-tools](https://developer.android.google.cn/tools/releases/platform-tools?hl=en)，需要翻墙。包括fastboot、adb等命令。
- 下载[miflash_unlock](http://www.miui.com/unlock/index.html)，解BL锁的工具。

# 解BL锁
流程： 插入电话卡 -> 开启开发者选项 -> 绑定小米账号

## 开启开发者选项
> 注意不同的 MIUI 版本，路径不一样

设置 -> 我的设备 -> 全部参数 -> 连续点击 MIUI版本 。

## 绑定账号和设备
> 注意不同的 MIUI 版本，路径不一样

设置 -> 更多设置 -> 开发者选项。
- 开启 USB 调试
- 设备解锁状态 -> 关闭无线网开启数据网络 -> 绑定账号和设备

## 解锁
- 电脑: 解压miflash_unlock -> 双击 `miflash_unlock.exe` ->  登录绑定的小米账号。
- 手机：关机 -> 长按 `电源`+ `声音减`进入 FastBoot 模式
- 电脑：插入usb线 -> 回到miflash_unlock -> 显示 已连接到手机

![点击解锁，会清除数据，一路确认就行了](/img/web-flash-xiaomi-phone-1.png)

![完成](/img/web-flash-xiaomi-phone-2.png)

可能的错误
-  如果插入usb线没有反应，点击miflash_unlock的右上角的设置，驱动检测，完成后再重新插入usb线
- 账号解锁次数超过限制，一个小米账号30天只能解锁一次，和绑定的手机号无关
- 设备绑定时间太短，168小时后再试，这个情况只能等了，有说是下国际版的、有说下低版本的miflash_unlock、有说调整系统时间的、还有买什么破解工具的，目前都不理想了，老实的等7天吧

# 刷LineageOS
打开[官网](https://wiki.lineageos.org/devices/)。注意：一定要对好型号，否则可能会有变砖的风险
![找到对应的手机及型号](/img/web-flash-xiaomi-phone-3.png)
![下载地址和文档](/img/web-flash-xiaomi-phone-4.png)
![找到最新的版本，建议这里的文件都下载了](/img/web-flash-xiaomi-phone-5.png)

> 下面的步骤会根据不同的型号稍微有些区别，具体可以看官方文档

## 进FastBoot 模式
手机关机，长按 `电源`+ `声音减`进入 FastBoot 模式，打开 `cmd` 输入以下内容来验证 PC 是否找到它：fastboot devices，正常情况会输出一行设备信息

## 将recovery.img刷到设备上

打开 `cmd` 输入
```text
D:\lineage\mix3>D:\android-tools\fastboot flash recovery recovery.img
Sending 'recovery' (65536 KB)                      OKAY [  1.700s]
Writing 'recovery'                                 OKAY [  0.143s]
Finished. Total time: 1.861s
```
> 如果之前设备有重新，则需要重复执行上面的命令

## 从FastBoot 模式进入 Recovery 模式
```text
D:\lineage\mix3>D:\android-tools\fastboot reboot recovery
Sending 'recovery' (65536 KB)                      OKAY [  1.700s]
Writing 'recovery'                                 OKAY [  0.143s]
Finished. Total time: 1.861s
```
> 如果上面的命令不生效，则可以长按`电源`+ `声音减`，持续到出现两次小米的标志后，立马松手。
## 双清
操作路径如下。
- 清 data/factory： Factory reset -> Format data/factory reset -> Format data
- 清 cache： Factory reset -> Format cache partition -> Yes

## 加载 LineageOS 
操作路径如下
返回主菜单 -> Apply update -> Apply from ADB。再回到电脑CMD操作：
```text
D:\lineage\mix3>D:\android-tools\adb -d sideload lineage-22.1-20250202-nightly-perseus-signed.zip
Total xfer: 1.00x
```
> 上面的过程会有进度条，一定耐心等待，不要拔线。但在某些情况下，即使该过程成功，输出也会在 47% 处停止并报告 adb: failed to read command: Success .在某些情况下，它会报告 adb: failed to read command: No error 或 adb: failed to read command: Undefined error: 0 这没有问题。

## 加载 Google 服务（可选）
操作路径如下，下载地址：https://wiki.lineageos.org/gapps。

返回主菜单 -> Apply update -> Apply from ADB。再回到电脑CMD操作：
```text
D:\lineage\mix3>D:\android-tools\adb -d sideload MindTheGapps-15.0.0-arm64-20240928_150548.zip
Total xfer: 1.00x
```
当显示显示 Signature verification failed（签名验证失败）的屏幕时，单击 Yes。这是意料之中的，因为附加组件没有使用 LineageOS 的官方密钥签名！

## 完成
点击 Reboot system now


<!-- universe_declaration -->
# 宇宙声明
本指南仅供学习与技术研究用途，作者无意传播或倡导任何违反中国大陆及其他地区法律法规的行为。
使用代理工具（如V2Ray）进行“翻墙”、访问被封锁内容或绕过网络审查，可能违反《中华人民共和国网络安全法》等法规，并面临法律责任。
东南亚电信诈骗风险提醒：东南亚部分地区（如柬埔寨、缅甸、泰国等）存在利用代理工具实施电信诈骗等犯罪活动的情况。请警惕虚假招聘、防范个人信息泄露，并拒绝参与任何非法网络行为，以免触犯法律或遭受人身风险。

特别声明：
- 用户须自行了解所在地法律法规，合法合规使用；
- 因使用不当产生的法律责任，与本指南及作者无关。
- 请在使用前仔细阅读本声明，继续使用即视为同意以上条款。
<!-- universe_declaration -->