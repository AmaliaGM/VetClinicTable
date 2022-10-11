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

UPDATE visits
SET vet_name = 'William Tatcher'
WHERE vet_id = 1;

UPDATE visits
SET vet_name = 'Maisy Smith'
WHERE vet_id = 2;
COMMIT;

UPDATE visits
SET vet_name = 'Stephanie Mendez'
WHERE vet_id = 3;
COMMIT;

UPDATE visits
SET vet_name = 'Jack Harkness'
WHERE vet_id = 4;
COMMIT;

BEGIN;
UPDATE visits
SET animal_name = 'Augmon'
WHERE animals_id = 1;
COMMIT;
UPDATE visits
SET animal_name = 'Gabumon'
WHERE animals_id = 2;
COMMIT;
UPDATE visits
SET animal_name = 'Pikachu'
WHERE animals_id = 3;
COMMIT;
UPDATE visits
SET animal_name = 'Devimon'
WHERE animals_id = 4;
COMMIT;
UPDATE visits
SET animal_name = 'Charmaner'
WHERE animals_id = 5;
COMMIT;
UPDATE visits
SET animal_name = 'Plantmon'
WHERE animals_id = 6;
COMMIT;
UPDATE visits
SET animal_name = 'Squirtle'
WHERE animals_id = 7;
COMMIT;
UPDATE visits
SET animal_name = 'Angemon'
WHERE animals_id = 8;
COMMIT;
UPDATE visits
SET animal_name = 'Boarmon'
WHERE animals_id = 9;
COMMIT;
UPDATE visits
SET animal_name = 'Blossom'
WHERE animals_id = 10;
COMMIT;
UPDATE visits
SET animal_name = 'Ditto'
WHERE animals_id = 11;
COMMIT;
SELECT * FROM visits;

-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);


-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animals_id, vet_id, visits_date) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;


SELECT * FROM visits;