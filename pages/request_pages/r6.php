<link rel="stylesheet" href="../../front_ressources/styleRequest.css">

<?php
    # require_once('../../libs/db_manager.php');
    #$pdo = new DbManager();

    require_once('../../libs/db_connect.php');
    $db = db_connect();

    $req = "SELECT
                u.nom,
                u.prenom,
                cl.nom AS nom_club,
                co.theme,
                d.dateRemise,
                e.note
            FROM
                Dessin d
            JOIN Evaluation e ON
                d.idDessin = e.idDessin
            JOIN Competiteur com ON
                d.idCompetiteur = com.idCompetiteur
            JOIN Utilisateur u ON
                u.idUtilisateur = com.idCompetiteur
            JOIN Club cl ON
                u.idclub = cl.idclub
            JOIN Concours co ON
                d.idConcours = co.idConcours
            ORDER BY
                e.note
            DESC;";

    $req = executerRequete($db, $req);
    ?>
    <table>
        <tr>
            <th> Nom de l'utilisateur </th>
            <th> Prénom de l'utilisateur </th>
            <th> Nom du club </th>
            <th> Théme du concours </th>
            <th> Date de remise du dessin </th>
            <th> note du dessin </th>
        </tr>
    <?php
    while($data = $req -> fetch()){
    ?>
        <tr>
            <td> <?php echo ($data['nom']); ?> </td>
            <td> <?php echo ($data['prenom']); ?> </td>
            <td> <?php echo ($data['nom_club']); ?> </td>
            <td> <?php echo ($data['theme']); ?> </td>
            <td> <?php echo ($data['dateRemise']); ?> </td>
            <td> <?php echo ($data['note']); ?> </td>
        </tr>
    
<?php } ?>
    </table>