#!/bin/bash

# bash is different from sh
# legal for bash not for sh
# arr=(1 2 3)

arr[0]="1"
arr[1]="2"
arr[2]="3"

# access all the elements in array
echo ${arr[*]}

# another way of accessing all the elements in array
for ele in ${arr[@]} 
do
    echo $ele
done

