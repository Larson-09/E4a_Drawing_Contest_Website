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
    Concours Conc,
    Competiteur C,
    Dessin D,
    Evaluation E,
    Utilisateur UC,
    Utilisateur UEE,
    Evaluateur UE
WHERE
    D.idDessin = E.idEvaluation
    AND
    D.idConcours = Conc.idConcours
    AND
    D.idCompetiteur = C.idCompetiteur
    AND
    C.idCompetiteur = UC.idUtilisateur
    AND
    E.idEvaluateur = UE.idEvaluateur
    AND
    UE.idEvaluateur =  UEE.idUtilisateur;