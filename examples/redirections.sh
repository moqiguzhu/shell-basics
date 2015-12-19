#!/bin/bash

echo message
echo message1 > redirections.txt
echo message2 >> redirections.txt
wc -l < redirections.txt
wc -l << EOF

echo message_null > /dev/null
echo message_err_out > 1>&2

EOF

echo message3 1>>redirections.txt

