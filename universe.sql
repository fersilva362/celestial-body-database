
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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    name character varying NOT NULL,
    black_hole_id numeric NOT NULL,
    rotation integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    precesion boolean,
    progress integer,
    test integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_name_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_name_seq OWNER TO freecodecamp;

--
-- Name: galaxy_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_name_seq OWNED BY public.galaxy.name;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    moon_id integer NOT NULL,
    rotation numeric,
    planet_id integer,
    test integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_name_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_name_seq OWNER TO freecodecamp;

--
-- Name: moon_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_name_seq OWNED BY public.moon.name;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    rotation numeric,
    star_id integer,
    test integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_name_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_name_seq OWNER TO freecodecamp;

--
-- Name: planet_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_name_seq OWNED BY public.planet.name;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    star_id integer NOT NULL,
    rotation text,
    precesion boolean,
    fk_name integer,
    galaxy_id integer,
    test integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_name_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_name_seq OWNER TO freecodecamp;

--
-- Name: star_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_name_seq OWNED BY public.star.name;


--
-- Name: galaxy name; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN name SET DEFAULT nextval('public.galaxy_name_seq'::regclass);


--
-- Name: moon name; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN name SET DEFAULT nextval('public.moon_name_seq'::regclass);


--
-- Name: planet name; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN name SET DEFAULT nextval('public.planet_name_seq'::regclass);


--
-- Name: star name; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN name SET DEFAULT nextval('public.star_name_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES ('1', 2, NULL);
INSERT INTO public.black_hole VALUES ('3', 5, NULL);
INSERT INTO public.black_hole VALUES ('6', 7, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('0', 1, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('151', 521, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('1501', 5021, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('15701', 50271, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('2', 22, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('3', 33, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('4', 44, false, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('8611', 8575, 32.04, NULL, NULL);
INSERT INTO public.moon VALUES ('861', 875, 2.04, NULL, NULL);
INSERT INTO public.moon VALUES ('81', 85, 2.0, NULL, NULL);
INSERT INTO public.moon VALUES ('82', 83, 2.5, NULL, NULL);
INSERT INTO public.moon VALUES ('85', 89, 9.6, NULL, NULL);
INSERT INTO public.moon VALUES ('8772', 783, 2.775, NULL, NULL);
INSERT INTO public.moon VALUES ('875', 879, 9.76, NULL, NULL);
INSERT INTO public.moon VALUES ('772', 683, 62.75, NULL, NULL);
INSERT INTO public.moon VALUES ('685', 69, 99.76, NULL, NULL);
INSERT INTO public.moon VALUES ('31', 78, 72.60, NULL, NULL);
INSERT INTO public.moon VALUES ('792', 6983, 62.795, NULL, NULL);
INSERT INTO public.moon VALUES ('6985', 969, 999.76, NULL, NULL);
INSERT INTO public.moon VALUES ('2', 22, 0.2, NULL, NULL);
INSERT INTO public.moon VALUES ('3', 33, 0.3, NULL, NULL);
INSERT INTO public.moon VALUES ('4', 44, 0.4, NULL, NULL);
INSERT INTO public.moon VALUES ('1', 1, 1.1, NULL, NULL);
INSERT INTO public.moon VALUES ('333', 3333, 33.3, NULL, NULL);
INSERT INTO public.moon VALUES ('11', 111, 11.1, NULL, NULL);
INSERT INTO public.moon VALUES ('2222', 222222, 22.3, NULL, NULL);
INSERT INTO public.moon VALUES ('92', 922, 0.888, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('1501', 5021, 0.2, NULL, NULL);
INSERT INTO public.planet VALUES ('15501', 50521, 0.2, NULL, NULL);
INSERT INTO public.planet VALUES ('155001', 505021, 2.2, NULL, NULL);
INSERT INTO public.planet VALUES ('151', 5051, 2.2, NULL, NULL);
INSERT INTO public.planet VALUES ('1651', 50651, 2.02, NULL, NULL);
INSERT INTO public.planet VALUES ('16751', 506751, 2.072, NULL, NULL);
INSERT INTO public.planet VALUES ('6751', 6751, 2.042, NULL, NULL);
INSERT INTO public.planet VALUES ('671', 675, 2.04, NULL, NULL);
INSERT INTO public.planet VALUES ('6711', 6175, 12.04, NULL, NULL);
INSERT INTO public.planet VALUES ('67811', 86175, 12.04, NULL, NULL);
INSERT INTO public.planet VALUES ('867811', 861575, 12.04, NULL, NULL);
INSERT INTO public.planet VALUES ('8611', 8575, 32.04, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('11', 21, 'xim', false, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('101', 221, 'xims', false, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('91', 521, 'dxims', false, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('941', 2521, 'dximss', false, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('9481', 25521, 'dxidmss', false, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('94981', 2555521, 'dxidddmss', false, NULL, NULL, NULL);


--
-- Name: galaxy_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_name_seq', 1, false);


--
-- Name: moon_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_name_seq', 1, false);


--
-- Name: planet_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_name_seq', 1, false);


--
-- Name: star_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_name_seq', 1, false);


--
-- Name: black_hole poosiitioon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT poosiitioon_pk PRIMARY KEY (black_hole_id);


--
-- Name: galaxy poosition_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT poosition_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon poositioon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT poositioon_pk PRIMARY KEY (moon_id);


--
-- Name: planet position2_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT position2_pk PRIMARY KEY (planet_id);


--
-- Name: star position_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT position_pk PRIMARY KEY (star_id);


--
-- Name: star unique_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_column UNIQUE (name);


--
-- Name: planet unique_columna; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_columna UNIQUE (name);


--
-- Name: moon unique_columnas; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_columnas UNIQUE (name);


--
-- Name: black_hole unique_columnas1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unique_columnas1 UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: black_hole_name; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX black_hole_name ON public.black_hole USING btree (name);


--
-- Name: galaxy_name; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX galaxy_name ON public.galaxy USING btree (name);


--
-- Name: moon_name; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX moon_name ON public.moon USING btree (name);


--
-- Name: planet_name; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX planet_name ON public.planet USING btree (name);


--
-- Name: star_name; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX star_name ON public.star USING btree (name);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--