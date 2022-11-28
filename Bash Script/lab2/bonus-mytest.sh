#! bin/bash

check_file(){
if [ -d "$1" ] ; then
    echo "$1 is a directory";
    ls -lah ${1} |head -n 2
else
    if [ -f "$1" ]; then
        echo "$1 is a file";
        ls -lah ${1} |head -n 2
    else
        echo "$1 is not valid";
    fi
fi
}
check_file ${1}


