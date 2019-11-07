I) Rappels
a) Notion de noyau

Le kernel d'un système d'exploitation est le logiciel permettant la gestion des systèmes de fichiers, la communication entre les logiciels et les périphériques connectés à l'appareil, la gestion et la communication entre les processus.

b) /dev 

Tout élément dans un OS Linux est représenté par un fichier. De cette manière, les périphériques sont stockés sous forme de fichiers dans le dossier /dev.

Ces fichiers vont donc permettre l’accès aux périphériques. Ceux-ci sont traditionnellement stockés dans /dev et sont appelés device nodes. Un device node est un point d’entrée vers le noyau caractérisé par un type (bloc ou char) et deux nombres: le major et le minor. Ce triplé définit de façon unique quel périphérique matériel est accédé via ce fichier. Le majeur permet au noyau de savoir quel driver doit gérer le périphérique et le mineur permet au driver de savoir quel périphérique parmi ceux qu’il gère est utilisé. 

Si on fait ls -l /dev, on pourra voir la liste des périphériques. 

Pour rappel, C représente les fichiers spéciaux en mode caractère avec lecture octet par octet cad des portes vers les périphériques (ex port série). 
B représente les fichiers spéciaux en mode bloc de données avec lecture des données par blocs ex disques

II) udev
a) Definition

udev est un gestionnaire de périphériques du dossier /dev. Il va créer des nœuds dynamiquement pour les périphériques connectés au système. 

Udev réfait lorsqu'un nouveau périphérique est connecté. On peut le voir avec udevadm monitor -k avant de connecter une clé USB par exemple. De même lorsqu'on l'a déconnecté. 

Les propriétés dépendent du type exact de périphérique mais certaines propriétés sont toujours présentes:
ACTION : Le type d’événement à traiter, 
MAJOR, MINOR : Les numéro majeur et mineur du périphérique concerné, 
SEQNUM : un numéro croissant pour ordonner les événements, 
SUBSYSTEM : Le sous-système noyau ayant causé l’événement, 
DEVPATH : Le fichier dans /sys correspondant au périphérique. 




