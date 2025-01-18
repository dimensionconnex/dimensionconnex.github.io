---
title: 让搜索引擎收录你的网站|2025持续更新
index_img: /img/web-黑色背景-网站收录主图-加水印.png
date: 2025-01-18 21:00:00
categories: 
    - 博客搭建
tags:
    - hexo
    - blog
    - fluid
    - Google
    - Baidu
    - Bing

---
<!-- update_date -->
> 更新时间：2025-01-18 21:00:00
<!-- update_date -->



# 简介
在我申请搜索引擎收录我的个人博客时，我发现现在的收录速度似乎比前几年有所减缓。

如果你的博客内容质量较高，谷歌大约需要一周到两周的时间来收录。至于百度，根据我的个人经验，收录速度较慢。我的网站提交后大约过了一年才开始被收录，而且在收录第一篇文章之后，又过了大约一个月，总共才收录了十几篇博客。

为了更快被搜索引擎收录，以下是一些建议：1. 保持网站的持续更新。只有你持续维护的网站，搜索引擎才会认为这是一个有人负责并且不断更新的网站，从而有可能进行收录。2. 确保内容原创性。尽量保证你的博客内容是原创的，避免大量复制其他网站的内容。如果内容重复性太高，搜索引擎可能会认为你的网站缺乏质量，从而不予收录。

> 下面的教程以 hexo5.x 博客框架举例

# hexo 准备工作(非hexo可跳过)

## hexo 安装 sitemap 插件
在你的 hexo 项目路径下执行如下命令，安装 sitemap 生成插件。（如果你是hexo比较新的话不建议用hexo-submit-urls-to-search-engine模块，这个包太老了，老实先用sitemap吧）
```shell
npm install hexo-generator-sitemap --save
```

## 修改配置
安装完毕插件后，在你的 hexo 配置文件_config.yml（记住不要改到_config.fluid.yml） 中添加如下内容，指定站点地图的文件名字即可。
```yml

sitemap:
    path: sitemap.xml
```

# Google收录
一定是先Google收录，再收录Bing，往后看就知道了。
## 配置Google Analysis
按照逻辑，如果搜索引擎没有收录网站，首先做的应该是向搜索引擎提交网站。但是在向搜索引擎提交网站时，搜索引擎会验证你对于提交的网站具有控制权。如果你的网站配置Google Analysis服务，可以直接通过验证。如果你想要使用其他验证方式，可以跳过本段，参考向Google提交网站地图

Google Analysis是一款免费的网站统计分析工具，可以实时监测跟踪网站的表现，包括流量情况和用户访问情况。工具不仅会统计网站的整体流量情况，还会给出这些流量的具体组成结构，以及展示网站访问者的活动流程，让你可以清楚地了解网站的细节表现
### 打开网站
进入[Google Analysis](https://analytics.google.com/analytics/web/provision/#/provision)，出现了这个错误，切换下节点，好像是 Google Analysis 对部分地区不开放
![错误](/img/web-blog-include-1.png)
```text
403. That’s an error.

Your client does not have permission to get URL /analytics/web/ from this server. That’s all we know. 
```

### 配置账户
![总共5个步骤](/img/web-blog-include-3.png)

![填账户名称](/img/web-blog-include-4.png)

![填媒体资源 地区随便](/img/web-blog-include-5.png)

![商家描述随便写](/img/web-blog-include-6.png)

![业务目标随便写](/img/web-blog-include-7.png)

![条款接受就行](/img/web-blog-include-8.png)

![数据收集选择网站](/img/web-blog-include-9.png)

![网站填githu.io分配给你的就行](/img/web-blog-include-10.png)

![创建完成](/img/web-blog-include-11.png)

![点下一步 会给出js代码 记得选手动添加 复制出来就行](/img/web-blog-include-11.png)
类似这种的
```js

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-W7SRC360PT"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-W7SRC360PT');
</script>

```
### 修改hexo的配置
我的hexo是用的fluid主题， 所以直接修改 _config.fluid.yml， 新增custom_head，如果是用的其他就相应修改就行
```yml
custom_head: '<!-- Google tag (gtag.js) --> <script async src="https://www.googletagmanager.com/gtag/js?id=G-W7SRC360PT"></script> <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag("js", new Date()); gtag("config", "G-W7SRC360PT"); </script>'
```
重启服务后刷新生效
![google代码就有了](/img/web-blog-include-13.png)

### 回到Google Analysis 页面 
![点击测试](/img/web-blog-include-14.png)
![打开首页 能看到类似的图就可以了](/img/web-blog-include-15.png)

## 提交网站地图
打开[Google Search Console](https://search.google.com/u/1/search-console) (简称GSC)
由于我们已经配置过Google Analysis，可以使用相同的账号信息，无需另行注册Search Console。在验证网站所有权时，建议选择“网址前缀”模式。虽然“网域”模式能够覆盖更多情景，但是只能通过DNS进行验证，对于Github托管的博客不太友好。

![网址前缀](/img/web-blog-include-16.png)

![选择前往资源页面](/img/web-blog-include-17.png)

![输入sitemap.xml](/img/web-blog-include-18.png)

### 显示无法抓取
这个问题是 GSC 错误地将“待处理”显示为“无法获取”  ，请耐心等候一段时间，少则3天内完成，多则数周。相关连接： https://support.google.com/webmasters/thread/201833635/%E7%AB%99%E7%82%B9%E5%9C%B0%E5%9B%BE%E6%98%BE%E7%A4%BA%E6%97%A0%E6%B3%95%E6%8A%93%E5%8F%96?hl=zh-hans


# Bing收录
打开[Bing webmasters](https://www.bing.com/webmasters/about)，使用 Google 账号登录。

![选择从GSC登入](/img/web-blog-include-19.png)

![导就完事了](/img/web-blog-include-20.png)



# 测试
打开Google/Bing/Baidu， 搜索框输入： site:dimensionconnex.github.io 就能判断了。
