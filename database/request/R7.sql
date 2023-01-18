SELECT DISTINCT
    Conc.idConcours,
    Conc.dateDebut,
    Conc.descriptionConcours,
    UC.nom as NomCompetiteur,
    D.idDessin,
    D.commentaire,
    E.note,
    E.commentaire,
    UEE.nom as NomEvaluateur
FROM
	Club Clu,
    Utilisateur U,
    Competiteur C,
    Concours Conc
WHERE
    