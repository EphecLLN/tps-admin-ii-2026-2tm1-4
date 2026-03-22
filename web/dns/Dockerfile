# On reste sur une image DNS légère
FROM internetsystemsconsortium/bind9:9.18

RUN apk add --no-cache bind-tools

# 1. On copie la configuration principale
# On la prend dans notre dossier local 'config/'
COPY config/named.conf /etc/bind/named.conf
COPY config/named.conf.local /etc/bind/named.conf.local

# 2. On copie TOUTES les zones d'un coup
# On les met dans /var/lib/bind/ comme dans ton ancienne config
COPY zones/ /var/lib/bind/

# 3. Droits appropriés pour que Bind puisse lire les fichiers
RUN chown -R bind:bind /etc/bind/ /var/lib/bind/ /var/cache/bind/
