# Hardwario-BCG
Addon to support Hardwario (www.hardwario.com) USB radio dongle

Main documentation of the Hardwario USB dongle is available here https://tower.hardwario.com/en/latest/tools/hardwario-gateway/

## Installation
### Step 1 - Pairing
 Pairing is required for all devices you want use with radio dongle. Pairing proccess has to be done using HARDWARIO Playground. Pairing is described here https://tower.hardwario.com/en/latest/basics/quick-start-guide-steps/prepare-basics/
 
### Step 2 - USB dongle
 My installation of the HA is on Raspberry Pi 4, but add-on is universal. When the USB dongle is paired with all devices, unplug USB dongle from original device used for pairing and insert to any of the USB port. In most of the cases this port will be named as /dev/ttyUSB0 and that is mandatory for this version of add-on.
 
### Step 3 - Install the add-on
 Go to the Home Assistant Add-on section Configuration -> Add-ons - click Add-on store (down right habd side) - click three dots in upper corner - Repositories. Insert https://github.com/MarianRychtecky/ha-hardwario and click Add. This proccess will take about 2 minutes.

### Step 4 - Configuration
 When installation is done, click on "Hardwario BCG" add-on -> Configuration. Fill all values as per your installation and click Save. Optionally you can select DEBUG mode.

### Step 5 - Running
 Start the add-on and look at the log messages for more information.
