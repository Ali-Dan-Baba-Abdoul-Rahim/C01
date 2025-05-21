#!/bin/bash
# Script pour effectuer des opérations arithmétiques simples

# Vérifie si trois arguments ont été passés
if [ $# -ne 3 ]; then
    echo "Usage: $0 <nombre1> <nombre2> <opérateur>"
    exit 1
fi

# Effectue l'opération en fonction de l'opérateur
case $3 in
    +)
        result=$(echo "$1 + $2" | bc)
        ;;
    -)
        result=$(echo "$1 - $2" | bc)
        ;;
    \*)
        result=$(echo "$1 * $2" | bc)
        ;;
    /)
        result=$(echo "scale=2; $1 / $2" | bc)
        ;;
    *)
        echo "Opérateur non valide. Utilisez +, -, * ou /."
        exit 1
        ;;
esac

# Affiche le résultat
echo "Résultat : $result"

