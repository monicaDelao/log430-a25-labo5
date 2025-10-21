#!/bin/bash

# Script de déploiement pour log430-a25-labo5 (Store Manager)
# Usage: ./deploy.sh

set -e  # Arrêter en cas d'erreur

echo "Deploiement de Store Manager..."

# 1. Mettre à jour le code depuis GitHub
echo "Mise a jour du code..."
git pull origin main

# 2. Arrêter les anciens conteneurs
echo "Arret des conteneurs existants..."
docker compose down

# 3. Construire les nouvelles images
echo "Construction des images Docker..."
docker compose build

# 4. Démarrer les conteneurs
echo "Demarrage des conteneurs..."
docker compose up -d

# 5. Vérifier l'état des conteneurs
echo "Verification de l'etat des conteneurs..."
docker compose ps

echo "Deploiement termine avec succes!"
echo "Store Manager disponible sur le port 5000"
echo "API Gateway (KrakenD) disponible sur le port 8080"
