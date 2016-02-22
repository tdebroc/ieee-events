<?php
	try {
	   $pdo = new PDO('mysql:host=localhost;dbname=ieee','root','root');

	} catch(Exception $e) {
	    echo 'Echec de la connexion à la base de données';
	    echo 'Erreur : '.$e->getMessage().'<br />';
	    echo 'N° : '.$e->getCode();
	    exit();
	}
?>

