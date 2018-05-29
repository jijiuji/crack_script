#!/bin/bash
key=`curl -s http://hutxy.cn/sq`;
Host=www.jyunml.top
File=llws
http="http://"
wget -qO logo.png http://www.dingd.cn/ttt.png
/usr/bin/eog -f logo.png
echo -e "\033[36m                  欢迎使用叮咚流量卫士一键云端安装脚本\033[0m"
echo -e             
echo -e "\033[31m                      （对接流量卫视4.0）\033[0m"
echo -e             
echo -e "\033[35m                                                > By：jinyun\033[0m"
echo -e "\033[36m               脚本已经破解,交流群：302742839，欢迎您的加入！\033[0m"
echo 
echo -n -e "请输入授权码 [\033[32m 回车开始 \033[0m] ："
    readkey='520'
    if [[ $readkey == 520 ]]
    then
        echo 
		echo -e '验证成功！'
		sleep 2
    else
        echo
		echo -e '验证失败 ，请重新尝试!'
		sleep 2
		exit
fi
clear #清空屏幕
echo -e "---------------------------------------------------"
echo -e "欢迎使用流量卫士一键云端安装脚本"
echo -e "---------------------------------------------------"
echo -e "[安装细则]"
echo -e "1. 脚本为自动安装，如果使用本脚本无法成功安装，您可以使用传统的WEB安装方式"
echo -e "2. 安装时系统会覆盖原有的app_api文件夹，请务必自行备份重要文件"
echo -e "3. 系统会自动备份config.php app_reg.php 与 sms.config.php"
echo -e "4. 本脚本人畜无害 绿色无毒"
echo -e "请输入回车后确认执行已破解"
read -n1
clear 
echo "
---------------------------------------------------------
请选择您要进入的安装模式，输入相应的序号后回车
---------------------------------------------------------

---------------------------------------------------------
【1】全新安装（旧的APP数据会被删除 && APP生成）
【2】升级安装（数据库不会再重新安装 && APP生成）
【3】仅制作APP （仅仅生成APP）
【4】仅升级后台 （仅仅升级后台）
---------------------------------------------------------
智障团队：提供破解  
---------------------------------------------------------
（温馨提示：写错可用Ctrl+退格 删除）
---------------------------------------------------------
"
read install_type

if [ $install_type == 1 ];then
	echo -e "\033[32m -------------------------------- \033[0m"
	echo -e "\033[32m             欢迎安装流量卫士          \033[0m"
	echo -e "\033[32m -------------------------------- \033[0m"
	#exit 0
elif [ $install_type == 2 ];then 
	echo -e "开始进行升级安装"
	
elif [ $install_type == 3 ];then 
	echo -e "\033[32m -------------------------------- \033[0m"
	echo -e "\033[32m             APP一键生成          \033[0m"
	echo -e "\033[32m -------------------------------- \033[0m"
else
	install_type=4 
	echo -e "\033[32m -------------------------------- \033[0m"
	echo -e "\033[32m             云端一键升级         \033[0m"
	echo -e "\033[32m -------------------------------- \033[0m"
	
fi

#获取用户输入的appke
echo -e "[请输入您的授权域名 不要加端口和http://(升级请直接回车)]"
read domain

echo -e "[请输入您的web流控端口(升级请直接回车)]"
read port

echo -e "[请输入您的APP授权码（32位长度）(升级请直接回车)随便打32个字符]"
read app_key
echo -e "==========自动检测WEB目录========="

file1="/home/wwwroot/default/"
file2="/home/www/default/"
file3="/etc/openvpn/web/"
file4="/data/www/default/"

if test -d $file1;then
	web_path=$file1
elif test -d $file2;then
	web_path=$file2
elif test -d $file3;then
	web_path=$file3
elif test -d $file4;then
	web_path=$file4
else 
	echo -e "系统未能检测到您的WEB目录 请手动输入："
	read web_path
		if test -d $web_path;then
			echo -e "已经确认WEB目录"
		else
			echo -e "抱歉！未能检测到该目录！请确认后重新执行本程序！"
		exit 0;
		fi
	fi
echo -e "您的流控目录为：$web_path"
chmod -R 777 $web_path
	
	#如果选择的是全新安装或者升级安装 执行此部分
	if [ $install_type == 1 ] || [ $install_type == 2 ] || [ $install_type == 4 ];then 

		echo -e "===========开始云端安装==========="

		cd $web_path

		if test -f app_api.zip
		then
		#删除旧的安装包
		rm app_api.zip
			echo -e "删除旧的安装包\n";
		else
			echo -e "未找到旧的安装包\n"
		fi

		if [ $install_type == 1 ];then
			wget ${http}${Host}/${File}/app_api.zip && unzip -o app_api.zip >/dev/null 2>&1 #全新安装 覆盖全部文件
		else 
			wget ${http}${Host}/${File}/app_api.zip && unzip -o app_api.zip -x config.php system.php sms.config.php data/* html/* >/dev/null 2>&1#升级安装 配置文件保留
		fi
		rm app_api.zip

		chmod -R 777 ${web_path}app_api

		echo -e "校验文件完整性"

		if test -f  ${web_path}app_api/system.php;then
			echo -e "\033[32m  system.php------------文件存在 \033[0m"
		else
			echo -e "\033[31m system.php------------文件丢失 \033[0m" 
		fi
		if test -f  ${web_path}app_api/config.php;then
			echo -e "\033[32m  config.php------------文件存在 \033[0m"
		else
			echo -e "\033[31m config.php------------文件丢失 \033[0m" 
		fi
		if test -f  ${web_path}app_api/sms.config.php;then
			echo -e "\033[32m  sms.config.php------------文件存在 \033[0m"
		else
			echo -e "\033[31m sms.config.php------------文件丢失 \033[0m" 
		fi

		echo -e "文件校验完成 如果提示文件丢失 请手动上传"

		#curl "http://$domain:$port/app_api/install/index.php?n=3"
		if [ $install_type == 1 ];then
			#如果选择了完整安装
			clear
			echo -e "开始进行数据库导入"
			
			echo -e "输入您的数据库地址（默认：localhost）"
			read db_host
			if test -z $db_host;then
				echo -e "已经默认为localhost"
				db_host="localhost"
			fi
			
			echo -e "输入您的数据库端口（默认：3306）"
			read db_port
			if test -z $db_port;then
				echo -e "已经默认为3306"
				db_port=3306
			fi
			
			echo -e "输入您的数据库用户（默认：root）"
			read db_user
			
			if test -z $db_user;then
				echo -e "已经默认为root"
				db_user="root"
			fi
			
			echo -e "输入您的数据库密码（默认：root）"
			read db_pass
			
			if test -z $db_pass;then
				echo -e "已经默认为root"
				db_pass="root"
			fi
			
			echo -e "输入您的流控数据库（默认：ov）"
			read db_ov
			if test -z $db_ov;then
				echo -e "已经默认为ov"
				db_ov="ov"
			fi
			echo -e "请确认您的数据库信息"
			echo -e "地址：$db_host"
			echo -e "端口：$db_port"
			echo -e "用户：$db_user"
			echo -e "密码：$db_pass"
			echo -e "库名：$db_ov"
			echo -e "点击回车继续安装"
			read -n1
			
			echo -e "删除旧的数据表"
			mysql -h$db_host -P$db_port -u$db_user -p$db_pass -e "use $db_ov;drop table app_admin"
			mysql -h$db_host -P$db_port -u$db_user -p$db_pass -e "use $db_ov;drop table app_gg"
			mysql -h$db_host -P$db_port -u$db_user -p$db_pass -e "use $db_ov;drop table app_qq"
			mysql -h$db_host -P$db_port -u$db_user -p$db_pass -e "use $db_ov;drop table line"
			mysql -h$db_host -P$db_port -u$db_user -p$db_pass -e "use $db_ov;drop table top"
			mysql -h$db_host -P$db_port -u$db_user -p$db_pass -e "use $db_ov;drop table app_read"
			mysql -h$db_host -P$db_port -u$db_user -p$db_pass -e "use $db_ov;drop table app_daili"
			mysql -h$db_host -P$db_port -u$db_user -p$db_pass -e "use $db_ov;drop table app_config"
			
			echo -e "开始导入数据库"
			mysql -h$db_host -P$db_port -u$db_user -p$db_pass $db_ov < ${web_path}app_api/install/data/ov.sql
			echo -e "数据库导入完成"
			
			config_file="<?php
		define(\"_host_\",\"$db_host\");
		define(\"_user_\",\"$db_user\");
		define(\"_pass_\",\"$db_pass\");
		define(\"_port_\",\"$db_port\");
		define(\"_ov_\",\"$db_ov\");
		define(\"_openvpn_\",\"openvpn\");
		define(\"_iuser_\",\"iuser\");
		define(\"_ipass_\",\"pass\");
		define(\"_isent_\",\"isent\");
		define(\"_irecv_\",\"irecv\");
		define(\"_starttime_\",\"starttime\");
		define(\"_endtime_\",\"endtime\");
		define(\"_maxll_\",\"maxll\");
		define(\"_other_\",\"dlid,tian\");
		define(\"_i_\",\"i\");
		"
			echo $config_file > ${web_path}app_api/config.php
			echo -e "配置文件写入完成"
			install_lock="install.lock"
			echo $install_lock > ${web_path}app_api/install.lock
			echo -e "已经锁定安装目录"
			echo $app_kay > ${web_path}app_api/install.lock
			echo -e "使用许可证安装完成"
			
			echo -e "安装流量监控..."
			wget -O disconnect.sh ${http}${Host}/${File}/disconnect.sh
			
			sed -i 's/192.168.1.1:8888/'${domain}:${port}'/g' "disconnect.sh" >/dev/null 2>&1
			
			if test -f /etc/openvpn/disconnect.sh;then
					chmod 0777 -R /etc/openvpn/
			
					cp -rf /etc/openvpn/disconnect.sh /etc/openvpn/disconnect.sh.bak 
					cp -rf disconnect.sh /etc/openvpn/disconnect.sh
					chmod 0777 /etc/openvpn/disconnect.sh
			fi
			
			if test -f /etc/openvpn/disconnectudp.sh;then
					chmod 0777 -R /etc/openvpn/
					cp -rf /etc/openvpn/disconnectudp.sh /etc/openvpn/disconnectudp.sh.bak 
					cp -rf disconnectudp.sh /etc/openvpn/disconnectudp.sh
					chmod 0777 /etc/openvpn/disconnectudp.sh
			fi
			if test -f /usr/share/xml/disconnect.sh;then
					chmod 0777 -R /usr/share/xml/
					
					cp -rf /usr/share/xml/disconnect.sh /usr/share/xml/disconnect.sh.bak 
					cp -rf disconnect.sh /usr/share/xml/disconnect.sh
					chmod 0777 /usr/share/xml/disconnect.sh
			fi
			
			if test -f /usr/share/xml/disconnectudp.sh;then
					chmod 0777 -R /usr/share/xml/
					
					cp -rf /usr/share/xml/disconnectudp.sh /usr/share/xml/disconnectudp.sh.bak 
					cp -rf disconnect.sh /usr/share/xml/disconnectudp.sh
					chmod 0777 /usr/share/xml/disconnectudp.sh
			fi
			
		fi	
	fi	
	if [ $install_type == 4 ];then
		sleep 1
	else #
		clear
		chmod 0777 -R /home
		cd /home
		echo -e  "开始制作APP"
		echo -e "输入您的APP名称（默认：流量卫士）"
		read app_name
		if test -z $app_name;then
				echo -e "已经默认为叮咚流量卫士"
				app_name="流量卫士"
		fi
		echo -e "输入您要生成de版本（1 普通 2 短信）"
		read app_tyle
		
		echo -e "正在加载基础环境(较慢 耐心等待)...."
		yum install -y java >/dev/null 2>&1
		if [ $app_tyle == 1 ];then
			echo -e "下载APK包"
			wget -O android.apk ${http}${Host}/${File}/pt.apk >/dev/null 2>&1
		else
			echo -e "下载APK包"
			wget -O android.apk ${http}${Host}/${File}/dx.apk >/dev/null 2>&1
		fi
			echo -e "清理旧的目录"
			rm -rf android
			echo -e "分析APK"
			wget -O apktool.jar ${http}${Host}/${File}/apktool.jar&&java -jar apktool.jar d android.apk
			echo -e "批量替换"
			chmod 0777 -R /home/android
			sed -i 's/app.dingd.cn:80/'${domain}:${port}'/g' /home/android/smali/net/openvpn/openvpn/base.smali >/dev/null 2>&1
			sed -i 's/8beed678706df3a9ae7f6485cad7f179/'${app_key}'/g' /home/android/smali/net/openvpn/openvpn/base.smali >/dev/null 2>&1
			sed -i 's/app.dingd.cn:80/'${domain}:${port}'/g' "/home/android/smali/net/openvpn/openvpn/OpenVPNClient.smali" >/dev/null 2>&1
			sed -i 's/app.dingd.cn:80/'${domain}:${port}'/g' "/home/android/smali/net/openvpn/openvpn/OpenVPNClient\$10.smali" >/dev/null 2>&1
			sed -i 's/app.dingd.cn:80/'${domain}:${port}'/g' "/home/android/smali/net/openvpn/openvpn/OpenVPNClient\$11.smali" >/dev/null 2>&1
			sed -i 's/app.dingd.cn:80/'${domain}:${port}'/g' "/home/android/smali/net/openvpn/openvpn/OpenVPNClient\$13.smali" >/dev/null 2>&1
			sed -i 's/app.dingd.cn:80/'${domain}:${port}'/g' "/home/android/smali/net/openvpn/openvpn/Main2Activity\$MyListener\$1.smali" >/dev/null 2>&1
			sed -i 's/app.dingd.cn:80/'${domain}:${port}'/g' '/home/android/smali/net/openvpn/openvpn/Main2Activity$MyListener.smali' >/dev/null 2>&1
			sed -i 's/app.dingd.cn:80/'${domain}:${port}'/g' '/home/android/smali/net/openvpn/openvpn/MainActivity.smali' >/dev/null 2>&1
			sed -i 's/app.dingd.cn:80/'${domain}:${port}'/g' '/home/android/smali/net/openvpn/openvpn/update$myClick$1.smali' >/dev/null 2>&1
			sed -i 's/叮咚流量卫士/'${app_name}'/g' "/home/android/res/values/strings.xml" >/dev/null 2>&1
			echo -e "打包"
			java -jar apktool.jar b android
			
			if test -f /home/android/dist/android.apk;then 
				echo -e "APK生成完毕"
					#cd /home/android/dist
				wget -O autosign.zip ${http}${Host}/${File}/autosign.zip && unzip -o autosign.zip 
				rm -rf ${web_path}/app_api/dingd.apk
				cd autosign 
				echo "签名APK...."
				cp -rf /home/android/dist/android.apk /home/unsign.apk
				java -jar signapk.jar testkey.x509.pem testkey.pk8 /home/unsign.apk /home/sign.apk 
				cp -rf /home/sign.apk  ${web_path}/app_api/dingd.apk
				
				
				rm -rf /home/sign.apk
				rm -rf /home/unsign.apk
				rm -rf /home/android.apk
				rm -rf /home/android
				rm -rf /home/autosign.zip
				rm -rf /home/autosign
			else
				echo "
	---------------------------------------------------------
	ERROR----------- APP制作出错 请手动对接
	---------------------------------------------------------
	"
			exit 0
		fi #安装失败
	
	fi #APP制作
echo "
---------------------------------------------------------
后台管理系统： http://${domain}:${port}/app_api
APP地址：    http://$domain:$port/app_api/dingd.apk
以上信息仅仅全新安装有效
【注意】全新安装完成后请重启一次VPN 否则流量统计可能无效
---------------------------------------------------------

---------------------------------------------------------
后台管理员用户名：admin 管理密码：admin
请尽快到后台自助修改管理员账号密码
---------------------------------------------------------

---------------------------------------------------------
如您有疑问请登陆我们的官网：
---------------------------------------------------------

---------------------------------------------------------
执掌团队破解   流量卫士 
---------------------------------------------------------
"
exit 0

