/*Queries that provide answers to the questions from all projects.*/
SELECT NAME
FROM ANIMALS
WHERE NAME = '%mon';


SELECT NAME
FROM ANIMALS
WHERE DATE_OF_BIRTH BETWEEN '2016/01/01' AND '2019/12/31';


SELECT NAME
FROM ANIMALS
WHERE NEUTERED = TRUE
	AND ESCAPE_ATTEMPTS < 3;


SELECT DATE_OF_BIRTH
FROM ANIMALS
WHERE NAME = 'Augmon'
	OR NAME = 'Pikachu';


SELECT NAME,
	ESCAPE_ATTEMPTS
FROM ANIMALS
WHERE WEIGHT_KG > 10.5;


SELECT *
FROM ANIMALS
WHERE NEUTERED = TRUE;


SELECT NAME
FROM ANIMALS
WHERE NAME != 'Gabumon';


SELECT *
FROM ANIMALS
WHERE WEIGHT_KG >= 10.4
	AND WEIGHT_KG <= 17.3;

BEGIN;


UPDATE ANIMALS
SET SPECIES = 'unspecified';


ROLLBACK;

BEGIN;


UPDATE ANIMALS
SET SPECIES = 'digimon'
WHERE "name" LIKE '%mon';


UPDATE ANIMALS
SET SPECIES = 'pokemon'
WHERE SPECIES IS NULL;


COMMIT;

BEGIN;


DELETE
FROM ANIMALS;


ROLLBACK;

BEGIN;


DELETE
FROM ANIMALS
WHERE DATE_OF_BIRTH >= '2020/01/01';

SAVEPOINT ANIMALS1;


UPDATE ANIMALS
SET WEIGHT_KG = WEIGHT_KG * -1;


ROLLBACK TO ANIMALS1;


UPDATE ANIMALS
SET WEIGHT_KG = WEIGHT_KG * -1
WHERE WEIGHT_KG < 0;


COMMIT;


SELECT *
FROM ANIMALS;


SELECT AVG(weight_kg) AS "AVERAGE WEIGHT OF ANIMALS" FROM animals;
SELECT COUNT(*) AS "NUMBER OF ANIMALS" FROM animals;
SELECT COUNT(*) AS "NEVER TRIED TO ESCAPE" FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) AS "AVERAGE WEIGHT OF ANIMALS" FROM animals;
SELECT AVG(escape_attempts) AS "AVERAGE ESCAPE ATTEMPTS OF ANIMALS" FROM animals GROUP BY neutered ORDER BY AVG(escape_attempts);
SELECT MIN(weight_kg) AS "MINIMUM WEIGHT", MAX(weight_kg) AS "MAXIMUM WEIGHT" FROM animals GROUP BY species;

BEGIN;
SELECT "name" AS "Melody`s Animals" FROM animals JOIN owners ON animals.owners_id = owners.id
WHERE owners.full_name = 'Melody Pond';

SELECT animals.name AS "Pokemon Animals" FROM animals JOIN species ON animals.species_id = species.id
WHERE species.name = 'Pokemon';

SELECT owners.full_name, animals.name FROM owners LEFT JOIN animals ON owners.id = animals.owners_id;

SELECT species.name, COUNT(*) FROM animals JOIN species ON animals.species_id = species.id GROUP BY species.name;

SELECT animals.name AS "Digimons owned by Jennifer Orwell" FROM animals JOIN owners ON animals.owners_id = owners_id JOIN species ON animals.species_id = species_id
WHERE owners.full_name LIKE 'Jennifer Orwell' AND species.name LIKE 'Digimon';

SELECT animals.name AS "Animals owned by Dean Winchester that never tried to escape" FROM animals JOIN owners ON animals.owners_id = owners.id
WHERE owners.full_name LIKE 'Dean Winchester' AND animals.escape_attempts = 0;

SELECT owners.full_name AS "Owns more animals" FROM owners JOIN animals ON owners.id = animals.owners_id GROUP BY owners.full_name ORDER BY COUNT(*) DESC LIMIT 1;


SELECT *
FROM ANIMALS;

// Day 4 Queries

SELECT animals.name AS "Last animal seen by William Tatcher" 
FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON vets.id = visits.vet_id 
WHERE vets."name" = 'William Tatcher' ORDER BY visits.visits_date DESC LIMIT 1;

SELECT COUNT(DISTINCT animals.name) AS "How many different animals did Stephanie Mendez have seen" FROM animals JOIN visits ON animals.id = visits.animals_id
WHERE vet_name = 'Stephanie Mendez';

SELECT vets.name, species.name FROM vets LEFT JOIN specializations ON vets.id = specializations.vets_id LEFT JOIN species ON specializations.species_id = species.id;

SELECT animals.name AS "Animals that visited Stephanie Mendez from April 1st until August 30th" 
FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON vets.id = visits.vet_id
WHERE vets.name = 'Stephanie Mendez' AND visits.visits_date BETWEEN '2020/04/01' AND '2020/08/30';

SELECT animals.name FROM animals JOIN visits ON animals.id = visits.animals_id GROUP BY animals.name 
ORDER BY COUNT(*) DESC LIMIT 1;

SELECT animals.name AS "Maisy Smith first visit" FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON vets.id = visits.vet_id
WHERE vets."name" = 'Maisy Smith' ORDER BY visits.visits_date LIMIT 1;

SELECT animals.name, vets.name, visits.visits_date FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON vets.id = visits.vet_id ORDER BY visits.visits_date DESC LIMIT 1;

SELECT COUNT (*) FROM visits JOIN vets ON vets.id = visits.vets_id JOIN animals ON animals.id = visits.animals_id JOIN species ON animals.species_id = species.id WHERE vets.id NOT IN (SELECT vets.id FROM vets JOIN specializations ON vets.id = specializations.vet_id JOIN species ON specializations.species_id = species.id WHERE species.id = animals.species_id);

SELECT COUNT(*) FROM visits where animal_id = 4;

SELECT * FROM visits where vet_id = 2;

SELECT * FROM owners where email = 'owner_18327@mail.com';


SELECT COUNT (*) FROM visits JOIN vets ON vets.id = visits.vets_id JOIN animals ON animals.id = visits.animals_id JOIN species ON animals.species_id = species.id WHERE vets.id NOT IN (SELECT vets.id FROM vets JOIN specializations ON vets.id = specializations.vet_id JOIN species ON specializations.species_id = species.id WHERE species.id = animals.species_id);

