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
            header('Location: ../pages/index.php');
            exit();
        }
        
        else {
            $_SESSION['current_login'] = $_POST['login'];
            $_SESSION['current_password'] = $_POST['password'];

            # Redirect to home page
            header('Location: ../pages/home_page.php');
            exit();
        }
    ?>

</body>