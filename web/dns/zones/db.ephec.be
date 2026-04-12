$TTL 86400
@    IN  SOA  ns.ephec.be. admin.ephec.be. (
            2026041202 ;
            3600
            1800
            604800
            86400 )

@    IN  NS   ns.ephec.be.

ns   IN  A    91.134.138.211   ; L'adresse IP de ton serveur DNS
www  IN  A    91.134.138.211   ; L'adresse IP de ton futur site web; Serial (Date du jour + n°)
blog            IN      CNAME   www
