#!/bin/bash

#Script permettant de générer une liste de répertoire dont le niveau de l'arborescence est paramétrable ainsi que les noms des sous répertoires
#Avec la boucle while

read -p "Entrez le niveau de l'arborescence (il doit être supérieur à 0) : " na

for i in `seq 1 $na` ; do

read -p "Saisisez le nom du sous répertoire $i : " nom_rep

nom_rep[$i]=$nom_rep

done

mkdir /${nom_rep[1]}

cd /${nom_rep[1]}

j=2

while [ $j -le $na ]; do

mkdir ${nom_rep[$j]}

cd ${nom_rep[$j]}

let "j=$j+1"

done

rep=`pwd`

echo "Votre répertoire $rep a été créé avec succès"

