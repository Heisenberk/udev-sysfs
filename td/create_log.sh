#!/bin/bash

date_log=$(/usr/bin/date)
new_log="${date_log} - $2 $3 : $4"
echo $new_log >> $1 
