# Modification "Creagénial" pour Cura 
* [Installation](#installation)
* [Utilisation](#utilisation)
* [Problèmes connus](#problèmes-connus)
* [Réglages](#réglages)

***La mise à jour Cura 4.1 peut corrompre votre installation si vous avez le mod installé. Consultez les [problèmes connus](#problèmes-connus) pour plus d'information.***

# Aperçu
## Cette modidification n va-t-elle améliorer ma qualité d'impression ?
Cela dépend comment vous avez été capable de régler vos profils et votre imprimante jusque là. Vous pouvez voir quelques exemples d'impression ci-dessous, à vous de voir ! **Gardez en tête que vous devrez toujours ajuster certains réglages en fonction  de vos matériaux et modèles à imprimer !**

_xyzCalibration_cube.stl printed at 0.12mm layer height, 50mm/s_ [Source File](https://www.thingiverse.com/thing:1278865)

![sample cube](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/sample-cube.jpg)


_money_cat_fill.stl printed at 0.20mm layer height, 60mm/s_ [Source File](https://www.thingiverse.com/thing:923108)

![benchmark ender](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/bench-ender-round1-lowres.jpg)

![main screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-main.png)

![details screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-details.png)

# Installation

## Pré-requis
* Cura 4.0-4.1
* Un peu de bon sens

## Attention
***Cette modification est actuellement en phase Beta et nécessite une modification manuelle de votre installation de Cura. Vous pouvez tout casser.***

## Sauvegarde des profils existants
Utilisez la fonction intégrée de à Cura pour sauvegarder vos réglages dans Ultimaker Cloud avant toute modification.

## Installer Cura 4
Si ce n'est pas encore fait, commencez par installer Cura et lancez-le une première fois. Ceci est nécessaire afin de passer les validations de signature par votre système d'exploitation.

## Réinitilisation de Cura
Veuillez consulter le [wiki Cura](https://github.com/Ultimaker/Cura/wiki/Cura-Preferences-and-Settings-Locations) pour trouver le dossier contenant vos réglages utilisateurs ainsi que le cache pour les netoyer. **Vous devriez déjà avoir sauvegardé vos réglages en utilisant la fonction intégrée à Cura avant la modification !***

## Installer CreawsomeMod
Tout d'abord, téléchargez le paquet correspondant à votre version de Cura et suivez les instructions selon votre système d'exploitation. ***Ne téléchargez PAS le fichier ZIP depuis le boutton clone ci-dessus.***

* [CreawsomeMod pour Cura 4.0](https://github.com/trouch/CreawsomeMod/releases/download/20190527-0.3.0/CreawsomeMod-Beta3.zip) 
* [CreawsomeMod pour Cura 4.1](https://github.com/trouch/CreawsomeMod/releases/download/20190530-0.3.2/CreawsomeMod-Beta3.2-Cura4.1.zip)


### Windows
Extraire le fichier zip quelque part sur votre ordinateur. Allez dans le dossier `Program Files\Ultimaker Cura`, repérez le dossier `resources` et renomez le pour sauvegarder l'installation existante. Copiez et collez le dossier `resources` du fichier zip afin de modifier votre installation Cura. Pour revenir en arrière, supprimez le nouveau dossier, et renomez à nouveau l'ancien.

### MacOS
Extraire le fichier zip quelque part sur votre ordinateur. Aller dans le dossier `Applications`, choisissez `Ultimaker Cura.app`, faites un clic droit ou cliquez dessus avec le bouton CTRL enfoncé, et choisissez _Afficher le contenu du paquet_.
Parcourez l'arborescence de dossier pour trouver le dossier `resources` et renommez le pour sauvegarder l'installation existante. Copiez et collez le dossier `resources` du fichier zip pour modifier votre installation Cura. Pour revenir en arrière, supprimez le nouveau dossier, et renommez à nouveau l'ancien.

![mac os folders](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/macos.png)

### Linux
Consultez le [bug tracker](https://github.com/trouch/CreawsomeMod/issues/27) pour plus d'informations.

# Utilisation

## Ajoutez une nouvelle machine
Une fois que vous avez installé la modification, vous pouvez démarrer Cura et créer une nouvelle machine en utilisant la nouvelle catégorie `CreawsomeMod` qui contient les nouveaux réglages. C'est tout !

![machines screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-add-machine.png)

N'hésitez pas à vérifier le start g-code et modifiez le pour votre besoin.

## Réglages de matériaux
Il est très important que vous utilisiez les possibilitées offertes par les profils de matériaux en dupplicant les profils génériques. Ajustez température et rétractation pour chacune de vos bobines !

![materials](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-materials.png)

![materials settings](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-materials-settings.png)

## Problèmes connus
Tout d'abord, veuillez vérifier l'onglet [Issues](https://github.com/trouch/CreawsomeMod/issues) avec les bugs ouverts et fermés. Il n'y en pas tant que ça, vous devriez facilement trouver votre cas. Ci-dessous vous trouverez un récapitulatif des problèmes les plus souvent rencontrés et les réponses/solutions associées.

### Mises à jour de Cura
CreawsomeMod entrainera un crash en case de mise à jour de Cura. Je recommende fortement de reinitiliser vos réglages et de remettre l'ancien dossier `resources` en premier. Ensuite vous pourrez mettre à jour Cura, et réinstaller le mod avec le paquet correspondant à la nouvelle version de Cura.

### Droit utilisateur (macOS)
Dans le cas où vous ne pourriez pas installer la modification, veuillez vérifier vos droits utilisateur et l'accès aux fichiers de l'application Cura.

### Profils utilisateur incompatibles
Comme CreawsomeMod crée de nouvelles définitions de machines avec des fonctions avancées telles que le choix de la buse ou les réglages par matériaux, tous les profils antériaux à CreawsomeMod sont incompatibles. Même si cela était possible, ceci entrainerait des résultats inattendus. 

### Couture Z
Certainement le plus gros défi de l'impression 3D par dépôt de filament. Par défaut CreawsomeMod positionne la couture à l'arrière du modèle. Cela donne un résultat global très satisfaisant, mais peut amener une ligne non esthétique sur des modèles convexes. C'est le talon d'Achille du mod.

1. ***Ne réglez pas la couture sur aléatoire*** ce qui donnerait un résultat global moins bon
2. Changez la position de la couture comme indiqué dans la capture ci-dessous
3. Réglez finement vos réglages de rétractation
4. Activez et calibrez la Linear Advance dans Marlin (non compatible avec les cartes silencieuses utilisant un TMC2208)
5. Activez la roue-libre dans Cura (incompatible avec la Linear Advance)

![z-seam location tuning](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/tuning-zseam1.png)

### Bouchon
Si vous avez la buse qui se bouche lors des retracts, il est probable que vous ayez une petite fuite entre le PTFE et la buse. Le filament fondu ne remontera pas, mais ca réduit la qualité du flux. Vous pouvez essayer l'[Original Creality hot end ptfe fix](https://www.thingiverse.com/thing:3203831) par Luke Hatfield, aka "OneBadMarine". Ce mod permet de conserver une légère pression entre le PTFE et la buse, évitant ainsi toute micro-fuite.

### Pertes de détails
CreawsomeMod règle la largeur de ligne à 125% pour des questions de facilité de calcul et un meilleur résultat global. Cependant, certains modèles sont incompatibles avec ce réglage. Si vous perdez des détails ou certains perimétres remplacées par des micro remplissages, essayez de réduire la largeur à 0.45mm ou 0.40mm.

### Stringing
Pour la plupart des imprimantes Creality, la vitesse max d'extrusion est limitée à 25mm/s dans le firmware ! CreawsomeMod inclus un g-code de début afin de régler l'extrudeuse à 50mm/s en utilisant une commande _M203_ et alertera l'utilisateur en cas de réglage excessif. Assurez-vous de changer le g-code de début si vous avez besoin d'une vitesse de rétractation supérieur à 50mm/s.

## Réglages
Quelque soit l'imprimante, le slicer, modification ou pas, je recommande fortement ce [Guide](https://www.3dhubs.com/talk/t/howto-calibrate-tune-and-fine-tune-your-printer-and-filament/5695) pour régler votre imprimante. Le plus important est de calibrer votre extrudeur (bowden débranché), votre flux, et de régler la température pour chacune de vos bobines !

## Soutenez-moi
En considérant ce mod comme une upgrade GRATUITE qui améliorera votre qualité d'impression, vous souhaitez peut être soutenir mes efforts. Je vous ai peut être fait écononiser une centaine d'euros en upgrade inutiles ! Gardez votre argent pour des bobines ou un resto avec les personnes que vous aimez. Parlez de mon mod, et mentionnez-le si vous postez de superbes print réalisés avec !

