#!/bin/bash
{
cd /tmp/ || ( echo "what not /tmp/" && exit )
buildname="build"
execName="iic-scanner"

mkdir $buildname
cd ./$buildname || ( echo "faild to make $buildname" && exit )

wget https://raw.githubusercontent.com/muhammadrefa/python-i2c-scanner/master/i2c-scanner.py
sed 's|print("I2C|#print("I2C|'  i2c-scanner > __main__.py
sed -i 's|print("Start|#print("Start|'  __main__.py
sed -i 's|print("End|#print("End|'  __main__.py
sed -i 's|print(hex(i) + " -> " + res)|print(hex(i) + ", ")|' __main__

wget https://raw.githubusercontent.com/kplindegaard/smbus2/master/smbus2/smbus2.py
zip -r ../$buildname.zip * 
cd ..
echo '#!/usr/bin/env python' | cat - $buildname.zip > $execName
sudo install -b -v $execName /usr/bin/

}
