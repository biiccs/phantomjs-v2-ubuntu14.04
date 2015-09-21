#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

if [ `which phantomjs` ]; then
	echo "You have already installed phantomjs!"
else
  cd /tmp
  rm -rf /tmp/phantomjs-v2-ubuntu14.04
  git clone https://github.com/biiccs/phantomjs-v2-ubuntu14.04.git
  cd phantomjs-v2-ubuntu14.04/
  cp phantomjs /usr/local/bin/
  phantomjs download.js http://google.lt google.jpg
  cd /tmp
  rm -rf /tmp/phantomjs-v2-ubuntu14.04
	echo "You have successfully installed phantomjs!"
fi
