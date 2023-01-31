<link rel="stylesheet" href="../../front_ressources/styleRequest.css">

<?php
    # require_once('../../libs/db_manager.php');
    #$pdo = new DbManager();

    require_once('../../libs/db_connect.php');
    $db = db_connect();

    $req = "SELECT DISTINCT
            Cl.nom AS Club,
            U.nom AS Nom,
            U.prenom AS Prenom,
            AVG(Ev.note) AS Moyenne
        FROM
            Club Cl,
            Utilisateur U,
            Competiteur C,
            Dessin D,
            Evaluation Ev,
            Concours Conc
        WHERE
            Conc.idConcours = :id_concours AND Cl.idClub = U.idClub AND U.idUtilisateur = C.idCompetiteur AND C.idCompetiteur = D.idCompetiteur AND D.idConcours = Conc.idConcours AND D.idDessin = Ev.idDessin
        GROUP BY        
            C.idCompetiteur
        ORDER BY
            Moyenne
        DESC;";

    $req = executerRequete($db, $req, array('id_concours' => 1));
    
    ?>
    <table>
        <tr>
            <th> Nom du Club</th>
            <th> Nom du Compétieur </th>
            <th> Prénom du Compétiteur</th>
            <th> Moyenne</th>
        </tr>
    <?php
    
    while($data = $req -> fetch()){
    ?>
        <tr>
            <td>  <?php echo ($data['Club']); ?> </td>
            <td> <?php echo ($data['Nom']); ?> </td>
            <td> <?php echo ($data['Prenom']); ?> </td>
            <td> <?php echo ($data['Moyenne']); ?> </td>
        </tr>

<?php } ?>
    </table>