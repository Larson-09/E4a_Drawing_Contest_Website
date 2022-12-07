/* Les Stations..........*/

INSERT INTO Station(nomsta, altitude, region) VALUES ('Alpe D''Huez',1860,'Rhône-Alpes');

INSERT INTO Station (nomsta, altitude, region) VALUES ('Chabanon',1500,'Provence-Alpes-Côtes-D''azure');

/* Les Hôtels..........*/
INSERT INTO Hotel(nomhot, numsta, categorie) VALUES ('Au Chamois d''OR',1, 4);

INSERT INTO Hotel(nomhot, numsta, categorie) VALUES ('Le castillan',1,3);

INSERT INTO Hotel(nomhot, numsta, categorie) VALUES ('Le Blanchon',2,2);

INSERT INTO Hotel(nomhot, numsta, categorie) VALUES ('Le relais de la Forge',2,2);


/* Les Chambre..........*/

INSERT INTO Chambre(numhot, numch, nblits) VALUES (1,10, 1);

INSERT INTO Chambre(numhot, numch, nblits) VALUES (1,20, 2);

INSERT INTO Chambre(numhot, numch, nblits) VALUES (1,30, 4);


INSERT INTO Chambre(numhot, numch, nblits) VALUES (2,10, 1);

INSERT INTO Chambre(numhot, numch, nblits) VALUES (2,20, 2);

INSERT INTO Chambre(numhot, numch, nblits) VALUES (2,30, 4);

INSERT INTO Chambre(numhot, numch, nblits) VALUES (3,10, 1);

INSERT INTO Chambre(numhot, numch, nblits) VALUES (3,20, 2);

INSERT INTO Chambre(numhot, numch, nblits) VALUES (3,30, 4);

INSERT INTO Chambre(numhot, numch, nblits) VALUES (4,10, 1);

INSERT INTO Chambre(numhot, numch, nblits) VALUES (4,20, 2);

INSERT INTO Chambre(numhot, numch, nblits) VALUES (4,30, 4);

/* Les clients..........*/
INSERT INTO Client(nomcli, adrcli, telcli) VALUES ('Luc Durand','18 Av Saint Priest, Montpellier', '0661448349');

INSERT INTO Client(nomcli, adrcli, telcli) VALUES ('Patrice Dehais','4 rue de Tunis, Marseille', '0668421329');

INSERT INTO Client(nomcli, adrcli, telcli) VALUES ('Valentin Rey','10 place de l''europe, Angers', '0241866952');

INSERT INTO Client(nomcli, adrcli, telcli) VALUES ('David Bignan','5 impasse croix blanche, Nantes', '0516223899');


/* Les Réservations..........*/
INSERT INTO Reservation(numcli, numhot, numch,datedeb,datefin, nbpers)VALUES (1,1,20,'2016-12-01','2017-01-10',4);
INSERT INTO Reservation(numcli, numhot, numch,datedeb,datefin, nbpers)VALUES (1,3,30,'2016-03-01','2016-03-24',8);

INSERT INTO Reservation(numcli, numhot, numch,datedeb,datefin, nbpers)VALUES (2,2,10,'2016-12-10','2016-12-31',2);
INSERT INTO Reservation(numcli, numhot, numch,datedeb,datefin, nbpers)VALUES (2,4,20,'2016-12-20','2017-01-30',4);

INSERT INTO Reservation(numcli, numhot, numch,datedeb,datefin, nbpers)VALUES (3,1,10,'2016-11-10','2016-11-30',4);
INSERT INTO Reservation(numcli, numhot, numch,datedeb,datefin, nbpers)VALUES (3,3,20,'2016-12-24','2017-01-25',6);

INSERT INTO Reservation(numcli, numhot, numch,datedeb,datefin, nbpers)VALUES (4,2,20,'2017-01-10','2017-02-15',6);
INSERT INTO Reservation(numcli, numhot, numch,datedeb,datefin, nbpers)VALUES (4,4,30,'2017-02-01','2017-03-04',8);









