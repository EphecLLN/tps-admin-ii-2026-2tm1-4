$TTL 86400
@    IN  SOA  ns.ephec.be. admin.ephec.be. (
            2026030302 ; <-- Augmente le serial (on passe à 02)
            3600
            1800
            604800
            86400 )

@    IN  NS   ns.ephec.be.

ns   IN  A    10.0.0.10   ; L'adresse IP de ton serveur DNS
www  IN  A    10.0.0.20   ; L'adresse IP de ton futur site web; Serial (Date du jour + n°)
