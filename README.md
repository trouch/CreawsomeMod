# CreawsomeMod for Cura 
* [Installation](#Installation)
* [Usage](#Usage)
* [Known Issues](#Known-Issues)
* [Tuning Guide](#Tuning-Guide)

***Cura Update to 4.1 will break itself if you have the mod installed. See [known issues](#Known-Issues) for more info.***

# Overview

## How this mod will improve my print quality ?
It depends how have you been able to tune your profiles and printer so far ! You can see few sample below. You should be able to decide by yourself if this mod worths to be tested. **Keep in mind you still need to adjust settings according to your material and model.**

_xyzCalibration_cube.stl printed at 0.12mm layer height, 50mm/s_ [Source File](https://www.thingiverse.com/thing:1278865)

![sample cube](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/sample-cube.jpg)

_money_cat_fill.stl printed at 0.20mm layer height, 60mm/s_ [Source File](https://www.thingiverse.com/thing:923108)

![benchmark ender](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/bench-ender-round1-lowres.jpg)

![main screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-main.png)

![details screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-details.png)


# Installation

## Requirements
* Cura 4.0-4.1

## Warning
***This mod is currently in Beta and requires manual modification of your Cura installation. You may need to reinstall it in case the mod breaks something.***

## Backup user data
Use integrated Utimaker cloud backup in Cura before making any change.

## Install Cura 4
If you haven't Cura 4 installed yet, please proceed with it, and run it a first time. Running it at least once is required to go through your OS application signature check.

## Reset Cura
Please refer to the [Cura wiki](https://github.com/Ultimaker/Cura/wiki/Cura-Preferences-and-Settings-Locations) to find the location for your *user settings* and *application cache* and clean them up. ***You should already have backup your settings using Cura backup feature before the modification !***

## Install CreawsomeMod
First of all, download the proper package for your Cura version then follow instructions according to your operating system. ***DO NOT DOWNLOAD THE ZIP FILE FROM THE CLONE BUTTON.***

* [CreawsomeMod for Cura 4.0](https://github.com/trouch/CreawsomeMod/releases/download/20190527-0.3.0/CreawsomeMod-Beta3.zip) 
* [CreawsomeMod for Cura 4.1](https://github.com/trouch/CreawsomeMod/releases/download/20190530-0.3.2/CreawsomeMod-Beta3.2-Cura4.1.zip)

### Windows
Extract the zip file somewhere on your computer. Go to your `Program Files\Ultimaker Cura` folder, locate the `resources` folder and rename it for backup purpose. Copy and past the `resources` folder from the zip file to modify your Cura installation. To revert, simply delete the new folder and rename back the old one.

### MacOS
Extract the zip file somewhere on your computer. Go to your `Applications` folder, select `Ultimaker Cura.app`, right-click or ctrl-click on it and select _Show Package Content_.
Navigate through the folders to find the `resources` one and rename it for backup purpose. Copy and past the `resources` folder from the zip file to modify your Cura installation. To revert, simply delete the new folder and rename back the old one.

![mac os folders](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/macos.png)

### Linux
Please refer to the [bug tracker](https://github.com/trouch/CreawsomeMod/issues/27) for more information.

# Usage

## Add a new Machine
Once you have installed the package mod, you can start Cura and create a new machine using the new `CreawsomeMod` category so you can access the modified profiles. That's it !

![machines screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-add-machine-4.0.png)

Feel free to check the start g-code and adjust it to your need.

## Material Settings
It is really important that you use the material profiles capabilities to duplicate Generic ones and adjust temperatures as well as retractation settings there for each of your spool !

![materials](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-materials.png)

![materials settings](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-materials-settings.png)

## Known Issues
First of all, please check the [Issues](https://github.com/trouch/CreawsomeMod/issues) tab for open and closed issue. There aren't that much for now, you should easily figure out your situation. Bellow is a recap of most experienced issues and answer/solutions.

### Cura updates
CreawsomeMod breaks Cura updates. I highly recommend to reset your Cura settings and revert back to your old `resources` at first. Then you can proceed with Cura update and mod reinstall using the proper package for you Cura version.

### macOS user privileges
In case you can't modify your Cura install, please check your user privileges and Cura application access rights.

### Incompatible user profiles
Since CreawsomeMod create new machine definitions with advanced features such as per-material preset and nozzle choice, any previous profile is not compatible with CreawsomeMod. Even it if was ever possible, it could bring unexpected behavior.

### Z-Seam
Probably the most challenging issue with FDM. Per default, CreasomeMod sets the Z-seam at the back of the model. This gives amazing overall looking and accuracy, but it may brings a non esthetic line on curved models. That's CreawsomeMod's Achilles' heel.

1. ***Don't set the seam to be random*** as it will give overall worst result.
2. Change Z-seam location for your model as shown in the picture above
3. Fine tune your retract setting
4. Enable and calibrate Linear Advance (incompatible with "silent" Creality boards using TMC2208)
5. Use Cura coasting (incompatible with Linear Advance)

![z-seam location tuning](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/tuning-zseam1.png)

### Clogging
If you encounter any nozzle clogging during retract, you probably have a small leak between the PTFE and nozzle ! Creality users, try this [Original Creality hot end ptfe fix](https://www.thingiverse.com/thing:3203831) by Luke Hatfield, aka "OneBadMarine". This ensure to keep presure between the PTFE tube and nozzle to avoid any leak.

### Missing print details
CreawsomeMod sets the line width to 125% per default for convenience in calculation and overral better looking. However some models aren't compatible with such setting. In case you lose details, or have some wall replaced with thin infill, try to reduce the line width to 0.45mm or 0.40mm.

### Stringing
For most of Creality printer, the extruder feedrate is limited to 25mm/s ! CreawsomeMod includes a start g-code to set it to 50mm/s using an _M203_ command and warns users when setting retraction above that value. Make sure to adjust start g-code if you need a retract speed above 50mm/s.

## Tuning Guide
No matter of the printer, slicer, mod or not, I highly recommend this [Guide](https://www.3dhubs.com/talk/t/howto-calibrate-tune-and-fine-tune-your-printer-and-filament/5695) to tune your printer. Most importants are extruder and flow calibration as well as properly tuning temperature for each of your spools !


## Support my work
Considering it as a FREE upgrade to improve your print quality, you may want to support my work. I may have saved you hundred bucks in useless hardware upgrade ! Keep your money for filament spool and a dinner with your beloved people. Spread the word and mention CreawsomeMod when you are posting amazing prints using it.

I am eventually looking for upgrades, parts, filament or printer to test and integrate. Feel free to reach me out about that.