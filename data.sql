
INSERT INTO recepti(ime_recepta, podrobno_recept, slika_recepta, id_uporabnika)
VALUES("Nalgesin", "Vzeti 2 krat zjutraj in 2krat zvecer", "recepti/slika/nalgesin", 1);


INSERT INTO obvestila(ime_obvestila, podrobno_obvestilo, cas_obvestila, id_uporabnika)
VALUES("Ortopedski pregled", "Ortopedski pregled pri dr. Anton Radolji", CURRENT_TIMESTAMP() , 1);
INSERT INTO obvestila(ime_obvestila, podrobno_obvestilo, cas_obvestila, id_uporabnika)
VALUES("Zobozdrastveni pregled", "Zobozdravstbeni pregled pri dr. Boris Sapac", CURRENT_TIMESTAMP() , 1);
INSERT INTO napotnice(ime_napotnice, podrobno_napotnia, cas_napotnice, id_uporabnika)
VALUES("Odvzem krvi", "Odvzem krvi v laboratoriju na Gosposvedski 40", CURRENT_TIMESTAMP() , 1);