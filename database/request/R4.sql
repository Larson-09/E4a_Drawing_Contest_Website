SELECT
    u.Nom,
    u.Prenom,
    DATE_FORMAT(
        FROM_DAYS(
            DATEDIFF(NOW(), u.dateNaissance)),
            '%Y'
        ) + 0 AS age
    FROM
        Utilisateur u
    WHERE NOT
        EXISTS(
        SELECT
            1
        FROM
            Concours co,
        	Competiteur c
        WHERE NOT
            EXISTS(
            SELECT
                1
            FROM
                Dessin d
            WHERE
                d.idCompetiteur = c.idCompetiteur AND d.idConcours = co.idConcours
        )
    );