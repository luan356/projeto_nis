--
-- PostgreSQL database cluster dump
--

-- Started on 2024-11-04 10:07:39

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13
-- Dumped by pg_dump version 14.13

-- Started on 2024-11-04 10:07:39

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

-- Completed on 2024-11-04 10:07:40

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13
-- Dumped by pg_dump version 14.13

-- Started on 2024-11-04 10:07:40

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

--
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3304 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


-- Completed on 2024-11-04 10:07:40

--
-- PostgreSQL database dump complete
--

--
-- Database "projeto_gesuas" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13
-- Dumped by pg_dump version 14.13

-- Started on 2024-11-04 10:07:40

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

--
-- TOC entry 3303 (class 1262 OID 24588)
-- Name: projeto_gesuas; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_gesuas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE projeto_gesuas OWNER TO postgres;

\connect projeto_gesuas

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

-- Completed on 2024-11-04 10:07:41

--
-- PostgreSQL database dump complete
--

--
-- Database "projeto_nis" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13
-- Dumped by pg_dump version 14.13

-- Started on 2024-11-04 10:07:41

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

--
-- TOC entry 3316 (class 1262 OID 24586)
-- Name: projeto_nis; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_nis WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE projeto_nis OWNER TO postgres;

\connect projeto_nis

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
-- TOC entry 210 (class 1259 OID 24590)
-- Name: cidadao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cidadao (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    nis character varying(11) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.cidadao OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24589)
-- Name: cidadao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cidadao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cidadao_id_seq OWNER TO postgres;

--
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 209
-- Name: cidadao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cidadao_id_seq OWNED BY public.cidadao.id;


--
-- TOC entry 3164 (class 2604 OID 24593)
-- Name: cidadao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidadao ALTER COLUMN id SET DEFAULT nextval('public.cidadao_id_seq'::regclass);


--
-- TOC entry 3310 (class 0 OID 24590)
-- Dependencies: 210
-- Data for Name: cidadao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cidadao (id, nome, nis, created_at) FROM stdin;
1	luan silva	72280173069	2024-11-04 01:49:03.842141
2	joao	21163471340	2024-11-04 01:49:49.155746
3	Sandra rosa madalena	23321183499	2024-11-04 01:53:06.543712
4	Shaolin matador de porco	03587954421	2024-11-04 01:55:34.044323
6	chico pera	13666556264	2024-11-04 02:58:14.944525
7	 	71073194007	2024-11-04 02:58:21.854974
8	sandra rosa	14110930674	2024-11-04 03:01:20.237175
9	darilio	87441154992	2024-11-04 03:20:23.833004
10	matue	29063599196	2024-11-04 03:21:08.107351
11	felipe ret	94256889855	2024-11-04 03:22:47.188464
12	felipe	11275354859	2024-11-04 03:23:00.655154
13	mario kart	61787652899	2024-11-04 03:24:28.980431
14	ugi kart	17203093495	2024-11-04 03:24:48.673923
15	mbappes	93174131234	2024-11-04 03:32:01.49311
16	neymar	85235814142	2024-11-04 03:38:24.82853
17	vini jr	99313475953	2024-11-04 03:45:12.988415
18	ricardo arona	62569475527	2024-11-04 03:47:26.548729
19	murilo bustamante	58108663818	2024-11-04 03:48:56.418491
\.


--
-- TOC entry 3318 (class 0 OID 0)
-- Dependencies: 209
-- Name: cidadao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cidadao_id_seq', 19, true);


--
-- TOC entry 3167 (class 2606 OID 24598)
-- Name: cidadao cidadao_nis_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidadao
    ADD CONSTRAINT cidadao_nis_key UNIQUE (nis);


--
-- TOC entry 3169 (class 2606 OID 24596)
-- Name: cidadao cidadao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidadao
    ADD CONSTRAINT cidadao_pkey PRIMARY KEY (id);


-- Completed on 2024-11-04 10:07:41

--
-- PostgreSQL database dump complete
--

--
-- Database "vox_tec" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13
-- Dumped by pg_dump version 14.13

-- Started on 2024-11-04 10:07:41

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

--
-- TOC entry 3303 (class 1262 OID 16396)
-- Name: vox_tec; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE vox_tec WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE vox_tec OWNER TO postgres;

\connect vox_tec

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

-- Completed on 2024-11-04 10:07:42

--
-- PostgreSQL database dump complete
--

--
-- Database "vox_tecno" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13
-- Dumped by pg_dump version 14.13

-- Started on 2024-11-04 10:07:42

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

--
-- TOC entry 3342 (class 1262 OID 16413)
-- Name: vox_tecno; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE vox_tecno WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE vox_tecno OWNER TO postgres;

\connect vox_tecno

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
-- TOC entry 209 (class 1259 OID 16414)
-- Name: doctrine_migration_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctrine_migration_versions (
    version character varying(191) NOT NULL,
    executed_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    execution_time integer
);


ALTER TABLE public.doctrine_migration_versions OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16430)
-- Name: empresa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresa (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    cnpj character varying(100) NOT NULL,
    status character varying(1) NOT NULL,
    created_at date NOT NULL,
    updated_at date
);


ALTER TABLE public.empresa OWNER TO postgres;

--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN empresa.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.empresa.created_at IS '(DC2Type:date_immutable)';


--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN empresa.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.empresa.updated_at IS '(DC2Type:date_immutable)';


--
-- TOC entry 212 (class 1259 OID 16429)
-- Name: empresa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empresa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empresa_id_seq OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16436)
-- Name: socio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socio (
    id integer NOT NULL,
    socio_empresa_id integer,
    nome character varying(255) NOT NULL,
    cpf character varying(14) NOT NULL,
    sexo character varying(1) NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.socio OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16435)
-- Name: socio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socio_id_seq OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16421)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    email character varying(180) NOT NULL,
    roles json NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16420)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 3330 (class 0 OID 16414)
-- Dependencies: 209
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20240831200409	2024-08-31 22:04:29	90
DoctrineMigrations\\Version20240831225050	2024-09-01 00:51:05	105
\.


--
-- TOC entry 3334 (class 0 OID 16430)
-- Dependencies: 213
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empresa (id, nome, cnpj, status, created_at, updated_at) FROM stdin;
1	empresa teste	00000	a	2024-08-31	\N
2	empresa dois	00000	a	2024-08-31	\N
3	empresa3	00000	a	2024-08-31	\N
\.


--
-- TOC entry 3336 (class 0 OID 16436)
-- Dependencies: 215
-- Data for Name: socio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socio (id, socio_empresa_id, nome, cpf, sexo, status, created_at) FROM stdin;
1	1	luan	06630436385	M	A	2024-09-01 01:26:37
\.


--
-- TOC entry 3332 (class 0 OID 16421)
-- Dependencies: 211
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, email, roles, password) FROM stdin;
1	cord@tec.com	[]	$2y$13$0pdA/5wPRWfQXpv/674IBup3d7Upls5la34ZpXTi4lR3IHOWQ2sZ.
2	vox@tec.com	[]	$2y$13$QIXgoT8evCMQj/vJFZS0..humkeql59lJbWXtkTb2knVVeF/Qvioi
4	teste1@tec.com	[]	$2y$13$SwYJvRNTbtu0RGa4FZvFFuaAaHKTnGWtOCMB/PdkIyNtRIP68EbPy
5	kk@tec.com	[]	$2y$13$PcovXsMuyu4P2ZsBYMvFreMcp5OLQ/GYj1q9mDU2QnGj0iVZJ5HE6
7	func1@tec.com	[]	$2y$13$uIn7yviIvADnTgUZz9errufeZsK9RTrZVG2k2JF.PYeIbFFauCYk6
8	tete@tec.com	[]	$2y$13$OuFQYLXRO1H0npBbjXsotOzauvF4E3Ec71Sk05iTD4Ya6pJ/9GCea
\.


--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 212
-- Name: empresa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empresa_id_seq', 3, true);


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 214
-- Name: socio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socio_id_seq', 1, true);


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 210
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 8, true);


--
-- TOC entry 3180 (class 2606 OID 16419)
-- Name: doctrine_migration_versions doctrine_migration_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);


--
-- TOC entry 3185 (class 2606 OID 16434)
-- Name: empresa empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 16440)
-- Name: socio socio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socio
    ADD CONSTRAINT socio_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 16427)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 1259 OID 16442)
-- Name: idx_38b65309756d1bf8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_38b65309756d1bf8 ON public.socio USING btree (socio_empresa_id);


--
-- TOC entry 3189 (class 1259 OID 16441)
-- Name: uniq_38b653093e3e11f0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uniq_38b653093e3e11f0 ON public.socio USING btree (cpf);


--
-- TOC entry 3181 (class 1259 OID 16428)
-- Name: uniq_8d93d649e7927c74; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uniq_8d93d649e7927c74 ON public."user" USING btree (email);


--
-- TOC entry 3190 (class 2606 OID 16443)
-- Name: socio fk_38b65309756d1bf8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socio
    ADD CONSTRAINT fk_38b65309756d1bf8 FOREIGN KEY (socio_empresa_id) REFERENCES public.empresa(id);


-- Completed on 2024-11-04 10:07:43

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-11-04 10:07:43

--
-- PostgreSQL database cluster dump complete
--

