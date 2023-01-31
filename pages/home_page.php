<?php 
 ?>
<!DOCTYPE HTML>
<html>

<head>
<link rel="stylesheet" href="../front_ressources/style.css"> 
    <title>page de requetes</title>
</head>
<body>

    <h1>Requêtes</h1>

    <p id= "accroche">
        Bienvenue sur notre site de concours de dessin administrateur ! <br>
        Les liens suivants présentent les résultats des requêtes SQL que nous avons développées <br>
    </p>

    <ul>
        <p>
            Affiche le nom, l'adresse et l'âge de tous les compétiteurs qui on participé dans un concours en 2021.<br>
        <p>
            
        <button class="bouton" id= "boutonN1" onclick="window.location.href = 'request_pages/r1.php';"role="button"> <span class="text">Requete N1</span></button>
        
        
        <p>
            Affiche par ordre croissant de la note de tous les dessins qui ont été évalués en 2022. <br>
            la requete affiche aussi le numéro de dessin, le nom du compétiteur, la description. du concours et le theme.<br>
        <p>
        <button class="bouton" id= "boutonN1" onclick="window.location.href = 'request_pages/r2.php';"role="button"> <span class="text">Requete N2</span></button>
        
        
        <p>
            On affiche des informations sur tous les dessins qui ont été évalués et qui sont stockés dans la base. <br>
            On affiche le numéro, année, la description du concours dans lequel le dessin a été évalué ; le nom du compétiteur ayant proposé le dessin ; <br>
            Le numéro et le commentaire du dessin fait par le compétiteur ; la note et le commentaire de l évaluation ; le nom de l évaluateur. <br>
            La requete affiche aussi le numéro de dessin, le nom du compétiteur, la description. du concours et le theme.<br>
        <p>
        <button class="bouton" id= "boutonN1" onclick="window.location.href = 'request_pages/r3.php';"role="button"> <span class="text">Requete N3</span></button>
        
        
        <p>
            Nom, prénom et âge des compétiteurs qui ont participé à tous les concours qui ont été organisés. <br>
        <p>
        <button class="bouton" id= "boutonN1" onclick="window.location.href = 'request_pages/r4.php';"role="button"> <span class="text">Requete N4</span></button>
        
        
        <p>
        Nom, prénom et âge des compétiteurs qui ont participé à tous les concours qui ont été organisés .<br>
        <p>
        <button class="bouton" id= "boutonN1" onclick="window.location.href = 'request_pages/r5.php';"role="button"> <span class="text">Requete N5</span></button>
        
        <p>
        Nom de la région qui a la meilleure moyenne des notes des dessins proposés. <br>
        Affiche le nom de la région et la moyenne des notes de cette région. <br>
        <p>
        <button class="bouton" id= "boutonN1" onclick="window.location.href = 'request_pages/r6.php';"role="button"> <span class="text">Requete N6</span></button>
        
        <p>
        Retourne la liste des les informations sur tous les dessins évalués de la base. <br>
        <p>
        <button class="bouton" id= "boutonN1" onclick="window.location.href = 'request_pages/r7.php';" role="button"> <span class="text">Requete N7</span></button>
        
        <p>
        Retourne le classement d un concours donné.  <br>
        <p>
        <button class="bouton" id= "boutonN1" onclick="window.location.href = 'request_pages/r8.php';" role="button"> <span class="text">Requete N8</span></button>
        
    </ul>
    <h2>
        <img src="../front_ressources/BobRossSenpai.png" id="image">
    </h2>
</body>
</html>

