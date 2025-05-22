#!/bin/bash

# Script pour compter le nombre de fichiers dans un répertoire saisi par l'utilisateur

# Lit le chemin du répertoire saisi par l'utilisateur (sans invite)
read directory

# Vérifie si le répertoire est vide ou non fourni
if [ -z "$directory" ]; then
    echo "Erreur : Aucun répertoire saisi."
    exit 1
fi

# Vérifie si le répertoire existe
if [ ! -d "$directory" ]; then
    echo "Erreur : '$directory' n'est pas un répertoire valide."
    exit 1
fi

# Compte le nombre de fichiers (pas les sous-répertoires) dans le répertoire
file_count=$(ls -l "$directory" | grep ^- | wc -l)

# Affiche le résultat exactement comme dans l'exemple
echo "Le dossier $directory contient $file_count fichier(s)."
