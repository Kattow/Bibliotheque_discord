#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: User
#------------------------------------------------------------

CREATE TABLE User(
        id_user                   Int  Auto_increment  NOT NULL ,
        username                  Varchar (20) NOT NULL ,
        password                  Varchar (40) NOT NULL ,
        name                      Varchar (20) ,
        nickname                  Varchar (30) ,
        email                     Varchar (30) NOT NULL ,
        type_user                 Enum ("administrateur","lecteur","ecrivain","moderateur") NOT NULL ,
        id_roman_category_Project Int NOT NULL ,
        id_project1               Int NOT NULL ,
        PRIMARY KEY (id_user )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Project ooala
#------------------------------------------------------------

CREATE TABLE Project(
        id_roman_category Int NOT NULL ,
        id_project        Int  Auto_increment  NOT NULL ,
        id_user           Int  Auto_increment  NOT NULL ,
        project_name      Varchar (30) NOT NULL ,
        project_type      Enum ("Poeme","roman","nouvelle","prose","Fan_fiction") NOT NULL ,
        PRIMARY KEY (id_roman_category ,id_project )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: list_category_roman
#------------------------------------------------------------

CREATE TABLE list_category_roman(
        id_roman_category Int  Auto_increment  NOT NULL ,
        type_roman        Enum ("courtois","historique","epistolaire","memoire","amour","industriel","fiction","histoire_vraie","aventure","policier","espionnage","apocalypse","cyberpunk","steampunk","sci-fi","fantasy","fantastique","horreur","biographie","autobiographie","conte","epopee","nouvelle","reportage") NOT NULL ,
        PRIMARY KEY (id_roman_category )
)ENGINE=InnoDB;


ALTER TABLE User
	 ADD CONSTRAINT FK_User_Project
	 FOREIGN KEY (id_roman_category_Project,id_project1)
	 REFERENCES Project(id_roman_category,id_project);

ALTER TABLE Project
	 ADD CONSTRAINT FK_Project_list_category_roman
	 FOREIGN KEY (id_roman_category)
	 REFERENCES list_category_roman(id_roman_category);
