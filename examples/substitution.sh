#!/bin/bash

## -e enables interpretation of backslash escapes
a=10
echo -e "Value of a is $a \n"

## command substitution
DATE=`date`
echo "DATE IS $DATE"

UP=`date ; uptime`
echo "Uptime is $UP"

USERS='who | wc -l'
echo "Logged in user are $USERS"

## variable substitution
########################

# ${var}
a=0
echo "a = ${a}"

echo "unset a"
unset a
echo ${a:-"this line will be printed"}
echo "a = ${a}"

echo ${a:="1"}
echo "a = ${a}"

unset a
echo ${a:?"a was not set correctly"}
echo "a = ${a}"

a=0
echo ${a:+"this line will be printed and a was not changed"}
echo "a = $a"


