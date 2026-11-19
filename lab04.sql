-- --------------------------------------------lab 04 ---------------------------------------

-- ------------------------------------------zad 1---------------------------------------
-- ALTER TABLE zadanie
-- 	drop constraint zadanie_ibfk_3;

-- ALTER TABLE projekt
-- 	drop constraint projekt_ibfk_1;

-- ALTER TABLE pracownik
-- modify id_pracownika int 

-- ALTER TABLE pracownik
-- DROP primary key

-- ALTER TABLE pracownik
-- ADD primary key (id_pracownika)

-- ALTER TABLE zadanie
-- ADD foreign key(pracownik_id) references pracownik(id_pracownika) on delete set null

-- ALTER TABLE projekt
-- ADD foreign key(menadzer_projektu) references pracownik(id_pracownika) 

-- ----------------------------------- zad 2 -----------------------------------------
-- ALTER TABLE zadanie
-- ADD godziny_szacowane int default 8

-- UPDATE zadanie
-- set godziny_szacowane = 4
-- WHERE id_zadania = 1

-- UPDATE zadanie
-- set godziny_szacowane = 12
-- WHERE id_zadania = 3

-- ALTER TABLE zadanie
-- MODIFY godziny_szacowane int default 6

-- INSERT INTO zadanie VALUES (0 ,"posortowac", "normalny", "posortowac kolumne", 2, 2, 3, default);

-- DELETE from zadanie
-- WHERE id_zadania = 4

-- ------------------------------- zad3 ---------------------------------------

-- ALTER TABLE projekt 
-- ADD opis_kratki VARCHAR(50) null

-- ALTER TABLE projekt 
-- MODIFY opis_kratki varchar(200) null

-- UPDATE projekt
-- SET opis_kratki = CASE id_projektu 
--                       WHEN 1 THEN 'MVP' 
--                       WHEN 2 THEN 'pilne' 
--                       WHEN 3 THEN 'wdrożenia' 
--                       END
-- WHERE id_projektu IN(1, 2, 3);

-- ALTER TABLE projekt
-- drop opis_kratki


-- ------------------------------------ zad4 --------------------------------------
-- ALTER TABLE zadanie 
-- drop constraint zadanie_ibfk_2

-- ALTER TABLE zadanie 
-- add foreign key(projekt) references projekt(id_projektu) on delete set null

-- delete from projekt
-- where id_projektu = 2

SELECT * from zadanie where projekt is NULL

