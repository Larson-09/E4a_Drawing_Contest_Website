--Question 4 : Interrogations d’une BD relationnelle (Introduction)
--BD touristique
--Avant de répondre aux questions ci-dessous en langage SQL, veuillez recréer votre base de
--données en important les fichiers de création et de remplissage de la BD.
--Proposer des requêtes SQL pour les questions suivantes :




--1) Lister les noms et les catégories de tous les hôtels



--2) Lister les noms, les adresses et les numéros de téléphones de tous les clients dans la base.

Select nomcli, adrcli, telcli From Client;

--3) Lister les noms des hôtels, les noms des stations où se trouvent ces hôtels, l’altitude et la région
--de chaque station.

Select nomhot, nomsta, altitude, region From Hotel, Station Where Hotel.numsta=Station.numsta;

--4) Pour chaque réservation, afficher le nom du client ayant effectué la réservation, le nom de
--l’hôtel concerné par la réservation, les dates de début et de fin de la réservation et le nombre de
--personne.

Select nomcli, nomhot, datedeb, datefin From Client, Hotel, Reservation
Where Reservation.numcli = Client.numcli
And Reservation.numhot = Hotel.numhot;

--5) Afficher les noms des hôtels et de leurs stations ainsi que la catégorie de l’hôtel par ordre
--décroissant sur la catégorie.

Select 

--6) Afficher les numéros de toutes les chambres avec pour chaque chambre le nombre de lits, le
--nom de l’hôtel et le nom de la station.
--7)Afficherlesaltitudesminmaxetleursmoyenne