# Hardwario-BCG
Home Assistant add-on to support Hardwario (www.hardwario.com) USB radio dongle

Main documentation of the Hardwario USB dongle is available here https://tower.hardwario.com/en/latest/tools/hardwario-gateway/

## Installation
### Step 1 - Pairing
 Pairing is required for all devices you want to use with a radio dongle. The pairing process has to be done using HARDWARIO Playground. Pairing is described here https://tower.hardwario.com/en/latest/basics/quick-start-guide-steps/prepare-basics/
 
### Step 2 - USB dongle
 My installation of the HA is on Raspberry Pi 4, but the add-on is universal. When the USB dongle is paired with all devices, unplug the USB dongle from the original device used for pairing and insert it into any of the USB ports. In most cases, this port will be named/dev/ttyUSB0 and that is mandatory for this version of the add-on.
 
### Step 3 - Install the add-on
 Go to the Home Assistant Add-on section Configuration -> Add-ons - click Add-on store (downright hand side) - click three dots in the upper corner - Repositories. Insert https://github.com/MarianRychtecky/ha-hardwario and click Add. This process will take about 2 minutes.

### Step 4 - Configuration
 When the installation is done, click on "Hardwario BCG" add-on -> Configuration. Fill in all values as per your installation and click Save. Optionally you can select DEBUG mode.

### Step 5 - Running
 Start the add-on and look at the log messages for more information.
