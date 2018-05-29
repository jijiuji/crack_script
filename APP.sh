#!/bin/bash
iddz=`wget http://jiaob.f3322.cn/getip.php -O - -q ; echo`; #云龙™
ulimit -c 0
rm -rf $0
clear
echo -e "\033[1;35m==========================================================================\033[0m"
echo -e "\033[1;32m                          欢迎使用Dalo一键APP制作          	             \033[0m"
echo -e "\033[1;32m                                 	                             \033[0m"
echo -e "\033[1;35m==========================================================================\033[0m"
echo
echo -e "\033[34m脚本已由腾讯云/阿里云，centos7.0系统测试通过 \033[0m"
echo
echo -n -e "您确定要安装dalo一键制作吗？输入y确认安装："
read queren
echo
if [[ $queren == 'y' ]];
then
echo "正在准备安装dalo一键app服务..."
echo
else
echo "输入错误，退出程序."
echo
echo -e "\033[1;35m==========================================================================\033[0m"
echo -e "\033[1;32m                              如果你想安装           	                 \033[0m"
echo -e "\033[1;32m                            请重新执行该脚本	                             \033[0m"
echo -e "\033[1;35m==========================================================================\033[0m"
exit 0;
fi

echo -ne "\033[1;36m请输入你的APP名字(默认云流量)：\033[0m"
read appname
if [ -z $appname ]
then
echo  "你的APP名字：云流量"
appname=云流量
else
echo "你的APP名字：$appname"
fi

echo -ne "\033[1;36m请输入你的ip地址(dalo线路的ip)：\033[0m"
read ip
if [ -z $ip ]
then
echo -ne "\033[1;35mip地址不能为空，请重新输入：\033[0m"
read ip
fi 
echo -ne "\033[1;35mip地址为：$ip\033[0m"

echo "正在安装java环境..."
echo
yum install -y java >/dev/null 2>&1 
echo "java环境安装完毕..."
echo
echo "正在创建环境，并开始打包线路..."
echo
mkdir -p /home/C:/VPNList/
cd /home/C:/VPNList/
echo "正在解压生成线路..."
echo
curl -O http://jiaob.f3322.cn/dalo/xl.zip
unzip xl.zip >/dev/null 2>&1
sed -i "s/123.123.123.123/${ip}/" /home/C:/VPNList/*.ovpn
echo "线路生成完毕.."
cd /home/
echo "正在进行线路打包..."
curl -O http://jiaob.f3322.cn/dalo/vpnlist.jar
chmod +x vpnlist.jar
java -jar vpnlist.jar >/dev/null 2>&1 
echo "线路打包完毕..."

echo "正在开始制作APP..."
cd /home
mkdir android
chmod 777 /home/android
cd /home/android
curl -O http://jiaob.f3322.cn/dalo/apktool.jar
curl -O http://jiaob.f3322.cn/dalo/a.apk
java -jar apktool.jar d a.apk >/dev/null 2>&1 
echo
sed -i 's/139.199.104.242/'${ip}'/g' /home/android/a/res/values/strings.xml
sed -i 's/花白云流/'${appname}'/g' /home/android/a/res/values/strings.xml
sed -i 's/139.199.104.242/'${ip}'/g' /home/android/a/smali/com/ip2o/flowmaster/d.smali
rm -rf /home/android/a/assets/profile.dat
cp /home/C:/VPNList/profile.dat /home/android/a/assets/profile.dat
sudo chmod +x /home/android/apktool.jar
java -jar apktool.jar b a >/dev/null 2>&1 
cd /home/android/a/dist
curl -O http://jiaob.f3322.cn/dalo/signer.zip
unzip signer.zip >/dev/null 2>&1 
java -jar signapk.jar testkey.x509.pem testkey.pk8 a.apk dalo.apk
\cp -rf /home/android/a/dist/dalo.apk /home/Dalo.apk
echo -e "\033[1;31mapp制作完毕！\033[0m"
echo "正在清理环境..."
rm -rf /home/android
rm -rf /home/C:
echo "清理完毕...."
echo -e "\033[1;35m==========================================================================\033[0m"
echo -e "\033[1;32m                       感谢使用Dalo一键APP制作           	         \033[0m"
echo -e "\033[1;32m                      你的app在home文件夹：Dalo.apk           	         \033[0m"
echo -e "\033[1;32m                                                            \033[0m"
echo -e "\033[1;32m                                                     \033[0m"
echo -e "\033[1;35m==========================================================================\033[0m"
exit 0

