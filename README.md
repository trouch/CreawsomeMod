# CreawsomeMod for Cura

![main screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/screen-main.png)

![details screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/screen-details.png)


# Installation

## Warning
This mod is currently in Beta and requires manual modification of your Cura installation. You may need to reinstall it in case the mod break something. Use integrated Utimaker cloud backup in Cura before making any change.

## Install Cura 4
If you don't have Cura 4 installed yet, please proceed with it, and run it a first time. Running it at least once is required to go through your OS application signature check.

## Install CreawsomeMod
First of all, download the [CreawsomeMod package](https://github.com/trouch/CreawsomeMod/releases/download/20190408-0.1.0/CreawsomeMod-0.1.zip) then follow instructions according to your operating system. 

### Windows
Go to your `Program Files\Ultimaker Cura` folder, locate the `ressources` folder. Rename it and extract the dowloaded zip next to it.

### MacOS
Go to your `Applications` folder, select `Ultimaker Cura.app`, right-click or ctrl-click on it and select _Show Package Content_.
Navigate through the folders to find the `ressources` one. Rename it and extract the dowloaded zip next to it.
![mac os folders](https://github.com/trouch/CreawsomeMod/raw/master/doc/macos.png)

## Using CreawsomeMod

### New Machine
Once you have installed the package mod, you can start Cura and create a new machine using the new `Creality` category so you can access the modified profiles. That's it.

![machines screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/screen-add-machine.png)

Feel free to check the start g-code and adjust it to your need. By default it has following sequence :
- G28 home axis
- M420 to recall ABL mesh and setup Fade Height to 2mm
- Draw a purge line following the front edge
- Start Printing

### Material Settings
It is really important that you use the material profiles capabilities to duplicate Generic ones and adjust temperatures as well as retractation settings there.

![materials](https://github.com/trouch/CreawsomeMod/raw/master/doc/screen-materials.png)