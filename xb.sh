# 本脚本由小白免流制作
# 作者 心欣&掌握节流核心技术
rm -rf xxx
function shellhead() {
	rm -rf $0 
DmgLogo='
==========================================================================
                                     
									 
                        小白免流™全新一代的流控                      
                  Powered DST 大神团 2016                         
                        All Rights Reserved                                
											  大神团破解 QQ群：483152129                                  
                                                        DST 大神团                      
==========================================================================';
	errorlogo='
==========================================================================
                     服务验证失败，安装被终止                                           
                        小白免流™全新一代的流控                      
                  Powered DST 大神团 2016   大神团破解 QQ群：483152129                      
                        All Rights Reserved                                
                                                                         
                                                        DST 大神团                        
==========================================================================';
	finishlogo='
==========================================================================
                                                                         
                         最好看好用的流控之一																		 
                        小白免流™全新一代的流控                      
                  Powered DST 大神团 2016   大神团破解 QQ群：483152129                      
                        All Rights Reserved                                
                                                                         
                                                        DST 大神团                      
==========================================================================';
	keyerrorlogo='
==========================================================================
                      验证码输入错误，请重新运行                                            
                           小白免流™-流控系统                       
                        小白免流™全新一代的流控
                         加群获取授权码						
                  Powered DST 大神团 2016   大神团破解 QQ群：483152129                      
                        All Rights Reserved                                
                                                                         
                                                        DST 大神团                     
==========================================================================';
	http="http://"; 
	update="web-update.zip";
	sq=squid.conf;
	mp=mproxy-xb;
	RSA=EasyRSA-2.2.2.tar.gz;
	Host='xbmll.cn';
	xbml='xbmll';
	IP=`curl -s http://members.3322.org/dyndns/getip`;
	squser=auth_user;
	mysqlip='null';
	KRSA=easy-rsa.zip;
	webupdatefile='xb-web-update.zip';
	webfile32='ioncube-32.tar.gz';
	webfile64='ioncube_loaders-64.tar.gz';
	phpmyadminfile='phpMyAdmin-4.0.10.15-all-languages.tar.gz';
	key='DST'
	upload=transfer.sh;
	jiankongfile=jiankong.zip
	lnmpfile='xb-lnmp.tar.gz';
	webfile='xb-web2.zip';
	uploadfile=xb-openvpn.tar.gz;export uploadfile=$uploadfile
	return 1
}
function InputIPAddress() {

echo 
echo "正在检测您的IP是否正确加载..."

	if [[ "$IP" == '' ]]; then
		echo '无法检测您的IP,可能会影响到您接下来的搭建工作';
		read -p '请输入您的公网IP:' IP;
		[[ "$IP" == '' ]] && InputIPAddress;
	fi;
	[[ "$IP" != '' ]] && 
						 echo -e 'IP状态：			  [\033[32m  OK  \033[0m]'
	sleep 2
	echo -n "正在检测网卡..."
	if [ ! -e "/dev/net/tun" ];
    then
	    echo
        echo "检查到你是网易蜂巢 正在为你开启网卡"
		sleep 2
		echo -e "                                [\033[32m OK \033[0m]"
		mkdir /dev/net; mknod /dev/net/tun c 10 200
		echo "更新系统 接下来的所有提示都输入Y回车"
		sleep 2
		yum install wget
		yum update -y
		yum install gcc gcc-c++ make 
	else
	    echo -e "                 [\033[32m OK \033[0m]" 
	fi
	return 1
}
function readytoinstall() {
	echo 
	echo -e "\033[35m开始整理安装环境...\033[0m"
	echo -e "\033[35m可能需要1分钟左右...\033[0m"
	sleep 2
	echo -e "\033[35m开始整理残留环境...\033[0m"
	systemctl stop openvpn@server.service >/dev/null 2>&1
	yum -y remove openvpn >/dev/null 2>&1
	yum -y remove java-1.7.0-openjdk* >/dev/null 2>&1
	yum -y remove java >/dev/null 2>&1
	systemctl stop squid.service >/dev/null 2>&1
	yum -y remove squid >/dev/null 2>&1
	killall mproxy-xb >/dev/null 2>&1
	rm -rf /etc/openvpn/*
	rm -rf /root/*
	rm -rf /home/*
	sleep 2 
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
	yum remove -y nginx php-fpm >/dev/null 2>&1
	yum remove -y php php-mysql php-gd libjpeg* php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash php-fpm >/dev/null 2>&1
	sleep 2
	echo -e "\033[35m正在检查并更新源...\033[0m"
	sleep 3
	#mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
	#wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
	rpm -ivh ${http}${Host}/${sqrd}/epel-release-latest-7.noarch.rpm >/dev/null 2>&1
	yum clean all
	yum makecache
	yum update -y
	yum install unzip curl tar expect -y
	sleep 3
	yum update -y
	echo
	echo -e "\033[35m正在配置网络环境...\033[0m"
	sleep 3
	systemctl stop firewalld.service >/dev/null 2>&1
	systemctl disable firewalld.service >/dev/null 2>&1
	yum install iptables-services -y >/dev/null 2>&1
	yum -y install vim vim-runtime ctags >/dev/null 2>&1
	setenforce 0 >/dev/null 2>&1 
	service sendmail stop >/dev/null 2>&1 
	echo "/usr/sbin/setenforce 0" >> /etc/rc.local >/dev/null 2>&1
	sleep 1



	echo
	echo -e "\033[35m正在配置网速优化...\033[0m"
	echo '# Kernel sysctl configuration file for Red Hat Linux
	# by dmkuai.com
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
	kernel.msgmport = 65536

	# Controls the maximum size of a message, in bytes
	kernel.msgmax = 65536

	# Controls the maximum shared segment size, in bytes
	kernel.shmmax = 68719476736

	# Controls the maximum number of shared memory segments, in pages
	kernel.shmall = 4294967296' >/etc/sysctl.conf
	sysctl -p >/dev/null 2>&1
	echo
	echo -e "\033[35m正在配置防火墙...\033[0m"
	systemctl start iptables >/dev/null 2>&1
	iptables -F >/dev/null 2>&1
	sleep 3
	iptables -t nat -A POSTROUTING -s 10.8.0.0/16 -o eth0 -j MASQUERADE
	iptables -t nat -A POSTROUTING -s 10.8.0.0/16 -j SNAT --to-source $IP
	iptables -t nat -A POSTROUTING -s 10.9.0.0/16 -o eth0 -j MASQUERADE
    iptables -t nat -A POSTROUTING -s 10.9.0.0/16 -j SNAT --to-source $IP
	iptables -t nat -A POSTROUTING -s 10.10.0.0/16 -o eth0 -j MASQUERADE
    iptables -t nat -A POSTROUTING -s 10.10.0.0/16 -j SNAT --to-source $IP
	iptables -t nat -A POSTROUTING -j MASQUERADE
	iptables -A INPUT -p TCP --dport $mpport -j ACCEPT
	iptables -A INPUT -p TCP --dport 137 -j ACCEPT
	iptables -A INPUT -p TCP --dport 351 -j ACCEPT
	iptables -A INPUT -p TCP --dport 366 -j ACCEPT
	iptables -A INPUT -p TCP --dport 1026 -j ACCEPT
	iptables -A INPUT -p UDP --dport 137 -j ACCEPT
	iptables -A INPUT -p TCP --dport 138 -j ACCEPT
	iptables -A INPUT -p UDP --dport 138 -j ACCEPT
	iptables -A INPUT -p UDP --dport 139 -j ACCEPT
	iptables -A INPUT -p TCP --dport 3389 -j ACCEPT
	iptables -A INPUT -p TCP --dport 53 -j ACCEPT
	iptables -A INPUT -p TCP --dport 80 -j ACCEPT
	iptables -A INPUT -p TCP --dport 28080 -j ACCEPT
	iptables -A INPUT -p TCP --dport $sqport -j ACCEPT
	iptables -A INPUT -p TCP --dport $vpnport -j ACCEPT
	iptables -A INPUT -p TCP --dport 22 -j ACCEPT
	iptables -A INPUT -p TCP --dport 25 -j DROP
	iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
	/etc/rc.d/init.d/iptables save >/dev/null 2>&1
	service iptables save >/dev/null 2>&1
	systemctl restart iptables >/dev/null 2>&1
	systemctl enable iptables >/dev/null 2>&1
	echo 
	sleep 1

	return 1
}
function vpnportseetings() {
echo -ne "\033[31m 温馨提示 小白建议全部默认 不要变动任何东西 一直回车就好 \033[0m"
echo 
echo -ne "\033[34m 输入本地代理端口\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m 440 \033[0m] ：" 
read vpnport 
[ -z "$vpnport" ] && vpnport="440"
	echo
    echo " ================="
    echo " |端口 = $vpnport"
    echo " ================="
    echo
#小白免流
echo -ne "\033[36m 请输入转接端口\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m 8080 \033[0m] ：" 
read mpport
[ -z "$mpport" ] && mpport="8080"
	echo
	echo " ================="
    echo " |端口 = $mpport"
    echo " ================="
    echo
#小白免流
echo -ne "\033[34m 输入常规代理端口\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m 80 \033[0m] ：" 
read sqport 
[ -z "$sqport" ] && sqport="80"
	echo
    echo " ================="
    echo " |端口 = $sqport"
    echo " ================="
    echo
#xbmll.cn
echo -ne "\033[35m 请输入实时监控频率（秒）\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m 20 \033[0m] ：" 
read jiankongs
[ -z "$jiankongs" ] && jiankongs="20"
	echo
	echo " ============="
    echo " |秒数 = $jiankongs"
    echo " ============="
    echo
#小白免流
clear
sleep 2
echo 
echo -ne "\033[31m##-------------------请务必别使用默认--------------------## \033[0m"
echo
echo -ne "\033[31m##-------------------请务必别使用默认--------------------## \033[0m"
echo 
echo -ne "\033[31m##-------------------请务必别使用默认--------------------## \033[0m"
echo
echo 
echo -ne "\033[35m 请输入云端后台密码\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m xbmlluser \033[0m] ：" 
read pas
[ -z "$pas" ] && pas="xbmlluser"
	echo
	echo " =================="
    echo " |密码 = $pas     |"
    echo " =================="
    echo
#小白免流
echo -ne "\033[34m 请输入你的APPkey \033[0m"
echo 
echo -n -e " 回车默认 [\033[31m abc123 \033[0m] ：" 
read ykey
[ -z "$ykey" ] && ykey="abc123"
	echo
    echo " ================="
    echo " |密码 = $ykey|"
    echo " ================="
    echo
#dnsml.top
echo -ne "\033[35m 请输入后台访问路径\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m adminuser \033[0m] ：" 
read fh1
[ -z "$fh1" ] && fh1="adminuser"
	echo
	echo " ============="
    echo " |路径 = $fh1"
    echo " ============="
    echo
#小白免流
echo -ne "\033[35m 请输入数据库访问路径\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m mysqlxbmll \033[0m] ：" 
read sqlfh
[ -z "$sqlfh" ] && sqlfh="mysqlxbmll"
	echo
	echo " ============="
    echo " |路径 = $sqlfh"
    echo " ============="
    echo
#小白免流
#echo 
#echo -ne "\033[31m##-------------------请务必别使用默认--------------------## \033[0m"
#echo
#echo -ne "\033[31m##-------------------请务必别使用默认--------------------## \033[0m"
#echo 
#echo -ne "\033[31m##-------------------请务必别使用默认--------------------## \033[0m"

return 1
}
function newvpn() {

echo -e "\033[35m正在安装主程序...\033[0m"
yum install -y openvpn telnet >/dev/null 2>&1
sleep 1
yum install -y openssl openssl-devel lzo lzo-devel pam pam-devel automake pkgconfig expect >/dev/null 2>&1
cd /etc/openvpn/
rm -rf /etc/openvpn/server.conf >/dev/null 2>&1
service sendmail stop >/dev/null 2>&1 
rm -rf /etc/openvpn/xbmll.sh >/dev/null 2>&1
clear
echo
#echo "> 选择安装模式"
#echo
#echo " 1 - 标准(回车默认) < 新装+流控系统"
#echo -e "     \033[31m注意：\033[0m\033[35m支持阿里云、腾讯云等正规服务商 Centos7 全新系统. \033[0m"
#echo -e "     腾讯云：请默认安全组放通全部端口."
#echo 
#echo " 2 - 修复模式 >> 证书问题"
#echo 
#echo " 3 - 对接模式 >> 实现N台服务器共用账号"
#echo
#echo -n -e "请输入对应数字:"
#read installxuanze
if [[ $installslect == "1" ]]
then
echo "#################################################
	#               vpn流量控制配置文件             #
	#                               by：小白免流™   #
	#                                  2016-10-09   #
	#################################################
	port 137
	#your port by:xbmll.cn

	proto udp
	dev tun
	ca /etc/openvpn/easy-rsa/keys/ca.crt
	cert /etc/openvpn/easy-rsa/keys/centos.crt
	key /etc/openvpn/easy-rsa/keys/centos.key
	dh /etc/openvpn/easy-rsa/keys/dh2048.pem
	auth-user-pass-verify /etc/openvpn/loginudp.sh via-env
	client-disconnect /etc/openvpn/disconnectudp.sh
	client-connect /etc/openvpn/connect.sh
	client-cert-not-required
	username-as-common-name
	script-security 3 system
	server 10.9.0.0 255.255.0.0
	push redirect-gateway def1 bypass-dhcp
	push dhcp-option DNS 114.114.114.114
	push dhcp-option DNS 114.114.115.115
	management localhost 7506
	keepalive 10 120
	tls-auth /etc/openvpn/easy-rsa/ta.key 0  
	comp-lzo
	persist-key
	persist-tun
	status /home/wwwroot/default/udp1/openvpn-status2.txt
	log /etc/openvpn/openvpn2.log
	log-append  /etc/openvpn/openvpn2.log
	verb 3
	#xbmll.cn" >/etc/openvpn/server-udp.conf
	
echo "#################################################
	#               vpn流量控制配置文件             #
	#                               by：小白免流™   #
	#                                  2016-10-09   #
	#################################################
	port 138
	#your port by:xbmll.cn

	proto udp
	dev tun
	ca /etc/openvpn/easy-rsa/keys/ca.crt
	cert /etc/openvpn/easy-rsa/keys/centos.crt
	key /etc/openvpn/easy-rsa/keys/centos.key
	dh /etc/openvpn/easy-rsa/keys/dh2048.pem
	auth-user-pass-verify /etc/openvpn/loginudp.sh via-env
	client-disconnect /etc/openvpn/disconnectudp.sh
	client-connect /etc/openvpn/connect.sh
	client-cert-not-required
	username-as-common-name
	script-security 3 system
	server 10.10.0.0 255.255.0.0
	push redirect-gateway def1 bypass-dhcp
	push dhcp-option DNS 114.114.114.114
	push dhcp-option DNS 114.114.115.115
	management localhost 7507
	keepalive 10 120
	tls-auth /etc/openvpn/easy-rsa/ta.key 0  
	comp-lzo
	persist-key
	persist-tun
	status /home/wwwroot/default/udp2/openvpn-status3.txt
	log /etc/openvpn/openvpn3.log
	log-append  /etc/openvpn/openvpn3.log
	verb 3
	#xbmll.cn" >/etc/openvpn/server-udp2.conf


	echo "#################################################
	#               vpn流量控制配置文件             #
	#                               by：小白免流™   #
	#                                  2016-09-22   #
	#################################################
	port $vpnport
	#your port by:xbmll

	proto tcp
	dev tun
	ca /etc/openvpn/easy-rsa/keys/ca.crt
	cert /etc/openvpn/easy-rsa/keys/centos.crt
	key /etc/openvpn/easy-rsa/keys/centos.key
	dh /etc/openvpn/easy-rsa/keys/dh2048.pem
	auth-user-pass-verify /etc/openvpn/login.sh via-env
	client-disconnect /etc/openvpn/disconnect.sh
	client-connect /etc/openvpn/connect.sh
	client-cert-not-required
	username-as-common-name
	script-security 3 system
	server 10.8.0.0 255.255.0.0
	push "redirect-gateway def1 bypass-dhcp"
	push "dhcp-option DNS 114.114.114.114"
	push "dhcp-option DNS 114.114.115.115"
	management localhost 7505
	keepalive 10 120
	tls-auth /etc/openvpn/easy-rsa/ta.key 0  
	comp-lzo
	persist-key
	persist-tun
	status /home/wwwroot/default/res/openvpn-status.txt
	log         openvpn.log
	log-append  openvpn.log
	verb 3
	#xbmll.cn" >/etc/openvpn/server.conf
	cd /etc/openvpn/
	rm -rf /easy-rsa/
	curl -O ${http}${Host}/${xbml}/${KRSA}
	unzip ${KRSA} >/dev/null 2>&1
	rm -rf ${KRSA}
	
else
	
	echo "#################################################
	#               vpn流量控制配置文件             #
	#                               by：小白免流™   #
	#                                  2016-10-09   #
	#################################################
	port 137
	#your port by:xbmll.cn

	proto udp
	dev tun
	ca /etc/openvpn/easy-rsa/keys/ca.crt
	cert /etc/openvpn/easy-rsa/keys/centos.crt
	key /etc/openvpn/easy-rsa/keys/centos.key
	dh /etc/openvpn/easy-rsa/keys/dh2048.pem
	auth-user-pass-verify /etc/openvpn/loginudp.sh via-env
	client-disconnect /etc/openvpn/disconnectudp.sh
	client-connect /etc/openvpn/connect.sh
	client-cert-not-required
	username-as-common-name
	script-security 3 system
	server 10.9.0.0 255.255.0.0
	push redirect-gateway def1 bypass-dhcp
	push dhcp-option DNS 114.114.114.114
	push dhcp-option DNS 114.114.115.115
	management localhost 7506
	keepalive 10 120
	tls-auth /etc/openvpn/easy-rsa/ta.key 0  
	comp-lzo
	persist-key
	persist-tun
	status /home/wwwroot/default/udp1/openvpn-status2.txt
	log /etc/openvpn/openvpn2.log
	log-append  /etc/openvpn/openvpn2.log
	verb 3
	#xbmll.cn" >/etc/openvpn/server-udp.conf
	
	echo "#################################################
	#               vpn流量控制配置文件             #
	#                               by：小白免流™   #
	#                                  2016-10-09   #
	#################################################
	port 138
	#your port by:xbmll.cn

	proto udp
	dev tun
	ca /etc/openvpn/easy-rsa/keys/ca.crt
	cert /etc/openvpn/easy-rsa/keys/centos.crt
	key /etc/openvpn/easy-rsa/keys/centos.key
	dh /etc/openvpn/easy-rsa/keys/dh2048.pem
	auth-user-pass-verify /etc/openvpn/loginudp.sh via-env
	client-disconnect /etc/openvpn/disconnectudp.sh
	client-connect /etc/openvpn/connect.sh
	client-cert-not-required
	username-as-common-name
	script-security 3 system
	server 10.10.0.0 255.255.0.0
	push redirect-gateway def1 bypass-dhcp
	push dhcp-option DNS 114.114.114.114
	push dhcp-option DNS 114.114.115.115
	management localhost 7507
	keepalive 10 120
	tls-auth /etc/openvpn/easy-rsa/ta.key 0  
	comp-lzo
	persist-key
	persist-tun
	status /home/wwwroot/default/udp2/openvpn-status3.txt
	log /etc/openvpn/openvpn3.log
	log-append  /etc/openvpn/openvpn3.log
	verb 3
	#xbmll.cn" >/etc/openvpn/server-udp2.conf
	
    echo "#################################################
   #               vpn流量控制配置文件             #
   #                               by：小白免流™   #
   #                                  2016-09-22   #
   #################################################
   port $vpnport
   #your port by:xbmll

   proto tcp
   dev tun
   ca /etc/openvpn/easy-rsa/keys/ca.crt
   cert /etc/openvpn/easy-rsa/keys/centos.crt
   key /etc/openvpn/easy-rsa/keys/centos.key
   dh /etc/openvpn/easy-rsa/keys/dh2048.pem
   auth-user-pass-verify /etc/openvpn/login.sh via-env
   client-disconnect /etc/openvpn/disconnect.sh
   client-connect /etc/openvpn/connect.sh
   client-cert-not-required
   username-as-common-name
   script-security 3 system
   server 10.8.0.0 255.255.0.0
   push "redirect-gateway def1 bypass-dhcp"
   push "dhcp-option DNS 114.114.114.114"
   push "dhcp-option DNS 114.114.115.115"
   management localhost 7505
   keepalive 10 120
   tls-auth /etc/openvpn/easy-rsa/ta.key 0  
   comp-lzo
   persist-key
   persist-tun
   status /home/wwwroot/default/res/openvpn-status.txt
   log         openvpn.log
   log-append  openvpn.log
   verb 3
   #xbmll.cn" >/etc/openvpn/server.conf
   curl -O ${http}${Host}/${xbml}/${RSA}
   tar -zxvf ${RSA} >/dev/null 2>&1
   rm -rf /etc/openvpn/${RSA}
   cd /etc/openvpn/easy-rsa/
   sleep 1
   source vars >/dev/null 2>&1
   ./clean-all
   clear
   echo "正在生成CA/服务端证书..."
   echo 
   sleep 2
   ./ca >/dev/null 2>&1 && ./centos centos >/dev/null 2>&1
   sleep 2
   echo "正在生成TLS密钥..."
   openvpn --genkey --secret ta.key
   echo
   sleep 1
   clear
    echo
	echo "正在生成加密证书..."
	./build-dh

   echo
   echo "生成完毕！"
fi



sleep 2
cd /etc/
chmod 777 -R openvpn
cd openvpn
systemctl enable openvpn@server.service >/dev/null 2>&1
sleep 1
cp /etc/openvpn/easy-rsa/keys/ca.crt /home/ >/dev/null 2>&1
cp /etc/openvpn/easy-rsa/ta.key /home/ >/dev/null 2>&1
echo "创建vpn启动命令..."
echo "正在重启openvpn服务...
	mkdir -p /dev/net; mknod /dev/net/tun c 10 200 >/dev/null 2>&1
	killall openvpn >/dev/null 2>&1
	systemctl stop openvpn@server.service
	systemctl start openvpn@server.service
	killall mproxy-xb >/dev/null 2>&1
	cd /root/
	./mproxy-xb -l $mpport -d >/dev/null 2>&1
	./mproxy-xb -l 137 -d >/dev/null 2>&1
	./mproxy-xb -l 139 -d >/dev/null 2>&1
	./mproxy-xb -l 138 -d >/dev/null 2>&1
	./mproxy-xb -l 3389 -d >/dev/null 2>&1
	./mproxy-xb -l 53 -d >/dev/null 2>&1
	./mproxy-xb -l 28080 -d >/dev/null 2>&1
	./mproxy-xb -l 351 -d >/dev/null 2>&1
	./mproxy-xb -l 366 -d >/dev/null 2>&1
	./mproxy-xb -l 1026 -d >/dev/null 2>&1
	killall squid >/dev/null 2>&1
	squid -z >/dev/null 2>&1
	systemctl restart squid
	lnmp
	openvpn --config /etc/openvpn/server-udp.conf &
	openvpn --config /etc/openvpn/server-udp2.conf &
	killall jiankong >/dev/null 2>&1
	rm -rf /home/jiankong.log >/dev/null 2>&1
	/home/wwwroot/default/res/jiankong >>/home/jiankong.log >&1 &
	/home/wwwroot/default/udp1/udpjiankong >>/home/jiankong.log >&1 &
	/home/wwwroot/default/udp2/udpjiankong2 >>/home/jiankong.log >&1 &
	echo -e '服务状态：			  [\033[32m  OK  \033[0m]'
	exit 0" >/bin/vpn
chmod 777 /bin/vpn

cd /bin
curl -O ${http}${Host}/${xbml}/on/onsql >/dev/null 2>&1
curl -O ${http}${Host}/${xbml}/on/onyd >/dev/null 2>&1
curl -O ${http}${Host}/${xbml}/on/offsql >/dev/null 2>&1
curl -O ${http}${Host}/${xbml}/on/offyd >/dev/null 2>&1
sed -i '5s/phpmyadmin/'$sqlfh'/' /bin/offsql >/dev/null 2>&1
sed -i '3s/phpmyadmin/'$sqlfh'/' /bin/onsql >/dev/null 2>&1
chmod 777 /bin/onsql
chmod 777 /bin/onyd
chmod 777 /bin/offsql
chmod 777 /bin/offyd
echo 
sleep 1
killall squid >/dev/null 2>&1
clear
echo -e "\033[35m正在安装设置HTTP代理端口...\033[0m"
sleep 2
yum -y install squid >/dev/null 2>&1
chkconfig squid on
cd /etc/squid
rm -rf ./squid.conf >/dev/null 2>&1
sleep 1
curl -O ${http}${Host}/${xbml}/${sq}
sed -i 's/http_port 80/http_port '$sqport'/g' /etc/squid/squid.conf >/dev/null 2>&1
sleep 1
chmod 0755 ./${sq} >/dev/null 2>&1
echo 
echo
sleep 2

curl -O ${http}${Host}/${xbml}/${squser} >/dev/null 2>&1
chmod 0755 ./${squser} >/dev/null 2>&1
sleep 1
echo 
echo
cd /etc/
chmod 777 -R squid
cd squid
squid -z >/dev/null 2>&1
systemctl restart squid >/dev/null 2>&1
systemctl enable squid >/dev/null 2>&1
#禁ping代码
#echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all >/dev/null 2>&1
sleep 2
echo 
sleep 3
clear
echo
sleep 3
cd /root/
curl -O ${http}${Host}/${xbml}/${mp} >/dev/null 2>&1
chmod 0777 ./${mp} >/dev/null 2>&1
echo 
return 1
}
function installlnmp(){
#rm -rf /etc/yum.repos.d/CentOS-Base.repo >/dev/null 2>&1
#mv /etc/yum.repos.d/CentOS-Base.repo.backup /etc/yum.repos.d/CentOS-Base.repo >/dev/null 2>&1
rm -rf /etc/yum.repos.d/epel.repo >/dev/null 2>&1
rm -rf /etc/yum.repos.d/epel-testing.repo >/dev/null 2>&1
clear
echo -e "\033[35m正在安装小白免流™ LNMP系统\033[0m"
echo
echo -e "\033[33m注意：安装过程中如果有卡住或者停住请耐心等待\033[0m"
 
mkdir -p /home/wwwroot/default >/dev/null 2>&1
wget ${http}${Host}/${xbml}/${lnmpfile} >/dev/null 2>&1
tar -zxf ./${lnmpfile} >/dev/null 2>&1
rm -rf ${lnmpfile} >/dev/null 2>&1
#yum -y install httpd
#rm -rf /etc/httpd/conf/httpd.conf
#cd /etc/httpd/conf/
#curl -O ${http}${Host}/${xbml}/httpd.conf
#systemctl restart httpd.service
#systemctl enable httpd.service
#sleep 1
cd lnmp
chmod +x ./install_php.sh
./install_php.sh

yum -y install nginx
mv /usr/share/nginx /home/wwwroot
rm -rf /etc/nginx/conf.d/default.conf
cp -r /root/lnmp/conf/default.conf /etc/nginx/conf.d/default.conf
systemctl enable nginx.service
systemctl start nginx.service
#yum --enablerepo=remi install -y mariadb-server mariadb
#sleep 1
#systemctl restart mariadb
#systemctl enable mariadb
#sleep 1

#yum -y --enablerepo=epel,remi,remi-php54 install php php-cli php-gd php-mbstring php-mcrypt php-mysqlnd php-opcache php-pdo php-devel php-xml
##3 yum --enablerepo=remi install -y php php-mysql php-gd libjpeg* php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash
#systemctl restart httpd.service
#sleep 1
echo

echo
 cd /usr/local/
echo 
curl -O ${http}${Host}/${xbml}/${webfile64}
tar zxf ${webfile64}
rm -rf ${webfile64}

CDIR='/usr/local/ioncube'
phpversion=`php -v | grep ^PHP | cut -f2 -d " "| awk -F "." '{print "zend_extension=\"/usr/local/ioncube/ioncube_loader_lin_"$1"."$2".so\""}'`
phplocation=`php -i | grep php.ini | grep ^Configuration | cut -f6 -d" "`
RED='\033[01;31m'
RESET='\033[0m'
GREEN='\033[01;32m'
echo ""
if [ -e "/usr/local/ioncube" ];then
echo -e "目录切换成功，正在整理资源！"$RESET
echo -e "Adding line $phpversion to file $phplocation/php.ini" >/dev/null 2>&1 $RESET 
echo -e "$phpversion" >> $phplocation/php.ini
echo -e "安装成功"$RESET
else
echo -e "安装失败！请确认当前系统为Centos7.x 64位！"$RESET
echo -e "请不要用旧版本进行搭建！"$RESET
exit
fi
echo "#!/bin/bash
echo '正在重启lnmp...'
systemctl restart mariadb
systemctl restart nginx.service
systemctl restart php-fpm.service
systemctl restart crond.service
service sendmail stop >/dev/null 2>&1 
echo -e '服务状态：			  [\033[32m  OK  \033[0m]'
exit 0;
" >/bin/lnmp
chmod 777 /bin/lnmp >/dev/null 2>&1
lnmp
 echo 
echo -e "\033[31m安装完成！\033[0m"
echo -e "\033[31m感谢使用小白免流™ LNMP系统 - Centos7版\033[0m"
 return 1
}
function webml(){
clear
echo -e "\033[36m开始搭建小白免流™流量控制程序\033[0m"
echo -e "\033[33m请不要进行任何操作 程序自动完成...\033[0m"
cd /root/
curl -O ${http}${Host}/${xbml}/${webfile}
unzip -q ${webfile} >/dev/null 2>&1
clear
echo -ne "\033[33m 请输入数据库密码 \033[0m"
echo 
echo -n -e " 回车默认 [\033[31m root \033[0m] ：" 
read sqlpass
[ -z "$sqlpass" ] && sqlpass="root"
	echo
    echo " =============="
    echo " |密码 = $sqlpass"
    echo " =============="
    echo
#小白免流
#echo -e "\033[34m设置数据库完成\033[0m"
echo -ne "\033[36m 请输入流控端口\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m 1234 \033[0m] ：" 
read port
[ -z "$port" ] && port="1234"
	echo
	echo " ============="
    echo " |端口 = $port"
    echo " ============="
    echo
#小白免流
iptables -A INPUT -p TCP --dport $port -j ACCEPT 
service iptables save >/dev/null 2>&1
systemctl restart iptables >/dev/null 2>&1
if [[ $port == "80" ]]
then
if [[ $sqport == "80" ]]
then
echo
echo "检测到HTTP端口和流控端口有冲突，系统默认将流控端口默认为1234端口"
port=1234
fi
fi
mysqladmin -u root password "${sqlpass}"
sed -i "289s/ip/$IP/" /root/xb/web/install.sql >/dev/null 2>&1 
sed -i "289s/port/$port/" /root/xb/web/install.sql >/dev/null 2>&1 

#sed -i "290s/ip/$IP/" /root/xb/web/install.sql >/dev/null 2>&1 
#sed -i "290s/port/$port/" /root/xb/web/in`st.all.sql >/dev/null 2>&1 

sed -i "292s/ip/$IP/" /root/xb/web/install.sql >/dev/null 2>&1 
sed -i "292s/port/$port/" /root/xb/web/install.sql >/dev/null 2>&1 

#sed -i "308s/bdw/$IP/" install.sql
#sed -i "308s/yuan/$port/" install.sql
sed -i "338s/1549492819/$ykey/" /root/xb/web/install.sql >/dev/null 2>&1 
sed -i "364s/admin/root/" /root/xb/web/install.sql >/dev/null 2>&1 
a=`printf $pas|md5sum|tr -d "-"`;
sed -i "364s/21232f297a57a5a743894a0e4a801fc3/$a/" /root/xb/web/install.sql >/dev/null 2>&1 
#echo -e "\033[34m修改数据库密码完成！\033[0m"
sed -i 's/127.0.0.1:808/'$IP:$port'/g' /root/xb/web/install.sql >/dev/null 2>&1 
#echo -e "正在自动加入流控数据库表：\033[31m ov \033[0m"
create_db_sql="create database IF NOT EXISTS ov"
mysql -hlocalhost -uroot -p$sqlpass -e "${create_db_sql}"
mysql -hlocalhost -uroot -p$sqlpass --default-character-set=utf8<<EOF
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'IDENTIFIED BY '${sqlpass}' WITH GRANT OPTION;
flush privileges;
use ov;
source /root/xb/web/install.sql;
EOF
sed -i 's/123456/'$sqlpass'/g' ./xb/sh/login.sh >/dev/null 2>&1
sed -i 's/123456/'$sqlpass'/g' ./xb/sh/loginudp.sh >/dev/null 2>&1
sed -i 's/123456/'$sqlpass'/g' ./xb/sh/disconnect.sh >/dev/null 2>&1
sed -i 's/123456/'$sqlpass'/g' ./xb/sh/disconnectudp.sh >/dev/null 2>&1
sleep 1
sed -i 's/80/'$port'/g' /usr/local/nginx/conf/nginx.conf >/dev/null 2>&1
sed -i 's/80/'$port'/g' /etc/nginx/conf.d/default.conf >/dev/null 2>&1
#sed -i 's/ServerName www.example.com:1234/ServerName www.example.com:'$port'/g' /etc/httpd/conf/httpd.conf >/dev/null 2>&1
#sed -i 's/Listen 1234/Listen '$port'/g' /etc/httpd/conf/httpd.conf >/dev/null 2>&1
sleep 1
mv -f ./xb/sh/login.sh /etc/openvpn/ >/dev/null 2>&1
mv -f ./xb/sh/loginudp.sh /etc/openvpn/ >/dev/null 2>&1
mv -f ./xb/sh/disconnect.sh /etc/openvpn/ >/dev/null 2>&1
mv -f ./xb/sh/disconnectudp.sh /etc/openvpn/ >/dev/null 2>&1
mv -f ./xb/sh/connect.sh /etc/openvpn/ >/dev/null 2>&1
chmod +x /etc/openvpn/*.sh >/dev/null 2>&1
chmod 755 -R ./xb/web/* >/dev/null 2>&1
service sendmail stop >/dev/null 2>&1 
sleep 1
sed -i 's/123456/'$sqlpass'/g' ./xb/web/config.php >/dev/null 2>&1
#sed -i 's/123456/'$sqlpass'/g' ./xb/web/7kyun/config.php >/dev/null 2>&1
#sed -i 's/127.0.0.1/'${IP}:${port}'/g' ./xb/web/7kyun/config.php >/dev/null 2>&1
echo -ne "\033[34m 请输入后台管理员账号\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m xbmll \033[0m] ：" 
read adminuser
[ -z "$adminuser" ] && adminuser="xbmll"
	echo
    echo " ================="
    echo " |账号 = $adminuser"
    echo " ================="
    echo
#小白免流
echo -ne "\033[34m 请输入后台管理员密码 \033[0m"
echo 
echo -n -e " 回车默认 [\033[31m xbmll \033[0m] ：" 
read adminpass
[ -z "$adminpass" ] && adminpass="xbmll"
	echo
    echo " ================="
    echo " |密码 = $adminpass"
    echo " ================="
    echo
#小白免流
rm -rf /home/wwwroot/default/html/index* >/dev/null 2>&1
mv -f ./xb/web/* /home/wwwroot/default/ >/dev/null 2>&1
sleep 1
sed -i '8s/root/'$adminuser'/' /home/wwwroot/default/config.php >/dev/null 2>&1
sed -i '9s/root/'$adminpass'/' /home/wwwroot/default/config.php >/dev/null 2>&1
cd /home/wwwroot/default/
sed -i '48s/admin/'$fh1'/' /home/wwwroot/default/admin/nav.php >/dev/null 2>&1
mv admin $fh1
#curl -O ${http}${Host}/${phpmyadminfile}
#tar -zxf ${phpmyadminfile}
mv phpMyAdmin-4.6.2-all-languages $sqlfh >/dev/null 2>&1
rm -rf /root/xb/ >/dev/null 2>&1
rm -rf /root/lnmp
rm -rf /root/${webfile} >/dev/null 2>&1
sleep 1
cd /home/
cat /dev/urandom | head -n 29 | md5sum | head -c 29 >sjs.txt
sjs=`cat sjs.txt`
mv /home/wwwroot/default/config.php /home/wwwroot/default/$sjs.php >/dev/null 2>&1
sed -i '126s/config.php/'$sjs.php'/' /home/wwwroot/default/api.inc.php >/dev/null 2>&1
yum install -y crontabs >/dev/null 2>&1
mkdir -p /var/spool/cron/ >/dev/null 2>&1
chmod 777 /home/wwwroot/default/cron.php >/dev/null 2>&1
clear
echo
echo -e "\033[35m正在设置全新实时流量自动监控程序...\033[0m"
echo "* * * * * curl --silent --compressed http://${IP}:${port}/cron.php">>/var/spool/cron/root

systemctl restart crond.service  >/dev/null 2>&1
systemctl enable crond.service >/dev/null 2>&1

cd /home/wwwroot/default/
mkdir udp1 >/dev/null 2>&1
mkdir udp2 >/dev/null 2>&1
cd /home/wwwroot/default/res/
curl -O ${http}${Host}/${xbml}/${jiankongfile} >/dev/null 2>&1
unzip ${jiankongfile} >/dev/null 2>&1
rm -rf ${jiankongfile}
chmod 777 jiankong >/dev/null 2>&1
chmod 777 sha >/dev/null 2>&1
mv -f ./udp137 /home/wwwroot/default/udp1
mv -f ./udpjiankong /home/wwwroot/default/udp1
mv -f ./udp138 /home/wwwroot/default/udp2
mv -f ./udpjiankong2 /home/wwwroot/default/udp2
chmod 777 /home/wwwroot/default/udp1/udp137
chmod 777 /home/wwwroot/default/udp2/udp138
chmod 777 /home/wwwroot/default/udp1/udpjiankong
chmod 777 /home/wwwroot/default/udp2/udpjiankong2
chmod 777 /home/wwwroot/default/udp1 >/dev/null 2>&1
chmod 777 /home/wwwroot/default/udp2 >/dev/null 2>&1
cd /etc/openvpn/
curl -O ${http}${Host}/${xbml}/peizhi.zip >/dev/null 2>&1
unzip peizhi.zip >/dev/null 2>&1
rm -rf peizhi.zip
sed -i 's/mima=123456/'mima=$sqlpass'/g' /etc/openvpn/peizhi.cfg >/dev/null 2>&1
sed -i 's/shijian=30/'shijian=$jiankongs'/g' /etc/openvpn/peizhi.cfg >/dev/null 2>&1
chmod 777 /etc/openvpn/peizhi.cfg >/dev/null 2>&1
echo "/home/wwwroot/default/res/jiankong >>/home/jiankong.log >&1 &">>/etc/rc.local >/dev/null 2>&1
echo "/home/wwwroot/default/udp1/udpjiankong >>/home/jiankong.log >&1 &">>/etc/rc.local >/dev/null 2>&1
echo "/home/wwwroot/default/udp2/udpjiankong2 >>/home/jiankong.log >&1 &">>/etc/rc.local >/dev/null 2>&1
sleep 2
vpn >/dev/null 2>&1
chmod 777 /home/wwwroot/default/res/openvpn-status.txt >/dev/null 2>&1
chmod 777 /home/wwwroot/default/udp1/openvpn-status2.txt >/dev/null 2>&1
chmod 777 /home/wwwroot/default/udp2/openvpn-status3.txt >/dev/null 2>&1
#curl -O ${http}${Host}/${xbml}/${jiankongfile} >/dev/null 2>&1
#rm -f /var/spool/mail/* >/dev/null 2>&1 
#unzip ${jiankongfile} >/dev/null 2>&1
#rm -rf ${jiankongfile}
#chmod 777 jiankong
#chmod 777 sha
#sed -i 's/shijian=1/'shijian=$jiankongs'/g' /home/wwwroot/default/res/ >/dev/null 2>&1
#echo "mima=$sqlpass">>/etc/openvpn/sqlmima
#chmod 777 /etc/openvpn/sqlmima
#/home/wwwroot/default/res/jiankong >>/home/jiankong.log 2>&1 &
#echo "/home/wwwroot/default/res/jiankong >>/home/jiankong.log 2>&1 &">>/etc/rc.local
#rm -f /var/spool/mail/* >/dev/null 2>&1 
sleep 2
lnmp
echo -e "\033[35m正在设置为开机启动...\033[0m"
systemctl enable openvpn@server.service >/dev/null 2>&1
echo 
# echo "正在进行流控网速优化..."
# echo 0 > /proc/sys/net/ipv4/tcp_window_scaling
echo 
echo -e "\033[35mWeb流量控制程序安装完成...\033[0m"
return 1
}
function ovpn(){
echo 
echo "开始生成配置文件..."
sleep 3
cd /home/
echo "# 小白云免配置 移动常规类型
# 本文件由系统自动生成
# 类型：常规
client
dev tun
proto tcp
remote $IP $vpnport
########免流代码########
http-proxy $IP $sqport">yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "POST http://rd.go.10086.cn"
http-proxy-option EXT1 "GET http://rd.go.10086.cn"
http-proxy-option EXT1 "X-Online-Host: rd.go.10086.cn"
http-proxy-option EXT1 "POST http://rd.go.10086.cn"
http-proxy-option EXT1 "X-Online-Host: rd.go.10086.cn"
http-proxy-option EXT1 "POST http://rd.go.10086.cn"
http-proxy-option EXT1 "Host: rd.go.10086.cn"
http-proxy-option EXT1 "GET http://rd.go.10086.cn"
http-proxy-option EXT1 "Host: rd.go.10086.cn" 
########免流代码########
<http-proxy-user-pass>
xbmlll
xbmll.cn
</http-proxy-user-pass>
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">yd-quanguo3.ovpn
cat yd-quanguo1.ovpn yd-quanguo2.ovpn yd-quanguo3.ovpn>xbml-yd-old.ovpn
rm -rf ./{yd-quanguo1.ovpn,yd-quanguo2.ovpn,yd-quanguo3.ovpn}

echo "# 小白云免配置 移动全国137UDP
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto udp
remote $IP 137">http-yd2-quanguo-1.ovpn
echo '
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd2-quanguo-2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd2-quanguo-3.ovpn
cat http-yd2-quanguo-1.ovpn http-yd2-quanguo-2.ovpn http-yd2-quanguo-3.ovpn>xbml-yd-udp137.ovpn
rm -rf ./{http-yd2-quanguo1.ovpn,http-yd2-quanguo2.ovpn,http-yd2-quanguo3.ovpn}

echo "# 小白云免配置 移动全国138UDP
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto udp
remote $IP 138">http-yd2-quanguo-1.ovpn
echo '
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd2-quanguo-2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd2-quanguo-3.ovpn
cat http-yd2-quanguo-1.ovpn http-yd2-quanguo-2.ovpn http-yd2-quanguo-3.ovpn>xbml-yd-udp138.ovpn
rm -rf ./{http-yd2-quanguo1.ovpn,http-yd2-quanguo2.ovpn,http-yd2-quanguo3.ovpn}

echo "# 小白云免配置 移动全国137
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote wap.10086.cn 80
########免流代码########
http-proxy $IP 137
http-proxy-option EXT1 POST http://wap.10086.cn
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport">http-yd-zj1.ovpn
echo 'http-proxy-option EXT1 Host wap.10086.cn
http-proxy-option EXT1 Host: wap.10086.cn / HTTP/1.1
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-zj2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-zj3.ovpn
cat http-yd-zj1.ovpn http-yd-zj2.ovpn http-yd-zj3.ovpn>xbml-yd-137.ovpn
rm -rf ./{http-yd-zj1.ovpn,http-yd-zj2.ovpn,http-yd-zj3.ovpn}

echo "# 小白云免配置 移动全国137-1
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote migumovie.lovev.com 80
########免流代码########
remote migumovie.lovev.com 80
http-proxy-option EXT1 POST http://migumovie.lovev.com
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport ">http-yd-zj1.ovpn
echo 'http-proxy-option EXT1 "X-Online-Host:migumovie.lovev.com"'>ip.ovpn
echo "http-proxy $IP 137 ">ip2.ovpn
echo '
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-zj2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-zj3.ovpn
cat http-yd-zj1.ovpn ip.ovpn ip2.ovpn http-yd-zj2.ovpn http-yd-zj3.ovpn>xbml-yd-137-new-1.ovpn
rm -rf ./{http-yd-zj1.ovpn,http-yd-zj2.ovpn,http-yd-zj3.ovpn}

echo "# 小白云免配置 移动全国138
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote wap.10086.cn 80
########免流代码########
http-proxy $IP 138
http-proxy-option EXT1 POST http://wap.10086.cn
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport">http-yd-zj1.ovpn
echo 'http-proxy-option EXT1 Host wap.10086.cn
http-proxy-option EXT1 Host: wap.10086.cn / HTTP/1.1
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-zj2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-zj3.ovpn
cat http-yd-zj1.ovpn http-yd-zj2.ovpn http-yd-zj3.ovpn>xbml-yd-138.ovpn
rm -rf ./{http-yd-zj1.ovpn,http-yd-zj2.ovpn,http-yd-zj3.ovpn}

echo "# 小白云免配置 移动百度137
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote www.baidu.com 80
########免流代码########
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport
http-proxy-option EXT1 X-Online-Host: www.baidu.com
http-proxy-option EXT1 Host: www.baidu.com
http-proxy $IP 137">http-yd-zj1.ovpn
echo '
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-zj2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-zj3.ovpn
cat http-yd-zj1.ovpn http-yd-zj2.ovpn http-yd-zj3.ovpn>xbml-yd-137baidu.ovpn
rm -rf ./{http-yd-zj1.ovpn,http-yd-zj2.ovpn,http-yd-zj3.ovpn}

echo "# 小白云免配置 移动百度138
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote www.baidu.com 80
########免流代码########
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport
http-proxy-option EXT1 X-Online-Host: www.baidu.com
http-proxy-option EXT1 Host: www.baidu.com
http-proxy $IP 138">http-yd-zj1.ovpn
echo '
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-zj2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-zj3.ovpn
cat http-yd-zj1.ovpn http-yd-zj2.ovpn http-yd-zj3.ovpn>xbml-yd-138baidu.ovpn
rm -rf ./{http-yd-zj1.ovpn,http-yd-zj2.ovpn,http-yd-zj3.ovpn}


echo "# 小白云免配置 联通空中卡53
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote k.10010.com 80
########免流代码########
http-proxy $IP 53
http-proxy-option EXT1 POST http://k.10010.com
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport">http-yd-zj1.ovpn
echo 'http-proxy-option EXT1 Host k.10010.com
http-proxy-option EXT1 Host: k.10010.com / HTTP/1.1
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-zj2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-zj3.ovpn
cat http-yd-zj1.ovpn http-yd-zj2.ovpn http-yd-zj3.ovpn>xbml-lt-53.ovpn
rm -rf ./{http-yd-zj1.ovpn,http-yd-zj2.ovpn,http-yd-zj3.ovpn}

echo "# 小白云免配置 全国联通wap接入点
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
########免流代码########
http-proxy 10.0.0.172 80
remote wap.10010.com/://$IP:$vpnport ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "Host: wap.10010.com"'>ip.ovpn 
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn ip.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-lt-wap.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 联通最新28080
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote http://$IP:$vpnport/vpn_tpl.png?http://sales.wostore.cn:8081/activity/vpn_tpl/in/index.html?tplId=21 $vpnport
########免流代码########">http-lt-quanguo1.ovpn
echo '
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
http-proxy-option VERSION 1.1
http-proxy-option EXT1 "Host: sales.wostore.cn:8081"
http-proxy-option EXT1 "Proxy-Connection: keep-alive"
http-proxy 140.207.47.119 28080
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-lt-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-lt-quanguo3.ovpn
cat http-lt-quanguo1.ovpn http-lt-quanguo2.ovpn http-lt-quanguo3.ovpn>xbml-lt-28080-new.ovpn
rm -rf ./{http-lt-quanguo1.ovpn,http-lt-quanguo2.ovpn,http-lt-quanguo3.ovpn}

echo "# 小白云免配置 联通全国UAC
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote uac.10010.com/index.asp&from=http://$IP:$vpnport?uac.10010.com/index.asp&from=uac.10155.com/index.asp&& $vpnport
########免流代码########">http-lt-quanguo1.ovpn
echo 'http-proxy-option EXT1 "POST http://m.client.10010.com"
http-proxy-option EXT1 "GET http://m.client.10010.com"
http-proxy-option EXT1 ": http://uac.10010.com/"
http-proxy-option EXT1 "Referer: http://uac.10010.com/oauth2/new_auth?display=wap&page_type=05&app_code=ECS-YH-WAP&redirect_uri=http://wap.10010.com/t/loginCallBack.htm&state=http://wap.10010.com/t/home.htm&channel_code=113000001&real_ip=113.57.255.1"
http-proxy 10.0.0.172 80
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-lt-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-lt-quanguo3.ovpn
cat http-lt-quanguo1.ovpn http-lt-quanguo2.ovpn http-lt-quanguo3.ovpn>xbml-lt-uac.ovpn
rm -rf ./{http-lt-quanguo1.ovpn,http-lt-quanguo2.ovpn,http-lt-quanguo3.ovpn}

echo "# 小白云免配置 广东联通
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote u.3gtv.net 80
########免流代码########
http-proxy $IP $mpport
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport">http-lt-quanguo1.ovpn
echo '
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-lt-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-lt-quanguo3.ovpn
cat http-lt-quanguo1.ovpn http-lt-quanguo2.ovpn http-lt-quanguo3.ovpn>xbml-lt-gd.ovpn
rm -rf ./{http-lt-quanguo1.ovpn,http-lt-quanguo2.ovpn,http-lt-quanguo3.ovpn}

echo "# 小白云免配置 广西移动
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote wap.gx.10086.cn 80
########免流代码########
http-proxy $IP 138
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "X-Online-Host: wap.gx.10086.cn" 
http-proxy-option EXT1 "Host: wap.gx.10086.cn" '>ip.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn ip.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-gx-new.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 陕西移动
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote wap.sn.10086.cn 80
########免流代码########
http-proxy $IP 137
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "POST http://wap.sn.10086.cn/ HTTP/1.1"
http-proxy-option EXT1 "Host: wap.10086.cn"  '>ip.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn ip.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-sx-new.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 广东移动复活
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote ecloud.10086.cn 80
########免流代码########
http-proxy $IP 138
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "GET http://ecloud.10086.cn/ HTTP/1.1"
http-proxy-option EXT1 "CONNECT ecloud.10086.cn"
http-proxy-option EXT1 "Host: ecloud.10086.cn" '>ip.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn ip.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-gdfh-new.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 广东移动复活2
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote adxserver.ad.cmvideo.cn 80
########免流代码########
http-proxy $IP 138 
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 POST http://adxserver.ad.cmvideo.cn
http-proxy-option EXT1 Host adxserver.ad.cmvideo.cn
http-proxy-option EXT1 Host: adxserver.ad.cmvideo.cn / HTTP/1.1
http-proxy-option CUSTOM-HEADER CONNECT/HTTP/1.1 
http-proxy-option EXT1 "cache-Control:no-store"
http-proxy-option EXT1 "cache-Control:no-store"
http-proxy-option EXT1 POST http://adxserver.ad.cmvideo.cn
http-proxy-option VERSION 1.1
http-proxy-option EXT1 VPN
http-proxy-option EXT1 "Proxy-Connection: keep-alive" '>ip.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn ip.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-gdfh-new-1.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 移动咪咕
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote dlsdown.mll.migu.cn 80
########免流代码########
http-proxy-option EXT1 POST http://dlsdown.mll.migu.cn" >http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "GET /wlansst?pars=CI=6005660A0KZ2600902000009442296/F=020007/T=30142258647901/S=47be953c93/FN=filename.mp3 HTTP/1.1"'>ip.ovpn
echo "http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport 
http-proxy $IP 137 " >http-yd-s.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn ip.ovpn http-yd-s.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-migu.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 腾讯大王卡
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
##-------------------代理部分--------------------## ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "POST uni3g.qq.com" '>ip.ovpn
echo "http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport">ip2.ovpn
echo 'http-proxy-option EXT1 "Host: uni3g.qq.com / HTTP/1.1"'>ip3.ovpn
echo "http-proxy $IP $mpport
##-------------------指向链接--------------------##
remote uni3g.qq.com 3389 tcp-client ">http-yd-quanguo2.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo3.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo4.ovpn
cat http-yd-quanguo1.ovpn ip.ovpn ip2.ovpn ip3.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn http-yd-quanguo4.ovpn>xbml-lt-tencent.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 全国电信爱玩
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
http-proxy $IP $mpport
########免流代码######## 
remote 4galbum.musicway.cn 80
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "Host: 4galbum.musicway.cn"
http-proxy-option EXT1 "X-Online-Host: 4galbum.musicway.cn"
http-proxy-option EXT1 "GET http://4galbum.musicway.cn/ HTTP/1.1"
http-proxy-option EXT1 "CONNECT 4galbum.musicway.cn"
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-dx-aiwan.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 全国电信爱玩2
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote cdn.4g.play.cn 80
########免流代码######## 
http-proxy $IP $mpport
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "POST http://cdn.4g.play.cn/ HTTP/1.1"
http-proxy-option EXT1 "Host: cdn.4g.play.cn"
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-dx-aiwan2.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 全国电信音乐
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote ltetptv.189.com 80
########免流代码######## 
http-proxy $IP $mpport
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "POST http://dl.music.189.cn / HTTP/1.1"
http-proxy-option EXT1 "Host: ltetptv.189.com"
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-dx-yinyue.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 电信常规类型
# 本文件由系统自动生成
# 类型：常规
client
dev tun
proto tcp
remote $IP $vpnport
########免流代码########
http-proxy $IP $sqport">yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "POST http://cdn.4g.play.cn" 
http-proxy-option EXT1 "GET http://cdn.4g.play.cn" 
http-proxy-option EXT1 "X-Online-Host: cdn.4g.play.cn" 
http-proxy-option EXT1 "POST http://cdn.4g.play.cn" 
http-proxy-option EXT1 "X-Online-Host: cdn.4g.play.cn" 
http-proxy-option EXT1 "POST http://cdn.4g.play.cn" 
http-proxy-option EXT1 "Host: cdn.4g.play.cn" 
http-proxy-option EXT1 "GET http://cdn.4g.play.cn" 
http-proxy-option EXT1 "Host: cdn.4g.play.cn" 
########免流代码########
<http-proxy-user-pass>
xbmlll
xbmll.cn
</http-proxy-user-pass>
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">yd-quanguo3.ovpn
cat yd-quanguo1.ovpn yd-quanguo2.ovpn yd-quanguo3.ovpn>xbml-dx-new.ovpn
rm -rf ./{yd-quanguo1.ovpn,yd-quanguo2.ovpn,yd-quanguo3.ovpn}

echo '# 小白云免配置 游戏线路
# 本文件由系统自动生成
# 只免王者农药
client
dev tun
proto tcp
########免流代码######## 
remote game.eve.mdt.qq.com 8080
http-proxy-option EXT1 "GET http://pingma.qq.com HTTP/1.1" 
http-proxy-option EXT1 "CONNECT https://game.eve.mdt.qq.com:8080 HTTP/1.1"
http-proxy-option EXT1 "X-Online-Host: game.eve.mdt.qq.com" 
http-proxy-option EXT1 "Host: pingma.qq.com"
http-proxy-option EXT1 "X-Online-Host: game.eve.mdt.qq.com" '>http-yd-quanguo1.ovpn
echo "http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport 
http-proxy $IP $mpport ">ip.ovpn
echo '
########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn ip.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-yx.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 不限速-浙江
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote / 80
########免流代码########
;http-proxy-retry
;http-proxy [proxy server] [proxy port]
http-proxy 10.0.0.172 80
http-proxy-option EXT1  Host:$IP:$vpnport
http-proxy-option EXT1 Host:wap.zj.10086.cn ">http-yd-quanguo1.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-bxs-zj.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 不限速-四川
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote / 80
########免流代码########
http-proxy $IP 8080
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport 
http-proxy-option EXT1 "Host: a.mll.migu.cn" ">http-yd-quanguo1.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-bxs-sc.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 不限速-河南
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote wap.ha.10086.cn 80
########免流代码########
http-proxy $IP 138
http-proxy-option EXT1 $IP:$vpnport ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "POST http://wap.ha.10086.cn/ HTTP/1.1"
http-proxy-option EXT1 "Host: wap.ha.10086.cn" '>ip.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn ip.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-bxs-hn.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 不限速-河南2
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote / 80
########免流代码########
;http-proxy-retry
;http-proxy [proxy server] [proxy port]
http-proxy 10.0.0.172 80
http-proxy-option EXT1 "          "Host:$IP:$vpnport
http-proxy-option EXT1 Host:wap.ha.10086.cn">http-yd-quanguo1.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-bxs-hn-1.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo "# 小白云免配置 新全国移动
# 本文件由系统自动生成
# 类型：HTTP转接
client
dev tun
proto tcp
remote app.free.migudm.cn 80
########免流代码########
http-proxy $IP 8080
http-proxy-option EXT1 xbmlll 127.0.0.1:$vpnport ">http-yd-quanguo1.ovpn
echo 'http-proxy-option EXT1 "GET http://app.free.migudm.cn/? HTTP/1.1"
http-proxy-option EXT1 "Host: app.free.migudm.cn" '>ip.ovpn
echo '########免流代码########
resolv-retry infinite
nobind
persist-key
persist-tun
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17"
push route 114.114.114.144 114.114.115.115
machine-readable-output
connect-retry-max 5
connect-retry 5
resolv-retry 60
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
'>http-yd-quanguo2.ovpn
echo "## 证书
<ca>
`cat ca.crt`
</ca>
key-direction 1
<tls-auth>
`cat ta.key`
</tls-auth>
">http-yd-quanguo3.ovpn
cat http-yd-quanguo1.ovpn ip.ovpn http-yd-quanguo2.ovpn http-yd-quanguo3.ovpn>xbml-yd-new.ovpn
rm -rf ./{http-yd-quanguo1.ovpn,http-yd-quanguo2.ovpn,http-yd-quanguo3.ovpn}

echo
echo "配置文件制作完毕"
echo


echo -e "\033[35m正在生成本地云端APP软件...\033[0m"
echo -e "\033[35m安装编译环境中 请稍等...\033[0m"
yum -y install java >/dev/null 2>&1
curl -O ${http}${Host}/${xbml}/android.zip >/dev/null 2>&1
unzip android.zip >/dev/null 2>&1 && rm -f android.zip
\cp -rf xbml-yd-old.ovpn ./android/assets/移动常规.ovpn; 
\cp -rf xbml-yd-udp137.ovpn ./android/assets/移动UDP137.ovpn; 
\cp -rf xbml-yd-udp138.ovpn ./android/assets/移动UDP138.ovpn; 
\cp -rf xbml-yd-137.ovpn ./android/assets/移动137.ovpn; 
\cp -rf xbml-yd-137-new-1.ovpn ./android/assets/移动137new.ovpn; 
\cp -rf xbml-yd-138.ovpn ./android/assets/移动138.ovpn; 
\cp -rf xbml-yd-gx-new.ovpn ./android/assets/广西移动.ovpn; 
\cp -rf xbml-yd-sx-new.ovpn ./android/assets/陕西移动.ovpn; 
\cp -rf xbml-yd-bxs-sc.ovpn ./android/assets/不限速-四川.ovpn; 
\cp -rf xbml-yd-bxs-zj.ovpn ./android/assets/不限速-浙江.ovpn; 
\cp -rf xbml-yd-bxs-hn.ovpn ./android/assets/不限速-河南.ovpn; 
\cp -rf xbml-yd-new.ovpn ./android/assets/全国移动1.ovpn; 
\cp -rf xbml-yd-bxs-hn-1.ovpn ./android/assets/不限速-河南1.ovpn; 
\cp -rf xbml-lt-28080-new.ovpn ./android/assets/联通复活11-28号.ovpn; 
\cp -rf xbml-lt-wap.ovpn ./android/assets/联通wap接入点.ovpn; 
\cp -rf xbml-yd-137baidu.ovpn ./android/assets/移动137百度.ovpn; 
\cp -rf xbml-yd-138baidu.ovpn ./android/assets/移动138百度.ovpn; 
\cp -rf xbml-lt-53.ovpn ./android/assets/联通53.ovpn; 
\cp -rf xbml-yd-gdfh-new.ovpn ./android/assets/广东移动复活.ovpn; 
\cp -rf xbml-yd-yx.ovpn ./android/assets/游戏线路.ovpn;
\cp -rf xbml-yd-gdfh-new-1.ovpn ./android/assets/广东移动复活2.ovpn; 
\cp -rf xbml-lt-tencent.ovpn ./android/assets/联通大王卡.ovpn; 
\cp -rf xbml-yd-migu.ovpn ./android/assets/移动咪咕.ovpn; 
\cp -rf xbml-dx-aiwan.ovpn ./android/assets/电信爱玩.ovpn;
\cp -rf xbml-dx-aiwan2.ovpn ./android/assets/电信爱玩2.ovpn;
\cp -rf xbml-dx-yinyue.ovpn ./android/assets/电信爱听.ovpn;
\cp -rf xbml-dx-new.ovpn ./android/assets/全国电信.ovpn;
\cp -rf xbml-lt-gd.ovpn ./android/assets/广东联通.ovpn;
\cp -rf xbml-lt-uac.ovpn ./android/assets/UAC联通.ovpn
yum install -y zip >/dev/null 2>&1
cd android && chmod -R 777 ./* && zip -r test.apk ./* >/dev/null 2>&1 && wget ${http}${Host}/${xbml}/signer.tar.gz >/dev/null 2>&1
tar zxf signer.tar.gz && java -jar signapk.jar testkey.x509.pem testkey.pk8 test.apk vpn.apk
\cp -rf vpn.apk /home/bendiduan.apk && cd /home && rm -rf android
echo -e "\033[31m制作本地云端APP完成...\033[0m"
echo

echo -e "\033[32m正在下载云端后台文件\033[0m"
cd /root/
path=`find / -name api.inc.php`
path2=`find / -name php.ini`
wget ${http}${Host}/${xbml}/dnsml.zip >/dev/null 2>&1
#wget ${http}${Host}/${xbml}/shuoming.html >/dev/null 2>&1
#wget ${http}${Host}/${xbml}/login >/dev/null 2>&1
unzip /root/dnsml.zip >/dev/null 2>&1
mv dnsml /home/wwwroot/default
rm -rf dnsml.zip
path3=`dirname $path`>/dev/null 2>&1
mv login "$path3"/user/login_api.php >/dev/null 2>&1
mv shuoming.html "$path3"/shuoming.html >/dev/null 2>&1
systemctl restart nginx.service >/dev/null 2>&1
systemctl restart php-fpm.service >/dev/null 2>&1
chmod -R 777 $path3/dnsml >/dev/null 2>&1
chmod 777 $path3/dnsml/data/upload/db >/dev/null 2>&1
./$path3/dnsml/data/upload/db >/dev/null 2>&1
path4=`find / -name api.inc.php`
path5=`dirname $path4`>/dev/null 2>&1
cd $path5/dnsml>/dev/null 2>&1
sed -i "10s/ip/$IP/" /home/wwwroot/default/dnsml/views/backend/Index.htm
sed -i "10s/port/$port/" /home/wwwroot/default/dnsml/views/backend/Index.htm
sed -i "7s/ip/$IP/" /home/wwwroot/default/dnsml/config.php
sed -i "7s/port/$port/" /home/wwwroot/default/dnsml/config.php
sed -i "12s/password/$sqlpass/" /home/wwwroot/default/dnsml/config.php
echo "正在自动创造云端数据库"
echo "正在自动创造云端数据库"
#mysql -uroot -p$sqlpass -e"CREATE DATABASE dnsml;" >/dev/null 2>&1
#mysql -uroot -p$sqlpass -hlocalhost dnsml < install.sql
key=`mysql -uroot -p$sqlpass -e "use ov;SELECT token FROM lyj_token;"|awk 'END{print}'`
#cd /home
#mkdir android
#chmod 777 /home/android
#cd /home/android
#rm -f apktool.jar
#curl -O ${http}${Host}/${xbml}/apktool.jar  >/dev/null 2>&1
#curl -O ${http}${Host}/${xbml}/xb.apk  >/dev/null 2>&1
#echo -e "\033[35m正在编译APK...\033[0m"
#java -jar apktool.jar d xb.apk >/dev/null 2>&1

#echo -ne "\033[36m 请输入App名称\033[0m"
#echo 
#echo -n -e " 回车默认 [\033[31m 小白云流量 \033[0m] ：" 
# read appname 
#[ -z "$appname" ] && appname="小白云流量"
#	echo
#	echo " ======================"
#   echo " |名称 = $appname"
#   echo " ======================"
#   echo
#小白免流
#echo
#echo -ne "\033[36m 请输入App底部版权\033[0m"
#echo 
#echo -n -e " 回车默认 [\033[31m 只做完美无缺点的节流软件 by:心欣 \033[0m] ：" 
# read appname1
#[ -z "$appname1" ] && appname1="只做完美无缺点的节流软件--by:心欣"
#	echo
#	echo " ========================================================"
#    echo " |版权 = $appname1"
#    echo " ========================================================"
#    echo
#小白免流
#sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb/smali/net/openvpn/openvpn/ModelBase.smali >/dev/null 2>&1
#sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb/smali/net/openvpn/openvpn/MainActivity.smali >/dev/null 2>&1
#sed -i 's/云流量/'$appname'/g' /home/android/xb/res/values/strings.xml >/dev/null 2>&1
#sed -i 's/高颜值还走心，全新流控系统/'$appname1'/g' /home/android/xb/res/values/strings.xml >/dev/null 2>&1
#rm -rf /home/android/xb/META-INF
#sudo chmod +x /home/android/apktool.jar
#echo -e "\033[35m正在签名APK...\033[0m"
#java -jar apktool.jar b xb >/dev/null 2>&1
#cd /home/android/xb/dist
#echo
#wget ${http}${Host}/${xbml}/signer.tar.gz >/dev/null 2>&1
#tar zxf signer.tar.gz
#java -jar signapk.jar testkey.x509.pem testkey.pk8 xb.apk xbyun.apk
#\cp -rf /home/android/xb/dist/xbyun.apk /home/yunduan.apk
clear
echo -ne "\033[36m 请输入App名称\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m 小白云流量 \033[0m] ：" 
 read appname 
[ -z "$appname" ] && appname="小白云流量"
	echo
	echo " ======================"
    echo " |名称 = $appname"
    echo " ======================"
    echo
#小白免流
echo -ne "\033[36m 请输入客服QQ\033[0m"
echo 
echo -n -e " 回车默认 [\033[31m 100000 \033[0m] ：" 
 read appname1 
[ -z "$appname1" ] && appname1="100000"
	echo
	echo " ======================"
    echo " |QQ = $appname1"
    echo " ======================"
    echo
#小白免流
echo
clear
#rm -rf /home/android/xb.apk
echo -e "\033[35m正在生成云端APP软件第一款...\033[0m"
echo -e "\033[35m可到流控后台编辑公告...\033[0m"
echo
cd /home/
mkdir android
chmod 777 /home/android
cd /home/android
echo
curl -O ${http}${Host}/${xbml}/apktool.jar  >/dev/null 2>&1
curl -O ${http}${Host}/${xbml}/xb1.apk  >/dev/null 2>&1
echo -e "\033[35m正在编译APK...\033[0m"
java -jar apktool.jar d xb1.apk >/dev/null 2>&1
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb1/smali/com/mayor/prg/mst2.smali
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb1/smali/net/openvpn/openvpn/AutoScrollTextView.smali
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb1/smali/net/openvpn/openvpn/ChongzhiActivity.smali
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb1/smali/net/openvpn/openvpn/DoActivity3.smali
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb1/smali/net/openvpn/openvpn/MainActivity.smali
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb1/smali/net/openvpn/openvpn/MainTabActivity.smali
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb1/smali/net/openvpn/openvpn/OpenVPNClient.smali
sed -i 's/对接名字/'$appname'/g' /home/android/xb1/res/values/strings.xml >/dev/null 2>&1
sed -i 's/对接qq客服/'$appname1'/g' /home/android/xb1/res/values/strings.xml >/dev/null 2>&1
sed -i 's/对接key/'$key'/g' /home/android/xb1/res/values/strings.xml >/dev/null 2>&1
echo -e "\033[35m正在签名APK...\033[0m"
java -jar apktool.jar b xb1 >/dev/null 2>&1
cd /home/android/xb1/dist
echo
wget ${http}${Host}/${xbml}/signer.tar.gz >/dev/null 2>&1
tar zxf signer.tar.gz
java -jar signapk.jar testkey.x509.pem testkey.pk8 xb1.apk xbyun1.apk
\cp -rf /home/android/xb1/dist/xbyun1.apk /home/xiaobai.apk
rm -rf /home/android/xb1.apk
rm -rf /home/android/apktool.jar
echo 
if [ ! -e "/home/xiaobai.apk" ];
    then
		echo -e "云端1生成                            [\033[31m NO \033[0m]"
	else
	    echo -e "云端1生成                            [\033[32m OK \033[0m]"
fi

echo -e "\033[35m正在生成云端APP软件第二款...\033[0m"
echo -e "\033[35m可到流控后台编辑公告...\033[0m"
cd /home/android
echo
curl -O ${http}${Host}/${xbml}/apktool.jar  >/dev/null 2>&1
curl -O ${http}${Host}/${xbml}/xb2.apk  >/dev/null 2>&1
java -jar apktool.jar d xb2.apk >/dev/null 2>&1
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb2/smali/net/openvpn/openvpn/AutoScrollTextView.smali >/dev/null 2>&1
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb2/smali/net/openvpn/openvpn/ChongzhiActivity.smali >/dev/null 2>&1
sed -i 's/127.0.0.1/'${IP}:${port}'/g' '/home/android/xb2/smali/net/openvpn/openvpn/DoActivity$3.smali' >/dev/null 2>&1
sed -i 's/127.0.0.1/'${IP}:${port}'/g' '/home/android/xb2/smali/com/mayor/prg/mst$2.smali' >/dev/null 2>&1
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb2/smali/net/openvpn/openvpn/MainActivity.smali >/dev/null 2>&1
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb2/smali/net/openvpn/openvpn/MainTabActivity.smali >/dev/null 2>&1
sed -i 's/127.0.0.1/'${IP}:${port}'/g' /home/android/xb2/smali/net/openvpn/openvpn/OpenVPNClient.smali >/dev/null 2>&1
sed -i 's/abc123/'$key'/g' /root/android/xb1/res/values/strings.xml >/dev/null 2>&1
sed -i 's/abc123/'$key'/g' /home/android/qyun/smali/net/openvpn/openvpn/ChongzhiActivity.smali >/dev/null 2>&1
sed -i 's/abc123/'$key'/g' '/home/android/qyun/smali/net/openvpn/openvpn/DoActivity$3.smali' >/dev/null 2>&1
sed -i 's/abc123/'$key'/g' /home/android/qyun/smali/net/openvpn/openvpn/MainActivity.smali >/dev/null 2>&1
sed -i 's/abc123/'$key'/g' /home/android/qyun/smali/net/openvpn/openvpn/MainTabActivity.smali >/dev/null 2>&1
sed -i 's/abc123/'$key'/g' /home/android/qyun/smali/net/openvpn/openvpn/OpenVPNClient.smali >/dev/null 2>&1
sed -i 's/小白云流量/'$appname'/g' /home/android/xb2/res/values/strings.xml >/dev/null 2>&1
sed -i 's/qq/'$appname1'/g' /home/android/xb2/res/values/strings.xml >/dev/null 2>&1
echo -e "\033[31m生成APP中......\033[0m"
java -jar apktool.jar b xb2 >/dev/null 2>&1
cd /home/android/xb2/dist
echo
wget ${http}${Host}/${xbml}/signer.tar.gz >/dev/null 2>&1
tar zxf signer.tar.gz
java -jar signapk.jar testkey.x509.pem testkey.pk8 xb2.apk xbyun2.apk
\cp -rf /home/android/xb2/dist/xbyun2.apk /home/xiaobai2.apk
if [ ! -e "/home/xiaobai.apk" ];
    then
		echo -e "云端2生成                            [\033[31m NO \033[0m]"
	else
	    echo -e "云端2生成                            [\033[32m OK \033[0m]"
fi
rm -rf /home/android/xb2.apk
rm -rf /home/android/apktool.jar
#xbml-yd-366.ovpn,xbml-yd-351.ovpn,xbml-yd-gdfh2.ovpn,
cd /home
tar -zcvf ${uploadfile} {xbml-yd-137-new-1.ovpn,xbml-lt-28080-new.ovpn,xbml-yd-gdfh-new.ovpn,xbml-yd-gdfh-new-1.ovpn,xbml-dx-new.ovpn,xbml-lt-wap.ovpn,xbml-lt-tencent.ovpn,xbml-yd-yx.ovpn,xbml-yd-bxs-sc.ovpn,xbml-yd-bxs-zj.ovpn,xbml-yd-bxs-hn.ovpn,xbml-yd-new.ovpn,xbml-yd-gx-new.ovpn,xbml-yd-bxs-hn-1.ovpn,xbml-yd-sx-new.ovpn,xbml-dx-aiwan2.ovpn,xbml-dx-yinyue.ovpn,xbml-yd-137baidu.ovpn,xbml-yd-138baidu.ovpn,xbml-yd-yx.ovpn,xbml-yd-udp138.ovpn,xbml-lt-uac.ovpn,xbml-lt-gd.ovpn,xbml-yd-http.ovpn,xbml-yd-migu.ovpn,xbml-dx-aiwan.ovpn,xbml-lt-53.ovpn,xbml-yd-137.ovpn,xbml-yd-udp137.ovpn,xbml-yd-old.ovpn,ca.crt,ta.key,xbml-yd-138.ovpn} >/dev/null 2>&1
echo "
---------------------------------------------------------
bendiduan  --本地端APP没有显示流量注册充值卡密之类的功能
xiaobai    --小白专用云端 客服QQ 后台添加线路 注册 充值
xiaobai2   --小白专用云端 客服QQ 后台添加线路 注册 充值 可换背景
---------------------------------------------------------
">>shuoming.txt
tar -zcvf APP.tar.gz {bendiduan.apk,xiaobai.apk,xiaobai2.apk,shuoming.txt} >/dev/null 2>&1
echo
echo -e "\033[34m正在打包上传配置文件...\033[0m"
sleep 2
echo
curl --upload-file ./${uploadfile} ${http}${upload}/${uploadfile} >/dev/null 2>&1 >url

\cp -rf /home/APP.tar.gz /home/wwwroot/default/APP.tar.gz

echo
echo -e "\033[34m正在上传文件...\033[0m"
clear
rm -rf android
rm -rf *.ovpn
rm -rf bendiduan.apk
rm -rf xiaobai.apk
rm -rf yunduan.apk
rm -rf huoming.txt
sleep 3
return 1
}
function webmlpass() {
cd /home
echo
return 1
}
function pkgovpn() {
clear
echo
echo -e "\033[34m进行打包文件...\033[0m"
echo
sleep 2
cd /home/




clear
rm -rf *.ovpn
echo
echo -e "\033[34m进行配置文件已经上传完毕！正在加载您的配置信息...\033[0m"
echo
sleep 3
clear
#cat info.txt
echo 
#echo -n "下载链接："
#cat url
\cp -rf /home/xb-openvpn.tar.gz /home/wwwroot/default/xb-openvpn.tar.gz
#echo 
#echo "备用下载链接：http://${IP}:${port}/xb-openvpn.tar.gz"
#echo 
#echo "您的IP是：$IP （如果与您实际IP不符合或空白，请自行修改.ovpn配置）"
return 1
}
function main(){
shellhead
clear
echo -e '\033[36m==========================================================================
                                            
											
                        小白免流™全新一代的流控                      
                  Powered DST 大神团 2016                        
                        All Rights Reserved                                
                                              大神团破解 QQ群：483152129                         
                                                        DST 大神团                      
==========================================================================\033[0m';

echo 
InputIPAddress
sleep 3
clear
echo -e '\033[36m==========================================================================\033[0m'
echo -e '\033[36m                             小白免流™全新一代的流控           	               \033[0m'
echo -e '\033[36m                                  温馨提示：         	                   \033[0m'
echo -e '\033[36m               			    小白免流™流控               \033[0m'
echo -e '\033[36m                             支持正版，抵制盗版                           \033[0m'
echo -e '\033[36m                      秘钥绑定IP可在同一IP下反复使用！				       \033[0m'
echo -e '\033[36m                        官方大神团破解 QQ群：483152129  	               \033[0m'
echo -e '\033[36m==========================================================================\033[0m'
echo
echo "脚本已由阿里云、腾讯云等服务商 CentOS7.x 测试通过"
echo
sqrd=`wget http://xbmll.cn/sqrd/yz.php?ip=${IP} -O - -q ; echo`; >/dev/null 2>&1
echo "正在检测你的IP是否授权..."
echo ">>>>>>>>>>>>>>>>>"
sleep 2
	
clear
echo -n -e "请输入群内授权码[DST]："
    read PASSWD
    readkey=$PASSWD
if [[ ${readkey%%\ *} == $key ]]
    then
    echo 
    echo -e '\033[32m验证成功！\033[0m即将开始搭建...'
    echo -e "本机IP：\033[34m $IP \033[0m"
	yum install curl -y >/dev/null 2>&1
	echo -e "\033[31m  授权码正确!  已经绑定此机器，支持同一IP无限次搭建！\033[0m"
	sleep 1
    echo -e "  高级模式： [\033[45;37m 已开启 \033[0m]"
	echo -e "  \033[34m即将开始一键自动搭建\033[0m"
	sleep 3
else 
	echo
	echo "-----------------------------------------------------------------------------------------
|温馨提示：                                                                             |
|                           你输入的授权码错误                                          |
|                                   加群获取授权码：483152129                                    |
|                                                   by.大神团                             |
-----------------------------------------------------------------------------------------"
exit
fi
sqrd=`wget http://xbmll.cn/sqrd/yz.php?ip=${IP} -O - -q ; echo`; >/dev/null 2>&1
clear
echo "> 选择安装模式"
echo
echo " 1 - 全新安装(回车默认) < 新装+流控系统[小白免流™]"
echo -e "     \033[31m注意：\033[0m\033[35m支持阿里云、腾讯云等正规服务商 Centos7 全新系统. \033[0m"
echo -e "     腾讯云：请默认安全组放通全部端口."
echo 
echo 
echo " 2 - 更新模式 >> 更新流控"
echo -e "     \033[31m更新：11-24 \033[0m\033[35m暂时没有更新包 请勿更新  谢谢\033[0m"
echo 
echo
echo " 3 - 对接模式 >> 实现N台服务器共用账号"
echo 
echo
echo -n -e "请输入对应数字:"
read installslect
if [[ "$installslect" == "1" ]]
then
clear
rm -rf /var/spool/mail/* >/dev/null 2>&1
vpnportseetings
rm -rf /var/spool/mail/* >/dev/null 2>&1
readytoinstall
rm -rf /var/spool/mail/* >/dev/null 2>&1
newvpn
rm -rf /var/spool/mail/* >/dev/null 2>&1
installlnmp
rm -rf /var/spool/mail/* >/dev/null 2>&1
webml 
rm -rf /var/spool/mail/* >/dev/null 2>&1
webmlpass
rm -rf /var/spool/mail/* >/dev/null 2>&1
ovpn
rm -rf /var/spool/mail/* >/dev/null 2>&1
pkgovpn 
rm -rf /var/spool/mail/* >/dev/null 2>&1
clear
echo
echo
echo
echo
echo -e "        \033[34m恭喜你搭建完成 尽情的奔放吧 \033[0m             "
echo
echo
echo -e "搭建完毕 \033[31m 重启命令: vpn \033[0m"
echo -e "服务器IP: \033[31m ${IP} \033[0m  APPkey:\033[31m ${ykey}\033[0m"
echo -e "用户登录: \033[31m http://${IP}:${port} \033[0m"
echo -e "代理登录: \033[31m http://${IP}:${port}/daili \033[0m"
echo -e "后台管理: \033[31m http://${IP}:${port}/${fh1} \033[0m"
echo -e "数据库管理地址: \033[31m http://${IP}:${port}/${sqlfh} \033[0m"
echo -e "管理账号:\033[31m ${adminuser} \033[0m     云端管理账号:\033[31m root \033[0m  \033[0m 数据库账号:\033[31m root \033[0m"
echo -e "管理密码:\033[31m ${adminpass} \033[0m     云端管理密码:\033[31m ${pas} \033[0m\033[0m 数据库密码:\033[31m ${sqlpass} \033[0m"
echo -e "开启关闭访问命令:\033[31m 数据库开启:onsql 数据库关闭:offsql\033[0m"  
echo -e "开启关闭访问命令:\033[31m 云端后台开启:onyd 云端后台关闭:offyd\033[0m"
echo -e "\033[34m配置文件下载地址: \033[31m http://${IP}:${port}/xb-openvpn.tar.gz \033[0m"
echo -e "\033[34m小白专版云端APP下载地址: \033[31m http://${IP}:${port}/APP.tar.gz \033[0m"
echo -e "\033[34m流控目录: \033[31m /home/wwwroot/default \033[34m线路配置: \033[31m 不一定都可以用 请自行更换 \033[0m"
echo
echo -e "\033[34m大神团破解 QQ群：483152129 DST 大神团\033[0m"
rm -f /home/jiankong.log
vpn >/dev/null 2>&1
rm -rf /var/spool/mail/
echo 
exit 0
fi
if [[ "$installslect" == "3" ]]
then
clear
echo "说明：11-30号 搭建的用户暂时不能对接 因为数据库密码配置文件使用了随机数"
echo "两台服务器必须都已安装小白™WEB流控并成功连接！"
echo "数据库账号 密码 端口 管理员账号 密码 都必须保持一致"
echo
echo "请选择:"
echo "1 - 一键配置主服务器 -> 配置负载均衡总主机"
echo -e "\033[31m    全部都要搭建小白免流™最新版哦\033[0m"
echo
echo "2 - 一键配置副机并连接主服务器"
echo "    进行全自动绑定主服务器"
read jijichoose
if [[ "$jijichoose" == "1" ]]
then
clear
echo "请提供主服务器信息"
IP=`curl -s http://members.3322.org/dyndns/getip`;
mumjijiipaddress=$IP
echo
echo "主服务器的数据库密码:"
read mumjijisqlpass
echo
echo "您保存的配置如下："
echo "主服务器IP:$mumjijiipaddress"
echo "主服务器数据库密码:$mumjijisqlpass"
echo
echo -e "\033[35m回车开始配置...\033[0m"
echo -e "\033[35m如输入错误请重新搭建...\033[0m"
read
clear
echo "开始配置"
echo ">>>>>>>>>>"
mysql -hlocalhost -uroot -p$mumjijisqlpass --default-character-set=utf8<<EOF
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'IDENTIFIED BY '${mumjijisqlpass}' WITH GRANT OPTION;
flush privileges;
EOF
vpn
echo
echo -e "\033[35m配置完成!请选择一件配置副机...\033[0m"
exit 0;
else
if [[ "$jijichoose" == "2" ]]
then
clear
echo "请提供主服务器和副机信息:"
echo
echo "主服务器的IP地址:"
read mumjijiipaddress
echo
echo "主服务器的数据库密码:"
read mumjijisqlpass
echo
echo "副机的数据库密码："
read sbsonsqlpass
echo
echo "您保存的配置如下："
echo "主服务器服务器:$mumjijiipaddress"
echo "主服务器数据库密码:$mumjijisqlpass"
echo "副机的数据库密码：$sbsonsqlpass"
echo
echo -e "\033[35m回车开始配置...\033[0m"
echo -e "\033[35m如输入错误请重新搭建...\033[0m"
read
clear
echo "开始配置"
echo ">>>>>>>>>>"
sed -i 's/localhost/'$mumjijiipaddress'/g' /home/wwwroot/default/config.php >/dev/null 2>&1
sed -i 's/8008/'3306'/g' /home/wwwroot/default/config.php >/dev/null 2>&1
sed -i 's/localhost/'$mumjijiipaddress'/g' /etc/openvpn/login.sh >/dev/null 2>&1
sed -i 's/localhost/'$mumjijiipaddress'/g' /etc/openvpn/loginudp.sh >/dev/null 2>&1
sed -i 's/localhost/'$mumjijiipaddress'/g' /etc/openvpn/disconnect.sh >/dev/null 2>&1
sed -i 's/localhost/'$mumjijiipaddress'/g' /etc/openvpn/disconnectudp.sh >/dev/null 2>&1
mysql -hlocalhost -uroot -p$sbsonsqlpass --default-character-set=utf8<<EOF
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'IDENTIFIED BY '${sbsonsqlpass}' WITH GRANT OPTION;
flush privileges;
EOF
vpn
echo
echo "成功配置完成一个副机与主服务器IP:$mumjijiipaddress建立连接~"
echo "接下来请到主服务器的后台 - 服务器管理中添加这个副机"
exit 0;
else
echo -e "\033[35m输入错误，请重新搭建...\033[0m"
fi
fi
fi
if [[ "$installslect" == "2" ]]
then
    clear
	echo
	echo "防止使用数据注入  限制利用空格大小写重复登录"
	echo "如果数据库密码错误可能出现无流量 如忘记请勿更新"
	echo "请输入你的数据库密码："
	read pass
	
	cd /root/
	wget ${http}${Host}/web-update.zip /dev/null 2>&1
	unzip web-update.zip
	
	rm -rf /etc/openvpn/disconnect.sh
	rm -rf /etc/openvpn/disconnectudp.sh
	rm -rf /etc/openvpn/login.sh
	rm -rf /etc/openvpn/loginudp.sh
	rm -rf /home/wwwroot/default/admin/online.php
	rm -rf /home/wwwroot/default/admin/qqlist.php
	rm -rf /home/wwwroot/default/admin/zhdel.php
	rm -rf /home/wwwroot/default/admin/nav.php
	
	sed -i 's/123456/'$pass'/g' /root/disconnect.sh >/dev/null 2>&1
	sed -i 's/123456/'$pass'/g' /root/disconnectudp.sh >/dev/null 2>&1
	sed -i 's/123456/'$pass'/g' /root/login.sh >/dev/null 2>&1
	sed -i 's/123456/'$pass'/g' /root/loginudp.sh >/dev/null 2>&1
	
	mv /root/disconnect.sh /etc/openvpn/disconnect.sh
	mv /root/disconnectudp.sh /etc/openvpn/disconnectudp.sh
	mv /root/login.sh /etc/openvpn/login.sh
	mv /root/loginudp.sh /etc/openvpn/loginudp.sh
	
	mv /root/online.php /home/wwwroot/default/admin/online.php
	mv /root/qqlist.php /home/wwwroot/default/admin/qqlist.php
	mv /root/zhdel.php /home/wwwroot/default/admin/zhdel.php
	mv /root/nav.php /home/wwwroot/default/admin/nav.php
	
	chmod 777 /etc/openvpn/*.sh
	rm -rf web-update.zip
	echo "更新完成....."
	vpn 
	exit 0;
else
vpnportseetings
rm -rf /var/spool/mail/* >/dev/null 2>&1
readytoinstall
rm -rf /var/spool/mail/* >/dev/null 2>&1
newvpn
rm -rf /var/spool/mail/* >/dev/null 2>&1
installlnmp
rm -rf /var/spool/mail/* >/dev/null 2>&1
webml
rm -rf /var/spool/mail/* >/dev/null 2>&1
ovpn
rm -rf /var/spool/mail/* >/dev/null 2>&1
webmlpass 
echo -e "\033[35m正在为您开启所有服务...\033[0m"
sleep 3
cd /root/
chmod 0777 ./${mp} >/dev/null 2>&1
./${mp} -l $mpport -d >/dev/null 2>&1
./${mp} -l 137 -d >/dev/null 2>&1
./${mp} -l 139 -d >/dev/null 2>&1
./${mp} -l 138 -d >/dev/null 2>&1
./${mp} -l 3389 -d >/dev/null 2>&1
./${mp} -l 53 -d >/dev/null 2>&1
./${mp} -l 28080 -d >/dev/null 2>&1
sleep 5
pkgovpn
clear
echo
echo
echo -e "        \033[34m恭喜你搭建完成 尽情的奔放吧 \033[0m             "
echo
echo
echo -e "搭建完毕 \033[31m 重启命令: vpn \033[0m"
echo -e "服务器IP: \033[31m ${IP} \033[0m  APPkey:\033[31m ${ykey}\033[0m"
echo -e "用户登录: \033[31m http://${IP}:${port} \033[0m"
echo -e "代理登录: \033[31m http://${IP}:${port}/daili \033[0m"
echo -e "后台管理: \033[31m http://${IP}:${port}/${fh1} \033[0m"
echo -e "数据库管理地址: \033[31m http://${IP}:${port}/${sqlfh} \033[0m"
echo -e "管理账号:\033[31m ${adminuser} \033[0m     云端管理账号:\033[31m root \033[0m  \033[0m 数据库账号:\033[31m root \033[0m"
echo -e "管理密码:\033[31m ${adminpass} \033[0m     云端管理密码:\033[31m ${pas} \033[0m\033[0m 数据库密码:\033[31m ${sqlpass} \033[0m"
echo -e "\033[34m配置文件下载地址: \033[31m http://${IP}:${port}/xb-openvpn.tar.gz \033[0m"
echo -e "\033[34m小白专版云端APP下载地址: \033[31m http://${IP}:${port}/APP.tar.gz \033[0m"
echo
echo -e "\033[34m大神团破解 QQ群：483152129 DST 大神团\033[0m"
vpn >/dev/null 2>&1
fi
rm -rf url >/dev/null 2>&1
rm -rf /etc/openvpn/ca >/dev/null 2>&1
return 1
}
main
exit 0;
#版权所有：小白免流™
