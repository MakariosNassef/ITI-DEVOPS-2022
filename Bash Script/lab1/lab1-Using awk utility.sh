#!/bin/bash
echo "Using awk utility LAB1 bash"
echo "1- Print full name (comment) of all users in the system."
echo "2- Print login, full name (comment) and home directory of all users.( Print each line preceded by a line number)"
echo "3- Print login, uid and full name (comment) of those uid is greater than 500"
echo "4- Print login, uid and full name (comment) of those uid is exactly 500"
echo "5- Print line from 5 to 15 from /etc/passwd"
echo "6- Change lp to mylp"
echo "7- Print all information about greatest uid."
echo "8- Get the sum of all accounts id’s."
echo "9- (BONUS) Get the sum of accounts id’s that has the same group."

read ch
#---------------------------------------------------------------------
if [ $ch -eq 1 ]
then
Display1()
{
awk -F: '{ print $5}' /etc/passwd
}
Display1
fi
#---------------------------------------------------------------------
if [ $ch -eq 2 ]
then
Display2()
{
awk -F: '{print NR," - ", $1," --- ",$5," --- ",$6}' /etc/passwd
}
Display2
fi
#---------------------------------------------------------------------
if [ $ch -eq 3 ]
then
Display3(){
awk -F: '{if ($3 > 500) { print $1 "--- " $3 }}' /etc/passwd
}
Display3
fi
#---------------------------------------------------------------------
if [ $ch -eq 4 ]
then
Display4(){
awk -F: '{if ($3 ==500) {print $1,"--- ",$3}}' /etc/passwd
}
Display4
fi
#---------------------------------------------------------------------
if [ $ch -eq 5 ]
then
Display5(){
awk -F: '{if (NR<=15 &&NR>=5) {print NR," - ", $1 " -- " $3}}'  /etc/passwd
}
Display5
fi
#---------------------------------------------------------------------
if [ $ch -eq 6 ]
then
Display6(){
awk -F: '{i=1;while(i<=NF){if($i=="lp")
                        {
                        $i="mylp";
                        print $0;
                        }
                        i++;
                }
        }' /etc/passwd
#awk '{gsub(/lp/,"mylp");print}' /etc/passwd
}
Display6
fi
#---------------------------------------------------------------------
if [ $ch -eq 7 ]
then
Display7(){
        awk '
        BEGIN{FS=":";grid=0;grli=""}
        {
        if($3>grid)
                {
                grid=$3
                grli=$0
                }
        }
        END{print grli} ' /etc/passwd
#awk -F: '{print $3,$1}' /etc/passwd | sort -n | tail -n 1
}
Display7
fi
#---------------------------------------------------------------------
if [ $ch -eq 8 ]
then
Display8(){
        awk '
        BEGIN{FS=":";sum=0}
        {
                sum+=$3
        }
        END{print "sum of users ids =",sum}
' /etc/passwd
}
Display8
fi
#---------------------------------------------------------------------