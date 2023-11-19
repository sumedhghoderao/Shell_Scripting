#!/bin/bash
figlet "Sub-Enum" | lolcat
while read sub;do
		if host "$sub.google.com" &> /dev/null;then
				echo "$sub.google.com : Alive"
		fi
done < subs.txt
