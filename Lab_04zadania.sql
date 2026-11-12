-- Zad1
-- 1.1

-- ALTER TABLE zadanie
-- DROP FOREIGN KEY pracownik;

-- ALTER TABLE projekt
-- DROP FOREIGN KEY menadzer_projektu;


-- 1.2

-- ALTER TABLE `infs_mierzejewskip`.`pracownik` 
-- CHANGE COLUMN `id_pracownika` `id_pracownika` INT NOT NULL ,
-- DROP PRIMARY KEY;
-- ;


-- 1.3

-- ALTER TABLE `infs_mierzejewskip`.`pracownik` 
-- ADD PRIMARY KEY (`id_pracownika`);
-- ;


-- 1.4

-- ALTER TABLE zadanie
-- ADD CONSTRAINT fk_zadanie_pracownik
-- FOREIGN KEY (pracownik)
-- REFERENCES pracownik(id_pracownika)
-- ON DELETE SET NULL;

-- ALTER TABLE projekt
-- ADD CONSTRAINT fk_projekt_menadzer
-- FOREIGN KEY (menadzer_projektu)
-- REFERENCES pracownik(id_pracownika);


-- Zad2


-- 2.1

-- ALTER TABLE zadanie
-- ADD COLUMN godziny_szacowane INTEGER DEFAULT 8;


-- 2.2

-- UPDATE zadanie
-- SET godziny_szacowane = 4
-- WHERE id_zadania = 1;

-- UPDATE zadanie
-- SET godziny_szacowane = 12
-- WHERE id_zadania = 2;

-- UPDATE zadanie
-- SET godziny_szacowane = 16
-- WHERE id_zadania = 3;


-- 2.3

-- ALTER TABLE zadanie
-- ALTER COLUMN godziny_szacowane SET DEFAULT 6;


-- 2.4

-- Wstawienie nowego zadania
-- INSERT INTO zadanie (id_zadania, nazwa_zadania)
-- VALUES (100, 'Zadanie testowe');

-- -- Sprawdzenie wartości domyślnej
-- SELECT id_zadania, nazwa_zadania, godziny_szacowane
-- FROM zadanie
-- WHERE id_zadania = 100;

-- -- Usunięcie zadania testowego
-- DELETE FROM zadanie
-- WHERE id_zadania = 100;

-- Zad 3

-- 3.1

-- ALTER TABLE `infs_mierzejewskip`.`projekt` 
-- ADD COLUMN `opis_kratki` VARCHAR(50) NULL AFTER `data_zakonczenia`;

-- 3.2

-- ALTER TABLE `infs_mierzejewskip`.`projekt` 
-- CHANGE COLUMN `opis_kratki` `opis_kratki` VARCHAR(200) NULL DEFAULT NULL ;


-- 3.3

-- UPDATE projekt
-- SET opis_kratki = 'MVP'
-- WHERE id_projektu = 1;

-- UPDATE projekt
-- SET opis_kratki = 'Pilne wdrożenie'
-- WHERE id_projektu = 2;

-- UPDATE projekt
-- SET opis_kratki = 'Wysoki priorytet'
-- WHERE id_projektu = 4;

-- 3.4

-- ALTER TABLE `infs_mierzejewskip`.`projekt` 
-- DROP COLUMN `opis_kratki`;


-- Zad 4

-- 4.1

-- ALTER TABLE zadanie
-- DROP FOREIGN KEY projekt;

-- 4.2

-- ALTER TABLE zadanie
-- ADD CONSTRAINT fk_zadanie_projekt
-- FOREIGN KEY (nazwa_zadania)
-- REFERENCES projekt(id_projektu)
-- ON DELETE SET NULL;

-- 4.3

-- DELETE FROM projekt
-- WHERE id_projektu = 5;


-- 4.4

-- SELECT id_zadania, nazwa, projekt
-- FROM zadanie
-- WHERE projekt IS NULL;



