SELECT
    e.note,
    e.dateEvaluation,
    d.idDessin,
    d.idCompetiteur,
    c.theme
    c.dateDebut
FROM
    Dessin d,
    Concours c,
    Evaluation e
WHERE e.dateDebut BETWEEN 2021-01-01 AND 2021-12-31