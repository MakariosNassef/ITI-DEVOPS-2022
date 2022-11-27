#! /bin/bash
#!/bin/bash

# Input type of operation
echo "Enter your Choice :"
echo "1. copy file to another"
echo "2. copy multiple files to a directory"
read ch

#---------------------------------------------------------------------
if [ $ch -eq 1 ]
then
copy-file()
{
#cp [OPTION] SOURCE DIRECTORY
echo "write the SOURCE distnation you whant to copy"
read SOURCE
echo "write the distnation you whant to copy this file in :"
read dist
cp -v "$SOURCE" "$dist"
}
copy-file
fi
#---------------------------------------------------------------------
if [ $ch -eq 2 ]
then
copy-mfile()
{
echo "write the SOURCE distnation of dir for this files"
read SOURCE
echo "write the distnation you whant to copy this filesss in :"
read dist
cp -v "$SOURCE"* "$dist"
}
copy-mfile
fi
#---------------------------------------------------------------------
