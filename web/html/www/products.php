
<?php
// On récupère les variables injectées par Docker via le fichier .env
$dbname = getenv('MARIADB_DATABASE');
$dbuser = getenv('MARIADB_USER');     // C'est ici qu'on utilise 'woodytoys' au lieu de 'root'
$dbpass = getenv('MARIADB_PASSWORD'); 
$dbhost = 'mysql-db'; // Au lieu de getenv

// Connexion propre
$connect = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname) 
    or die("Impossible de se connecter à l'hôte : " . $dbhost);

// Requête
$result = mysqli_query($connect, "SELECT id, product_name, product_price FROM products");
?>

<table>
<tr>
  <th>Numéro de produit</th>
  <th>Descriptif</th>
  <th>Prix</th>
</tr>

<?php // Attention : utilise bien <?php ici pour éviter les erreurs de "short tags"
while ($row = mysqli_fetch_array($result)) {
    printf("<tr><td>%s</td> <td>%s</td> <td>%s</td></tr>", $row[0], $row[1], $row[2]);
}
?>
</table>
