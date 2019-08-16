#!/bin/bash
read -p "请输入用户名:"  u
useradd $u
stty -echo
read -p "请输入密码:"  p
stty echo
echo $p | passwd --stdin $u

#stty -echo  屏蔽回显
#stty echo   恢复回显
