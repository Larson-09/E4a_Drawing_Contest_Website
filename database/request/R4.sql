WITH liste_concours AS (
    SELECT idConcours FROM Concours
),
participe_a_tous_concours as (
    SELECT idCompetiteur FROM Dessin
    WHERE idConcours IN (SELECT idConcours FROM liste_concours)
    GROUP BY idCompetiteur
    HAVING COUNT(DISTINCT idConcours) = (SELECT COUNT(*) FROM liste_concours)
)
SELECT idCompetiteur FROM participe_a_tous_concours;