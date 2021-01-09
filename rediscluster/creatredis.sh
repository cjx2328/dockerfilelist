for port in `seq 7001 7006`; do

     docker run -d --net=host    -v /root/redis-cluster-d/${port}/conf/redis.conf:/etc/redis/redis.conf -v /root/redis-cluster-d/${port}/data:/data --restart always --name=redis-${port}  registry.cn-shanghai.aliyuncs.com/bayerphp/redisbaseimages:v1 redis-server /etc/redis/redis.conf;

done
