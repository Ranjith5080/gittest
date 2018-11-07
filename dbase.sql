--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authentication_account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authentication_account (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    email character varying(254) NOT NULL,
    username character varying(9) NOT NULL,
    tagline character varying(140) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.authentication_account OWNER TO postgres;

--
-- Name: authentication_account_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authentication_account_groups (
    id integer NOT NULL,
    account_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.authentication_account_groups OWNER TO postgres;

--
-- Name: authentication_account_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authentication_account_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentication_account_groups_id_seq OWNER TO postgres;

--
-- Name: authentication_account_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authentication_account_groups_id_seq OWNED BY public.authentication_account_groups.id;


--
-- Name: authentication_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authentication_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentication_account_id_seq OWNER TO postgres;

--
-- Name: authentication_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authentication_account_id_seq OWNED BY public.authentication_account.id;


--
-- Name: authentication_account_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authentication_account_user_permissions (
    id integer NOT NULL,
    account_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.authentication_account_user_permissions OWNER TO postgres;

--
-- Name: authentication_account_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authentication_account_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentication_account_user_permissions_id_seq OWNER TO postgres;

--
-- Name: authentication_account_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authentication_account_user_permissions_id_seq OWNED BY public.authentication_account_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: forms_committee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_committee (
    id integer NOT NULL,
    committeeid character varying(9) NOT NULL,
    committeename character varying(200) NOT NULL,
    street1 character varying(34) NOT NULL,
    street2 character varying(34) NOT NULL,
    city character varying(30) NOT NULL,
    state character varying(2) NOT NULL,
    zipcode integer NOT NULL,
    treasurerlastname character varying(30) NOT NULL,
    treasurerfirstname character varying(20) NOT NULL,
    treasurermiddlename character varying(20) NOT NULL,
    treasurerprefix character varying(10) NOT NULL,
    treasurersuffix character varying(10) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone,
    isdeleted boolean NOT NULL,
    email_on_file text NOT NULL
);


ALTER TABLE public.forms_committee OWNER TO postgres;

--
-- Name: forms_committee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.forms_committee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forms_committee_id_seq OWNER TO postgres;

--
-- Name: forms_committee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.forms_committee_id_seq OWNED BY public.forms_committee.id;


--
-- Name: forms_committeeinfo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_committeeinfo (
    committeeid character varying(9) NOT NULL,
    committeename character varying(200) NOT NULL,
    street1 character varying(34) NOT NULL,
    street2 character varying(34),
    city character varying(30) NOT NULL,
    state character varying(2) NOT NULL,
    zipcode text NOT NULL,
    treasurerlastname character varying(30) NOT NULL,
    treasurerfirstname character varying(20) NOT NULL,
    treasurermiddlename character varying(20),
    treasurerprefix character varying(10),
    treasurersuffix character varying(10),
    created_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone,
    isdeleted boolean NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    text text NOT NULL,
    id integer NOT NULL,
    reason character varying(3) NOT NULL,
    is_submitted boolean NOT NULL,
    additional_email_1 text NOT NULL,
    additional_email_2 text NOT NULL,
    email_on_file text NOT NULL,
    signee character varying(30) NOT NULL,
    file character varying(100)
);


ALTER TABLE public.forms_committeeinfo OWNER TO postgres;

--
-- Name: forms_committeeinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.forms_committeeinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forms_committeeinfo_id_seq OWNER TO postgres;

--
-- Name: forms_committeeinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.forms_committeeinfo_id_seq OWNED BY public.forms_committeeinfo.id;


--
-- Name: posts_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts_post (
    id integer NOT NULL,
    content text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.posts_post OWNER TO postgres;

--
-- Name: posts_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_post_id_seq OWNER TO postgres;

--
-- Name: posts_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_post_id_seq OWNED BY public.posts_post.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account ALTER COLUMN id SET DEFAULT nextval('public.authentication_account_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account_groups ALTER COLUMN id SET DEFAULT nextval('public.authentication_account_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.authentication_account_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_committee ALTER COLUMN id SET DEFAULT nextval('public.forms_committee_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_committeeinfo ALTER COLUMN id SET DEFAULT nextval('public.forms_committeeinfo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post ALTER COLUMN id SET DEFAULT nextval('public.posts_post_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
22	Can add CommitteeInfo	8	add_committeeinfo
23	Can change CommitteeInfo	8	change_committeeinfo
24	Can delete CommitteeInfo	8	delete_committeeinfo
25	Can add Committee	9	add_committee
26	Can change Committee	9	change_committee
27	Can delete Committee	9	delete_committee
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add user	6	add_account
17	Can change user	6	change_account
18	Can delete user	6	delete_account
19	Can add post	7	add_post
20	Can change post	7	change_post
21	Can delete post	7	delete_post
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 27, true);


--
-- Data for Name: authentication_account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authentication_account (id, password, last_login, is_superuser, email, username, tagline, created_at, updated_at, is_staff, is_active, date_joined) FROM stdin;
2	bcrypt_sha256$$2b$12$6OFlS4cdqXSK9HhTkQZQ9.Fvnul5XHDEmyZfGb/owfImmtCTc73iG	2018-09-08 19:01:53.412+00	f	test2@test.com	C11234567		2018-09-08 19:01:52.58+00	2018-09-17 02:25:05.146+00	f	t	2018-09-08 19:01:52.218+00
4	bcrypt_sha256$$2b$12$Vs6shIWepA7Bc/LVaZu2aujPQxCoY7Pe6epyXHSH9GrPqEJmgEIsW	2018-09-08 19:04:44.282+00	t	testtube@test.com	adminnxg		2018-09-08 19:04:33.178+00	2018-09-17 02:25:05.163+00	t	t	2018-09-08 19:04:32.844+00
1	pbkdf2_sha256$36000$1a12NsHSiM1P$TSQHr/206lhRHsPmS/EFuv2MDaKRnM45QiFQcewrGk8=	2018-09-10 02:21:50.676+00	f	test1@test.com	C01234567		2018-09-08 18:59:45.552+00	2018-09-17 02:25:05.164+00	f	t	2018-09-08 18:59:45.208+00
6	pbkdf2_sha256$36000$rJqxMw2luNoH$lzKgItcwzhtwdA9qSpiR/6QGpSQyN4u7Yj8UqFn0I3k=	2018-10-29 16:03:59.849827+00	t	tt@tt.ctt	tt		2018-10-29 16:02:39.519244+00	2018-10-29 16:02:39.57971+00	t	t	2018-10-29 16:02:39.03537+00
3	pbkdf2_sha256$36000$wtcx3pv32dgt$tETHKHzI2FPAtVyp2GI/gutqirDwMISwKyWBnEehlVI=	2018-09-08 19:02:33+00	f	test3@test.com	C00220269		2018-09-08 19:02:33.065+00	2018-10-29 17:05:28.190309+00	f	t	2018-09-08 19:02:32+00
5	pbkdf2_sha256$36000$ir0uuUb5gNO3$PYv6Px2Hd7uOwNDIIM/29jukiFh4gxMtklXh3lB8atk=	2018-10-03 13:10:32.154647+00	t	t@t.com	admin_nxg		2018-10-03 13:10:17.524927+00	2018-10-03 13:10:17.527036+00	t	t	2018-10-03 13:10:17.440749+00
\.


--
-- Data for Name: authentication_account_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authentication_account_groups (id, account_id, group_id) FROM stdin;
\.


--
-- Name: authentication_account_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authentication_account_groups_id_seq', 1, false);


--
-- Name: authentication_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authentication_account_id_seq', 6, true);


--
-- Data for Name: authentication_account_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authentication_account_user_permissions (id, account_id, permission_id) FROM stdin;
\.


--
-- Name: authentication_account_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authentication_account_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-10-29 16:24:07.149461+00	3	C0022026	2	[{"changed": {"fields": ["username"]}}]	6	6
2	2018-10-29 17:05:28.206607+00	3	C00220269	2	[{"changed": {"fields": ["username"]}}]	6	6
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	authentication	account
7	posts	post
8	forms	committeeinfo
9	forms	committee
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-09-10 05:15:53.203642+00
2	contenttypes	0002_remove_content_type_name	2018-09-10 05:15:53.214568+00
3	auth	0001_initial	2018-09-10 05:15:53.263863+00
4	auth	0002_alter_permission_name_max_length	2018-09-10 05:15:53.272934+00
5	auth	0003_alter_user_email_max_length	2018-09-10 05:15:53.280673+00
6	auth	0004_alter_user_username_opts	2018-09-10 05:15:53.288053+00
7	auth	0005_alter_user_last_login_null	2018-09-10 05:15:53.295721+00
8	auth	0006_require_contenttypes_0002	2018-09-10 05:15:53.297758+00
9	authentication	0001_initial	2018-09-10 05:15:53.346783+00
10	admin	0001_initial	2018-09-10 05:15:53.373675+00
11	posts	0001_initial	2018-09-10 05:15:53.395522+00
12	sessions	0001_initial	2018-09-10 05:15:53.411441+00
13	admin	0002_logentry_remove_auto_add	2018-09-14 18:57:29.654617+00
14	auth	0007_alter_validators_add_error_messages	2018-09-14 18:57:29.664787+00
15	auth	0008_alter_user_username_max_length	2018-09-14 18:57:29.674345+00
16	authentication	0002_auto_20180918_1317	2018-09-24 14:16:04.169189+00
17	forms	0001_initial	2018-09-24 14:16:04.181311+00
18	forms	0002_auto_20180918_1321	2018-09-24 14:16:04.201794+00
19	forms	0003_auto_20180918_1445	2018-09-24 14:16:04.222305+00
20	forms	0004_auto_20180918_1447	2018-09-24 14:16:04.230821+00
21	forms	0005_committeeinfo_text	2018-09-24 14:16:04.247707+00
22	forms	0006_auto_20180919_0344	2018-09-24 14:16:04.282786+00
23	forms	0007_committee	2018-09-24 14:16:04.292679+00
24	forms	0008_committeeinfo_reason	2018-09-24 17:07:12.838457+00
25	forms	0009_auto_20180925_1532	2018-09-25 15:33:02.791849+00
26	forms	0010_committeeinfo_is_submitted	2018-09-26 03:40:21.087021+00
27	forms	0011_auto_20181004_0415	2018-10-04 04:15:22.053985+00
28	forms	0012_auto_20181017_1902	2018-10-17 19:02:39.743315+00
29	forms	0013_committee_email_on_file	2018-10-18 16:20:54.488324+00
30	forms	0014_committeeinfo_file	2018-10-24 16:19:41.118223+00
31	forms	0015_auto_20181024_1619	2018-10-24 16:19:41.418108+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
nwpc1g0mtejyof0dbe9vi707hgt25oe0	NzdlM2RlZDBmOGUyYmNiZjkxY2QzNTdiMDg3ZWNmMzgzYzNlMzUxNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjViNDg0NzA3MzlkODAwYzc2YzlmMWI1OTBiYzc3N2M3YmIwNzQ1YmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-10-10 20:28:52.390833+00
wpaedzbb0wuhi2a3tn40xnnz0dlmbomz	M2MyYzFiZTZkNWQxZGVhMjc2NjE1Zjc3MjQ4ZTI3ZjM5MzMzN2FiZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjViNDg0NzA3MzlkODAwYzc2YzlmMWI1OTBiYzc3N2M3YmIwNzQ1YmYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-10-11 03:07:49.014906+00
uqnnzrsrfholq1kv3lm9p9yqsnuqknaq	ZTE4YjI3YWM5ZmNiZmYzZThjMWZhZmMyMTA3MTI5Yjc3Mzg4NGVlYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWI0ODQ3MDczOWQ4MDBjNzZjOWYxYjU5MGJjNzc3YzdiYjA3NDViZiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-10-09 03:43:14.653972+00
w3qkvefcnjwu8nt5caq4z9cbwx1ikrjm	Y2NiMmJkNzJhYzU3ODQyMmJhOWJhOTQ5ZThmOTVlNjc5ZjAxMjUxZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI1YjQ4NDcwNzM5ZDgwMGM3NmM5ZjFiNTkwYmM3NzdjN2JiMDc0NWJmIn0=	2018-10-09 04:00:53.540569+00
dpewrymggnjermq8qo41h5fqdz73x36v	M2MyYzFiZTZkNWQxZGVhMjc2NjE1Zjc3MjQ4ZTI3ZjM5MzMzN2FiZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjViNDg0NzA3MzlkODAwYzc2YzlmMWI1OTBiYzc3N2M3YmIwNzQ1YmYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-10-09 18:23:10.575631+00
5yqgo8hqyq838ptd7fnzuzgvxfp78onh	MWRjYWRiYWI2NTFiMGJlMzQ4NGYyZjJlZjU5Y2NjMjhhODgzMGI3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWI0ODQ3MDczOWQ4MDBjNzZjOWYxYjU5MGJjNzc3YzdiYjA3NDViZiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-10-10 03:25:07.35853+00
waxifg9gai1ffgafo41jgqj4mitqnx2l	MWRjYWRiYWI2NTFiMGJlMzQ4NGYyZjJlZjU5Y2NjMjhhODgzMGI3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWI0ODQ3MDczOWQ4MDBjNzZjOWYxYjU5MGJjNzc3YzdiYjA3NDViZiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-10-10 03:26:37.169865+00
w9hgmkiv37bxj3uoq7y76u1vqc9y5mqp	Y2NiMmJkNzJhYzU3ODQyMmJhOWJhOTQ5ZThmOTVlNjc5ZjAxMjUxZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI1YjQ4NDcwNzM5ZDgwMGM3NmM5ZjFiNTkwYmM3NzdjN2JiMDc0NWJmIn0=	2018-10-10 13:52:28.623906+00
e4mg7drypldwivsgrpgxuqosre6xmvzo	ZDUyNWI3MGY0NmZiYmI4MGRjZTk2NThjOTBjYjkxY2ZhNDc3MzZhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YjQ4NDcwNzM5ZDgwMGM3NmM5ZjFiNTkwYmM3NzdjN2JiMDc0NWJmIn0=	2018-10-10 18:10:35.771517+00
tixltnhn0pwgh8rw6gzdpgqd8uhxt0qt	ZDUyNWI3MGY0NmZiYmI4MGRjZTk2NThjOTBjYjkxY2ZhNDc3MzZhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YjQ4NDcwNzM5ZDgwMGM3NmM5ZjFiNTkwYmM3NzdjN2JiMDc0NWJmIn0=	2018-10-10 18:11:59.458087+00
80bt8yyo6lbq3wfouimp08b7avel0tmd	Y2NiMmJkNzJhYzU3ODQyMmJhOWJhOTQ5ZThmOTVlNjc5ZjAxMjUxZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI1YjQ4NDcwNzM5ZDgwMGM3NmM5ZjFiNTkwYmM3NzdjN2JiMDc0NWJmIn0=	2018-10-10 19:45:40.099479+00
dz1kkclrdd80mpeoc96fbna6zdgjsjc1	Y2NiMmJkNzJhYzU3ODQyMmJhOWJhOTQ5ZThmOTVlNjc5ZjAxMjUxZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI1YjQ4NDcwNzM5ZDgwMGM3NmM5ZjFiNTkwYmM3NzdjN2JiMDc0NWJmIn0=	2018-10-10 20:17:34.338475+00
01aw2i3th6lm8hmsjn8k8kjr8q9o3otc	YjkyN2Q2MTkwNzUwZWMzZDQ3NmFiNjgxNTAwMDNkYTY3YTA4YmM2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiNjY4OTIwNGVmM2JlN2FhNzUwYmVjNzUyZTg3MTdjMzlmNGE4MDciLCJfYXV0aF91c2VyX2lkIjoiNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-10-17 13:10:32.157083+00
8ryh1nh1yf24hrteaxhbaj97e4mi5f0n	ZWExYzgxOTRkNTdhZTQ0YzFhMTg0Mjk4MmI5ZTU4YTBmNTExZGEyYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwZjA1ZWMyYmRlZDFiNDFhYWZkODczOTM2OWFhOTJkMWU2ODYwODk1In0=	2018-09-22 19:24:33.674+00
gmw7u8d69y6q60vvpalm07pv93w9cfbn	ZThlMTAwNTdjNzlmMDkwYWZhYjI3NGMwZTMzNTc5ZWZhNzA0Mjg3NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhYThiZTVjNGM4YjIyMDUzYTQwODg3NWQ5MGQ3YWQyMzgwMmVlYWUiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-22 19:04:44.284+00
vnwv06nnyqonve88zxdr48g9aydy1qpg	MDJjYzI2YzViOWQyZTUyZTYzMTFhZmU4N2UxYTJkODI3OGE1MTBkNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImU3NDJmMDFjN2RmNmRmZTZhYzFlMjJhNWMyYTM5MzAwOGFkMzE5OTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=	2018-11-12 16:03:59.870412+00
\.


--
-- Data for Name: forms_committee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_committee (id, committeeid, committeename, street1, street2, city, state, zipcode, treasurerlastname, treasurerfirstname, treasurermiddlename, treasurerprefix, treasurersuffix, created_at, updated_at, deleted_at, isdeleted, email_on_file) FROM stdin;
1	C12345678	test1	xyz	abc	Washington	DC	20001	David	Mark	J	Mr	II	2018-09-24 15:54:23.419144+00	2018-09-24 15:54:23.419172+00	\N	f	-
2	C01234567	test1	xyz	abc	Washington	DC	20001	David	Mark	J	Mr	II	2018-09-25 03:59:41.400669+00	2018-09-25 03:59:41.400697+00	\N	f	-
3	C01234567	test1	xyz	abc	Washington	DC	20001	David	Mark	J	Mr	II	2018-09-26 15:31:18.018227+00	2018-09-26 15:31:18.018263+00	\N	f	-
4	C00022368	NATIONAL ASSOCIATION OF CHAIN DRUG STORES, INC. POLITICAL ACTION COMMITTEE	Street 17	Northeast	Washington DC	DC	2002	Michael	David	M	Mr	II	2018-10-26 19:05:50.217864+00	2018-10-26 19:05:50.217904+00	\N	f	mdavid@test.com
\.


--
-- Name: forms_committee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.forms_committee_id_seq', 4, true);


--
-- Data for Name: forms_committeeinfo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_committeeinfo (committeeid, committeename, street1, street2, city, state, zipcode, treasurerlastname, treasurerfirstname, treasurermiddlename, treasurerprefix, treasurersuffix, created_at, deleted_at, isdeleted, updated_at, text, id, reason, is_submitted, additional_email_1, additional_email_2, email_on_file, signee, file) FROM stdin;
C12345678	test1	xyz	abc	Washington	DC	20001	David	Mark	J	Mr	II	2018-09-24 14:38:49.008392+00	\N	f	2018-09-24 14:38:49.008421+00	text	1	-	f	-	-	-	-	\N
C76543210	test1	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-04 13:08:20.116702+00	\N	f	2018-10-04 13:08:20.116735+00	text	10	msm	f	-	-	-	-	\N
C76543210	test1	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-10 19:36:41.199661+00	\N	f	2018-10-10 19:36:41.199696+00	text	11	msm	f	-	-	-	-	\N
C76543210	test1	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-10 19:37:44.153348+00	\N	f	2018-10-10 19:37:44.153379+00	text	12	msm	f	-	-	-	-	\N
C76543210	test1	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-10 19:40:46.239045+00	\N	f	2018-10-10 19:40:46.239087+00	text	13	msm	f	-	-	-	-	\N
C01234567	test1	xyz	abc	Washington	DC	20001	David	Mark	J	Mr	II	2018-09-25 15:01:48.372267+00	\N	f	2018-10-15 03:18:27.355759+00	text	9	-	t	-	-	-	-	\N
C76543210	test1	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-15 03:18:53.464734+00	\N	f	2018-10-15 03:18:53.464768+00	text	14	msm	f	-	-	-	-	\N
C76543210	test1	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-16 18:08:49.376478+00	\N	f	2018-10-16 18:08:49.376511+00	text	15	msm	f	-	-	-	-	\N
C76543210	test15	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-17 02:24:49.500055+00	\N	f	2018-10-17 02:24:49.500089+00	text	16	msm	f	-	-	-	-	\N
C01234567	test16	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-17 03:13:35.249422+00	\N	f	2018-10-17 14:57:43.065488+00	text	17	msm	t	-	-	-	-	\N
C01234567	test16	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-17 19:03:40.06531+00	\N	f	2018-10-17 19:03:40.065343+00	text	18	msm	f	-	-	-	-	\N
C01234567	test16	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-17 19:03:54.666383+00	\N	f	2018-10-17 19:03:54.666418+00	text	19	msm	f	-	-	-	-	\N
C01234567	test16	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-17 19:05:59.551036+00	\N	f	2018-10-17 19:05:59.551074+00	text	20	msm	f	-	-	-	-	\N
C01234567	test16	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-17 19:09:35.886702+00	\N	f	2018-10-17 19:09:35.886734+00	text	21	msm	f	-	-	-	-	\N
C01234567	test16	1st street	Noma	Washington	DC	20001	Smith	John	J	Mr	II	2018-10-17 19:10:34.579898+00	\N	f	2018-10-17 19:10:34.579928+00	text	22	msm	f	-	-	-	-	\N
C00022368	NATIONAL ASSOCIATION OF CHAIN DRUG STORES, INC. POLITICAL ACTION COMMITTEE	Street 17	Northeast	Washington DC	DC	2002	Michael	David	\N	Mr	II	2018-10-26 18:08:15.434875+00	\N	f	2018-10-26 18:08:15.434913+00	text	23	msm	f	-	-	mdavid@test.com	M David	\N
\.


--
-- Name: forms_committeeinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.forms_committeeinfo_id_seq', 23, true);


--
-- Data for Name: posts_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts_post (id, content, created_at, updated_at, author_id) FROM stdin;
\.


--
-- Name: posts_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_post_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authentication_account_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account
    ADD CONSTRAINT authentication_account_email_key UNIQUE (email);


--
-- Name: authentication_account_groups_account_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account_groups
    ADD CONSTRAINT authentication_account_groups_account_id_group_id_key UNIQUE (account_id, group_id);


--
-- Name: authentication_account_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account_groups
    ADD CONSTRAINT authentication_account_groups_pkey PRIMARY KEY (id);


--
-- Name: authentication_account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account
    ADD CONSTRAINT authentication_account_pkey PRIMARY KEY (id);


--
-- Name: authentication_account_user_permis_account_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account_user_permissions
    ADD CONSTRAINT authentication_account_user_permis_account_id_permission_id_key UNIQUE (account_id, permission_id);


--
-- Name: authentication_account_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account_user_permissions
    ADD CONSTRAINT authentication_account_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: authentication_account_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account
    ADD CONSTRAINT authentication_account_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_4f03a33a83f70212_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_4f03a33a83f70212_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: forms_committee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_committee
    ADD CONSTRAINT forms_committee_pkey PRIMARY KEY (id);


--
-- Name: forms_committeeinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_committeeinfo
    ADD CONSTRAINT forms_committeeinfo_pkey PRIMARY KEY (id);


--
-- Name: posts_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_57e81146a5443477_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_57e81146a5443477_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON public.auth_permission USING btree (content_type_id);


--
-- Name: authentication_account_email_48669fb17e77e6c1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_account_email_48669fb17e77e6c1_like ON public.authentication_account USING btree (email varchar_pattern_ops);


--
-- Name: authentication_account_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_account_groups_0e939a4f ON public.authentication_account_groups USING btree (group_id);


--
-- Name: authentication_account_groups_8a089c2a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_account_groups_8a089c2a ON public.authentication_account_groups USING btree (account_id);


--
-- Name: authentication_account_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_account_user_permissions_8373b171 ON public.authentication_account_user_permissions USING btree (permission_id);


--
-- Name: authentication_account_user_permissions_8a089c2a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_account_user_permissions_8a089c2a ON public.authentication_account_user_permissions USING btree (account_id);


--
-- Name: authentication_account_username_180d06cb8b43754a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_account_username_180d06cb8b43754a_like ON public.authentication_account USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_2fa16e8733a0015e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_2fa16e8733a0015e_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: forms_committeeinfomodel_committeeid_5fe70c53_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_committeeinfomodel_committeeid_5fe70c53_like ON public.forms_committeeinfo USING btree (committeeid varchar_pattern_ops);


--
-- Name: posts_post_4f331e2f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_post_4f331e2f ON public.posts_post USING btree (author_id);


--
-- Name: auth_content_type_id_7b6a0902c9f501ac_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_content_type_id_7b6a0902c9f501ac_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_44c22fe2e434f936_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_44c22fe2e434f936_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_65f4df8ce318a2db_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_65f4df8ce318a2db_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authen_account_id_668433a971333bf4_fk_authentication_account_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account_user_permissions
    ADD CONSTRAINT authen_account_id_668433a971333bf4_fk_authentication_account_id FOREIGN KEY (account_id) REFERENCES public.authentication_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authen_account_id_7b92ce93657e160a_fk_authentication_account_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account_groups
    ADD CONSTRAINT authen_account_id_7b92ce93657e160a_fk_authentication_account_id FOREIGN KEY (account_id) REFERENCES public.authentication_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentica_permission_id_14fd56c6e1596fe4_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account_user_permissions
    ADD CONSTRAINT authentica_permission_id_14fd56c6e1596fe4_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentication_accou_group_id_77fc2bddc65ee9cf_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_account_groups
    ADD CONSTRAINT authentication_accou_group_id_77fc2bddc65ee9cf_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_22f1ed7692c2bfc9_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT djan_content_type_id_22f1ed7692c2bfc9_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_ad_user_id_20fa9746ffc3f2e0_fk_authentication_account_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_ad_user_id_20fa9746ffc3f2e0_fk_authentication_account_id FOREIGN KEY (user_id) REFERENCES public.authentication_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_p_author_id_1aea33ff0a6aa9eb_fk_authentication_account_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_p_author_id_1aea33ff0a6aa9eb_fk_authentication_account_id FOREIGN KEY (author_id) REFERENCES public.authentication_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

