USE woodytoys;
CREATE TABLE IF NOT EXISTS products (
    id mediumint(8) unsigned NOT NULL auto_increment,
    product_name varchar(255) default NULL,
    product_price varchar(255) default NULL,
    PRIMARY KEY (id)
) AUTO_INCREMENT=1;

INSERT INTO products (product_name, product_price) VALUES 
("Set de 100 cubes multicolores","50"),
("Yoyo","10"),
("Circuit de billes","75"),
("Arc à flèches","20"),
("Maison de poupées","150");

-- Création de l'utilisateur limité à l'hôte 'php' (ou '%' pour plus de souplesse avec Docker)
CREATE USER IF NOT EXISTS 'wt-user'@'%' IDENTIFIED BY 'wt-pwd';

-- Attribution des droits de lecture seule sur la base woodytoys
GRANT SELECT ON `woodytoys`.* TO 'wt-user'@'%';

FLUSH PRIVILEGES;
