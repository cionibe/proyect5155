--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

-- Started on 2018-11-28 18:40:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2289 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 200 (class 1259 OID 124531)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 124529)
-- Name: estado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_id_seq OWNER TO postgres;

--
-- TOC entry 2290 (class 0 OID 0)
-- Dependencies: 199
-- Name: estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_id_seq OWNED BY public.estado.id;


--
-- TOC entry 188 (class 1259 OID 124413)
-- Name: estudios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estudios (
    id integer NOT NULL,
    institucion_id integer,
    status boolean DEFAULT true NOT NULL,
    fec_envio date,
    fec_respuesta date,
    num_entrega bigint,
    num_oficio_siss bigint,
    num_exp_supervision bigint,
    cot_tesoro boolean DEFAULT false NOT NULL,
    cot_banavih boolean DEFAULT false NOT NULL,
    cot_ivss boolean DEFAULT false NOT NULL,
    aport_trabajador numeric(8,2) DEFAULT '0'::numeric NOT NULL,
    aport_patron numeric(8,2) DEFAULT '0'::numeric NOT NULL,
    fijos_act integer,
    contratados_act integer,
    otros_act integer,
    nomina_adic integer,
    jubiladas integer,
    jubilados integer,
    jubilados_bs_anual bigint DEFAULT '0'::bigint NOT NULL,
    pensionadas_i integer,
    pensionados_i integer,
    pensionados_i_bs_anual bigint DEFAULT '0'::bigint NOT NULL,
    pensionadas_s integer,
    pensionados_s integer,
    pensionados_s_bs_anual bigint DEFAULT '0'::bigint NOT NULL,
    fec_seguimiento integer,
    reg_especial boolean DEFAULT false NOT NULL,
    dec_1440 boolean DEFAULT false NOT NULL,
    sin_regimen boolean DEFAULT false NOT NULL,
    ley_trabajo boolean DEFAULT false NOT NULL,
    con_colectivo boolean DEFAULT false NOT NULL,
    tod_beneficio boolean DEFAULT false NOT NULL,
    orig_recursos character varying(255),
    doc_rif boolean DEFAULT false NOT NULL,
    doc_conv_colectiva boolean DEFAULT false NOT NULL,
    doc_acta_constitutiva boolean DEFAULT false NOT NULL,
    doc_resolucion boolean DEFAULT false NOT NULL,
    doc_decreto1440 boolean DEFAULT false NOT NULL,
    doc_digital character varying(255),
    doc_fisico character varying(255),
    observaciones character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.estudios OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 124411)
-- Name: estudios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estudios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estudios_id_seq OWNER TO postgres;

--
-- TOC entry 2291 (class 0 OID 0)
-- Dependencies: 187
-- Name: estudios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estudios_id_seq OWNED BY public.estudios.id;


--
-- TOC entry 184 (class 1259 OID 124371)
-- Name: instituciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instituciones (
    id integer NOT NULL,
    status boolean DEFAULT true NOT NULL,
    acronimo character varying(128),
    name character varying(256) NOT NULL,
    _rif character varying(255) DEFAULT 'G'::character varying NOT NULL,
    rif bigint NOT NULL,
    naturaleza character varying(128),
    jerarquia character varying(128),
    email character varying(256) NOT NULL,
    tlfppal bigint NOT NULL,
    tlfseg bigint,
    direccion text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.instituciones OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 124369)
-- Name: instituciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instituciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instituciones_id_seq OWNER TO postgres;

--
-- TOC entry 2292 (class 0 OID 0)
-- Dependencies: 183
-- Name: instituciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instituciones_id_seq OWNED BY public.instituciones.id;


--
-- TOC entry 182 (class 1259 OID 124362)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 124360)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2293 (class 0 OID 0)
-- Dependencies: 181
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 196 (class 1259 OID 124492)
-- Name: model_has_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model_has_permissions (
    permission_id integer NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_permissions OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 124503)
-- Name: model_has_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model_has_roles (
    role_id integer NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_roles OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 124539)
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipio (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    estado_id bigint NOT NULL
);


ALTER TABLE public.municipio OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 124537)
-- Name: municipio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.municipio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.municipio_id_seq OWNER TO postgres;

--
-- TOC entry 2294 (class 0 OID 0)
-- Dependencies: 201
-- Name: municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.municipio_id_seq OWNED BY public.municipio.id;


--
-- TOC entry 204 (class 1259 OID 124547)
-- Name: parroquia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parroquia (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    municipio_id bigint NOT NULL
);


ALTER TABLE public.parroquia OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 124545)
-- Name: parroquia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parroquia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parroquia_id_seq OWNER TO postgres;

--
-- TOC entry 2295 (class 0 OID 0)
-- Dependencies: 203
-- Name: parroquia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parroquia_id_seq OWNED BY public.parroquia.id;


--
-- TOC entry 191 (class 1259 OID 124463)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 124472)
-- Name: permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permissions (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.permissions OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 124470)
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2296 (class 0 OID 0)
-- Dependencies: 192
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- TOC entry 186 (class 1259 OID 124390)
-- Name: responsables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.responsables (
    id integer NOT NULL,
    institucion_id integer,
    status boolean DEFAULT true NOT NULL,
    cedula bigint NOT NULL,
    cargo character varying(128),
    dpto character varying(128),
    name1 character varying(128) NOT NULL,
    name2 character varying(128),
    lastname1 character varying(128) NOT NULL,
    lastname2 character varying(128),
    tlf bigint NOT NULL,
    email_r character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.responsables OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 124388)
-- Name: responsables_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.responsables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.responsables_id_seq OWNER TO postgres;

--
-- TOC entry 2297 (class 0 OID 0)
-- Dependencies: 185
-- Name: responsables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.responsables_id_seq OWNED BY public.responsables.id;


--
-- TOC entry 198 (class 1259 OID 124514)
-- Name: role_has_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_has_permissions (
    permission_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.role_has_permissions OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 124483)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 124481)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 2298 (class 0 OID 0)
-- Dependencies: 194
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 190 (class 1259 OID 124451)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    status boolean DEFAULT true NOT NULL,
    cedula character varying(255),
    name1 character varying(255),
    name2 character varying(255),
    lastname1 character varying(255),
    lastname2 character varying(255),
    tlf character varying(128),
    email character varying(255),
    password character varying(255),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 124449)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 2299 (class 0 OID 0)
-- Dependencies: 189
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2089 (class 2604 OID 124534)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public.estado_id_seq'::regclass);


--
-- TOC entry 2064 (class 2604 OID 124416)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudios ALTER COLUMN id SET DEFAULT nextval('public.estudios_id_seq'::regclass);


--
-- TOC entry 2059 (class 2604 OID 124374)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instituciones ALTER COLUMN id SET DEFAULT nextval('public.instituciones_id_seq'::regclass);


--
-- TOC entry 2058 (class 2604 OID 124365)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 2090 (class 2604 OID 124542)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio ALTER COLUMN id SET DEFAULT nextval('public.municipio_id_seq'::regclass);


--
-- TOC entry 2091 (class 2604 OID 124550)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia ALTER COLUMN id SET DEFAULT nextval('public.parroquia_id_seq'::regclass);


--
-- TOC entry 2087 (class 2604 OID 124475)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- TOC entry 2062 (class 2604 OID 124393)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables ALTER COLUMN id SET DEFAULT nextval('public.responsables_id_seq'::regclass);


--
-- TOC entry 2088 (class 2604 OID 124486)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 2085 (class 2604 OID 124454)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2276 (class 0 OID 124531)
-- Dependencies: 200
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado (id, nombre) FROM stdin;
\.


--
-- TOC entry 2300 (class 0 OID 0)
-- Dependencies: 199
-- Name: estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_id_seq', 1, false);


--
-- TOC entry 2264 (class 0 OID 124413)
-- Dependencies: 188
-- Data for Name: estudios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudios (id, institucion_id, status, fec_envio, fec_respuesta, num_entrega, num_oficio_siss, num_exp_supervision, cot_tesoro, cot_banavih, cot_ivss, aport_trabajador, aport_patron, fijos_act, contratados_act, otros_act, nomina_adic, jubiladas, jubilados, jubilados_bs_anual, pensionadas_i, pensionados_i, pensionados_i_bs_anual, pensionadas_s, pensionados_s, pensionados_s_bs_anual, fec_seguimiento, reg_especial, dec_1440, sin_regimen, ley_trabajo, con_colectivo, tod_beneficio, orig_recursos, doc_rif, doc_conv_colectiva, doc_acta_constitutiva, doc_resolucion, doc_decreto1440, doc_digital, doc_fisico, observaciones, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 187
-- Name: estudios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudios_id_seq', 1, false);


--
-- TOC entry 2260 (class 0 OID 124371)
-- Dependencies: 184
-- Data for Name: instituciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instituciones (id, status, acronimo, name, _rif, rif, naturaleza, jerarquia, email, tlfppal, tlfseg, direccion, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2302 (class 0 OID 0)
-- Dependencies: 183
-- Name: instituciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instituciones_id_seq', 1, false);


--
-- TOC entry 2258 (class 0 OID 124362)
-- Dependencies: 182
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2000_01_01_053922_create_instituciones_table	1
2	2002_01_01_053238_create_responsables_table	1
3	2011_01_01_053524_create_estudios_table	1
4	2014_10_12_000000_create_users_table	1
5	2014_10_12_100000_create_password_resets_table	1
6	2018_11_13_174604_create_permission_tables	1
7	2018_11_28_222619_create_estado_table	1
8	2018_11_28_222619_create_municipio_table	1
9	2018_11_28_222619_create_parroquia_table	1
\.


--
-- TOC entry 2303 (class 0 OID 0)
-- Dependencies: 181
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);


--
-- TOC entry 2272 (class 0 OID 124492)
-- Dependencies: 196
-- Data for Name: model_has_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
\.


--
-- TOC entry 2273 (class 0 OID 124503)
-- Dependencies: 197
-- Data for Name: model_has_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
\.


--
-- TOC entry 2278 (class 0 OID 124539)
-- Dependencies: 202
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.municipio (id, nombre, estado_id) FROM stdin;
\.


--
-- TOC entry 2304 (class 0 OID 0)
-- Dependencies: 201
-- Name: municipio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.municipio_id_seq', 1, false);


--
-- TOC entry 2280 (class 0 OID 124547)
-- Dependencies: 204
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parroquia (id, nombre, municipio_id) FROM stdin;
\.


--
-- TOC entry 2305 (class 0 OID 0)
-- Dependencies: 203
-- Name: parroquia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parroquia_id_seq', 1, false);


--
-- TOC entry 2267 (class 0 OID 124463)
-- Dependencies: 191
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 2269 (class 0 OID 124472)
-- Dependencies: 193
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2306 (class 0 OID 0)
-- Dependencies: 192
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- TOC entry 2262 (class 0 OID 124390)
-- Dependencies: 186
-- Data for Name: responsables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.responsables (id, institucion_id, status, cedula, cargo, dpto, name1, name2, lastname1, lastname2, tlf, email_r, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2307 (class 0 OID 0)
-- Dependencies: 185
-- Name: responsables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.responsables_id_seq', 1, false);


--
-- TOC entry 2274 (class 0 OID 124514)
-- Dependencies: 198
-- Data for Name: role_has_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
\.


--
-- TOC entry 2271 (class 0 OID 124483)
-- Dependencies: 195
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2308 (class 0 OID 0)
-- Dependencies: 194
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- TOC entry 2266 (class 0 OID 124451)
-- Dependencies: 190
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, status, cedula, name1, name2, lastname1, lastname2, tlf, email, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2309 (class 0 OID 0)
-- Dependencies: 189
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 2132 (class 2606 OID 124536)
-- Name: estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);


--
-- TOC entry 2111 (class 2606 OID 124448)
-- Name: estudios_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudios
    ADD CONSTRAINT estudios_id_unique UNIQUE (id);


--
-- TOC entry 2113 (class 2606 OID 124441)
-- Name: estudios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudios
    ADD CONSTRAINT estudios_pkey PRIMARY KEY (id);


--
-- TOC entry 2095 (class 2606 OID 124387)
-- Name: instituciones_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instituciones
    ADD CONSTRAINT instituciones_email_unique UNIQUE (email);


--
-- TOC entry 2097 (class 2606 OID 124383)
-- Name: instituciones_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instituciones
    ADD CONSTRAINT instituciones_id_unique UNIQUE (id);


--
-- TOC entry 2099 (class 2606 OID 124381)
-- Name: instituciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instituciones
    ADD CONSTRAINT instituciones_pkey PRIMARY KEY (id);


--
-- TOC entry 2101 (class 2606 OID 124385)
-- Name: instituciones_rif_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instituciones
    ADD CONSTRAINT instituciones_rif_unique UNIQUE (rif);


--
-- TOC entry 2093 (class 2606 OID 124367)
-- Name: migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2125 (class 2606 OID 124502)
-- Name: model_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);


--
-- TOC entry 2128 (class 2606 OID 124513)
-- Name: model_has_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);


--
-- TOC entry 2134 (class 2606 OID 124544)
-- Name: municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id);


--
-- TOC entry 2136 (class 2606 OID 124552)
-- Name: parroquia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT parroquia_pkey PRIMARY KEY (id);


--
-- TOC entry 2120 (class 2606 OID 124480)
-- Name: permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2103 (class 2606 OID 124408)
-- Name: responsables_cedula_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT responsables_cedula_unique UNIQUE (cedula);


--
-- TOC entry 2105 (class 2606 OID 124410)
-- Name: responsables_email_r_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT responsables_email_r_unique UNIQUE (email_r);


--
-- TOC entry 2107 (class 2606 OID 124406)
-- Name: responsables_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT responsables_id_unique UNIQUE (id);


--
-- TOC entry 2109 (class 2606 OID 124399)
-- Name: responsables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT responsables_pkey PRIMARY KEY (id);


--
-- TOC entry 2130 (class 2606 OID 124528)
-- Name: role_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);


--
-- TOC entry 2122 (class 2606 OID 124491)
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 2115 (class 2606 OID 124462)
-- Name: users_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_unique UNIQUE (id);


--
-- TOC entry 2117 (class 2606 OID 124460)
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2123 (class 1259 OID 124495)
-- Name: model_has_permissions_model_id_model_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);


--
-- TOC entry 2126 (class 1259 OID 124506)
-- Name: model_has_roles_model_id_model_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);


--
-- TOC entry 2118 (class 1259 OID 124469)
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- TOC entry 2138 (class 2606 OID 124442)
-- Name: estudios_institucion_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudios
    ADD CONSTRAINT estudios_institucion_id_foreign FOREIGN KEY (institucion_id) REFERENCES public.instituciones(id);


--
-- TOC entry 2139 (class 2606 OID 124496)
-- Name: model_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- TOC entry 2140 (class 2606 OID 124507)
-- Name: model_has_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- TOC entry 2137 (class 2606 OID 124400)
-- Name: responsables_institucion_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT responsables_institucion_id_foreign FOREIGN KEY (institucion_id) REFERENCES public.instituciones(id);


--
-- TOC entry 2141 (class 2606 OID 124517)
-- Name: role_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- TOC entry 2142 (class 2606 OID 124522)
-- Name: role_has_permissions_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- TOC entry 2288 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-11-28 18:40:35

--
-- PostgreSQL database dump complete
--

