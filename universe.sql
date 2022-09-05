--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    discover_year integer,
    discover_by character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    diameter integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: object; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.object (
    object_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(30),
    since_year integer,
    country character varying(30)
);


ALTER TABLE public.object OWNER TO freecodecamp;

--
-- Name: object_object_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.object_object_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.object_object_id_seq OWNER TO freecodecamp;

--
-- Name: object_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.object_object_id_seq OWNED BY public.object.object_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    colour character varying(20),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    temperature integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: object object_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.object ALTER COLUMN object_id SET DEFAULT nextval('public.object_object_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'voie lactée', NULL, 1610, 'Galilée');
INSERT INTO public.galaxy VALUES (2, 'galaxie d''andromède', NULL, 964, 'Al-Soufi');
INSERT INTO public.galaxy VALUES (3, 'galaxie de la roue de chariot', NULL, 1941, 'Zwicky');
INSERT INTO public.galaxy VALUES (4, 'galaxie du cigare', NULL, 1774, 'Bode');
INSERT INTO public.galaxy VALUES (5, 'Grand Nuage de Magellan', NULL, 964, 'Al-Soufi');
INSERT INTO public.galaxy VALUES (6, 'galaxie du sombrero', NULL, 1781, 'Méchain');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lune', false, NULL, 3);
INSERT INTO public.moon VALUES (2, 'déimos', false, NULL, 4);
INSERT INTO public.moon VALUES (3, 'phobos', false, NULL, 4);
INSERT INTO public.moon VALUES (4, 'europe', false, NULL, 5);
INSERT INTO public.moon VALUES (5, 'ganymède', false, NULL, 5);
INSERT INTO public.moon VALUES (6, 'io', false, NULL, 5);
INSERT INTO public.moon VALUES (7, 'callisto', false, NULL, 5);
INSERT INTO public.moon VALUES (8, 'amalthée', false, NULL, 5);
INSERT INTO public.moon VALUES (9, 'léda', false, NULL, 5);
INSERT INTO public.moon VALUES (10, 'titan', false, NULL, 6);
INSERT INTO public.moon VALUES (11, 'encelade', false, NULL, 6);
INSERT INTO public.moon VALUES (12, 'mimas', false, NULL, 6);
INSERT INTO public.moon VALUES (13, 'dioné', false, NULL, 6);
INSERT INTO public.moon VALUES (14, 'téthys', false, NULL, 6);
INSERT INTO public.moon VALUES (15, 'japet', false, NULL, 6);
INSERT INTO public.moon VALUES (16, 'titania', false, NULL, 7);
INSERT INTO public.moon VALUES (17, 'obéron', false, NULL, 7);
INSERT INTO public.moon VALUES (18, 'umbriel', false, NULL, 7);
INSERT INTO public.moon VALUES (19, 'triton', false, NULL, 8);
INSERT INTO public.moon VALUES (20, 'thalassa', false, NULL, 8);
INSERT INTO public.moon VALUES (21, 'hippocampe', false, NULL, 8);
INSERT INTO public.moon VALUES (22, 'charon', false, NULL, 9);
INSERT INTO public.moon VALUES (23, 'styx', false, NULL, 9);


--
-- Data for Name: object; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.object VALUES (1, 'iss', 'station spatiale', 1998, 'international');
INSERT INTO public.object VALUES (2, 'hubble', 'téléscope', 1990, 'USA');
INSERT INTO public.object VALUES (3, 'James Webb', 'téléscope', 2021, 'USA');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercure', false, 'orange', 1);
INSERT INTO public.planet VALUES (2, 'venus', false, 'orange', 1);
INSERT INTO public.planet VALUES (3, 'terre', true, 'blue', 1);
INSERT INTO public.planet VALUES (4, 'mars', false, 'orange', 1);
INSERT INTO public.planet VALUES (5, 'jupiter', false, 'orange', 1);
INSERT INTO public.planet VALUES (6, 'saturn', false, 'yellow', 1);
INSERT INTO public.planet VALUES (7, 'uranus', false, 'green', 1);
INSERT INTO public.planet VALUES (8, 'neptune', false, 'blue', 1);
INSERT INTO public.planet VALUES (9, 'pluton', false, 'grey', 1);
INSERT INTO public.planet VALUES (10, 'alpha', false, 'purple', 2);
INSERT INTO public.planet VALUES (11, 'doudou', false, 'pink', 3);
INSERT INTO public.planet VALUES (12, 'big boy', false, 'blue', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Soleil', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Vega', NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Altaïr', NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Arcturus', NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Déneb', NULL, NULL, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: object_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.object_object_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: object object_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.object
    ADD CONSTRAINT object_name_key UNIQUE (name);


--
-- Name: object object_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.object
    ADD CONSTRAINT object_pkey PRIMARY KEY (object_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

