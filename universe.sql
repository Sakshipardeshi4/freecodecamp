----
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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    gravity integer,
    galaxy_id integer,
    wormhole boolean DEFAULT false NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    description text,
    name character varying(255) NOT NULL,
    rotation_speed integer DEFAULT 1000 NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxt_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxt_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxt_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    has_water boolean NOT NULL,
    planet_id integer NOT NULL,
    name_code character varying(255) NOT NULL
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
    name character varying(255) NOT NULL,
    amount_of_people numeric,
    time_travel boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL
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
    radius integer NOT NULL,
    color character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxt_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, NULL, NULL, false, 'b1');
INSERT INTO public.blackhole VALUES (2, NULL, NULL, false, 'b2');
INSERT INTO public.blackhole VALUES (3, NULL, NULL, false, 'b3');
INSERT INTO public.blackhole VALUES (4, NULL, NULL, false, 'b4');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'milkyway', 1000);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'galaxy2', 1000);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'galaxy3', 1000);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'galaxy4', 1000);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'galaxy5', 1000);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'galaxy6', 1000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', true, 2, 'moon1');
INSERT INTO public.moon VALUES (2, 'moon2', true, 2, 'moon2');
INSERT INTO public.moon VALUES (3, 'moon3', true, 2, 'moon3');
INSERT INTO public.moon VALUES (4, 'moon4', true, 2, 'moon4');
INSERT INTO public.moon VALUES (7, 'moon5', true, 4, 'moon5');
INSERT INTO public.moon VALUES (8, 'moon78', true, 4, 'moo65');
INSERT INTO public.moon VALUES (9, 'moon56', true, 4, 'moo95');
INSERT INTO public.moon VALUES (10, 'moon33', true, 4, 'moon658');
INSERT INTO public.moon VALUES (11, 'moon73', true, 4, 'moon58');
INSERT INTO public.moon VALUES (12, 'moonb3', true, 4, 'moona');
INSERT INTO public.moon VALUES (13, 'moon93', true, 4, 'moon98');
INSERT INTO public.moon VALUES (14, 'moo093', true, 4, 'moon66');
INSERT INTO public.moon VALUES (15, 'moo09', true, 4, 'moon77');
INSERT INTO public.moon VALUES (16, 'moo088', true, 4, 'moon8887');
INSERT INTO public.moon VALUES (17, 'mo088', true, 4, 'moon8087');
INSERT INTO public.moon VALUES (18, 'mo0n88', true, 4, 'moon807');
INSERT INTO public.moon VALUES (19, 'mo0n82', true, 4, 'moon897');
INSERT INTO public.moon VALUES (20, 'mo0n81', true, 4, 'moon097');
INSERT INTO public.moon VALUES (21, 'mo0981', true, 4, 'moonn07');
INSERT INTO public.moon VALUES (22, 'mo00981', true, 4, 'mooonn07');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'mars', NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'neptune', NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'jupiter', NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'unarus', NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'saturn', NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'pluto', NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'yolo', NULL, false, 1);
INSERT INTO public.planet VALUES (9, 'abcsd', NULL, false, 1);
INSERT INTO public.planet VALUES (10, 'saturnn', NULL, false, 1);
INSERT INTO public.planet VALUES (11, 'budg', NULL, false, 1);
INSERT INTO public.planet VALUES (12, 'shukra', NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 6887, 'red', 'a', 1);
INSERT INTO public.star VALUES (2, 6887, 'blue', 'b', 1);
INSERT INTO public.star VALUES (3, 6887, 'blue', 'c', 1);
INSERT INTO public.star VALUES (4, 6887, 'blue', 'd', 1);
INSERT INTO public.star VALUES (6, 456, 'red', 'sakshi', NULL);
INSERT INTO public.star VALUES (5, 6887, ' green', 's', 2);
INSERT INTO public.star VALUES (7, 7888, 'light', 'h', 3);
INSERT INTO public.star VALUES (8, 7888, 'light', 'j', 4);
INSERT INTO public.star VALUES (9, 7888, 'light', 'k', 5);
INSERT INTO public.star VALUES (10, 7888, 'light', '4', 6);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 4, true);


--
-- Name: galaxy_galaxt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxt_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 5, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet name_unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique_planet UNIQUE (name);


--
-- Name: star name_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'a', 1, 1, 1, true, true, 'a', 1);
INSERT INTO public.comet VALUES (2, 'b', 1, 2, 1, true, true, 'b', 2);
INSERT INTO public.comet VALUES (3, 'c', 1, 3, 1, true, true, 'c', 3);
INSERT INTO public.comet VALUES (4, 'd', 1, 4, 1, true, true, 'd', 4);
INSERT INTO public.comet VALUES (5, 'e', 1, 5, 1, true, true, 'e', 5);
INSERT INTO public.comet VALUES (6, 'f', 1, 6, 1, true, true, 'f', 6);
INSERT INTO public.comet VALUES (7, 'g', 1, 7, 1, true, true, 'g', 1);
INSERT INTO public.comet VALUES (8, 'h', 1, 8, 1, true, true, 'h', 2);
INSERT INTO public.comet VALUES (9, 'i', 1, 9, 1, true, true, 'i', 3);
INSERT INTO public.comet VALUES (10, 'j', 1, 10, 1, true, true, 'j', 4);
INSERT INTO public.comet VALUES (11, 'k', 1, 11, 1, true, true, 'k', 5);
INSERT INTO public.comet VALUES (12, 'l', 1, 12, 1, true, true, 'l', 6);
INSERT INTO public.comet VALUES (13, 'm', 1, 13, 1, true, true, 'm', 1);
INSERT INTO public.comet VALUES (14, 'n', 1, 14, 1, true, true, 'n', 2);
INSERT INTO public.comet VALUES (15, 'o', 1, 15, 1, true, true, 'o', 3);
INSERT INTO public.comet VALUES (16, 'p', 1, 16, 1, true, true, 'p', 4);
INSERT INTO public.comet VALUES (17, 'q', 1, 17, 1, true, true, 'q', 5);
INSERT INTO public.comet VALUES (18, 'r', 1, 18, 1, true, true, 'r', 6);
INSERT INTO public.comet VALUES (19, 's', 1, 19, 1, true, true, 's', 1);
INSERT INTO public.comet VALUES (20, 't', 1, 20, 1, true, true, 't', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 1, 1, 1, true, true, 'a');
INSERT INTO public.galaxy VALUES (2, 'b', 1, 2, 1, true, true, 'b');
INSERT INTO public.galaxy VALUES (3, 'c', 1, 3, 1, true, true, 'c');
INSERT INTO public.galaxy VALUES (4, 'd', 1, 4, 1, true, true, 'd');
INSERT INTO public.galaxy VALUES (5, 'e', 1, 5, 1, true, true, 'e');
INSERT INTO public.galaxy VALUES (6, 'b', 1, 6, 1, true, true, 'b');
INSERT INTO public.galaxy VALUES (7, 'c', 1, 7, 1, true, true, 'c');
INSERT INTO public.galaxy VALUES (8, 'd', 1, 8, 1, true, true, 'd');
INSERT INTO public.galaxy VALUES (9, 'e', 1, 9, 1, true, true, 'e');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 1, 1, 1, true, true, 'a', 1);
INSERT INTO public.moon VALUES (2, 'b', 1, 2, 1, true, true, 'b', 2);
INSERT INTO public.moon VALUES (3, 'c', 1, 3, 1, true, true, 'c', 3);
INSERT INTO public.moon VALUES (4, 'd', 1, 4, 1, true, true, 'd', 4);
INSERT INTO public.moon VALUES (5, 'e', 1, 5, 1, true, true, 'e', 5);
INSERT INTO public.moon VALUES (6, 'f', 1, 6, 1, true, true, 'f', 6);
INSERT INTO public.moon VALUES (7, 'g', 1, 7, 1, true, true, 'g', 1);
INSERT INTO public.moon VALUES (8, 'h', 1, 8, 1, true, true, 'h', 2);
INSERT INTO public.moon VALUES (9, 'i', 1, 9, 1, true, true, 'i', 3);
INSERT INTO public.moon VALUES (10, 'j', 1, 10, 1, true, true, 'j', 4);
INSERT INTO public.moon VALUES (11, 'k', 1, 11, 1, true, true, 'k', 5);
INSERT INTO public.moon VALUES (12, 'l', 1, 12, 1, true, true, 'l', 6);
INSERT INTO public.moon VALUES (13, 'm', 1, 13, 1, true, true, 'm', 1);
INSERT INTO public.moon VALUES (14, 'n', 1, 14, 1, true, true, 'n', 2);
INSERT INTO public.moon VALUES (15, 'o', 1, 15, 1, true, true, 'o', 3);
INSERT INTO public.moon VALUES (16, 'p', 1, 16, 1, true, true, 'p', 4);
INSERT INTO public.moon VALUES (17, 'q', 1, 17, 1, true, true, 'q', 5);
INSERT INTO public.moon VALUES (18, 'r', 1, 18, 1, true, true, 'r', 6);
INSERT INTO public.moon VALUES (19, 's', 1, 19, 1, true, true, 's', 1);
INSERT INTO public.moon VALUES (20, 't', 1, 20, 1, true, true, 't', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 1, 1, 1, true, true, 'a', 1);
INSERT INTO public.planet VALUES (2, 'b', 1, 2, 1, true, true, 'b', 2);
INSERT INTO public.planet VALUES (3, 'c', 1, 3, 1, true, true, 'c', 3);
INSERT INTO public.planet VALUES (4, 'd', 1, 4, 1, true, true, 'd', 4);
INSERT INTO public.planet VALUES (5, 'e', 1, 5, 1, true, true, 'e', 5);
INSERT INTO public.planet VALUES (6, 'f', 1, 6, 1, true, true, 'f', 6);
INSERT INTO public.planet VALUES (7, 'g', 1, 7, 1, true, true, 'g', 1);
INSERT INTO public.planet VALUES (8, 'h', 1, 8, 1, true, true, 'h', 2);
INSERT INTO public.planet VALUES (9, 'i', 1, 9, 1, true, true, 'i', 3);
INSERT INTO public.planet VALUES (10, 'j', 1, 10, 1, true, true, 'j', 4);
INSERT INTO public.planet VALUES (11, 'k', 1, 11, 1, true, true, 'k', 5);
INSERT INTO public.planet VALUES (12, 'l', 1, 12, 1, true, true, 'l', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 1, 1, 1, true, true, 'a', 1);
INSERT INTO public.star VALUES (2, 'b', 1, 2, 1, true, true, 'b', 2);
INSERT INTO public.star VALUES (3, 'c', 1, 3, 1, true, true, 'c', 3);
INSERT INTO public.star VALUES (4, 'd', 1, 4, 1, true, true, 'd', 4);
INSERT INTO public.star VALUES (5, 'e', 1, 5, 1, true, true, 'e', 5);
INSERT INTO public.star VALUES (6, 'f', 1, 6, 1, true, true, 'f', 6);


--
-- Name: comet comet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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


