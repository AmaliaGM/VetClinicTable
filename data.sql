/* Populate database with sample data. */

INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg, species) VALUES (1,'Augmon', '2020/02/03', 0, true, 10.23);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg, species) VALUES (2,'Gabumon', '2018/10/10', 2, true, 8);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg, species) VALUES (3,'Pikachu', '2021/06/07', 1, false, 15.04);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg, species) VALUES (4,'Devimon', '201705/12', 5, true, 11);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg, species) VALUES (1,'Augmon', '2020/02/03', 0, true, 10.23);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg, species) VALUES (2,'Gabumon', '2018/10/10', 2, true, 8);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg, species) VALUES (3,'Pikachu', '2021/06/07', 1, false, 15.04);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg, species) VALUES (4,'Devimon', '2017/05/12', 5, true, 11);

INSERT INTO owners (id, full_name, age) VALUES (1,'Sam Smith', 34);
INSERT INTO owners (id, full_name, age) VALUES (2, 'Jennifer Orwell', 19);
INSERT INTO owners (id, full_name, age) VALUES (3, 'Bob', 45);
INSERT INTO owners (id, full_name, age) VALUES (4, 'Melody Pond', 77);
INSERT INTO owners (id, full_name, age) VALUES (5, 'Dean Winchester', 14);
INSERT INTO owners (id, full_name, age) VALUES (6, 'Jodie Whittaker', 38);

INSERT INTO species (id, "name") VALUES (1, 'Pokemon');
INSERT INTO species (id, "name") VALUES (2, 'Digimon');

BEGIN;


UPDATE ANIMALS
SET SPECIES_ID = 2
WHERE "name" LIKE '%mon';


COMMIT;


UPDATE ANIMALS
SET SPECIES_ID = 1
WHERE "name" NOT LIKE '%mon';


COMMIT;

BEGIN;


UPDATE ANIMALS
SET owners_id = 1
WHERE "name" LIKE 'Augmon';

COMMIT;


UPDATE ANIMALS
SET owners_id = 2
WHERE "name" LIKE 'Gabumon';

COMMIT;


UPDATE ANIMALS
SET owners_id = 2
WHERE "name" LIKE 'Pikachu';

COMMIT;

UPDATE ANIMALS
SET owners_id = 3
WHERE "name" LIKE 'Devimon';

COMMIT;

UPDATE ANIMALS
SET owners_id = 3
WHERE "name" LIKE 'Plantmon';

COMMIT;

UPDATE ANIMALS
SET owners_id = 4
WHERE "name" LIKE 'Charmander';

COMMIT;

UPDATE ANIMALS
SET owners_id = 4
WHERE "name" LIKE 'Squirtle';

COMMIT;

UPDATE ANIMALS
SET owners_id = 4
WHERE "name" LIKE 'Blossom';

COMMIT;

UPDATE ANIMALS
SET owners_id = 5
WHERE "name" LIKE 'Angemon';

COMMIT;


UPDATE ANIMALS
SET owners_id = 5
WHERE "name" LIKE 'Boarmon';

COMMIT;

SELECT *
FROM ANIMALS;

INSERT INTO vets("name",age,date_of_graduation) VALUES('William Tatcher',45,'2000/04/03');
INSERT INTO vets("name",age,date_of_graduation) VALUES('Maisy Smith',	26,	'2019/06/17');
INSERT INTO vets("name",age,date_of_graduation) VALUES('Stephanie Mendez',	64,	'1981/05/04');
INSERT INTO vets("name",age,date_of_graduation) VALUES('Jack Harkness',	38,	'2008/06/08');
SELECT * FROM vets;


