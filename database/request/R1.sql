SELECT DISTINCT
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
    U.idUtilisateur = C.idCompetiteur
    AND
    YEAR(Con.dateDebut) = 2021;