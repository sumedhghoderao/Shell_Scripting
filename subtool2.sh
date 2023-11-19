#!/bin/bash
domain=$1
wordlist=$2
figlet "Sub-Enum" | lolcat
while read sub;do
                if host "$sub.$domain" &> /dev/null;then
                                echo "$sub.$domain : Alive"
                fi
done < $wordlist
shift 2
