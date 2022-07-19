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