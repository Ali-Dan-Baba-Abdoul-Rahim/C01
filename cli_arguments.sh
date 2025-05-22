#!/bin/bash

# Script pour afficher les arguments de la ligne de commande ligne par ligne

# Compteur pour numéroter les arguments
count=1

# Boucle à travers tous les arguments avec $@
for arg in "$@"; do
    echo "Argument $count: $arg"
    ((count++))
done
