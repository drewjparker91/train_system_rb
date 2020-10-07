--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: cities; Type: TABLE; Schema: public; Owner: drewparker
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.cities OWNER TO drewparker;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: drewparker
--

CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO drewparker;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drewparker
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: cities_trains; Type: TABLE; Schema: public; Owner: drewparker
--

CREATE TABLE public.cities_trains (
    id integer NOT NULL,
    train_id integer,
    city_id integer
);


ALTER TABLE public.cities_trains OWNER TO drewparker;

--
-- Name: cities_trains_id_seq; Type: SEQUENCE; Schema: public; Owner: drewparker
--

CREATE SEQUENCE public.cities_trains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_trains_id_seq OWNER TO drewparker;

--
-- Name: cities_trains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drewparker
--

ALTER SEQUENCE public.cities_trains_id_seq OWNED BY public.cities_trains.id;


--
-- Name: trains; Type: TABLE; Schema: public; Owner: drewparker
--

CREATE TABLE public.trains (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.trains OWNER TO drewparker;

--
-- Name: trains_id_seq; Type: SEQUENCE; Schema: public; Owner: drewparker
--

CREATE SEQUENCE public.trains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trains_id_seq OWNER TO drewparker;

--
-- Name: trains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drewparker
--

ALTER SEQUENCE public.trains_id_seq OWNED BY public.trains.id;


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: drewparker
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: cities_trains id; Type: DEFAULT; Schema: public; Owner: drewparker
--

ALTER TABLE ONLY public.cities_trains ALTER COLUMN id SET DEFAULT nextval('public.cities_trains_id_seq'::regclass);


--
-- Name: trains id; Type: DEFAULT; Schema: public; Owner: drewparker
--

ALTER TABLE ONLY public.trains ALTER COLUMN id SET DEFAULT nextval('public.trains_id_seq'::regclass);


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: drewparker
--

COPY public.cities (id, name) FROM stdin;
5	Portland
6	Seattle
\.


--
-- Data for Name: cities_trains; Type: TABLE DATA; Schema: public; Owner: drewparker
--

COPY public.cities_trains (id, train_id, city_id) FROM stdin;
\.


--
-- Data for Name: trains; Type: TABLE DATA; Schema: public; Owner: drewparker
--

COPY public.trains (id, name) FROM stdin;
5	
13	
14	
19	
22	
29	
30	
36	blue train EDIT
39	Red Train
40	Blue Train
\.


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: drewparker
--

SELECT pg_catalog.setval('public.cities_id_seq', 6, true);


--
-- Name: cities_trains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: drewparker
--

SELECT pg_catalog.setval('public.cities_trains_id_seq', 1, false);


--
-- Name: trains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: drewparker
--

SELECT pg_catalog.setval('public.trains_id_seq', 40, true);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: drewparker
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: cities_trains cities_trains_pkey; Type: CONSTRAINT; Schema: public; Owner: drewparker
--

ALTER TABLE ONLY public.cities_trains
    ADD CONSTRAINT cities_trains_pkey PRIMARY KEY (id);


--
-- Name: trains trains_pkey; Type: CONSTRAINT; Schema: public; Owner: drewparker
--

ALTER TABLE ONLY public.trains
    ADD CONSTRAINT trains_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

