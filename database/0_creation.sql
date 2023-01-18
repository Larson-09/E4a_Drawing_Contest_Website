drop table if exists President;
drop table if exists Administrateur;
drop table if exists Directeur;
drop table if exists Evaluation;
drop table if exists Dessin;
drop table if exists Concours;
drop table if exists Competiteur;
drop table if exists Evaluateur;
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
idUtilisateur       smallint NOT NULL AUTO_INCREMENT,
nom		            Varchar (40) NOT NULL, 
prenom	            Varchar (40) NOT NULL,
dateNaissance       DATETIME NOT NULL,
adresse     	    Varchar (120) NOT NULL,
login  			    Varchar (40) NOT NULL,
motDePasse          Varchar (40) NOT NULL,
dateLicence         dateTime NOT NULL,

idClub    	     smallint NOT NULL,

PRIMARY KEY (idUtilisateur),
FOREIGN KEY (idClub) REFERENCES Club (idClub)
);

Create Table Administrateur
(
idAdministrateur    smallint NOT NULL,
dateDebut           DATETIME NOT NULL,
FOREIGN KEY (idAdministrateur) REFERENCES Utilisateur (idUtilisateur)   
);

Create Table Directeur
(
idDirecteur   smallint NOT NULL,
FOREIGN KEY (idDirecteur) REFERENCES Utilisateur (idUtilisateur)   
);

Create Table Evaluateur
(
idEvaluateur   smallint NOT NULL,
specialite  Varchar (40) NOT NULL,
FOREIGN KEY (idEvaluateur) REFERENCES Utilisateur (idUtilisateur)   
);

Create Table Competiteur
(    
idCompetiteur   smallint NOT NULL,
datePremiereParticipation  dateTime NOT NULL,
FOREIGN KEY (idCompetiteur) REFERENCES Utilisateur (idUtilisateur)   
);

Create Table Concours
(    
idConcours  	        smallint NOT NULL AUTO_INCREMENT,
theme		            Varchar (40) NOT NULL, 
descriptionConcours     VARCHAR(150),
dateDebut	            dateTime NOT NULL,
dateFin     	        dateTime NOT NULL,
etat  			        enum('pas commencé', 'en cours', 'attente', 'résultat', 'évalué'),
prime 			        Varchar (50) NOT NULL,

idPresident   smallint NOT NULL,

PRIMARY KEY (idConcours),
FOREIGN KEY (idPresident) REFERENCES Utilisateur (idUtilisateur)   
);

Create Table Dessin
(    
idDessin  		    smallint NOT NULL AUTO_INCREMENT,
dateRemise     	    dateTime NOT NULL,
cheminDessin  		char NOT NULL,
commentaire         VARCHAR (150),

idCompetiteur   smallint NOT NULL,
idConcours      smallint NOT NULL,


PRIMARY KEY (idDessin),
FOREIGN KEY (idConcours) REFERENCES Concours (idConcours),
FOREIGN KEY (idCompetiteur) REFERENCES Competiteur (idCompetiteur)
) ;

Create Table Evaluation
(
idEvaluation        smallint NOT NULL AUTO_INCREMENT,
dateEvaluation      dateTime NOT NULL,
note		        Integer NOT NULL, 
commentaire	        Varchar (250),

idDessin  		    smallint NOT NULL,
idEvaluateur        smallint NOT NULL,

PRIMARY KEY (idEvaluation),
FOREIGN KEY (idDessin) REFERENCES Dessin (idDessin),
FOREIGN KEY (idEvaluateur) REFERENCES Evaluateur (idEvaluateur)   

) ;

CREATE TABLE Participer
(
    idConcours      SMALLINT NOT NULL,
    idCompetiteur   SMALLINT NOT NULL
)

CREATE TABLE Juger
(
    idConcours      SMALLINT NOT NULL,
    idEvaluateur    SMALLINT NOT NULL
)
