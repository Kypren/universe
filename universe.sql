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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id integer NOT NULL,
    name character varying(20) NOT NULL,
    surname character varying(20) NOT NULL
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronauts_astronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronauts_astronaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronauts_astronaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronauts_astronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronauts_astronaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    type character varying(20) NOT NULL,
    description text,
    has_life boolean NOT NULL
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
    description text,
    type character varying(20)
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
    description text,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    circumference integer NOT NULL,
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
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    type character varying(20)
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
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronauts_astronaut_id_seq'::regclass);


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
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 'Filip', 'Szewczyk');
INSERT INTO public.astronaut VALUES (2, 'Ivo', 'Żurawek');
INSERT INTO public.astronaut VALUES (3, 'Tomek', 'Skrzypiński');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'kurwix', 'duża', 'kurwinoxy', true);
INSERT INTO public.galaxy VALUES (2, 'kurwix1', 'duża', 'kurwinoxy', true);
INSERT INTO public.galaxy VALUES (3, 'kurwix3', 'duża', 'kurwinoxy', true);
INSERT INTO public.galaxy VALUES (4, 'kurwix4', 'duża', 'kurwinoxy', true);
INSERT INTO public.galaxy VALUES (5, 'kurwix5', 'duża', 'kurwinoxy', true);
INSERT INTO public.galaxy VALUES (6, 'kurwix6', 'duża', 'kurwinoxy', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Lampa', 1, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (3, 'Lampa1', 2, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (4, 'Lampa2', 3, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (5, 'Lampa3', 4, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (6, 'Lampa4', 5, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (7, 'Lampa5', 6, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (8, 'Lampa6', 7, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (9, 'Lampa7', 8, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (10, 'Lampa8', 9, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (11, 'Lampa9', 10, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (12, 'Lampa10', 1, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (13, 'Lampa11', 2, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (14, 'Lampa12', 3, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (15, 'Lampa13', 4, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (16, 'Lampa14', 5, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (17, 'Lampa15', 6, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (18, 'Lampa16', 7, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (19, 'Lampa17', 8, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (20, 'Lampa18', 9, 'Ale świeci', 'Okrągły');
INSERT INTO public.moon VALUES (21, 'Lampa19', 10, 'Ale świeci', 'Okrągły');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Ziemia', 'Ivo tu żyje', 22.4, true, 0, 63234, 1);
INSERT INTO public.planet VALUES (2, 'Ziemia1', 'Ivo tu żyje', 32.4, true, 0, 63234, 2);
INSERT INTO public.planet VALUES (3, 'Ziemia2', 'Ivo tu żyje', 342.4, true, 0, 63234, 3);
INSERT INTO public.planet VALUES (4, 'Ziemia3', 'Ivo tu żyje', 342.4, true, 0, 63234, 4);
INSERT INTO public.planet VALUES (5, 'Ziemia4', 'Ivo tu żyje', 342.4, true, 0, 63234, 5);
INSERT INTO public.planet VALUES (6, 'Ziemia5', 'Ivo tu żyje', 342.4, true, 0, 63234, 6);
INSERT INTO public.planet VALUES (7, 'Ziemia6', 'Ivo tu żyje', 342.4, true, 0, 63234, 1);
INSERT INTO public.planet VALUES (8, 'Ziemia7', 'Ivo tu żyje', 342.4, true, 0, 63234, 2);
INSERT INTO public.planet VALUES (9, 'Ziemia8', 'Ivo tu żyje', 342.4, true, 0, 63234, 3);
INSERT INTO public.planet VALUES (10, 'Ziemia9', 'Ivo tu żyje', 342.4, true, 0, 63234, 4);
INSERT INTO public.planet VALUES (11, 'Ziemia10', 'Ivo tu żyje', 342.4, true, 0, 63234, 5);
INSERT INTO public.planet VALUES (12, 'Ziemia11', 'Ivo tu żyje', 342.4, true, 0, 63234, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'gwiazdeczka', 1, 'Ale się świeci', 'Okrągła');
INSERT INTO public.star VALUES (2, 'gwiazdeczka1', 2, 'Ale się świeci', 'Okrągła');
INSERT INTO public.star VALUES (3, 'gwiazdeczka2', 3, 'Ale się świeci', 'Okrągła');
INSERT INTO public.star VALUES (4, 'gwiazdeczka3', 4, 'Ale się świeci', 'Okrągła');
INSERT INTO public.star VALUES (5, 'gwiazdeczka4', 5, 'Ale się świeci', 'Okrągła');
INSERT INTO public.star VALUES (6, 'gwiazdeczka5', 6, 'Ale się świeci', 'Okrągła');


--
-- Name: astronauts_astronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronauts_astronaut_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronaut astronauts_astronaut_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronauts_astronaut_id_key UNIQUE (astronaut_id);


--
-- Name: astronaut astronauts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronauts_pkey PRIMARY KEY (astronaut_id);


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
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

