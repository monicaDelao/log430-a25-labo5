#!/bin/bash

# Script de déploiement pour log430-a25-labo5 (Store Manager)
# Usage: ./deploy.sh

set -e  # Arrêter en cas d'erreur

echo "🚀 Déploiement de Store Manager..."

# 1. Mettre à jour le code depuis GitHub
echo "📥 Mise à jour du code..."
git pull origin main

# 2. Arrêter les anciens conteneurs
echo "🛑 Arrêt des conteneurs existants..."
docker compose down

# 3. Construire les nouvelles images
echo "🔨 Construction des images Docker..."
docker compose build

# 4. Démarrer les conteneurs
echo "▶️  Démarrage des conteneurs..."
docker compose up -d

# 5. Vérifier l'état des conteneurs
echo "✅ Vérification de l'état des conteneurs..."
docker compose ps

echo "🎉 Déploiement terminé avec succès!"
echo "📊 Store Manager disponible sur le port 5000"
echo "🌐 API Gateway (KrakenD) disponible sur le port 8080"
