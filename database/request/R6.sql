SELECT(
      SELECT COUNT(*)
	  FROM   Dessin
	  ) AS nombre_Dessins,
      u.nom,
      u.prenom
FROM Dessin d
JOIN Competiteur c ON
	d.idCompetiteur = c.idCompetiteur
JOIN Utilisateur u ON
	c.idCompetiteur = u.idUtilisateur
	