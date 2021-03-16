 
 
Drop database if exists ppe;
Create database ppe;
use ppe;

CREATE TABLE users (
  id_u int(11) NOT NULL AUTO_INCREMENT,
  civ varchar(5) DEFAULT NULL, 
  firstName varchar(10) DEFAULT NULL,
  lastName varchar(10) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  mdp varchar(255) DEFAULT NULL,
  adresseU varchar(255) DEFAULT NULL,
  lvl int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY(id_u)
);

CREATE TABLE Proprietaire(
    IdP int(10) AUTO_INCREMENT,
    nomP VARCHAR(10),
    prenomP VARCHAR(10),
    adresseP VARCHAR(100),
    telP VARCHAR(10),
    mail VARCHAR(10),
    PRIMARY KEY(IdP)
);

CREATE TABLE Client(
    idClient int(10) AUTO_INCREMENT NOT NULL,
    nomClient VARCHAR(10),
    prenomClient VARCHAR(10),
    telClient VARCHAR(12),
    mailClient VARCHAR(10),
    PRIMARY KEY(idClient)
);

CREATE TABLE Region(
    idR int(10) AUTO_INCREMENT,
    NomR VARCHAR(50),
    PRIMARY KEY(idR)
);

CREATE TABLE categorie_hab(
    id_cat int(10) AUTO_INCREMENT,
    nom_cat VARCHAR(30),
    PRIMARY KEY(id_cat)
);

CREATE TABLE StationDeSki(
    IDSDS int(10) AUTO_INCREMENT,
    NomSDS VARCHAR(10),
    idR int(10) NOT NULL,
    PRIMARY KEY(IDSDS),
    FOREIGN KEY(idR) REFERENCES Region(idR)
);

CREATE TABLE habitation(
    numH int(10) AUTO_INCREMENT,
    adresseH VARCHAR(10),
    villeH VARCHAR(10),
    codepostalH VARCHAR(10),
    nbdechambre VARCHAR(10),
    superficieH VARCHAR(10),
    idR int(10) NOT NULL,
    id_cat int(10) NOT NULL,
    photoH VARCHAR(50) NOT NULL,
    PRIMARY KEY(numH),
    FOREIGN KEY(idR) REFERENCES Region(idR),
    FOREIGN KEY(id_cat) REFERENCES categorie_hab(id_cat)
);



CREATE TABLE contrat_proprietaire(
    IDContratP int(10) AUTO_INCREMENT,
    numH int(10) ,
    IdP int(10) NOT NULL,
    PRIMARY KEY(IDContratP),
    FOREIGN KEY(numH) REFERENCES habitation(numH),
    FOREIGN KEY(IdP) REFERENCES Proprietaire(IdP)
);

CREATE TABLE Reservation(
    idResa int(10) AUTO_INCREMENT ,
    DateD date NOT NULL,
    DateF date Not Null,
    numH int(10) ,
    idClient int(10) NOT NULL,
    PRIMARY KEY(idResa),
    FOREIGN KEY(numH) REFERENCES habitation(numH),
    FOREIGN KEY(idClient) REFERENCES Client(idClient)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);



CREATE TABLE Contrat(
    Id_Contrat int(10) AUTO_INCREMENT,
    idResa int(10) ,
    PRIMARY KEY(Id_Contrat), 
    FOREIGN KEY(idResa) REFERENCES Reservation(idResa)
);




    INSERT INTO `region` (`NomR`) VALUES
    ('Auvergne-Rhone-Alpes'),
    ('Bourgogne-Franche-Comte'),
    ('Bretagne'),
    ('Centre-Val de Loire'),
    ('Corse'),
    ('Grand Est'),
    ('Hauts-de-France'),
    ('Ile-de-France'),
    ('Normandie'),
    ('Nouvelle-Aquitaine'),
    ('Occitanie'),
    ('Pays de la Loire'),
    ('Provence-Alpes-Cote d''Azur');

INSERT INTO `categorie_hab` (`nom_cat`) VALUES
('maison'),
('appartement'),
('chalet');