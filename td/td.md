1) Etablir une règle udev afin de copier le contenu de n'importe quelle périphérique USB qui se connecte à la 
   machine. 

2) a) Connecter votre clé USB à votre ordinateur et faire la commande xxxx. Quel est le numéro de série de votre 
      clé USB? 
   b) Créer un dossier /home/user/Desktop/secrets/ et mettre des fichiers dans ce dernier. 
   c) Etablir une règle udev afin de faire un backup du dossier /home/user/Desktop/secrets/ à chaque fois 
      que se connecte votre clé USB de la question a).

3) a) Etablir une règle udev afin d'écrire dans un fichier log la date et l'heure de la connexion et la déconnexion
      des clés USB avec le nom de la clé et son suméro de série.
   b) Modifier votre règle udev pour préciser la date et l'heure du backup du dossier /home/user/Desktop/secrets/ avec le 
      nom de la clé et son numéro de série.