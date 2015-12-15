#!/bin/sh

# file name of current script
echo "file name of current script: "$0

# two ways of get all the arguments
echo "Arguments:"
for Token in $@
do
    echo "  "$Token
done

echo "Arguments:"
for Token in $*
do
    echo "  "$Token
done

# exit status of last command
echo "exit status of last command: "$?

# number of arguments
echo "number of arguments: " "$#"

# process ID of current shell
echo "process ID of current shell: "$$
