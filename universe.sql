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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric
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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_missions; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_missions (
    star_missions_id integer NOT NULL,
    name character varying(60),
    mission_succesful boolean,
    crew_members_number integer NOT NULL,
    report text
);


ALTER TABLE public.star_missions OWNER TO freecodecamp;

--
-- Name: star_missions_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_missions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_missions_id_seq OWNER TO freecodecamp;

--
-- Name: star_missions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_missions_id_seq OWNED BY public.star_missions.star_missions_id;


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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_missions star_missions_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_missions ALTER COLUMN star_missions_id SET DEFAULT nextval('public.star_missions_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The containig our Solar System', false, 13600, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Large spiral galaxy, nearest to Milky Way', false, 10000, 2537000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy in the local group of galaxies', false, 10000, 2730000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'A prominent spiral galaxy interacting with a smaller companion galaxy', false, 9000, 23000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Galaxy with a bright central bulge and dust lane', false, 9000, 31000000);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Dwarf irregular galaxy that is a satelite of the Milky Way', false, 13000, 163000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Io', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (3, 'Europa', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Titan', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Rhea', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Iapetus', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Dione', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Mimas', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Miranda', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Titania', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Triton', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (19, 'Phobos', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (20, 'Deimos', NULL, NULL, NULL, NULL, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest planet and closest to the Sun', false, 4600, 150, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hot and rocky planet with a thick atmosphere', false, 4600, 170, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Rocky planet with liquid surface and the only confirmed life', true, 4600, 0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Cold, rocky planet with evidence of ancient water', false, 4600, 630, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet, a gas giant with a massive atmosphere', false, 4600, 630, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas giant famous for its icy rings', false, 4600, 1280, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant with an extrime axial tilt', false, 4600, 2720, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Distant ice giant with powerful winds and blue atmosphere', false, 4600, 4350, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Exoplanet orbiting the closest star to the Sun', false, 4850, 400000000, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'Exoplanet located in the habitable zone of its star', false, 4000, 60000000, 3);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1E', 'Rocky exoplanet in the TRAPPIST-1 system', false, 7600, 3900000, 4);
INSERT INTO public.planet VALUES (12, '51 Pegasi b', 'One of the first exoplanets discovered around a Sun-like star', false, 8000, 4700000000, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Sirius', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Vega', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Polaris', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star_missions; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_missions VALUES (2, 'Alfa', NULL, 10, NULL);
INSERT INTO public.star_missions VALUES (3, 'Omega', NULL, 7, NULL);
INSERT INTO public.star_missions VALUES (4, 'Gamma', NULL, 13, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_missions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_missions_id_seq', 4, true);


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
-- Name: star_missions star_missions_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_missions
    ADD CONSTRAINT star_missions_pkey PRIMARY KEY (star_missions_id);


--
-- Name: star_missions star_missions_report_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_missions
    ADD CONSTRAINT star_missions_report_key UNIQUE (report);


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

