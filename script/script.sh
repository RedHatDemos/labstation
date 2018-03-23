#yum -y install git ansible chrome
cd /root
git clone https://github.com/RedHatDemos/labstation.git
cd labstation/homedir
find . | cpio -pdmv /home/lab-user
chown -R lab-user:lab-user /home/lab-user
firewall-cmd --add-port 5900/tcp --permanent 
firewall-cmd --reload
#enable remote viewer in config
# enable autologin
