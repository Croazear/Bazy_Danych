-- CREATE TABLE kategoria (
-- 	id_kategorii INT AUTO_INCREMENT PRIMARY KEY,
--     nazwa varchar(50) 
-- );
-- DESC kategoria;

-- CREATE TABLE produkt (
-- 	id_produktu INT AUTO_INCREMENT PRIMARY KEY,
--     nazwa VARCHAR(100) NOT NULL,
--     data_dodania DATE,
--     id_kategorii INT,
--     FOREIGN KEY(id_kategorii)
-- 		REFERENCES kategoria(id_kategorii)
-- )

-- INSERT INTO kategoria
-- VALUES (1, 'Komputery');

-- INSERT INTO kategoria
-- VALUES (2, 'Akcesoria'),
-- 		(3, 'Sprzet peryferyjny');

-- SELECT * FROM kategoria

-- UPDATE kategoria 
-- SET nazwa = 'Ogrod'
-- WHERE id_kategorii = 3;

-- DELETE FROM kategoria
-- WHERE id_kategorii = 3;


-- INSERT INTO produkt(nazwa, data_dodania, id_kategorii)
-- VALUES ('Mysz', '2026-10-29', 2);

-- SELECT * FROM produkt

-- DELETE FROM kategoria 
-- WHERE id_kategorii = 2;

-- ALTER TABLE produkt 
-- DROP FOREIGN KEY produkt_ibfk_1,
-- ADD FOREIGN KEY(id_kategorii)
-- 	REFERENCES kategoria(id_kategorii)
-- 	ON DELETE SET NULL

-- SELECT * FROM produkt;

-- DROP TABLE kategoria, produkt


-- ZADANIA ------------------------------------------

-- ZADANIE 1 ----------------------------------------

-- CREATE TABLE pracownik(
-- 	id_pracownika INT AUTO_INCREMENT PRIMARY KEY,
--     imie VARCHAR(40) NOT NULL,
--     nazwisko VARCHAR(60) NOT NULL,
--     data_urodzenia DATE NOT NULL
--     )


-- INSERT INTO pracownik VALUES
-- 	(1,'Adam', 'Abacki', '2026-10-29'),
-- 	(2,'Adam','Kowalski', '2026-10-29'),
-- 	(3,'Jan','Nowak', '2026-10-29')
--     ;

-- UPDATE pracownik 
-- SET data_urodzenia = '2006-01-01' 
-- WHERE id_pracownika = 1;

-- ZADANIE 2 ---------------------------------------
-- CREATE TABLE zadanie(
-- 	id_zadania INT PRIMARY KEY AUTO_INCREMENT,
--     nazwa_zadania VARCHAR(150) NOT NULL,
--     priorytet ENUM('normalny','wysoki','niski'),
--     opis TEXT,
-- 	pracownik_id INT,
--     FOREIGN KEY(pracownik_id) 
--     REFERENCES  pracownik(id_pracownika)
-- );

-- ALTER TABLE zadanie
-- ALTER COLUMN priorytet SET DEFAULT 'normalny'

-- INSERT INTO zadanie VALUES
-- (3,'naprawić błąd', 'normalny', 'w zadaniu chodzi o poprawnienie search experience by poprawic pozycjonowanie strony', 1);

-- ZADANIE 3 ----------------------------------------

-- CREATE TABLE projekt (
-- 	id_projektu INT PRIMARY KEY AUTO_INCREMENT,
--     nazwa_projektu VARCHAR(150),
--     data_rozpoczecia DATE,
--     data_zakonczenia DATE
-- );

-- ALTER TABLE projekt 
-- ADD menadzer_projektu INT,
-- ADD FOREIGN KEY(menadzer_projektu) REFERENCES pracownik(id_pracownika); 

-- INSERT INTO projekt VALUES 
-- 	(1, 'projekt strony internetowej','2026-5-10','2026-7-10',1),
--     (2, 'projekt wplikacji mobilnej','2026-5-10','2026-7-10',1);

-- ALTER TABLE zadanie
-- ADD projekt INT,
-- ADD FOREIGN KEY(projekt) REFERENCES projekt(id_projektu) ON DELETE CASCADE

-- UPDATE zadanie
-- SET projekt = 2
-- WHERE id_zadania = 3;

-- ZADANIE 4 ------------------------------------------

-- CREATE TABLE sprint(
-- 	id_sprintu INT PRIMARY KEY AUTO_INCREMENT,
-- 	numer_sprintu INT UNSIGNED,
--     data_rozpoczecia DATE,
--     data_zakonczenia DATE
-- );

-- ALTER TABLE zadanie
-- ADD sprint INT NULL ,
-- ADD FOREIGN KEY(sprint) REFERENCES sprint(id_sprintu) ON DELETE SET NULL

-- INSERT INTO sprint VALUES 
-- 	(1, 10, '2026-10-20', '2026-10-27');

-- UPDATE zadanie 
-- SET sprint = 1
-- WHERE id_zadania = 2 ;