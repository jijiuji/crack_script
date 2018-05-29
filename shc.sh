#!/bin/sh
#PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
#export PATH
#clear;

clear

echo "准备环境中..."
yum -y install gcc gcc-c++ >/dev/null 2>&1
echo "准备完成！回车开始安装Shc..."
read

echo "开始安装,请稍后..."
cd /root
wget http://bashfile.oss-cn-shanghai.aliyuncs.com/shc/shc-3.8.7.tgz >/dev/null 2>&1
tar vxf shc-3.8.7.tgz >/dev/null 2>&1
mkdir -p /usr/local/man/man1
cd shc-3.8.7
make install<<EOF
y
EOF

echo "安装完成！"
sleep 3
clear

echo "
使用方法：
shc -r -v -f jb.sh
-r 使脚本适用其他操作系统
-v 显示加密过程
-f 后面跟需要加密的文件

运行后会生成两个文件: 
jb.sh.x 和 jb.sh.x.c

jb.sh.x为二进制文件,赋予执行权限后,可直接执行
jb.sh.x.c 是c源文件,可以删除

安装完成！
"

#@挺好 QQ：2669398638 于2016-11-27日