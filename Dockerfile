# Utilisez une image de base avec Python
FROM python:3.9

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie les fichiers du projet dans le conteneur
COPY . /app

# Installe les dépendances du projet
RUN pip install --no-cache-dir -r requirements.txt

# Expose le port sur lequel Streamlit écoute
EXPOSE 8080

# Définit la commande à exécuter lorsque le conteneur démarre
CMD ["streamlit", "run", "--server.port", "8501", "app.py"]
