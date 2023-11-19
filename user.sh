#!/bin/bash
read -p "enter user name" uname
id $uname 2> /dev/null
id -u $uname
id -g $uname
if [[ $? == "0" ]];then
      echo "user exist"
      
else
      echo "use not exist please enter new user details"
      useradd $uname
      
fi
