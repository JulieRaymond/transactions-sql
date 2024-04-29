-- Création de la base de données si elle n'existe pas déjà
CREATE DATABASE IF NOT EXISTS transactions;

-- Sélection de la base de données
USE transactions;

-- Création des tables si elles n'existent pas déjà
CREATE TABLE IF NOT EXISTS table1 (
    column1 datatype,
    -- autres colonnes...
);

CREATE TABLE IF NOT EXISTS table2 (
    -- définition des colonnes...
);

-- Début de la première transaction
BEGIN;

-- Requêtes de la première transaction
UPDATE table1 SET column1 = 'valeur1' WHERE condition1;

DELETE FROM table2 WHERE condition2;
-- etc...

-- Annulation de la première transaction en cas d'erreur
ROLLBACK;

-- Fin de la première transaction

-- Début de la deuxième transaction
BEGIN;

-- Requêtes de la deuxième transaction
UPDATE table3 SET column2 = 'valeur2' WHERE condition3;

INSERT INTO table4 (column3) VALUES ('valeur3');
-- etc...

-- Validation de la deuxième transaction
COMMIT;

-- Fin de la deuxième transaction