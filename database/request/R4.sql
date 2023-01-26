SELECT
    u.idUtilisateur,
    u.Nom,
    u.Prenom
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
)