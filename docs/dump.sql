--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO tere;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO tere;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO tere;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO tere;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO tere;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO tere;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO tere;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO tere;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO tere;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO tere;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO tere;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO tere;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO tere;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO tere;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO tere;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO tere;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO tere;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO tere;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO tere;

--
-- Name: sound_caravan_web_aboutus; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE sound_caravan_web_aboutus (
    id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.sound_caravan_web_aboutus OWNER TO tere;

--
-- Name: sound_caravan_web_aboutus_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_aboutus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sound_caravan_web_aboutus_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_aboutus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_aboutus_id_seq OWNED BY sound_caravan_web_aboutus.id;


--
-- Name: sound_caravan_web_contact; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE sound_caravan_web_contact (
    id integer NOT NULL,
    address text NOT NULL,
    email1 character varying(50) NOT NULL,
    email2 character varying(50) NOT NULL,
    phone1 character varying(25) NOT NULL,
    phone2 character varying(25) NOT NULL,
    facebook character varying(255) NOT NULL,
    twitter character varying(255) NOT NULL,
    myspace character varying(255) NOT NULL
);


ALTER TABLE public.sound_caravan_web_contact OWNER TO tere;

--
-- Name: sound_caravan_web_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sound_caravan_web_contact_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_contact_id_seq OWNED BY sound_caravan_web_contact.id;


--
-- Name: sound_caravan_web_event; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE sound_caravan_web_event (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    description text NOT NULL,
    location text NOT NULL,
    event_date date NOT NULL,
    event_hour time without time zone NOT NULL,
    price character varying(50) NOT NULL
);


ALTER TABLE public.sound_caravan_web_event OWNER TO tere;

--
-- Name: sound_caravan_web_event_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sound_caravan_web_event_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_event_id_seq OWNED BY sound_caravan_web_event.id;


--
-- Name: sound_caravan_web_home; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE sound_caravan_web_home (
    id integer NOT NULL,
    video_mp4 character varying(100) NOT NULL,
    video_ogv character varying(100) NOT NULL,
    video_webm character varying(100) NOT NULL
);


ALTER TABLE public.sound_caravan_web_home OWNER TO tere;

--
-- Name: sound_caravan_web_home_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_home_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sound_caravan_web_home_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_home_id_seq OWNED BY sound_caravan_web_home.id;


--
-- Name: sound_caravan_web_image; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE sound_caravan_web_image (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    title character varying(50) NOT NULL,
    for_gallery boolean NOT NULL,
    "order" smallint NOT NULL,
    image_th character varying(100)
);


ALTER TABLE public.sound_caravan_web_image OWNER TO tere;

--
-- Name: sound_caravan_web_image_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sound_caravan_web_image_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_image_id_seq OWNED BY sound_caravan_web_image.id;


--
-- Name: sound_caravan_web_member; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE sound_caravan_web_member (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    image_id integer NOT NULL,
    role character varying(100) NOT NULL,
    "order" smallint NOT NULL
);


ALTER TABLE public.sound_caravan_web_member OWNER TO tere;

--
-- Name: sound_caravan_web_member_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sound_caravan_web_member_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_member_id_seq OWNED BY sound_caravan_web_member.id;


--
-- Name: sound_caravan_web_tour; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE sound_caravan_web_tour (
    id integer NOT NULL,
    description text NOT NULL,
    image_id integer
);


ALTER TABLE public.sound_caravan_web_tour OWNER TO tere;

--
-- Name: sound_caravan_web_tour_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_tour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sound_caravan_web_tour_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_tour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_tour_id_seq OWNED BY sound_caravan_web_tour.id;


--
-- Name: sound_caravan_web_video; Type: TABLE; Schema: public; Owner: tere; Tablespace: 
--

CREATE TABLE sound_caravan_web_video (
    id integer NOT NULL,
    video_script text NOT NULL,
    title character varying(50) NOT NULL
);


ALTER TABLE public.sound_caravan_web_video OWNER TO tere;

--
-- Name: sound_caravan_web_video_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sound_caravan_web_video_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_video_id_seq OWNED BY sound_caravan_web_video.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_aboutus ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_aboutus_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_contact ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_contact_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_event ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_event_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_home ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_home_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_image ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_member ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_member_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_tour ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_tour_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_video ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_video_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add Home	7	add_home
20	Can change Home	7	change_home
21	Can delete Home	7	delete_home
22	Can add About us	8	add_aboutus
23	Can change About us	8	change_aboutus
24	Can delete About us	8	delete_aboutus
25	Can add Member	9	add_member
26	Can change Member	9	change_member
27	Can delete Member	9	delete_member
28	Can add Event	10	add_event
29	Can change Event	10	change_event
30	Can delete Event	10	delete_event
31	Can add Contact	11	add_contact
32	Can change Contact	11	change_contact
33	Can delete Contact	11	delete_contact
34	Can add Image	12	add_image
35	Can change Image	12	change_image
36	Can delete Image	12	delete_image
37	Can add Video	13	add_video
38	Can change Video	13	change_video
39	Can delete Video	13	delete_video
40	Can add Tour	14	add_tour
41	Can change Tour	14	change_tour
42	Can delete Tour	14	delete_tour
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('auth_permission_id_seq', 42, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$S33DDxIsWAgr$0h0mjCdh+PYlddrg7RRPWQ6Y6trSJqop+Ox6m6HjH6c=	2014-07-17 10:06:09.018068+02	t	admin			teresa.delatorre@kaleidos.net	t	t	2014-07-14 13:16:14.074374+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2014-07-15 09:22:48.493231+02	1	Image object	1		12	1
2	2014-07-15 09:24:12.974232+02	1	Image object	3		12	1
3	2014-07-15 09:30:04.418851+02	2	Image object	1		12	1
4	2014-07-15 10:35:27.496843+02	2	Casa	3		12	1
5	2014-07-15 10:35:58.249184+02	3	casa	1		12	1
6	2014-07-15 10:40:44.381852+02	3	casa	3		12	1
7	2014-07-15 10:41:25.353113+02	4	Casa	1		12	1
8	2014-07-15 10:45:59.371926+02	4	Casa	3		12	1
9	2014-07-15 10:46:26.727537+02	5	casa	1		12	1
10	2014-07-15 10:53:57.049935+02	5	casa	3		12	1
11	2014-07-15 10:54:15.250851+02	6	casa	1		12	1
12	2014-07-15 10:56:29.457486+02	6	casa	3		12	1
13	2014-07-15 10:56:56.322648+02	7	casa	1		12	1
14	2014-07-15 11:01:17.389651+02	7	casa	3		12	1
15	2014-07-15 11:01:39.701083+02	8	casa	1		12	1
16	2014-07-15 11:15:11.399938+02	9	aaa	1		12	1
17	2014-07-16 12:05:36.024654+02	1	Home	1		13	1
18	2014-07-16 12:09:48.175945+02	1	Home object	1		7	1
19	2014-07-16 12:15:45.01919+02	1	AboutUs object	1		8	1
20	2014-07-16 12:21:52.141779+02	1	Member object	1		9	1
21	2014-07-16 12:23:21.258807+02	1	Member object	3		9	1
22	2014-07-16 12:23:36.394518+02	2	Member object	1		9	1
23	2014-07-16 12:26:26.419338+02	3	Carlos Garcia	1		9	1
24	2014-07-16 12:27:59.932458+02	1	Biografía	2	Modificado/a title.	8	1
25	2014-07-16 12:37:47.839789+02	1	Próximas fechas.	1		14	1
26	2014-07-16 12:40:45.409755+02	9	aaa	2	Modificado/a for_gallery.	12	1
27	2014-07-16 13:04:04.722163+02	2	Video en videos	1		13	1
28	2014-07-16 13:14:22.961627+02	3	Carlos Garcia	2	Modificado/a role.	9	1
29	2014-07-16 13:14:33.074108+02	2	Juanjo Marte	2	Modificado/a role.	9	1
30	2014-07-16 13:46:22.906984+02	1	Concierto	1		10	1
31	2014-07-16 13:59:01.300375+02	1	Contact object	1		11	1
32	2014-07-17 10:09:28.90564+02	1	Contact object	2	Modificado/a email1, email2, phone1 y phone2.	11	1
33	2014-07-17 10:09:39.836489+02	1	Concierto	3		10	1
34	2014-07-17 10:12:32.71645+02	2	Sala Olvido	1		10	1
35	2014-07-17 10:14:38.355431+02	3	Sala Siroco	1		10	1
36	2014-07-17 10:16:15.314475+02	4	Sala Penélope	1		10	1
37	2014-07-17 10:17:51.507141+02	5	Sala Heinneken-Arena	1		10	1
38	2014-07-17 10:19:43.821018+02	6	Asociación Músicos de Móstoles	1		10	1
39	2014-07-17 10:20:56.127652+02	7	Sala Rock Kitchen	1		10	1
40	2014-07-17 10:22:52.089275+02	1	Home	3		13	1
41	2014-07-17 10:24:09.588403+02	2	Juanjo Marte	3		9	1
42	2014-07-17 10:24:14.368711+02	3	Carlos Garcia	3		9	1
43	2014-07-17 10:24:28.410389+02	1	Próximas fechas.	3		14	1
44	2014-07-17 10:24:42.532806+02	8	casa	3		12	1
45	2014-07-17 10:24:45.820251+02	9	aaa	3		12	1
46	2014-07-17 10:34:42.911202+02	10	Juanjo Marte	1		12	1
47	2014-07-17 10:34:56.234055+02	11	Carlos García	1		12	1
48	2014-07-17 10:35:13.402442+02	12	Sergio Castañeda	1		12	1
49	2014-07-17 10:35:31.615998+02	13	Fer García	1		12	1
50	2014-07-17 10:36:42.611647+02	4	Juanjo Marte	1		9	1
51	2014-07-17 10:39:13.707071+02	5	Carlos García	1		9	1
52	2014-07-17 10:39:46.121261+02	6	Sergio Castañeda	1		9	1
53	2014-07-17 10:40:12.853977+02	7	Fer García	1		9	1
54	2014-07-17 10:43:06.03208+02	14	Tour	1		12	1
55	2014-07-17 10:44:07.945589+02	2	Próximas fechas.	1		14	1
56	2014-07-17 10:44:47.648863+02	2	Próximas fechas.	2	Modificado/a description.	14	1
57	2014-07-17 10:45:08.61407+02	2	Próximas fechas.	2	Modificado/a description.	14	1
58	2014-07-17 10:47:49.719247+02	14	Tour	2	Modificado/a image.	12	1
59	2014-07-17 10:48:50.646307+02	14	Tour	2	Modificado/a image.	12	1
60	2014-07-17 10:54:06.154171+02	14	Tour	2	Modificado/a image.	12	1
61	2014-07-17 10:56:56.550128+02	2	Videos	2	Modificado/a title y video_script.	13	1
62	2014-07-17 10:59:59.322628+02	2	Videos	2	Modificado/a video_script.	13	1
63	2014-07-17 11:22:42.621093+02	15	carlos1	1		12	1
64	2014-07-17 11:22:54.941718+02	16	carlos2	1		12	1
65	2014-07-17 11:23:03.805843+02	17	fer1	1		12	1
66	2014-07-17 11:23:39.170734+02	18	Fer2	1		12	1
67	2014-07-17 11:24:31.934017+02	18	fer2	2	Modificado/a title.	12	1
68	2014-07-17 11:24:42.926098+02	19	fer3	1		12	1
69	2014-07-17 11:24:51.402404+02	20	fer4	1		12	1
70	2014-07-17 11:25:02.06854+02	21	juanjo1	1		12	1
71	2014-07-17 11:25:11.170002+02	22	juanjo2	1		12	1
72	2014-07-17 11:25:23.942502+02	23	juanjo3	1		12	1
73	2014-07-17 11:25:39.791024+02	24	juanjo4	1		12	1
74	2014-07-17 11:25:51.18745+02	25	juanjo5	1		12	1
75	2014-07-17 11:26:04.687231+02	26	juanjo6	1		12	1
76	2014-07-17 11:26:27.463666+02	27	juanjo7	1		12	1
77	2014-07-17 11:26:37.427468+02	28	juanjo8	1		12	1
78	2014-07-17 11:26:47.343638+02	29	juanjo9	1		12	1
79	2014-07-17 11:27:08.573182+02	30	sergio1	1		12	1
80	2014-07-17 11:27:20.353993+02	31	sergio2	1		12	1
81	2014-07-17 11:27:29.246023+02	32	sergio3	1		12	1
82	2014-07-17 11:28:01.026648+02	33	sergio5	1		12	1
83	2014-07-17 11:28:15.827644+02	34	sergio6	1		12	1
84	2014-07-17 11:28:25.405345+02	35	sergio7	1		12	1
85	2014-07-17 11:29:43.700441+02	36	sound_caravan1	1		12	1
86	2014-07-17 11:29:52.095192+02	37	sound_caravan2	1		12	1
87	2014-07-17 11:30:02.763259+02	38	sound_caravan3	1		12	1
88	2014-07-17 11:30:11.577511+02	39	sound_caravan4	1		12	1
89	2014-07-17 11:30:20.692917+02	40	sound_caravan5	1		12	1
90	2014-07-17 11:55:23.068395+02	1	Biografía	3		8	1
91	2014-07-17 11:55:32.4018+02	1	Contact object	3		11	1
92	2014-07-17 11:55:58.629044+02	2	Próximas fechas.	3		14	1
93	2014-07-17 11:56:41.219492+02	2	Videos	3		13	1
94	2014-07-17 12:27:38.191394+02	14	Tour	3		12	1
95	2014-07-17 12:42:38.800504+02	1	AboutUs object	2	Modificado/a description.	8	1
96	2014-07-17 12:42:43.177934+02	1	AboutUs object	2	No ha cambiado ningún campo.	8	1
97	2014-07-17 12:44:07.154751+02	1	Contact object	2	Modificado/a email1, email2, phone1, phone2, facebook, twitter y myspace.	11	1
98	2014-07-17 12:49:46.690461+02	1	Home object	2	Modificado/a video_mp4, video_ogv y video_webm.	7	1
99	2014-07-17 12:50:45.352649+02	41	Tour	1		12	1
100	2014-07-17 12:51:28.787022+02	1	Tour object	2	Modificado/a description y image.	14	1
101	2014-07-17 12:52:21.135868+02	1	Video	2	Modificado/a title y video_script.	13	1
102	2014-07-17 14:05:41.273579+02	1	Video	2	Modificado/a video_script.	13	1
103	2014-07-17 14:06:50.879515+02	1	Video	2	Modificado/a video_script.	13	1
104	2014-07-17 15:28:46.732375+02	4	Juanjo Marte	2	Modificado/a description.	9	1
105	2014-07-17 15:29:09.637941+02	5	Carlos García	2	No ha cambiado ningún campo.	9	1
106	2014-07-17 15:29:18.990576+02	4	Juanjo Marte	2	No ha cambiado ningún campo.	9	1
107	2014-07-17 15:29:55.775414+02	6	Sergio Castañeda	2	No ha cambiado ningún campo.	9	1
108	2014-07-17 15:29:58.956021+02	7	Fer García	2	No ha cambiado ningún campo.	9	1
109	2014-07-17 15:36:00.896422+02	5	Carlos García	2	Modificado/a order.	9	1
110	2014-07-17 15:36:10.948253+02	6	Sergio Castañeda	2	Modificado/a order.	9	1
111	2014-07-17 15:36:16.634963+02	7	Fer García	2	Modificado/a order.	9	1
112	2014-07-17 15:36:34.287983+02	4	Juanjo Marte	2	No ha cambiado ningún campo.	9	1
113	2014-07-17 15:45:14.855622+02	41	Tour	2	Modificado/a image.	12	1
114	2014-07-17 15:49:11.376946+02	41	Tour	2	Modificado/a image.	12	1
115	2014-07-17 15:49:52.986832+02	41	Tour	2	Modificado/a image.	12	1
116	2014-07-17 15:53:42.186636+02	18	fer2	2	Modificado/a image.	12	1
117	2014-07-17 16:31:00.141393+02	40	sound_caravan5	3		12	1
118	2014-07-17 16:31:34.035418+02	39	sound_caravan4	2	Modificado/a image_th.	12	1
119	2014-07-17 16:31:41.262229+02	38	sound_caravan3	2	Modificado/a image_th.	12	1
120	2014-07-17 16:31:48.194455+02	37	sound_caravan2	2	Modificado/a image_th.	12	1
121	2014-07-17 16:31:56.234349+02	36	sound_caravan1	2	Modificado/a image_th.	12	1
122	2014-07-17 16:32:06.194381+02	35	sergio7	2	Modificado/a image_th.	12	1
123	2014-07-17 16:32:12.878387+02	34	sergio6	2	Modificado/a image_th.	12	1
124	2014-07-17 16:32:24.099612+02	33	sergio5	2	Modificado/a image_th.	12	1
125	2014-07-17 16:32:32.811235+02	32	sergio3	2	Modificado/a image_th.	12	1
126	2014-07-17 16:32:43.111218+02	31	sergio2	2	Modificado/a image_th.	12	1
127	2014-07-17 16:32:52.099847+02	30	sergio1	2	Modificado/a image_th.	12	1
128	2014-07-17 16:32:59.546282+02	29	juanjo9	2	Modificado/a image_th.	12	1
129	2014-07-17 16:33:07.784181+02	28	juanjo8	2	Modificado/a image_th.	12	1
130	2014-07-17 16:33:15.706012+02	27	juanjo7	2	Modificado/a image_th.	12	1
131	2014-07-17 16:33:23.903298+02	26	juanjo6	2	Modificado/a image_th.	12	1
132	2014-07-17 16:33:33.13232+02	25	juanjo5	2	Modificado/a image_th.	12	1
133	2014-07-17 16:33:41.594825+02	24	juanjo4	2	Modificado/a image_th.	12	1
134	2014-07-17 16:33:50.825441+02	23	juanjo3	2	Modificado/a image_th.	12	1
135	2014-07-17 16:34:12.365623+02	22	juanjo2	3		12	1
136	2014-07-17 16:34:34.244327+02	21	juanjo1	2	Modificado/a image_th.	12	1
137	2014-07-17 16:34:40.982005+02	20	fer4	2	Modificado/a image_th.	12	1
138	2014-07-17 16:34:47.072638+02	19	fer3	2	Modificado/a image_th.	12	1
139	2014-07-17 16:34:53.796895+02	18	fer2	2	Modificado/a image_th.	12	1
140	2014-07-17 16:35:04.967675+02	17	fer1	2	Modificado/a image_th.	12	1
141	2014-07-17 16:35:12.47258+02	16	carlos2	2	Modificado/a image_th.	12	1
142	2014-07-17 16:35:20.473379+02	15	carlos1	2	Modificado/a image_th.	12	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 142, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	Home	sound_caravan_web	home
8	About us	sound_caravan_web	aboutus
9	Member	sound_caravan_web	member
10	Event	sound_caravan_web	event
11	Contact	sound_caravan_web	contact
12	Image	sound_caravan_web	image
13	Video	sound_caravan_web	video
14	Tour	sound_caravan_web	tour
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('django_content_type_id_seq', 14, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2014-07-14 13:12:22.840352+02
2	auth	0001_initial	2014-07-14 13:12:24.79982+02
3	admin	0001_initial	2014-07-14 13:12:25.110504+02
4	sessions	0001_initial	2014-07-14 13:12:25.302268+02
5	sound_caravan_web	0001_initial	2014-07-14 17:46:37.056931+02
6	sound_caravan_web	0002_auto_20140715_0925	2014-07-15 09:25:55.250795+02
7	sound_caravan_web	0003_auto_20140715_1532	2014-07-15 15:32:56.295247+02
8	sound_caravan_web	0004_image_for_gallery	2014-07-16 09:47:26.406432+02
9	sound_caravan_web	0005_video_for_home	2014-07-16 12:04:56.449799+02
10	sound_caravan_web	0006_tour	2014-07-16 12:35:30.823456+02
11	sound_caravan_web	0007_member_role	2014-07-16 13:13:41.950202+02
12	sound_caravan_web	0008_remove_event_image	2014-07-16 13:45:37.960968+02
13	sound_caravan_web	0009_auto_20140717_1159	2014-07-17 12:21:45.459432+02
14	sound_caravan_web	0010_auto_20140717_1221	2014-07-17 12:21:45.710608+02
15	sound_caravan_web	0011_auto_20140717_1235	2014-07-17 12:35:27.482419+02
16	sound_caravan_web	0012_member_order	2014-07-17 15:35:42.438391+02
17	sound_caravan_web	0013_auto_20140717_1539	2014-07-17 15:39:51.916805+02
18	sound_caravan_web	0014_image_image_th	2014-07-17 16:06:50.327334+02
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('django_migrations_id_seq', 18, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
8ticaugzodu4xsoroxnri5xkjo7w5kad	NGE3MTg1NDRjODExOTUwNjNjY2MyYmJhM2JmNDdmNGYzNDBmZjVjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNTcxMmY4YTFlN2ZmMTkzMDE4YmFlNjJlNTU3ODM1YTY3MzdlZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2014-07-31 10:06:09.043174+02
\.


--
-- Data for Name: sound_caravan_web_aboutus; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY sound_caravan_web_aboutus (id, description) FROM stdin;
1	La Caravana comenzó a andar en el año 2008, cuando Carlos García (guitarra) y Juanjo Marte (voz), se encuentran en un cruce de caminos y deciden montar una banda de Rock basándose en los grupos que les han influido musicalmente. Desde las bandas míticas de los años '70, hasta las propuestas más actuales. Junto a Sergio Castañeda, emprenden el camino y empiezan a componer sus primeros temas como banda. En Junio de 2013 se une a La Caravana Fer García como batería, aportando al sonido del grupo bases contundentes y trabajadas, que unido a las melodías vocales, conforman su estilo tan particular.
\.


--
-- Name: sound_caravan_web_aboutus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('sound_caravan_web_aboutus_id_seq', 1, true);


--
-- Data for Name: sound_caravan_web_contact; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY sound_caravan_web_contact (id, address, email1, email2, phone1, phone2, facebook, twitter, myspace) FROM stdin;
1		soundcaravanrock@gmail.com	soundcaravanmail@gmail.com	629 77 97 02	669 38 34 55	https://www.facebook.com/SoundCaravanOficial?ref=br_rs	https://twitter.com/SoundCaravan	https://myspace.com/soundcaravan
\.


--
-- Name: sound_caravan_web_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('sound_caravan_web_contact_id_seq', 1, true);


--
-- Data for Name: sound_caravan_web_event; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY sound_caravan_web_event (id, title, description, location, event_date, event_hour, price) FROM stdin;
2	Sala Olvido	Junto a Piel y Hueso.	Calle Olvido 15, Madrid	2014-01-10	22:00:00	Entrada+consumición 7€.
3	Sala Siroco	Junto a Renegades.	Calle San Dimas 3, Madrid	2013-11-02	21:30:00	Entrada+consumición 8€.
4	Sala Penélope	Junto a O'Funk'Illo y Emy Gago.	Calle Hilarón Eslava 34, Madrid	2012-11-24	20:00:00	Entada anticipada 15€, puerta 20€.
5	Sala Heinneken-Arena	Wolfest 2012 Edition.	Calle Princesa 1, Madrid	2012-05-26	18:00:00	Entrada 8€.
6	Asociación Músicos de Móstoles	Concierto presentación de nueva formación.	Calle Fragua 4, Móstoles, Madrid	2012-06-09	22:00:00	Entrada gratuita.
7	Sala Rock Kitchen	Emergenzza Festival.	Calle de Fundadores 7, Madrid	2011-01-22	22:00:00	Entrada 7€
\.


--
-- Name: sound_caravan_web_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('sound_caravan_web_event_id_seq', 7, true);


--
-- Data for Name: sound_caravan_web_home; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY sound_caravan_web_home (id, video_mp4, video_ogv, video_webm) FROM stdin;
1	files/video.mp4	files/video.ogv	files/video.webm
\.


--
-- Name: sound_caravan_web_home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('sound_caravan_web_home_id_seq', 1, true);


--
-- Data for Name: sound_caravan_web_image; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY sound_caravan_web_image (id, image, title, for_gallery, "order", image_th) FROM stdin;
10	images/member_juanjo.jpg	Juanjo Marte	f	1	\N
11	images/member_carlos.jpg	Carlos García	f	1	\N
12	images/member_sergio.jpg	Sergio Castañeda	f	1	\N
13	images/member_fer.jpg	Fer García	f	1	\N
41	images/tour.jpg	Tour	f	1	\N
39	images/sound_caravan4.jpg	sound_caravan4	t	1	images/sound_caravan4_th.jpg
38	images/sound_caravan3.jpg	sound_caravan3	t	1	images/sound_caravan3_th.jpg
37	images/sound_caravan2.jpg	sound_caravan2	t	1	images/sound_caravan2_th.jpg
36	images/sound_caravan1.jpg	sound_caravan1	t	1	images/sound_caravan1_th.jpg
35	images/sergio7.jpg	sergio7	t	1	images/sergio7_th.jpg
34	images/sergio6.jpg	sergio6	t	1	images/sergio6_th.jpg
33	images/sergio5.jpg	sergio5	t	1	images/sergio5_th.jpg
32	images/sergio3.jpg	sergio3	t	1	images/sergio3_th.jpg
31	images/sergio2.jpg	sergio2	t	1	images/sergio2_th.jpg
30	images/sergio1.jpg	sergio1	t	1	images/sergio1_th.jpg
29	images/juanjo9.jpg	juanjo9	t	1	images/juanjo9_th.jpg
28	images/juanjo8.jpg	juanjo8	t	1	images/juanjo8_th.jpg
27	images/juanjo7.jpg	juanjo7	t	1	images/sergio7_th_1.jpg
26	images/juanjo6.jpg	juanjo6	t	1	images/juanjo6_th.jpg
25	images/juanjo5.jpg	juanjo5	t	1	images/juanjo5_th.jpg
24	images/juanjo4.jpg	juanjo4	t	1	images/juanjo4_th.jpg
23	images/juanjo3.jpg	juanjo3	t	1	images/juanjo3_th.jpg
21	images/juanjo1.jpg	juanjo1	t	1	images/juanjo1_th.jpg
20	images/fer4.jpg	fer4	t	1	images/fer4_th.jpg
19	images/fer3.jpg	fer3	t	1	images/fer3_th.jpg
18	images/fer2_1.JPG	fer2	t	1	images/fer2_th.jpg
17	images/fer1.jpg	fer1	t	1	images/fer1_th.jpg
16	images/carlos2.jpg	carlos2	t	1	images/carlos2_th.jpg
15	images/carlos1.jpg	carlos1	t	1	images/carlos1_th.jpg
\.


--
-- Name: sound_caravan_web_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('sound_caravan_web_image_id_seq', 41, true);


--
-- Data for Name: sound_caravan_web_member; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY sound_caravan_web_member (id, name, description, image_id, role, "order") FROM stdin;
5	Carlos García	A finales de la década de los '90 forma Súkubo, grupo de Metal, con su hermano y unos amigos,en Móstoles. Compaginando la guitarra con sus estudios como técnico de sonido pasa el tiempo, hasta 2006 que forma No Roots, ya compartiendo formación con Juanjo. En 2008 ambos fundan Sound Caravan.	11	Guitarra	2
6	Sergio Castañeda	Su carrera como músico se inicia en 1990, en Móstoles (Madrid) con Mac and The Reapers. Luego siguieron Icaros en 1998 y, ya en 2001,  el grupo de versiones de clasicos del  rock Rock Factory. En 2009 entra a formar parte de Sound Caravan.	12	Bajo	3
7	Fer García	Todo empieza en su Granada natal, tras varios años de aprendidaje en The Vicious Garden, en 2009 forma Koda, con los que está hasta 2011, año de su llegada a Madrid. En 2012, ya en la capital, entra a formar parte de Pray for Mojo, hasta 2013, que entra en Sound Caravan.  	13	Batería	4
4	Juanjo Marte	En 1999 entra en la formación de Gasóleo, grupo de Rock sureño,en Fuenlabrada. Tras años de multitud de conciertos en 2003, entra a formar parte de Súkubo, donde ya militaba Carlos, con el que tambien coincide en No Roots, en 2006, y con el que finalmente monta Sound Caravan en 2008	10	Voz	1
\.


--
-- Name: sound_caravan_web_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('sound_caravan_web_member_id_seq', 7, true);


--
-- Data for Name: sound_caravan_web_tour; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY sound_caravan_web_tour (id, description, image_id) FROM stdin;
1	Aquí puedes ver nuestros próximos conciertos. ¡Esperamos verte pronto!	41
\.


--
-- Name: sound_caravan_web_tour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('sound_caravan_web_tour_id_seq', 2, true);


--
-- Data for Name: sound_caravan_web_video; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY sound_caravan_web_video (id, video_script, title) FROM stdin;
1	<iframe src="//player.vimeo.com/hubnut/user/user30205384/uploaded_videos?color=ffffff&amp;background=000000&amp;slideshow=0&amp;video_title=1&amp;video_byline=1" width="100%" height="500" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>	Video
\.


--
-- Name: sound_caravan_web_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('sound_caravan_web_video_id_seq', 2, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_3c19401d1f548cdd_uniq; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3c19401d1f548cdd_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: sound_caravan_web_aboutus_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY sound_caravan_web_aboutus
    ADD CONSTRAINT sound_caravan_web_aboutus_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY sound_caravan_web_contact
    ADD CONSTRAINT sound_caravan_web_contact_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_event_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY sound_caravan_web_event
    ADD CONSTRAINT sound_caravan_web_event_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_home_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY sound_caravan_web_home
    ADD CONSTRAINT sound_caravan_web_home_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_image_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY sound_caravan_web_image
    ADD CONSTRAINT sound_caravan_web_image_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_member_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY sound_caravan_web_member
    ADD CONSTRAINT sound_caravan_web_member_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_tour_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY sound_caravan_web_tour
    ADD CONSTRAINT sound_caravan_web_tour_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_video_pkey; Type: CONSTRAINT; Schema: public; Owner: tere; Tablespace: 
--

ALTER TABLE ONLY sound_caravan_web_video
    ADD CONSTRAINT sound_caravan_web_video_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: sound_caravan_web_member_f33175e6; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX sound_caravan_web_member_f33175e6 ON sound_caravan_web_member USING btree (image_id);


--
-- Name: sound_caravan_web_tour_f33175e6; Type: INDEX; Schema: public; Owner: tere; Tablespace: 
--

CREATE INDEX sound_caravan_web_tour_f33175e6 ON sound_caravan_web_tour USING btree (image_id);


--
-- Name: auth_content_type_id_59379912ee47a7a2_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_59379912ee47a7a2_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_79fa89a2b7e5d195_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_79fa89a2b7e5d195_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_3905f20216b6029a_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_3905f20216b6029a_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_472f19eb6908f218_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_472f19eb6908f218_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_5870d34090b02744_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_5870d34090b02744_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_u_permission_id_b9fe557b44a22ee_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_u_permission_id_b9fe557b44a22ee_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_36cb28b9605c5579_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_36cb28b9605c5579_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_66b5136a601f51a8_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_66b5136a601f51a8_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_4280fe8e964f6773_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_4280fe8e964f6773_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sound_c_image_id_37a7f9c7ee6cac8c_fk_sound_caravan_web_image_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_member
    ADD CONSTRAINT sound_c_image_id_37a7f9c7ee6cac8c_fk_sound_caravan_web_image_id FOREIGN KEY (image_id) REFERENCES sound_caravan_web_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sound_caravan_web_tour_image_id_58d7fa507176eb88_fk; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_tour
    ADD CONSTRAINT sound_caravan_web_tour_image_id_58d7fa507176eb88_fk FOREIGN KEY (image_id) REFERENCES sound_caravan_web_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

