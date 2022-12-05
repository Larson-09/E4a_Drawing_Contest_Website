<?php
    session_start();
?>

<!DOCTYPE HTML>
<html>
<head>
    <title>Connexion</title>
</head>
<body>
		
	<?php
        if ($_POST['login'] != $_SESSION['login'] || $_POST['password'] != $_SESSION['password']) {
            echo "<p>Identifiant ou mot de passe incorrect, essayez encore</p>";
            echo "<a href=\"index.php\"><button>Réessayer</button>";
        }
        
        else {
            $_SESSION['current_login'] = $_POST['login'];
            $_SESSION['current_password'] = $_POST['password'];

            # Redirect to home page
            
            echo "<div class = confirmation>";
                    echo"<br/><br/><br/>";
                    echo "<p>Connexion établie</p>";
                    echo "<p><a href=\"accueil.php\"><button>Accéder au site</button></p>";
                echo "</div>";
        }
    ?>
</body>