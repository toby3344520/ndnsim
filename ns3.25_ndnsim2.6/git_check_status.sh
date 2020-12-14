#!/bin/bash
parameter=status
if [ $# -gt 0 ];then
		parameter=$1;
fi
if [ $# -eq 1 ];then
	echo -e "\033[36mns-3 $parameter\033[0m"
	git $parameter

	echo -e "\033[36mpybindgen $parameter\033[0m"
	cd ../pybindgen/
	git $parameter

	echo -e "\033[36mpybindgen $parameter\033[0m"
	cd ../AMuSt-libdash/
	git $parameter
fi

if [ $# -gt 1 ];
then
	echo -e "\033[36m$2 $parameter\033[0m"
	if [ $2 = 'ns-3' ];then
			cd ./
	elif [ $2 = 'libdash' ];then
			cd ../AMuSt-libdash/
	elif [ $2 = 'pybindgen' ];then
			cd ../pybindgen/
	fi
	git $parameter
fi
