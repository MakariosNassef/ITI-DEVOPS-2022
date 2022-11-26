#!/bin/bash
echo "Using sed utility LAB1 bash"
echo "Enter your Choice :"
echo "1- Display the lines that contain the word “lp” in /etc/passwd file."
echo "2- Display /etc/passwd file except the third line."
echo "3- Display /etc/passwd file except the last line."
echo "4- Display /etc/passwd file except the lines that contain the word “lp”."
echo "5- Substitute all the words that contain “lp” with “mylp” in /etc/passwd file."
read ch
#---------------------------------------------------------------------
if [ $ch -eq 1 ]
then
Display1()
{
sed -n "/lp/ p" /etc/passwd
}
Display1
fi
#---------------------------------------------------------------------
if [ $ch -eq 2 ]
then
Display2()
{
 sed -n  "1! p" /etc/passwd
}
Display2
fi
#---------------------------------------------------------------------
if [ $ch -eq 3 ]
then
Display3(){
sed -n "$! p" /etc/passwd
}
Display3
fi
#---------------------------------------------------------------------

if [ $ch -eq 4 ]
then
Display4(){
sed -n "/lp/! p" /etc/passwd
}
Display4
fi
#---------------------------------------------------------------------
if [ $ch -eq 5 ]
then
Display5(){
sed 's/ls/mylp/g' /etc/passwd
}
Display5
fi
#---------------------------------------------------------------------
