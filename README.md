
# Inter-Integrated Circuit - Scanner
[![CodeFactor](https://www.codefactor.io/repository/github/tearran/its-i2cscan/badge)](https://www.codefactor.io/repository/github/tearran/iic-scanner)
## its-i2cscan

An alternative to  i2cdetect

## requirements:
- raspberry pi os buster lts
- zip
- git

## enable i2c device 1
```bash
sudo raspi-config nonint do_i2c 0
```
## git clone this repo and run
```bash
bash install.bash

```

enable i2c for yor device
## Features :
- [x] dispaly i2c (csv)
- [x] dispaly useage
- [ ] user options
- [ ] enable disable i2c
  
## useage :
- its-i2cscan <device #> 
```bash
its-i2cscan 1
```

# Contributers

- [muhammadrefa](https://github.com/muhammadrefa) - [i2c-scanner](https://raw.githubusercontent.com/muhammadrefa/python-i2c-scanner/master/i2c-scanner.py)

- [tearran](https://github.com/tearran) - [python skelly](https://github.com/Tearran/python_skelly.git)

- [kplindegaard](https://github.com/kplindegaard) -  [smbus2](https://raw.githubusercontent.com/kplindegaard/smbus2/master/smbus2/smbus2.py)
