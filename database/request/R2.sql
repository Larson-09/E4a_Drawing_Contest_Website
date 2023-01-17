SELECT
    D.idDessin,
    E.note,
    U.nom,
    Con.descriptionConcours,
    Con.theme
FROM
    Utilisateur U,
    Evaluation E,
    Concours Con,
    Dessin D
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
    )
)
ORDER BY E.note;