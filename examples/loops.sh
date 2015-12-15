#!/bin/bash

# sh style for loop
for x in hello world
do
    echo $x
done

# bash style for loop
for ((i=0; i<10; i++))
do
    echo $i
done

# while loop
a=0
while [ $a -lt 10 ]
do
    echo $a
    a=`expr $a + 1`
done


# until loop
a=0
until [ ! $a -lt 10 ]
do
    echo $a
    a=`expr $a + 1`
done

# select loop
# suitble for bash not for sh, created in ksh
PS3="Please make a selection => "; export PS3
select DRINK in tea cofee water juice appe all none
do
   case $DRINK in
      tea|cofee|water|all) 
         echo "Go to canteen"
      ;;
      juice|appe)
         echo "Available at home"
      ;;
      none) 
         break 
      ;;
      *) echo "ERROR: Invalid selection" 
      ;;
   esac
done

