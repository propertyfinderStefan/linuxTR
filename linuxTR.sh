#!/bin/bash


cd /tmp
wget https://desktop-central.s3-ap-southeast-1.amazonaws.com/linuxTR.zip
unzip linuxTR.zip
sudo chmod +x DesktopCentral_LinuxAgent.bin
sudo ./DesktopCentral_LinuxAgent.bin

cp DMRootCA-Server.crt /usr/local/share/ca-certificates/DMRootCA-Server.crt
cp DMRootCA.crt /usr/local/share/ca-certificates/DMRootCA.crt
sudo update-ca-certificates

rm DesktopCentral_LinuxAgent.bin
rm DMRootCA-Server.crt
rm DMRootCA.crt
rm LINUX_README.txt
rm serverinfo.json
rm linuxTR.zip



exit 0

