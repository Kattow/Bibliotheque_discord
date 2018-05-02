DROP DATABASE IF EXISTS biblio;
CREATE DATABASE biblio DEFAULT CHARACTER SET UTF8; 
USE biblio;

-- -----------------------------------------------------
-- Table  biblio . Utilisateur 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Utilisateur;
CREATE TABLE Utilisateur(
  id_user int AUTO_INCREMENT PRIMARY KEY NOT NULL,
  pseudo VARCHAR(40) NOT NULL,
  mot_de_passe VARCHAR(60) NOT NULL,
  nom VARCHAR(30) NULL,
  prenom VARCHAR(30) NULL,
  email VARCHAR(30) NOT NULL,
  type_utilisateur ENUM('administrateur', 'lecteur', 'ecrivain', 'moderateur') NOT NULL
);

-- -----------------------------------------------------
-- Table  biblio . Oeuvre 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Oeuvre;
CREATE TABLE Oeuvre(
  id_oeuvre int AUTO_INCREMENT NOT NULL,
  nom_oeuvre VARCHAR(30) NOT NULL,
  type_oeuvre ENUM('poeme', 'roman', 'nouvelle', 'prose', 'fan_fiction') NOT NULL,
  resume_oeuvre TEXT NOT NULL,
  contenu_oeuvre TEXT,
  id_user INT,
  PRIMARY KEY (id_oeuvre),
  CONSTRAINT fk_oeuvre_on_ecrivain
    FOREIGN KEY (id_user)
    REFERENCES biblio.Utilisateur (id_user)
);

-- -----------------------------------------------------
-- Table  biblio . Post_Forum 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Post_forum;
CREATE TABLE Post_forum(
  id_post int AUTO_INCREMENT NOT NULL,
  titre_post VARCHAR(40) NOT NULL,
  contenu_post TEXT NOT NULL,
  id_user INT,
  PRIMARY KEY (id_post),
  CONSTRAINT fk_post_on_user
    FOREIGN KEY (id_user)
    REFERENCES biblio.Utilisateur (id_user)
);

-- -----------------------------------------------------
-- Table  biblio . Recompense 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Recompense;
CREATE TABLE Recompense(
  id_recompense int AUTO_INCREMENT NOT NULL,
  nom_recompense VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_recompense)
);

-- -----------------------------------------------------
-- Table  biblio . Categorie 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Categorie;
CREATE TABLE Categorie(
  id_categorie int AUTO_INCREMENT NOT NULL,
  nom_categorie VARCHAR(40) NOT NULL,
  PRIMARY KEY (id_categorie)
);

-- -----------------------------------------------------
-- Table  biblio . Mot_cle 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Mot_cle;
    CREATE TABLE Mot_cle(
    id_cle int AUTO_INCREMENT NOT NULL,
    nom_cle VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_cle)
    );

-- -----------------------------------------------------
-- Table  biblio . Genre 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Genre;
CREATE TABLE Genre(
  id_genre int AUTO_INCREMENT NOT NULL,
  nom_genre VARCHAR(40) NOT NULL,
  PRIMARY KEY (id_genre)
);

-- -----------------------------------------------------
-- Table  biblio . Faq 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Faq;
CREATE TABLE Faq(
  id_faq int AUTO_INCREMENT NOT NULL,
  sujet_faq VARCHAR(30) NOT NULL,
  question_faq TEXT NOT NULL,
  reponse_faq TEXT NOT NULL,
  PRIMARY KEY (id_faq)
);

-- -----------------------------------------------------
-- Table  biblio . Oeuvre_Categorie 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Oeuvre_Categorie;
CREATE TABLE Oeuvre_Categorie(
  id_oeuvre INT,
  id_categorie INT,
  CONSTRAINT  fk_oeuvre_assos_categorie 
    FOREIGN KEY ( id_oeuvre )
    REFERENCES  biblio.Oeuvre  ( id_oeuvre ),
  CONSTRAINT  fk_categorie_on_oeuvre 
    FOREIGN KEY ( id_categorie )
    REFERENCES  biblio.Categorie  ( id_categorie ),
  PRIMARY KEY (id_oeuvre, id_categorie)
);

-- -----------------------------------------------------
-- Table  biblio . Oeuvre_Genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Oeuvre_Genre;
CREATE TABLE Oeuvre_Genre(
  id_oeuvre INT,
  id_genre INT,
  CONSTRAINT  fk_oeuvre_assos_genre 
    FOREIGN KEY ( id_oeuvre )
    REFERENCES  biblio . Oeuvre  ( id_oeuvre ),
  CONSTRAINT  fk_genre_on_oeuvre 
    FOREIGN KEY ( id_genre )
    REFERENCES  biblio . Genre  ( id_genre ),
  PRIMARY KEY (id_oeuvre, id_genre)
);

-- -----------------------------------------------------
-- Table  biblio . Oeuvre_Mot_Cle 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Oeuvre_Mot_Cle;
CREATE TABLE Oeuvre_Mot_Cle(
  id_oeuvre INT,
  id_cle INT,
  CONSTRAINT  fk_oeuvre_assos_cle 
    FOREIGN KEY ( id_oeuvre )
    REFERENCES  biblio . Oeuvre  ( id_oeuvre ),
  CONSTRAINT  fk_cle_on_oeuvre 
    FOREIGN KEY ( id_cle )
    REFERENCES  biblio . Mot_cle  ( id_cle ),
  PRIMARY KEY (id_oeuvre, id_cle)
);

-- -----------------------------------------------------
-- Table  biblio . Oeuvre_Recompense 
-- -----------------------------------------------------
DROP TABLE IF EXISTS Oeuvre_Recompense;
CREATE TABLE Oeuvre_Recompense(
  id_oeuvre INT,
  id_recompense INT,
  CONSTRAINT  fk_oeuvre_assos_recompense 
    FOREIGN KEY ( id_oeuvre )
    REFERENCES  biblio . Oeuvre  ( id_oeuvre ),
  CONSTRAINT  fk_recompense_on_oeuvre 
    FOREIGN KEY ( id_recompense )
    REFERENCES  biblio . Recompense  ( id_recompense ),
  PRIMARY KEY (id_oeuvre, id_recompense)
);

        