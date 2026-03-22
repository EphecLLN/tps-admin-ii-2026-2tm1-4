FROM internetsystemsconsortium/bind9:9.18

# On copie juste les fichiers
COPY config/named.conf /etc/bind/named.conf
COPY config/named.conf.local /etc/bind/named.conf.local
COPY zones/ /var/lib/bind/

# On s'assure que Bind a les droits
RUN chown -R bind:bind /etc/bind/ /var/lib/bind/

# L'ASTUCE : On ne met SURTOUT PAS "named" dans le CMD
# On ne met que les drapeaux (flags)
CMD ["-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
