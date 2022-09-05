
# its-i2cScan
[![CodeFactor](https://www.codefactor.io/repository/github/tearran/its-i2cScan/badge)](https://www.codefactor.io/repository/github/tearran/its-i2cScan)
## Target OS: 
- Raspberry pi OS LTS, "Working"
- Armbian, "Untested"
- Buildroot, "Untested"
## Target Boards
- Raspberry pi zero /w/w2, "Working"
- Banana pi m2 zero, "Untested"

## Features :
- [x] Installs as system package
- [x] Enables Default I2C bus
- [x] Identifies avalible i2c devices by hex
- [x] Tests suported i2c device:  
  - [x] 0x75 Piramonie ledsim 
  - [ ] 0x3c SSD1306 OLED display
  - [ ] 0x5a MLX90614 IR temperature
  - [ ] bmp280 Temp/Humidity
  - [ ] 0x1c, 0x46, 0x5c, 0x5f, 0x6a Raspberry pi SenseHat/Asropi
  

# build and Install
## Build requirments
- zip 
- wget (included with target systems)
- [smbus2](https://raw.githubusercontent.com/kplindegaard/smbus2/master/smbus2/smbus2.py)

## Recomended Install
### Audit and insatll
first audit [build.bash](https://raw.githubusercontent.com/Tearran/python-i2c-scanner/master/build.bash) or not

then run to following onliner
```bash
wget https://raw.githubusercontent.com/Tearran/python-i2c-scanner/master/build.bash | bash
```
## Easy install -not recomended
only use curl with trused sources

```bash 
curl https://raw.githubusercontent.com/Tearran/python-i2c-scanner/master/build.bash | bash
```
## usage: 

```bash
its-i2cscan 1
```

May require sudo privleges if i2c is not enabled.
- Can be replacement for `i2cdetect` from `i2c-tools`
- Can be use to help enable and install i2c device sofware

# Contributers

- [muhammadrefa](https://github.com/muhammadrefa) - [i2c-scanner](https://raw.githubusercontent.com/muhammadrefa/python-i2c-scanner/master/i2c-scanner.py)

- [tearran](https://github.com/tearran) - [python skelly](https://github.com/Tearran/python_skelly.git)

- [kplindegaard](https://github.com/kplindegaard) -  [smbus2](https://raw.githubusercontent.com/kplindegaard/smbus2/master/smbus2/smbus2.py)
