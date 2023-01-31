SELECT
    d.idDessin,
    e.note,
    u.nom,
    c.descriptionConcours,
    c.theme
FROM
    Dessin d
JOIN Evaluation e ON
    d.idDessin = e.idDessin
JOIN Utilisateur u ON
    d.idCompetiteur = u.idUtilisateur
JOIN Concours c ON
    d.idConcours = c.idConcours
WHERE YEAR(c.dateDebut) = 2021
ORDER BY e.note DESC