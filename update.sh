#!/bin/bash
/sbin/ping -c 1 -W 500 $1 >> /dev/null

if test $? -eq 0; then
   echo "Set global http.proxy=http://$1:$2"
   git config --global http.proxy "http://$1:$2"
else
	echo 'Unset global http.proxy'
   git config --global http.proxy ''
fi
