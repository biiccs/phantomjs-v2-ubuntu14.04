# phantomjs-v2-ubuntu14.04

Move phantomjs file to /usr/local/bin

```
git copy https://github.com/biiccs/phantomjs-v2-ubuntu14.04.git
sudo cd phantomjs-v2-ubuntu14.04
sudo chmod 777 install.sh
sudo ./install.sh
```

Test if all ok:
```
phantomjs download.js http://google.lt google.jpg
```

After launch that command, in repository directory must get google.jpg
