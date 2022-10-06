-- Table: public.animals

-- DROP TABLE IF EXISTS public.animals;

CREATE TABLE IF NOT EXISTS public.animals
(
    id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    date_of_birth date NOT NULL,
    escape_attempts integer NOT NULL,
    neutered boolean NOT NULL,
    weight_kg numeric NOT NULL,
    species text NULL,
    CONSTRAINT animals_pkey PRIMARY KEY (id, name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.animals
    OWNER to postgres;
	
-- Table: public.owners

-- DROP TABLE IF EXISTS public.owners;

CREATE TABLE IF NOT EXISTS public.owners
(
    id integer NOT NULL,
    full_name name COLLATE pg_catalog."C" NOT NULL,
    age integer NOT NULL,
    CONSTRAINT owners_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.owners
    OWNER to postgres;
	
	
-- Table: public.species

-- DROP TABLE IF EXISTS public.species;

CREATE TABLE IF NOT EXISTS public.species
(
    id integer NOT NULL,
    name name COLLATE pg_catalog."C" NOT NULL,
    CONSTRAINT species_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.species
    OWNER to postgres;
	
