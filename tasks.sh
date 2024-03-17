#!/bin/bash

echo "Tasks reminder and editor"

i=1
if [ $#="-d" ]
then
    rm -r task.txt

elif [ $# -ne 1 ];then   
    while [ $i -ne 0 ]
    do
    
        echo "TASK: "
        read n 
        echo "$n" >> task.txt # used echo cuz without it, the $n will be treated as a command

    done
fi

