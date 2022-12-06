<!DOCTYPE HTML>
<html>

<?php
    //Start session
    session_start();
    
    // Define connection credentials
    $_SESSION['login'] = 'user';
    $_SESSION['password'] = 'userpass';
?>


<head>
    <title>Connexion</title>
</head>
<body>

    <h1>Concours de dessins</h1>
    
   <form action="../libs/check_connection.php" method="POST">
        <p> <label>Identifiant <input type="text" name="login"> </label> </p>
        <p> <label>Mot de passe <input type="password" name="password"> </label> </p>
            <input type="submit" name="validate" value="Se connecter">
    </form>
    
</body>
</html>

