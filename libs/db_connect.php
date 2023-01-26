<?php 

   // Paramètres de connexion à la base de données
   define('DB_HOST','localhost'); // Adresse de la base, généralement localhost
   define('DB_NAME','concours_dessins');    // Nom de la base de données
   define('DB_USER','user');    // Nom de l'utilisateur MySQL
   define('DB_PASS','userpass');    // Mot de passe de l'utilisateur
   

    function db_connect(){
        $h="mysql:host=".DB_HOST.";dbname=".DB_NAME;
        echo $h;
        try
        {
            $db = new PDO($h, DB_USER, DB_PASS);
        }

        catch (Exception $e)
        {
                die('Erreur : ' . $e->getMessage());
        }
        return $db;
    }

?>
