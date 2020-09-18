--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-1.pgdg18.04+1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-1.pgdg18.04+1)

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
-- Name: doencas; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.doencas (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    historicoid integer NOT NULL,
    doenca character varying(255) NOT NULL,
    data date NOT NULL
);


ALTER TABLE public.doencas OWNER TO centraldopet;

--
-- Name: doencas_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.doencas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doencas_id_seq OWNER TO centraldopet;

--
-- Name: doencas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.doencas_id_seq OWNED BY public.doencas.id;


--
-- Name: donos; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.donos (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    petid integer NOT NULL,
    cpf integer NOT NULL,
    nome character varying(255) NOT NULL,
    contato integer NOT NULL,
    endereco character varying(255) NOT NULL,
    sexo character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    "data de nascimento" date NOT NULL
);


ALTER TABLE public.donos OWNER TO centraldopet;

--
-- Name: donos_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.donos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.donos_id_seq OWNER TO centraldopet;

--
-- Name: donos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.donos_id_seq OWNED BY public.donos.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO centraldopet;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO centraldopet;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: historicos; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.historicos (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    petid integer NOT NULL,
    alergias character varying(255) NOT NULL
);


ALTER TABLE public.historicos OWNER TO centraldopet;

--
-- Name: historicos_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.historicos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historicos_id_seq OWNER TO centraldopet;

--
-- Name: historicos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.historicos_id_seq OWNED BY public.historicos.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO centraldopet;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO centraldopet;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO centraldopet;

--
-- Name: pets; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.pets (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    nome character varying(255) NOT NULL,
    sexo character varying(255) NOT NULL,
    castrado boolean NOT NULL,
    "necessidades especiais" character varying(255) NOT NULL,
    "data de nascimento" date NOT NULL
);


ALTER TABLE public.pets OWNER TO centraldopet;

--
-- Name: pets_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.pets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pets_id_seq OWNER TO centraldopet;

--
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.pets_id_seq OWNED BY public.pets.id;


--
-- Name: racas; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.racas (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    petid integer NOT NULL,
    especie character varying(255) NOT NULL,
    porte character varying(255) NOT NULL,
    cor character varying(255) NOT NULL
);


ALTER TABLE public.racas OWNER TO centraldopet;

--
-- Name: racas_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.racas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.racas_id_seq OWNER TO centraldopet;

--
-- Name: racas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.racas_id_seq OWNED BY public.racas.id;


--
-- Name: transfusaos; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.transfusaos (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    historicoid integer NOT NULL,
    data date NOT NULL
);


ALTER TABLE public.transfusaos OWNER TO centraldopet;

--
-- Name: transfusaos_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.transfusaos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transfusaos_id_seq OWNER TO centraldopet;

--
-- Name: transfusaos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.transfusaos_id_seq OWNED BY public.transfusaos.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO centraldopet;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO centraldopet;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    userid integer NOT NULL,
    nome character varying(255) NOT NULL,
    contato integer NOT NULL,
    endereco character varying(255) NOT NULL,
    senha integer NOT NULL,
    funcao character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    sexo character varying(255) NOT NULL,
    "data de nascimento" date NOT NULL
);


ALTER TABLE public.usuarios OWNER TO centraldopet;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO centraldopet;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- Name: vacinas; Type: TABLE; Schema: public; Owner: centraldopet
--

CREATE TABLE public.vacinas (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    historicoid integer NOT NULL,
    vacina character varying(255) NOT NULL,
    data date NOT NULL
);


ALTER TABLE public.vacinas OWNER TO centraldopet;

--
-- Name: vacinas_id_seq; Type: SEQUENCE; Schema: public; Owner: centraldopet
--

CREATE SEQUENCE public.vacinas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vacinas_id_seq OWNER TO centraldopet;

--
-- Name: vacinas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: centraldopet
--

ALTER SEQUENCE public.vacinas_id_seq OWNED BY public.vacinas.id;


--
-- Name: doencas id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.doencas ALTER COLUMN id SET DEFAULT nextval('public.doencas_id_seq'::regclass);


--
-- Name: donos id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.donos ALTER COLUMN id SET DEFAULT nextval('public.donos_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: historicos id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.historicos ALTER COLUMN id SET DEFAULT nextval('public.historicos_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: pets id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.pets ALTER COLUMN id SET DEFAULT nextval('public.pets_id_seq'::regclass);


--
-- Name: racas id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.racas ALTER COLUMN id SET DEFAULT nextval('public.racas_id_seq'::regclass);


--
-- Name: transfusaos id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.transfusaos ALTER COLUMN id SET DEFAULT nextval('public.transfusaos_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Name: vacinas id; Type: DEFAULT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.vacinas ALTER COLUMN id SET DEFAULT nextval('public.vacinas_id_seq'::regclass);


--
-- Data for Name: doencas; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.doencas (id, created_at, updated_at, historicoid, doenca, data) FROM stdin;
\.


--
-- Data for Name: donos; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.donos (id, created_at, updated_at, petid, cpf, nome, contato, endereco, sexo, email, "data de nascimento") FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: historicos; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.historicos (id, created_at, updated_at, petid, alergias) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2020_09_18_192506_create_categorias_table	1
5	2020_09_18_193152_create_pets_table	1
6	2020_09_18_193625_create_usuarios_table	2
7	2020_09_18_193858_create_racas_table	2
8	2020_09_18_195845_create_donos_table	2
9	2020_09_18_200238_create_historicos_table	2
10	2020_09_18_200448_create_vacinas_table	2
11	2020_09_18_200600_create_transfusaos_table	2
12	2020_09_18_200648_create_doencas_table	2
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: pets; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.pets (id, created_at, updated_at, nome, sexo, castrado, "necessidades especiais", "data de nascimento") FROM stdin;
\.


--
-- Data for Name: racas; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.racas (id, created_at, updated_at, petid, especie, porte, cor) FROM stdin;
\.


--
-- Data for Name: transfusaos; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.transfusaos (id, created_at, updated_at, historicoid, data) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.usuarios (id, created_at, updated_at, userid, nome, contato, endereco, senha, funcao, email, sexo, "data de nascimento") FROM stdin;
\.


--
-- Data for Name: vacinas; Type: TABLE DATA; Schema: public; Owner: centraldopet
--

COPY public.vacinas (id, created_at, updated_at, historicoid, vacina, data) FROM stdin;
\.


--
-- Name: doencas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.doencas_id_seq', 1, false);


--
-- Name: donos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.donos_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: historicos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.historicos_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.migrations_id_seq', 12, true);


--
-- Name: pets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.pets_id_seq', 1, false);


--
-- Name: racas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.racas_id_seq', 1, false);


--
-- Name: transfusaos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.transfusaos_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);


--
-- Name: vacinas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: centraldopet
--

SELECT pg_catalog.setval('public.vacinas_id_seq', 1, false);


--
-- Name: doencas doencas_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.doencas
    ADD CONSTRAINT doencas_pkey PRIMARY KEY (id);


--
-- Name: donos donos_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.donos
    ADD CONSTRAINT donos_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: historicos historicos_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.historicos
    ADD CONSTRAINT historicos_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: pets pets_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);


--
-- Name: racas racas_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.racas
    ADD CONSTRAINT racas_pkey PRIMARY KEY (id);


--
-- Name: transfusaos transfusaos_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.transfusaos
    ADD CONSTRAINT transfusaos_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: vacinas vacinas_pkey; Type: CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.vacinas
    ADD CONSTRAINT vacinas_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: centraldopet
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: transfusaos historicoid; Type: FK CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.transfusaos
    ADD CONSTRAINT historicoid FOREIGN KEY (historicoid) REFERENCES public.historicos(id) NOT VALID;


--
-- Name: vacinas historicoid; Type: FK CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.vacinas
    ADD CONSTRAINT historicoid FOREIGN KEY (historicoid) REFERENCES public.historicos(id) NOT VALID;


--
-- Name: doencas historicoid; Type: FK CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.doencas
    ADD CONSTRAINT historicoid FOREIGN KEY (historicoid) REFERENCES public.historicos(id) NOT VALID;


--
-- Name: donos petid; Type: FK CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.donos
    ADD CONSTRAINT petid FOREIGN KEY (petid) REFERENCES public.pets(id) NOT VALID;


--
-- Name: racas petid; Type: FK CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.racas
    ADD CONSTRAINT petid FOREIGN KEY (petid) REFERENCES public.pets(id) NOT VALID;


--
-- Name: historicos petid; Type: FK CONSTRAINT; Schema: public; Owner: centraldopet
--

ALTER TABLE ONLY public.historicos
    ADD CONSTRAINT petid FOREIGN KEY (petid) REFERENCES public.pets(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

