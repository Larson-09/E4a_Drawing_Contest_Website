<link rel="stylesheet" href="../../front_ressources/styleRequest.css">

<?php
    require_once('../../libs/db_connect.php');
    $db = db_connect();

    $req = "SELECT
                u.idUtilisateur,
                u.nom,
                u.prenom
            FROM
                Utilisateur u
            JOIN Competiteur c ON
                u.idUtilisateur = c.idCompetiteur
            WHERE NOT
                EXISTS(
                SELECT
                    1
                FROM
                    Concours co
                WHERE NOT
                    EXISTS(
                    SELECT
                        1
                    FROM
                        Dessin d
                    WHERE
                        d.idCompetiteur = c.idCompetiteur AND d.idConcours = co.idConcours
                )
            )";

    $req = executerRequete($db, $req);
    ?>
    <table>
        <tr>
            <th> ID Utilisateur </th>
            <th> Nom de L'utilisateur </th>
            <th> Prénom de L'utilisateur </th>
        </tr>
    <?php
    while($data = $req -> fetch()){
    ?>
        <tr>
            <td > <?php echo ($data['idUtilisateur']); ?> </td>
            <td > <?php echo ($data['nom']); ?> </td>
            <td > <?php echo ($data['prenom']); ?> </td>
        </tr>
    
<?php } ?>
    </table>