# Projet_Postgres

Mon Projet porte sur la modélisation d'un Système d'information  d'une Socété de Cinéma. Pour cette société, un ou plusieur acteurs ont un role dans un ou plusieurs film. Un film a 0 ou plusieurs réalisateurs.Dans une seance, 0 ou plusieurs films peuvent etre projectés. Une seance peut avoir  plusieurs ou pas de catégorie de seance.Pour plusieurs catégorie de seance ou non on peut avoir plusieurs tafix (prix) ou ne pas avoir. Pour plusieur seances ou pas il peut y avoir de place comme ne pas y avoir.une place a 0 ou plusieur catégorie de place.

cette modélisation  passe d'abord par trois (3) aproches selon Mérise: 
il y'a le modèle conceptuel de données avec la représentation des données sous la forme graphique dont on resort les entités qui sont les acteurs (matériel ou immatériel) et les associations réliant les entités.
le modèle logique de donées avec la traduction de entités en tables tout en respectant les règles de passage du MCD au MLD.
apres celà c'est la traduction du MLD au MPD qui conduit à la base de donnée.

Ma base de donnée s'appelle cinema_db: j'ai crée la base de donnée avec la commande basique:  CREATE DATABASE cinema_db;
puis j'ai procédé à la création de mes tables qui sont : Acteurs, catégorie_place, categorie_seance,film, place, realisateurs,reservation, role,seance et tarif.

Nous avons collecté des données libre de la plateforme Mockaroo pour dans chaque table. on a remarqué que pgAdmin n'aime pas les rédondances des données.
 ####################
 
 voici comment les tables ont été créee: 
 CREATE TABLE Acteurs (
numero_acteur serial PRIMARY KEY NOT NULL,
nom_acteur VARCHAR (255) NOT NULL,
prenom_acteur VARCHAR (255) NOT NULL,
nation_acteur VARCHAR (255) NOT NULL,
date_de_naissance Date  NOT NULL
);


CREATE TABLE Realisateur (
numero_realisateur serial PRIMARY KEY NOT NULL,
nom_realisateur VARCHAR (255) NOT NULL,
prenom_realisateur VARCHAR (255) NOT NULL,
nation_realisateur VARCHAR (255) NOT NULL
);

CREATE TABLE Categorie_place (
categorie_de_la_place VARCHAR (255) PRIMARY KEY NOT NULL,
type_place VARCHAR (255) NOT NULL
);
CREATE TABLE Categorie_seance (
categorie_de_la_seance VARCHAR (255) PRIMARY KEY NOT NULL,
type_seance VARCHAR (255) NOT NULL
);

CREATE TABLE Place (
numero_place serial PRIMARY KEY NOT NULL,
categorie_de_la_place VARCHAR (255) NOT NULL,
FOREIGN KEY (categorie_de_la_place) REFERENCES Categorie_place(categorie_de_la_place)
);


CREATE TABLE Film (
numero_film serial PRIMARY KEY NOT NULL,
titre_film VARCHAR (255) NOT NULL,
date_de_sortie VARCHAR (255) NOT NULL,
duree VARCHAR (255) NOT NULL,
genre VARCHAR (255) NOT NULL,
numero_realisateur serial NOT NULL,
FOREIGN KEY (numero_realisateur) REFERENCES Realisateur (numero_realisateur)
);

CREATE TABLE Role (
nom_du_role VARCHAR PRIMARY KEY NOT NULL,
numero_acteur serial NOT NULL,
numero_film serial NOT NULL,
FOREIGN KEY (numero_acteur) REFERENCES Acteurs (numero_acteur),
FOREIGN KEY (numero_film) REFERENCES Film (numero_film)
);


CREATE TABLE Seance (
numero_seance  serial PRIMARY KEY  NOT NULL,
date_de_la_seance DATE  NOT NULL,
horaire  TIMESTAMP NOT NULL,
numero_film  serial NOT NULL,
categorie_de_la_seance VARCHAR (255) NOT NULL,
FOREIGN KEY (categorie_de_la_seance) REFERENCES Categorie_seance (categorie_de_la_seance),
FOREIGN KEY (numero_film) REFERENCES Film (numero_film)
);

CREATE TABLE Reservation (
nom_spectateur VARCHAR (255) PRIMARY KEY NOT NULL,
numero_seance serial NOT NULL,
numero_place serial NOT NULL,
FOREIGN KEY (numero_seance) REFERENCES Seance (numero_seance),
FOREIGN KEY (numero_place) REFERENCES Place (numero_place)
);



CREATE TABLE Tarif (
prix FLOAT (10) PRIMARY KEY NOT NULL,
categorie_de_la_place VARCHAR (255) NOT NULL,
categorie_de_la_seance VARCHAR (255) NOT NULL,
FOREIGN KEY (categorie_de_la_place) REFERENCES Categorie_place(categorie_de_la_place),	
FOREIGN KEY (categorie_de_la_seance) REFERENCES Categorie_seance (categorie_de_la_seance)
);
