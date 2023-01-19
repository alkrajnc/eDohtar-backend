CREATE TABLE IF NOT EXISTS uporabnik
(
	id_uporabnika INT PRIMARY KEY AUTO_INCREMENT,
	ime VARCHAR(40) NOT NULL UNIQUE,
	geslo VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS recepti
(
	id_recepta INT PRIMARY KEY AUTO_INCREMENT,
	ime_recepta VARCHAR(30) NOT NULL,
	podrobno_recept VARCHAR(255) NOT NULL,
	slika_recepta VARCHAR(255) NOT NULL,
	id_uporabnika INT,
	CONSTRAINT FK_uporabnik FOREIGN KEY (id_uporabnika)
   REFERENCES uporabnik(id_uporabnika)
);
CREATE TABLE IF NOT EXISTS obvestila
(
	id_obvestila INT PRIMARY KEY AUTO_INCREMENT,
	ime_obvestila VARCHAR(30) NOT NULL,
	podrobno_obvestilo VARCHAR(255) NOT NULL,
	cas_obvestila TIMESTAMP NOT NULL,
	id_uporabnika INT,
	CONSTRAINT FK_obvestilo FOREIGN KEY (id_uporabnika)
    REFERENCES uporabnik(id_uporabnika)
);

CREATE TABLE IF NOT EXISTS napotnice
(
	id_napotnice INT PRIMARY KEY AUTO_INCREMENT,
	ime_napotnice VARCHAR(30) NOT NULL,
	podrobno_napotnia VARCHAR(255) NOT NULL,
	cas_napotnice TIMESTAMP NOT NULL,
	id_uporabnika INT,
	CONSTRAINT FK_napotnica FOREIGN KEY (id_uporabnika)
    REFERENCES uporabnik(id_uporabnika)
);





--INSERT INTO uporabnik(ime, geslo) VALUES("user", "geslo");
--INSERT INTO recepti(ime_recepta, podrobno_recept, slika_recepta, id_uporabnika)
--VALUES("Lekadol", "Vzet ko glava boli", "recepti/slika/lekadol", 1);
