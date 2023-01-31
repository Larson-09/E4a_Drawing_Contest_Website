<link rel="stylesheet" href="../../front_ressources/styleRequest.css">

<?php
    # require_once('../../libs/db_manager.php');
    #$pdo = new DbManager();

    require_once('../../libs/db_connect.php');
    $db = db_connect();

    $req = "SELECT DISTINCT
                U.nom,
                DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),U.dateNaissance)), '%Y') + 0 AS age,
                U.adresse,
                Con.idConcours,
                Con.dateDebut,
                Con.dateFin,
                Con.descriptionConcours,
                Clu.idClub,
                Clu.departement,
                Clu.region
            FROM
                Utilisateur U,
                Concours Con,
                Club Clu,
                Competiteur C,
                Dessin D
            WHERE
                D.idConcours = Con.idConcours
                AND
                D.idCompetiteur = C.idCompetiteur
                AND
                U.idClub = Clu.idClub
                AND 
                U.idUtilisateur = C.idCompetiteur;";

    $req = executerRequete($db, $req);
    ?>
    <h1></h1>
    <table>
        <tr>
            <th> Nom du compétiteur </th>
            <th> Age </th>
            <th> Adresse de l'utilisateur </th>
            <th> ID du concours </th>
            <th> Date du début du concours </th>
            <th> Date de fin du concours </th>
            <th> Description du concours </th>
            <th> ID du club </th>
            <th> Département du club </th>
            <th> Région du club </th>
        </tr>

    <?php
    while($data = $req -> fetch()){
    ?>
        <tr>
            <td> <?php echo ($data['nom']); ?> </td>
            <td> <?php echo ($data['age']); ?> </td>
            <td> <?php echo ($data['adresse']); ?> </td>
            <td> <?php echo ($data['idConcours']); ?> </td>
            <td> <?php echo ($data['dateDebut']); ?> </td>
            <td> <?php echo ($data['dateFin']); ?> </td>
            <td> <?php echo ($data['descriptionConcours']); ?> </td>
            <td> <?php echo ($data['idClub']); ?> </td>
            <td> <?php echo ($data['departement']); ?> </td>
            <td> <?php echo ($data['region']); ?> </td>
        </tr>
    
<?php } ?>
    </table>