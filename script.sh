a=15
b=12

if [ $a -gt $b ]
then
        echo "A is Greater Than B"
else
        echo "B is Greater Than A"
fi


#!/bin/bash


x=mississipi

grep -o "s" <<<"$x" | wc -l


#!/bin/bash

###########
#Author : Sagar
#Date: 18/1/25
#This Script For Node Health
###########

set -x

df -h

free -g

nproc



#!/bin/bash

echo  "Hi This Is Sagar"
mkdir Sagar
cd Sagar
touch file{1..5}
cd
