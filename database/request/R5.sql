SELECT
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
LIMIT 1;