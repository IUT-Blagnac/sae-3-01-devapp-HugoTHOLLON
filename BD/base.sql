CREATE TABLE Client{
    idNumCli NUMBER(5),
    idPanier NUMBER(6),
    nom VARCHAR(25),
	prenom VARCHAR(15),
	adressePostale VARCHAR(50),
	email VARCHAR(20),
	telephone CHAR(10),
    CONSTRAINT pk_Client PRIMARY KEY (idNumCli),
    CONSTRAINT fk_Client_Panier
		FOREIGN KEY (idPanier) REFERENCES Client(idPanier)
}

--INSERT INTO Client VALUES (seq_id_client.NEXTVAL,'Gabin','Jean','3 rue t''as de beaux yeux tu sais, 31700 Blagnac','gabin@free.fr','0512345678','N',1);

CREATE TABLE Panier {
    idPanier NUMBER(6),
    idNumCli NUMBER(5),
    CONSTRAINT pk_Panier PRIMARY KEY (idPanier),
    CONSTRAINT fk_Panier_Client
		FOREIGN KEY (idNumCli) REFERENCES Panier(idNumCli)
}

CREATE TABLE Commande {
    idPanier NUMBER(6),
    idComposant NUMBER(6),
    CONSTRAINT fk_Commande_Panier
		FOREIGN KEY (idPanier) REFERENCES Panier(idPanier),
	CONSTRAINT fk_ Commande_Composant
		FOREIGN KEY (idComposant) REFERENCES Composant(idComposant)
}

CREATE TABLE Historique {
    
}

CREATE TABLE Composant {
    idComposant NUMBER(6),
    typeComposant VARCHAR(25),
    nomComposant VARCHAR(50),
    prix NUMBER(5),
    CONSTRAINT pk_comosant PRIMARY KEY (idComposant)
}

CREATE TABLE Administrateur {
    idNumAdmin NUMBER(5),
    nom VARCHAR(25),
	prenom VARCHAR(15),
	adressePostale VARCHAR(50),
	email VARCHAR(20),
	telephone CHAR(10),
    CONSTRAINT pk_Client PRIMARY KEY (idNumAdmin)
}

CREATE TABLE Employer {
    idNumEmployer NUMBER(5),
    nom VARCHAR(25),
	prenom VARCHAR(15),
	adressePostale VARCHAR(50),
	email VARCHAR(20),
	telephone CHAR(10),
    CONSTRAINT pk_Client PRIMARY KEY (idNumEmployer)
}