#!/bin/bash

# Calcul de la date et de l'heure de l'action
date_log=$(/usr/bin/date)

# Creation d'une variable contenant la nouvelle ligne à écrire
new_log="${date_log} - $2 $5 $3 : $4"

# Ecriture de la ligne dans le fichier de log
echo $new_log >> $1 
