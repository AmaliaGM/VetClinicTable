/*Queries that provide answers to the questions from all projects.*/

SELECT name from animals
WHERE name = '%mon';
SELECT name from animals
WHERE date_of_birth BETWEEN '2016/01/01' AND '2019/12/31';
SELECT name from animals
WHERE neutered = TRUE AND escape_attempts < 3;
SELECT date_of_birth from animals
WHERE name = 'Augmon' OR name = 'Pikachu';
SELECT name, escape_attempts from animals
WHERE weight_kg > 10.5;
SELECT * from animals
WHERE neutered = TRUE;
SELECT name from animals
WHERE name != 'Gabumon';
SELECT * from animals
WHERE weight_kg >= 10.4 AND weight_kg <= 17.3
