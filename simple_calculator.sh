#!/bin/bash

# Script pour effectuer une opération arithmétique de base à partir d'une saisie interactive

# Lit la ligne complète saisie par l'utilisateur (sans invite)
read num1 num2 operator

# Effectue l'opération en fonction de l'opérateur
case $operator in
    "+")
        result=$((num1 + num2))
        echo "Résultat : $result"
        ;;
    "-")
        result=$((num1 - num2))
        echo "Résultat : $result"
        ;;
    "*")
        result=$((num1 * num2))
        echo "Résultat : $result"
        ;;
    "/")
        result=$((num1 / num2))
        echo "Résultat : $result"
        ;;
esac
