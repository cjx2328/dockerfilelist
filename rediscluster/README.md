# 创建redis集群shell脚本
 
.命令
mkdir /root/redis-cluster-d
cd /root/redis-cluster-d

复制下载的脚本：具体的目录可以在文件内更新


sh ./creatredispre.sh
sh ./creatredis.sh

等创建成功后，链接集群进入一个docker

 redis-cli -a 123456 --cluster create 192.168.20.202:7001 192.168.20.202:7002 192.168.20.202:7003 192.168.20.202:7004 192.168.20.202:7005 192.168.20.202:7006 --cluster-replicas 1

