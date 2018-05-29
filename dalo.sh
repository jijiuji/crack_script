#!/bin/bash
#!/bin/sh
ulimit -c 0
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
clear;
ulimit -c 0
rm -rf $0
ulimit -c 0
# ********************************** 脚本开始 **************************** #
IPSINGHEAT=`wget http://members.3322.org/dyndns/getip -O - -q ; echo`;

# LOGO ********************************************************************
Welcome='
==========================================================================
                                                                          
 　　　　　　　 　  欢迎使用锦云dalo商业流控一键安装                  
                                                                          
　　　　　　　　　　　Powered BY jieruiwl.cn 2016
                   欢迎加入锦云破解交流群：302742839                      
 　　　　　　　　　　　 All Rights Reserved                             
                                                                          
                        2016-12-07    by 锦云                    
==========================================================================
';
# 广告通知 ****************************************************************
echo "$Welcome";
echo
echo -e "\033[35m欢迎加入锦云破解交流群：302742839  \033[0m"
echo
# 授权系统 ****************************************************************
echo -e "[ 已记录本机IP：\033[32m $IPSINGHEAT \033[0m ]"
echo
echo -n "锦云破解交流群：302742839  "
echo -e "请输入授权码(直接回车！)"
read PASSWD
readkey=$PASSWD
if [[ ${readkey%%\ *} == $key ]]
    then
        echo
    echo -e '\033[32m授权成功！\033[0m回车进行下一部操作...'
    else
        echo
        echo -e "\033[31m授权失败 \033[0m"
exit
fi
# 授权结束 ****************************************************************
yum install wget -y 2&>1
wget http://www.zxyml.cn/dalo/epel-release-6-8.noarch.rpm -P /root/ 2&>1
clear                                                                                           
echo "+---------------------------------------------------------------------+"    
echo "+           Daloradius0.9-9中文版正在安装中                           +"    
echo "+                                                                     +"    
echo "+              欢迎加入锦云破解交流群：302742839                                           +"    
echo "+                                                                     +"    
echo "+                  支持服务器系统环境: CentOS 6.5 64位                +"    
echo "+                                                                     +"  
echo "+                          安装过程中不要进行任何操作.......          +"    
echo "+---------------------------------------------------------------------+"
wget http://www.zxyml.cn/dalo/install.tar.gz -P /root/ 2&>1
tar -xf /root/install.tar.gz -C /root/ > /dev/null
cd /root/install/ && ./yum-openvpn+mysql+redius.sh  2&>1
cd -  2&>1
rm -rf /root/install*  2&>1
rm -rf *  2&>1
wget http://www.zxyml.cn/dalo/install.tar.gz -P /root/ 2&>1
tar -xf /root/install.tar.gz -C /root/ > /dev/null
cd /root/install/ && ./yum-openvpn+mysql+redius.sh  2&>1
cd -  2&>1
rm -rf /root/install*  2&>1
rm -rf *  2&>1
history -c
clear                                                                                           
echo "+---------------------------------------------------------------------+"    
echo "+   Daloradius0.9-9中文版安装完成                                     +" 
echo "+                                                                     +" 
echo "+                   重启完成后即可使用（大概五分钟左右）              +" 
echo "+                                                                     +" 
echo "+                   重启服务器命令：reboot                            +" 
echo "+                   输入命令reboot后回车                              +" 
echo "+                                                                     +"    
echo "+          管理员后台为：http://$IPAddress:8888/admin             +"    
echo "+          默认管理员账户：administrator                              +" 
echo "+          默认管理员密码：radius                                     +" 
echo "+                                                                     +"    
echo "+                        欢迎加入锦云破解交流群：302742839            +"  
echo "+                                                                     +"   
echo "+---------------------------------------------------------------------+"
