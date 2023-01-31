<?php 

   // Paramètres de connexion à la base de données
   define('DB_HOST','localhost'); // Adresse de la base, généralement localhost
   define('DB_NAME','concours_dessins');    // Nom de la base de données
   define('DB_USER','user');    // Nom de l'utilisateur MySQL
   define('DB_PASS','userpass');    // Mot de passe de l'utilisateur
   

    function db_connect(){
        $h="mysql:host=".DB_HOST.";dbname=".DB_NAME;
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

        /**
     * Execute la requête
     * @param string $requete
     *            requête SQL
     * @param array() $params
     *            parmètres de la requête
     * @throws Exception si l'exécution renvoit une erreur SQL
     * @return PDOStatement
     */
    function executerRequete($db, $requete, $params = null) {
        $resultat = $db->prepare($requete);

        if (! $resultat->execute($params)) {
            $erreur = $resultat->errorInfo();
            throw new SQLException( $erreur[0], $erreur[2], 'Erreur SQL : ' . $erreur[0] . ' ' . $erreur[1] . ' ' . $erreur[2]);
        }

        return $resultat;
    }

?>
