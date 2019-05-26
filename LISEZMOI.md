# Modification "Creagénial" pour Cura 
* [Aperçu](#aperçu)
* [Installation](#installation)
* [Utilisation](#utilisation)
* [Problèmes connus](#problèmes-connus)
* [Réglages](#réglages)


# Aperçu
## Pourquoi cette modification ?
Par défaut, lorsqu'on ajoute une machine "Custom" ou Creality, Cura active certaines fonctions pour réduire la durée d'impression, mais qui réduit aussi la qualité. Cette modification ajoute de nouvelles définitions de machine avec une personalisation en profondeur afin d'améliorer la qualité d'impression comparé aux définitions initiales.

J'étais aussi fatigué de personaliser et écraser chaque réglage individuellement pour mes besoins, et de devoir gérer des profils utilisateurs. Je voulais un processus rationnalisé me permettant d'utiliser mes configurations sur plusieurs ordinateurs en utilisant mes habitudes de développeur.

Finalement, j'ai décidé de partager mon travail en voyant l'enthousiasme autour de celui-ci et de mes impressions, de façon à ce que chacun puisse en bénéficier.

## Cette amélioration va-t-elle améliorer ma qualité d'impression ?
Cela dépend comment vous avez été capable de régler vos profils et votre imprimante jusque là. Vous pouvez voir quelques exemples d'impression ci-dessous, à vous de voir ! Gardez en tête que vous devrez toujours ajuster votre température et certains réglages en fonction de vos matériaux et modèles à imprimer !

![sample cube](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/sample-cube.jpg)

_xyzCalibration_cube.stl printed at 0.12mm layer height, 50mm/s_ [Source File](https://www.thingiverse.com/thing:1278865)

![benchmark ender](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/bench-ender-round1-lowres.jpg)

_money_cat_fill.stl printed at 0.20mm layer height, 60mm/s_ [Source File](https://www.thingiverse.com/thing:923108)



## Quelles sont les modifications ?
### Définitions de machine
* Définitions de machine en profondeur
* Correction des réglages cachés
* Désactivation du contrôle de saccade et d'accélération
* Correction de la durée d'impression selon les firmware usine
* Modification de la vitesse pour améliorer la stabilité
  * Vitesse Principale @ 50mm/s
  * Remplissage @ 100% Vitesse Principale
  * Périmètres @ 50% Vitesse Principale
  * Déplacements @ 150-200mm/s

### Amélioration de qualité
* Désactivation du Combing (Détourrage)
* Activation du Z-Hop @ 0.2mm (Décalage en Z)
* Correction des hauteurs de couche disponibles
* Correction de la résolution X/Y
* Modification de la largeur de ligne à 125% du diamètre de la buse \*
* Alignement de la couture Z à l'arrière
* Augmentation des murs
* Optimisation des supports
* Réglages de la température par matériaux

### Amélioration de l'interface
* Nouvelle option de visibilité _Essentials_
* Choix de la taille de buse
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
Si ce n'est pas encore fait, commencez par installer Cura et lancez-le une première fois. Ceci est nécessaire afin de passer les validations de signature par votre système d'exploitation.

## Install CreawsomeMod
Tout d'abord, téléchargez le [paquet CreawsomeMod](https://github.com/trouch/CreawsomeMod/releases/download/20190420-0.2.0/CreawsomeMod-0.2.zip) et suivez les instructions selon votre système d'exploitation. ***Ne téléchargez PAS le fichier ZIP depuis le boutton clone ci-dessus.***

Un youtubeur en *particulier* a fait une très bonne vidéo d'intro qui montre l'installation sur Windows, son utilisation, et un exemple d'impression à la fin.

[![intro video](https://img.youtube.com/vi/mOn-VNqg2ac/0.jpg)](https://www.youtube.com/watch?v=mOn-VNqg2ac)

### Windows
Extraire le fichier zip quelque part sur votre ordinateur. Allez dans le dossier `Program Files\Ultimaker Cura`, repérez le dossier `resources` et renomez le pour sauvegarder l'installation existante. Copiez et collez le dossier `resources` du fichier zip afin de modifier votre installation Cura. Pour revenir en arrière, supprimez le nouveau dossier, et renomez à nouveau l'ancien.

### MacOS
Extraire le fichier zip quelque part sur votre ordinateur. Aller dans le dossier `Applications`, choisissez `Ultimaker Cura.app`, faites un clic droit ou cliquez dessus avec le bouton CTRL enfoncé, et choisissez _Afficher le contenu du paquet_.
Parcourez l'arborescence de dossier pour trouver le dossier `resources` et renommez le pour sauvegarder l'installation existante. Copiez et collez le dossier `resources` du fichier zip pour modifier votre installation Cura. Pour revenir en arrière, supprimez le nouveau dossier, et renommez à nouveau l'ancien.

![mac os folders](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/macos.png)

### Linux
Pas encore testé !

# Utilisation

## Éteignez et rallmuez votre imprimante
Si vous avez imprimé quelque chose avec un autre profil juste avant, veuillez éteindre votre imprimante avant de la rallumer. _Ceci est nécessaire pour réinitialiser ses réglages. Les profils avec le contrôle d'accélération et de saccade activés injectent des commandes M204/M205 dans le g-code généré qui peuvent occasionner des résultats non attendu en utilisant CreawsomeMod juste après._

## Nouvelle machine
Une fois que vous avez installé la modification, vous pouvez démarrer Cura et créer une nouvelle machine en utilisant la nouvelle catégorie `CreawsomeMod` qui contient les nouveaux réglages. C'est tout !

![machines screen](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-add-machine.png)

N'hésitez pas à vérifier le start g-code et modifiez le pour votre besoin. Par défaut, il a la séquence suivante :
- G28 home axis
- M420 pour rappeler le mesh de compensation avec un lissage sur 2mm de hauteur
- Ligne de purge sur l'avant de la plateforme
- Lance l'impression

## Réglages de matériaux
Il est très important que vous utilisiez les possibilitées offertes par les profils de matériaux en dupplicant les profils génériques. Ajustez température et rétractation pour chacune de vos bobines !

![materials](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-materials.png)

![materials settings](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/screen-materials-settings.png)

## Problèmes connus
Tout d'abord, veuillez vérifier l'onglet [Issues](https://github.com/trouch/CreawsomeMod/issues) avec les bugs ouverts et fermés. Il n'y en pas tant que ça, vous devriez facilement trouver votre cas. Ci-dessous vous trouverez un récapitulatif des problèmes les plus souvent rencontrés et les réponses/solutions associées.

### Droit utilisateur (macOS)
Dans le cas où vous ne pourriez pas installer la modification, veuillez vérifier vos droits utilisateur et l'accès aux fichiers de l'application Cura.

### Les nouvelles machines n'apparaissent pas
Veuillez consulter le [wiki Cura](https://github.com/Ultimaker/Cura/wiki/Cura-Preferences-and-Settings-Locations) pour trouver le dossier contenant vos réglages utilisateurs ainsi que le cache pour les netoyer. **Vous devriez déjà avoir sauvegardé vos réglages en utilisant la fonction intégrée à Cura avant la modification !***

### Où est ma buse ?
Soyez patient. Chaque combinaison Buse/Matériaux/Qualité nécessite un fichier spécifique pour lier les définitions et ajuster certains réglages le cas échéant.

### Incompatibilité de profils
Comme CreawsomeMod crée de nouvelles définitions de machines avec des fonctions avancées telles que le choix de la buse ou les réglages par matériaux, tous les profils antériaux à CreawsomeMod sont incompatibles. Même si cela était possible, cela entrainerait des résultats inattendus. 

### Mises à jour de Cura
CreawsomeMod supporte seulement Cura 4 et sera mis à jour pour chaque nouvelle version de Cura.

### Vitesse de retractation limitée
Pour la plupart des imprimantes Creality, la vitesse max d'extrusion est limitée à 25mm/s dans le firmware ! Cela rend n'importe quelle vitesse de retractation au dessus de cette valeur inutilisée, raison pour laquelle CreawsomeMod bloque également. La beta 3 sera corrigée et fournira un start g-code pour ajuster la vitesse d'extrusion de façon sûre.

### Encore un nom en anglais (et avec une faute en plus)
Oui, il y a une faute d'orthographe ! Je l'admet et l'assume complètement. Véridique : quelqu'un m'a prévenu quand il était encore temps de corriger. Mais je n'ai pas eu le courage de refaire le splashcreen ridicule et j'ai trouvé ça rigolo au final. Mais je suis ouvert aux suggestions, n'hésitez pas à soumettre vos idées sur le [bug ouvert](https://github.com/trouch/CreawsomeMod/issues/25).

## Réglages
Tout d'abord, quelque soit l'imprimante, le slicer, modification ou pas, je recommande fortement ce [Guide](https://www.3dhubs.com/talk/t/howto-calibrate-tune-and-fine-tune-your-printer-and-filament/5695) pour régler votre imprimante. Désolé, il est en anglais, mais je le traduirai à l'occasion ! Le plus important est de calibrer votre extrudeur (bowden débranché), votre flux, et de régler la température pour chacune de vos bobines !

### La couture Z
Certainement le plus gros défi de l'impression 3D par dépôt de filament. Par défaut CreawsomeMod positionne la couture à l'arrière du modèle. Cela donne un résultat global très satisfaisant, mais peut amener une ligne non esthétique sur des modèles convexes. C'est le talon d'Achille du mod.

1. ***Ne réglez pas la couture sur aléatoire*** ce qui donnerait un résultat global moins bon
2. Changez la position de la couture comme indiqué dans la capture ci-dessous
3. Réglez finement vos réglages de rétractation
4. Activez et calibrez la Linear Advance dans Marlin (non compatible avec les cartes silencieuses utilisant un TMC2208)
5. Activez la roue-libre dans Cura (incompatible avec la Linear Advance)

![z-seam location tuning](https://github.com/trouch/CreawsomeMod/raw/master/doc/img/tuning-zseam1.png)

### Attention aux micro-fuites
Si vous avez la buse qui se bouche lors des retracts, il est probable que vous ayez une petite fuite entre le PTFE et la buse. Le filament fondu ne remontera pas, mais ca réduit la qualité du flux. Vous pouvez essayer l'[Original Creality hot end ptfe fix](https://www.thingiverse.com/thing:3203831) par Luke Hatfield, aka "OneBadMarine". Ce mod permet de conserver une légère pression entre le PTFE et la buse, évitant ainsi toute micro-fuite.

### Largeur de ligne
CreawsomeMod règle la largeur de ligne à 125% pour des questions de facilité de calcul et un meilleur résultat global. Cependant, certains modèles sont incompatibles avec ce réglage. Si vous perdez des détails ou certains perimétres remplacées par des micro remplissages, essayez de réduire la largeur à 0.45mm ou 0.40mm.

## Soutenez-moi
En considérant ce mod comme une upgrade GRATUITE qui améliorera votre qualité d'impression, vous souhaitez peut être soutenir mes efforts. Je vous ai peut être fait écononiser une centaine d'euros en upgrade inutiles ! Gardez votre argent pour des bobines ou un resto avec les personnes que vous aimez. Parlez de mon mod, et mentionnez-le si vous postez de superbes print réalisés avec !
