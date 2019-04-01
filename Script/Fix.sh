#!/bin/bash

echo "开始执行"
sudo spctl --master-disable
sudo pmset -a hibernatemode 0
sudo rm /var/vm/sleepimage
sudo mkdir /var/vm/sleepimage
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/hieplpvip/LocalTime-Toggle/master/fix_time_osx.sh)"
echo "请重启！！！"
exit 0
