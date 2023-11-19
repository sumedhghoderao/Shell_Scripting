#!/bin/bash
function help(){
        echo "-d DOMAIN (required): provide domain as target"
        echo "-h/--help : help"
}

function run(){

while read sub;do
                if host "$sub.$domain" &> /dev/null;then
                                echo "$sub.$domain : Alive"
                fi
done < $wordlist
}

while true;do
case $1 in
        "-h"|"--help")
                        help
                        exit
                        ;;
	"-d")
                       
	       
			domain=$2
                        
                        if [[ -z $domain ]];then
                                echo "Error: provide domain name."
                               exit 
			
			fi
			shift 2
			if [[ -z $1 ]];then
				run
				exit
			fi
			;;
			

			
				
	"-w")			
			wordlist=$2
                        if [[ -z $wordlist ]];then
                        echo "error: provide valid wordlist"
                        exit
			fi
			 
		shift 2
			if [[ -z $1 ]];then
				run
				exit
			fi
			;;

                *)
                        echo "Error: invalid argument, use -h/--help"
                                        exit
                        ;;
esac
done

