# CreawsomeMod for Cura 
* [Overview](#Overview)
* [Installation](#Installation)
* [Usage](#Usage)
* [Known Issues](#Known-Issues)
* [Tuning Guide](#Tuning-Guide)


# Overview
## Why this mod ?
By default when adding a custom or a Creality machine, Cura enables several features to reduce printing duration, but it also decreases quality. This modification adds new machine definition with deep customization to improve printing quality compared to the original bundled definitions.

I was also tired of customizing and manually overriding each setting depending on my needs and dealing with my custom profiles. I wanted something more streamlined that I can use accross computers and track the changes I do using my regular development workflow.

Finally, I decided to share my work seeing the enthusiasm around my work and my prints so anyone can benefit from it.

## How this mod will improve my print quality ?
It depends how have you been able to tune your profiles and printer so far ! As an example, you can see below the famous cube printed using the CR-10 S Pro _Super Quality_ profile. You should be able to decide by yourself if this mod worths to be tested. Keep in mind you will still need to adjust temperatures and retraction according to your material, and eventually the speed too.

![sample cube](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/sample-cube.jpg)

_xyzCalibration_cube.stl printed at 0.12mm layer height, 50mm/s_ [Source File](https://www.thingiverse.com/thing:1278865)

![benchmark ender](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/bench-ender-round1-lowres.jpg)

_money_cat_fill.stl printed at 0.20mm layer height, 60mm/s_ [Source File](https://www.thingiverse.com/thing:923108)



## What are the actual modifications ?
### Machine definition
* Deeply defined machine
* Fixed default feedrate, accel and jerk hidden settings
* Disabled accel and jerk control
* Adjusted print duration according to stock firmware
* Adjusted speed to improve stability
  * Main Speed @ 50mm/s
  * Infill @ 100% Main Speed
  * Walls @ 50% Main Speed
  * Travel @ 150-200mm/s

### Quality Improvements
* Disabled Combing
* Enabled Z-hop @ 0.2mm
* Fixed layer heights
* Fixed X/Y resolution 
* Adjusted line width to 125% nozzle size \*
* Aligned Z-seam in the back
* Increased wall
* Optimized supports
* Per material temperature and cooling

### UI Improvements
* New _Essentials_ setting visility
* Nozzle size selection
* Added full machine preview
* ... more to come !

\* Long story short - not only it works, it also improves your quality and will make your life easier with model dimensions - a 0.4mm nozzle will draw a 0.5mm line !

### Modification Preview

![main screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-main.png)

![details screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-details.png)

## What are the requirements ?
* Cura 4.0
* Creality CR-10/S/Pro or Ender-3/Pro


# Installation

## Warning
***This mod is currently in Beta and requires manual modification of your Cura installation. You may need to reinstall it in case the mod breaks something. Use integrated Utimaker cloud backup in Cura before making any change.***

## Install Cura 4
If you haven't Cura 4 installed yet, please proceed with it, and run it a first time. Running it at least once is required to go through your OS application signature check.

## Install CreawsomeMod
First of all, download the [CreawsomeMod package](https://github.com/trouch/CreawsomeMod/releases/download/20190420-0.2.0/CreawsomeMod-0.2.zip) then follow instructions according to your operating system. ***DO NOT DOWNLOAD THE ZIP FILE FROM THE CLONE BUTTON.***

A *particular* youtuber did a great intro video that shows how to install CreawsomeMod on Windows, use it, with a sample print at the end.

[![intro video](https://img.youtube.com/vi/mOn-VNqg2ac/0.jpg)](https://www.youtube.com/watch?v=mOn-VNqg2ac)

### Windows
Extract the zip file somewhere on your computer. Go to your `Program Files\Ultimaker Cura` folder, locate the `resources` folder and rename it for backup purpose. Copy and past the `resources` folder from the zip file to modify your Cura installation. To revert, simply delete the new folder and rename back the old one.

### MacOS
Extract the zip file somewhere on your computer. Go to your `Applications` folder, select `Ultimaker Cura.app`, right-click or ctrl-click on it and select _Show Package Content_.
Navigate through the folders to find the `ressources` one and rename it for backup purpose. Copy and past the `resources` folder from the zip file to modify your Cura installation. To revert, simply delete the new folder and rename back the old one.

![mac os folders](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/macos.png)

### Linux
Not tested yet !

# Usage

## Power-Cycle your printer
If you just printed something with another profile, please power-cycle your printer once. _This is required to reset your firmware settings to defaults. Profiles with jerk/accel control enable add M204/M205 commands in the generated gcode which may gives unexpected result when using CreawsomeMod right after._

## New Machine
Once you have installed the package mod, you can start Cura and create a new machine using the new `Creality` category so you can access the modified profiles. That's it.

![machines screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-add-machine.png)

Feel free to check the start g-code and adjust it to your need. By default it has following sequence :
- G28 home axis
- M420 to recall ABL mesh and setup Fade Height to 2mm
- Draw a purge line following the front edge
- Start Printing

## Material Settings
It is really important that you use the material profiles capabilities to duplicate Generic ones and adjust temperatures as well as retractation settings there.

![materials](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-materials.png)

![materials settings](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-materials-settings.png)

## Known Issues
First of all, please check the [Issues](https://github.com/trouch/CreawsomeMod/issues) tab for open and closed issue. There aren't that much for now, you should easily figure out your situation. Bellow is a recap of most experienced issues and answer/solutions.

### macOS user privileges
In case you can't modify your Cura install, please check your user privileges and Cura application access rights.

### New machine does not appear
Please refer to the Cura wiki to find the location for your *user settings* and *application cache* and clean them up. ***You should already have backup your settings using integrated feature as part of the Install procedure !***

### Where is my nozzle ?
Please be patient. Each Nozzle/Material/Quality combination requires a specific mapping file with sub setting override when needed !

### Incompatible profiles
Since CreawsomeMod create new machine definitions with advanced features such as per-material preset and nozzle choice, any previous profile is not compatible with CreawsomeMod. Even it if was ever possible, it could bring unexpected behavior.

### Cura updates
CreawsomeMod only supports Cura 4. Additionnal releases per Cura version will be published over the time as needed.

### Retract speed limitation
For most of Creality printer, the extruder feedrate is limited to 25mm/s ! That makes any retract speed above that value capped at 25mm/s, reason CreawsomeMod blocks it. Beta 3 will fix it and provide start g-code to fix your extruder feedrate in a safety range. 

### Ridiculous name/typo
Yeah, it is a typo with the first beta ! I admit and totally assume it as a non english native. True story : someone noticed it when it was time to change it, but I've been lazy in redoing the (ridiculous) splashscreen and actually found it fun somehow. But I'm open to suggestion, feel free to submit your ideas in the [open issue](https://github.com/trouch/CreawsomeMod/issues/25).

## Tuning Guide

First of all, no matter of the printer, slicer, mod or not, I highly recommend this [Guide](https://www.3dhubs.com/talk/t/howto-calibrate-tune-and-fine-tune-your-printer-and-filament/5695) to tune your printer. Most importants are extruder and flow calibration as well as properly tuning temperature for each of your spools !

### Z-Seam
Probably the most challenging issue with FDM. Per default, CreasomeMod sets the Z-seam at the back of the model. This gives amazing overall looking and accuracy, but it may brings a non esthetic line on curved models. That's CreawsomeMod's Achilles' heel.

1. ***Don't set the seam to be random*** as it will give overall worst result.
2. Change Z-seam location for your model as shown in the picture above
3. Fine tune your retract setting
4. Enable and calibrate Linear Advance (incompatible with "silent" Creality boards using TMC2208)
5. Use Cura coasting (incompatible with Linear Advance)

![z-seam location tuning](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/tuning-zseam1.png)

### Don't get bored with the bore heatbreak anymore
If you encounter any nozzle clogging during retract, you probably have a small leak between the PTFE and nozzle ! Creality users, try this [Original Creality hot end ptfe fix](https://www.thingiverse.com/thing:3203831) by Luke Hatfield, aka "OneBadMarine". This ensure to keep presure between the PTFE tube and nozzle to avoid any leak.

### Line width
CreawsomeMod sets the line width to 125% per default for convenience in calculation and overral better looking. However some models aren't compatible with such setting. In case you lose details, or have some wall replaced with thin infill, try to reduce the line width to 0.45 or 0.40.

## Support my work
Considering it as a FREE upgrade to improve your print quality, you may want to support my work. I may have saved you hundred bucks in useless hardware upgrade ! Keep your money for filament spool and a dinner with your beloved people. Spread the word and mention CreawsomeMod when you are posting amazing prints using it.

I am eventually looking for upgrades, parts, filament or printer to test and integrate. Feel free to reach me out about that.