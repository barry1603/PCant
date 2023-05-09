# Utilisez une image de base Python
FROM python:3.8

# Créez un répertoire pour l'application
WORKDIR /app

# Copiez les fichiers requirements.txt et installez les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiez le reste du code de l'application dans le répertoire /app
COPY . .

# Utilisez le port 8080 pour Streamlit
ENV PORT 8080

# Démarrez l'application Streamlit en utilisant le port 8080
CMD streamlit run --server.port $PORT mon_dashboard.py