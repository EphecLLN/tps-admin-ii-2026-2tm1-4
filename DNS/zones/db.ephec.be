$TTL 86400
@    IN  SOA  ns.ephec.be. admin.ephec.be. (
            2026030302 ; <-- Augmente le serial (on passe à 02)
            3600
            1800
            604800
            86400 )

; Serveur de noms officiel
@    IN  NS   ns.ephec.be.

; --- LES LIGNES À AJOUTER SONT ICI ---
ns   IN  A    10.0.0.10   ; L'adresse IP de ton serveur DNS
www  IN  A    10.0.0.20   ; L'adresse IP de ton futur site web; Serial (Date du jour + n°)
            3600       ; Refresh
            1800       ; Retry
            604800     ; Expire
            86400 )    ; Minimum TTL

; Serveur de noms officiel pour cette zone
@   IN  NS   ns.ephec.be.
