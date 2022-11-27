#! /bin/bash

if [ $# = 0 ]
then
	cd
	exec bash
	~/
else
	cd $1
	exec bash
	~/$1
fi
