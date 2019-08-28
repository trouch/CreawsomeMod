# CreawsomeMod for Cura 
***Now integrated in Cura official releases since Version 4.2, you will benefit from CreawsomeMod machine settings as long you have a Creality Printer. This repo is kept as an history reference, issue tracker, and documentation.***

* [Usage](#Usage)
* [Known Issues](#Known-Issues)
* [Tuning Guide](#Tuning-Guide)

_xyzCalibration_cube.stl printed at 0.12mm layer height, 50mm/s_ [Source File](https://www.thingiverse.com/thing:1278865)

![sample cube](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/sample-cube.jpg)

_money_cat_fill.stl printed at 0.20mm layer height, 60mm/s_ [Source File](https://www.thingiverse.com/thing:923108)

![benchmark ender](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/bench-ender-round1-lowres.jpg)

![main screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-main.png)

![details screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-details.png)


# Usage

## Material Settings
It is really important that you use the material profiles capabilities to duplicate Generic ones and adjust temperatures as well as retractation settings there for each of your spool !

![materials](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-materials.png)

![materials settings](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-materials-settings.png)

## Known Issues
First of all, please check the [Issues](https://github.com/trouch/CreawsomeMod/issues) tab for open and closed issue. There aren't that much for now, you should easily figure out your situation. Bellow is a recap of most experienced issues and answer/solutions.

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

