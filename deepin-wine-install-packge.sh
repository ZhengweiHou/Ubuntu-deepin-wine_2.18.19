#!/bin/bash
if [ ! -d "package" ]
then
	echo "package not find"
	exit 1
fi

cd ./package

echo '׼�����32λ֧��'
sudo dpkg --add-architecture i386
echo '��ӳɹ���׼��ˢ��apt������Ϣ...'
sudo apt update
echo '������ʼ��װ...'
sudo dpkg -i *.deb
echo '��װ��ɣ������Զ���װ����...'
sudo apt install -fy

