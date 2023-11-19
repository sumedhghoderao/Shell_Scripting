#!bin/bash
 a=0;

 until
	 [[ $a -gt 10 ]];do
	 	echo "Variable a = $a"
		((a++))
	done
