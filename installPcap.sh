#!/bin/sh
#author:tianweidut
#email:liutianweidlut@qq.com
echo 'pcap�ļ����� V1.0'
echo '-----------------------------'
echo '----------1.������װ-----------'
echo '-----------------------------'
#tcpdump��װ
sudo apt-get install tcpdump -y >>log.log
#��װpython 2.6
echo '1.1 python ��̻�����֤�밲װ...'
sudo apt-get install python2.6-dev -y >> log.log
#��װqt
echo '1.2 QT ��̻�����֤�밲װ...'
sudo apt-get install libqt4-dev libqt4-gui qt4-dev-tools qt4-qtconfig -y >> log.log
#��װpyqt
echo '1.3 pyQT ��̻�����֤�밲װ...'
sudo apt-get install "python-qt4-*" -y >> log.log
echo '-----------------------------'
echo '----------2.���ݿⰲװ-----------'
echo '-----------------------------'
echo '2.1 Mysql ��װ'
sudo apt-get install mysql-server -y >> log.log
echo '2.2 qt-sql������װ'
sudo apt-get install libqt4-sql* -y >> log.log
echo '-----------------------------'
echo '----------3.���ݿ��ʼ��-----------'
echo '-----------------------------'
echo '3.1 �趨mysql����Ϊ1'
mysqladmin -uroot -p password '1'
echo '3.2 ����mysql�ű�'
mysql -uroot -p1 < ./installsql.sql
echo '*_* ��ϲ��ɽű����룬���ݴ�����ɣ�'
echo '-----------------------------'
echo '--*_*��ӭʹ��pcap�������(˫��pcap_main.py�ļ�)*_*--'
echo '-----------------------------'
