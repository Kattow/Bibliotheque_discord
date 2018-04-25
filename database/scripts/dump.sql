-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema biblio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema biblio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `biblio` DEFAULT CHARACTER SET latin1 ;
USE `biblio` ;

-- -----------------------------------------------------
-- Table `biblio`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblio`.`User` (
  `id_user` INT GENERATED ALWAYS AS () VIRTUAL,
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NULL,
  `nickname` VARCHAR(45) NULL,
  `email` VARCHAR(45) NOT NULL,
  `type_user` ENUM('administrateur', 'lecteur', 'ecrivain', 'moderateur') NOT NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblio`.`list_category_roman`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblio`.`list_category_roman` (
  `id_roman_category` INT NOT NULL AUTO_INCREMENT,
  `type_roman` ENUM('courtois', 'historique', 'epistolaire', 'memoire', 'amour', 'industriel', 'fiction', 'histoire_vraie', 'aventure', 'policier', 'espionnage', 'apocalypse', 'cyberpunk', 'steampunk', 'sci-fi', 'fantasy', 'fantastique', 'horreur', 'biographie', 'autobiographie', 'conte', 'epopee', 'nouvelle', 'reportage') NOT NULL,
  PRIMARY KEY (`id_roman_category`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblio`.`Project`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblio`.`Project` (
  `id_project` INT NOT NULL AUTO_INCREMENT,
  `project_name` VARCHAR(45) NOT NULL,
  `project_type` ENUM('Poeme', 'roman', 'nouvelle', 'prose', 'Fan_fiction') NULL,
  `list_category_roman_id_roman_category` INT NOT NULL,
  PRIMARY KEY (`id_project`, `list_category_roman_id_roman_category`),
  INDEX `fk_Project_list_category_roman1_idx` (`list_category_roman_id_roman_category` ASC),
  CONSTRAINT `fk_Project_list_category_roman1`
    FOREIGN KEY (`list_category_roman_id_roman_category`)
    REFERENCES `biblio`.`list_category_roman` (`id_roman_category`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblio`.`User_has_Project`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblio`.`User_has_Project` (
  `User_id_user` INT NOT NULL,
  `Project_id_project` INT NOT NULL,
  PRIMARY KEY (`User_id_user`, `Project_id_project`),
  INDEX `fk_User_has_Project_Project1_idx` (`Project_id_project` ASC),
  INDEX `fk_User_has_Project_User_idx` (`User_id_user` ASC),
  CONSTRAINT `fk_User_has_Project_User`
    FOREIGN KEY (`User_id_user`)
    REFERENCES `biblio`.`User` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_has_Project_Project1`
    FOREIGN KEY (`Project_id_project`)
    REFERENCES `biblio`.`Project` (`id_project`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;




-- -----------------------------------------------------
-- Table `biblio`.`Utilisateur`
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
-- Table `biblio`.`Oeuvre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Oeuvre;
CREATE TABLE Oeuvre(
  id_oeuvre int AUTO_INCREMENT NOT NULL,
  nom_oeuvre VARCHAR(30) NOT NULL,
  type_oeuvre ENUM('poeme', 'roman', 'nouvelle', 'prose', 'fan_fiction') NOT NULL,
  resume_oeuvre VARCHAR(40) NOT NULL,
  contenu_oeuvre TEXT,
  id_user INT,
  CONSTRAINT `fk_oeuvre_on_ecrivain`
    FOREIGN KEY (`id_user`)
    REFERENCES `biblio`.`Utilisateur` (`id_user`),
  PRIMARY KEY id_oeuvre
);

-- -----------------------------------------------------
-- Table `biblio`.`Post_Forum`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Post_forum;
CREATE TABLE Post_forum(
  id_post int AUTO_INCREMENT NOT NULL,
  titre_post VARCHAR(40) NOT NULL,
  contenu_post TEXT NOT NULL,
  id_user INT,
  PRIMARY KEY id_post 
);

-- -----------------------------------------------------
-- Table `biblio`.`Recompense`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Recompense;
CREATE TABLE Recompense(
  id_recompense int AUTO_INCREMENT NOT NULL,
  nom_recompense VARCHAR(30) NOT NULL,
  PRIMARY KEY id_recompense
);

-- -----------------------------------------------------
-- Table `biblio`.`Categorie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Categorie;
CREATE TABLE Categorie(
  id_categorie int AUTO_INCREMENT NOT NULL,
  nom_categorie VARCHAR(40) NOT NULL,
  PRIMARY KEY id_categorie
);

-- -----------------------------------------------------
-- Table `biblio`.`Mot_cle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Mot_cle;
CREATE TABLE Mot_cle(
  id_cle int AUTO_INCREMENT NOT NULL,
  nom_cle VARCHAR(30) NOT NULL,
  PRIMARY KEY id_cle
);

-- -----------------------------------------------------
-- Table `biblio`.`Genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Genre;
CREATE TABLE Genre(
  id_genre int AUTO_INCREMENT NOT NULL,
  nom_genre VARCHAR(40) NOT NULL,
  PRIMARY KEY id_genre
);

-- -----------------------------------------------------
-- Table `biblio`.`Faq`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Faq;
CREATE TABLE Faq(
  id_faq int AUTO_INCREMENT NOT NULL,
  sujet_faq VARCHAR(30) NOT NULL,
  question_faq TEXT NOT NULL,
  reponse_faq TEXT NOT NULL,
  PRIMARY KEY id_faq
);

-- -----------------------------------------------------
-- Table `biblio`.`Oeuvre_Categorie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Oeuvre_Categorie;
CREATE TABLE Oeuvre_Categorie(
  id_oeuvre INT,
  id_categorie INT;
  CONSTRAINT `fk_oeuvre_assos_categorie`
    FOREIGN KEY (`id_oeuvre`)
    REFERENCES `biblio`.`Oeuvre` (`id_oeuvre`),
  CONSTRAINT `fk_categorie_on_oeuvre`
    FOREIGN KEY (`id_categorie`)
    REFERENCES `biblio`.`Categorie` (`id_categorie`),
  PRIMARY KEY (id_oeuvre, id_categorie)
);

-- -----------------------------------------------------
-- Table `biblio`.`Oeuvre_Genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Oeuvre_Genre;
CREATE TABLE Oeuvre_Genre(
  id_oeuvre INT,
  id_genre INT,
  CONSTRAINT `fk_oeuvre_assos_genre`
    FOREIGN KEY (`id_oeuvre`)
    REFERENCES `biblio`.`Oeuvre` (`id_oeuvre`),
  CONSTRAINT `fk_genre_on_oeuvre`
    FOREIGN KEY (`id_genre`)
    REFERENCES `biblio`.`Genre` (`id_genre`),
  PRIMARY KEY (id_oeuvre, id_genre)
);

-- -----------------------------------------------------
-- Table `biblio`.`Oeuvre_Mot_Cle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Oeuvre_Mot_Cle;
CREATE TABLE Oeuvre_Mot_Cle(
  id_oeuvre INT,
  id_cle INT,
  CONSTRAINT `fk_oeuvre_assos_cle`
    FOREIGN KEY (`id_oeuvre`)
    REFERENCES `biblio`.`Oeuvre` (`id_oeuvre`),
  CONSTRAINT `fk_cle_on_oeuvre`
    FOREIGN KEY (`id_cle`)
    REFERENCES `biblio`.`Mot_cle` (`id_cle`),
  PRIMARY KEY (id_oeuvre, id_cle)
);

-- -----------------------------------------------------
-- Table `biblio`.`Oeuvre_Recompense`
-- -----------------------------------------------------
DROP TABLE IF EXISTS Oeuvre_Recompense;
CREATE TABLE Oeuvre_Recompense(
  id_oeuvre INT,
  id_recompense INT,
  CONSTRAINT `fk_oeuvre_assos_recompense`
    FOREIGN KEY (`id_oeuvre`)
    REFERENCES `biblio`.`Oeuvre` (`id_oeuvre`),
  CONSTRAINT `fk_recompense_on_oeuvre`
    FOREIGN KEY (`id_recompense`)
    REFERENCES `biblio`.`Recompense` (`id_recompense`),
  PRIMARY KEY (id_oeuvre, id_recompense)
);

