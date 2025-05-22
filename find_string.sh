#!/bin/bash

# Script pour rechercher une chaîne dans un fichier saisi par l'utilisateur

# Lit le nom du fichier saisi par l'utilisateur (sans invite)
read filename

# Lit la chaîne à rechercher (sans invite)
read search_string

# Vérifie si le nom du fichier ou la chaîne est vide
if [ -z "$filename" ] || [ -z "$search_string" ]; then
    echo "Erreur : Nom du fichier ou chaîne non fourni."
    exit 1
fi

# Recherche la chaîne dans le fichier avec grep
if grep -q "$search_string" "$filename" 2>/dev/null; then
    echo "La chaîne '$search_string' a été trouvée dans $filename."
else
    echo "La chaîne '$search_string' n'a pas été trouvée dans $filename."
fi
