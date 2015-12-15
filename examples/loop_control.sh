#!/bin/bash

## just like any other programming languages
## break and continue are two loop control commands
a=0

while [ $a -lt 10 ]
do
    echo $a
    if [ $a -eq 5 ]
    then
        break
    fi
    a=`expr $a + 1`
done

## the difference between shell break and continue command 
## is that shell break and continue can be followed by a number
## this number means nth enclosing loop to exit/continue from
## 1th loop is current loop
a=0
while [ $a -lt 10 ]
do
    echo "first level loop"
    while [ $a -lt 10 ]
    do
        echo "second level loop"
        while [ $a -lt 10 ]
        do
            echo "third level loop"
            if [ $a == 0 ]
            then
                break 2
            fi
        done

        echo "second level loop exit"
        break
    done

    echo "first level loop exit"
    break
done
