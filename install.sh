#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

if [ `which phantomjs` ]; then
	echo "You have already installed phantomjs!"
else
  cp phantomjs /usr/local/bin/
  phantomjs download.js http://google.lt google.jpg
	echo "You have successfully installed phantomjs!"
fi
