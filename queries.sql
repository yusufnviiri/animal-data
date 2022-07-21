/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';

-- added query
SELECT *
FROM animals
WHERE NAME LIKE '%mon%';
SELECT *
FROM animals
WHERE DATE_OF_BIRTH BETWEEN '2016-01-01' AND '2019-12-31';
SELECT *
FROM animals
WHERE NEUTERED = TRUE
    AND ESCAPE_ATTEMPTS < 3;
SELECT DATE_OF_BIRTH
FROM animals
WHERE NAME = 'Agumon'
SELECT DATE_OF_BIRTH
FROM animals
WHERE NAME = 'Agumon'
    OR NAME = 'Pikachu';
SELECT NAME,
    ESCAPE_ATTEMPTS
FROM animals
WHERE WEIGHT_KG > 10.5;
SELECT NAME,
    DATE_OF_BIRTH,
    ESCAPE_ATTEMPTS,
    WEIGHT_KG
FROM animals
WHERE NEUTERED = TRUE;
SELECT *
FROM animals
WHERE NAME != 'Gabumon';
SELECT *
FROM animals
WHERE ESCAPE_ATTEMPTS > 1;
SELECT *
FROM animals
WHERE WEIGHT_KG >= 10.4
    AND WEIGHT_KG <= 17.3;


UPDATE animals SET SPECIES = 'Unspecified';
UPDATE animals SET SPECIES = ' ';
UPDATE animals SET SPECIES = 'pokemon' WHERE species = ' ';
UPDATE animals SET SPECIES = 'digimon' WHERE name LIKE '%mon';


BEGIN;
DELETE FROM animals;
ROLLBACK;
BEGIN;

DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SELECT * FROM ANIMALS;
 BEGIN;
 DELETE FROM animals WHERE date_of_birth > '2022-01-01'
SAVEPOINT SP1;

 UPDATE animals SET weight_kg = weight_kg * -1;

 ROLLBACK TO SP1;

 UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT;
COMMIT

 SELECT COUNT (*) FROM animals;
  SELECT * FROM ANIMALS WHERE escape_attempts > 1;
  SELECT * FROM ANIMALS WHERE escape_attempts < 1;
    SELECT neutered, MAX(escape_attempts) FROM animals GROUP BY neutered;
  SELECT Species, MAX(weight_kg) FROM animals GROUP BY species;
  SELECT Species, MIN(weight_kg) FROM animals GROUP BY species;
  SELECT Species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY Species;











