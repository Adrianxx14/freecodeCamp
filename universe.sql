--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: asteroide; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroide (
    asteroide_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size integer,
    velocidad integer
);


ALTER TABLE public.asteroide OWNER TO freecodecamp;

--
-- Name: asteroides_asteroide_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroides_asteroide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroides_asteroide_id_seq OWNER TO freecodecamp;

--
-- Name: asteroides_asteroide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroides_asteroide_id_seq OWNED BY public.asteroide.asteroide_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    num_plants integer,
    years integer,
    distancia numeric(3,1),
    nombre_cientifico text,
    has_planets boolean
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
    name character varying(50) NOT NULL,
    years integer,
    size integer,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    num_moons integer,
    years integer,
    has_moons boolean,
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
    name character varying(50),
    years integer,
    size integer,
    galaxy_id integer NOT NULL,
    extra text,
    info character varying(10)
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
-- Name: asteroide asteroide_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroide ALTER COLUMN asteroide_id SET DEFAULT nextval('public.asteroides_asteroide_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroide; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroide VALUES (1, 'aste1', 10, 100);
INSERT INTO public.asteroide VALUES (2, 'aste2', 10, 200);
INSERT INTO public.asteroide VALUES (3, 'aste3', 2, 100);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 10, 10, 20.0, 'andro', true);
INSERT INTO public.galaxy VALUES (2, 'galaxy1', 10, 10, 20.0, 'gal1', true);
INSERT INTO public.galaxy VALUES (3, 'galaxy2', 10, 10, 20.0, 'gal2', true);
INSERT INTO public.galaxy VALUES (4, 'galaxy3', 10, 10, 20.0, 'gal3', true);
INSERT INTO public.galaxy VALUES (5, 'galaxy4', 10, 10, 20.0, 'gal4', true);
INSERT INTO public.galaxy VALUES (6, 'galaxy5', 10, 10, 20.0, 'gal5', true);
INSERT INTO public.galaxy VALUES (7, 'galaxy6', 10, 10, 20.0, 'gal6', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 10, 10, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 10, 10, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 1, 1, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 2, 2, 5);
INSERT INTO public.moon VALUES (5, 'moon6', 3, 3, 6);
INSERT INTO public.moon VALUES (6, 'moon7', 4, 4, 7);
INSERT INTO public.moon VALUES (7, 'moon8', 5, 5, 8);
INSERT INTO public.moon VALUES (8, 'moon9', 6, 6, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 7, 7, 9);
INSERT INTO public.moon VALUES (11, 'moon11', 8, 8, 9);
INSERT INTO public.moon VALUES (12, 'moon12', 8, 8, 8);
INSERT INTO public.moon VALUES (13, 'moon13', 8, 8, 7);
INSERT INTO public.moon VALUES (14, 'moon14', 8, 8, 6);
INSERT INTO public.moon VALUES (15, 'moon15', 9, 9, 5);
INSERT INTO public.moon VALUES (16, 'moon16', 9, 9, 5);
INSERT INTO public.moon VALUES (17, 'moon17', 9, 9, 3);
INSERT INTO public.moon VALUES (18, 'moon18', 9, 9, 5);
INSERT INTO public.moon VALUES (19, 'moon19', 8, 8, 8);
INSERT INTO public.moon VALUES (20, 'moon20', 10, 10, 2);
INSERT INTO public.moon VALUES (21, 'moon20', 10, 10, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 2, 10, true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 3, 10, true, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 4, 10, true, 2);
INSERT INTO public.planet VALUES (4, 'planet4', 0, 10, false, 2);
INSERT INTO public.planet VALUES (5, 'planet5', 0, 10, false, 3);
INSERT INTO public.planet VALUES (6, 'planet5', 0, 30, false, 3);
INSERT INTO public.planet VALUES (7, 'planet6', 10, 30, true, 4);
INSERT INTO public.planet VALUES (8, 'planet8', 3, 30, true, 5);
INSERT INTO public.planet VALUES (9, 'planet9', 3, 30, true, 6);
INSERT INTO public.planet VALUES (11, 'planet10', 3, 30, true, 5);
INSERT INTO public.planet VALUES (12, 'planet11', 0, 30, false, 4);
INSERT INTO public.planet VALUES (13, 'planet12', 0, 30, false, 3);
INSERT INTO public.planet VALUES (14, 'planet13', 0, 30, false, 2);
INSERT INTO public.planet VALUES (15, 'planet14', 2, 30, true, 1);
INSERT INTO public.planet VALUES (16, 'planet14', 2, 30, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 10, 10, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star2', 9, 10, 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star3', 21, 9, 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', 10, 19, 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', 9, 2, 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', 10, 9, 6, NULL, NULL);


--
-- Name: asteroides_asteroide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroides_asteroide_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroide asteroides_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroide
    ADD CONSTRAINT asteroides_name_key UNIQUE (name);


--
-- Name: asteroide asteroides_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroide
    ADD CONSTRAINT asteroides_pkey PRIMARY KEY (asteroide_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

