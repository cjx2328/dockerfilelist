#### vpn-ss-fly-docker 介绍
vpn-ss-fly-docker 是使用了 ss-fly 为脚本的docker制作脚本，ss-fly 的版权归原作者所有，因为原作者已经放弃了更新所以提供了最后一个版本的
`forked：https://github.com/cjx2328/ss-fly`

### 使用方法简介 

##### 环境要求
- docker【必须】
- git【非必须】
- 开启1024或者docker自定义配置的端口

##### 安装使用
- 先下载代码

`git clone https://github.com/cjx2328/dockerfilelist`

`cd /dockerfilelist/vpn-ss-fly-docker`

`docker build -t vpnssfly/centos:v1 .`

`docker run -ti -p 1024:1024  vpnssfly/centos:v1 /bin/sh -c '/etc/init.d/ss-fly start'`


##### DOCKERFILE文件说明

- 其中flyzy2005.com换成你要设置的shadowsocks的密码即可（这个flyzy2005.com就是你ss的密码了，是需要填在客户端的密码那一栏的），密码随便设置，最好只包含字母+数字，一些特殊字符可能会导致冲突。而第二个参数1024是端口号，也可以不加，不加默认是1024~（举个例子，脚本命令可以是ss-fly/ss-fly.sh -i qwerasd，也可以是ss-fly/ss-fly.sh -i qwerasd 8585，后者指定了服务器端口为8585，前者则是默认的端口号1024，两个命令设置的ss密码都是qwerasd

##### ss控制命令

- 启动：/etc/init.d/ss-fly start
- 停止：/etc/init.d/ss-fly stop
- 重启：/etc/init.d/ss-fly restart
- 状态：/etc/init.d/ss-fly status
- 查看ss链接：ss-fly/ss-fly.sh -sslink
- 修改配置文件：vim /etc/shadowsocks.json


搭建好后使用ss客户端就可以直接使用了 ，下面是GitHub中ss小飞机的下载地址

[vpnss客户端的GitHub地址](https://github.com/shadowsocksrr/shadowsocksr-csharp/releases "vpnss客户端的GitHub地址")


上网愉快

