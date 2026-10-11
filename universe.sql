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
    name character varying(40) NOT NULL,
    galaxy_type character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(12,2),
    description text
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
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    diameter_km integer,
    discovered_year integer,
    is_spherical boolean,
    description text
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
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    planet_types character varying(30) NOT NULL,
    diameter_km integer,
    has_life boolean,
    is_spherical boolean,
    description text
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
-- Name: space_mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_mission (
    space_mission_id integer NOT NULL,
    name character varying(40) NOT NULL,
    launch_year integer NOT NULL,
    agency character varying(40),
    description text
);


ALTER TABLE public.space_mission OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_mission_space_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_mission_space_mission_id_seq OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_mission_space_mission_id_seq OWNED BY public.space_mission.space_mission_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
    description text
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_mission space_mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission ALTER COLUMN space_mission_id SET DEFAULT nextval('public.space_mission_space_mission_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 13600, 0.00, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10000, 2537000.00, 'Nearest large galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 10000, 2730000.00, 'Third largest member of the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Irregular', 13000, 163000.00, 'Satellite galaxy of the Milky Way');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Lenticular', 13250, 29350000.00, 'Has a bright nucleus and a large central bulge');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral', 400, 23000000.00, 'Interacting grand-design spiral galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 3474, NULL, true, 'Earth''s only natural satellite');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 22, 1877, false, 'Larger moon of Mars');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 12, 1877, false, 'Smaller moon of Mars');
INSERT INTO public.moon VALUES (4, 'Io', 5, 3643, 1610, true, 'Most volcanically active body in the solar system');
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3122, 1610, true, 'Icy moon with a subsurface ocean');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5268, 1610, true, 'Largest moon in the solar system');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 4821, 1610, true, 'Heavily cratered moon of Jupiter');
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, 167, 1892, false, 'Irregular reddish moon of Jupiter');
INSERT INTO public.moon VALUES (9, 'Titan', 6, 5150, 1655, true, 'Has a thick atmosphere and methane lakes');
INSERT INTO public.moon VALUES (10, 'Enceladus', 6, 504, 1789, true, 'Ice geysers erupt from its south pole');
INSERT INTO public.moon VALUES (11, 'Mimas', 6, 396, 1789, true, 'Has a giant crater called Herschel');
INSERT INTO public.moon VALUES (12, 'Rhea', 6, 1527, 1672, true, 'Second largest moon of Saturn');
INSERT INTO public.moon VALUES (13, 'Iapetus', 6, 1469, 1671, true, 'Has a two-toned surface');
INSERT INTO public.moon VALUES (14, 'Dione', 6, 1123, 1684, true, 'Icy moon of Saturn');
INSERT INTO public.moon VALUES (15, 'Tethys', 6, 1062, 1684, true, 'Has a huge canyon called Ithaca Chasma');
INSERT INTO public.moon VALUES (16, 'Titania', 7, 1578, 1787, true, 'Largest moon of Uranus');
INSERT INTO public.moon VALUES (17, 'Oberon', 7, 1523, 1787, true, 'Outermost large moon of Uranus');
INSERT INTO public.moon VALUES (18, 'Miranda', 7, 472, 1948, true, 'Has extreme surface features');
INSERT INTO public.moon VALUES (19, 'Ariel', 7, 1158, 1851, true, 'Brightest moon of Uranus');
INSERT INTO public.moon VALUES (20, 'Triton', 8, 2707, 1846, true, 'Largest moon of Neptune with retrograde orbit');
INSERT INTO public.moon VALUES (21, 'Nereid', 8, 340, 1949, false, 'Moon of Neptune with a very eccentric orbit');
INSERT INTO public.moon VALUES (22, 'Proteus', 8, 420, 1989, false, 'Second largest moon of Neptune');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Terrestrial', 4879, false, true, 'Smallest planet and closest to the Sun');
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Terrestrial', 12104, false, true, 'Hottest planet with a thick atmosphere');
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Terrestrial', 12742, true, true, 'The only known planet with life');
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Terrestrial', 6779, false, true, 'The red planet');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Gas Giant', 139820, false, true, 'Largest planet in the solar system');
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Gas Giant', 116460, false, true, 'Famous for its rings');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Ice Giant', 50724, false, true, 'Rotates on its side');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Ice Giant', 49244, false, true, 'Windiest planet');
INSERT INTO public.planet VALUES (9, 'Proxima b', 3, 'Terrestrial', 14000, false, true, 'Exoplanet in the habitable zone of Proxima Centauri');
INSERT INTO public.planet VALUES (10, 'Proxima c', 3, 'Super Earth', 24000, false, true, 'Candidate super-Earth orbiting Proxima Centauri');
INSERT INTO public.planet VALUES (11, 'Mirach I', 4, 'Gas Giant', 90000, false, true, 'Imaginary gas giant orbiting Mirach');
INSERT INTO public.planet VALUES (12, 'Dorado Prime', 5, 'Ice Giant', 45000, false, true, 'Imaginary ice giant orbiting S Doradus');


--
-- Data for Name: space_mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_mission VALUES (1, 'Voyager 1', 1977, 'NASA', 'Farthest human-made object from Earth');
INSERT INTO public.space_mission VALUES (2, 'Apollo 11', 1969, 'NASA', 'First crewed Moon landing');
INSERT INTO public.space_mission VALUES (3, 'Cassini-Huygens', 1997, 'NASA/ESA/ASI', 'Explored Saturn and its moons');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4600, true, 'The star at the center of our solar system');
INSERT INTO public.star VALUES (2, 'Sirius', 1, 242, true, 'Brightest star in the night sky');
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, 4850, true, 'Closest known star to the Sun');
INSERT INTO public.star VALUES (4, 'Mirach', 2, 3000, true, 'Red giant in the constellation Andromeda');
INSERT INTO public.star VALUES (5, 'S Doradus', 4, 5, true, 'Luminous blue variable star');
INSERT INTO public.star VALUES (6, 'SN 2011dh', 6, 1, true, 'Supernova observed in the Whirlpool galaxy');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_mission_space_mission_id_seq', 3, true);


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
-- Name: space_mission space_mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_name_key UNIQUE (name);


--
-- Name: space_mission space_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_pkey PRIMARY KEY (space_mission_id);


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
