<link rel="stylesheet" href="../../front_ressources/styleRequest.css">

<?php
    # require_once('../../libs/db_manager.php');
    #$pdo = new DbManager();

    require_once('../../libs/db_connect.php');
    $db = db_connect();

    $req = "SELECT
                c.region,
                AVG(e.note) AS Moyenne_note
            FROM
                Club c
            JOIN Utilisateur u ON
                c.idclub = u.idclub
            JOIN Competiteur comp ON
                comp.idCompetiteur = u.idUtilisateur
            JOIN Dessin d ON
                d.idCompetiteur = comp.idCompetiteur
            JOIN Evaluation e ON
                e.idDessin = d.idDessin
            GROUP BY
                c.region
            ORDER BY
                Moyenne_note
            DESC
            LIMIT 1;";

    $req = executerRequete($db, $req);
    ?>
    <table>
        <tr>
            <th> Région du compétiteurs </th>
            <th> Note moyenne </th>
        </tr>
    <?php
    while($data = $req -> fetch()){
    ?>
        <tr>
            <td> <?php echo ($data['region']); ?> </td>
            <td> <?php echo ($data['Moyenne_note']); ?> </td>
        </tr>
    
<?php } ?>
    </table>