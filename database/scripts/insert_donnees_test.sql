-- -----------------------------------------------------
-- Jeu de données des utilisateurs
-- -----------------------------------------------------

INSERT INTO Utilisateur VALUES (
    default,
    'Kattow',
    'mdp',
    'Saboureau',
    'Dimitri',
    'AdresseKattow@gmail.com',
    'administrateur'
);

INSERT INTO Utilisateur VALUES (
    default,
    'Salvatore',
    'mdp',
    'JeSaisPas',
    'Romeo',
    'AdresseSalva@gmail.com',
    'administrateur'
);

INSERT INTO Utilisateur VALUES (
    default,
    'Linfay',
    'mdp',
    'Kapoue',
    'Claire',
    'AdresseLinfay@gmail.com',
    'ecrivain'
);

INSERT INTO Utilisateur VALUES (
    default,
    'Paladin',
    'mdp',
    'Random',
    'UnType',
    'AdressePala@gmail.com',
    'moderateur'
);

INSERT INTO Utilisateur VALUES (
    default,
    'Cmawesome',
    'mdp',
    'Pedophile',
    'Jean',
    'AdresseCma@gmail.com',
    'lecteur'
);

-- -----------------------------------------------------
-- Jeu de données des categories 
-- -----------------------------------------------------

INSERT INTO Categorie VALUES (
    default,
    'Romance'
);

INSERT INTO Categorie VALUES (
    default,
    'Sensation'
);

INSERT INTO Categorie VALUES (
    default,
    'Triste'
);

INSERT INTO Categorie VALUES (
    default,
    'Violent'
);

INSERT INTO Categorie VALUES (
    default,
    'Reflexion'
);

-- -----------------------------------------------------
-- Jeu de données des genres 
-- -----------------------------------------------------

INSERT INTO Genre VALUES (
    default,
    'Fantastique'
);

INSERT INTO Genre VALUES (
    default,
    'Sci-Fi'
);

INSERT INTO Genre VALUES (
    default,
    'Reel'
);

INSERT INTO Genre VALUES (
    default,
    'Philosophie'
);

INSERT INTO Genre VALUES (
    default,
    'Amour'
);

INSERT INTO Genre VALUES (
    default,
    'Historique'
);

-- -----------------------------------------------------
-- Jeu de données des mots_cles (Sera rempli par formulaire par l'écrivain lui-même.)
-- -----------------------------------------------------

INSERT INTO Mot_cle VALUES (
    default,
    'vengeance'
);

INSERT INTO Mot_cle VALUES (
    default,
    'magie'
);

INSERT INTO Mot_cle VALUES (
    default,
    'guerre'
);

INSERT INTO Mot_cle VALUES (
    default,
    'tracteur'
);

INSERT INTO Mot_cle VALUES (
    default,
    'Paix'
);

-- -----------------------------------------------------
-- Jeu de données des récompenses 
-- -----------------------------------------------------

INSERT INTO Recompense VALUES (
    default,
    'Ecrivain du Mois Avril 2018'
);

INSERT INTO Recompense VALUES (
    default,
    'Ecrivain du Mois Mai 2018'
);

-- -----------------------------------------------------
-- Jeu de données des oeuvres 
-- -----------------------------------------------------

INSERT INTO Oeuvre VALUES (
    default,
    'Livre de la Jungle',
    'roman',
    'Ceci est un resume qui doit passer en TEXT',
    'Ceci est le texte de mon oeuvre qualitative olala, cest super trop génial !!!',
    1
);

INSERT INTO Oeuvre_categorie VALUES (
    1,
    1
);

INSERT INTO Oeuvre_genre VALUES (
    1,
    1
);

INSERT INTO Oeuvre_genre VALUES (
    1,
    4
);

INSERT INTO Oeuvre_mot_cle VALUES (
    1,
    5
);

INSERT INTO Oeuvre_recompense VALUES (
    1,
    1
);

INSERT INTO Oeuvre_recompense VALUES (
    1,
    2
);

INSERT INTO Oeuvre VALUES (
    default,
    'Dédale',
    'Roman',
    'Je sais pas',
    'Pavé Cesar, que ceux qui nont pas lu te saluent',
    3
);

INSERT INTO Oeuvre_categorie VALUES (
    2,
    4
);

INSERT INTO Oeuvre_categorie VALUES (
    2,
    5
);

INSERT INTO Oeuvre_genre VALUES (
    2,
    1
);

INSERT INTO Oeuvre_genre VALUES (
    2,
    2
);

INSERT INTO Oeuvre_mot_cle VALUES (
    2,
    1
);

INSERT INTO Oeuvre_recompense VALUES (
    2,
    1
);

INSERT INTO Oeuvre VALUES (
    default,
    'Oksa Pollock',
    'Nouvelle',
    'La gamine qui a des pouvoirs',
    'Boum je lance du feu je suis trop forte mdrrr',
    4
);

INSERT INTO Oeuvre_categorie VALUES (
    3,
    2
);

INSERT INTO Oeuvre_genre VALUES (
    3,
    1
);

INSERT INTO Oeuvre_genre VALUES (
    3,
    6
);

INSERT INTO Oeuvre_mot_cle VALUES (
    3,
    3
);

INSERT INTO Oeuvre VALUES (
    default,
    'Je mange des pâtes',
    'poeme',
    'je sai pa ekrir',
    'Mais jessèy kan même',
    2
);

INSERT INTO Oeuvre_categorie VALUES (
    4,
    3
);

INSERT INTO Oeuvre_categorie VALUES (
    4,
    4
);

INSERT INTO Oeuvre_genre VALUES (
    4,
    3
);

INSERT INTO Oeuvre_mot_cle VALUES (
    4,
    3
);

INSERT INTO Oeuvre_mot_cle VALUES (
    4,
    4
);

INSERT INTO Oeuvre_recompense VALUES (
    4,
    2
);

-- -----------------------------------------------------
-- Jeu de données des FAQs 
-- -----------------------------------------------------

INSERT INTO Faq VALUES (
    default,
    'Comment ça marche ?',
    'Comment je fais pour envoyer un message ?',
    'Tu écris et clique sur envoyer'
);

INSERT INTO Faq VALUES (
    default,
    'Ecrire livre',
    'Comment faire pour poster mon oeuvre ?',
    'Je sais pas, le site marche pas encore !'
);

-- -----------------------------------------------------
-- Jeu de données des Posts_Forum 
-- -----------------------------------------------------

INSERT INTO Post_forum VALUES (
    default,
    'Jai pas d idee',
    'Faut trouver un truc là!',
    1
);

INSERT INTO Post_forum VALUES (
    default,
    'Sujet inutile',
    'Je parle de tout et de rien',
    2
);
