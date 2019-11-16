#!/bin/bash

(
# Demontage de la cle USB
/usr/bin/systemd-umount  $1 /usr/local/etc/$1

# Attente de 2 secondes pour que le demontage de la cle USB se fasse correctement
sleep 2

# Suppression de l'ancien point de montage
/usr/bin/rm -r /usr/local/etc/$1
) & # Synchronisation de toutes les commandes
