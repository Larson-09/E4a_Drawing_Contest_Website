<link rel="stylesheet" href="../../front_ressources/styleRequest.css">

<?php
    # require_once('../../libs/db_manager.php');
    #$pdo = new DbManager();

    require_once('../../libs/db_connect.php');
    $db = db_connect();

    $req = "SELECT DISTINCT
                Clu.nom,
                COUNT(D.idDessin) as 'Nombres de dessin'
            FROM
                Utilisateur U,
                Competiteur C,
                Club Clu,
                Dessin D

            WHERE
                U.idClub = Clu.idClub AND
                C.idCompetiteur = U.idUtilisateur AND
                D.idCompetiteur = C.idCompetiteur

            GROUP BY Clu.idClub
            ORDER BY COUNT(D.idDessin) DESC;";

    $req = executerRequete($db, $req);
    ?>
    <table>
        <tr>
            <th> Nom du club </th>
            <th> Nombres de dessin </th>
        </tr>
    <?php
    while($data = $req -> fetch()){
    ?>
        <tr>
            <td> <?php echo ($data['nom']); ?> </td>
            <td> <?php echo ($data['Nombres de dessin']); ?> </td>
        </tr>
    
<?php } ?>
    </table>