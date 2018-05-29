#!/bin/bash
# 如果你看到此条消息说明破解成功
# 希望你可以研究不要只会改改版权  by XC-星辰
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
rm -rf jiasu
fspath="/fs/"
i=/etc/rc.local
s=speedtest_cli.sh
a=speedtest_cli.py
export PATH
clear; 
pass='sxhualv.com';
OPW='
==================================================================
                                                                           
☆-XC-星辰综合流控~Web流控系统~机器人流控系统~云免服务器一键搭建
☆-验证码输入错误，请重新运行   							
☆-Powered by sxhualv.com 2015-2016					
☆-All Rights Reserved		
                                                                         
				---------by XC-星辰一键加速器            
==================================================================';
ruixiezai='
========================================================
                 锐速加速器卸载成功！！！       
                QQ免流交流群：302742839
			                                By：XC-星辰丶				
========================================================';
xiezai='
========================================================
                  FS加速器卸载成功！！！       
                QQ免流交流群：302742839
			                                By：XC-星辰丶				
========================================================';
# ********************************** 脚本开始 **************************** #
echo -e "\033[35m=========================================================================\033[0m" 
echo -e "\033[33m                        XC-星辰一键加速器安装\033[0m" 
echo "" 
echo -e "\033[31m                      【免流官网:www.sxhualv.com】\033[0m" 
echo "" 
echo -e "\033[31m                      【免流Q群:302742839】\033[0m" 
echo "" 
echo -e "\033[33m                        群成员免费开放使用\033[0m" 
echo "" 
echo -e "\033[35m==========================================================================\033[0m" 
echo -n -e "请输入sxhualv.com \033[0m ：" 
read PASSWD 
readkey=$PASSWD
if [[ ${readkey%%\ *} == $pass ]];then  
	echo
	echo -e "验证成功！" 
    else
    echo -e "\033[31m验证失败！\033[0m" 
	echo "$OPW";
    sleep 3	
 exit
  fi 
  if [ mod=1 ] 
  then
echo -e "\033[33m=========================================================================\033[0m"
echo -e "\033[1;5;36m                     吃水不忘挖井人  盗版只为学习 \n\033[0;1;36m"
echo ""
echo -e "\033[1;5;31m                    【欢迎使用XC-星辰一键加速器安装】\n\033[0;1;36m"
echo ""
echo -e "\033[1;5;31m                      【免流交流群：302742839】\n\033[0;1;36m"
echo ""
echo -e "\033[1;5;31m                        【免流官网：sxhualv.com】\n\033[0;1;36m"
echo ""
echo -e "\033[34m       请选择加速安装版本：  \033[0m"
echo -e "\033[36m                       1.安装锐速加速器（适合国外服务器使用）\033[0m"
echo -e "\033[36m                       2.安装FS加速器（适合国内服务器使用）\033[0m"
echo -e "\033[36m                       3.如安装锐速无效果请选择此脚本\033[0m"
echo -e "\033[36m                       4.卸载锐速加速器\033[0m"
echo -e "\033[36m                       5.卸载FS加速器\033[0m"            
echo -e "\033[36m                       6.服务器测速脚本\033[0m"  
echo -e "\033[33m==========================================================================\033[0m" 
echo -n "输入选项: "   
read mode 

if [ -z $mode ] 
then
echo -e "默认安装类型：\033[32mFS加速器一键安装\033[0m" ; 
echo
wget http://binml.top/J/install_fs.sh
sleep 1
chmod 777 install_fs.sh
./install_fs.sh 2>&1 | tee install.log
chmod +x /etc/rc.local
cd /etc
sleep 1
echo 'sh /fs/start.sh'>>rc.local
echo ' options timeout:1 attempts:1 rotate
nameserver 223.5.5.5
nameserver 223.6.6.6' > /etc/resolv.conf
clear
CopyrightLogo='
=======================================================
              恭喜，FS加速成功，请放心使用         
                QQ免流交流群：302742839          
			                                By：XC-星辰丶
=======================================================';
echo -e "\033[36m$CopyrightLogo\033[0m";
exit
fi




if [[ $mode == "1" ]]   
then 
wget http://binml.top/J/server.all.sh >/dev/null 2>&1
bash server.all.sh
clear
ruisu1='
=======================================================
     恭喜，锐速加速成功，请放心使用    开机自启动     
               QQ免流交流群：302742839
			                                By：XC-星辰丶			   
=======================================================';
echo -e "\033[36m$ruisu1\033[0m";
rm -f serverSpeeder.sh
rm -f serverSpeeder.sh1
exit 0
fi


if [[ $mode == "2" ]]     
then     
echo -e "安装类型：\033[32mFS加速器一键安装\033[0m" ;
wget http://binml.top/J/install_fs.sh >/dev/null 2>&1
sleep 1
chmod 777 install_fs.sh
./install_fs.sh 2>&1 | tee install.log
chmod +x /etc/rc.local
cd /etc
sleep 1
echo 'sh /fs/start.sh'>>rc.local
echo ' options timeout:1 attempts:1 rotate
nameserver 223.5.5.5
nameserver 223.6.6.6' > /etc/resolv.conf
clear
CopyrightLogo='
=======================================================
       恭喜，FS加速成功，请放心使用    开机自启动     
                QQ免流交流群：302742839
			                                By：XC-星辰丶				
=======================================================';
echo -e "\033[36m$CopyrightLogo\033[0m";
rm -f install_fs.sh
exit
fi


if [[ $mode == "3" ]]     
then     
echo -e "安装类型：\033[32mFS锐速修复\033[0m" ;
wget http://binml.top/J/ruisu >/dev/null 2>&1
bash ruisu
clear
CopyrightLogo='
=======================================================
                     锐速修复成功
               QQ免流交流群：302742839
			                                By：XC-星辰丶			   
=======================================================';
echo -e "\033[36m$CopyrightLogo\033[0m";
exit
fi


if [[ $mode == "4" ]]     
then    
chattr -i /serverspeeder/etc/apx* && /serverspeeder/bin/serverSpeeder.sh uninstall -f >/dev/null 2>&1
if [ $? -eq 0 ];then
clear
echo -e "\033[36m$ruixiezai\033[0m";
else
clear
echo ""
echo -e "\033[33m=========================================================================\033[0m"
echo -e "\033[36m                  卸载成功，请检查是否安装了锐速加速器\033[0m"
echo -e "\033[36m                         QQ免流交流群：302742839         \033[0m"
echo -e "\033[36m                                                          By：XC-星辰丶 \033[0m"
echo -e "\033[33m==========================================================================\033[0m"
exit
fi
fi



if [[ $mode == "5" ]]     
then    
cd /fs/>/dev/null 2>&1;bash stop.sh>/dev/null 2>&1;rm -rf /fs>/dev/null 2>&1
cd /etc/
chmod 777 rc.local
sed -i.bk -e 's/start.sh/#/g' $i
sed -i.bk -e 's/sh /fs/#/g' $i
sed -i.bk -e 's/fs/#/g' $i
sleep 1
clear
echo -e "\033[33m=========================================================================\033[0m"
echo -e "\033[36m                     FS加速器卸载成功\033[0m"
echo -e "\033[36m                    QQ免流交流群：302742839         \033[0m"
echo -e "\033[36m                                                          By：XC-星辰丶 \033[0m"
echo -e "\033[33m==========================================================================\033[0m"
exit
fi



if [[ $mode == "6" ]]     
then
wget http://binml.top/J/speedtest_cli.sh
sleep 1
sudo mv $s $a
chmod a+rx speedtest_cli.py
sudo mv speedtest_cli.py /usr/local/bin/speedtest-cli
sudo chown root:root /usr/local/bin/speedtest-cli
speedtest-cli
exit
fi
	fi
	exit 0;
