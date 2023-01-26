SELECT DISTINCT Cl.nom AS Club, U.nom AS Nom, U.prenom AS Prenom, AVG(Ev.note) AS Moyenne

FROM Club Cl, Utilisateur U, Competiteur C, Dessin D, Evaluation Ev, Concours Conc

WHERE
	Conc.idConcours = 1 AND
	Cl.idClub = U.idClub AND
    U.idUtilisateur = C.idCompetiteur AND 
    C.idCompetiteur = D.idCompetiteur AND
    D.idConcours = Conc.idConcours AND
    D.idDessin = Ev.idDessin

GROUP BY C.idCompetiteur
ORDER BY Moyenne DESC ;