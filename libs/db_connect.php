<?php 
    function db_connect(){
        """ Returns a object able to interact with the database
        """

        require('../config/config.php');

        try {
            $linkpdo = new PDO("mysql:host=$server;dbname=$db", $login, $mdp);
        }
        catch (Exception $e) {
            die('Erreur : ' . $e->getMessage());
        } 
        return $linkpdo;
    }

?>