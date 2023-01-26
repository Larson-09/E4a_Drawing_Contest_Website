SELECT
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
DESC
    