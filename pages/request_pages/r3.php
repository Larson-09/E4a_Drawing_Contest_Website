<link rel="stylesheet" href="../../front_ressources/styleRequest.css">

<?php
    # require_once('../../libs/db_manager.php');
    #$pdo = new DbManager();

    require_once('../../libs/db_connect.php');
    $db = db_connect();

    //Recuperer la description de l'étudiant
    $req = "SELECT DISTINCT
                Conc.idConcours,
                Conc.dateDebut,
                Conc.descriptionConcours,
                UC.nom as nomCompetiteur,
                D.idDessin,
                D.commentaire AS commDessin,
                E.note,
                E.commentaire AS commEv,
                UEE.nom as nomEvaluateur
            FROM
                Concours Conc,
                Competiteur C,
                Dessin D,
                Evaluation E,
                Utilisateur UC,
                Utilisateur UEE,
                Evaluateur UE
            WHERE
                D.idDessin = E.idEvaluation
                AND
                D.idConcours = Conc.idConcours
                AND
                D.idCompetiteur = C.idCompetiteur
                AND
                C.idCompetiteur = UC.idUtilisateur
                AND
                E.idEvaluateur = UE.idEvaluateur
                AND
                UE.idEvaluateur =  UEE.idUtilisateur;
            ORDER BY E.note DESC";

    $req = executerRequete($db, $req);
    $content = $req->fetch();
?>

<!DOCTYPE HTML>
<html>

    <head>
        <title>R3</title>
    </head>

    <body>   
        <table>
        
        <tbody>
            <tr>
                <th>N° Concours</th>
                <th>Date Debut</th>
                <th>Concours</th>
                <th>Competiteur</th>
                <th>N° Dessin</th>
                <th>Commentaire Competiteur</th>
                <th>Evaluateur</th>
                <th>Note</th>
                <th>Commentaire Evaluateur</th>
            </tr>

            <?php 
                while($data = $req -> fetch()){
            ?>
                <tr>
                    <td > <?php echo ($data['idConcours']); ?> </td>
                    <td > <?php echo ($data['dateDebut']); ?> </td>
                    <td > <?php echo ($data['descriptionConcours']); ?> </td>
                    <td > <?php echo ($data['nomCompetiteur']); ?> </td>
                    <td > <?php echo ($data['idDessin']); ?> </td>
                    <td > <?php echo ($data['commDessin']); ?> </td>
                    <td > <?php echo ($data['nomEvaluateur']); ?> </td>
                    <td > <?php echo ($data['note']); ?> </td>
                    <td > <?php echo ($data['commEv']); ?> </td>
                </tr>
            <?php } ?>



        </tbody>
    </table>

    </body>
</html>