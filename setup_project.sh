#!/bin/bash
# setup_project.sh
# Script pour initialiser l'environnement du projet Ballon d'Or Predictor

echo "🚀 Initialisation du projet Ballon d'Or Predictor..."

# --- 1. Création de l'arborescence du projet ---
echo "Création de l'arborescence..."
mkdir -p data/raw data/processed
mkdir -p notebooks
mkdir -p scripts
mkdir -p src/data src/models src/visualization
mkdir -p dashboard
touch README.md
touch .gitignore
echo "venv/" >> .gitignore
echo "*.pyc" >> .gitignore
echo "__pycache__/" >> .gitignore
echo "data/raw/*.csv" >> .gitignore

# --- 2. Création de l'environnement virtuel ---
echo "Configuration de l'environnement virtuel Python..."
python3.9 -m venv venv
source venv/bin/activate

# --- 3. Installation des dépendances ---
echo "Installation des packages Python de base..."
pip install --upgrade pip
pip install pandas==2.1.1 requests==2.31.0 beautifulsoup4==4.12.2 lxml==4.9.3 jupyter==1.0.0 python-dotenv==1.0.0 psycopg2-binary==2.9.9

echo "✅ Environnement prêt ! Activez-le avec : source venv/bin/activate"

# --- 4. Initialisation du dépôt Git ---
echo "Initialisation du dépôt Git..."
git init
git add .
git commit -m "Initial commit: project structure and environment setup"

echo "🎉 Projet initialisé avec succès."