FROM nginx:latest

# Installation de certbot et du plugin nginx
RUN apt update && \
    apt install -y certbot python3-certbot-nginx && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# Copie de ta configuration personnalisée si nécessaire
# COPY nginx.conf /etc/nginx/nginx.conf
