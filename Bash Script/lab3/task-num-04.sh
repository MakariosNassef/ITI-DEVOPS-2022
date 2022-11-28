#! /bin/bash

FILE=/home/makar/iti-backup
if [ -d $FILE ]; then
    echo "iti-backup exists."
else 
   mkdir $FILE
fi


for i in `ls /home/makar/`
do
   if [ -f $i ]; then
   ln $i /home/makar/iti-backup/$i.backup 2>/dev/null
   fi
done

   echo "backup success"


