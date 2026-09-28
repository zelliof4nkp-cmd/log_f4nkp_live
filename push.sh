#!/bin/bash
cd "$(dirname "$0")"

# Vérifie s'il y a des nouveaux fichiers ou des modifications
if [[ -n $(git status -s) ]]; then
  echo "Envoi du log sur GitHub..."
  git add .
  git commit -m "Mise à jour log ADIF - $(date +'%d/%m/%Y %H:%M')"
  git push
  echo "Terminé avec succès !"
else
  echo "Aucune modification à envoyer."
fi
