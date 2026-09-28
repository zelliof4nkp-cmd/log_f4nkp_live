#!/bin/bash
cd "$(dirname "$0")"

echo "Récupération du log depuis GitHub..."
git pull
echo "Mise à jour terminée !"
