#!/bin/bash
# Script pour compter le nombre de fichiers dans un répertoire donné

# Vérifie si un répertoire a été passé en argument
if [ -z "$1" ]; then
    echo "Veuillez spécifier un répertoire."
    exit 1
fi

# Compte le nombre de fichiers dans le répertoire
count=$(ls -1 "$1" | wc -l)

# Affiche le résultat
echo "Le dossier $1 contient $count fichier(s)."

