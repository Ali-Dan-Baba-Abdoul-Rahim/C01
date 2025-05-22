#!/bin/bash

# Script pour lire et afficher les arguments saisis interactivement ligne par ligne

# Lit la ligne complète saisie par l'utilisateur (sans invite)
read -r input

# Compteur pour numéroter les arguments
count=1

# Boucle à travers les mots de la saisie, en les traitant comme des arguments
for arg in $input; do
    echo "Argument $count: $arg"
    ((count++))
done
