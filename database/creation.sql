drop table if exists Concours;
drop table if exists President;
drop table if exists Administrateur;
drop table if exists Directeur;
drop table if exists Evaluateur;
drop table if exists Evaluation;
drop table if exists Dessin;
drop table if exists Competiteur;
drop table if exists Utilisateur;

drop table if exists Club;
Create Table Club
(    
idClub    	     smallint NOT NULL AUTO_INCREMENT,
nom  		     Varchar (40) NOT NULL, 
adresse	         Varchar (120) NOT NULL,
numTelephone     char(10) NOT NULL,
ville			 Varchar (50) NOT NULL,
departement		 Varchar (60) NOT NULL,
region			 Varchar (80) NOT NULL,
PRIMARY KEY (idClub)
) ;

Create Table Utilisateur
(    
idUtilisateur   smallint NOT NULL AUTO_INCREMENT,
nom		         Varchar (40) NOT NULL, 
prenom	         Varchar (40) NOT NULL,
adresse     	 Varchar (120) NOT NULL,
login  			 Varchar (40) NOT NULL,
motDePasse       Varchar (40) NOT NULL,
dateInscription dateTime NOT NULL,

idClub    	     smallint NOT NULL,

PRIMARY KEY (idUtilisateur),
FOREIGN KEY (idClub) REFERENCES Club (idClub)
);

Create Table President
(
idUtilisateur   smallint NOT NULL,
FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur)   
);

Create Table Administrateur
(
idUtilisateur   smallint NOT NULL,
FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur)   
);

Create Table Directeur
(
idUtilisateur   smallint NOT NULL,
FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur)   

);

Create Table Evaluateur
(
idUtilisateur   smallint NOT NULL,
specialite  Varchar (40) NOT NULL,
FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur)   
);

Create Table Competiteur
(    
idUtilisateur   smallint NOT NULL,
datePremiereParticipation  dateTime NOT NULL,
FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur)   
);

Create Table Dessin
(    
idDessin  		 smallint NOT NULL,
commentaire      Varchar (250), 
classement	     Integer NOT NULL,
dateRemise     	 dateTime NOT NULL,
leDessin  		 char NOT NULL,
PRIMARY KEY (idDessin)
) ;

Create Table Evaluation
(    
dateEvaluation   dateTime NOT NULL,
note		     Integer NOT NULL, 
commentaire	     Varchar (250),
idDessin  		 smallint NOT NULL,
FOREIGN KEY (idDessin) REFERENCES Dessin (idDessin)   
) ;

Create Table Concours
(    
idConcours  	 smallint NOT NULL AUTO_INCREMENT,
theme		     Varchar (40) NOT NULL, 
dateDebut	     dateTime NOT NULL,
dateFin     	 dateTime NOT NULL,
etat  			 enum('pas commencé', 'en cours', 'attente', 'résultat', 'évalué'),
prime 			 Varchar (50) NOT NULL,

idPresident   smallint NOT NULL,

PRIMARY KEY (idConcours),
FOREIGN KEY (idPresident) REFERENCES Utilisateur (idUtilisateur)   

);