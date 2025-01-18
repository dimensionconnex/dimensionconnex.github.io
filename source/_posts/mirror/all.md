---
title: 最全镜像站合集|2025持续更新
index_img: /img/web-黑色背景-镜像站主图-加水印.png
date: 2025-01-17 21:00:00
categories: 
    - 镜像网站
tags:
    - Github
    - NPM
    - Google
    - DockerHub
    - Pip
    - Python
    - Node
    - Chatgpt
    - Ubuntu
---
<!-- update_date -->
> 更新时间：2025-01-17 21:00:00
<!-- update_date -->



# 简介
- 使用：镜像站访问部分仅限大陆ip，另外不建议登录账号使用。
- 分享初衷：导航立足学术公益，仅为方便科研工作而提供学术网址导航。
- 请遵守相关法律法规：使用本站收集 Google 镜像访问，请遵守相关法律法规。
本站仅供互联网工作者学术研究搜索使用，禁止浏览任何非法内容，凡因违规浏览而引起的任何法律纠纷，本站概不负责。
镜像数据来自互联网，本站不对镜像内容负责。请不要在镜像网站上登录账户，也不要搜索敏感词汇（以免镜像站点被和谐）。
- 镜像是什么：镜像原意是光学里指的物体在镜面中所成之像。引申到计算机网络上，镜像通常用于为相同信息内容提供不同的源，特别是在下载量大的时候提供了一种可靠的网络连接。制作镜像是一种文件同步的过程。
- 什么是镜像网站：镜像网站，即把一个互联网上的网站数据“拷贝”到本地服务器，并保持本地服务器数据的同步更新，因此也称为“复制网络站点” 。它和主站并没有太大差别，或者可算是为主站作的后备措施。
有了镜像网站的好处是：如果不能对主站作正常访问（如某个服务器死掉或出了意外），但仍能通过其它服务器正常浏览。

<!-- github_mirror -->
# Github镜像网站（2025年1月更新）
<!-- 收集网站: https://fcp7.com/github-mirror-daily-updates.html -->
| 镜像站编号       | 类型     | 链接                           | 状态   |
|----------------|--------|------------------------------|------|
| GitHub镜像站014 | 直接     | https://bgithub.xyz          | 可用   |
| GitHub镜像站013 | 直接     | https://kkgithub.com         | 可用   |
| GitHub镜像站012 | 直接     | https://gitclone.com         | 可用   |
| GitHub镜像站011 | 直接     | https://github.hscsec.cn     | 不可用 |
| GitHub镜像站010 | 直接     | https://git.homegu.com       | 不可用 |
| GitHub镜像站009 | 直接     | https://github.ur1.fun       | 可用   |
| GitHub镜像站008 | 直接     | https://git.homegu.com       | 不可用 |
| GitHub镜像站007 | 文件加速 | https://moeyy.cn/gh-proxy/   | 可用   |
| GitHub镜像站006 | 文件加速 | https://ghp.ci/              | 可用   |
| GitHub镜像站005 | 文件加速 | https://gh-proxy.com/        | 可用   |
| GitHub镜像站004 | 文件加速 | https://ghproxy.net/         | 可用   |
| GitHub镜像站003 | 文件加速 | https://ghproxy.homeboyc.cn/ | 可用   |
| GitHub镜像站002 | 文件加速 | https://ghproxy.com/         | 不可用 |
| GitHub镜像站001 | 文件加速 | http://toolwa.com/github/    | 可用   |
<!-- github_mirror -->

<!-- docker_ub_mirror -->
# DockerHub镜像网站（2025年1月更新）
<!-- 收集网站: https://www.coderjia.cn/archives/dba3f94c-a021-468a-8ac6-e840f85867ea -->
| DockerHub 镜像仓库                  | 状态 |
|-------------------------------------|---------|
| docker.1ms.run                      | 可用    |
| docker.xuanyuan.me                  | 可用    |
| docker-0.unsee.tech                 | 可用    |
| docker-0.unsee.tech                 | 可用    |
| docker.1panel.live                  | 可用    |
| registry.dockermirror.com           | 可用    |
| docker.imgdb.de                     | 可用    |
| docker.m.daocloud.io                | 可用    |
| hub.firefly.store                   | 可用    |
| hub.littlediary.cn                  | 可用    |
| hub.rat.dev                         | 可用    |
| dhub.kubesre.xyz                    | 可用    |
| cjie.eu.org                         | 可用    |
| docker.kejilion.pro                 | 可用    |
| docker.1panelproxy.com              | 可用    |
| docker.hlmirror.com                 | 可用    |
| hub.fast360.xyz                     | 可用    |
<!-- docker_ub_mirror -->

## 使用方法1：临时配置
直接使用，直接拿镜像域名拼接上官方镜像名，例如要拉去镜像 istio/distroless，可以用下面写法（不要带 https://）
```shell
docker pull docker.1ms.run/istio/distroless
```
## 使用方法2：长期配置
修改文件 /etc/docker/daemon.json（如果不存在则需要创建创建，注意不要写入中文，要带 https://），并重启服务。下面为Linux系统命令，unix/windows同理

```shell
# 不存在则创建目录，存在则忽略
sudo mkdir -p /etc/docker
# 写入配置文件
sudo tee /etc/docker/daemon.json <<-'EOF'
{
    "registry-mirrors": [
    	"https://docker-0.unsee.tech",
        "https://docker-cf.registry.cyou",
        "https://docker.1panel.live"
    ]
}
EOF
# 重启docker服务
sudo systemctl daemon-reload && sudo systemctl restart docker
```

<!-- pip_mirror -->

# pip镜像网站（2025年1月更新）
<!-- https://zhuanlan.zhihu.com/p/15994609190 -->
| 镜像源 | 地址 | 特点 |
| --- | --- | --- |
| 清华大学镜像源 | https://pypi.tuna.tsinghua.edu.cn/simple/ | 国内最热门，更新及时 |
| 阿里云镜像源 | https://mirrors.aliyun.com/pypi/simple/ | 企业级支持，速度极快 |
| 中国科学技术大学镜像 | https://pypi.mirrors.ustc.edu.cn/simple/| 稳定高效，适合科研场景 |
| 腾讯云镜像源 | https://mirrors.cloud.tencent.com/pypi/simple/| 高速、可靠的云支持 |
| 华为云镜像源 | https://repo.huaweicloud.com/repository/pypi/simple/ | 华为生态强力支持 |
<!-- pip_ub_mirror -->

## 使用方法1：临时配置

如果只想在某次安装中使用镜像源，可以通过 -i 参数临时指定。例如，使用清华大学镜像源安装某个包：
```shell
pip install <package_name> -i https://pypi.tuna.tsinghua.edu.cn/simple/
```

## 使用方法2：长期配置
修改文件 ~/.pip/pip.conf（如果不存在则需要创建创建，注意不要写入中文，要带 https://）。下面为Linux系统命令，unix/windows同理

```shell
# 不存在则创建目录，存在则忽略
sudo mkdir -p ~/.pip
# 写入配置文件
sudo tee ~/.pip/pip.conf <<-'EOF'
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple/
extra-index-url = https://mirrors.aliyun.com/pypi/simple/
EOF
```



<!-- ubuntu_apt_mirror -->
# ubuntu apt 镜像网站（2025年1月更新）
| 镜像源 | 地址 | 特点 |
| --- | --- | --- |
| 清华大学镜像源 | https://mirrors.tuna.tsinghua.edu.cn/ubuntu | 国内最热门，更新及时 |
| 阿里云镜像源 | http://mirrors.aliyun.com/ubuntu/ | 企业级支持，速度极快 |
| 中国科学技术大学镜像 | https://mirrors.ustc.edu.cn/ubuntu/| 稳定高效，适合科研场景 |
<!-- ubuntu_apt_mirror -->

## 使用方法：长期配置
ubuntu>18版本一键替换脚本： replace-apt.sh
```shell
#!/bin/bash

# Script Name: replace_ubuntu_apt_source.sh
# Author: dimensionconnex.github.io
# Created: 2025-01-18
# Version: 1.0

AUTHOR="dimensionconnex.github.io"
VERSION="1.0"

echo "脚本信息： 作者：$AUTHOR, 版本：$VERSION."

# 定义镜像源 URL 变量
TSINGHUA_URL="https://mirrors.tuna.tsinghua.edu.cn/ubuntu"
ALI_URL="http://mirrors.aliyun.com/ubuntu/"
USTC_URL="https://mirrors.ustc.edu.cn/ubuntu/"

# 提示用户选择镜像源
echo "请选择要使用的 apt 源:"
echo "1) 清华大学 (TUNA)"
echo "2) 阿里云"
echo "3) 中国科技大学 (USTC)"
read -p "输入选项 (1-3): " SOURCE_SELECTION

# 根据用户选择设置源 URL
case $SOURCE_SELECTION in
    1)
        SOURCE=$TSINGHUA_URL
        ;;
    2)
        SOURCE=$ALI_URL
        ;;
    3)
        SOURCE=$USTC_URL
        ;;
    4)
        SOURCE=$163_URL
        ;;
    *)
        echo "无效的选项，退出脚本。"
        exit 1
        ;;
esac

# 获取当前 Ubuntu 版本的代号
UBUNTU_CODENAME=$(lsb_release -cs)
echo "当前 Ubuntu 版本代号是: $UBUNTU_CODENAME"

# 备份原来的源列表
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

# 写入新的源列表到临时文件
cat > sources.list.tmp << EOF
deb $SOURCE $UBUNTU_CODENAME main restricted universe multiverse
deb $SOURCE $UBUNTU_CODENAME-updates main restricted universe multiverse
deb $SOURCE $UBUNTU_CODENAME-backports main restricted universe multiverse
deb $SOURCE $UBUNTU_CODENAME-security main restricted universe multiverse
EOF

# 替换原有的源列表
sudo mv sources.list.tmp /etc/apt/sources.list
# 更新源
sudo apt update

echo "apt 源替换完成。"

```

<!-- google_scholar_mirror -->
# google scholar 谷歌学术 镜像网站（2025年1月更新）
<!-- https://www.ooopn.com/tool/ggscholar/ -->
| 地址 | 状态   |
|---------|------|
| https://scholar.lanfanshu.cn | 可用   |
| https://sc.panda985.com     | 可用   |
| https://xueshu.lanfanshu.cn | 可用   |
| https://so1.linfen3.top    | 可用   |
| https://xs.vygc.top       | 可用   |
| https://xs.typicalgame.com  | 可用   |
| https://scholar.aigrogu.com | 可用   |
| https://www.duavekuran.com  | 可用   |
| https://brum.beds.ac.uk     | 可用   |

<!-- google_scholar_mirror -->


<!-- npm_mirror -->
# NPM 镜像网站（2025年1月更新）
|镜像源| 地址 | 状态   |
|----|---------|------|
|淘宝NPM镜像源| http://registry.npmmirror.com | 可用   |
|阿里NPM镜像源| https://npm.aliyun.com     | 可用   |
|腾讯NPM镜像源| https://mirrors.cloud.tencent.com/npm/ | 可用   |
|华为NPM镜像源| https://mirrors.huaweicloud.com/repository/npm/    | 可用   |
|清华大学NPM镜像源| https://mirrors.tuna.tsinghua.edu.cn/       | 可用   |

<!-- npm_mirror -->
## 使用方法1：临时配置

如果只想在某次安装中使用镜像源，可以通过 --registry 参数临时指定。例如，使用淘宝镜像源安装koa：
```shell
npm install koa --registry=https://registry.npmmirror.com
```

## 使用方法2：长期配置
```shell
npm config set registry https://registry.npmmirror.com
```

<!-- chatgpt_mirror -->
# chatgpt 镜像网站（2025年1月更新）
<!-- https://www.ooopn.com/tool/ggscholar/ -->
镜像站点都是个人搭建的，会有广告，另外充值需要三思而行，防止被骗
| 地址 | 状态   |
|---------|------|
| https://ai.ninebotai.com | 可用   |
| https://uuu.mygpt.bid     | 可用   |
| https://cgs.skybyte.me | 可用   |
| https://freegpt.es    | 可用   |
| https://www.freegpt.pl       | 可用   |

<!-- npm_mirror -->

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