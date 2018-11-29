--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

-- Started on 2018-11-28 18:25:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE db5155;
--
-- TOC entry 2288 (class 1262 OID 25230)
-- Name: db5155; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db5155 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';


ALTER DATABASE db5155 OWNER TO postgres;

\connect db5155

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
-- TOC entry 2291 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 124324)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 124327)
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
-- TOC entry 2292 (class 0 OID 0)
-- Dependencies: 200
-- Name: estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_id_seq OWNED BY public.estado.id;


--
-- TOC entry 188 (class 1259 OID 124189)
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
-- TOC entry 187 (class 1259 OID 124187)
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
-- TOC entry 2293 (class 0 OID 0)
-- Dependencies: 187
-- Name: estudios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estudios_id_seq OWNED BY public.estudios.id;


--
-- TOC entry 184 (class 1259 OID 124147)
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
-- TOC entry 183 (class 1259 OID 124145)
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
-- TOC entry 2294 (class 0 OID 0)
-- Dependencies: 183
-- Name: instituciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instituciones_id_seq OWNED BY public.instituciones.id;


--
-- TOC entry 182 (class 1259 OID 124139)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 124137)
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
-- TOC entry 2295 (class 0 OID 0)
-- Dependencies: 181
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 196 (class 1259 OID 124268)
-- Name: model_has_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model_has_permissions (
    permission_id integer NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_permissions OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 124279)
-- Name: model_has_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model_has_roles (
    role_id integer NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_roles OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 124329)
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipio (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    estado_id bigint NOT NULL
);


ALTER TABLE public.municipio OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 124332)
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
-- TOC entry 2296 (class 0 OID 0)
-- Dependencies: 202
-- Name: municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.municipio_id_seq OWNED BY public.municipio.id;


--
-- TOC entry 203 (class 1259 OID 124334)
-- Name: parroquia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parroquia (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    municipio_id bigint NOT NULL
);


ALTER TABLE public.parroquia OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 124337)
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
-- TOC entry 2297 (class 0 OID 0)
-- Dependencies: 204
-- Name: parroquia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parroquia_id_seq OWNED BY public.parroquia.id;


--
-- TOC entry 191 (class 1259 OID 124239)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 124248)
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
-- TOC entry 192 (class 1259 OID 124246)
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
-- TOC entry 2298 (class 0 OID 0)
-- Dependencies: 192
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- TOC entry 186 (class 1259 OID 124166)
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
-- TOC entry 185 (class 1259 OID 124164)
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
-- TOC entry 2299 (class 0 OID 0)
-- Dependencies: 185
-- Name: responsables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.responsables_id_seq OWNED BY public.responsables.id;


--
-- TOC entry 198 (class 1259 OID 124290)
-- Name: role_has_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_has_permissions (
    permission_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.role_has_permissions OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 124259)
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
-- TOC entry 194 (class 1259 OID 124257)
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
-- TOC entry 2300 (class 0 OID 0)
-- Dependencies: 194
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 190 (class 1259 OID 124227)
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
-- TOC entry 189 (class 1259 OID 124225)
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
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 189
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2089 (class 2604 OID 124339)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public.estado_id_seq'::regclass);


--
-- TOC entry 2076 (class 2604 OID 124192)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudios ALTER COLUMN id SET DEFAULT nextval('public.estudios_id_seq'::regclass);


--
-- TOC entry 2059 (class 2604 OID 124150)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instituciones ALTER COLUMN id SET DEFAULT nextval('public.instituciones_id_seq'::regclass);


--
-- TOC entry 2058 (class 2604 OID 124142)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 2090 (class 2604 OID 124340)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio ALTER COLUMN id SET DEFAULT nextval('public.municipio_id_seq'::regclass);


--
-- TOC entry 2091 (class 2604 OID 124341)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia ALTER COLUMN id SET DEFAULT nextval('public.parroquia_id_seq'::regclass);


--
-- TOC entry 2087 (class 2604 OID 124251)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- TOC entry 2062 (class 2604 OID 124169)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables ALTER COLUMN id SET DEFAULT nextval('public.responsables_id_seq'::regclass);


--
-- TOC entry 2088 (class 2604 OID 124262)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 2085 (class 2604 OID 124230)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2277 (class 0 OID 124324)
-- Dependencies: 199
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estado (id, nombre) VALUES (1, 'DTTO. CAPITAL');
INSERT INTO public.estado (id, nombre) VALUES (2, 'ANZOATEGUI');
INSERT INTO public.estado (id, nombre) VALUES (3, 'APURE');
INSERT INTO public.estado (id, nombre) VALUES (4, 'ARAGUA');
INSERT INTO public.estado (id, nombre) VALUES (5, 'BARINAS');
INSERT INTO public.estado (id, nombre) VALUES (6, 'BOLIVAR');
INSERT INTO public.estado (id, nombre) VALUES (7, 'CARABOBO');
INSERT INTO public.estado (id, nombre) VALUES (8, 'COJEDES');
INSERT INTO public.estado (id, nombre) VALUES (9, 'FALCON');
INSERT INTO public.estado (id, nombre) VALUES (10, 'GUARICO');
INSERT INTO public.estado (id, nombre) VALUES (11, 'LARA');
INSERT INTO public.estado (id, nombre) VALUES (12, 'MERIDA');
INSERT INTO public.estado (id, nombre) VALUES (13, 'MIRANDA');
INSERT INTO public.estado (id, nombre) VALUES (14, 'MONAGAS');
INSERT INTO public.estado (id, nombre) VALUES (15, 'NUEVA ESPARTA');
INSERT INTO public.estado (id, nombre) VALUES (16, 'PORTUGUESA');
INSERT INTO public.estado (id, nombre) VALUES (17, 'SUCRE');
INSERT INTO public.estado (id, nombre) VALUES (18, 'TACHIRA');
INSERT INTO public.estado (id, nombre) VALUES (19, 'TRUJILLO');
INSERT INTO public.estado (id, nombre) VALUES (20, 'YARACUY');
INSERT INTO public.estado (id, nombre) VALUES (21, 'ZULIA');
INSERT INTO public.estado (id, nombre) VALUES (22, 'AMAZONAS');
INSERT INTO public.estado (id, nombre) VALUES (23, 'DELTA AMACURO');
INSERT INTO public.estado (id, nombre) VALUES (24, 'VARGAS');


--
-- TOC entry 2302 (class 0 OID 0)
-- Dependencies: 200
-- Name: estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_id_seq', 25, false);


--
-- TOC entry 2266 (class 0 OID 124189)
-- Dependencies: 188
-- Data for Name: estudios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2303 (class 0 OID 0)
-- Dependencies: 187
-- Name: estudios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudios_id_seq', 1, false);


--
-- TOC entry 2262 (class 0 OID 124147)
-- Dependencies: 184
-- Data for Name: instituciones; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2304 (class 0 OID 0)
-- Dependencies: 183
-- Name: instituciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instituciones_id_seq', 1, false);


--
-- TOC entry 2260 (class 0 OID 124139)
-- Dependencies: 182
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.migrations (id, migration, batch) VALUES (1, '2000_01_01_053922_create_instituciones_table', 1);
INSERT INTO public.migrations (id, migration, batch) VALUES (2, '2002_01_01_053238_create_responsables_table', 1);
INSERT INTO public.migrations (id, migration, batch) VALUES (3, '2011_01_01_053524_create_estudios_table', 1);
INSERT INTO public.migrations (id, migration, batch) VALUES (4, '2014_10_12_000000_create_users_table', 1);
INSERT INTO public.migrations (id, migration, batch) VALUES (5, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO public.migrations (id, migration, batch) VALUES (6, '2018_11_13_174604_create_permission_tables', 1);


--
-- TOC entry 2305 (class 0 OID 0)
-- Dependencies: 181
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 6, true);


--
-- TOC entry 2274 (class 0 OID 124268)
-- Dependencies: 196
-- Data for Name: model_has_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2275 (class 0 OID 124279)
-- Dependencies: 197
-- Data for Name: model_has_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2279 (class 0 OID 124329)
-- Dependencies: 201
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.municipio (id, nombre, estado_id) VALUES (1, 'LIBERTADOR', 1);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (2, 'ANACO', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (3, 'ARAGUA', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (4, 'BOLIVAR', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (5, 'BRUZUAL', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (6, 'CAJIGAL', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (7, 'FREITES', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (8, 'INDEPENDENCIA', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (9, 'LIBERTAD', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (10, 'MIRANDA', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (11, 'MONAGAS', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (12, 'PEÑALVER', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (13, 'SIMON RODRIGUEZ', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (14, 'SOTILLO', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (15, 'GUANIPA', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (16, 'GUANTA', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (17, 'PIRITU', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (18, 'M.L/DIEGO BAUTISTA U', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (19, 'CARVAJAL', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (20, 'SANTA ANA', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (21, 'MC GREGOR', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (22, 'S JUAN CAPISTRANO', 2);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (23, 'ACHAGUAS', 3);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (24, 'MUÑOZ', 3);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (25, 'PAEZ', 3);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (26, 'PEDRO CAMEJO', 3);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (27, 'ROMULO GALLEGOS', 3);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (28, 'SAN FERNANDO', 3);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (29, 'BIRUACA', 3);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (30, 'GIRARDOT', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (31, 'SANTIAGO MARIÑO', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (32, 'JOSE FELIX RIVAS', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (33, 'SAN CASIMIRO', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (34, 'SAN SEBASTIAN', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (35, 'SUCRE', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (36, 'URDANETA', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (37, 'ZAMORA', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (38, 'LIBERTADOR', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (39, 'JOSE ANGEL LAMAS', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (40, 'BOLIVAR', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (41, 'SANTOS MICHELENA', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (42, 'MARIO B IRAGORRY', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (43, 'TOVAR', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (44, 'CAMATAGUA', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (45, 'JOSE R REVENGA', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (46, 'FRANCISCO LINARES A.', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (47, 'M.OCUMARE D LA COSTA', 4);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (48, 'ARISMENDI', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (49, 'BARINAS', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (50, 'BOLIVAR', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (51, 'EZEQUIEL ZAMORA', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (52, 'OBISPOS', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (53, 'PEDRAZA', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (54, 'ROJAS', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (55, 'SOSA', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (56, 'ALBERTO ARVELO T', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (57, 'A JOSE DE SUCRE', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (58, 'CRUZ PAREDES', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (59, 'ANDRES E. BLANCO', 5);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (60, 'CARONI', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (61, 'CEDEÑO', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (62, 'HERES', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (63, 'PIAR', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (64, 'ROSCIO', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (65, 'SUCRE', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (66, 'SIFONTES', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (67, 'RAUL LEONI', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (68, 'GRAN SABANA', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (69, 'EL CALLAO', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (70, 'PADRE PEDRO CHIEN', 6);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (71, 'BEJUMA', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (72, 'CARLOS ARVELO', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (73, 'DIEGO IBARRA', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (74, 'GUACARA', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (75, 'MONTALBAN', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (76, 'JUAN JOSE MORA', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (77, 'PUERTO CABELLO', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (78, 'SAN JOAQUIN', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (79, 'VALENCIA', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (80, 'MIRANDA', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (81, 'LOS GUAYOS', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (82, 'NAGUANAGUA', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (83, 'SAN DIEGO', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (84, 'LIBERTADOR', 7);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (85, 'ANZOATEGUI', 8);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (86, 'FALCON', 8);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (87, 'GIRARDOT', 8);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (88, 'MP PAO SN J BAUTISTA', 8);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (89, 'RICAURTE', 8);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (90, 'SAN CARLOS', 8);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (91, 'TINACO', 8);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (92, 'LIMA BLANCO', 8);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (93, 'ROMULO GALLEGOS', 8);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (94, 'ACOSTA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (95, 'BOLIVAR', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (96, 'BUCHIVACOA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (97, 'CARIRUBANA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (98, 'COLINA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (99, 'DEMOCRACIA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (100, 'FALCON', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (101, 'FEDERACION', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (102, 'MAUROA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (103, 'MIRANDA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (104, 'PETIT', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (105, 'SILVA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (106, 'ZAMORA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (107, 'DABAJURO', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (108, 'MONS. ITURRIZA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (109, 'LOS TAQUES', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (110, 'PIRITU', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (111, 'UNION', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (112, 'SAN FRANCISCO', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (113, 'JACURA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (114, 'CACIQUE MANAURE', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (115, 'PALMA SOLA', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (116, 'SUCRE', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (117, 'URUMACO', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (118, 'TOCOPERO', 9);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (119, 'INFANTE', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (120, 'MELLADO', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (121, 'MIRANDA', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (122, 'MONAGAS', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (123, 'RIBAS', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (124, 'ROSCIO', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (125, 'ZARAZA', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (126, 'CAMAGUAN', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (127, 'S JOSE DE GUARIBE', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (128, 'LAS MERCEDES', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (129, 'EL SOCORRO', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (130, 'ORTIZ', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (131, 'S MARIA DE IPIRE', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (132, 'CHAGUARAMAS', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (133, 'SAN GERONIMO DE G', 10);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (134, 'CRESPO', 11);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (135, 'IRIBARREN', 11);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (136, 'JIMENEZ', 11);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (137, 'MORAN', 11);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (138, 'PALAVECINO', 11);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (139, 'TORRES', 11);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (140, 'URDANETA', 11);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (141, 'ANDRES E BLANCO', 11);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (142, 'SIMON PLANAS', 11);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (143, 'ALBERTO ADRIANI', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (144, 'ANDRES BELLO', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (145, 'ARZOBISPO CHACON', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (146, 'CAMPO ELIAS', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (147, 'GUARAQUE', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (148, 'JULIO CESAR SALAS', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (149, 'JUSTO BRICEÑO', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (150, 'LIBERTADOR', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (151, 'SANTOS MARQUINA', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (152, 'MIRANDA', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (153, 'ANTONIO PINTO S.', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (154, 'OB. RAMOS DE LORA', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (155, 'CARACCIOLO PARRA', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (156, 'CARDENAL QUINTERO', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (157, 'PUEBLO LLANO', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (158, 'RANGEL', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (159, 'RIVAS DAVILA', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (160, 'SUCRE', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (161, 'TOVAR', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (162, 'TULIO F CORDERO', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (163, 'PADRE NOGUERA', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (164, 'ARICAGUA', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (165, 'ZEA', 12);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (166, 'ACEVEDO', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (167, 'BRION', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (168, 'GUAICAIPURO', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (169, 'INDEPENDENCIA', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (170, 'LANDER', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (171, 'PAEZ', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (172, 'PAZ CASTILLO', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (173, 'PLAZA', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (174, 'SUCRE', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (175, 'URDANETA', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (176, 'ZAMORA', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (177, 'CRISTOBAL ROJAS', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (178, 'LOS SALIAS', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (179, 'ANDRES BELLO', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (180, 'SIMON BOLIVAR', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (181, 'BARUTA', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (182, 'CARRIZAL', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (183, 'CHACAO', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (184, 'EL HATILLO', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (185, 'BUROZ', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (186, 'PEDRO GUAL', 13);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (187, 'ACOSTA', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (188, 'BOLIVAR', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (189, 'CARIPE', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (190, 'CEDEÑO', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (191, 'EZEQUIEL ZAMORA', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (192, 'LIBERTADOR', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (193, 'MATURIN', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (194, 'PIAR', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (195, 'PUNCERES', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (196, 'SOTILLO', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (197, 'AGUASAY', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (198, 'SANTA BARBARA', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (199, 'URACOA', 14);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (200, 'ARISMENDI', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (201, 'DIAZ', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (202, 'GOMEZ', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (203, 'MANEIRO', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (204, 'MARCANO', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (205, 'MARIÑO', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (206, 'PENIN. DE MACANAO', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (207, 'VILLALBA(I.COCHE)', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (208, 'TUBORES', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (209, 'ANTOLIN DEL CAMPO', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (210, 'GARCIA', 15);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (211, 'ARAURE', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (212, 'ESTELLER', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (213, 'GUANARE', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (214, 'GUANARITO', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (215, 'OSPINO', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (216, 'PAEZ', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (217, 'SUCRE', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (218, 'TUREN', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (219, 'M.JOSE V DE UNDA', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (220, 'AGUA BLANCA', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (221, 'PAPELON', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (222, 'GENARO BOCONOITO', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (223, 'S RAFAEL DE ONOTO', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (224, 'SANTA ROSALIA', 16);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (225, 'ARISMENDI', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (226, 'BENITEZ', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (227, 'BERMUDEZ', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (228, 'CAJIGAL', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (229, 'MARIÑO', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (230, 'MEJIA', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (231, 'MONTES', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (232, 'RIBERO', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (233, 'SUCRE', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (234, 'VALDEZ', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (235, 'ANDRES E BLANCO', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (236, 'LIBERTADOR', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (237, 'ANDRES MATA', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (238, 'BOLIVAR', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (239, 'CRUZ S ACOSTA', 17);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (240, 'AYACUCHO', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (241, 'BOLIVAR', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (242, 'INDEPENDENCIA', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (243, 'CARDENAS', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (244, 'JAUREGUI', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (245, 'JUNIN', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (246, 'LOBATERA', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (247, 'SAN CRISTOBAL', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (248, 'URIBANTE', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (249, 'CORDOBA', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (250, 'GARCIA DE HEVIA', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (251, 'GUASIMOS', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (252, 'MICHELENA', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (253, 'LIBERTADOR', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (254, 'PANAMERICANO', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (255, 'PEDRO MARIA UREÑA', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (256, 'SUCRE', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (257, 'ANDRES BELLO', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (258, 'FERNANDEZ FEO', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (259, 'LIBERTAD', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (260, 'SAMUEL MALDONADO', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (261, 'SEBORUCO', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (262, 'ANTONIO ROMULO C', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (263, 'FCO DE MIRANDA', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (264, 'JOSE MARIA VARGA', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (265, 'RAFAEL URDANETA', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (266, 'SIMON RODRIGUEZ', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (267, 'TORBES', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (268, 'SAN JUDAS TADEO', 18);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (269, 'RAFAEL RANGEL', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (270, 'BOCONO', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (271, 'CARACHE', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (272, 'ESCUQUE', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (273, 'TRUJILLO', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (274, 'URDANETA', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (275, 'VALERA', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (276, 'CANDELARIA', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (277, 'MIRANDA', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (278, 'MONTE CARMELO', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (279, 'MOTATAN', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (280, 'PAMPAN', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (281, 'S RAFAEL CARVAJAL', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (282, 'SUCRE', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (283, 'ANDRES BELLO', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (284, 'BOLIVAR', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (285, 'JOSE F M CAÑIZAL', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (286, 'JUAN V CAMPO ELI', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (287, 'LA CEIBA', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (288, 'PAMPANITO', 19);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (289, 'BOLIVAR', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (290, 'BRUZUAL', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (291, 'NIRGUA', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (292, 'SAN FELIPE', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (293, 'SUCRE', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (294, 'URACHICHE', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (295, 'PEÑA', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (296, 'JOSE ANTONIO PAEZ', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (297, 'LA TRINIDAD', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (298, 'COCOROTE', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (299, 'INDEPENDENCIA', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (300, 'ARISTIDES BASTID', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (301, 'MANUEL MONGE', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (302, 'VEROES', 20);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (303, 'BARALT', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (304, 'SANTA RITA', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (305, 'COLON', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (306, 'MARA', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (307, 'MARACAIBO', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (308, 'MIRANDA', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (309, 'PAEZ', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (310, 'MACHIQUES DE P', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (311, 'SUCRE', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (312, 'LA CAÑADA DE U.', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (313, 'LAGUNILLAS', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (314, 'CATATUMBO', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (315, 'M/ROSARIO DE PERIJA', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (316, 'CABIMAS', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (317, 'VALMORE RODRIGUEZ', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (318, 'JESUS E LOSSADA', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (319, 'ALMIRANTE P', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (320, 'SAN FRANCISCO', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (321, 'JESUS M SEMPRUN', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (322, 'FRANCISCO J PULG', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (323, 'SIMON BOLIVAR', 21);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (324, 'ATURES', 22);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (325, 'ATABAPO', 22);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (326, 'MAROA', 22);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (327, 'RIO NEGRO', 22);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (328, 'AUTANA', 22);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (329, 'MANAPIARE', 22);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (330, 'ALTO ORINOCO', 22);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (331, 'TUCUPITA', 23);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (332, 'PEDERNALES', 23);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (333, 'ANTONIO DIAZ', 23);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (334, 'CASACOIMA', 23);
INSERT INTO public.municipio (id, nombre, estado_id) VALUES (335, 'VARGAS', 24);


--
-- TOC entry 2306 (class 0 OID 0)
-- Dependencies: 202
-- Name: municipio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.municipio_id_seq', 336, false);


--
-- TOC entry 2281 (class 0 OID 124334)
-- Dependencies: 203
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1, 'ALTAGRACIA', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (2, 'CANDELARIA', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (3, 'CATEDRAL', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (4, 'LA PASTORA', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (5, 'SAN AGUSTIN', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (6, 'SAN JOSE', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (7, 'SAN JUAN', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (8, 'SANTA ROSALIA', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (9, 'SANTA TERESA', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (10, 'SUCRE', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (11, '23 DE ENERO', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (12, 'ANTIMANO', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (13, 'EL RECREO', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (14, 'EL VALLE', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (15, 'LA VEGA', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (16, 'MACARAO', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (17, 'CARICUAO', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (18, 'EL JUNQUITO', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (19, 'COCHE', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (20, 'SAN PEDRO', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (21, 'SAN BERNARDINO', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (22, 'EL PARAISO', 1);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (23, 'ANACO', 2);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (24, 'SAN JOAQUIN', 2);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (25, 'CM. ARAGUA DE BARCELONA', 3);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (26, 'CACHIPO', 3);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (27, 'EL CARMEN', 4);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (28, 'SAN CRISTOBAL', 4);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (29, 'BERGANTIN', 4);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (30, 'CAIGUA', 4);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (31, 'EL PILAR', 4);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (32, 'NARICUAL', 4);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (33, 'CM. CLARINES', 5);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (34, 'GUANAPE', 5);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (35, 'SABANA DE UCHIRE', 5);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (36, 'CM. ONOTO', 6);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (37, 'SAN PABLO', 6);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (38, 'CM. CANTAURA', 7);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (39, 'LIBERTADOR', 7);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (40, 'SANTA ROSA', 7);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (41, 'URICA', 7);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (42, 'CM. SOLEDAD', 8);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (43, 'MAMO', 8);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (44, 'CM. SAN MATEO', 9);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (45, 'EL CARITO', 9);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (46, 'SANTA INES', 9);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (47, 'CM. PARIAGUAN', 10);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (48, 'ATAPIRIRE', 10);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (49, 'BOCA DEL PAO', 10);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (50, 'EL PAO', 10);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (51, 'CM. MAPIRE', 11);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (52, 'PIAR', 11);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (53, 'SN DIEGO DE CABRUTICA', 11);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (54, 'SANTA CLARA', 11);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (55, 'UVERITO', 11);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (56, 'ZUATA', 11);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (57, 'CM. PUERTO PIRITU', 12);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (58, 'SAN MIGUEL', 12);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (59, 'SUCRE', 12);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (60, 'CM. EL TIGRE', 13);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (61, 'POZUELOS', 14);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (62, 'CM PTO. LA CRUZ', 14);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (63, 'CM. SAN JOSE DE GUANIPA', 15);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (64, 'GUANTA', 16);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (65, 'CHORRERON', 16);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (66, 'PIRITU', 17);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (67, 'SAN FRANCISCO', 17);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (68, 'LECHERIAS', 18);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (69, 'EL MORRO', 18);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (70, 'VALLE GUANAPE', 19);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (71, 'SANTA BARBARA', 19);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (72, 'SANTA ANA', 20);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (73, 'PUEBLO NUEVO', 20);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (74, 'EL CHAPARRO', 21);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (75, 'TOMAS ALFARO CALATRAVA', 21);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (76, 'BOCA UCHIRE', 22);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (77, 'BOCA DE CHAVEZ', 22);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (78, 'ACHAGUAS', 23);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (79, 'APURITO', 23);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (80, 'EL YAGUAL', 23);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (81, 'GUACHARA', 23);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (82, 'MUCURITAS', 23);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (83, 'QUESERAS DEL MEDIO', 23);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (84, 'BRUZUAL', 24);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (85, 'MANTECAL', 24);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (86, 'QUINTERO', 24);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (87, 'SAN VICENTE', 24);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (88, 'RINCON HONDO', 24);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (89, 'GUASDUALITO', 25);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (90, 'ARAMENDI', 25);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (91, 'EL AMPARO', 25);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (92, 'SAN CAMILO', 25);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (93, 'URDANETA', 25);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (94, 'SAN JUAN DE PAYARA', 26);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (95, 'CODAZZI', 26);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (96, 'CUNAVICHE', 26);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (97, 'ELORZA', 27);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (98, 'LA TRINIDAD', 27);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (99, 'SAN FERNANDO', 28);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (100, 'PEÑALVER', 28);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (101, 'EL RECREO', 28);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (102, 'SN RAFAEL DE ATAMAICA', 28);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (103, 'BIRUACA', 29);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (104, 'CM. LAS DELICIAS', 30);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (105, 'CHORONI', 30);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (106, 'MADRE MA DE SAN JOSE', 30);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (107, 'JOAQUIN CRESPO', 30);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (108, 'PEDRO JOSE OVALLES', 30);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (109, 'JOSE CASANOVA GODOY', 30);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (110, 'ANDRES ELOY BLANCO', 30);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (111, 'LOS TACARIGUAS', 30);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (112, 'CM. TURMERO', 31);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (113, 'SAMAN DE GUERE', 31);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (114, 'ALFREDO PACHECO M', 31);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (115, 'CHUAO', 31);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (116, 'AREVALO APONTE', 31);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (117, 'CM. LA VICTORIA', 32);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (118, 'ZUATA', 32);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (119, 'PAO DE ZARATE', 32);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (120, 'CASTOR NIEVES RIOS', 32);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (121, 'LAS GUACAMAYAS', 32);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (122, 'CM. SAN CASIMIRO', 33);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (123, 'VALLE MORIN', 33);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (124, 'GUIRIPA', 33);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (125, 'OLLAS DE CARAMACATE', 33);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (126, 'CM. SAN SEBASTIAN', 34);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (127, 'CM. CAGUA', 35);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (128, 'BELLA VISTA', 35);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (129, 'CM. BARBACOAS', 36);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (130, 'SAN FRANCISCO DE CARA', 36);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (131, 'TAGUAY', 36);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (132, 'LAS PEÑITAS', 36);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (133, 'CM. VILLA DE CURA', 37);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (134, 'MAGDALENO', 37);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (135, 'SAN FRANCISCO DE ASIS', 37);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (136, 'VALLES DE TUCUTUNEMO', 37);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (137, 'PQ AUGUSTO MIJARES', 37);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (138, 'CM. PALO NEGRO', 38);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (139, 'SAN MARTIN DE PORRES', 38);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (140, 'CM. SANTA CRUZ', 39);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (141, 'CM. SAN MATEO', 40);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (142, 'CM. LAS TEJERIAS', 41);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (143, 'TIARA', 41);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (144, 'CM. EL LIMON', 42);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (145, 'CA A DE AZUCAR', 42);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (146, 'CM. COLONIA TOVAR', 43);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (147, 'CM. CAMATAGUA', 44);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (148, 'CARMEN DE CURA', 44);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (149, 'CM. EL CONSEJO', 45);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (150, 'CM. SANTA RITA', 46);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (151, 'FRANCISCO DE MIRANDA', 46);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (152, 'MONS FELICIANO G', 46);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (153, 'OCUMARE DE LA COSTA', 47);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (154, 'ARISMENDI', 48);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (155, 'GUADARRAMA', 48);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (156, 'LA UNION', 48);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (157, 'SAN ANTONIO', 48);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (158, 'ALFREDO A LARRIVA', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (159, 'BARINAS', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (160, 'SAN SILVESTRE', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (161, 'SANTA INES', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (162, 'SANTA LUCIA', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (163, 'TORUNOS', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (164, 'EL CARMEN', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (165, 'ROMULO BETANCOURT', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (166, 'CORAZON DE JESUS', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (167, 'RAMON I MENDEZ', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (168, 'ALTO BARINAS', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (169, 'MANUEL P FAJARDO', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (170, 'JUAN A RODRIGUEZ D', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (171, 'DOMINGA ORTIZ P', 49);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (172, 'ALTAMIRA', 50);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (173, 'BARINITAS', 50);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (174, 'CALDERAS', 50);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (175, 'SANTA BARBARA', 51);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (176, 'JOSE IGNACIO DEL PUMAR', 51);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (177, 'RAMON IGNACIO MENDEZ', 51);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (178, 'PEDRO BRICEÑO MENDEZ', 51);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (179, 'EL REAL', 52);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (180, 'LA LUZ', 52);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (181, 'OBISPOS', 52);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (182, 'LOS GUASIMITOS', 52);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (183, 'CIUDAD BOLIVIA', 53);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (184, 'IGNACIO BRICEÑO', 53);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (185, 'PAEZ', 53);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (186, 'JOSE FELIX RIBAS', 53);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (187, 'DOLORES', 54);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (188, 'LIBERTAD', 54);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (189, 'PALACIO FAJARDO', 54);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (190, 'SANTA ROSA', 54);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (191, 'CIUDAD DE NUTRIAS', 55);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (192, 'EL REGALO', 55);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (193, 'PUERTO DE NUTRIAS', 55);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (194, 'SANTA CATALINA', 55);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (195, 'RODRIGUEZ DOMINGUEZ', 56);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (196, 'SABANETA', 56);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (197, 'TICOPORO', 57);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (198, 'NICOLAS PULIDO', 57);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (199, 'ANDRES BELLO', 57);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (200, 'BARRANCAS', 58);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (201, 'EL SOCORRO', 58);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (202, 'MASPARRITO', 58);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (203, 'EL CANTON', 59);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (204, 'SANTA CRUZ DE GUACAS', 59);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (205, 'PUERTO VIVAS', 59);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (206, 'SIMON BOLIVAR', 60);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (207, 'ONCE DE ABRIL', 60);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (208, 'VISTA AL SOL', 60);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (209, 'CHIRICA', 60);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (210, 'DALLA COSTA', 60);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (211, 'CACHAMAY', 60);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (212, 'UNIVERSIDAD', 60);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (213, 'UNARE', 60);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (214, 'YOCOIMA', 60);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (215, 'POZO VERDE', 60);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (216, 'CM. CAICARA DEL ORINOCO', 61);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (217, 'ASCENSION FARRERAS', 61);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (218, 'ALTAGRACIA', 61);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (219, 'LA URBANA', 61);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (220, 'GUANIAMO', 61);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (221, 'PIJIGUAOS', 61);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (222, 'CATEDRAL', 62);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (223, 'AGUA SALADA', 62);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (224, 'LA SABANITA', 62);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (225, 'VISTA HERMOSA', 62);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (226, 'MARHUANTA', 62);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (227, 'JOSE ANTONIO PAEZ', 62);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (228, 'ORINOCO', 62);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (229, 'PANAPANA', 62);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (230, 'ZEA', 62);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (231, 'CM. UPATA', 63);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (232, 'ANDRES ELOY BLANCO', 63);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (233, 'PEDRO COVA', 63);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (234, 'CM. GUASIPATI', 64);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (235, 'SALOM', 64);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (236, 'CM. MARIPA', 65);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (237, 'ARIPAO', 65);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (238, 'LAS MAJADAS', 65);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (239, 'MOITACO', 65);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (240, 'GUARATARO', 65);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (241, 'CM. TUMEREMO', 66);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (242, 'DALLA COSTA', 66);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (243, 'SAN ISIDRO', 66);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (244, 'CM. CIUDAD PIAR', 67);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (245, 'SAN FRANCISCO', 67);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (246, 'BARCELONETA', 67);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (247, 'SANTA BARBARA', 67);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (248, 'CM. SANTA ELENA DE UAIREN', 68);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (249, 'IKABARU', 68);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (250, 'CM. EL CALLAO', 69);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (251, 'CM. EL PALMAR', 70);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (252, 'BEJUMA', 71);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (253, 'CANOABO', 71);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (254, 'SIMON BOLIVAR', 71);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (255, 'GUIGUE', 72);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (256, 'BELEN', 72);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (257, 'TACARIGUA', 72);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (258, 'MARIARA', 73);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (259, 'AGUAS CALIENTES', 73);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (260, 'GUACARA', 74);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (261, 'CIUDAD ALIANZA', 74);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (262, 'YAGUA', 74);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (263, 'MONTALBAN', 75);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (264, 'MORON', 76);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (265, 'URAMA', 76);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (266, 'DEMOCRACIA', 77);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (267, 'FRATERNIDAD', 77);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (268, 'GOAIGOAZA', 77);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (269, 'JUAN JOSE FLORES', 77);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (270, 'BARTOLOME SALOM', 77);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (271, 'UNION', 77);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (272, 'BORBURATA', 77);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (273, 'PATANEMO', 77);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (274, 'SAN JOAQUIN', 78);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (275, 'CANDELARIA', 79);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (276, 'CATEDRAL', 79);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (277, 'EL SOCORRO', 79);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (278, 'MIGUEL PEÑA', 79);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (279, 'SAN BLAS', 79);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (280, 'SAN JOSE', 79);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (281, 'SANTA ROSA', 79);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (282, 'RAFAEL URDANETA', 79);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (283, 'NEGRO PRIMERO', 79);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (284, 'MIRANDA', 80);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (285, 'U LOS GUAYOS', 81);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (286, 'NAGUANAGUA', 82);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (287, 'URB SAN DIEGO', 83);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (288, 'U TOCUYITO', 84);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (289, 'U INDEPENDENCIA', 84);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (290, 'COJEDES', 85);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (291, 'JUAN DE MATA SUAREZ', 85);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (292, 'TINAQUILLO', 86);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (293, 'EL BAUL', 87);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (294, 'SUCRE', 87);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (295, 'EL PAO', 88);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (296, 'LIBERTAD DE COJEDES', 89);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (297, 'EL AMPARO', 89);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (298, 'SAN CARLOS DE AUSTRIA', 90);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (299, 'JUAN ANGEL BRAVO', 90);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (300, 'MANUEL MANRIQUE', 90);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (301, 'GRL/JEFE JOSE L SILVA', 91);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (302, 'MACAPO', 92);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (303, 'LA AGUADITA', 92);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (304, 'ROMULO GALLEGOS', 93);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (305, 'SAN JUAN DE LOS CAYOS', 94);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (306, 'CAPADARE', 94);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (307, 'LA PASTORA', 94);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (308, 'LIBERTADOR', 94);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (309, 'SAN LUIS', 95);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (310, 'ARACUA', 95);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (311, 'LA PEÑA', 95);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (312, 'CAPATARIDA', 96);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (313, 'BOROJO', 96);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (314, 'SEQUE', 96);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (315, 'ZAZARIDA', 96);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (316, 'BARIRO', 96);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (317, 'GUAJIRO', 96);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (318, 'NORTE', 97);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (319, 'CARIRUBANA', 97);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (320, 'PUNTA CARDON', 97);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (321, 'SANTA ANA', 97);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (322, 'LA VELA DE CORO', 98);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (323, 'ACURIGUA', 98);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (324, 'GUAIBACOA', 98);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (325, 'MACORUCA', 98);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (326, 'LAS CALDERAS', 98);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (327, 'PEDREGAL', 99);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (328, 'AGUA CLARA', 99);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (329, 'AVARIA', 99);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (330, 'PIEDRA GRANDE', 99);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (331, 'PURURECHE', 99);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (332, 'PUEBLO NUEVO', 100);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (333, 'ADICORA', 100);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (334, 'BARAIVED', 100);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (335, 'BUENA VISTA', 100);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (336, 'JADACAQUIVA', 100);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (337, 'MORUY', 100);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (338, 'EL VINCULO', 100);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (339, 'EL HATO', 100);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (340, 'ADAURE', 100);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (341, 'CHURUGUARA', 101);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (342, 'AGUA LARGA', 101);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (343, 'INDEPENDENCIA', 101);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (344, 'MAPARARI', 101);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (345, 'EL PAUJI', 101);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (346, 'MENE DE MAUROA', 102);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (347, 'CASIGUA', 102);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (348, 'SAN FELIX', 102);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (349, 'SAN ANTONIO', 103);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (350, 'SAN GABRIEL', 103);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (351, 'SANTA ANA', 103);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (352, 'GUZMAN GUILLERMO', 103);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (353, 'MITARE', 103);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (354, 'SABANETA', 103);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (355, 'RIO SECO', 103);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (356, 'CABURE', 104);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (357, 'CURIMAGUA', 104);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (358, 'COLINA', 104);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (359, 'TUCACAS', 105);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (360, 'BOCA DE AROA', 105);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (361, 'PUERTO CUMAREBO', 106);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (362, 'LA CIENAGA', 106);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (363, 'LA SOLEDAD', 106);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (364, 'PUEBLO CUMAREBO', 106);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (365, 'ZAZARIDA', 106);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (366, 'CM. DABAJURO', 107);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (367, 'CHICHIRIVICHE', 108);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (368, 'BOCA DE TOCUYO', 108);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (369, 'TOCUYO DE LA COSTA', 108);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (370, 'LOS TAQUES', 109);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (371, 'JUDIBANA', 109);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (372, 'PIRITU', 110);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (373, 'SAN JOSE DE LA COSTA', 110);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (374, 'STA.CRUZ DE BUCARAL', 111);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (375, 'EL CHARAL', 111);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (376, 'LAS VEGAS DEL TUY', 111);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (377, 'CM. MIRIMIRE', 112);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (378, 'JACURA', 113);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (379, 'AGUA LINDA', 113);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (380, 'ARAURIMA', 113);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (381, 'CM. YARACAL', 114);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (382, 'CM. PALMA SOLA', 115);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (383, 'SUCRE', 116);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (384, 'PECAYA', 116);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (385, 'URUMACO', 117);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (386, 'BRUZUAL', 117);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (387, 'CM. TOCOPERO', 118);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (388, 'VALLE DE LA PASCUA', 119);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (389, 'ESPINO', 119);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (390, 'EL SOMBRERO', 120);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (391, 'SOSA', 120);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (392, 'CALABOZO', 121);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (393, 'EL CALVARIO', 121);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (394, 'EL RASTRO', 121);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (395, 'GUARDATINAJAS', 121);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (396, 'ALTAGRACIA DE ORITUCO', 122);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (397, 'LEZAMA', 122);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (398, 'LIBERTAD DE ORITUCO', 122);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (399, 'SAN FCO DE MACAIRA', 122);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (400, 'SAN RAFAEL DE ORITUCO', 122);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (401, 'SOUBLETTE', 122);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (402, 'PASO REAL DE MACAIRA', 122);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (403, 'TUCUPIDO', 123);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (404, 'SAN RAFAEL DE LAYA', 123);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (405, 'SAN JUAN DE LOS MORROS', 124);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (406, 'PARAPARA', 124);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (407, 'CANTAGALLO', 124);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (408, 'ZARAZA', 125);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (409, 'SAN JOSE DE UNARE', 125);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (410, 'CAMAGUAN', 126);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (411, 'PUERTO MIRANDA', 126);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (412, 'UVERITO', 126);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (413, 'SAN JOSE DE GUARIBE', 127);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (414, 'LAS MERCEDES', 128);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (415, 'STA RITA DE MANAPIRE', 128);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (416, 'CABRUTA', 128);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (417, 'EL SOCORRO', 129);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (418, 'ORTIZ', 130);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (419, 'SAN FCO. DE TIZNADOS', 130);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (420, 'SAN JOSE DE TIZNADOS', 130);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (421, 'S LORENZO DE TIZNADOS', 130);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (422, 'SANTA MARIA DE IPIRE', 131);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (423, 'ALTAMIRA', 131);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (424, 'CHAGUARAMAS', 132);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (425, 'GUAYABAL', 133);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (426, 'CAZORLA', 133);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (427, 'FREITEZ', 134);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (428, 'JOSE MARIA BLANCO', 134);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (429, 'CATEDRAL', 135);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (430, 'LA CONCEPCION', 135);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (431, 'SANTA ROSA', 135);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (432, 'UNION', 135);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (433, 'EL CUJI', 135);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (434, 'TAMACA', 135);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (435, 'JUAN DE VILLEGAS', 135);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (436, 'AGUEDO F. ALVARADO', 135);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (437, 'BUENA VISTA', 135);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (438, 'JUAREZ', 135);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (439, 'JUAN B RODRIGUEZ', 136);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (440, 'DIEGO DE LOZADA', 136);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (441, 'SAN MIGUEL', 136);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (442, 'CUARA', 136);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (443, 'PARAISO DE SAN JOSE', 136);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (444, 'TINTORERO', 136);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (445, 'JOSE BERNARDO DORANTE', 136);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (446, 'CRNEL. MARIANO PERAZA', 136);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (447, 'BOLIVAR', 137);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (448, 'ANZOATEGUI', 137);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (449, 'GUARICO', 137);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (450, 'HUMOCARO ALTO', 137);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (451, 'HUMOCARO BAJO', 137);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (452, 'MORAN', 137);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (453, 'HILARIO LUNA Y LUNA', 137);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (454, 'LA CANDELARIA', 137);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (455, 'CABUDARE', 138);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (456, 'JOSE G. BASTIDAS', 138);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (457, 'AGUA VIVA', 138);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (458, 'TRINIDAD SAMUEL', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (459, 'ANTONIO DIAZ', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (460, 'CAMACARO', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (461, 'CASTAÑEDA', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (462, 'CHIQUINQUIRA', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (463, 'ESPINOZA LOS MONTEROS', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (464, 'LARA', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (465, 'MANUEL MORILLO', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (466, 'MONTES DE OCA', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (467, 'TORRES', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (468, 'EL BLANCO', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (469, 'MONTA A VERDE', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (470, 'HERIBERTO ARROYO', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (471, 'LAS MERCEDES', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (472, 'CECILIO ZUBILLAGA', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (473, 'REYES VARGAS', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (474, 'ALTAGRACIA', 139);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (475, 'SIQUISIQUE', 140);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (476, 'SAN MIGUEL', 140);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (477, 'XAGUAS', 140);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (478, 'MOROTURO', 140);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (479, 'PIO TAMAYO', 141);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (480, 'YACAMBU', 141);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (481, 'QBDA. HONDA DE GUACHE', 141);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (482, 'SARARE', 142);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (483, 'GUSTAVO VEGAS LEON', 142);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (484, 'BURIA', 142);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (485, 'GABRIEL PICON G.', 143);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (486, 'HECTOR AMABLE MORA', 143);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (487, 'JOSE NUCETE SARDI', 143);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (488, 'PULIDO MENDEZ', 143);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (489, 'PTE. ROMULO GALLEGOS', 143);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (490, 'PRESIDENTE BETANCOURT', 143);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (491, 'PRESIDENTE PAEZ', 143);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (492, 'CM. LA AZULITA', 144);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (493, 'CM. CANAGUA', 145);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (494, 'CAPURI', 145);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (495, 'CHACANTA', 145);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (496, 'EL MOLINO', 145);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (497, 'GUAIMARAL', 145);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (498, 'MUCUTUY', 145);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (499, 'MUCUCHACHI', 145);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (500, 'ACEQUIAS', 146);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (501, 'JAJI', 146);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (502, 'LA MESA', 146);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (503, 'SAN JOSE', 146);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (504, 'MONTALBAN', 146);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (505, 'MATRIZ', 146);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (506, 'FERNANDEZ PEÑA', 146);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (507, 'CM. GUARAQUE', 147);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (508, 'MESA DE QUINTERO', 147);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (509, 'RIO NEGRO', 147);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (510, 'CM. ARAPUEY', 148);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (511, 'PALMIRA', 148);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (512, 'CM. TORONDOY', 149);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (513, 'SAN CRISTOBAL DE T', 149);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (514, 'ARIAS', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (515, 'SAGRARIO', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (516, 'MILLA', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (517, 'EL LLANO', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (518, 'JUAN RODRIGUEZ SUAREZ', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (519, 'JACINTO PLAZA', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (520, 'DOMINGO PEÑA', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (521, 'GONZALO PICON FEBRES', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (522, 'OSUNA RODRIGUEZ', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (523, 'LASSO DE LA VEGA', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (524, 'CARACCIOLO PARRA P', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (525, 'MARIANO PICON SALAS', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (526, 'ANTONIO SPINETTI DINI', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (527, 'EL MORRO', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (528, 'LOS NEVADOS', 150);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (529, 'CM. TABAY', 151);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (530, 'CM. TIMOTES', 152);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (531, 'ANDRES ELOY BLANCO', 152);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (532, 'PIÑANGO', 152);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (533, 'LA VENTA', 152);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (534, 'CM. STA CRUZ DE MORA', 153);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (535, 'MESA BOLIVAR', 153);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (536, 'MESA DE LAS PALMAS', 153);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (537, 'CM. STA ELENA DE ARENALES', 154);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (538, 'ELOY PAREDES', 154);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (539, 'PQ R DE ALCAZAR', 154);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (540, 'CM. TUCANI', 155);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (541, 'FLORENCIO RAMIREZ', 155);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (542, 'CM. SANTO DOMINGO', 156);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (543, 'LAS PIEDRAS', 156);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (544, 'CM. PUEBLO LLANO', 157);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (545, 'CM. MUCUCHIES', 158);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (546, 'MUCURUBA', 158);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (547, 'SAN RAFAEL', 158);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (548, 'CACUTE', 158);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (549, 'LA TOMA', 158);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (550, 'CM. BAILADORES', 159);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (551, 'GERONIMO MALDONADO', 159);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (552, 'CM. LAGUNILLAS', 160);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (553, 'CHIGUARA', 160);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (554, 'ESTANQUES', 160);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (555, 'SAN JUAN', 160);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (556, 'PUEBLO NUEVO DEL SUR', 160);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (557, 'LA TRAMPA', 160);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (558, 'EL LLANO', 161);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (559, 'TOVAR', 161);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (560, 'EL AMPARO', 161);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (561, 'SAN FRANCISCO', 161);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (562, 'CM. NUEVA BOLIVIA', 162);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (563, 'INDEPENDENCIA', 162);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (564, 'MARIA C PALACIOS', 162);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (565, 'SANTA APOLONIA', 162);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (566, 'CM. STA MARIA DE CAPARO', 163);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (567, 'CM. ARICAGUA', 164);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (568, 'SAN ANTONIO', 164);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (569, 'CM. ZEA', 165);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (570, 'CAÑO EL TIGRE', 165);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (571, 'CAUCAGUA', 166);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (572, 'ARAGUITA', 166);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (573, 'AREVALO GONZALEZ', 166);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (574, 'CAPAYA', 166);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (575, 'PANAQUIRE', 166);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (576, 'RIBAS', 166);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (577, 'EL CAFE', 166);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (578, 'MARIZAPA', 166);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (579, 'HIGUEROTE', 167);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (580, 'CURIEPE', 167);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (581, 'TACARIGUA', 167);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (582, 'LOS TEQUES', 168);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (583, 'CECILIO ACOSTA', 168);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (584, 'PARACOTOS', 168);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (585, 'SAN PEDRO', 168);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (586, 'TACATA', 168);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (587, 'EL JARILLO', 168);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (588, 'ALTAGRACIA DE LA M', 168);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (589, 'STA TERESA DEL TUY', 169);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (590, 'EL CARTANAL', 169);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (591, 'OCUMARE DEL TUY', 170);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (592, 'LA DEMOCRACIA', 170);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (593, 'SANTA BARBARA', 170);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (594, 'RIO CHICO', 171);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (595, 'EL GUAPO', 171);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (596, 'TACARIGUA DE LA LAGUNA', 171);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (597, 'PAPARO', 171);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (598, 'SN FERNANDO DEL GUAPO', 171);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (599, 'SANTA LUCIA', 172);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (600, 'GUARENAS', 173);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (601, 'PETARE', 174);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (602, 'LEONCIO MARTINEZ', 174);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (603, 'CAUCAGUITA', 174);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (604, 'FILAS DE MARICHES', 174);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (605, 'LA DOLORITA', 174);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (606, 'CUA', 175);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (607, 'NUEVA CUA', 175);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (608, 'GUATIRE', 176);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (609, 'BOLIVAR', 176);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (610, 'CHARALLAVE', 177);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (611, 'LAS BRISAS', 177);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (612, 'SAN ANTONIO LOS ALTOS', 178);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (613, 'SAN JOSE DE BARLOVENTO', 179);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (614, 'CUMBO', 179);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (615, 'SAN FCO DE YARE', 180);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (616, 'S ANTONIO DE YARE', 180);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (617, 'BARUTA', 181);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (618, 'EL CAFETAL', 181);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (619, 'LAS MINAS DE BARUTA', 181);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (620, 'CARRIZAL', 182);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (621, 'CHACAO', 183);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (622, 'EL HATILLO', 184);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (623, 'MAMPORAL', 185);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (624, 'CUPIRA', 186);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (625, 'MACHURUCUTO', 186);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (626, 'CM. SAN ANTONIO', 187);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (627, 'SAN FRANCISCO', 187);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (628, 'CM. CARIPITO', 188);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (629, 'CM. CARIPE', 189);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (630, 'TERESEN', 189);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (631, 'EL GUACHARO', 189);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (632, 'SAN AGUSTIN', 189);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (633, 'LA GUANOTA', 189);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (634, 'SABANA DE PIEDRA', 189);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (635, 'CM. CAICARA', 190);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (636, 'AREO', 190);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (637, 'SAN FELIX', 190);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (638, 'VIENTO FRESCO', 190);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (639, 'CM. PUNTA DE MATA', 191);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (640, 'EL TEJERO', 191);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (641, 'CM. TEMBLADOR', 192);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (642, 'TABASCA', 192);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (643, 'LAS ALHUACAS', 192);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (644, 'CHAGUARAMAS', 192);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (645, 'EL FURRIAL', 193);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (646, 'JUSEPIN', 193);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (647, 'EL COROZO', 193);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (648, 'SAN VICENTE', 193);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (649, 'LA PICA', 193);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (650, 'ALTO DE LOS GODOS', 193);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (651, 'BOQUERON', 193);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (652, 'LAS COCUIZAS', 193);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (653, 'SANTA CRUZ', 193);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (654, 'SAN SIMON', 193);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (655, 'CM. ARAGUA', 194);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (656, 'CHAGUARAMAL', 194);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (657, 'GUANAGUANA', 194);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (658, 'APARICIO', 194);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (659, 'TAGUAYA', 194);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (660, 'EL PINTO', 194);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (661, 'LA TOSCANA', 194);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (662, 'CM. QUIRIQUIRE', 195);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (663, 'CACHIPO', 195);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (664, 'CM. BARRANCAS', 196);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (665, 'LOS BARRANCOS DE FAJARDO', 196);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (666, 'CM. AGUASAY', 197);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (667, 'CM. SANTA BARBARA', 198);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (668, 'CM. URACOA', 199);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (669, 'CM. LA ASUNCION', 200);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (670, 'CM. SAN JUAN BAUTISTA', 201);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (671, 'ZABALA', 201);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (672, 'CM. SANTA ANA', 202);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (673, 'GUEVARA', 202);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (674, 'MATASIETE', 202);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (675, 'BOLIVAR', 202);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (676, 'SUCRE', 202);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (677, 'CM. PAMPATAR', 203);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (678, 'AGUIRRE', 203);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (679, 'CM. JUAN GRIEGO', 204);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (680, 'ADRIAN', 204);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (681, 'CM. PORLAMAR', 205);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (682, 'CM. BOCA DEL RIO', 206);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (683, 'SAN FRANCISCO', 206);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (684, 'CM. SAN PEDRO DE COCHE', 207);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (685, 'VICENTE FUENTES', 207);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (686, 'CM. PUNTA DE PIEDRAS', 208);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (687, 'LOS BARALES', 208);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (688, 'CM.LA PLAZA DE PARAGUACHI', 209);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (689, 'CM. VALLE ESP SANTO', 210);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (690, 'FRANCISCO FAJARDO', 210);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (691, 'CM. ARAURE', 211);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (692, 'RIO ACARIGUA', 211);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (693, 'CM. PIRITU', 212);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (694, 'UVERAL', 212);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (695, 'CM. GUANARE', 213);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (696, 'CORDOBA', 213);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (697, 'SAN JUAN GUANAGUANARE', 213);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (698, 'VIRGEN DE LA COROMOTO', 213);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (699, 'SAN JOSE DE LA MONTAÑA', 213);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (700, 'CM. GUANARITO', 214);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (701, 'TRINIDAD DE LA CAPILLA', 214);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (702, 'DIVINA PASTORA', 214);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (703, 'CM. OSPINO', 215);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (704, 'APARICION', 215);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (705, 'LA ESTACION', 215);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (706, 'CM. ACARIGUA', 216);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (707, 'PAYARA', 216);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (708, 'PIMPINELA', 216);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (709, 'RAMON PERAZA', 216);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (710, 'CM. BISCUCUY', 217);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (711, 'CONCEPCION', 217);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (712, 'SAN RAFAEL PALO ALZADO', 217);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (713, 'UVENCIO A VELASQUEZ', 217);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (714, 'SAN JOSE DE SAGUAZ', 217);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (715, 'VILLA ROSA', 217);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (716, 'CM. VILLA BRUZUAL', 218);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (717, 'CANELONES', 218);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (718, 'SANTA CRUZ', 218);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (719, 'SAN ISIDRO LABRADOR', 218);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (720, 'CM. CHABASQUEN', 219);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (721, 'PEÑA BLANCA', 219);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (722, 'CM. AGUA BLANCA', 220);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (723, 'CM. PAPELON', 221);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (724, 'CAÑO DELGADITO', 221);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (725, 'CM. BOCONOITO', 222);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (726, 'ANTOLIN TOVAR AQUINO', 222);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (727, 'CM. SAN RAFAEL DE ONOTO', 223);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (728, 'SANTA FE', 223);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (729, 'THERMO MORLES', 223);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (730, 'CM. EL PLAYON', 224);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (731, 'FLORIDA', 224);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (732, 'RIO CARIBE', 225);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (733, 'SAN JUAN GALDONAS', 225);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (734, 'PUERTO SANTO', 225);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (735, 'EL MORRO DE PTO SANTO', 225);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (736, 'ANTONIO JOSE DE SUCRE', 225);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (737, 'EL PILAR', 226);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (738, 'EL RINCON', 226);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (739, 'GUARAUNOS', 226);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (740, 'TUNAPUICITO', 226);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (741, 'UNION', 226);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (742, 'GRAL FCO. A VASQUEZ', 226);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (743, 'SANTA CATALINA', 227);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (744, 'SANTA ROSA', 227);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (745, 'SANTA TERESA', 227);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (746, 'BOLIVAR', 227);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (747, 'MACARAPANA', 227);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (748, 'YAGUARAPARO', 228);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (749, 'LIBERTAD', 228);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (750, 'PAUJIL', 228);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (751, 'IRAPA', 229);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (752, 'CAMPO CLARO', 229);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (753, 'SORO', 229);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (754, 'SAN ANTONIO DE IRAPA', 229);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (755, 'MARABAL', 229);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (756, 'CM. SAN ANT DEL GOLFO', 230);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (757, 'CUMANACOA', 231);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (758, 'ARENAS', 231);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (759, 'ARICAGUA', 231);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (760, 'COCOLLAR', 231);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (761, 'SAN FERNANDO', 231);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (762, 'SAN LORENZO', 231);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (763, 'CARIACO', 232);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (764, 'CATUARO', 232);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (765, 'RENDON', 232);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (766, 'SANTA CRUZ', 232);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (767, 'SANTA MARIA', 232);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (768, 'ALTAGRACIA', 233);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (769, 'AYACUCHO', 233);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (770, 'SANTA INES', 233);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (771, 'VALENTIN VALIENTE', 233);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (772, 'SAN JUAN', 233);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (773, 'GRAN MARISCAL', 233);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (774, 'RAUL LEONI', 233);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (775, 'GUIRIA', 234);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (776, 'CRISTOBAL COLON', 234);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (777, 'PUNTA DE PIEDRA', 234);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (778, 'BIDEAU', 234);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (779, 'MARIÑO', 235);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (780, 'ROMULO GALLEGOS', 235);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (781, 'TUNAPUY', 236);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (782, 'CAMPO ELIAS', 236);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (783, 'SAN JOSE DE AREOCUAR', 237);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (784, 'TAVERA ACOSTA', 237);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (785, 'CM. MARIGUITAR', 238);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (786, 'ARAYA', 239);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (787, 'MANICUARE', 239);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (788, 'CHACOPATA', 239);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (789, 'CM. COLON', 240);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (790, 'RIVAS BERTI', 240);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (791, 'SAN PEDRO DEL RIO', 240);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (792, 'CM. SAN ANT DEL TACHIRA', 241);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (793, 'PALOTAL', 241);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (794, 'JUAN VICENTE GOMEZ', 241);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (795, 'ISAIAS MEDINA ANGARIT', 241);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (796, 'CM. CAPACHO NUEVO', 242);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (797, 'JUAN GERMAN ROSCIO', 242);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (798, 'ROMAN CARDENAS', 242);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (799, 'CM. TARIBA', 243);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (800, 'LA FLORIDA', 243);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (801, 'AMENODORO RANGEL LAMU', 243);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (802, 'CM. LA GRITA', 244);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (803, 'EMILIO C. GUERRERO', 244);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (804, 'MONS. MIGUEL A SALAS', 244);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (805, 'CM. RUBIO', 245);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (806, 'BRAMON', 245);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (807, 'LA PETROLEA', 245);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (808, 'QUINIMARI', 245);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (809, 'CM. LOBATERA', 246);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (810, 'CONSTITUCION', 246);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (811, 'LA CONCORDIA', 247);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (812, 'PEDRO MARIA MORANTES', 247);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (813, 'SN JUAN BAUTISTA', 247);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (814, 'SAN SEBASTIAN', 247);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (815, 'DR. FCO. ROMERO LOBO', 247);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (816, 'CM. PREGONERO', 248);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (817, 'CARDENAS', 248);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (818, 'POTOSI', 248);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (819, 'JUAN PABLO PEÑALOZA', 248);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (820, 'CM. STA. ANA  DEL TACHIRA', 249);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (821, 'CM. LA FRIA', 250);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (822, 'BOCA DE GRITA', 250);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (823, 'JOSE ANTONIO PAEZ', 250);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (824, 'CM. PALMIRA', 251);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (825, 'CM. MICHELENA', 252);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (826, 'CM. ABEJALES', 253);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (827, 'SAN JOAQUIN DE NAVAY', 253);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (828, 'DORADAS', 253);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (829, 'EMETERIO OCHOA', 253);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (830, 'CM. COLONCITO', 254);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (831, 'LA PALMITA', 254);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (832, 'CM. UREÑA', 255);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (833, 'NUEVA ARCADIA', 255);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (834, 'CM. QUENIQUEA', 256);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (835, 'SAN PABLO', 256);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (836, 'ELEAZAR LOPEZ CONTRERA', 256);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (837, 'CM. CORDERO', 257);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (838, 'CM.SAN RAFAEL DEL PINAL', 258);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (839, 'SANTO DOMINGO', 258);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (840, 'ALBERTO ADRIANI', 258);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (841, 'CM. CAPACHO VIEJO', 259);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (842, 'CIPRIANO CASTRO', 259);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (843, 'MANUEL FELIPE RUGELES', 259);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (844, 'CM. LA TENDIDA', 260);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (845, 'BOCONO', 260);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (846, 'HERNANDEZ', 260);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (847, 'CM. SEBORUCO', 261);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (848, 'CM. LAS MESAS', 262);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (849, 'CM. SAN JOSE DE BOLIVAR', 263);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (850, 'CM. EL COBRE', 264);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (851, 'CM. DELICIAS', 265);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (852, 'CM. SAN SIMON', 266);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (853, 'CM. SAN JOSECITO', 267);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (854, 'CM. UMUQUENA', 268);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (855, 'BETIJOQUE', 269);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (856, 'JOSE G HERNANDEZ', 269);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (857, 'LA PUEBLITA', 269);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (858, 'EL CEDRO', 269);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (859, 'BOCONO', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (860, 'EL CARMEN', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (861, 'MOSQUEY', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (862, 'AYACUCHO', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (863, 'BURBUSAY', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (864, 'GENERAL RIVAS', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (865, 'MONSEÑOR JAUREGUI', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (866, 'RAFAEL RANGEL', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (867, 'SAN JOSE', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (868, 'SAN MIGUEL', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (869, 'GUARAMACAL', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (870, 'LA VEGA DE GUARAMACAL', 270);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (871, 'CARACHE', 271);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (872, 'LA CONCEPCION', 271);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (873, 'CUICAS', 271);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (874, 'PANAMERICANA', 271);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (875, 'SANTA CRUZ', 271);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (876, 'ESCUQUE', 272);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (877, 'SABANA LIBRE', 272);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (878, 'LA UNION', 272);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (879, 'SANTA RITA', 272);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (880, 'CRISTOBAL MENDOZA', 273);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (881, 'CHIQUINQUIRA', 273);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (882, 'MATRIZ', 273);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (883, 'MONSEÑOR CARRILLO', 273);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (884, 'CRUZ CARRILLO', 273);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (885, 'ANDRES LINARES', 273);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (886, 'TRES ESQUINAS', 273);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (887, 'LA QUEBRADA', 274);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (888, 'JAJO', 274);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (889, 'LA MESA', 274);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (890, 'SANTIAGO', 274);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (891, 'CABIMBU', 274);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (892, 'TUÑAME', 274);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (893, 'MERCEDES DIAZ', 275);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (894, 'JUAN IGNACIO MONTILLA', 275);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (895, 'LA BEATRIZ', 275);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (896, 'MENDOZA', 275);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (897, 'LA PUERTA', 275);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (898, 'SAN LUIS', 275);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (899, 'CHEJENDE', 276);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (900, 'CARRILLO', 276);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (901, 'CEGARRA', 276);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (902, 'BOLIVIA', 276);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (903, 'MANUEL SALVADOR ULLOA', 276);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (904, 'SAN JOSE', 276);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (905, 'ARNOLDO GABALDON', 276);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (906, 'EL DIVIDIVE', 277);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (907, 'AGUA CALIENTE', 277);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (908, 'EL CENIZO', 277);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (909, 'AGUA SANTA', 277);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (910, 'VALERITA', 277);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (911, 'MONTE CARMELO', 278);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (912, 'BUENA VISTA', 278);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (913, 'STA MARIA DEL HORCON', 278);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (914, 'MOTATAN', 279);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (915, 'EL BAÑO', 279);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (916, 'JALISCO', 279);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (917, 'PAMPAN', 280);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (918, 'SANTA ANA', 280);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (919, 'LA PAZ', 280);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (920, 'FLOR DE PATRIA', 280);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (921, 'CARVAJAL', 281);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (922, 'ANTONIO N BRICEÑO', 281);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (923, 'CAMPO ALEGRE', 281);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (924, 'JOSE LEONARDO SUAREZ', 281);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (925, 'SABANA DE MENDOZA', 282);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (926, 'JUNIN', 282);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (927, 'VALMORE RODRIGUEZ', 282);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (928, 'EL PARAISO', 282);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (929, 'SANTA ISABEL', 283);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (930, 'ARAGUANEY', 283);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (931, 'EL JAGUITO', 283);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (932, 'LA ESPERANZA', 283);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (933, 'SABANA GRANDE', 284);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (934, 'CHEREGUE', 284);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (935, 'GRANADOS', 284);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (936, 'EL SOCORRO', 285);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (937, 'LOS CAPRICHOS', 285);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (938, 'ANTONIO JOSE DE SUCRE', 285);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (939, 'CAMPO ELIAS', 286);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (940, 'ARNOLDO GABALDON', 286);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (941, 'SANTA APOLONIA', 287);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (942, 'LA CEIBA', 287);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (943, 'EL PROGRESO', 287);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (944, 'TRES DE FEBRERO', 287);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (945, 'PAMPANITO', 288);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (946, 'PAMPANITO II', 288);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (947, 'LA CONCEPCION', 288);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (948, 'CM. AROA', 289);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (949, 'CM. CHIVACOA', 290);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (950, 'CAMPO ELIAS', 290);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (951, 'CM. NIRGUA', 291);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (952, 'SALOM', 291);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (953, 'TEMERLA', 291);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (954, 'CM. SAN FELIPE', 292);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (955, 'ALBARICO', 292);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (956, 'SAN JAVIER', 292);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (957, 'CM. GUAMA', 293);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (958, 'CM. URACHICHE', 294);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (959, 'CM. YARITAGUA', 295);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (960, 'SAN ANDRES', 295);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (961, 'CM. SABANA DE PARRA', 296);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (962, 'CM. BORAURE', 297);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (963, 'CM. COCOROTE', 298);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (964, 'CM. INDEPENDENCIA', 299);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (965, 'CM. SAN PABLO', 300);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (966, 'CM. YUMARE', 301);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (967, 'CM. FARRIAR', 302);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (968, 'EL GUAYABO', 302);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (969, 'GENERAL URDANETA', 303);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (970, 'LIBERTADOR', 303);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (971, 'MANUEL GUANIPA MATOS', 303);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (972, 'MARCELINO BRICEÑO', 303);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (973, 'SAN TIMOTEO', 303);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (974, 'PUEBLO NUEVO', 303);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (975, 'PEDRO LUCAS URRIBARRI', 304);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (976, 'SANTA RITA', 304);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (977, 'JOSE CENOVIO URRIBARR', 304);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (978, 'EL MENE', 304);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (979, 'SANTA CRUZ DEL ZULIA', 305);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (980, 'URRIBARRI', 305);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (981, 'MORALITO', 305);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (982, 'SAN CARLOS DEL ZULIA', 305);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (983, 'SANTA BARBARA', 305);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (984, 'LUIS DE VICENTE', 306);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (985, 'RICAURTE', 306);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (986, 'MONS.MARCOS SERGIO G', 306);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (987, 'SAN RAFAEL', 306);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (988, 'LAS PARCELAS', 306);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (989, 'TAMARE', 306);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (990, 'LA SIERRITA', 306);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (991, 'BOLIVAR', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (992, 'COQUIVACOA', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (993, 'CRISTO DE ARANZA', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (994, 'CHIQUINQUIRA', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (995, 'SANTA LUCIA', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (996, 'OLEGARIO VILLALOBOS', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (997, 'JUANA DE AVILA', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (998, 'CARACCIOLO PARRA PEREZ', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (999, 'IDELFONZO VASQUEZ', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1000, 'CACIQUE MARA', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1001, 'CECILIO ACOSTA', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1002, 'RAUL LEONI', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1003, 'FRANCISCO EUGENIO B', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1004, 'MANUEL DAGNINO', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1005, 'LUIS HURTADO HIGUERA', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1006, 'VENANCIO PULGAR', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1007, 'ANTONIO BORJAS ROMERO', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1008, 'SAN ISIDRO', 307);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1009, 'FARIA', 308);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1010, 'SAN ANTONIO', 308);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1011, 'ANA MARIA CAMPOS', 308);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1012, 'SAN JOSE', 308);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1013, 'ALTAGRACIA', 308);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1014, 'GOAJIRA', 309);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1015, 'ELIAS SANCHEZ RUBIO', 309);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1016, 'SINAMAICA', 309);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1017, 'ALTA GUAJIRA', 309);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1018, 'SAN JOSE DE PERIJA', 310);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1019, 'BARTOLOME DE LAS CASAS', 310);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1020, 'LIBERTAD', 310);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1021, 'RIO NEGRO', 310);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1022, 'GIBRALTAR', 311);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1023, 'HERAS', 311);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1024, 'M.ARTURO CELESTINO A', 311);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1025, 'ROMULO GALLEGOS', 311);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1026, 'BOBURES', 311);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1027, 'EL BATEY', 311);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1028, 'ANDRES BELLO (KM 48)', 312);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1029, 'POTRERITOS', 312);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1030, 'EL CARMELO', 312);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1031, 'CHIQUINQUIRA', 312);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1032, 'CONCEPCION', 312);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1033, 'ELEAZAR LOPEZ C', 313);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1034, 'ALONSO DE OJEDA', 313);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1035, 'VENEZUELA', 313);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1036, 'CAMPO LARA', 313);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1037, 'LIBERTAD', 313);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1038, 'UDON PEREZ', 314);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1039, 'ENCONTRADOS', 314);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1040, 'DONALDO GARCIA', 315);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1041, 'SIXTO ZAMBRANO', 315);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1042, 'EL ROSARIO', 315);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1043, 'AMBROSIO', 316);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1044, 'GERMAN RIOS LINARES', 316);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1045, 'JORGE HERNANDEZ', 316);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1046, 'LA ROSA', 316);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1047, 'PUNTA GORDA', 316);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1048, 'CARMEN HERRERA', 316);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1049, 'SAN BENITO', 316);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1050, 'ROMULO BETANCOURT', 316);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1051, 'ARISTIDES CALVANI', 316);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1052, 'RAUL CUENCA', 317);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1053, 'LA VICTORIA', 317);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1054, 'RAFAEL URDANETA', 317);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1055, 'JOSE RAMON YEPEZ', 318);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1056, 'LA CONCEPCION', 318);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1057, 'SAN JOSE', 318);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1058, 'MARIANO PARRA LEON', 318);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1059, 'MONAGAS', 319);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1060, 'ISLA DE TOAS', 319);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1061, 'MARCIAL HERNANDEZ', 320);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1062, 'FRANCISCO OCHOA', 320);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1063, 'SAN FRANCISCO', 320);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1064, 'EL BAJO', 320);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1065, 'DOMITILA FLORES', 320);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1066, 'LOS CORTIJOS', 320);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1067, 'BARI', 321);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1068, 'JESUS M SEMPRUN', 321);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1069, 'SIMON RODRIGUEZ', 322);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1070, 'CARLOS QUEVEDO', 322);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1071, 'FRANCISCO J PULGAR', 322);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1072, 'RAFAEL MARIA BARALT', 323);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1073, 'MANUEL MANRIQUE', 323);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1074, 'RAFAEL URDANETA', 323);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1075, 'FERNANDO GIRON TOVAR', 324);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1076, 'LUIS ALBERTO GOMEZ', 324);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1077, 'PARHUEÑA', 324);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1078, 'PLATANILLAL', 324);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1079, 'CM. SAN FERNANDO DE ATABA', 325);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1080, 'UCATA', 325);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1081, 'YAPACANA', 325);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1082, 'CANAME', 325);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1083, 'CM. MAROA', 326);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1084, 'VICTORINO', 326);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1085, 'COMUNIDAD', 326);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1086, 'CM. SAN CARLOS DE RIO NEG', 327);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1087, 'SOLANO', 327);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1088, 'COCUY', 327);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1089, 'CM. ISLA DE RATON', 328);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1090, 'SAMARIAPO', 328);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1091, 'SIPAPO', 328);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1092, 'MUNDUAPO', 328);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1093, 'GUAYAPO', 328);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1094, 'CM. SAN JUAN DE MANAPIARE', 329);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1095, 'ALTO VENTUARI', 329);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1096, 'MEDIO VENTUARI', 329);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1097, 'BAJO VENTUARI', 329);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1098, 'CM. LA ESMERALDA', 330);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1099, 'HUACHAMACARE', 330);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1100, 'MARAWAKA', 330);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1101, 'MAVACA', 330);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1102, 'SIERRA PARIMA', 330);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1103, 'SAN JOSE', 331);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1104, 'VIRGEN DEL VALLE', 331);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1105, 'SAN RAFAEL', 331);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1106, 'JOSE VIDAL MARCANO', 331);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1107, 'LEONARDO RUIZ PINEDA', 331);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1108, 'MONS. ARGIMIRO GARCIA', 331);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1109, 'MCL.ANTONIO J DE SUCRE', 331);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1110, 'JUAN MILLAN', 331);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1111, 'PEDERNALES', 332);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1112, 'LUIS B PRIETO FIGUERO', 332);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1113, 'CURIAPO', 333);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1114, 'SANTOS DE ABELGAS', 333);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1115, 'MANUEL RENAUD', 333);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1116, 'PADRE BARRAL', 333);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1117, 'ANICETO LUGO', 333);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1118, 'ALMIRANTE LUIS BRION', 333);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1119, 'IMATACA', 334);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1120, 'ROMULO GALLEGOS', 334);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1121, 'JUAN BAUTISTA ARISMEN', 334);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1122, 'MANUEL PIAR', 334);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1123, '5 DE JULIO', 334);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1124, 'CARABALLEDA', 335);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1125, 'CARAYACA', 335);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1126, 'CARUAO', 335);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1127, 'CATIA LA MAR', 335);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1128, 'LA GUAIRA', 335);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1129, 'MACUTO', 335);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1130, 'MAIQUETIA', 335);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1131, 'NAIGUATA', 335);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1132, 'EL JUNKO', 335);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1133, 'PQ RAUL LEONI', 335);
INSERT INTO public.parroquia (id, nombre, municipio_id) VALUES (1134, 'PQ CARLOS SOUBLETTE', 335);


--
-- TOC entry 2307 (class 0 OID 0)
-- Dependencies: 204
-- Name: parroquia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parroquia_id_seq', 1135, false);


--
-- TOC entry 2269 (class 0 OID 124239)
-- Dependencies: 191
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2271 (class 0 OID 124248)
-- Dependencies: 193
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2308 (class 0 OID 0)
-- Dependencies: 192
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- TOC entry 2264 (class 0 OID 124166)
-- Dependencies: 186
-- Data for Name: responsables; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2309 (class 0 OID 0)
-- Dependencies: 185
-- Name: responsables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.responsables_id_seq', 1, false);


--
-- TOC entry 2276 (class 0 OID 124290)
-- Dependencies: 198
-- Data for Name: role_has_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2273 (class 0 OID 124259)
-- Dependencies: 195
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2310 (class 0 OID 0)
-- Dependencies: 194
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- TOC entry 2268 (class 0 OID 124227)
-- Dependencies: 190
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2311 (class 0 OID 0)
-- Dependencies: 189
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 2132 (class 2606 OID 124343)
-- Name: estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);


--
-- TOC entry 2111 (class 2606 OID 124224)
-- Name: estudios_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudios
    ADD CONSTRAINT estudios_id_unique UNIQUE (id);


--
-- TOC entry 2113 (class 2606 OID 124217)
-- Name: estudios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudios
    ADD CONSTRAINT estudios_pkey PRIMARY KEY (id);


--
-- TOC entry 2095 (class 2606 OID 124163)
-- Name: instituciones_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instituciones
    ADD CONSTRAINT instituciones_email_unique UNIQUE (email);


--
-- TOC entry 2097 (class 2606 OID 124159)
-- Name: instituciones_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instituciones
    ADD CONSTRAINT instituciones_id_unique UNIQUE (id);


--
-- TOC entry 2099 (class 2606 OID 124157)
-- Name: instituciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instituciones
    ADD CONSTRAINT instituciones_pkey PRIMARY KEY (id);


--
-- TOC entry 2101 (class 2606 OID 124161)
-- Name: instituciones_rif_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instituciones
    ADD CONSTRAINT instituciones_rif_unique UNIQUE (rif);


--
-- TOC entry 2093 (class 2606 OID 124144)
-- Name: migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2125 (class 2606 OID 124278)
-- Name: model_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);


--
-- TOC entry 2128 (class 2606 OID 124289)
-- Name: model_has_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);


--
-- TOC entry 2134 (class 2606 OID 124345)
-- Name: municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id);


--
-- TOC entry 2136 (class 2606 OID 124347)
-- Name: parroquia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT parroquia_pkey PRIMARY KEY (id);


--
-- TOC entry 2120 (class 2606 OID 124256)
-- Name: permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2103 (class 2606 OID 124184)
-- Name: responsables_cedula_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT responsables_cedula_unique UNIQUE (cedula);


--
-- TOC entry 2105 (class 2606 OID 124186)
-- Name: responsables_email_r_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT responsables_email_r_unique UNIQUE (email_r);


--
-- TOC entry 2107 (class 2606 OID 124182)
-- Name: responsables_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT responsables_id_unique UNIQUE (id);


--
-- TOC entry 2109 (class 2606 OID 124175)
-- Name: responsables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT responsables_pkey PRIMARY KEY (id);


--
-- TOC entry 2130 (class 2606 OID 124304)
-- Name: role_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);


--
-- TOC entry 2122 (class 2606 OID 124267)
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 2115 (class 2606 OID 124238)
-- Name: users_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_unique UNIQUE (id);


--
-- TOC entry 2117 (class 2606 OID 124236)
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2123 (class 1259 OID 124271)
-- Name: model_has_permissions_model_id_model_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);


--
-- TOC entry 2126 (class 1259 OID 124282)
-- Name: model_has_roles_model_id_model_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);


--
-- TOC entry 2118 (class 1259 OID 124245)
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- TOC entry 2138 (class 2606 OID 124218)
-- Name: estudios_institucion_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudios
    ADD CONSTRAINT estudios_institucion_id_foreign FOREIGN KEY (institucion_id) REFERENCES public.instituciones(id);


--
-- TOC entry 2139 (class 2606 OID 124272)
-- Name: model_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- TOC entry 2140 (class 2606 OID 124283)
-- Name: model_has_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- TOC entry 2143 (class 2606 OID 124348)
-- Name: municipio_estado_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_estado_id_fkey FOREIGN KEY (estado_id) REFERENCES public.estado(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2144 (class 2606 OID 124353)
-- Name: parroquia_municipio_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT parroquia_municipio_id_fkey FOREIGN KEY (municipio_id) REFERENCES public.municipio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2137 (class 2606 OID 124176)
-- Name: responsables_institucion_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT responsables_institucion_id_foreign FOREIGN KEY (institucion_id) REFERENCES public.instituciones(id);


--
-- TOC entry 2141 (class 2606 OID 124293)
-- Name: role_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- TOC entry 2142 (class 2606 OID 124298)
-- Name: role_has_permissions_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- TOC entry 2290 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-11-28 18:25:03

--
-- PostgreSQL database dump complete
--

