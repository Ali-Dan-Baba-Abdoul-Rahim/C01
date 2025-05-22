#!/bin/bash
# Script pour rechercher une chaîne de caractères dans un fichier

# Vérifie si le fichier et la chaîne ont été passés en arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <fichier> <chaîne>"
    exit 1
fi

# Recherche la chaîne dans le fichier
if grep -q "$2" "$1"; then
    echo "La chaîne '$2' a été trouvée dans $1."
else
    echo "La chaîne '$2' n'a pas été trouvée dans $1."
fi

