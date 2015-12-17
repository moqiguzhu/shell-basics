#!/bin/bash

## single quote
## all special characters between single quotes losing their special meaning
a=1
echo 'a = $a'

## double quote
## most special characters between double quotes losing their 
## special meanings, except:

## 1
## $ for variable substitution
a=0
echo "a = $a"

## 2
## ` for command substitution
DATE=`date`
echo $DATE

## 3
## \$ \' \"" \\
echo "\;"
echo "\\"

## any character behind \ lose their special meaning
echo \;


## anything in between back quotes will be treated with command
DATE=`date`
echo $DATE

## if there is no "" all characters behind \ will be transferred meaning
## if there is "" only few characters behind \ will be transferred meaning
