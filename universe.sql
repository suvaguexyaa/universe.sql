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
    number integer,
    seek integer,
    asteroids numeric(6,1),
    description text,
    is_cool boolean
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
    number integer,
    seek integer,
    asteroids numeric(6,1),
    description text,
    is_cool boolean,
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
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number integer,
    distance numeric(6,1),
    description text,
    is_visible boolean
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    number integer,
    seek integer,
    asteroids numeric(6,1),
    description text,
    is_cool boolean,
    planet_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    number integer,
    seek integer,
    asteroids numeric(6,1),
    description text,
    is_cool boolean,
    star_id integer NOT NULL,
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
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 100, 2500.5, 'Our home galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, 200, 1800.5, 'A nearby spiral galaxy', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3, 150, 900.5, 'A small spiral galaxy', true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 4, 300, 1200.5, 'A beautiful spiral galaxy', true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 5, 250, 700.5, 'A bright galaxy with a large bulge', true);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 6, 350, 500.5, 'A ring-shaped galaxy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 10, 0.0, 'Earth natural satellite', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 20, 0.0, 'Moon of Mars', true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 3, 30, 0.0, 'Second moon of Mars', true, 4);
INSERT INTO public.moon VALUES (4, 'Io', 4, 40, 0.0, 'Volcanic moon of Jupiter', true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 50, 0.0, 'Icy moon of Jupiter', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 6, 60, 0.0, 'Largest moon in the solar system', true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 7, 70, 0.0, 'Moon of Jupiter', true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 8, 80, 0.0, 'Moon of Saturn', true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 9, 90, 0.0, 'Icy moon of Saturn', true, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 10, 100, 0.0, 'Small moon of Saturn', true, 6);
INSERT INTO public.moon VALUES (11, 'Rhea', 11, 110, 0.0, 'Moon of Saturn', true, 6);
INSERT INTO public.moon VALUES (12, 'Titania', 12, 120, 0.0, 'Moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (13, 'Oberon', 13, 130, 0.0, 'Moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 14, 140, 0.0, 'Moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (15, 'Ariel', 15, 150, 0.0, 'Moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (16, 'Triton', 16, 160, 0.0, 'Largest moon of Neptune', true, 8);
INSERT INTO public.moon VALUES (17, 'Proteus', 17, 170, 0.0, 'Moon of Neptune', true, 8);
INSERT INTO public.moon VALUES (18, 'Nereid', 18, 180, 0.0, 'Moon of Neptune', true, 8);
INSERT INTO public.moon VALUES (19, 'Moon X', 19, 190, 0.0, 'Fictional moon', false, 9);
INSERT INTO public.moon VALUES (20, 'Moon Y', 20, 200, 0.0, 'Fictional moon', false, 10);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Orion', 1, 1344.5, 'A bright nebula in Orion', true);
INSERT INTO public.nebula VALUES (2, 'Eagle', 2, 7000.0, 'Home of the famous Pillars of Creation', true);
INSERT INTO public.nebula VALUES (3, 'Crab', 3, 6500.0, 'A supernova remnant', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 10, 0.0, 'Smallest planet', true, 1, 1);
INSERT INTO public.planet VALUES ('Venus', 2, 20, 0.0, 'Hottest planet', true, 2, 1);
INSERT INTO public.planet VALUES ('Earth', 3, 30, 0.0, 'Our home planet', true, 3, 1);
INSERT INTO public.planet VALUES ('Mars', 4, 40, 0.0, 'The red planet', true, 4, 1);
INSERT INTO public.planet VALUES ('Jupiter', 5, 50, 0.0, 'Largest planet', true, 5, 1);
INSERT INTO public.planet VALUES ('Saturn', 6, 60, 0.0, 'Planet with beautiful rings', true, 6, 1);
INSERT INTO public.planet VALUES ('Uranus', 7, 70, 0.0, 'An ice giant', true, 7, 1);
INSERT INTO public.planet VALUES ('Neptune', 8, 80, 0.0, 'A distant blue planet', true, 8, 1);
INSERT INTO public.planet VALUES ('Planet A', 9, 90, 0.0, 'A fictional planet', false, 9, 2);
INSERT INTO public.planet VALUES ('Planet B', 10, 100, 0.0, 'A fictional planet', false, 10, 2);
INSERT INTO public.planet VALUES ('Planet C', 11, 110, 0.0, 'A fictional planet', false, 11, 3);
INSERT INTO public.planet VALUES ('Planet D', 12, 120, 0.0, 'A fictional planet', false, 12, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 10, 0.0, 'Center of our solar system', true, 1, 1);
INSERT INTO public.star VALUES ('Sirius', 2, 20, 0.0, 'Brightest star in the night sky', true, 2, 1);
INSERT INTO public.star VALUES ('Vega', 3, 30, 0.0, 'A bright blue-white star', true, 3, 2);
INSERT INTO public.star VALUES ('Polaris', 4, 40, 0.0, 'The North Star', true, 4, 2);
INSERT INTO public.star VALUES ('Rigel', 5, 50, 0.0, 'A blue supergiant star', true, 5, 3);
INSERT INTO public.star VALUES ('Betelgeuse', 6, 60, 0.0, 'A red supergiant star', true, 6, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


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
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

