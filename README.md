
# its-i2cScan
[![CodeFactor](https://www.codefactor.io/repository/github/tearran/its-i2cScan/badge)](https://www.codefactor.io/repository/github/tearran/its-i2cScan)
## Target OS: 
- Raspberry Pi OS (Legacy), Kernel 5.10.103+


## Target Boards
- Raspberry pi 


## Features :
- [x] Installs as system package
- [x] Enables Default I2C bus
- [x] Shows attached i2c devices by hex

# build and Install
## Build requirments
- zip 
- wget (included with target systems)

## Recomended Install method
### Audit and insatll
first audit [build.bash](https://raw.githubusercontent.com/Tearran/its-i2cScan/main/build.bash) or not

then run to following
```bash
wget https://raw.githubusercontent.com/Tearran/its-i2cScan/main/build.bash && bash build.bash
```
## Easy install -not recomended
only use curl with trused sources

```bash 
curl https://raw.githubusercontent.com/Tearran/its-i2cScan/main/build.bash | bash
```
## usage: 

```bash
its-i2cscan 1
```

May require sudo privleges if i2c is not enabled.
- Can be replacement for `i2cdetect` from `i2c-tools`
- Can be use to help automate enabling and installing i2c device sofware

# Contributers

- [muhammadrefa](https://github.com/muhammadrefa) - [i2c-scanner](https://raw.githubusercontent.com/muhammadrefa/python-i2c-scanner/master/i2c-scanner.py)

- [tearran](https://github.com/tearran) - [python skelly](https://github.com/Tearran/python_skelly.git)

- [kplindegaard](https://github.com/kplindegaard) -  [smbus2](https://raw.githubusercontent.com/kplindegaard/smbus2/master/smbus2/smbus2.py)
