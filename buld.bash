#!/bin/bash
{
# Change to /tmp/ directory to build zip
cd /tmp/ || ( echo "what not /tmp/" && exit )
# naming conviance 
buildname="build"
execName="iic-scanner"

#make a build folder
mkdir $buildname
# goto build folder
cd ./$buildname || ( echo "faild to make $buildname" && exit )
# download source iis scaner
wget https://raw.githubusercontent.com/muhammadrefa/python-i2c-scanner/master/i2c-scanner.py
# comment out unwanted print statments
cp i2c-scanner  __main__.py
sed -i 's|print("I2C|#print("I2C|'  __main__.py
sed -i 's|print("Start|#print("Start|'  __main__.py
sed -i 's|print("End|#print("End|'  __main__.py
sed -i 's|print(hex(i) + " -> " + res)|print(hex(i) + ", ")|' __main__

#download smbus2 dropin lib
wget https://raw.githubusercontent.com/kplindegaard/smbus2/master/smbus2/smbus2.py
# compress the contents to a zip
zip -r ../$buildname.zip ./* 
cd ..
# set the interprater
echo '#!/usr/bin/env python' | cat - $buildname.zip > $execName
# install the exicutible
sudo install -b -v $execName /usr/bin/

# type iic-scanner <dev#>
# example
# $iic-scanner 1   
# to uninstall iic-scanner
# $ sudo rm /user/bin/iic-scanner

}
