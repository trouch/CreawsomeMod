# CreawsomeMod for Cura
* [Overview](#Overview)
* [Installation](#Installation)
* [Usage](#Usage)

# Overview
## Why this mod ?
By default when adding a custom or a Creality machine, Cura enables several features to reduce printing duration, but it also decreases quality. This modification adds new machine definition with deep customization to improve printing quality compared to the original bundled definitions.

I was also tired of customizing and manually overriding each setting depending on my needs and dealing with my custom profiles. I wanted something more streamlined that I can use accross computers and track the changes I do using my regular development workflow.

Finally, I decided to share my work seeing the enthusiasm around my work and my prints so anyone can benefit from it.

## Will this mod improve my print quality ?
It depends how have you been able to tune your profiles and printer so far ! As an example, you can see below the famous cube printed using the CR-10 S Pro _Super Quality_ profile. You should be able to decide by yourself if this mod worths to be tested. Keep in mind you will still need to adjust temperatures and retraction according to your material, and eventually the speed too.

![sample-cube](https://github.com/trouch/CreawsomeMod/raw/master/doc/sample-cube.jpg)

![sample-cube](https://github.com/trouch/CreawsomeMod/raw/master/doc/sample-bust.jpg)

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
* Per material cooling

### UI Improvements
* New _Essentials_ setting visility
* Nozzle size selection
* Added full machine preview
* ... more to come !

\* Long story short - not only it works, it also improves your quality and will make your life easier with model dimensions - a 0.4mm nozzle will draw a 0.5mm line ! Don't forget to calibrate your flow multiplier for perfect fitting.

### Modification Preview

![main screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/screen-main.png)

![details screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/screen-details.png)

## What are the requirements ?
* Cura 4.0
* Creality CR-10/S/S Pro 3D Printer
* ABL requires to probe the bed before starting the print


# Installation

## Warning
This mod is currently in Beta and requires manual modification of your Cura installation. You may need to reinstall it in case the mod breaks something. Use integrated Utimaker cloud backup in Cura before making any change.

## Install Cura 4
If you haven't Cura 4 installed yet, please proceed with it, and run it a first time. Running it at least once is required to go through your OS application signature check.

## Install CreawsomeMod
First of all, download the [CreawsomeMod package](https://github.com/trouch/CreawsomeMod/releases/download/20190408-0.1.0/CreawsomeMod-0.1.zip) then follow instructions according to your operating system. ***DO NOT DOWNLOAD THE ZIP FILE FROM THE CLONE BUTTON.***

### Windows
Extract the zip file somewhere on your computer. Go to your `Program Files\Ultimaker Cura` folder, locate the `resources` folder and rename it. Copy and past the `resources` folder from the zip file to modify your Cura installation. To revert, simply delete the new folder and rename back the old one.

### MacOS
Extract the zip file somewhere on your computer. Go to your `Applications` folder, select `Ultimaker Cura.app`, right-click or ctrl-click on it and select _Show Package Content_.
Navigate through the folders to find the `ressources` one and rename. Copy and past the `resources` folder from the zip file to modify your Cura installation. To revert, simply delete the new folder and rename back the old one.

![mac os folders](https://github.com/trouch/CreawsomeMod/raw/master/doc/macos.png)

# Usage

## New Machine
Once you have installed the package mod, you can start Cura and create a new machine using the new `Creality` category so you can access the modified profiles. That's it.

![machines screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/screen-add-machine.png)

Feel free to check the start g-code and adjust it to your need. By default it has following sequence :
- G28 home axis
- M420 to recall ABL mesh and setup Fade Height to 2mm
- Draw a purge line following the front edge
- Start Printing

## Material Settings
It is really important that you use the material profiles capabilities to duplicate Generic ones and adjust temperatures as well as retractation settings there.

![materials](https://github.com/trouch/CreawsomeMod/raw/master/doc/screen-materials.png)

![materials](https://github.com/trouch/CreawsomeMod/raw/master/doc/screen-materials-settings.png)