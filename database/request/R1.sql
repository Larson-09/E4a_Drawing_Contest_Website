SELECT
    U.nom,
    DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),U.dateNaissance)), '%Y') + 0 AS age,
    U.adresse,
    Con.dateDebut,
    Con.dateFin,
    Con.descriptionConcours,
    Clu.departement,
    Clu.region
FROM
    Utilisateur U,
    Concours Con,
    Club Clu
WHERE
    (
    SELECT
        C.idCompetiteur
    FROM
        Competiteur C
    WHERE
        U.idUtilisateur = C.idCompetiteur AND(
        SELECT
            D.idCompetiteur
        FROM
            Dessin D
        WHERE
            C.idCompetiteur = D.idCompetiteur AND(
            SELECT
                Conc.idConcours
            FROM
                Concours Conc
            WHERE
                D.idConcours = Conc.idConcours AND YEAR(Conc.dateDebut) = 2021
        )
    ) AND(
    SELECT
        Club.idClub
    FROM
        Club
    WHERE
        U.idClub = Club.idClub
)
);