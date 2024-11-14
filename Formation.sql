CREATE TABLE Etudiant(
   NumEtu VARCHAR(10),
   nomEtu VARCHAR(50),
   prenomEtu VARCHAR(50),
   datenaissance DATE,
   telEtu INT,
   niveauEtu VARCHAR(40),
   id_ville VARCHAR(5),
   PRIMARY KEY(NumEtu),
   FOREIGN KEY(id_ville) REFERENCES Ville(id_ville)
);

CREATE TABLE Formation(
   codeForm VARCHAR(5),
   nomSess VARCHAR(50),
   dure INT,
   prixForm FLOAT,
   PRIMARY KEY(codeForm)
);

CREATE TABLE Specialite(
   codeSpec VARCHAR(5),
   nomSpec VARCHAR(50),
   descSpec TEXT,
   PRIMARY KEY(codeSpec)
);

CREATE TABLE Ville(
   id_ville VARCHAR(5),
   nomVille VARCHAR(20),
   quartier VARCHAR(20),
   PRIMARY KEY(id_ville)
);

CREATE TABLE Session(
   codeSess VARCHAR(5),
   nomSess VARCHAR(50),
   dateDebut DATE,
   dateFin DATE,
   codeForm VARCHAR(5),
   PRIMARY KEY(codeSess),
   FOREIGN KEY(codeForm) REFERENCES Formation(codeForm)
);

ALTER TABLE Session 
ADD CONSTRAINT Verify_Date
CHECK (dateFin > dateDebut);

ALTER TABLE Specialite 
ADD active VARCHAR(25);