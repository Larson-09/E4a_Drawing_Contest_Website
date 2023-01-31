<link rel="stylesheet" href="../../front_ressources/styleRequest.css">

<?php
    # require_once('../../libs/db_manager.php');
    #$pdo = new DbManager();

    require_once('../../libs/db_connect.php');
    $db = db_connect();

    //Recuperer la description de l'étudiant
    $req = "SELECT
                d.idDessin,
                e.note,
                u.nom,
                c.descriptionConcours,
                c.theme
            FROM
                Dessin d
            JOIN Evaluation e ON
                d.idDessin = e.idDessin
            JOIN Utilisateur u ON
                d.idCompetiteur = u.idUtilisateur
            JOIN Concours c ON
                d.idConcours = c.idConcours

            WHERE YEAR(c.dateDebut) = 2021
            ORDER BY e.note DESC";

    $req = executerRequete($db, $req);
    $content = $req->fetch();
?>

<!DOCTYPE HTML>
<html>

    <head>
        <title>R2</title>
    </head>

    <body>   
        <table>

        <tbody>
            <tr>
                <th>N° dessin</th>
                <th>Note</th>
                <th>Nom Competiteur</th>
                <th>Concours</th>
                <th>Theme</th>
            </tr>

            <?php
    
                while($data = $req -> fetch()){
            ?>
                    <tr>
                        <td> <?php echo ($data['idDessin']); ?> </td>
                        <td> <?php echo ($data['note']); ?> </td>
                        <td> <?php echo ($data['nom']); ?> </td>
                        <td> <?php echo ($data['descriptionConcours']); ?> </td>
                        <td> <?php echo ($data['theme']); ?> </td>
                    </tr>
                
            <?php } ?>
        
        </tbody>

    </table>

    </body>
</html>