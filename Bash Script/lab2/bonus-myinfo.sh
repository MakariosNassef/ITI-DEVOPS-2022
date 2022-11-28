#! bin/bash

read -p "enter your logname : " n
ls -l /home/$n
cp -R /home/$n /tmp/tmp_copy
ps -u $n

