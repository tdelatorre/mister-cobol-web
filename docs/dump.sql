--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO tere;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO tere;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO tere;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO tere;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO tere;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO tere;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: tere
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


ALTER TABLE auth_user OWNER TO tere;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO tere;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO tere;

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


ALTER TABLE auth_user_id_seq OWNER TO tere;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO tere;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO tere;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: tere
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


ALTER TABLE django_admin_log OWNER TO tere;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO tere;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO tere;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO tere;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO tere;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO tere;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO tere;

--
-- Name: mister_cobol_web_aboutus; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE mister_cobol_web_aboutus (
    id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE mister_cobol_web_aboutus OWNER TO tere;

--
-- Name: mister_cobol_web_aboutus_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE mister_cobol_web_aboutus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mister_cobol_web_aboutus_id_seq OWNER TO tere;

--
-- Name: mister_cobol_web_aboutus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE mister_cobol_web_aboutus_id_seq OWNED BY mister_cobol_web_aboutus.id;


--
-- Name: mister_cobol_web_contact; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE mister_cobol_web_contact (
    id integer NOT NULL,
    address text NOT NULL,
    email1 character varying(50) NOT NULL,
    email2 character varying(50) NOT NULL,
    phone1 character varying(25) NOT NULL,
    phone2 character varying(25) NOT NULL,
    facebook character varying(255) NOT NULL,
    twitter character varying(255) NOT NULL,
    youtube character varying(255) NOT NULL,
    instagram character varying(255) NOT NULL
);


ALTER TABLE mister_cobol_web_contact OWNER TO tere;

--
-- Name: mister_cobol_web_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE mister_cobol_web_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mister_cobol_web_contact_id_seq OWNER TO tere;

--
-- Name: mister_cobol_web_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE mister_cobol_web_contact_id_seq OWNED BY mister_cobol_web_contact.id;


--
-- Name: mister_cobol_web_event; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE mister_cobol_web_event (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    description text NOT NULL,
    location text NOT NULL,
    event_date date NOT NULL,
    event_hour time without time zone NOT NULL,
    price character varying(50) NOT NULL,
    highlighted boolean NOT NULL
);


ALTER TABLE mister_cobol_web_event OWNER TO tere;

--
-- Name: mister_cobol_web_event_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE mister_cobol_web_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mister_cobol_web_event_id_seq OWNER TO tere;

--
-- Name: mister_cobol_web_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE mister_cobol_web_event_id_seq OWNED BY mister_cobol_web_event.id;


--
-- Name: mister_cobol_web_home; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE mister_cobol_web_home (
    id integer NOT NULL,
    video_mp4 character varying(100) NOT NULL,
    video_ogv character varying(100) NOT NULL,
    video_webm character varying(100) NOT NULL
);


ALTER TABLE mister_cobol_web_home OWNER TO tere;

--
-- Name: mister_cobol_web_home_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE mister_cobol_web_home_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mister_cobol_web_home_id_seq OWNER TO tere;

--
-- Name: mister_cobol_web_home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE mister_cobol_web_home_id_seq OWNED BY mister_cobol_web_home.id;


--
-- Name: mister_cobol_web_image; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE mister_cobol_web_image (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    title character varying(50) NOT NULL,
    for_gallery boolean NOT NULL,
    "order" smallint NOT NULL,
    image_th character varying(100)
);


ALTER TABLE mister_cobol_web_image OWNER TO tere;

--
-- Name: mister_cobol_web_image_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE mister_cobol_web_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mister_cobol_web_image_id_seq OWNER TO tere;

--
-- Name: mister_cobol_web_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE mister_cobol_web_image_id_seq OWNED BY mister_cobol_web_image.id;


--
-- Name: mister_cobol_web_member; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE mister_cobol_web_member (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    image_id integer NOT NULL,
    role character varying(100) NOT NULL,
    "order" smallint NOT NULL
);


ALTER TABLE mister_cobol_web_member OWNER TO tere;

--
-- Name: mister_cobol_web_member_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE mister_cobol_web_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mister_cobol_web_member_id_seq OWNER TO tere;

--
-- Name: mister_cobol_web_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE mister_cobol_web_member_id_seq OWNED BY mister_cobol_web_member.id;


--
-- Name: mister_cobol_web_tour; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE mister_cobol_web_tour (
    id integer NOT NULL,
    description text NOT NULL,
    image_id integer
);


ALTER TABLE mister_cobol_web_tour OWNER TO tere;

--
-- Name: mister_cobol_web_tour_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE mister_cobol_web_tour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mister_cobol_web_tour_id_seq OWNER TO tere;

--
-- Name: mister_cobol_web_tour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE mister_cobol_web_tour_id_seq OWNED BY mister_cobol_web_tour.id;


--
-- Name: mister_cobol_web_video; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE mister_cobol_web_video (
    id integer NOT NULL,
    video_script text NOT NULL,
    title character varying(50) NOT NULL,
    "order" smallint NOT NULL
);


ALTER TABLE mister_cobol_web_video OWNER TO tere;

--
-- Name: mister_cobol_web_video_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE mister_cobol_web_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mister_cobol_web_video_id_seq OWNER TO tere;

--
-- Name: mister_cobol_web_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE mister_cobol_web_video_id_seq OWNED BY mister_cobol_web_video.id;


--
-- Name: sound_caravan_web_aboutus; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE sound_caravan_web_aboutus (
    id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE sound_caravan_web_aboutus OWNER TO tere;

--
-- Name: sound_caravan_web_aboutus_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_aboutus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sound_caravan_web_aboutus_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_aboutus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_aboutus_id_seq OWNED BY sound_caravan_web_aboutus.id;


--
-- Name: sound_caravan_web_contact; Type: TABLE; Schema: public; Owner: tere
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


ALTER TABLE sound_caravan_web_contact OWNER TO tere;

--
-- Name: sound_caravan_web_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sound_caravan_web_contact_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_contact_id_seq OWNED BY sound_caravan_web_contact.id;


--
-- Name: sound_caravan_web_event; Type: TABLE; Schema: public; Owner: tere
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


ALTER TABLE sound_caravan_web_event OWNER TO tere;

--
-- Name: sound_caravan_web_event_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sound_caravan_web_event_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_event_id_seq OWNED BY sound_caravan_web_event.id;


--
-- Name: sound_caravan_web_home; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE sound_caravan_web_home (
    id integer NOT NULL,
    video_mp4 character varying(100) NOT NULL,
    video_ogv character varying(100) NOT NULL,
    video_webm character varying(100) NOT NULL
);


ALTER TABLE sound_caravan_web_home OWNER TO tere;

--
-- Name: sound_caravan_web_home_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_home_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sound_caravan_web_home_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_home_id_seq OWNED BY sound_caravan_web_home.id;


--
-- Name: sound_caravan_web_image; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE sound_caravan_web_image (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    title character varying(50) NOT NULL,
    for_gallery boolean NOT NULL,
    "order" smallint NOT NULL,
    image_th character varying(100)
);


ALTER TABLE sound_caravan_web_image OWNER TO tere;

--
-- Name: sound_caravan_web_image_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sound_caravan_web_image_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_image_id_seq OWNED BY sound_caravan_web_image.id;


--
-- Name: sound_caravan_web_member; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE sound_caravan_web_member (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    image_id integer NOT NULL,
    role character varying(100) NOT NULL,
    "order" smallint NOT NULL
);


ALTER TABLE sound_caravan_web_member OWNER TO tere;

--
-- Name: sound_caravan_web_member_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sound_caravan_web_member_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_member_id_seq OWNED BY sound_caravan_web_member.id;


--
-- Name: sound_caravan_web_tour; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE sound_caravan_web_tour (
    id integer NOT NULL,
    description text NOT NULL,
    image_id integer
);


ALTER TABLE sound_caravan_web_tour OWNER TO tere;

--
-- Name: sound_caravan_web_tour_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_tour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sound_caravan_web_tour_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_tour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_tour_id_seq OWNED BY sound_caravan_web_tour.id;


--
-- Name: sound_caravan_web_video; Type: TABLE; Schema: public; Owner: tere
--

CREATE TABLE sound_caravan_web_video (
    id integer NOT NULL,
    video_script text NOT NULL,
    title character varying(50) NOT NULL
);


ALTER TABLE sound_caravan_web_video OWNER TO tere;

--
-- Name: sound_caravan_web_video_id_seq; Type: SEQUENCE; Schema: public; Owner: tere
--

CREATE SEQUENCE sound_caravan_web_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sound_caravan_web_video_id_seq OWNER TO tere;

--
-- Name: sound_caravan_web_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tere
--

ALTER SEQUENCE sound_caravan_web_video_id_seq OWNED BY sound_caravan_web_video.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: mister_cobol_web_aboutus id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_aboutus ALTER COLUMN id SET DEFAULT nextval('mister_cobol_web_aboutus_id_seq'::regclass);


--
-- Name: mister_cobol_web_contact id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_contact ALTER COLUMN id SET DEFAULT nextval('mister_cobol_web_contact_id_seq'::regclass);


--
-- Name: mister_cobol_web_event id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_event ALTER COLUMN id SET DEFAULT nextval('mister_cobol_web_event_id_seq'::regclass);


--
-- Name: mister_cobol_web_home id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_home ALTER COLUMN id SET DEFAULT nextval('mister_cobol_web_home_id_seq'::regclass);


--
-- Name: mister_cobol_web_image id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_image ALTER COLUMN id SET DEFAULT nextval('mister_cobol_web_image_id_seq'::regclass);


--
-- Name: mister_cobol_web_member id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_member ALTER COLUMN id SET DEFAULT nextval('mister_cobol_web_member_id_seq'::regclass);


--
-- Name: mister_cobol_web_tour id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_tour ALTER COLUMN id SET DEFAULT nextval('mister_cobol_web_tour_id_seq'::regclass);


--
-- Name: mister_cobol_web_video id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_video ALTER COLUMN id SET DEFAULT nextval('mister_cobol_web_video_id_seq'::regclass);


--
-- Name: sound_caravan_web_aboutus id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_aboutus ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_aboutus_id_seq'::regclass);


--
-- Name: sound_caravan_web_contact id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_contact ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_contact_id_seq'::regclass);


--
-- Name: sound_caravan_web_event id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_event ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_event_id_seq'::regclass);


--
-- Name: sound_caravan_web_home id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_home ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_home_id_seq'::regclass);


--
-- Name: sound_caravan_web_image id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_image ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_image_id_seq'::regclass);


--
-- Name: sound_caravan_web_member id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_member ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_member_id_seq'::regclass);


--
-- Name: sound_caravan_web_tour id; Type: DEFAULT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_tour ALTER COLUMN id SET DEFAULT nextval('sound_caravan_web_tour_id_seq'::regclass);


--
-- Name: sound_caravan_web_video id; Type: DEFAULT; Schema: public; Owner: tere
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
28	Can add Tour	10	add_tour
29	Can change Tour	10	change_tour
30	Can delete Tour	10	delete_tour
31	Can add Event	11	add_event
32	Can change Event	11	change_event
33	Can delete Event	11	delete_event
34	Can add Contact	12	add_contact
35	Can change Contact	12	change_contact
36	Can delete Contact	12	delete_contact
37	Can add Image	13	add_image
38	Can change Image	13	change_image
39	Can delete Image	13	delete_image
40	Can add Video	14	add_video
41	Can change Video	14	change_video
42	Can delete Video	14	delete_video
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('auth_permission_id_seq', 42, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$yE2e7q7Mzu5o$xzF/WtZK6p/T1ntUaShJhofxWJGK5OFME8cnbtqV6GA=	2017-12-21 12:42:02.042417+01	t	admin			admin@admin.com	t	t	2017-12-19 09:09:51.868968+01
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
1	2017-12-19 09:13:12.681699+01	1	Contact object	2	Modificado/a email1, phone1, phone2, facebook, twitter y youtube.	12	1
2	2017-12-19 09:13:44.396787+01	1	Contact object	2	Modificado/a twitter.	12	1
3	2017-12-19 09:20:32.969424+01	1	Home object	2	Modificado/a video_mp4, video_ogv y video_webm.	7	1
4	2017-12-19 09:21:36.884631+01	1	Home object	2	Modificado/a video_mp4.	7	1
144	2017-12-19 09:27:10.471997+01	1	Sala Cádillac Solitario	1		11	1
146	2017-12-19 09:28:39.008683+01	1	juanjo	1		13	1
148	2017-12-19 09:29:12.469383+01	3	juanjo3	1		13	1
150	2017-12-19 09:29:53.728085+01	5	carlos	1		13	1
152	2017-12-19 09:30:39.846483+01	2	Carlos Garcia	1		9	1
154	2017-12-19 09:31:20.143962+01	1	Tour object	2	Modificado/a description y image.	10	1
156	2017-12-19 09:33:24.100237+01	2	video2	1		14	1
158	2017-12-19 09:36:16.568259+01	1	Video 1	2	Modificado/a video_script.	14	1
160	2017-12-19 09:37:26.596816+01	1	Video 1	2	Modificado/a video_script.	14	1
162	2017-12-19 09:38:24.883504+01	1	Video 1	2	Modificado/a video_script.	14	1
164	2017-12-19 09:42:15.434545+01	1	Video 1	2	Modificado/a video_script.	14	1
166	2017-12-19 09:43:53.474634+01	1	Video 1	2	Modificado/a video_script.	14	1
168	2017-12-19 09:46:25.679352+01	1	Video 1	2	Modificado/a video_script.	14	1
170	2017-12-19 10:55:01.553321+01	1	Video 1	2	Modificado/a video_script.	14	1
172	2017-12-19 10:57:10.587232+01	2	video2	3		14	1
174	2017-12-19 10:58:44.778589+01	1	Video 1	3		14	1
176	2017-12-19 11:00:23.296364+01	3	video1	2	Modificado/a video_script.	14	1
179	2017-12-20 09:15:11.047398+01	2	Sala Cadillac solitario	2	Modificado/a title, description, location, event_date y price.	11	1
181	2017-12-20 09:17:31.266102+01	1	Tour object	2	Modificado/a description.	10	1
183	2017-12-20 09:22:33.848694+01	2	Mario Leoz	2	Modificado/a name y role.	9	1
185	2017-12-20 09:28:58.619585+01	4	juanjorole	3		13	1
186	2017-12-20 09:28:58.629641+01	1	juanjo	3		13	1
187	2017-12-20 09:28:58.632706+01	5	carlos	3		13	1
188	2017-12-20 09:28:58.635406+01	2	juanjo2	3		13	1
189	2017-12-20 09:28:58.637749+01	6	tour	3		13	1
190	2017-12-20 09:28:58.64038+01	3	juanjo3	3		13	1
192	2017-12-20 09:30:00.481606+01	8	daniel	1		13	1
194	2017-12-20 09:30:34.019849+01	10	mario	1		13	1
196	2017-12-20 09:31:08.053116+01	12	tour	1		13	1
198	2017-12-20 09:33:05.341373+01	3	Juanjo Marte	1		9	1
200	2017-12-20 09:34:05.980044+01	5	Pedro de Pablos	1		9	1
202	2017-12-20 09:35:11.675596+01	7	Gabriel Figueroa	1		9	1
204	2017-12-20 11:33:10.353405+01	1	Home object	2	Modificado/a video_mp4, video_ogv y video_webm.	7	1
206	2017-12-20 15:42:59.902194+01	13	galeria1	1		13	1
208	2017-12-20 15:43:59.541218+01	15	galeria3	1		13	1
210	2017-12-20 15:45:01.522206+01	17	galeria5	1		13	1
212	2017-12-20 15:48:55.367238+01	4	video2	2	Modificado/a video_script.	14	1
214	2017-12-20 15:53:12.953955+01	3	video1	2	Modificado/a video_script.	14	1
216	2017-12-20 15:54:33.300019+01	5	video3	2	Modificado/a video_script.	14	1
218	2017-12-21 10:56:26.484746+01	6	Daniel Lozano	2	Modificado/a order.	9	1
220	2017-12-21 10:56:38.9328+01	7	Gabriel Figueroa	2	Modificado/a order.	9	1
222	2017-12-21 12:43:35.646033+01	3	video1	2	Modificado/a video_script.	14	1
224	2017-12-21 12:46:50.615558+01	4	video2	2	Modificado/a video_script.	14	1
145	2017-12-19 09:27:40.870851+01	2	Sala Macumba	1		11	1
147	2017-12-19 09:28:56.971207+01	2	juanjo2	1		13	1
149	2017-12-19 09:29:38.091937+01	4	juanjorole	1		13	1
151	2017-12-19 09:30:24.342453+01	1	Juanjo Marte	1		9	1
153	2017-12-19 09:31:11.710072+01	6	tour	1		13	1
155	2017-12-19 09:32:56.529129+01	1	Video 1	1		14	1
157	2017-12-19 09:35:56.30044+01	1	Video 1	2	Modificado/a video_script.	14	1
159	2017-12-19 09:37:03.680238+01	1	Video 1	2	Modificado/a video_script.	14	1
161	2017-12-19 09:38:00.546694+01	1	Video 1	2	Modificado/a video_script.	14	1
163	2017-12-19 09:40:45.76228+01	1	Video 1	2	Modificado/a video_script.	14	1
165	2017-12-19 09:43:07.931759+01	1	Video 1	2	Modificado/a video_script.	14	1
167	2017-12-19 09:44:58.32235+01	1	Video 1	2	Modificado/a video_script.	14	1
169	2017-12-19 09:46:39.668003+01	1	Video 1	2	Modificado/a video_script.	14	1
171	2017-12-19 10:55:09.798641+01	2	video2	2	Modificado/a video_script.	14	1
173	2017-12-19 10:57:18.409166+01	1	Video 1	2	Modificado/a video_script.	14	1
175	2017-12-19 11:00:01.32884+01	3	video1	1		14	1
177	2017-12-19 11:01:10.735173+01	4	video2	1		14	1
178	2017-12-20 09:11:00.163085+01	1	AboutUs object	2	Modificado/a description.	8	1
180	2017-12-20 09:16:34.213833+01	1	Sala Maravillas	2	Modificado/a title, description, location, event_date, event_hour y price.	11	1
182	2017-12-20 09:19:31.229957+01	1	Tour object	2	No ha cambiado ningún campo.	10	1
184	2017-12-20 09:28:28.124003+01	1	Contact object	2	Modificado/a email1, phone1, phone2, facebook y youtube.	12	1
191	2017-12-20 09:29:38.716155+01	7	juanjo	1		13	1
193	2017-12-20 09:30:17.619631+01	9	gabri	1		13	1
195	2017-12-20 09:30:46.47736+01	11	pedro	1		13	1
197	2017-12-20 09:32:03.24043+01	1	Home object	2	Modificado/a video_mp4.	7	1
199	2017-12-20 09:33:27.657309+01	4	Mario Leoz	1		9	1
201	2017-12-20 09:34:35.825382+01	6	Daniel LOzano	1		9	1
203	2017-12-20 09:35:33.413645+01	1	Tour object	2	Modificado/a description y image.	10	1
205	2017-12-20 14:03:40.853469+01	6	Daniel Lozano	2	Modificado/a name.	9	1
207	2017-12-20 15:43:32.590188+01	14	galeria2	1		13	1
209	2017-12-20 15:44:44.152939+01	16	galeria4	1		13	1
211	2017-12-20 15:48:13.131604+01	3	video1	2	Modificado/a video_script.	14	1
213	2017-12-20 15:50:04.843596+01	5	video3	1		14	1
215	2017-12-20 15:54:23.157564+01	4	video2	2	Modificado/a video_script.	14	1
217	2017-12-21 10:56:20.954918+01	4	Mario Leoz	2	Modificado/a order.	9	1
219	2017-12-21 10:56:31.735831+01	5	Pedro de Pablos	2	No ha cambiado ningún campo.	9	1
221	2017-12-21 10:56:43.932683+01	3	Juanjo Marte	2	Modificado/a order.	9	1
223	2017-12-21 12:46:41.624431+01	3	video1	2	Modificado/a video_script.	14	1
225	2017-12-21 12:46:58.212776+01	5	video3	2	Modificado/a video_script.	14	1
143	2017-12-19 09:26:18.839919+01	1	AboutUs object	2	Modificado/a description.	8	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 225, true);


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
7	Home	mister_cobol_web	home
8	About us	mister_cobol_web	aboutus
9	Member	mister_cobol_web	member
10	Tour	mister_cobol_web	tour
11	Event	mister_cobol_web	event
12	Contact	mister_cobol_web	contact
13	Image	mister_cobol_web	image
14	Video	mister_cobol_web	video
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('django_content_type_id_seq', 14, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-12-19 09:07:33.809061+01
2	auth	0001_initial	2017-12-19 09:07:34.191963+01
3	admin	0001_initial	2017-12-19 09:07:34.298987+01
4	mister_cobol_web	0001_initial	2017-12-19 09:07:34.675181+01
5	mister_cobol_web	0002_auto_20140715_0925	2017-12-19 09:07:34.788206+01
6	mister_cobol_web	0003_auto_20140715_1532	2017-12-19 09:07:34.905393+01
7	mister_cobol_web	0004_image_for_gallery	2017-12-19 09:07:34.952429+01
8	mister_cobol_web	0005_video_for_home	2017-12-19 09:07:35.02518+01
9	mister_cobol_web	0006_tour	2017-12-19 09:07:35.122438+01
10	mister_cobol_web	0007_member_role	2017-12-19 09:07:35.227972+01
11	mister_cobol_web	0008_remove_event_image	2017-12-19 09:07:35.285908+01
12	mister_cobol_web	0009_auto_20140717_1159	2017-12-19 09:07:35.369752+01
13	mister_cobol_web	0010_auto_20140717_1221	2017-12-19 09:07:35.453315+01
14	mister_cobol_web	0011_auto_20140717_1235	2017-12-19 09:07:35.523161+01
15	mister_cobol_web	0012_member_order	2017-12-19 09:07:35.625884+01
16	mister_cobol_web	0013_auto_20140717_1539	2017-12-19 09:07:35.722541+01
17	mister_cobol_web	0014_image_image_th	2017-12-19 09:07:35.821346+01
18	mister_cobol_web	0015_auto_20140718_1104	2017-12-19 09:07:35.924601+01
19	mister_cobol_web	0016_event_highlighted	2017-12-19 09:07:36.034669+01
20	mister_cobol_web	0017_auto_20141014_1805	2017-12-19 09:07:36.173221+01
21	sessions	0001_initial	2017-12-19 09:07:36.229842+01
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('django_migrations_id_seq', 19, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
46fvqd9f9yl4snywqchd63yazt92zloy	Yjk2MzdhMmY5Njg5ZmRhMTY1ZjFiMWM3ODBlNTJiZjVkYTFlYTgzZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MSwiX2F1dGhfdXNlcl9oYXNoIjoiNGQzYjZmMTk1ZDg3ODFjN2E4ZWJhYjNmYWZhZDA0YTE5ZmEzNmU5YiJ9	2018-01-02 09:09:58.304671+01
8ticaugzodu4xsoroxnri5xkjo7w5kad	NGE3MTg1NDRjODExOTUwNjNjY2MyYmJhM2JmNDdmNGYzNDBmZjVjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNTcxMmY4YTFlN2ZmMTkzMDE4YmFlNjJlNTU3ODM1YTY3MzdlZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2014-07-31 10:06:09.043174+02
zuz8jrvoc1uhxlilwnemipsd15l49a0f	YzI1YmI2YWQ0MjI5ZTQ4MDBmODM1NTY4YWU3MzUyYzI0ZDk3NGUzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRkM2I2ZjE5NWQ4NzgxYzdhOGViYWIzZmFmYWQwNGExOWZhMzZlOWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2018-01-03 08:59:16.058188+01
ynbfbd3si3lsvlo7l4ocl0bhgp62rqfb	YzI1YmI2YWQ0MjI5ZTQ4MDBmODM1NTY4YWU3MzUyYzI0ZDk3NGUzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRkM2I2ZjE5NWQ4NzgxYzdhOGViYWIzZmFmYWQwNGExOWZhMzZlOWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2018-01-04 12:42:02.044812+01
\.


--
-- Data for Name: mister_cobol_web_aboutus; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY mister_cobol_web_aboutus (id, description) FROM stdin;
1	Mr.Cobol nace de la evolución necesaria, como músicos, de Pedro de Pablos, Gabriel Figueroa, Daniel Lozano y Mario Leoz, (miembros de "Paramétrica") de formar una nueva banda que les dirija a un nuevo rumbo, junto con Juanjo Marte como vocalista, emprenden este nuevo proyecto, ya como Mr. Cobol.\r\n\r\nLos miembros de la banda cuentan a sus espaldas con multitud de conciertos en los que han compartido cartel con bandas como "Izal", "Second", "Love of lesbian", y teloneando a "Xoel López" o "La habitación roja" entre otras.\r\n\r\n
\.


--
-- Name: mister_cobol_web_aboutus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('mister_cobol_web_aboutus_id_seq', 1, false);


--
-- Data for Name: mister_cobol_web_contact; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY mister_cobol_web_contact (id, address, email1, email2, phone1, phone2, facebook, twitter, youtube, instagram) FROM stdin;
1		mistercobol@gmail.com		696 40 47 24	657 13 17 88	https://www.facebook.com/mrcobol	https://twitter.com/MisterCobol	https://www.youtube.com/channel/UCIhjhvDOTTjCzAzW693fNDg	https://www.instagram.com/mistercobol/
\.


--
-- Name: mister_cobol_web_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('mister_cobol_web_contact_id_seq', 1, false);


--
-- Data for Name: mister_cobol_web_event; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY mister_cobol_web_event (id, title, description, location, event_date, event_hour, price, highlighted) FROM stdin;
2	Sala Cadillac solitario	Primer concierto de Mister Cobol	Fermín Caballero, 6 Madrid	2017-12-01	21:00:00	Entrada gratuita	f
1	Sala Maravillas	Mr. Cobol + Loading	Calle de San Vicente Ferrer, 33 Madrid	2018-01-13	21:30:00	5€	t
\.


--
-- Name: mister_cobol_web_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('mister_cobol_web_event_id_seq', 2, true);


--
-- Data for Name: mister_cobol_web_home; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY mister_cobol_web_home (id, video_mp4, video_ogv, video_webm) FROM stdin;
1	files/VIDEO_fondo_2.mp4	files/VIDEO_fondo_2.ogv	files/VIDEO_fondo_2.webm
\.


--
-- Name: mister_cobol_web_home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('mister_cobol_web_home_id_seq', 1, false);


--
-- Data for Name: mister_cobol_web_image; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY mister_cobol_web_image (id, image, title, for_gallery, "order", image_th) FROM stdin;
7	images/juanjo.jpg	juanjo	f	1	
8	images/daniel.jpg	daniel	f	4	
9	images/gabri.jpg	gabri	f	5	
10	images/mario.jpg	mario	f	2	
11	images/pedro.jpg	pedro	f	3	
12	images/tour.jpg	tour	f	1	
13	images/IMG-20171218-WA0022.jpg	galeria1	t	1	images/IMG-20171218-WA0022_th.jpg
14	images/IMG_0074.JPG	galeria2	t	2	images/IMG_0074_th.JPG
15	images/IMG_2406.JPG	galeria3	t	3	images/IMG_2406_th.JPG
16	images/IMG_2429.JPG	galeria4	t	4	images/IMG_2429_th.JPG
17	images/lozas13.jpg	galeria5	t	5	images/lozas13_th.jpg
\.


--
-- Name: mister_cobol_web_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('mister_cobol_web_image_id_seq', 17, true);


--
-- Data for Name: mister_cobol_web_member; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY mister_cobol_web_member (id, name, description, image_id, role, "order") FROM stdin;
4	Mario Leoz	fdg fh fg hfgh fg	10	Guitarra solista	1
6	Daniel Lozano	dfg dfg dfg dfgdf	8	Bajo y coros	2
5	Pedro de Pablos	dfg dfg dfg f g	11	Guitarra rítmica	3
7	Gabriel Figueroa	fdg df gfdgdf	9	Percusión	4
3	Juanjo Marte	df sg dfg df g dgdfg	7	Voz	5
\.


--
-- Name: mister_cobol_web_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('mister_cobol_web_member_id_seq', 7, true);


--
-- Data for Name: mister_cobol_web_tour; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY mister_cobol_web_tour (id, description, image_id) FROM stdin;
1	Aquí toda la información de nuestros conciertos pasados, presentes y futuros...	12
\.


--
-- Name: mister_cobol_web_tour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('mister_cobol_web_tour_id_seq', 1, false);


--
-- Data for Name: mister_cobol_web_video; Type: TABLE DATA; Schema: public; Owner: tere
--

COPY mister_cobol_web_video (id, video_script, title, "order") FROM stdin;
3	<iframe width="560" height="315" src="https://www.youtube.com/embed/xMZiSIexC1s" frameborder="0" allowfullscreen></iframe>	video1	1
4	<iframe width="560" height="315" src="https://www.youtube.com/embed/KiDrQo8-Yhk" frameborder="0" allowfullscreen></iframe>	video2	2
5	<iframe width="560" height="315" src="https://www.youtube.com/embed/Y1MYvLirKQU" frameborder="0" allowfullscreen></iframe>	video3	3
\.


--
-- Name: mister_cobol_web_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tere
--

SELECT pg_catalog.setval('mister_cobol_web_video_id_seq', 5, true);


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
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_1b738e1329ce4808_uniq; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_1b738e1329ce4808_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_app_label_3c19401d1f548cdd_uniq; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3c19401d1f548cdd_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: mister_cobol_web_aboutus mister_cobol_web_aboutus_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_aboutus
    ADD CONSTRAINT mister_cobol_web_aboutus_pkey PRIMARY KEY (id);


--
-- Name: mister_cobol_web_contact mister_cobol_web_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_contact
    ADD CONSTRAINT mister_cobol_web_contact_pkey PRIMARY KEY (id);


--
-- Name: mister_cobol_web_event mister_cobol_web_event_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_event
    ADD CONSTRAINT mister_cobol_web_event_pkey PRIMARY KEY (id);


--
-- Name: mister_cobol_web_home mister_cobol_web_home_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_home
    ADD CONSTRAINT mister_cobol_web_home_pkey PRIMARY KEY (id);


--
-- Name: mister_cobol_web_image mister_cobol_web_image_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_image
    ADD CONSTRAINT mister_cobol_web_image_pkey PRIMARY KEY (id);


--
-- Name: mister_cobol_web_member mister_cobol_web_member_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_member
    ADD CONSTRAINT mister_cobol_web_member_pkey PRIMARY KEY (id);


--
-- Name: mister_cobol_web_tour mister_cobol_web_tour_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_tour
    ADD CONSTRAINT mister_cobol_web_tour_pkey PRIMARY KEY (id);


--
-- Name: mister_cobol_web_video mister_cobol_web_video_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_video
    ADD CONSTRAINT mister_cobol_web_video_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_aboutus sound_caravan_web_aboutus_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_aboutus
    ADD CONSTRAINT sound_caravan_web_aboutus_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_contact sound_caravan_web_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_contact
    ADD CONSTRAINT sound_caravan_web_contact_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_event sound_caravan_web_event_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_event
    ADD CONSTRAINT sound_caravan_web_event_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_home sound_caravan_web_home_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_home
    ADD CONSTRAINT sound_caravan_web_home_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_image sound_caravan_web_image_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_image
    ADD CONSTRAINT sound_caravan_web_image_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_member sound_caravan_web_member_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_member
    ADD CONSTRAINT sound_caravan_web_member_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_tour sound_caravan_web_tour_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_tour
    ADD CONSTRAINT sound_caravan_web_tour_pkey PRIMARY KEY (id);


--
-- Name: sound_caravan_web_video sound_caravan_web_video_pkey; Type: CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_video
    ADD CONSTRAINT sound_caravan_web_video_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: mister_cobol_web_member_f33175e6; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX mister_cobol_web_member_f33175e6 ON mister_cobol_web_member USING btree (image_id);


--
-- Name: mister_cobol_web_tour_f33175e6; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX mister_cobol_web_tour_f33175e6 ON mister_cobol_web_tour USING btree (image_id);


--
-- Name: sound_caravan_web_member_f33175e6; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX sound_caravan_web_member_f33175e6 ON sound_caravan_web_member USING btree (image_id);


--
-- Name: sound_caravan_web_tour_f33175e6; Type: INDEX; Schema: public; Owner: tere
--

CREATE INDEX sound_caravan_web_tour_f33175e6 ON sound_caravan_web_tour USING btree (image_id);


--
-- Name: auth_permission auth_content_type_id_25a12b41922e39c1_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_25a12b41922e39c1_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_content_type_id_59379912ee47a7a2_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_59379912ee47a7a2_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_group_id_5e75d749c34842a7_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_5e75d749c34842a7_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_group_id_79fa89a2b7e5d195_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_79fa89a2b7e5d195_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permission_id_2c8bfebd16d4465e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_2c8bfebd16d4465e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permission_id_3905f20216b6029a_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_3905f20216b6029a_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user__permission_id_26f474136fab2d32_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_26f474136fab2d32_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_472f19eb6908f218_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_472f19eb6908f218_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_663a695056600fa3_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_663a695056600fa3_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_354491889fddd95e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_354491889fddd95e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_5870d34090b02744_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_5870d34090b02744_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_u_permission_id_b9fe557b44a22ee_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_u_permission_id_b9fe557b44a22ee_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permiss_user_id_19704543eb707f7c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_19704543eb707f7c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permiss_user_id_36cb28b9605c5579_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_36cb28b9605c5579_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log djan_content_type_id_561236c345b802c8_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_561236c345b802c8_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log djan_content_type_id_66b5136a601f51a8_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_66b5136a601f51a8_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_4280fe8e964f6773_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_4280fe8e964f6773_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c32655d940325cf_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c32655d940325cf_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mister_cobol_web_tour mister_c_image_id_5c3d6ff2160ce74b_fk_mister_cobol_web_image_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_tour
    ADD CONSTRAINT mister_c_image_id_5c3d6ff2160ce74b_fk_mister_cobol_web_image_id FOREIGN KEY (image_id) REFERENCES mister_cobol_web_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mister_cobol_web_member mister_c_image_id_726666bc0fdb7c9d_fk_mister_cobol_web_image_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY mister_cobol_web_member
    ADD CONSTRAINT mister_c_image_id_726666bc0fdb7c9d_fk_mister_cobol_web_image_id FOREIGN KEY (image_id) REFERENCES mister_cobol_web_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sound_caravan_web_member sound_c_image_id_37a7f9c7ee6cac8c_fk_sound_caravan_web_image_id; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_member
    ADD CONSTRAINT sound_c_image_id_37a7f9c7ee6cac8c_fk_sound_caravan_web_image_id FOREIGN KEY (image_id) REFERENCES sound_caravan_web_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sound_caravan_web_tour sound_caravan_web_tour_image_id_58d7fa507176eb88_fk; Type: FK CONSTRAINT; Schema: public; Owner: tere
--

ALTER TABLE ONLY sound_caravan_web_tour
    ADD CONSTRAINT sound_caravan_web_tour_image_id_58d7fa507176eb88_fk FOREIGN KEY (image_id) REFERENCES sound_caravan_web_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

