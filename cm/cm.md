# Cours magistral udev, sysfs

##  Rappels

### Notion de noyau

Le kernel d'un système d'exploitation est le logiciel permettant la gestion des systèmes de fichiers, la communication entre les logiciels et les périphériques connectés à l'appareil, la gestion et la communication entre les processus.

### /dev 

Tout élément dans un OS Linux est représenté par un fichier. De cette manière, les périphériques sont stockés sous forme de fichiers dans le dossier /dev.

Ces fichiers vont donc permettre l’accès aux périphériques. Ceux-ci sont traditionnellement stockés dans /dev et sont appelés device nodes. Un device node est un point d’entrée vers le noyau caractérisé par un type (bloc ou char) et deux nombres: le major et le minor. Ce triplé définit de façon unique quel périphérique matériel est accédé via ce fichier. Le majeur permet au noyau de savoir quel driver doit gérer le périphérique et le mineur permet au driver de savoir quel périphérique parmi ceux qu’il gère est utilisé. 

Si on fait ls -l /dev, on pourra voir la liste des périphériques. 

Pour rappel, C représente les fichiers spéciaux en mode caractère avec lecture octet par octet cad des portes vers les périphériques (ex port série). 
B représente les fichiers spéciaux en mode bloc de données avec lecture des données par blocs ex disques

### sysfs

* Sysfs est un système de fichier virtuel, c'est à dire couche d'abstraction au dessus du système de fichier physique
* introduit en même temp que Udev avec le noyau 2.6 de linux
* pourquoi ? n'existe pas de représentaion unifier des pilotes/periphérique, gérer les hotplugs (ex: usb)

* permet de regouper un grand nombre d'information ajouter : 
	- /sys/devices/ (représentant la couche physique). 
	- /sys/bus/ est peuplé de liens symboliques, représentant la manière dont chaque périphérique appartient aux différents bus. 
	- /sys/class/ montre les périphériques regroupés en classes, comme les périphériques réseau par exemple
	- pendant que /sys/block/ contient les périphériques de type bloc. 
les information contenu dans ces fichier sont accesible pour l'écriture de règles

## udev

### Definition

udev est un gestionnaire de périphériques du dossier /dev. Il va créer des nœuds dynamiquement pour les périphériques connectés au système. 

Udev réfait lorsqu'un nouveau périphérique est connecté. On peut le voir avec udevadm monitor -k avant de connecter une clé USB par exemple. De même lorsqu'on l'a déconnecté. 

Les propriétés dépendent du type exact de périphérique mais certaines propriétés sont toujours présentes:
ACTION : Le type d’événement à traiter, 
MAJOR, MINOR : Les numéro majeur et mineur du périphérique concerné, 
SEQNUM : un numéro croissant pour ordonner les événements, 
SUBSYSTEM : Le sous-système noyau ayant causé l’événement, 
DEVPATH : Le fichier dans /sys correspondant au périphérique. 

## Ecriture de règles 

### Introduction

Pourquoi écrire des règles ?
les règle permette d'automatisé un certain nombre de tache en fonctions des évènement recenser par le noyau.

* possibilités :
	- changer de nom un péréphérique (durable ou lien symbolique)
	- changer les permissions et les propriétés d'un périphérique
	- LANCER DES SCRIPTS

* Ou sont elles ? peut ont en écrire nous même:
	- les règle de base se trouve dans /lib/udev/rules.d/*
	- les règles commence toujours par "[0-9]*-titre.rules"
	- pour écrire des règles il peut recommander d'écrire dans ce repartoire plutot /etc/udev/rules.d/*

* Syntaxe :
	- système de clef/valeur (ex: KERNEL, SUBSYSTEM, DRIVER) 
	- commande (ex : SYMLINK, NAME, RUN)
	- substitution de caractère (ex : ?1 *plusieurs []liste, %k nom du kernel, %n numero de kernel)
	- 1 ligne = 1 règle le seul moyen de couper finir la ligne par '\'
* lien avec Sysfs:
	- les attibut contenu dans les fichier de sysfs sont accecible avec la commande ATTR{nom de l'attribut}
	-  pour connaitre les information du prériphérique utilisé "udevadm info -a -n chemin periphérique"


