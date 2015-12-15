#!/bin/bash

# arithmetic operators
# sh and bash will not support arithmetic operators themsevles, but this can be done by `expr` or `awk` external programs

## variables definition
x=10
y=20
x_str="10"
y_str="20"

# + operator
sum=`expr $x + $y`
echo "sum should be 30 "$sum
sum=`expr $x_str + $y_str`
echo "sum should be 30 "$sum

# modulus
mod=`expr $x % $y`
echo "mod should be 10 "$mod

# assignment
x_str=$y_str
echo "x_str should be 20 "$x_str

# equality
equal=$[ $x_str == $y_str ]
echo "equal should be true "$equal

# not equality
no_equal=$[ $x != $y ]
echo "no_equal should be true "$no_equal


##############################
# Relational operator
if [ ! $x -eq $y ]
then
    echo "equal should be false "
fi

if [ $x -lt $y ]
then
    echo "less should be true "
fi

if [ $x -le $y ]
then
    echo "less_equal should be true "
fi

if [ $x -le $y -a 1 ]
then
    echo "test -a operator"
fi

if [ $x -le $y -o 0 ]
then
    echo "test -o operator"
fi

########################
# string operator
echo "= for equality"
echo "!=" for not equality
echo "-z for whether zero length or not"
echo "-n for whether not zero length or not"
echo "str for whether a empty string"

#######################
# file test operator
cur_script=$0
if [ -b $cur_script ]
then
    echo "block file"
else
    echo "not block file"
fi

if [ -c $cur_script ]
then
    echo "character special file"
else
    echo "not character special file"
fi

if [ -d $cur_script ]
then
    echo "directory"
else
    echo "not directory"
fi

if [ -f $cur_script ]
then
    echo "file"
else
    echo "not file"
fi

if [ -e $cur_script ]
then
    echo "exist"
else
    echo "not exist"
fi
