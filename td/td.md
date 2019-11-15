1) a) Effectuer la commande suivante "udevadm monitor -k -p". Connecter ensuite un périphérique USB. Déconnecter enfin ce périphérique. Que remarquez-vous? 
   b) Reconnecter la clé USB et exécuter la commande "udevadm info -a -p /sys/block/sdb". Qu'en déduisez-vous par rapport à la commande de la question précédente? 
   c) Effectuer la commande "/sbin/blkid -o udev -p /dev/sdb1" après la connection du périphérique USB. 
   
2) a) Etablir une règle udev afin de copier le contenu de n'importe quel périphérique USB qui se connecte à la 
      machine.  

3) a) Connecter votre clé USB à votre ordinateur et faire la commande xxxx. Quel est le numéro de série de votre 
      clé USB? 
   b) Créer un dossier /home/user/Desktop/secrets/ et mettre des fichiers dans ce dernier. 
   c) Etablir une règle udev afin de faire un backup du dossier /home/user/Desktop/secrets/ à chaque fois 
      que se connecte votre clé USB de la question a).
   d) Modifier la règle udev pour faire le point de montage de la clé USB en question dans le dossier /home/user/Desktop/mount/[key-name].

4) a) Etablir une règle udev afin d'écrire dans un fichier log la date et l'heure de la connexion et la déconnexion
      des clés USB avec le nom de la clé et son numéro de série.
   b) Modifier votre règle udev pour préciser la date et l'heure du backup du dossier /home/user/Desktop/secrets/ avec le 
      nom de la clé et son numéro de série.