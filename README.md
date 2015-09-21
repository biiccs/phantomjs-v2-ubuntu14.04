# phantomjs-v2-ubuntu14.04

Move phantomjs file to /usr/local/bin

```
cd /tmp &&
git clone https://github.com/biiccs/phantomjs-v2-ubuntu14.04.git &&
cd phantomjs-v2-ubuntu14.04/ &&
sudo cp phantomjs /usr/local/bin/ &&
phantomjs download.js http://google.lt google.jpg &&
rm google.jpg



```
