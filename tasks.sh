#!/bin/bash

echo "Tasks reminder and editor"
i=1
if [ $1 == "-d"  ] 2>> /dev/null
then
    $(rm -r task.txt)
    echo "Tasks deleted successfully"
elif [ $# -eq 0 ]
then   
    while [ 1 ]
    do
    
        echo "TASK: "
        read n 
        echo "$n" >> task.txt # used echo cuz without it, the $n will be treated as a command

    done
elif [ $1 == "-l" ];then
    cat task.txt
else
   echo "error occured"
fi

