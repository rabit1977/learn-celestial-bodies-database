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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(100) NOT NULL,
    population integer NOT NULL,
    land_area numeric NOT NULL,
    capital text NOT NULL,
    has_water boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    size numeric NOT NULL,
    type text,
    has_life boolean NOT NULL,
    age integer
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
    name character varying(100) NOT NULL,
    distance_from_planet integer NOT NULL,
    radius numeric,
    composition text,
    has_atmosphere boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    mass integer NOT NULL,
    radius numeric,
    composition text,
    has_water boolean NOT NULL,
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
    name character varying(100) NOT NULL,
    temperature integer NOT NULL,
    luminosity numeric,
    classification text,
    is_alive boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'United States', 331000000, 9833517, 'Washington D.C.', true);
INSERT INTO public.earth VALUES (2, 'China', 1444216107, 9596961, 'Beijing', true);
INSERT INTO public.earth VALUES (3, 'India', 1380004385, 3287263, 'New Delhi', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1000000, 'spiral', true, 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1200000, 'spiral', false, 13000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 800000, 'spiral', false, 13000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 600000, 'spiral', false, 13000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 400000, 'spiral', false, 13000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 500000, 'spiral', false, 13000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 384400, 1737.1, 'Rocky', false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 9377, 11.1, 'Rocky', false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 23460, 6.2, 'Rocky', false, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 1070400, 2634.1, 'Icy Rocky', false, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 671100, 1560.7, 'Icy Rocky', true, 3);
INSERT INTO public.moon VALUES (6, 'Callisto', 1882700, 2410.3, 'Icy Rocky', false, 3);
INSERT INTO public.moon VALUES (7, 'Titan', 1221860, 2575.5, 'Icy Rocky', true, 4);
INSERT INTO public.moon VALUES (8, 'Rhea', 527040, 763.8, 'Icy Rocky', false, 4);
INSERT INTO public.moon VALUES (9, 'Iapetus', 3561300, 734.5, 'Rocky', false, 4);
INSERT INTO public.moon VALUES (10, 'Triton', 354760, 1353.4, 'Icy Rocky', true, 5);
INSERT INTO public.moon VALUES (11, 'Charon', 19571, 603.6, 'Rocky', false, 5);
INSERT INTO public.moon VALUES (12, 'Lapetus', 1440880, 734.5, 'Icy Rocky', false, 5);
INSERT INTO public.moon VALUES (13, 'Oberon', 583520, 761.4, 'Rocky', false, 6);
INSERT INTO public.moon VALUES (14, 'Titania', 435910, 788.4, 'Rocky', false, 6);
INSERT INTO public.moon VALUES (15, 'Miranda', 129390, 235.8, 'Rocky', false, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 294660, 536.3, 'Icy Rocky', false, 7);
INSERT INTO public.moon VALUES (17, 'Dione', 377400, 561.4, 'Icy Rocky', false, 7);
INSERT INTO public.moon VALUES (18, 'Enceladus', 238040, 252.1, 'Icy Rocky', true, 7);
INSERT INTO public.moon VALUES (19, 'Mimas', 185520, 198.2, 'Rocky', false, 7);
INSERT INTO public.moon VALUES (20, 'Hyperion', 1481000, 135, 'Rocky', false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 5973, 6371, 'Rocky', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 64171, 3389.5, 'Rocky', false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1898600, 69911, 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 568460, 58232, 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', 330, 2439.7, 'Rocky', false, 2);
INSERT INTO public.planet VALUES (6, 'Venus', 4868, 6051.8, 'Rocky', false, 2);
INSERT INTO public.planet VALUES (7, 'Neptune', 1024300, 24622, 'Ice Giant', true, 2);
INSERT INTO public.planet VALUES (8, 'Uranus', 868320, 25362, 'Ice Giant', false, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 130, 1188.3, 'Dwarf', true, 3);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 53160, 15625, 'Rocky', true, 3);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 45530, 15254, 'Gas Giant', false, 4);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 36800, 9343, 'Rocky', true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5778, 1, 'G-type main-sequence', true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 9940, 25.4, 'A1V', true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 5790, 1.519, 'G2V', true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 3600, 105000, 'M1-2Ia-Iab', true, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 3042, 0.0017, 'M6V', true, 2);
INSERT INTO public.star VALUES (6, 'Vega', 9602, 37, 'A0V', true, 2);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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

