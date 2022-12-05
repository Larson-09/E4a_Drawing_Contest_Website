<?php require('/reusable/header.php'); ?>

<!DOCTYPE HTML>
<html>
<head>
    <title>Connexion</title>
</head>
<body>

    <h1>Concours de dessins</h1>
    
   <form action="connexion.php" method="POST">
        <p> <label>Identifiant <input type="text" name="identifiant"> </label> </p>
        <p> <label>Mot de passe <input type="password" name="mdp"> </label> </p>
            <input type="submit" name="valider" value="Se connecter">
    </form>
    
</body>
</html>