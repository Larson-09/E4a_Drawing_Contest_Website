drop table if exists Club;
drop table if exists Utilisateur;
drop table if exists Concours;
drop table if exists President;
drop table if exists Administrateur;
drop table if exists Directeur;
drop table if exists Evaluateur;
drop table if exists Evaluation;
drop table if exists Dessin;
drop table if exists Competiteur;

Create Table Club
(    
idClub    	     smallint NOT NULL auto_increment,
nom  		     Varchar (40) NOT NULL, 
adresse	         Varchar (120) NOT NULL,
numTelephone     Integer NOT NULL,
nombreAdherents  Integer NOT NULL,
ville			 Varchar (50) NOT NULL,
departement		 Integer NOT NULL,
region			 Varchar (80) NOT NULL,
PRIMARY KEY (idClub)
) ;

Create Table Utilisateur
(    
idUtilisateur   Varchar (40) NOT NULL,
nom		         Varchar (40) NOT NULL, 
prenom	         Varchar (40) NOT NULL,
adresse     	 Varchar (120) NOT NULL,
login  			 Varchar (40) NOT NULL,
motDePasse       Varchar (40) NOT NULL,

idClub    	     smallint NOT NULL auto_increment,

PRIMARY KEY (idUtilisateur)
FOREIGN KEY (idClub) REFERENCES Club (idClub)
) ;

Create Table Concours
(    
idConcours  	 Integer NOT NULL auto_increment,
theme		     Varchar (40) NOT NULL, 
dateDebut	     dateTime NOT NULL,
dateFin     	 dateTime NOT NULL,
etat  			 enum('pas commencé', 'en cours', 'attente', 'résultat', 'évalué'),

prime 			 Varchar (50) NOT NULL,

PRIMARY KEY (idConcours)
FOREIGN KEY (prime) REFERENCES President (prime)
) ;

Create Table President
(    
prime       	Varchar (50) NOT NULL,
) INHERITS (Utilisateur);

Create Table Administrateur
(
dateDebut dateTime NOT NULL,
) INHERITS (Utilisateur);

Create Table Directeur
(
dateDebut dateTime NOT NULL,
) INHERITS (Utilisateur);

Create Table Evaluateur
(
specialite  Varchar (40) NOT NULL,
) INHERITS (Utilisateur);

Create Table Evaluation
(    
dateEvaluation   dateTime NOT NULL,
note		     Integer NOT NULL, 
commentaire	     Varchar (250),
) ;

Create Table Dessin
(    
idDessin  		 Integer NOT NULL,
commentaire      Varchar (250), 
classement	     Integer NOT NULL,
dateRemise     	 dateTime NOT NULL,
leDessin  		 char NOT NULL,
PRIMARY KEY (idDessin)
) ;



Create Table Competiteur
(    
datePremiereParticipation  dateTime NOT NULL,
) INHERITS (Utilisateur);

