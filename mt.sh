# 如果你看到此条消息说明你解密成功 
#希望你用它来学习，而不是一味的改个版权
#本脚本由零点免流版权所有，杜绝一切盗版
#by 零点免流，脚本由花白创作
#花白QQ：1647131372 盗模版、盗内容、盗创意===Si全家
#官网：http://www.ldkml.cn
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin 
export PATH 
clear; 
ulimit -c 0 
rm -rf $0 
clear
echo -e "\033[1;35m==========================================================================\033[0m"
echo -e "\033[1;32m                            零点免流-流控系统           	                 \033[0m"
echo -e "\033[1;32m                                 温馨提示：         	                     \033[0m"
echo -e "\033[1;32m               为了您服务器的稳定和安全，请勿非法破解改程序               \033[0m"
echo -e "\033[1;32m                           支持正版，抵制盗版                             \033[0m"
echo -e "\033[1;32m                     秘钥绑定IP可在限定时间下反复使用！				     \033[0m"
echo -e "\033[1;32m                                  by 零点 	                             \033[0m"
echo -e "\033[1;35m==========================================================================\033[0m"
echo
echo -e "\033[1;36m正在检测您的系统是否符合安装....\033[0m"
sleep 5
COO='
=========================================================================
                 安装终止，请在centos7.x系统上安装！                   
                           温馨提示：                 
             为了您服务器的稳定和安全，请勿非法破解改程序             
                      支持正版，抵制盗版                                
                 秘钥绑定IP可在限定时间下反复使用！                  
                                                          
                                       By 零点 2016
=========================================================================';
if [ -f /etc/os-release ];then
OS_VERSION=`cat /etc/os-release |awk -F'[="]+' '/^VERSION_ID=/ {print $2}'`
if [ $OS_VERSION != "7" ];then
echo -e "\n当前系统版本为：\033[31mCentOS $OS_VERSION\033[0m\n"
echo "暂不支持该系统安装"
echo "请更换 CentOS 7.0-7.2 系统进行安装"
echo "$COO";
exit 0;
fi
elif [ -f /etc/redhat-release ];then
OS_VERSION=`cat /etc/redhat-release |grep -Eos '\b[0-9]+\S*\b' |cut -d'.' -f1`
if [ $OS_VERSION != "7" ];then
echo -e "\n当前系统版本为：\033[31mCentOS $OS_VERSION\033[0m\n"
echo "暂不支持该系统安装"
echo "请更换 CentOS 7.0-7.2 系统进行安装"
echo "$COO";
exit 0;
fi
else
echo -e "当前系统版本为：\033[31m未知\033[0m\n"
echo "暂不支持该系统安装"
echo "请更换 CentOS 7.0-7.2 系统进行安装"
echo "$COO";
exit 0；
fi
echo
echo -n -e "\033[1;36m恭喜，您的系统符合安装，请按回车开始安装吧！\033[0m"
read
echo
echo -e "\033[1;36m开始预先整理环境,请稍后....\033[0m"
if [ ! -e "/dev/net/tun" ];
then
echo
echo -e "  安装出错 [原因：\033[31m TUN/TAP虚拟网卡不存在 \033[0m]"
echo "  网易蜂巢容器官方已不支持安装使用"
exit 0;
fi
yum install -y wget >/dev/null 2>&1
yum install -y curl >/dev/null 2>&1
clear
#==========================变量储存========================================
web="http://";export web=$web #云龙™
IP=`wget http://members.3322.org/dyndns/getip -O - -q ; echo`; #零点™
#==========================================================================
#============================源文件下载变量================================
liukong=ldlk.zip;export liukong=$liukong #零点™
zsml=EasyRSA-2.2.2.zip;export zsml=$zsml #零点™
phpmyadmin=phpMyadmin.zip;export phpmyadmin=$phpmyadmin #零点™
jiankong=shishijiankong.zip;export jiankong=$jiankong #零点™
lkdd=server-passwd.zip;export lkdd=$lkdd #零点™
ldmll=/etc/openvpn/easy-rsa/xiaoximl;export ldmll=$ldmll #零点™
sysctl=sysctl.conf;export sysctl=$sysctl
sq=squid.conf;export sq=$sq #零点™
sqjm=squid_passwd;export sqjm=$sqjm #零点™
VPNZ=ld-openvpn.zip
#==========================================================================
echo -e "\033[1;35m==========================================================================\033[0m"
echo -e "\033[1;32m                            零点免流-流控系统           	                 \033[0m"
echo -e "\033[1;32m                                 温馨提示：         	                     \033[0m"
echo -e "\033[1;32m               为了您服务器的稳定和安全，请勿非法破解改程序               \033[0m"
echo -e "\033[1;32m                           支持正版，抵制盗版                             \033[0m"
echo -e "\033[1;32m                     秘钥绑定IP可在限定时间下反复使用！				     \033[0m"
echo -e "\033[1;32m                                 by 零点 	                             \033[0m"
echo -e "\033[1;35m==========================================================================\033[0m"
echo -e "\033[1;36m脚本已由阿里云/腾讯云centos7.x测试通过 \033[0m"
echo
echo -e "\033[1;32m正在检测您的IP是否授权......\033[0m"
IPAddress=`wget http://members.3322.org/dyndns/getip -O - -q ; echo`;
ServerLocation=`curl -s http://www.sxhualv.com/api.php?url=${IPAddress}`;
port=8080;
vpnport=443;
key=1
KSH=`curl -s http://www.sxhualv.com/api.php?url=${IPAddress}`;
if [[ $KSH =~ $key ]] ;then
	echo 
	echo -e "授权成功！[本机IP：\033[32m $IPAddress \033[0m]"
    else
	echo
	echo -e "\033[31m授权失败！\033[0m"
exit 0;
fi
sleep 3
echo
echo -ne "\033[1;36m请输入数据库密码：\033[0m"
read MySQLPass
if [ -z $MySQLPass ]
then
echo -ne "\033[1;35m数据库密码不能为空，请重新输入：\033[0m"
read MySQLPass
fi 
echo -e "\033[1;35m您的数据库密码为：$MySQLPass\033[0m"

echo -ne "\033[1;36m请输入你的后端KEY，回车默认（lingdianml）：\033[0m"
read zdyky
if [ -z $zdyky ]
then
echo -e "\033[1;35m您的后端KEY为：lingdianml\033[0m"
zdyky=lingdianml
else
echo -e "\033[1;35m您的后端KEY为：$zdyky\033[0m"
fi

echo -ne "\033[1;36msquid为http代理，请输入squid账号：\033[0m"
read squsername
if [ -z $squsername ]
then
echo -ne "\033[1;35m账号不能为空，请重新输入squid账号：\033[0m"
read squsername
fi
echo -e "\033[1;35m您的squid账号为：$squsername\033[0m"

echo -ne "\033[1;36msquid为http代理，复杂的密码可防止被偷流量.请输入squid密码：\033[0m"
read sqpasswd
if [ -z $sqpasswd ]
then
echo -ne "\033[1;35m密码不能为空，请重新输入squid密码：\033[0m"
read sqpasswd
fi  
echo -e "\033[1;35m您的squid密码为：$sqpasswd\033[0m"

echo -ne "\033[1;36m请输入流控端口（如果这里设置的80，则下面常规代理端口设置其他，这里介意不要用80）：\033[0m"
read lkdk
if [ -z $lkdk ]
then
echo -ne "\033[1;35m流控端口不能为空，请重新输入：\033[0m"
read lkdk
fi
echo -e "\033[1;35m您的流控端口为：$lkdk\033[0m"

echo -ne "\033[1;36m请输入实时监控频率（秒）：\033[0m"
read jkpl
if [ -z $jkpl ]
then
echo -ne "\033[1;35m实时监控频率不能为空，请重新输入：\033[0m"
read jkpl
fi
echo -e "\033[1;35m您的实时监控频率为：$jkpl秒\033[0m"

echo
function Inputip()
{
if [ "$ip" == '' ]; then
echo '无法检测您的IP';
read -p '请输入您的公网IP:' ip;
[ "$ip" == '' ] && Inputip;
fi;
[ "$ip" != '' ] && echo -n '[  OK  ] 您的IP是:' && echo $ip;
sleep 2
}
#ldml
echo -e "\033[1;36m自定义设置端口（以下设置可直接回车使用默认值） \033[0m"
echo
echo -ne "\033[1;35m输入VPN端口（默认443）： \033[0m"
read vpnport
if [ -z $vpnport ]
then
echo  "VPN端口：443"
vpnport=443
else
echo "VPN端口：$vpnport"
fi
echo 
echo -e "\033[1;36m（此端口设置复杂的端口有效避免被扫流量问题，中国移动请保留8080）\033[0m"
echo -ne "\033[1;35m输入HTTP转接端口（建议8080 ~ ≤65535，默认8080）：\033[0m"
read httpports
if [ -z $httpports ]
then
echo  "HTTP转接端口：8080"
httpports=8080
else
echo "HTTP转接端口：$httpports"
fi
echo
echo -e "\033[1;36m（此端口建议保留80，已防扫）\033[0m"
echo -ne "\033[1;35m输入常规代理端口（默认80）：\033[0m"
read proxyport
if [ -z $proxyport ]
then
echo  "常规代理端口：80"
proxyport=80
else
echo "常规代理端口：$proxyport"
fi
echo
#ldml	
echo "系统正在安装OpenVPN服务，请耐心等待："
echo 
echo -n "正在检测网卡..."
if [ ! -e "/dev/net/tun" ];
then
echo
echo "安装被终止！"
echo "TUN/TAP网卡未开启，请联系服务商开启TUN/TAP。"
echo 
echo "注意脚本已经停止对网易蜂巢的支持！"
exit 0;
else
echo "                 [  OK  ]"
fi

#处理残留环境
echo "安装依赖包，并清理旧环境，喝杯咖啡歇息一下吧！不要乱动哦，别按回车"
service openvpn stop >/dev/null 2>&1
killall openvpn >/dev/null 2>&1
killall proxy >/dev/null 2>&1
killall squid >/dev/null 2>&1
killall php-fpm >/dev/null 2>&1
rm -rf /etc/openvpn/*
rm -rf /etc/squid
rm -rf /passwd
rm -rf /usr/bin/udp /lib/systemd/system/vpn.service
rm -rf /etc/openvpn/* /etc/squid/* /bin/sqlpass /bin/sql
rm -rf /usr/local/ssl /bin/end 
/etc/init.d/mysqld stop >/dev/null 2>&1 
yum -y install wget >/dev/null 2>&1
yum -y install curl >/dev/null 2>&1
yum -y install gcc >/dev/null 2>&1
yum -y install tar >/dev/null 2>&1
yum -y install zip >/dev/null 2>&1
systemctl stop openvpn@server.service >/dev/null 2>&1 
yum -y remove openvpn >/dev/null 2>&1
rm -rf /var/lib/mysql
rm -rf /etc/my.cnf
rm -rf /var/log/mysql/
echo "残留环境处理完毕"

#配置安装源
echo "正在配置安装源，这里可能需要10到20分钟，请耐心等待....."
yum -y remove squid >/dev/null 2>&1
yum remove -y squid openvpn httpd >/dev/null 2>&1
rpm -ivh http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm >/dev/null 2>&1
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm >/dev/null 2>&1
yum install -y redhat-lsb curl gawk tar httpd-devel unzip telnet expect >/dev/null 2>&1
yum update -y >/dev/null 2>&1
echo "安装源配置完毕"
#配置安装源

#安装openvpn组件
echo "正在安装openvpn组件，请耐心等待....."
yum install -y openvpn telnet >/dev/null 2>&1
yum install -y openvpn >/dev/null 2>&1
sleep 1
yum install -y openssl openssl-devel lzo lzo-devel pam pam-devel automake pkgconfig expect >/dev/null 2>&1
cd /etc/openvpn/
rm -rf /etc/openvpn/server.conf
echo "openvpn组件安装完毕"
#安装openvpn组件

#配置防火墙
echo "正在开启各种端口"
systemctl stop firewalld.service >/dev/null 2>&1
systemctl disable firewalld.service >/dev/null 2>&1
systemctl restart iptables.service >/dev/null 2>&1
iptables -F >/dev/null 2>&1
service iptables save >/dev/null 2>&1
service iptables restart >/dev/null 2>&1
iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o eth0 -j MASQUERADE >/dev/null 2>&1
iptables -A INPUT -p TCP --dport $httpports -j ACCEPT
iptables -A INPUT -p TCP --dport $proxyport -j ACCEPT
iptables -A INPUT -p TCP --dport $vpnport -j ACCEPT
iptables -A INPUT -p TCP --dport $lkdk -j ACCEPT
iptables -A INPUT -p TCP --dport 3306 -j ACCEPT
iptables -A INPUT -p TCP --dport 3389 -j ACCEPT 
iptables -A INPUT -p TCP --dport 22 -j ACCEPT
iptables -A INPUT -p TCP --dport 25 -j ACCEPT 
iptables -A INPUT -p TCP --dport 137 -j ACCEPT
iptables -A INPUT -p TCP --dport 53 -j ACCEPT
iptables -A INPUT -p TCP --dport 138 -j ACCEPT
iptables -A INPUT -p TCP --dport 136 -j ACCEPT
iptables -A INPUT -p TCP --dport 139 -j ACCEPT
iptables -A INPUT -p TCP --dport 351 -j ACCEPT
iptables -A INPUT -p TCP --dport 366 -j ACCEPT
iptables -A INPUT -p udp --dport 137 -j ACCEPT
iptables -t nat -A POSTROUTING -j MASQUERADE >/dev/null 2>&1
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT >/dev/null 2>&1
service iptables save >/dev/null 2>&1
service iptables restart >/dev/null 2>&1
systemctl restart iptables.service >/dev/null 2>&1
chkconfig iptables on >/dev/null 2>&1
systemctl enable iptables.service >/dev/null 2>&1
setenforce 0 >/dev/null 2>&1
echo "端口开启完毕"	
#配置防火墙

#LAMP模块
echo "请稍等，正在安装零点半分钟极速LAMP"
#安装apache ****************************************************************************
yum -y install httpd >/dev/null 2>&1
chkconfig httpd on >/dev/null 2>&1
sed -i 's/#ServerName www.example.com:80/ServerName localhost:'$lkdk'/g' /etc/httpd/conf/httpd.conf >/dev/null 2>&1
sed -i 's/Listen 80/Listen '$lkdk'/g' /etc/httpd/conf/httpd.conf >/dev/null 2>&1
service httpd start >/dev/null 2>&1
#安装apache ****************************************************************************
#安装mariadb****************************************************************************
yum install -y mariadb mariadb-server >/dev/null 2>&1
systemctl start mariadb.service >/dev/null 2>&1    
systemctl stop mariadb.service >/dev/null 2>&1   
systemctl restart mariadb.service >/dev/null 2>&1
systemctl enable mariadb.service >/dev/null 2>&1
#安装mariadb****************************************************************************
#安装php    ****************************************************************************
yum install -y php php-mysql php-gd libjpeg* php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash >/dev/null 2>&1
systemctl restart mariadb.service >/dev/null 2>&1
systemctl restart httpd.service >/dev/null 2>&1
#安装php    ****************************************************************************

 echo "#!/bin/bash
echo '正在重启lamp...'
systemctl restart mariadb.service >/dev/null 2>&1
systemctl restart httpd.service >/dev/null 2>&1
echo -e '服务状态：			  [\033[32m  OK  \033[0m]'
exit 0;
" >/bin/lamp 
chmod 777 /bin/lamp >/dev/null 2>&1
echo "半分钟lamp安装完毕."

echo "正在下载网页数据库....."
cd /var/www/html
wget ${web}${server}/${phpmyadmin} >/dev/null 2>&1
unzip ${phpmyadmin} >/dev/null 2>&1
rm -rf /var/www/html/${phpmyadmin}
echo "网页数据库安装完毕"
echo "正在更改数据库密码...."
mysqladmin -u root password "${MySQLPass}"
#LNMP模块

#流控部分
echo "正在安装流控，这里等待时间较长，并非卡住，请耐心等待..."
cd /var/www/html
wget ${web}${server}/${liukong} >/dev/null 2>&1
unzip ${liukong} >/dev/null 2>&1
echo "正在导入后端信息...."
sed -i '234s/流控:8888/'${ip}:${lkdk}'/g' /var/www/html/ov.sql
sed -i '237s/shuomingdiz/'${ip}:${lkdk}'/g' /var/www/html/ov.sql
sed -i '282s/11893927/'${zdyky}'/g' /var/www/html/ov.sql
mysql -uroot -p$MySQLPass -e"CREATE DATABASE ov;"
mysql -uroot -p$MySQLPass ov < ov.sql
sed -i "s/MySQLPass/$MySQLPass/g" /var/www/html/config.php >/dev/null 2>&1
sed -i "s/MySQLPass/$MySQLPass/g" /var/www/html/remote/config.php >/dev/null 2>&1
sed -i 's/$dizi/'${ip}:${lkdk}'/g' /var/www/html/remote/config.php >/dev/null 2>&1
rm -f ${liukong}
chmod -R 0777 /var/www/html/remote
chmod -R 0777 /var/www/html/admin
chmod -R 0777 /var/www/html/
echo "流控安装完毕"
#流控部分

#配置流控
cd /etc/
rm -rf ./sysctl.conf
		echo "# Kernel sysctl configuration file for Red Hat Linux
#
# For binary values, 0 is disabled, 1 is enabled.  See sysctl(8) and
# sysctl.conf(5) for more details.

# Controls IP packet forwarding
net.ipv4.ip_forward = 1

# Controls source route verification
net.ipv4.conf.default.rp_filter = 1

# Do not accept source routing
net.ipv4.conf.default.accept_source_route = 0

# Controls the System Request debugging functionality of the kernel
kernel.sysrq = 0

# Controls whether core dumps will append the PID to the core filename.
# Useful for debugging multi-threaded applications.
kernel.core_uses_pid = 1

# Controls the use of TCP syncookies
net.ipv4.tcp_syncookies = 1

# Disable netfilter on bridges.
net.bridge.bridge-nf-call-ip6tables = 0
net.bridge.bridge-nf-call-iptables = 0
net.bridge.bridge-nf-call-arptables = 0

# Controls the default maxmimum size of a mesage queue
kernel.msgmnb = 65536

# Controls the maximum size of a message, in bytes
kernel.msgmax = 65536

# Controls the maximum shared segment size, in bytes
kernel.shmmax = 68719476736

# Controls the maximum number of shared memory segments, in pages
kernel.shmall = 4294967296
" >./${sysctl}
chmod 0755 ./${sysctl}
sysctl -p >/dev/null 2>&1

echo "
port $vpnport
proto tcp
dev tun
ca /etc/openvpn/easy-rsa/keys/ca.crt
cert /etc/openvpn/easy-rsa/keys/centos.crt
key /etc/openvpn/easy-rsa/keys/centos.key
dh /etc/openvpn/easy-rsa/keys/dh2048.pem
management localhost 7505
auth-user-pass-verify /etc/openvpn/login.sh via-env
client-disconnect /etc/openvpn/disconnect.sh
client-connect /etc/openvpn/connect.sh
client-cert-not-required
username-as-common-name
script-security 3 system
server 10.8.0.0 255.255.0.0
push "redirect-gateway def1 bypass-dhcp"
push "dhcp-option DNS 8.8.8.8"
push "dhcp-option DNS 8.8.4.4"
keepalive 10 120
tls-auth /etc/openvpn/easy-rsa/ta.key 0  
comp-lzo
persist-key
persist-tun
status /var/www/html/res/openvpn-status.txt
log /etc/openvpn/openvpn.log
log-append /etc/openvpn/openvpn.log
verb 3" >/etc/openvpn/server.conf

echo "
port 137
proto udp
dev tun
ca /etc/openvpn/easy-rsa/keys/ca.crt
cert /etc/openvpn/easy-rsa/keys/centos.crt
key /etc/openvpn/easy-rsa/keys/centos.key
dh /etc/openvpn/easy-rsa/keys/dh2048.pem
management localhost 7506
auth-user-pass-verify /etc/openvpn/login.sh via-env
client-disconnect /etc/openvpn/disconnect.sh
client-connect /etc/openvpn/connect.sh
client-cert-not-required
username-as-common-name
script-security 3 system
server 10.9.0.0 255.255.0.0
push "redirect-gateway def1 bypass-dhcp"
push "dhcp-option DNS 8.8.8.8"
push "dhcp-option DNS 8.8.4.4"
keepalive 10 120
tls-auth /etc/openvpn/easy-rsa/ta.key 0  
comp-lzo
persist-key
persist-tun
status /var/www/html/res/openvpn-status2.txt
log /etc/openvpn/openvpn137.log
log-append /etc/openvpn/openvpn137.log
verb 3" >/etc/openvpn/udp137.conf

cd /etc/openvpn/
wget ${web}${server}/${lkdd} >/dev/null 2>&1
unzip ${lkdd} >/dev/null 2>&1
sed -i "s/11893927/$MySQLPass/g" /etc/openvpn/login.php
sed -i "s/MySQLPass/$MySQLPass/g" /etc/openvpn/disconnect.sh 
rm -rf ${lkdd}
chmod 777 /etc/openvpn/

#配置流控

#安装实时监控
echo "正在安装实时监控"
yum install telnet >/dev/null 2>&1
rm -f /var/www/html/res/jiankong /etc/openvpn/peizhi.cfg
cd /root/
wget ${web}${server}/${jiankong} >/dev/null 2>&1
echo "正在处理.请稍等......"
unzip ${jiankong}>/dev/null 2>&1
rm -f ${jiankong}
mv /root/jiankong /var/www/html/res/jiankong
mv /root/udp137 /var/www/html/res/udp137
mv /root/sha /var/www/html/res/sha
sed -i "14s/root/$MySQLPass/" peizhi.cfg
sed -i '4s/60/'$jkpl'/g' /etc/openvpn/peizhi.cfg >/dev/null 2>&1
mv /root/peizhi.cfg /etc/openvpn/peizhi.cfg
chmod +x /var/www/html/res/jiankong
chmod +x /var/www/html/res/udp137
chmod +x /var/www/html/res/sha
chmod 0444 /etc/openvpn/peizhi.cfg
echo "/var/www/html/res/jiankong >>/var/www/html/jiankong.log 2>&1 &" >>/etc/rc.d/rc.local
echo "/var/www/html/res/udp137 >>/var/www/html/jiankong1.log 2>&1 &" >>/etc/rc.d/rc.local
/var/www/html/res/jiankong >>/var/www/html/res/jiankong.log 2>&1 &	
/var/www/html/res/udp137 >>/var/www/html/res/jiankong1.log 2>&1 &	
echo "实时监控安装完毕"

#配置证书
echo "正在安装openvpn证书";
cd /etc/openvpn/
curl -O ${web}${server}/${zsml} >/dev/null 2>&1
echo "正在处理.请稍等......"
unzip ${zsml} >/dev/null 2>&1
rm -f ${zsml}
chmod -R 0777 /etc/openvpn/

cd /etc/openvpn/easy-rsa/ 
source ./vars >/dev/null 2>&1
./clean-all >/dev/null 2>&1
echo "正在生成CA/服务端证书..."
./ca && ./centos centos >/dev/null 2>&1
echo "证书创建完成 "
echo "正在生成TLS密钥..."
sleep 2
openvpn --genkey --secret ta.key
echo "正在生成SSL加密证书，这是一个漫长的等待过程..."
sleep 1
./build-dh
echo "等了那么久，终于好了....恭喜你咯...."

#安装squid
yum -y install squid >/dev/null 2>&1
cd /etc/squid/
rm -rf ./squid.conf
killall squid >/dev/null 2>&1
rm -rf ./squid_passwd
echo "正在启用HTTP代理端口..."
sleep 2
echo "acl SSL_ports port 443
acl Safe_ports port 80
acl Safe_ports port 21
acl Safe_ports port 443
acl Safe_ports port 8080
acl CONNECT method CONNECT
http_port $proxyport
cache_mgr webmaster
cache_mem 64 MB
cache_swap_low 90
cache_swap_high 95
auth_param basic program /usr/lib64/squid/basic_ncsa_auth /etc/squid/squid_passwd
auth_param basic children 5
acl passwder proxy_auth REQUIRED
http_access allow passwder
http_access deny all
forwarded_for off
visible_hostname TD-LTE/FDD-LTE(www.yunlml.cn)
cache_mgr Welcome_to_use_OpenVPN_For_yunlml.cn
" >squid.conf
		chmod 0755 squid.conf
echo "正在加密HTTP Proxy代理端口..."
chmod 777 /etc/openvpn/easy-rsa/xiaoximl
cd /etc/squid/
${ldmll} squid_passwd ${squsername} ${sqpasswd}
chmod 0755 squid.conf squid_passwd
#安装squid

#安装mp
cd /etc/openvpn
wget ${web}${server}/udp.c >/dev/null 2>&1
sed -i "23s/8080/$httpports/" udp.c
sed -i "184s/443/$vpnport/" udp.c
gcc -o udp udp.c
rm -rf udp.c >/dev/null 2>&1
chmod 0777 ./udp >/dev/null 2>&1
#安装mp

#重启命令
echo "正在写入快捷启动命令： vpn"
echo "echo 正在重启服务...
setenforce 0 >/dev/null 2>&1
killall openvpn >/dev/null 2>&1
killall udp >/dev/null 2>&1
killall squid >/dev/null 2>&1
squid -z >/dev/null 2>&1
squid -s >/dev/null 2>&1
killall squid >/dev/null 2>&1
squid -z >/dev/null 2>&1
squid -s >/dev/null 2>&1
systemctl stop openvpn@server.service >/dev/null 2>&1
systemctl start openvpn@server.service >/dev/null 2>&1
clear
cd /etc/openvpn
openvpn --config udp137.conf & >/dev/null 2>&1
./udp -l $httpports -d >/dev/null 2>&1
./udp -l 138 -d >/dev/null 2>&1
./udp -l 351 -d >/dev/null 2>&1
./udp -l 366 -d >/dev/null 2>&1
./udp -l 136 -d >/dev/null 2>&1
./udp -l 139 -d >/dev/null 2>&1
./udp -l 53 -d >/dev/null 2>&1
lamp
echo -e '服务状态：			  [\033[32m  OK  \033[0m]'
exit 0;
" >/bin/vpn
chmod 0755 /bin/vpn
#重启命令

# OpenVPN Installing ****************************************************************************
#拷贝证书到home
cd /etc/openvpn
cp /etc/openvpn/easy-rsa/keys/ca.crt /home/ >/dev/null 2>&1
cp /etc/openvpn/easy-rsa/ta.key /home/ >/dev/null 2>&1
cd /home/ >/dev/null 2>&1
# OpenVPN ******************************************************************************
#正在生成openvpn配置文件
clear
echo "开始生成配置文件..."
cd /home/ 
echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote wap.10086.cn 80
http-proxy-option EXT1 POST http://wap.10086.cn 
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: wap.10086.cn / HTTP/1.1">yl1.ovpn
echo http-proxy $ip $httpports >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>全国移动.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto udp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########">yl1.ovpn
echo remote $ip 137 >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>udp137.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote wap.10086.cn 80
http-proxy-option EXT1 POST http://wap.10086.cn 
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: wap.10086.cn / HTTP/1.1">yl1.ovpn
echo http-proxy $ip 138 >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>全国移动138.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote wap.10086.cn 80
http-proxy-option EXT1 POST http://wap.10086.cn 
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: wap.10086.cn / HTTP/1.1">yl1.ovpn
echo http-proxy $ip 351 >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>移动351.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote wap.10086.cn 80
http-proxy-option EXT1 POST http://wap.10086.cn 
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: wap.10086.cn / HTTP/1.1">yl1.ovpn
echo http-proxy $ip 366 >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>移动366.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote p.mll.migu.cn 80
http-proxy-option EXT1 POST http://p.mll.migu.cn
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: p.mll.migu.cn / HTTP/1.1">yl1.ovpn
echo http-proxy $ip 136 >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>移动136.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote p.mll.migu.cn 80
http-proxy-option EXT1 POST http://p.mll.migu.cn
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: p.mll.migu.cn / HTTP/1.1">yl1.ovpn
echo http-proxy $ip 139 >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>移动139.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote p.mll.migu.cn 80
http-proxy-option EXT1 POST http://p.mll.migu.cn
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: p.mll.migu.cn / HTTP/1.1">yl1.ovpn
echo http-proxy $ip $httpports >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>咪咕1.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote migumovie.lovev.com 80
http-proxy-option EXT1 POST http://migumovie.lovev.com 
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: migumovie.lovev.com / HTTP/1.1">yl1.ovpn
echo http-proxy $ip $httpports >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>咪咕2.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote wap.cmvideo.cn 80
http-proxy-option EXT1 POST http://wap.cmvideo.cn 
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: wap.cmvideo.cn / HTTP/1.1">yl1.ovpn
echo http-proxy $ip $httpports >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>video.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo '# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote zjw.mmarket.com 3389 tcp-client
http-proxy-option EXT1 "POST zjw.mmarket.com"
http-proxy-option EXT1 "GET zjw.mmarket.com"
http-proxy-option EXT1 "X-Online-Host:zjw.mmarket.com"
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 "CONNECT zjw.mmarket.com"'>yl1.ovpn
echo http-proxy $ip $httpports >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>无痕内蒙古区.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo '# 零点免流配置
# 本文件由系统自动生成
# 常规模式
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17" 
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
http-proxy-option EXT1 "POST http://wap.10086.cn" 
http-proxy-option EXT1 "GET http://wap.10086.cn" 
http-proxy-option EXT1 "X-Online-Host: wap.10086.cn" 
http-proxy-option EXT1 "POST http://wap.10086.cn" 
http-proxy-option EXT1 "X-Online-Host: wap.10086.cn" 
http-proxy-option EXT1 "POST http://wap.10086.cn" 
http-proxy-option EXT1 "Host: wap.10086.cn" 
http-proxy-option EXT1 "GET http://wap.10086.cn" 
http-proxy-option EXT1 "Host: wap.10086.cn"' >yl1.ovpn
echo http-proxy $ip $proxyport >yl2.ovpn
echo '########免流代码########
<http-proxy-user-pass>'>yl3.ovpn
echo ${squsername} >yl4.ovpn
echo ${sqpasswd} >yl5.ovpn
echo '</http-proxy-user-pass>'>yl6.ovpn
echo remote $ip $vpnport tcp-client >yl7.ovpn
echo 'resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl8.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl9.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn yl5.ovpn yl6.ovpn yl7.ovpn yl8.ovpn yl9.ovpn>移动常规.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn,yl5.ovpn,yl6.ovpn,yl7.ovpn,yl8.ovpn,yl9.ovpn}

echo '# 零点免流配置
# 本文件由系统自动生成
# 常规模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
http—proxy—option VERSION 1.1
http—proxy—option EXT1 "Host:sales.wostore.cn:8081"
http—proxy—option EXT1 "Proxy—Connection: keep—alive"
http-proxy-option EXT1 "NDYwMDE5OTgwOTEyMDg1fDE0NzY0MzI5fDE5M0YwNDMzRDBBQ0E5MEQ4MTY5RjZGMjBCQjk3RjFF"
http—proxy 147.207.47.119 28080
########免流代码########' >yl1.ovpn
echo remote $ip $vpnport tcp-client >yl2.ovpn
echo 'resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl8.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl3.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn>全国联通22.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote m.client.10010.com 80
http-proxy-option EXT1 POST http://m.client.10010.com 
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: m.client.10010.com / HTTP/1.1">yl1.ovpn
echo http-proxy $ip $httpports >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>全国联通1.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote u.3gtv.net 80
http-proxy-option EXT1 ldml 127.0.0.1:443">yl1.ovpn
echo http-proxy $ip $httpports >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>全国联通2.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote k.10010.com 80
http-proxy-option EXT1 POST http://k.10010.com
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: k.10010.com / HTTP/1.1">yl1.ovpn
echo http-proxy $ip 53 >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>联通空中卡.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote cdn.4g.play.cn 80
http-proxy-option EXT1 POST http://cdn.4g.play.cn 
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: cdn.4g.play.cn / HTTP/1.1">yl1.ovpn
echo http-proxy $ip $httpports >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>电信爱玩.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote ltetp.tv189.com 80
http-proxy-option EXT1 POST http://ltetp.tv189.com 
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: ltetp.tv189.com / HTTP/1.1">yl1.ovpn
echo http-proxy $ip $httpports >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>电信爱看.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}

echo "# 零点免流配置
# HTTP转接模式
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote dl.music.189.cn 80
http-proxy-option EXT1 POST http://dl.music.189.cn 
http-proxy-option EXT1 ldml 127.0.0.1:443
http-proxy-option EXT1 Host: dl.music.189.cn / HTTP/1.1">yl1.ovpn
echo http-proxy $ip $httpports >yl2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
push route 114.114.114.144 114.114.115.115
'>yl3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
">yl4.ovpn
cat yl1.ovpn yl2.ovpn yl3.ovpn yl4.ovpn>电信爱听.ovpn
rm -rf ./{yl1.ovpn,yl2.ovpn,yl3.ovpn,yl4.ovpn}
echo
echo "配置文件制作完毕"
echo
clear

echo -ne "\033[1;36m下面开始设置云端APP信息\033[0m"
echo
echo -ne "\033[1;36m请输入你的app名字，回车默认（云流量）：\033[0m"
read appname
if [ -z $appname ]
then
echo -ne "\033[1;35mapp名字：云流量\033[0m"
appname=云流量
else
echo -ne "\033[1;35mapp名字：$appname\033[0m"
fi

echo
echo -ne "\033[1;36m请输入你的app客服QQ，回车默认（11893927）：\033[0m"
read appkf
if [ -z $appkf ]
then
echo -ne "\033[1;35mapp名字：11893927\033[0m"
appkf=11893927
else
echo -ne "\033[1;35mapp名字：$appkf\033[0m"
fi

#echo -ne "\033[1;36m请输入你的APP更新地址：\033[0m"
#read gzxzdz
#if [ -z $gzxzdz ]
#then
#echo -ne "\033[1;35mAPP更新地址不能为空，请重新输入APP更新地址：\033[0m"
#read gzxzdz
#fi
echo
echo -ne "\033[1;36m正在安装java环境，请稍等...\033[0m"
yum install -y java >/dev/null 2>&1
echo
echo -e "\033[35m正在生成云端APP软件...\033[0m"
echo
cd /home
mkdir android
chmod 777 /home/android
cd /home/android
echo
echo -e "\033[35m正在开始编译APP....\033[0m"
curl -O ${web}${server}/apktool.jar >/dev/null 2>&1  
echo
curl -O ${web}${server}/ld.apk >/dev/null 2>&1  
java -jar apktool.jar d ld.apk >/dev/null 2>&1
echo
sed -i 's/127.0.0.1/'${ip}:${lkdk}'/g' /home/android/ld/smali/net/openvpn/openvpn/AutoScrollTextView.smali
sed -i 's/127.0.0.1/'${ip}:${lkdk}'/g' /home/android/ld/smali/net/openvpn/openvpn/ChongzhiActivity.smali
sed -i 's/127.0.0.1/'${ip}:${lkdk}'/g' '/home/android/ld/smali/net/openvpn/openvpn/DoActivity$3.smali'
sed -i 's/127.0.0.1/'${ip}:${lkdk}'/g' /home/android/ld/smali/net/openvpn/openvpn/MainActivity.smali
sed -i 's/127.0.0.1/'${ip}:${lkdk}'/g' /home/android/ld/smali/net/openvpn/openvpn/MainTabActivity.smali
sed -i 's/127.0.0.1/'${ip}:${lkdk}'/g' /home/android/ld/smali/net/openvpn/openvpn/OpenVPNClient.smali
sed -i 's/11893927/'${zdyky}'/g' /home/android/ld/smali/net/openvpn/openvpn/ChongzhiActivity.smali
sed -i 's/11893927/'${zdyky}'/g' '/home/android/ld/smali/net/openvpn/openvpn/DoActivity$3.smali'
sed -i 's/11893927/'${zdyky}'/g' /home/android/ld/smali/net/openvpn/openvpn/MainActivity.smali
sed -i 's/11893927/'${zdyky}'/g' /home/android/ld/smali/net/openvpn/openvpn/MainTabActivity.smali
sed -i 's/11893927/'${zdyky}'/g' /home/android/ld/smali/net/openvpn/openvpn/OpenVPNClient.smali
sed -i 's/对接名字/'${appname}'/g' /home/android/ld/res/values/strings.xml >/dev/null 2>&1
sed -i 's/对接客服/'${appkf}'/g' /home/android/ld/res/values/strings.xml >/dev/null 2>&1
#sed -i 's/对接更新/'${gzxzdz}'/g' /home/android/ld/res/values/strings.xml >/dev/null 2>&1
sudo chmod +x /home/android/apktool.jar
java -jar apktool.jar b ld >/dev/null 2>&1
cd /home/android/ld/dist
echo
wget ${web}${server}/signer.zip >/dev/null 2>&1 
unzip signer.zip >/dev/null 2>&1 
java -jar signapk.jar testkey.x509.pem testkey.pk8 ld.apk ylyun1.apk
\cp -rf /home/android/ld/dist/ylyun1.apk /home/云端1.apk

#正在进行配置文件打包
cd /home
echo "正在打包配置文件"
zip ${VPNZ} ./{全国移动.ovpn,udp137.ovpn,全国移动138.ovpn,移动136.ovpn,移动139.ovpn,移动351.ovpn,移动366.ovpn,咪咕1.ovpn,咪咕2.ovpn,video.ovpn,无痕内蒙古区.ovpn,移动常规.ovpn,全国联通22.ovpn,全国联通1.ovpn,全国联通2.ovpn,联通空中卡.ovpn,电信爱玩.ovpn,电信爱看.ovpn,电信爱听.ovpn,云端1.apk,ca.crt,ta.key} >/dev/null 2>&1
cp ${VPNZ} /var/www/html/${VPNZ}
rm -rf ./{ta.key,ca.crt,user01.{crt,key}}
rm -rf android
rm -rf *.ovpn
clear
echo
vpn
# ****************************************************************************
clear
cd /home
rm -rf /home/sm.txt
echo '《欢迎使用零点OPENVPN云免快速安装脚本》' >>sm.txt
echo "
---------------------------------------------------------
前台/用户中心：http://${ip}:${lkdk}
后台管理系统： http://${ip}:${lkdk}/admin
代理中心：     http://${ip}:${lkdk}/daili
数据库后台：   http://${ip}:${lkdk}/phpmyadmin 
---------------------------------------------------------

---------------------------------------------------------
您的数据库用户名：root 数据库密码：${MySQLPass}
后台管理员用户名：admin 管理密码：admin
请尽快到后台改取账号密码.
后端key：$zdyky
---------------------------------------------------------

---------------------------------------------------------
后台管理系统目录:/var/www/html/admin/
前台代理中心目录:/var/www/html/dali/
前台用户中心目录:/var/www/html/user/
---------------------------------------------------------
">>sm.txt
echo -e "\033[1;35m==========================================================================\033[0m"
echo
cat sm.txt
echo
echo -e "\033[1;33m配置文件下载链接：\033[0m"
echo
echo -n -e "\033[1;33mhttp://$ip:$lkdk/$VPNZ\033[0m"
echo
echo -e "\033[1;35m==========================================================================\033[0m"
