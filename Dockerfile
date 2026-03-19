FROM internetsystemsconsortium/bind9:9.18

# Installation des outils de diagnostic
RUN apk add --no-cache bind-tools

# On copie les fichiers là où l'image les attend (selon ta doc)
# /etc/bind pour la config
COPY named.conf /etc/bind/named.conf
# /var/lib/bind pour les zones (comme dans l'exemple example.com de ta doc)
COPY db.woodytoys.zone /var/lib/bind/db.woodytoys.zone

# Droits appropriés
RUN chown -R bind:bind /etc/bind/ /var/lib/bind/ /var/cache/bind/

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
