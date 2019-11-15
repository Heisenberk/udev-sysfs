### SYSFS ###
* Sysfs est un système de fichier virtuel, c'est à dire couche d'abstraction au dessus du système de fichier physique
* introduit en même temp que Udev avec le noyau 2.6 de linux
* pourquoi ? n'existe pas de représentaion unifier des pilotes/periphérique, gérer les hotplugs (ex: usb)

* permet de regouper un grand nombre d'information ajouter : 
	- /sys/devices/ (représentant la couche physique). 
	- /sys/bus/ est peuplé de liens symboliques, représentant la manière dont chaque périphérique appartient aux différents bus. 
	- /sys/class/ montre les périphériques regroupés en classes, comme les périphériques réseau par exemple
	- pendant que /sys/block/ contient les périphériques de type bloc. 
les information contenu dans ces fichier sont accesible pour l'écriture de règles

### Ecriture de règles ###
Pourquoi écrire des règles ?
les règle permette d'automatisé un certain nombre de tache en fonctions des évènement recenser par le noyau.

possibilités :
	- changer de nom un péréphérique (durable ou lien symbolique)
	- changer les permissions et les propriétés d'un périphérique
	- LANCER DES SCRIPTS

Ou sont elles ? peut ont en écrire nous même:
	- les règle de base se trouve dans /lib/udev/rules.d/*
	- les règles commence toujours par "[0-9]*-tire.rules"
	- pour écrire des règles il peut recommander d'écrire dans ce repartoire plutot /etc/udev/rules.d/*

Syntaxe :
	- système de clef/valeur (ex: KERNEL, SUBSYSTEM, DRIVER) 
	- commande (ex : SYMLINK, NAME, RUN)
	- substitution de caractère (ex : ?1 *plusieurs []liste, %k nom du kernel, %n numero de kernel)
	- 1 ligne = 1 règle le seul moyen de couper finir la ligne par '\'

lien avec Sysfs:
	- les attibut contenu dans les fichier de sysfs sont accecible avec la commande ATTR{nom de l'attribut}
	-  pour connaitre les information du prériphérique utilisé "udevadm info -a -n chemin periphérique"








	
