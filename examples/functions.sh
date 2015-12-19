#!/bin/bash

## function definition
foo() {
    echo "function : foo"
    if [ $# -eq 2 ]
    then
        echo "first parameter:"$1
        echo "second parameter:"$2
    fi
    return 10
}

## call function with parameters
foo para1 para2

## get return value
return_val=$?
echo "return value is $return_val"

## nested function
bar() {
    echo "function : bar"
    foo
}
bar

## add function to your shell with source command
## you can not do like this, infinite loop
## execute following command in shell environment
## . functions.sh
## foo

## unset function from your shell
## unset .f foo
## unset .f bar



