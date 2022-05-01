
# Inter-Integrated Circuit - Scanner
[![CodeFactor](https://www.codefactor.io/repository/github/tearran/iic-scanner/badge)](https://www.codefactor.io/repository/github/tearran/iic-scanner)
## iic-scanner
An alternative to  i2cdetect

## requirements:
- raspberry pi os buster lts
- zip
- git
```bash

sudo apt install zip git
```
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
- iic-scanner <device #> 
```bash
iic-scanner 1
```

# Contributers

- [muhammadrefa](https://github.com/muhammadrefa) - [i2c-scanner](https://raw.githubusercontent.com/muhammadrefa/python-i2c-scanner/master/i2c-scanner.py)

- [tearran](https://github.com/tearran) - [python skelly](https://github.com/Tearran/python_skelly.git)

- [kplindegaard](https://github.com/kplindegaard) -  [smbus2](https://raw.githubusercontent.com/kplindegaard/smbus2/master/smbus2/smbus2.py)
