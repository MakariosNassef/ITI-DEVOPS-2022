#! /bin/bash


#chmod +x /home/makar/Bash-iti/*

############################################
for i in `ls /home/makar/`
do
if [ ! -x $i ];
then
 chmod +x $i
fi
done
#############################################

<<Commend
find ~/Bash-iti/ > paths.txt
while read line; 
do	
    chmod +x $line
    ls -l $line
done < paths.txt
Commend
