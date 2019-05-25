# Modification "Creagénial" pour Cura 
* [Aperçu](#Apercu)
* [Installation](#Installation)
* [Utilisation](#Utilisation)
* [Problèmes connus](#Problemes-connus)
* [Réglages](#Reglages)


# Aperçu
## Pourquoi cette modification ?
Par défaut, lorsqu'on ajoute une machine "Custom" ou Creality, Cura active certaines fonction pour réduire la durée d'impression, mais qui réduit aussi la qualité. Cette modification ajoute de nouvelles définitions de machine avec une personalisation en profondeur afin d'améliorer la qualité d'impression comparé à aux définitions initiales.

J'étais aussi fatigué de personaliser et écraser chaque réglage individuellement pour mes besoin, et de devoir gérer des profils utilisateurs. Je voulais un processus rationnalisé me permettant d'utiliser mes configurations sur plusieurs ordinateurs en utilisant mes habitudes de développeur.

Finalement, j'ai décidé de partager mon travail en voyant l'entousiasme autour de celui-ci et de mes impressions, de façon à ce que chacun puisse en bénéficier.

## Cette amélioration va-t-elle améliorer ma qualité d'impression ?
Cela dépends comment vous avez été capable de régler vos profiles et votre imprimante jusque là. Vous pouvez voir quelques exemples d'impression ci-dessous, à vous de voir ! Gardez en tête que vous devrez toujours ajuster votre températures et certains réglages en fonction de vos matériaux et modèles à imprimer !

![sample cube](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/sample-cube.jpg)

_xyzCalibration_cube.stl printed at 0.12mm layer height, 50mm/s_ [Source File](https://www.thingiverse.com/thing:1278865)

![benchmark ender](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/bench-ender-round1-lowres.jpg)

_money_cat_fill.stl printed at 0.20mm layer height, 60mm/s_ [Source File](https://www.thingiverse.com/thing:923108)



## Quelles sont les modificatios ?
### Définitions de machine
* Définitions de machine en profondeur
* Correction des réglages cachés de saccade et accélération utilisées
* Désactivation du contrôle de saccade et d'accélération
* Correction de la durée d'impression selon les firmware usine
* Modification de la vitesse pour améliorer la stabilité
  * Vitesse Principale @ 50mm/s
  * Remplissage @ 100% Vitesse Principale
  * Périmètres @ 50% Vitesse Principale
  * Déplacements @ 150-200mm/s

### Amélioration de qualité
* Désactivation du Combing (Détourrage)
* Activation du Z-Hop @ 0.2mm (Décallage en Z)
* Correction des hauteurs de couche disponible
* Correction de la résolution X/Y
* Modification de la largeur de ligne à 125% du diamètre de la buse \*
* Alignement de la couture Z à l'arrière
* Augmentation des murs
* Optimization des supports
* Réglages de la température par matériaux

### Amélioration de l'interface
* Nouvelle option de visibilité _Essentials_
* Choix de la taille de buz
* Prévisualisation de la machine
* ... plus à venir !

\* En bref - non seulement ça fonctionne, mais en plus ça améliore la qualité d'impression et facilite les calculs de dimensions. Une buse de 0.4mm va tracer un trait de 0.5mm de largeur !

### Aperçu des modifications

![main screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-main.png)

![details screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-details.png)

## Quels sont les pré-requis
* Cura 4.0
* Creality CR-10/S/Pro ou Ender-3/Pro


# Installation

## Attention
***Cette modification est actuellement en phase Beta et nécessite une modification manuelle de votre installation de Cura. Vous pouvez tout casser. Utilisez la fonction intégrée de à Cura pour sauvegarder vos réglages dans Ultimaker Cloud avant toute modification.***

## Installer Cura 4
Si ce n'est pas encore fait, commencer par installer Cura et lancez le une première fois. Cela est nécessaire afin de passer les validations de signatures par votre système d'exploitation.

## Install CreawsomeMod
Tout d'abord, téléchargez le [paquet CreawsomeMod](https://github.com/trouch/CreawsomeMod/releases/download/20190420-0.2.0/CreawsomeMod-0.2.zip) et suivez les instructions selon votre système d'exploitation. ***Ne téléchargez PAS le fichier ZIP depuis le boutton clone ci-dessus.***

Un youtubeur en *particulier* a fait une très bonne vidéo d'intro qui montre l'installation sur Windows, son utilisation, et un exemple d'impression à la fin.

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
Please refer to the [Cura wiki](https://github.com/Ultimaker/Cura/wiki/Cura-Preferences-and-Settings-Locations) to find the location for your *user settings* and *application cache* and clean them up. ***You should already have backup your settings using integrated feature as part of the Install procedure !***

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