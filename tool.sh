#!/bin/bash
read -p "Enter command: " cmd
$cmd &> /dev/null 
if [[ $? == "0" ]];then
	 echo "Command exist"
else
 echo "command not exist"

fi

