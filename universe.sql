--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth integer,
    number_of_stars_billions numeric,
    galaxy_type text,
    has_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: hola_cara_de_bola; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.hola_cara_de_bola (
    hola_cara_de_bola_id integer NOT NULL,
    name character varying(30) NOT NULL,
    ojos integer,
    es_bueno boolean
);


ALTER TABLE public.hola_cara_de_bola OWNER TO freecodecamp;

--
-- Name: hola_cara_de_bola_character_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.hola_cara_de_bola_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hola_cara_de_bola_character_id_seq OWNER TO freecodecamp;

--
-- Name: hola_cara_de_bola_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.hola_cara_de_bola_character_id_seq OWNED BY public.hola_cara_de_bola.hola_cara_de_bola_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth integer,
    radius numeric,
    discovered_by text,
    has_atmosphere boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth integer,
    radius numeric,
    planet_type text,
    has_rings boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth integer,
    mass_solar_masses numeric,
    constellation text,
    has_exoplanets_confirmed boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: hola_cara_de_bola hola_cara_de_bola_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hola_cara_de_bola ALTER COLUMN hola_cara_de_bola_id SET DEFAULT nextval('public.hola_cara_de_bola_character_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via lactea', 13600, 0, 250, 'Espiral barrada', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 3, 1000, 'Espiral', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulo', 10000, 3, 40, 'Espiral', false);
INSERT INTO public.galaxy VALUES (4, 'Gran nube de Magallanes', 11000, 0, 30, 'Irregular', false);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 12000, 14, 150, 'Lenticular', true);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 13250, 29, 100, 'Espiral', true);


--
-- Data for Name: hola_cara_de_bola; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.hola_cara_de_bola VALUES (1, 'Mike', 1, true);
INSERT INTO public.hola_cara_de_bola VALUES (2, 'Sully', 2, true);
INSERT INTO public.hola_cara_de_bola VALUES (3, 'Randall', 2, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, 158, 1737, NULL, false, 1);
INSERT INTO public.moon VALUES (2, 'Io', 4500, 558, 1821, 'Galileo', false, 2);
INSERT INTO public.moon VALUES (3, 'Europa', 4500, 558, 1560, 'Galileo', true, 2);
INSERT INTO public.moon VALUES (4, 'Ganimides', 4500, 558, 2634, 'Galileo', false, 2);
INSERT INTO public.moon VALUES (5, 'Calisto', 4500, 558, 2410, 'Galileo', false, 2);
INSERT INTO public.moon VALUES (6, 'Titan', 4500, 958, 2575, 'Christiaan Huygnes', true, 3);
INSERT INTO public.moon VALUES (7, 'Rea', 4500, 958, 763, 'Giovanni Cassini', false, 3);
INSERT INTO public.moon VALUES (8, 'Dione', 4500, 958, 561, 'Giovanni Cassini', false, 3);
INSERT INTO public.moon VALUES (9, 'Tetis', 4500, 958, 533, 'Giovanni Cassini', false, 3);
INSERT INTO public.moon VALUES (10, 'Encelado', 4500, 958, 252, 'William Herschel', true, 3);
INSERT INTO public.moon VALUES (11, 'Mimas', 4500, 958, 198, 'William Herschel', false, 3);
INSERT INTO public.moon VALUES (12, 'Hiperion', 4500, 958, 135, 'William Bond', false, 3);
INSERT INTO public.moon VALUES (13, 'Febe', 4500, 958, 106, 'William Pickering', false, 3);
INSERT INTO public.moon VALUES (14, 'Triton', 4500, 11200, 1353, 'William lassell', true, 4);
INSERT INTO public.moon VALUES (15, 'Caronte', 4500, 15600, 606, 'James Christy', false, 5);
INSERT INTO public.moon VALUES (16, 'Fobos', 4500, 958, 11, 'Asaph Hall', false, 6);
INSERT INTO public.moon VALUES (17, 'Deimos', 4500, 958, 6, 'Asaph Hall', false, 6);
INSERT INTO public.moon VALUES (18, 'Amaltea', 4500, 558, 84, 'Edward Barnard', false, 2);
INSERT INTO public.moon VALUES (19, 'Miranda', 4500, 156, 235, 'Gerald Kuiper', false, 7);
INSERT INTO public.moon VALUES (20, 'Oberon', 4500, 156, 761, 'William Herschel', false, 7);
INSERT INTO public.moon VALUES (21, 'Titania', 4500, 156, 788, 'William Herschel', false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 4540, 0, 1, 'Terrestre', false, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 4600, 0, 11.2, 'Gaseoso', true, 1);
INSERT INTO public.planet VALUES (3, 'Próxima centauri b', 4850, 4, 1.17, 'Terrestre', false, 3);
INSERT INTO public.planet VALUES (12, 'Confi', NULL, 63, 4.2, NULL, true, 4);
INSERT INTO public.planet VALUES (4, 'HD 209458b Osiris', 4000, 150, 1.38, 'Gaseoso', false, 5);
INSERT INTO public.planet VALUES (6, 'TrES-2b', 4800, 704, 1.27, 'Gaseoso', false, 6);
INSERT INTO public.planet VALUES (7, '51 Pegasi b Dimidio', 6100, 51, 1.2, 'Gaseoso', false, 3);
INSERT INTO public.planet VALUES (8, 'Cara de bola', 3000, 650, 0.95, 'Terrestre', NULL, 5);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 7000, 20, 1.3, 'Terrestre', false, 5);
INSERT INTO public.planet VALUES (5, 'PSR B1620-26 b Matusalen', 12700, 12400, NULL, 'Gaseoso', NULL, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 4000, 492, 1.11, 'Terrestre', false, 2);
INSERT INTO public.planet VALUES (9, 'Planeta X', NULL, NULL, NULL, NULL, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 4600, 0, 1, NULL, false, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 10, 643, 16.5, 'Orion', false, 1);
INSERT INTO public.star VALUES (3, 'Proxima centauri', 4850, 4, 0.12, 'Centauro', true, 1);
INSERT INTO public.star VALUES (4, 'Estrella de Barnard', 10000, 6, 0.16, 'Ofiuco', false, 1);
INSERT INTO public.star VALUES (5, 'M31-V1', NULL, 2537000, NULL, 'Andromeda', NULL, 2);
INSERT INTO public.star VALUES (6, 'Evangeline', 50, NULL, 8.7, NULL, true, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: hola_cara_de_bola_character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.hola_cara_de_bola_character_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: hola_cara_de_bola hola_cara_de_bola_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hola_cara_de_bola
    ADD CONSTRAINT hola_cara_de_bola_name_key UNIQUE (name);


--
-- Name: hola_cara_de_bola hola_cara_de_bola_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hola_cara_de_bola
    ADD CONSTRAINT hola_cara_de_bola_pkey PRIMARY KEY (hola_cara_de_bola_id);


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

