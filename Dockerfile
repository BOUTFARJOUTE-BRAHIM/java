# Utiliser l'image Nginx officielle
FROM nginx:latest

# Supprimer le contenu par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*
command
# Copier ton code HTML dans le dossier de Nginx
COPY . /usr/share/nginx/html


RUN apt-get update && \
    apt-get install -y maven wget unzip && \
    rm -rf /var/lib/apt/lists/*
# Exposer le port 80
EXPOSE 80

# Commande par défaut
CMD ["nginx", "-g", "daemon off;"]
