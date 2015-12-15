#!/bin/bash

for ((i=0; i<10; i++)); do
    echo hello
done

for x in hello world 
do
    echo $x
done

files=`ls /`
echo $files

# test for loop suitable for sh
# can not use sh style for loop in bash

# test single quote
x='everything in single quote will be printed as original'
echo $x

# test double quote
y="x = $x"
echo $y

# equal operator need not space
# x = '1' is illegal

# string concatenate
greeting="hello, moqiguzhu"
greeting1="hello, ""moqiguzhu"
echo $greeting, $greeting1

# string length
string="string"
len=${#string}
echo $len

# substring
sub=${string:1:4}
echo $sub

# string search
string1="alibaba is a great company"
echo `expr index "$string1" ba`

# condition branch
x=1
if [ $x -eq 1 ]; then echo hello; fi
# another style
if [ $x -eq 1 ]
then
    echo hello
else
    echo world
fi

# while loop
while [ $x -eq 1 ]
do
    echo hello
    x=2
done

# switch-case
case "$x" in
    "1" )
        echo hello
    ;;
    "2" )
        echo world
    ;;
esac

