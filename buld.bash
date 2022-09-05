#!/bin/bash

{
# Change to /tmp/ directory to build zip
cd /tmp/ || ( echo "what not /tmp/" && exit )
# naming conviance 
buildname="build_its-i2cScan"
execName="its-i2cScan"

#make a build folder
mkdir $buildname
# goto build folder
cd ./$buildname || ( echo "faild to make $buildname" && exit )
# download source iis scaner
wget https://raw.githubusercontent.com/Tearran/its-i2cScan/main/__main__.py

#download smbus2 dropin lib
wget https://raw.githubusercontent.com/kplindegaard/smbus2/master/smbus2/smbus2.py

# compress the contents to a zip
[ !-d /usr/bin/zip ] && sudo apt update && sudo apt install zip
[ -d /usr/bin/zip ] zip -r ../$buildname.zip ./* 
cd ..
# set the interprater
echo '#!/usr/bin/env python3' | cat - $buildname.zip > $execName
# install the exicutible
sudo install -b -v $execName /usr/bin/

}
