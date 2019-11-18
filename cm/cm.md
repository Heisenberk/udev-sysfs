# Cours magistral udev, sysfs

##  Définitions

### Notion de noyau

Le kernel d'un système d'exploitation est le logiciel permettant la gestion des systèmes de fichiers, la communication entre les logiciels et les périphériques connectés à l'appareil, la gestion et la communication entre les processus.

Un pilote est un programme qui permet au système d'exploitation d'interagir avec un périphérique.

### /dev 

Tout élément dans un OS Linux est représenté par un fichier. De cette manière, les périphériques sont stockés sous forme de fichiers dans le dossier /dev.
Ces fichiers vont donc permettre l’accès aux périphériques et sont appelés device nodes. Un device node est un point d’entrée vers le noyau caractérisé par un type (bloc ou char) et deux nombres: le major et le minor. Ce triplé définit de façon unique quel périphérique matériel est accédé via ce fichier. Le majeur permet au noyau de savoir quel driver doit gérer le périphérique et le mineur permet au driver de savoir quel périphérique parmi ceux qu’il gère est utilisé. 

Si on fait ls -l /dev, on pourra voir la liste des périphériques. 

Pour rappel, C représente les fichiers spéciaux en mode caractère avec lecture octet par octet cad des portes vers les périphériques (ex port série). 
B représente les fichiers spéciaux en mode bloc de données avec lecture des données par blocs (ex disques).

## Historique avant udev

### makedev

Dans les premières versions de Linux, les numéros de major et minor sont codés dans le noyau. Pour pouvoir modifier ces numéros, il fallait modifier le script MAKEDEV, ce qui était très contraignant en cas d'erreur. De plus, l'espace de valeurs possibles pour les numéros major et minor était trop petit. 
Il fallait donc trouver une autre solution pour les versions suivantes de Linux.

### devfs

Devfs est un système de fichiers contenant les device nodes et dont les noeuds sont créés par les pilotes des périphériques lors de leur détection. Cependant, il y avait toujours certaines limites (espace de numéros trop petit notamment).



## Définitions de udev et sysfs

### udev

udev est un gestionnaire de périphériques du dossier /dev. Il va créer des nœuds dynamiquement pour les périphériques connectés au système. 

Udev détecte lorsqu'un nouveau périphérique est connecté. On peut le voir avec udevadm monitor -k avant de connecter une clé USB par exemple. De même lorsqu'on l'a déconnecté. 

----------------------------------------------------------------------------------------------------------------------------------

Par exemple, en utilisant la commande ```udevadm monitor -k```, cela permet de visualiser les détections des périphériques faites par udev. 
On peut également afficher certaines propriétés avec ```udevadm monitor -k -p```

Les propriétés dépendent du type exact de périphérique mais certaines propriétés sont toujours présentes:
ACTION : Le type d’événement à traiter, 
MAJOR, MINOR : Les numéro majeur et mineur du périphérique concerné. 
SEQNUM : un numéro croissant pour ordonner les événements, 
SUBSYSTEM : Le sous-système noyau ayant causé l’événement, 
DEVPATH : Le fichier dans /sys correspondant au périphérique. 



### sysfs

* Sysfs est un système de fichier virtuel, c'est à dire couche d'abstraction au dessus du système de fichier physique
* introduit en même temp que Udev avec le noyau 2.6 de linux
* pourquoi ? n'existe pas de représentation unifiée des pilotes/periphérique, gérer les hotplugs (ex: usb)
* va récupérer les attributs de chaque périphérique et créer leurs attributs correspondants. 

sysfs exporte depuis l'espace noyau vers l'espace utilisateur les informations 
sur les périphériques du système. Ainsi, il va créer un dossier associé au système de fichiers contenant une 
suite de fichiers représentant les attributs du périphérique en question. Ainsi, c'est udev qui va 
interpréter les fichiers générés par sysfs pour donner ces attributs à l'utilisateur. Cela permet donc 
de créer des règles qui vont s'appliquer en fonction des attributs des périphériques.

* permet de regrouper un grand nombre d'informations : 
	- /sys/devices/ (représentant la couche physique). 
	- /sys/bus/ est peuplé de liens symboliques, représentant la manière dont chaque périphérique appartient aux différents bus. 
	- /sys/class/ montre les périphériques regroupés en classes, comme les périphériques réseau par exemple
	- pendant que /sys/block/ contient les périphériques de type bloc. 
Les informations contenues dans ces fichiers sont accessibles pour l'écriture de règles.

Dans le TD, l'exercice 1 permet de comprendre les différentes commandes principales avec la visualisation des différents attributs. 

----------------------------------------------------------------------------------------------------------------------------------

## Ecriture de règles 

### Introduction

Pourquoi écrire des règles ?
Les règles permettent d'automatiser un certain nombre de taches en fonction des évènements recensées par le noyau.

* possibilités :
	- changer de nom un périphérique (durable ou lien symbolique)
	- changer les permissions et les propriétés d'un périphérique
	- lancer des scripts

* Où sont elles ? peut on en écrire nous même:
	- les règles de base se trouvent dans /lib/udev/rules.d/*
	- les règles commencent toujours par "[0-9]*-titre.rules"
	- pour écrire des règles il est recommandé d'écrire dans ce répertoire plutôt /etc/udev/rules.d/*

* Syntaxe :
	- système de clef/valeur (ex: KERNEL, SUBSYSTEM, DRIVER) 
	- commande (ex : SYMLINK, NAME, RUN)
	- substitution de caractère (ex : ?1 *plusieurs []liste, %k nom du kernel, %n numero de kernel)

* lien avec Sysfs:
	- les attributs contenus dans les fichier de sysfs sont accessibles avec la commande ATTR{nom de l'attribut}
	- pour connaitre les informations du prériphérique utilisé "udevadm info -a -n chemin/periphérique".

### Opérateurs et clés importantes

== : utilisé pour tester l'égalité
!= : utilisé pour tester la différence
= : utilisé pour assigner une valeur à une clé
+= : utilisé pour ajouter la valeur à une suite de valeurs déjà assigné à la clé

%n : représente le numéro kernel ex : sdb1 -> 1
%k : nom kernel ex : sdb1 
%c : permet de récupérer la sortie de PROGRAM

ACTION : représente l'action du périphérique (connexion avec add et déconnexion avec remove) ex : ACTION=="add"
DEVPATH : représente le chemin absolu d'accès au périphérique ex : DEVPATH=="/devices/pci0000:00/0000:00:12.0/usb1/1-1/1-1.3/1-1.3:1.0/net/usb0"
KERNEL : représente le nom du périphérique ex : KERNEL=="sd[b-z][0-9]"
NAME : représente le nom du noeud du périphérique
SYMLINK : représente le lien symbolique du noeud (il peut y avoir plusieurs lien symbolique par noeud)
SUBSYSTEM : représente ke sous-système du périphérique ex : SUBSYSTEM=="usb"
DRIVER : représente le nom du pilote du périphérique
ATTR{filename} : représente l'attribut filename trouvé par sysfs lors de la connexion du périphérique.
RUN : permet d'exécuter un script ou une commande ex : RUN+="/home/user/Desktop/test.sh" A noter que le script sera exécuté en sudo.
...
https://linux.die.net/man/8/udev



### Tester ses règles

Pour visualiser quels scripts ont été lancés à la connexion d'un périphérique, il est possible d'utiliser la commande suivante : 
udevadm test -a add <fichier sysfs> ex : udevadm test /sys/block/sdb

### Exemples concrets 

## Administration

### Log définition

Un log (ou logging) est un fichier permettant de stocker un
historique des événements sur une machine. C'est donc un journal
de bord qui est utilisée dans l'administration systeme pour garder
une trace de ce qui s'est passée (pas forcement des incidents).

Informations utiles pour les logs
 Date et heure de l'action
 Identification de l'action
 Auteur de l'action (dans l'idéal)
 Identification de l'outil permettant d'eectuer l'action

### udev et les logs

Utilité de udev et de sysfs pour l'administration
udev permet de lancer des scripts lors de la connexion et
deconnexion de périphériques sur la machine.
On peut donc écrire dans un fichier (de log) afin d'identifier
l'action (connexion ou déconnexion) et le périphérique.

### Exemple concret


Exemple sur un antivirus qui vérifie le contenu de la clé
Exemple qui change le proprietaire de la clé USB


