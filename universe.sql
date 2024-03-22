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
    name character varying(50),
    has_life boolean NOT NULL
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
    description text,
    galaxy_type character varying(50) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer
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
    description text,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
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
    name character varying(100) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
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
    name character varying(100) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
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

INSERT INTO public.earth VALUES (10, 'Bumiku', true);
INSERT INTO public.earth VALUES (11, 'Bumimu', true);
INSERT INTO public.earth VALUES (12, 'Bumi', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 'Spiral', 100000, 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy to Milky Way', 'Spiral', 2200000, 13000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third-largest galaxy in the Local Group', 'Spiral', 3000000, 13000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Located in the Virgo Cluster', 'Elliptical', 53000000, 13000);
INSERT INTO public.galaxy VALUES (5, 'NGC 1300', 'Barred spiral galaxy', 'Spiral', 61000000, 13000);
INSERT INTO public.galaxy VALUES (6, 'Messier 81', 'Located in the Ursa Major constellation', 'Spiral', 11000000, 13000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (19, 'Luna', 'The Earth natural satellite.', true, 38440, false, 8);
INSERT INTO public.moon VALUES (20, 'Phobos', 'The larger and closer of Mars.', true, 35260, false, 7);
INSERT INTO public.moon VALUES (21, 'Deimos', 'The smaller and more distant of Mars.', true, 53084, false, 9);
INSERT INTO public.moon VALUES (22, 'Io', 'The innermost.', true, 45654, false, 10);
INSERT INTO public.moon VALUES (23, 'Dione', 'A moon of Saturn.', true, 49087, false, 12);
INSERT INTO public.moon VALUES (24, 'Ganymede', 'The largest moon of Jupiter.', true, 10700, false, 14);
INSERT INTO public.moon VALUES (25, 'Triton', 'The largest moon of Neptune.', true, 12345, false, 13);
INSERT INTO public.moon VALUES (26, 'Ariel', 'A moon of Uranus.', true, 56785, false, 14);
INSERT INTO public.moon VALUES (27, 'Miranda', 'The smallest and innermost of Uranus.', true, 12908, false, 12);
INSERT INTO public.moon VALUES (28, 'Charon', 'The largest moon of Pluto.', true, 56209, false, 15);
INSERT INTO public.moon VALUES (29, 'Nerein', 'The third-largest moon of Neptune.', true, 55133, false, 12);
INSERT INTO public.moon VALUES (30, 'Umbriel', 'A moon of Uranus.', true, 87654, false, 13);
INSERT INTO public.moon VALUES (31, 'Iapetus', 'The third-largest moon of Saturn.', true, 35613, false, 13);
INSERT INTO public.moon VALUES (32, 'Titan', 'The largest moon of Saturn.', true, 67890, false, 8);
INSERT INTO public.moon VALUES (33, 'Proteus', 'The second-largest moon of Neptune.', true, 11760, false, 9);
INSERT INTO public.moon VALUES (34, 'Nereid', 'The third-largest moon of Neptune', true, 89012, false, 12);
INSERT INTO public.moon VALUES (35, 'Enceladus', 'A small moon of Saturn.', true, 23801, false, 10);
INSERT INTO public.moon VALUES (36, 'Mimas', 'Known for its large crater.', true, 39076, false, 9);
INSERT INTO public.moon VALUES (37, 'Hyperion', 'An irregularly shaped moon of Saturn.', true, 89075, false, 8);
INSERT INTO public.moon VALUES (38, 'Phoebe', 'Known for its irregular orbit.', true, 76521, false, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'Mercury', 'The smallest planet in the Solar System.', true, 4500, false, 13);
INSERT INTO public.planet VALUES (8, 'Venus', 'The second planet from the Sun.', true, 4600, false, 14);
INSERT INTO public.planet VALUES (9, 'Earth', 'The third planet from the Sun.', true, 4700, true, 15);
INSERT INTO public.planet VALUES (10, 'Mars', 'The fourth planet from the Sun.', true, 4800, false, 16);
INSERT INTO public.planet VALUES (11, 'Jupiter', 'The largest planet in the Solar System.', false, 4900, false, 17);
INSERT INTO public.planet VALUES (12, 'Saturn', 'The sixth planet from the Sun.', false, 5000, false, 18);
INSERT INTO public.planet VALUES (13, 'Uranus', 'The seventh planet from the Sun.', false, 5001, false, 13);
INSERT INTO public.planet VALUES (14, 'Neptune', 'The farthest known solar planet from the Sun.', false, 4600, false, 17);
INSERT INTO public.planet VALUES (15, 'Pluto', 'A dwarf planet in the Kuiper belt.', true, 4000, false, 16);
INSERT INTO public.planet VALUES (16, 'Alpha Centauri b', 'An exoplanet.', true, 4098, false, 13);
INSERT INTO public.planet VALUES (17, 'Kepler', 'An exoplanet orbiting the Star Kepler.', true, 5041, false, 14);
INSERT INTO public.planet VALUES (18, 'WASP', 'A hot Jupiter exoplanet.', false, 5000, false, 15);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (13, 'Sun', 'Our star', true, 4600, false, 1);
INSERT INTO public.star VALUES (14, 'Alpha Centauri A', 'Primary star of Alpha Centauri system', true, 6000, false, 1);
INSERT INTO public.star VALUES (15, 'Betelgeuse', 'Red supergiant in the constellation Orion', true, 8000, false, 1);
INSERT INTO public.star VALUES (16, 'Proxima Centauri', 'Closest known star to the Sun', true, 4000, false, 1);
INSERT INTO public.star VALUES (17, 'Sirius', 'Brightest star in the night sky', true, 2500, false, 1);
INSERT INTO public.star VALUES (18, 'Vega', 'Brightest star in the constellation Lyra', true, 4500, false, 1);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 18, true);


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

