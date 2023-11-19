#!/bin/bash:
echo "1.make a file
2.Display contents
3.copy the file
4.rename the file
5.delete the file
6.exit"
read -p "enter your choice" ops
if [[ $ops == "1" ]];then
	read -p "enter the file name" filename
	if [[ -e $filename ]] && [[ -f $filename ]];then
			echo ":error file exists"
	else
		cat > $filename

	fi	



elif [[ $ops == "2" ]];then
       read -p "enter the file name" filename
        if [[ -e $filename ]] && [[ -f $filename ]];then
                        cat $filename
        else
                echo "file does not exit"
	fi


elif [[ $ops == "3" ]];then
	read -p "enter the sourcefile file name" filename
	if [[ -e $filename ]] && [[ -f $filename ]] && [[ -r $filename ]];then
	
	read -p "enter th destination file name" dfilename
        if [[ -e $dfilename ]] && [[ -f $dfilename ]] && [[ -r $dfilename ]];then
        	
		cp $filename $dfilename
        else
                echo " Destination file does not exist"
	fi

	else 
		echo " Sourcefile does not exist" 
	fi


elif [[ $ops == "4" ]];then
	read -p "enter the file name" filename
      
        if [[ -e $filename ]] && [[ -f $filename ]] && [[ -r $filename ]];then
		read -p "enter new file name" rfilename

                mv $filename $rfilename
        else
               echo " file does not exist"
	fi



elif [[ $ops == "5" ]];then
        read -p "enter the file name" filename

        if [[ -e $filename ]] && [[ -f $filename ]] && [[ -r $filename ]];then
                

                rm $filename
        else
               echo " file does not exist"
	fi


elif [[ $ops == "6" ]];then
	exit


else
	echo "invalid choice"
fi
       
