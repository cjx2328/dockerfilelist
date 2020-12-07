#基于centos镜像
FROM centos:centos7

#维护人的信息
MAINTAINER The CentOS Project <cjx2328@126.com>
RUN chattr -i /etc/resolv.conf
RUN rm -rf /etc/resolv.conf  
RUN  touch /etc/resolv.conf 
RUN   echo "nameserver 8.8.8.8" >> /etc/resolv.conf   
RUN  echo "nameserver 223.5.5.5" >> /etc/resolv.conf 
RUN sh /etc/init.d/network restart
RUN yum -y update

RUN yum -y install gcc openssl-devel bzip2-devel

RUN yum -y install gcc automake autoconf libtool make

RUN yum -y install wget

RUN yum -y install git 

RUN yum -y install zip unzip

WORKDIR /usr/src

RUN wget https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz

RUN tar -zxvf Python-2.7.15.tgz

WORKDIR Python-2.7.15

RUN ./configure --enable-optimizations

RUN make altinstall

RUN python2.7 -m ensurepip --default-pip

RUN git clone -b master https://github.com/flyzy2005/ss-fly

WORKDIR ss-fly
# flyzy2005.com 是密码 修改这个 
#1024 这个是对外端口 需要和下面开启端口一起修复
RUN bash ./ss-fly.sh -i flyzy2005.com 1024

WORKDIR /app

COPY . /app

#开启1024端口
EXPOSE 1024

 


 


