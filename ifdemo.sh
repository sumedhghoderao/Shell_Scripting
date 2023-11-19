#!/bin/bash

cmd1=$(whoami) 
cmd2=$(id -u $cmd1)
echo "welcome $cmd1 $cmd2"

echo "1.add user
2.list number of items in users home dir
3.check permission
4.list proesses
5.exit"

read -p "Enter your choice " ch
if [[ $ch == "1" ]];then
	read -p "enter user name" uname
	sudo useradd $uname


elif [[ $ch == "2" ]];then
       ls ~/


elif [[ $ch == "3" ]];then
        ls -l ~/ 

elif [[ $ch == "4" ]];then
	ps

elif [[ $ch == "5" ]];then
	exit

else
	echo "invalid command"
fi

