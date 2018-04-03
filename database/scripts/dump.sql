#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: User
#------------------------------------------------------------

CREATE TABLE User(
        id_user    Int  Auto_increment  NOT NULL ,
        username   Varchar (20) NOT NULL ,
        password   Varchar (40) NOT NULL ,
        name       Varchar (20) ,
        nickname   Varchar (30) ,
        email      Varchar (30) NOT NULL ,
        type_user  Enum ("administrateur","lecteur","ecrivain","moderateur") NOT NULL ,
        id_project Int NOT NULL ,
        PRIMARY KEY (id_user )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Project
#------------------------------------------------------------

CREATE TABLE Project(
        id_project   Int  Auto_increment  NOT NULL ,
        id_user      Int  Auto_increment  NOT NULL ,
        project_name Varchar (30) NOT NULL ,
        PRIMARY KEY (id_project )
)ENGINE=InnoDB;


ALTER TABLE User
     ADD CONSTRAINT FK_User_Project
     FOREIGN KEY (id_project)
     REFERENCES Project(id_project);