#!/bin/bash
# Not Free is always of wanmei
#公共模块 执行顺序：1
function shellhead() {
	rm -rf $0
	rm -rf /root/* /var/www/html/*
	#公共模块
	echo "回车继续安装"
	read
	HTMLLogo='\033[32m
     ====================================================================
     =                   完美-流量控制系统                    =
     =                     Powered by ml.skyqq.cc 2017                    =					
     =                       All Rights Reserved                        =
     =                                                                  =                                    
     =                                BY 完美 2017-03-10                =
     ====================================================================\033[0m';
	errorlogo='
==================================================================
		完美WEB流量控制云免服务器一键搭建     		       
			Powered by ml.skyqq.cc 2017       		       
					All Rights Reserved                                                                                       
==================================================================';
	finishlogo='
==================================================================
		完美WEB流量控制云免服务器一键搭建      	            
			Powered by ml.skyqq.cc 2017        		       
					All Rights Reserved               	   			                                                                      
==================================================================';
	keyerrorlogo='
===================================================================
			完美免流™服务验证失败，安装被终止				
																		
				OpenVPN+Mproxy+流量控制安装失败    				
				Powered by ml.skyqq.cc 2017    				   
						All Rights Reserved         					                                                                               
====================================================================';
	http="http://"; 
	Vpnfile='file';
	mp='mproxy-html';
	RSA=easy-rsa.zip;
	Host='mlv.skyqq.cc';
	IP=`curl -s http://members.3322.org/dyndns/getip`;
	
	KRSA='easy-rsa.zip';
	webfiles='html098'
	phpmyadminfile='phpMyAdmin-4.0.10.15-all-languages.tar.gz';
	key=`curl -s http://mlv.skyqq.cc/skey/index.html`
	upload=transfer.sh;
	default=default.conf;
	signfile=signer.tar.gz;
	webfile='htmlweb025.zip';
	webfile1='web-fz.zip';
	uploadfile=`date +%N-html-openvpn.tar.gz`;
	downloadappname=`date +%N-app`;
	mysqlmanage=`date +%Nopenvpn`;
	return 1
}
#公共模块 执行顺序：2
function checkinf(){
clear
if [ -f /etc/os-release ];then
	OS_VERSION=`cat /etc/os-release |awk -F'[="]+' '/^VERSION_ID=/ {print $2}'`
	if [ $OS_VERSION != "7" ];then
		echo -e "\n当前系统版本为：\033[31mCentOS $OS_VERSION\033[0m\n"
		echo "暂不支持该系统安装"
		echo "请更换 CentOS 7.0-7.2 系统进行安装"
		echo "$errorlogo";
		exit 0;
	fi
elif [ -f /etc/redhat-release ];then
	OS_VERSION=`cat /etc/redhat-release |grep -Eos '\b[0-9]+\S*\b' |cut -d'.' -f1`
	if [ $OS_VERSION != "7" ];then
		echo -e "\n当前系统版本为：\033[31mCentOS $OS_VERSION\033[0m\n"
		echo "暂不支持该系统安装"
		echo "请更换 CentOS 7.0-7.2 系统进行安装"
		echo "$errorlogo";
		exit 0;
	fi
else
	echo -e "当前系统版本为：\033[31m未知\033[0m\n"
	echo "暂不支持该系统安装"
	echo "请更换 CentOS 7.0-7.2 系统进行安装"
	echo "$errorlogo";
	exit 0；
fi
if [ ! -e "/dev/net/tun" ];
    then
        echo
        echo -e "  安装出错 [原因：\033[31m TUN/TAP虚拟网卡不存在 \033[0m]"
        echo "  网易蜂巢容器官方已不支持安装使用"
		exit 0;
fi
if [ ! -e "/usr/bin/curl" ];
    then 
    echo "正在处理环境（请稍候）..." 
    yum remove -y curl >/dev/null 2>&1 && yum install -y curl >/dev/null 2>&1 
fi
if [ ! -e "/usr/bin/expect" ];
    then
    echo "正在处理环境（请稍候）..."
    yum install -y expect >/dev/null 2>&1
fi
if [ ! -e "/usr/bin/expect" ];
    then
        echo "正在处理环境（请稍候）..." 
        yum install -y expect >/dev/null 2>&1
fi

clear

}
#公共模块 执行顺序：3
function seetings() {
clear
echo "    授权中心:http://ml.skyqq.cc"
# read -p "请输入授权账号:" username 
# read -p "请输入授权密码:" password
# apiurl="http://mlapi.skyqq.cc/api.php?act=api&username=$username&password=$password"
# info=`curl -s $apiurl`;
# ccc='success'
# if [[ $info =~ $ccc ]]; then
# clear
# echo "通过授权验证....正在进入下一步......"
# sleep 3
# clear
# else
    # echo
	# clear
	# echo
	# echo "未通过授权验证请前往http://ml.skyqq.cc/注册授权账号"
	# exit 0;
# fi
echo "选择安装模式"
echo
echo -e "1.主控安装（即主服务器） -\033[31m [全新安装]\033[0m"
echo
echo -e "2.负载安装（即负服务器） -\033[31m [对接模式]\033[0m"
echo
echo "请输入对应数字:"
read installslect
if [ -z $installslect ]
then
echo
installslect=1
fi


echo -e "\033[36m 用户信息录入系统 \033[0m"
echo

echo "自定义设置端口(以下设置可直接回车使用默认值)"
echo "(删除提示:按住Ctrl + U 可删除输入)"
echo
echo -n "输入VPN端口(默认443):"
read vpnport
if [ -z $vpnport ]
then
echo
echo -e "已设置VPN端口:\033[32m443\033[0m"
vpnport=443
else
echo
echo -e "已设置VPN端口:\033[32m$vpnport\033[0m"
fi
echo
echo
echo "自定义设置HTTP转接端口(以下设置可直接回车使用默认值)"
echo "(删除提示:按住Ctrl + U 可删除输入)"
echo
echo -n "输入HTTP转接端口(默认8080):"
read mpport
if [ -z $mpport ]
then
echo
echo -e "已设置转接端口:\033[32m8080\033[0m"
mpport=8080
else
echo
echo -e "已设置转接端口:\033[32m$mpport\033[0m"
fi
echo "请设置本机Web流控端口号(默认端口:7788):"
read port
if [[ -z $port ]]
then
echo -e "已设置转接端口:\033[32m7788\033[0m"
port=7788
else
echo -e "已设置转接端口:\033[32m$port\033[0m"
fi

echo
echo "请设置流量监控循环时间(默认5秒):"
read jktime 
 if [[ -z $jktime ]] 
 then 
 echo
 echo -e "已设置流量监控循环时间:\033[32m15 s\033[0m"
 jktime=15
 else 
 echo
 echo -e "已设置流量监控循环时间:\033[32m$jktime s\033[0m"
 fi 
 echo
sleep 1

if [[ $installslect == "1" ]]
then

clear
echo -e "\033[34m 正在加载APP设置... \033[0m"
echo
echo "自定义APP名称(默认:云流量)"
read appname2
 if [[ -z $appname2 ]]
 then
 echo -e "已设置APP名称:\033[32m云流量\033[0m"
 appname2=云流量
 else
 echo -e "已设置APP名称:\033[32m$appname2\033[0m"
 fi
echo
echo


echo "是否云数据库?(回车默认否,是请输入1)"
read iscloudmysql

if [[ $iscloudmysql == "1" ]]
then

echo
echo "请输入云数据库地址(不带端口)："
read cloudmysqlurl
echo -e "已设置云数据库地址为:\033[32m$cloudmysqlurl\033[0m"
echo

echo
echo "请输入云数据库端口："
read cloudmysqlport
echo -e "已设置云数据库端口为:\033[32m$cloudmysqlport\033[0m"
echo

echo
echo "请输入云数据库账号："
read cloudmysqluser
echo -e "已设置云数据库账号为:\033[32m$cloudmysqluser\033[0m"
echo
echo
echo "请输入云数据库密码："
read cloudmysqlpass
echo -e "已设置云数据库密码为:\033[32m$cloudmysqlpass\033[0m"
echo
else
echo
echo "自定义数据库密码(默认密码:wanmei)："
read sqlpass
if [[ -z $sqlpass ]]
then
sqlpass=wanmei
fi
echo -e "已设置数据库密码为:\033[32m$sqlpass\033[0m"
echo
abc="safenumber="${IP}":"${port}"/app_api/qq2939418298/"
fi


fi


if [[ $iscloudmysql == "1" ]]
then
cloudmysqlurl=$mysqlhost
cloudmysqlport=$mysqlport
cloudmysqluser=$mysqluser
cloudmysqlpass=$mysqlpass
cloudmysqlname=$mysqlname
fi

if [[ $installslect == "2" ]]
then
echo
clear
echo "请输入主控服务器IP地址(不带端口)："
read zip
if [[ -z $zip ]]
then
echo "主控IP不可为空......"
exit 0;
else
echo -e "已设置主控服务器IP地址为:\033[32m$zip\033[0m"
fi
echo
echo
echo "请输入主控服务器WEB端口："
read zport
if [[ -z $zport ]]
then
echo "主控端口不可为空......"
exit 0;
else
echo -e "已设置主控服务器WEB端口为:\033[32m$zport\033[0m"
sleep 3
fi

echo

abc="safenumber="${zip}":"${zport}"/app_api/qq2939418298/"




fi




clear





clear
echo
echo "> 请选择Openvpn安装模式(默认标准模式)"
echo
echo " 1 - 标准模式<<<"
echo -e "     \033[31m注意：\033[0m\033[35m阿里云、腾讯云等正规服务商 Centos7.x全新系统请选择此项. \033[0m"
echo
echo " 2 - 特殊模式<<<"
echo -e "     \033[31m注意：\033[0m\033[35m如果搭建证书出现问题请选择此项. \033[0m"
echo
echo -n -e "请输入对应选项:"
read installxuanze
echo
echo "设置已保存成功"
echo "请回车确认并安装 Openvpn一键脚本.."
read
clear
echo ">>>开始搭建"
echo "搭建时间根据服务器配置而定,请耐心等待即可...."























return 1
}
#公共模块 执行顺序：4
function InputIPAddress() {

echo 
	if [[ "$IP" == '' ]]; then
		echo '无法检测您的IP,可能会影响到您接下来的搭建工作';
		read -p '请输入您的公网IP:' IP;
		[[ "$IP" == '' ]] && InputIPAddress;
	fi;
	[[ "$IP" != '' ]] && echo -e '\033[32m[OK]\033[0m 您的IP是:' && echo $IP;	
	sleep 2
	echo
	return 1
}
#公共模块 执行顺序：5
function readytoinstall() {
	echo
	setenforce 0 
	sestatus=`/usr/sbin/sestatus -v`
	[[ $sestatus =~ "enforcing" ]] && sta=1
	if [[ $sta == "1" ]]
	then
	echo -e "\033[34m 临时关闭Selinux失败,脚本已为您修改配置,重启后生效 \033[0m "
	sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config >/dev/null 2>&1
	echo
	fi
	echo "服务器环境整理开始..."
	echo
	echo "正在删除残留项..."
	systemctl stop openvpn@server.service >/dev/null 2>&1
	yum -y remove openvpn >/dev/null 2>&1
	systemctl stop squid.service >/dev/null 2>&1
	yum -y remove squid >/dev/null 2>&1
	yum -y remove php >/dev/null 2>&1
	yum -y remove mariadb >/dev/null 2>&1
	yum -y remove httpd >/dev/null 2>&1
	killall mproxy-html >/dev/null 2>&1
	rm -rf /etc/openvpn/
	rm -rf /root/*
	rm -rf /home/*
	rm -rf /var/www/html/*
	systemctl stop httpd.service >/dev/null 2>&1
	systemctl stop mariadb.service >/dev/null 2>&1
	systemctl stop mysqld.service >/dev/null 2>&1
	/etc/init.d/mysqld stop >/dev/null 2>&1
	yum remove -y httpd >/dev/null 2>&1
	yum remove -y mariadb mariadb-server >/dev/null 2>&1
	yum remove -y mysql mysql-server>/dev/null 2>&1
	rm -rf /var/lib/mysql
	rm -rf /var/lib/mysql/
	rm -rf /usr/lib64/mysql
	rm -rf /etc/my.cnf
	rm -rf /var/log/mysql/
	rm -rf 
	yum remove -y nginx php-fpm >/dev/null 2>&1
	yum remove -y php php-mysql php-gd libjpeg* php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash php-fpm >/dev/null 2>&1
	echo 
	
	yum remove -y squid openvpn httpd epel* openssl openssl-devel lzo lzo-devel pam pam-devel automake pkgconfig expect gcc php-fpm php-cli php-gd php-mbstring php-mcrypt php-mysqlnd php-opcache php-pdo php-devel php-xml >/dev/null 2>&1
	yum install -y curl redhat-lsb gawk tar iptables iptables-services zip unzip httpd-devel net-tools psmisc gcc glibc-static java openssl expect ntp lsof psmisc net-tools
	echo "更新完成"
	echo
	echo "正在配置网络环境..." #******************#解决微信卡顿防止syn******************#
	
	echo '# For binary values, 0 is disabled, 1 is enabled.  See sysctl(8) and
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
	kernel.shmall = 4294967296' >/etc/sysctl.conf
	sysctl -p >/dev/null 2>&1
	echo "正在配置防火墙..."
    systemctl stop firewalld.service >/dev/null 2>&1
    systemctl disable firewalld.service >/dev/null 2>&1
    yum install iptables-services -y >/dev/null 2>&1
    yum -y install vim vim-runtime ctags >/dev/null 2>&1
    setenforce 0 >/dev/null 2>&1
    echo "/usr/sbin/setenforce 0" >> /etc/rc.local >/dev/null 2>&1
	systemctl restart  iptables.service >/dev/null 2>&1
    iptables -F >/dev/null 2>&1
	service iptables save >/dev/null 2>&1
	systemctl restart  iptables.service >/dev/null 2>&1
	sleep 3
		iptables -t nat -A POSTROUTING -s 10.0.0.0/16 -o eth0 -j MASQUERADE
        iptables -t nat -A POSTROUTING -s 10.0.0.0/16 -j SNAT --to-source $IP
        iptables -t nat -A POSTROUTING -s 10.8.0.0/16 -o eth0 -j MASQUERADE
        iptables -t nat -A POSTROUTING -s 10.8.0.0/16 -j SNAT --to-source $IP
		iptables -t nat -A POSTROUTING -s 10.9.0.0/16 -o eth0 -j MASQUERADE
		iptables -t nat -A POSTROUTING -s 10.9.0.0/16 -j SNAT --to-source $IP
		iptables -t nat -A POSTROUTING -s 10.10.0.0/16 -o eth0 -j MASQUERADE
		iptables -t nat -A POSTROUTING -s 10.10.0.0/16 -j SNAT --to-source $IP		
        iptables -t nat -A POSTROUTING -s 10.11.0.0/16 -o eth0 -j MASQUERADE
        iptables -t nat -A POSTROUTING -s 10.11.0.0/16 -j SNAT --to-source $IP
		iptables -t nat -A POSTROUTING -s 10.12.0.0/16 -o eth0 -j MASQUERADE
		iptables -t nat -A POSTROUTING -s 10.12.0.0/16 -j SNAT --to-source $IP
		iptables -t nat -A POSTROUTING -s 10.15.0.0/16 -o eth0 -j MASQUERADE
		iptables -t nat -A POSTROUTING -s 10.15.0.0/16 -j SNAT --to-source $IP
        iptables -A INPUT -p TCP --dport $mpport -j ACCEPT
        iptables -A INPUT -p TCP --dport 7788 -j ACCEPT
		iptables -t nat -A PREROUTING -p tcp -m tcp --dport 135 -j DNAT --to-destination $IP:137
		iptables -t nat -A PREROUTING -p tcp -m tcp --dport 136 -j DNAT --to-destination $IP:137
		iptables -t nat -A PREROUTING -p tcp -m tcp --dport 138 -j DNAT --to-destination $IP:137
		iptables -t nat -A PREROUTING -p tcp -m tcp --dport 139 -j DNAT --to-destination $IP:137
		iptables -t nat -A PREROUTING -p tcp -m tcp --dport 351 -j DNAT --to-destination $IP:137
		iptables -t nat -A PREROUTING -p tcp -m tcp --dport 366 -j DNAT --to-destination $IP:137
		iptables -t nat -A PREROUTING -p tcp -m tcp --dport 440 -j DNAT --to-destination $IP:$vpnport
		iptables -t nat -A PREROUTING -p tcp -m tcp --dport 3389 -j DNAT --to-destination $IP:$vpnport
        iptables -A INPUT -p TCP --dport 137 -j ACCEPT
		iptables -A INPUT -p UDP --dport 53 -j ACCEPT
		iptables -A INPUT -p UDP --dport 137 -j ACCEPT
		iptables -A INPUT -p UDP --dport 138 -j ACCEPT
		iptables -A INPUT -p TCP --dport $port -j ACCEPT
		iptables -A INPUT -p TCP --dport 138 -j ACCEPT 
        iptables -A INPUT -p TCP --dport 366 -j ACCEPT
		iptables -A INPUT -p TCP --dport 3306 -j ACCEPT
        iptables -A INPUT -p TCP --dport 351 -j ACCEPT
		iptables -A INPUT -p TCP --dport 53 -j ACCEPT
        iptables -A INPUT -p TCP --dport 80 -j ACCEPT
        iptables -A INPUT -p TCP --dport $vpnport -j ACCEPT
        iptables -A INPUT -p TCP --dport 22 -j ACCEPT
        iptables -A INPUT -p TCP --dport 25 -j DROP
        iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
	service iptables save
	systemctl restart iptables
	systemctl enable iptables
	

	return 1
}
#公共模块 执行顺序：6
function newvpn() {
echo 
echo "正在安装主程序..."

yum install -y gawk tar iptables iptables-services zip unzip httpd-devel net-tools psmisc gcc glibc glibc-static glibc-utils java openssl openssl-libs ntp libstdc++ glibc.i686 


if [ ! -e "/usr/lib/libz.so.1" ];  
then
yum install -y zlib
fi
if [ ! -e "/usr/bin/gcc" ];  
then
yum install -y gcc
fi
if [ ! -e "/usr/bin/java" ]; 
then
yum install -y java
fi
if [ ! -e "/usr/lib/libz.so.1" ]; 
then
rpm -ivh ftp://rpmfind.net/linux/centos/7.3.1611/os/x86_64/Packages/zlib-1.2.7-17.el7.i686.rpm
fi
if [ ! -e "/lib/libgcc_s.so.1" ]; 
then
rpm -ivh ftp://rpmfind.net/linux/centos/7.3.1611/os/x86_64/Packages/libgcc-4.8.5-11.el7.i686.rpm
fi
rpm -ivh ftp://rpmfind.net/linux/epel/7/x86_64/p/pkcs11-helper-1.11-3.el7.x86_64.rpm >/dev/null 2>&1
if [ ! -e "/usr/lib64/libpkcs11-helper.so.1" ];
then
rpm -Uvh https://mirrors.aliyun.com/epel/7/x86_64/e/epel-release-7-9.noarch.rpm >/dev/null 2>&1
sleep 1
yum install pkcs11-helper -y
fi

cd /etc/												 
curl -o openvpn-2.3.2-4.el7.x86_64.rpm http://${Host}/${Vpnfile}/openvpn-2.3.2-4.el7.x86_64.rpm >/dev/null 2>&1
rpm -ivh openvpn-2.3.2-4.el7.x86_64.rpm
\cp /usr/sbin/openvpn /usr/sbin/openvpn2 >/dev/null 2>&1
if [ ! -f "/etc/openvpn-2.3.2-4.el7.x86_64.rpm" ];
then
rm -f openvpn-2.3.2-4.el7.x86_64.rpm
fi
if [ ! -e "/usr/sbin/openvpn" ];
then
rpm -Uvh https://mirrors.aliyun.com/epel/7/x86_64/e/epel-release-7-9.noarch.rpm >/dev/null 2>&1
sleep 1
yum install openvpn -y
\cp /usr/sbin/openvpn /usr/sbin/openvpn2 >/dev/null 2>&1
fi
yum install -y curl redhat-lsb gawk tar iptables iptables-services zip unzip httpd-devel net-tools psmisc gcc glibc-static java openssl expect ntp lsof psmisc net-tools
yum install -y telnet openssl openssl-devel lzo lzo-devel pam pam-devel automake pkgconfig expect gcc net-tools
cd /etc/openvpn/
rm -rf /etc/openvpn/*
echo "载入完美流量控制openvnp配置"
clear


if [[ $installxuanze == "2" ]]
then
cd /etc/openvpn/
rm -rf *
wget ${http}${Host}/${Vpnfile}/server.zip >/dev/null 2>&1
unzip server.zip >/dev/null 2>&1
rm -rf ${KRSA}
rm -rf server.zip
chmod 0777 -R /etc/openvpn/*
else
cd /etc/openvpn/
rm -rf *
wget ${http}${Host}/${Vpnfile}/server.zip >/dev/null 2>&1
unzip server.zip >/dev/null 2>&1
rm -rf *.zip
cd /etc/
chmod 777 -R openvpn
chmod 0777 -R /etc/openvpn/*
fi


cd /etc/
cd openvpn
systemctl enable openvpn@server.service
cp /etc/openvpn/easy-rsa/keys/ca.crt /home/ >/dev/null 2>&1
cp /etc/openvpn/easy-rsa/ta.key /home/ >/dev/null 2>&1
wget -O /bin/vpn ${http}${Host}/${Vpnfile}/bin/vpn >/dev/null 2>&1
chmod 777 /bin/vpn


if [[ "$installslect" == "2" ]]
then

echo 
echo 
else
echo -e "#!/bin/bash
sudo chattr -R -i /var/www/html/${mysqlmanage}/phpmyadmin
chmod -R 0755 /var/www/html/${mysqlmanage}/phpmyadmin
echo -e \"\033[32m数据库访问权限已开启\033[0m\"
echo -e \"\033[31m数据库管理完成后，请执行：\033[0m\033[32m unsql \033[0m \033[31m命令关闭访问权限\033[0m\"
" >/bin/onsql && chmod 0755 /bin/onsql
echo -e "#!/bin/bash
sudo chattr -R -i /var/www/html/${mysqlmanage}/phpmyadmin
chmod -R 0000 /var/www/html/${mysqlmanage}/phpmyadmin
echo -e \"\033[32m数据库访问权限已关闭\033[0m\"
echo -e \"\033[31m如需再次使用数据库管理，请执行：\033[0m\033[32m onsql \033[0m \033[31m命令开启访问权限\033[0m\"
" >/bin/unsql && chmod 0755 /bin/unsql
fi
#******************#centos7开机自启动流控+openvpn******************#
echo "正在加入开机自启动..."
wget -O /etc/rc.d/init.d/vpn http://${Host}/${Vpnfile}/vpn  >/dev/null 2>&1
sed -i 's/8899/'$mpport'/g' /etc/rc.d/init.d/vpn
chmod 0777 /etc/rc.d/init.d/vpn
echo "[Unit]
Description=vpn
After=network.target

[Service]
Type=forking
ExecStart=/etc/rc.d/init.d/vpn start
ExecReload=/etc/rc.d/init.d/vpn restart
ExecStop=/etc/rc.d/init.d/vpn stop
PrivateTmp=true

[Install]
WantedBy=multi-user.target
" > /lib/systemd/system/vpn.service
systemctl daemon-reload
systemctl enable vpn.service
echo 
echo "Openvpn安装完成！"
clear
echo 
echo "正在安装Mproxy...转发模式专用"
cd /root/
curl -O ${http}${Host}/${Vpnfile}/mproxy.c >/dev/null 2>&1
sed -i 's/443/'$vpnport'/g' /root/mproxy.c
gcc -o ${mp} mproxy.c
chmod 0777 ${mp}
rm -rf mproxy.c
echo "Mproxy安装完成"
echo
return 1
}
#公共模块 执行顺序：7
function installlamp(){
clear
echo
echo "开始安装极速LAMP..."
yum -y install httpd >/dev/null 2>&1
cd /etc/httpd/conf/
rm -rf httpd.conf
curl -O ${http}${Host}/${Vpnfile}/httpd.conf
chmod 0777 httpd.conf
sed -i 's/7788/'$port'/g' /etc/httpd/conf/httpd.conf
yum -y install php >/dev/null 2>&1
yum install -y php-fpm php-cli php-gd php-mbstring php-mcrypt php-mysqlnd php-opcache php-pdo php-devel php-xml >/dev/null 2>&1
sed -i 's/;date.timezone =/date.timezone = PRC/g' /etc/php.ini
sed -i 's/disable_functions =.*/disable_functions = md5/g' /etc/php.ini
echo -ne "\n127.0.0.1 wanmeilkapi.skyqq.cc" >> /etc/hosts
systemctl enable php-fpm.service
systemctl start php-fpm.service
yum install -y mariadb mariadb-server >/dev/null 2>&1
systemctl restart mariadb.service
systemctl enable mariadb.service
yum --enablerepo=remi install -y mariadb-server mariadb >/dev/null 2>&1
systemctl restart mariadb
systemctl enable mariadb
yum -y --enablerepo=epel,remi,remi-php54 install php php-cli php-gd php-mbstring php-mcrypt php-mysqlnd php-opcache php-pdo php-devel php-xml >/dev/null 2>&1
#3 yum --enablerepo=remi install -y php php-mysql php-gd libjpeg* php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash
systemctl restart httpd.service
cd /etc
rm -rf my.cnf
wget ${http}${Host}/${Vpnfile}/my.cnf >/dev/null 2>&1
chmod 0755 my.cnf
echo "#!/bin/bash
echo '正在重启所有服务...'
systemctl restart mariadb
systemctl restart httpd.service
systemctl restart php-fpm.service
echo -e '服务状态：			  [\033[32m  OK  \033[0m]'
exit 0;
" >/bin/lamp
chmod 777 /bin/lamp >/dev/null 2>&1
lamp
 echo "安装完成！"
 return 1
}
#分类一模块 执行顺序：8-1
function installweb(){

clear
echo
echo "开始搭建完美-Web流控程序..."
echo "---请不要进行任何操作---"
if [ ! -e "/etc/my.cnf" ];
    then
        echo
		echo -e "  安装出错 [原因：\033[31m 数据库安装出错,请重装系统后重新执行脚本 \033[0m]"
		exit 0;
fi
cd /var/www/html/
wget ${http}${Host}/${Vpnfile}/${webfile} >/dev/null 2>&1
unzip  ${webfile} >/dev/null 2>&1
cd app_api
mv md5key qq2939418298
cd ..
#安装web文件。。。。。。
clear
if [[ $iscloudmysql == "1" ]]
then
echo "正在自动加入流控数据库表：${mysqlmanage}"
wget ${http}${Host}/${Vpnfile}/mysql.sql
create_db_sql="create database IF NOT EXISTS ${mysqlmanage}"
mysql -h$cloudmysqlurl -P$cloudmysqlport -u$cloudmysqluser -p$cloudmysqlpass  -e "${create_db_sql}"
mysql -h$cloudmysqlurl -P$cloudmysqlport -u$cloudmysqluser -p$cloudmysqlpass $mysqlmanage < mysql.sql
rm -rf mysql.sql
echo "设置数据库完成"
echo 
clear
sleep 1
chmod 777 -R /var/www/html/* >/dev/null 2>&1
chmod 777 -R /var/www/html/resources/*
sed -i 's/mysqlpass/'$cloudmysqluser'/g' /var/www/html/app_api/config.php >/dev/null 2>&1
sed -i 's/mysqlpass/'$cloudmysqlpass'/g' /var/www/html/app_api/config.php >/dev/null 2>&1
sed -i 's/mysqlname/'$mysqlmanage'/g' /var/www/html/app_api/config.php >/dev/null 2>&1
sed -i 's/mysqlport/'$cloudmysqlport'/g' /var/www/html/app_api/config.php >/dev/null 2>&1
sed -i 's/mysqlhost/'$cloudmysqlhost'/g' /var/www/html/app_api/config.php >/dev/null 2>&1

else
#如果不是云数据库
sqlpass=$mysqlmanage
mysqladmin -u root password "${sqlpass}"
echo "修改数据库密码完成"

echo "正在自动加入流控数据库表：${mysqlmanage}"
create_db_sql="create database IF NOT EXISTS ${mysqlmanage}"
mysql -hlocalhost -uroot -p$sqlpass -e "${create_db_sql}"
echo "加入完成"
hostname=`hostname`
mysql -hlocalhost -uroot -p$sqlpass --default-character-set=utf8<<EOF
grant all privileges on *.* to root@"%" identified by '${sqlpass}' with grant option;
grant all privileges on *.* to root@"${hostname}" identified by '${sqlpass}' with grant option;
flush privileges;
use ${mysqlmanage};
source /var/www/html/install.sql;
EOF
wget ${http}${Host}/${Vpnfile}/mysql.sql
mysql -hlocalhost -uroot -p$sqlpass $mysqlmanage < mysql.sql
rm -rf mysql.sql

chmod 777 -R /var/www/html/* >/dev/null 2>&1
chmod 777 -R /var/www/html/resources/*
sed -i 's/mysqluser/root/g' /var/www/html/app_api/config.php >/dev/null 2>&1
sed -i 's/mysqlpass/'$mysqlmanage'/g' /var/www/html/app_api/config.php >/dev/null 2>&1
sed -i 's/mysqlname/'$mysqlmanage'/g' /var/www/html/app_api/config.php >/dev/null 2>&1
sed -i 's/mysqlport/3306/g' /var/www/html/app_api/config.php >/dev/null 2>&1
sed -i 's/mysqlhost/localhost/g' /var/www/html/app_api/config.php >/dev/null 2>&1
echo "加入完成"
clear
echo "正在加入流控数据每日备份任务..."
echo "mysqldump -uroot -p${dbpass} --all-databases  > /home/htmlmysql.sql">> /etc/backup.sh
chmod 0777 /etc/backup.sh
BASEDIR=`dirname $0`/.. 
BASEDIR=`(cd "$BASEDIR"; pwd)` 
PROGRAM=$BASEDIR/bin/daemon.sh 
CRONTAB_CMD="0 4 * * *  /etc/backup.sh" 
(crontab -l 2>/dev/null | grep -Fv $PROGRAM; echo "$CRONTAB_CMD") | crontab - 
COUNT=`crontab -l | grep $PROGRAM | grep -v "grep"|wc -l ` 
systemctl reload  crond.service
systemctl restart crond.service
fi


rm -rf /var/www/html/${webfile} >/dev/null 2>&1
echo "完成"
clear
systemctl enable openvpn@server.service >/dev/null 2>&1
echo 
echo "正在进行流控网速、延迟优化..."
echo 
echo "完美-Web流控安装完成！"
return 1
}
#分类二模块 执行顺序：8-2
function installweb2(){

clear
echo
echo "开始搭建完美-Web流控程序..."
echo "---请不要进行任何操作---"
if [ ! -e "/etc/my.cnf" ];
    then
        echo
		echo -e "  安装出错 [原因：\033[31m 数据库安装出错,请重装系统后重新执行脚本 \033[0m]"
		exit 0;
fi
cd /var/www/html/
wget ${http}${Host}/${Vpnfile}/${webfile1} >/dev/null 2>&1
unzip  ${webfile1} >/dev/null 2>&1
rm -rf ${webfile1}
#安装负载web文件。。。。。。
clear
systemctl enable openvpn@server.service >/dev/null 2>&1
echo 
echo "正在进行流控网速、延迟优化..."
echo 
echo "完美-Web流控安装完成！"
return 1
}
#分类一模块 执行顺序：12-1 10-2
function webmlpass(){

cd /home/
rm -rf *
vpn
clear
wwwd=${IP}":"${port}"/app_api/"${md5key}
echo "负载接口地址："${wwwd} > /bin/node 
chmod 777 /bin/vpn
cd /var/www/html/
echo ${wwwd} > node.php
if [[ $iscloudmysql == "1" ]]
then
echo -e "\033[32m 已对接云数据库 \033[0m 
用户前台地址：\033[32m ${IP}:${port} \033[0m 
后台管理地址：\033[32m ${IP}:${port}/app_api/admin.php \033[0m  
代理页面地址：\033[32m ${IP}:${port}/daili \033[0m  
负载接口地址：\033[32m ${wwwd} \033[0m  
-------------------------------------------(LAMP+OpenVpn)重启命令:vpn
数据库名：\033[31m ${mysqlmanage} \033[0m
管理员用户名：\033[31m wanmei \033[0m 管理密码：\033[31m wanmei \033[0m"
else
echo -e "用户前台地址：\033[32m ${IP}:${port} \033[0m 
后台管理地址：\033[32m ${IP}:${port}/app_api/admin.php \033[0m
欢迎加入小小白流控，群号码：555149387
代理页面地址：\033[32m ${IP}:${port}/daili \033[0m  
数据库后台地址：\033[32m ${IP}:${port}/${mysqlmanage}/phpmyadmin \033[0m  
APP下载地址：\033[32m ${IP}:${port}/app.apk \033[0m  
-------------------------------------------(LAMP+OpenVpn)重启命令:vpn
数据库名：\033[31m ${mysqlmanage} \033[0m
数据库用户名：\033[31m root \033[0m 数据库密码：\033[31m ${sqlpass} \033[0m
管理员用户名：\033[31m wanmei \033[0m 管理密码：\033[31m wanmei \033[0m"

fi
return 1
}


#分类一模块 执行顺序：10-1
function installapp(){
cd







rm -rf aiwan >/dev/null 2>&1 # 爱玩
rm -rf mf sf php >/dev/null 2>&1 # 爱玩
rm -rf aiwan.* mf.* sf.* php.* >/dev/null 2>&1 

web_path="/var/www/html/"	
i="java"
x=`rpm -qa | grep $i`
if [ `rpm -qa | grep $i |wc -l` -ne 0 ];then
echo 
else
echo 
yum install java -y >/dev/null 2>&1
echo 
fi

clear		
domain=${IP} 




		chmod 0777 -R /home
		cd /home
		echo -e  "开始制作APP"
		
		
			wget -O android.apk ${http}${Host}/${Vpnfile}/1.apk >/dev/null 2>&1
			rm -rf android
			wget -O apktool.jar ${http}${Host}/${Vpnfile}/apktool.jar >/dev/null 2>&1&&java -jar apktool.jar d android.apk
			echo -e "批量替换"
			chmod 0777 -R /home/android
			sed -i 's/demo.dingd.cn:80/'${domain}:${port}'/g' /home/android/smali/net/openvpn/openvpn/base.smali >/dev/null 2>&1
			sed -i 's/demo.dingd.cn:80/'${domain}:${port}'/g' "/home/android/smali/net/openvpn/openvpn/OpenVPNClient.smali" >/dev/null 2>&1
			sed -i 's/demo.dingd.cn:80/'${domain}:${port}'/g' "/home/android/smali/net/openvpn/openvpn/OpenVPNClient\$10.smali" >/dev/null 2>&1
			sed -i 's/demo.dingd.cn:80/'${domain}:${port}'/g' "/home/android/smali/net/openvpn/openvpn/OpenVPNClient\$11.smali" >/dev/null 2>&1
			sed -i 's/demo.dingd.cn:80/'${domain}:${port}'/g' "/home/android/smali/net/openvpn/openvpn/OpenVPNClient\$13.smali" >/dev/null 2>&1
			sed -i 's/demo.dingd.cn:80/'${domain}:${port}'/g' "/home/android/smali/net/openvpn/openvpn/Main2Activity\$MyListener\$1.smali" >/dev/null 2>&1
			sed -i 's/demo.dingd.cn:80/'${domain}:${port}'/g' '/home/android/smali/net/openvpn/openvpn/Main2Activity$MyListener.smali' >/dev/null 2>&1
			sed -i 's/demo.dingd.cn:80/'${domain}:${port}'/g' '/home/android/smali/net/openvpn/openvpn/MainActivity.smali' >/dev/null 2>&1
			sed -i 's/demo.dingd.cn:80/'${domain}:${port}'/g' '/home/android/smali/net/openvpn/openvpn/update$myClick$1.smali' >/dev/null 2>&1
			sed -i 's/完美流量/'${appname2}'/g' "/home/android/res/values/strings.xml" >/dev/null 2>&1
			java -jar apktool.jar b android
			if test -f /home/android/dist/android.apk;then 
				echo -e "APK生成完毕"
				wget -O autosign.zip ${http}${Host}/${Vpnfile}/autosign.zip >/dev/null 2>&1 && unzip -o autosign.zip >/dev/null 2>&1 
				rm -rf ${web_path}/app_api/dingd.apk
				cd autosign 
				echo "签名APK...."
				cp -rf /home/android/dist/android.apk /home/unsign.apk
				java -jar signapk.jar testkey.x509.pem testkey.pk8 /home/unsign.apk /home/sign.apk 
				cp -rf /home/sign.apk  ${web_path}/app.apk
				rm -rf /home/dingd.apk
				rm -rf /home/unsign.apk
				rm -rf /home/android.apk
				rm -rf /home/android
				rm -rf /home/autosign.zip
				rm -rf /home/apktool.jar
				rm -rf /home/setup.bash
				rm -rf /home/autosign
			else
				echo "
	---------------------------------------------------------
	ERROR----------- APP制作出错 请手动对接
	---------------------------------------------------------
	"
			
	
	fi #APP制作
}

#分类一模块 执行顺序：9-1
function phpmyadmin(){
cd /var/www/html/
mysqlversion=`php -v | grep ^PHP | cut -f2 -d " "| awk -F "." '{print ""$1"."$2""}'`
if [[ "$installslect" == "2" ]]
then

echo
echo 
else
mkdir $mysqlmanage

if [[ $mysqlversion == '5.4' ]]
then
	curl -O ${http}${Host}/${Vpnfile}/phpMyAdmin-4.0.10.15-all-languages.tar.gz >/dev/null 2>&1
	tar -zxvf phpMyAdmin-4.0.10.15-all-languages.tar.gz -C /var/www/html/$mysqlmanage >/dev/null 2>&1
	rm -f phpMyAdmin-4.0.10.15-all-languages.tar.gz
else
	curl -O ${http}${Host}/${Vpnfile}/phpMyAdmin-4.6.2-all-languages.tar.gz >/dev/null 2>&1
	tar -zxvf phpMyAdmin-4.6.2-all-languages.tar.gz -C /var/www/html/$mysqlmanage >/dev/null 2>&1
	rm -f phpMyAdmin-4.6.2-all-languages.tar.gz
fi

cd /var/www/html/$mysqlmanage
mv phpMyAdmin-4.6.2-all-languages phpmyadmin >/dev/null 2>&1
mv phpMyAdmin-4.0.10.15-all-languages phpmyadmin >/dev/null 2>&1


fi
}
#公共模块 执行顺序：11-1 9-2
function finalset(){
echo $abc > /etc/openvpn/sqlmima
cd
wget ${http}${Host}/${Vpnfile}/corn
chmod 777 corn
vpn
}
#主程序
function main(){
shellhead                      #头部模块，定义必须各种变量
checkinf                       #检查模块，检查环境是否支持
seetings                       #录入模块，录入各种流控配置
InputIPAddress                 #IP模块，检测IP是否获取成功
readytoinstall                 #清理模块，清理各种配置文件
newvpn                         #安装模块，安装VPN等主程序
installlamp                    #WEB模块，安装lamp
if [[ "$installslect" == "1" ]]
then
installweb
phpmyadmin
installapp
finalset
webmlpass
else
installweb2
finalset
clear
echo "负载程序搭建完成请到后台添加节点！"
echo "IP:"${IP}
echo "端口:"${port}
fi


}

main
echo "恭喜你啊骚年搭建好了";
exit 0;
