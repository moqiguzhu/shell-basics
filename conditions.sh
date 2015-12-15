#!/bin/bash

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

# completion condition branch
if [ $x -eq 1 ] 
then
    echo "hello"
elif [ $x -lt 1 ]
then
    echo "world"
else
    echo "!"
fi

# switch-case
case "$x" in
    "1" )
        echo hello
    ;;
    "2" )
        echo world
    ;;
esac
