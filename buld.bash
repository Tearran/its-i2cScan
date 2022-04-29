
#!/usr/bin/bash
#!/bin/bash

{
cd /tmp/
buildname="build"
execName="iic-scanner"

mkdir $buildname
cd ./$buildname
wget https://raw.githubusercontent.com/muhammadrefa/python-i2c-scanner/master/i2c-scanner.py -O __main__.py
wget https://raw.githubusercontent.com/kplindegaard/smbus2/master/smbus2/smbus2.py
zip -r ../$buildname.zip * 
cd ..
echo '#!/usr/bin/env python' | cat - $buildname.zip > $execName
chmod +x $execName
cd /tmp/

}
