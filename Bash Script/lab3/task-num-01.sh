#! /bin/bash

#LC_ALL is the environment variable that overrides all the other localisation settings
#(except $LANGUAGE under some circumstances).
export LC_COLLATE=C

#shopt is a builtin command of the Bash shell that enables or disables options for the 
#current shell session
shopt -s extglob

while true :
do
echo "write a char plz : "
read  var
case $var in
@([A-Z]) ) echo "upper case char"
;;
@([a-z]) ) echo "lower case char"
;;
@([1-9]) ) echo "num"
;;
* ) echo "Nothing"
esac
done


