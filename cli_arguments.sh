#!/bin/bash
# Script pour afficher les arguments de ligne de commande

# Vérifie s'il y a des arguments
if [ $# -eq 0 ]; then
    echo "Aucun argument fourni."
    exit 1
fi

# Affiche chaque argument
i=1
for arg in "$@"; do
    echo "Argument $i: $arg"
    ((i++))
done

