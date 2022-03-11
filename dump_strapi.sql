--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE strapi;




--
-- Drop roles
--

DROP ROLE strapi;


--
-- Roles
--

CREATE ROLE strapi;
ALTER ROLE strapi WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md5c5c7a9af6c075e87c30d75d454def64b';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Debian 13.3-1.pgdg100+1)
-- Dumped by pg_dump version 13.3 (Debian 13.3-1.pgdg100+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: strapi
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO strapi;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: strapi
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: strapi
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: strapi
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Debian 13.3-1.pgdg100+1)
-- Dumped by pg_dump version 13.3 (Debian 13.3-1.pgdg100+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: strapi
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO strapi;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: strapi
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- Database "strapi" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Debian 13.3-1.pgdg100+1)
-- Dumped by pg_dump version 13.3 (Debian 13.3-1.pgdg100+1)

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
-- Name: strapi; Type: DATABASE; Schema: -; Owner: strapi
--

CREATE DATABASE strapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE strapi OWNER TO strapi;

\connect strapi

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
-- Name: components_header_menus; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_header_menus (
    id integer NOT NULL,
    "Label" character varying(255),
    "Link" character varying(255),
    url character varying(255),
    label character varying(255)
);


ALTER TABLE public.components_header_menus OWNER TO strapi;

--
-- Name: components_header_menus_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_header_menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_header_menus_id_seq OWNER TO strapi;

--
-- Name: components_header_menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_header_menus_id_seq OWNED BY public.components_header_menus.id;


--
-- Name: components_menu_menus; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_menu_menus (
    id integer NOT NULL,
    "Link" character varying(255),
    "Label" character varying(255)
);


ALTER TABLE public.components_menu_menus OWNER TO strapi;

--
-- Name: components_menu_menus_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_menu_menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_menu_menus_id_seq OWNER TO strapi;

--
-- Name: components_menu_menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_menu_menus_id_seq OWNED BY public.components_menu_menus.id;


--
-- Name: components_page_about_directors; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_about_directors (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    name character varying(255),
    role character varying(255),
    description text
);


ALTER TABLE public.components_page_about_directors OWNER TO strapi;

--
-- Name: components_page_about_directors_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_about_directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_about_directors_id_seq OWNER TO strapi;

--
-- Name: components_page_about_directors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_about_directors_id_seq OWNED BY public.components_page_about_directors.id;


--
-- Name: components_page_aboutuses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_aboutuses (
    id integer NOT NULL,
    title character varying(255),
    "textOne" text,
    "textTwo" text
);


ALTER TABLE public.components_page_aboutuses OWNER TO strapi;

--
-- Name: components_page_aboutuses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_aboutuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_aboutuses_id_seq OWNER TO strapi;

--
-- Name: components_page_aboutuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_aboutuses_id_seq OWNED BY public.components_page_aboutuses.id;


--
-- Name: components_page_banners; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_banners (
    id integer NOT NULL,
    "textOne" text,
    "textTwo" text,
    video character varying(255)
);


ALTER TABLE public.components_page_banners OWNER TO strapi;

--
-- Name: components_page_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_banners_id_seq OWNER TO strapi;

--
-- Name: components_page_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_banners_id_seq OWNED BY public.components_page_banners.id;


--
-- Name: components_page_buttons; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    url character varying(255),
    label character varying(255)
);


ALTER TABLE public.components_page_buttons OWNER TO strapi;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_buttons_id_seq OWNER TO strapi;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;


--
-- Name: components_page_contents; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_contents (
    id integer NOT NULL,
    title character varying(255),
    text text
);


ALTER TABLE public.components_page_contents OWNER TO strapi;

--
-- Name: components_page_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_contents_id_seq OWNER TO strapi;

--
-- Name: components_page_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_contents_id_seq OWNED BY public.components_page_contents.id;


--
-- Name: components_page_footers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_footers (
    id integer NOT NULL,
    copyright text,
    "linkWhatsapp" character varying(255)
);


ALTER TABLE public.components_page_footers OWNER TO strapi;

--
-- Name: components_page_footers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_footers_id_seq OWNER TO strapi;

--
-- Name: components_page_footers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_footers_id_seq OWNED BY public.components_page_footers.id;


--
-- Name: components_page_galleries; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_galleries (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_galleries OWNER TO strapi;

--
-- Name: components_page_galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_galleries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_galleries_id_seq OWNER TO strapi;

--
-- Name: components_page_galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_galleries_id_seq OWNED BY public.components_page_galleries.id;


--
-- Name: components_page_headers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_headers (
    id integer NOT NULL
);


ALTER TABLE public.components_page_headers OWNER TO strapi;

--
-- Name: components_page_headers_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_headers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_header_id integer NOT NULL
);


ALTER TABLE public.components_page_headers_components OWNER TO strapi;

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_components_id_seq OWNER TO strapi;

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_headers_components_id_seq OWNED BY public.components_page_headers_components.id;


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_id_seq OWNER TO strapi;

--
-- Name: components_page_headers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_headers_id_seq OWNED BY public.components_page_headers.id;


--
-- Name: components_page_images; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_images (
    id integer NOT NULL
);


ALTER TABLE public.components_page_images OWNER TO strapi;

--
-- Name: components_page_images_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_images_id_seq OWNER TO strapi;

--
-- Name: components_page_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_images_id_seq OWNED BY public.components_page_images.id;


--
-- Name: components_page_instafeeds; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_instafeeds (
    id integer NOT NULL,
    title character varying(255),
    "instagramToken" text
);


ALTER TABLE public.components_page_instafeeds OWNER TO strapi;

--
-- Name: components_page_instafeeds_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_instafeeds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_instafeeds_id_seq OWNER TO strapi;

--
-- Name: components_page_instafeeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_instafeeds_id_seq OWNED BY public.components_page_instafeeds.id;


--
-- Name: components_page_last_jobs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_last_jobs (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255)
);


ALTER TABLE public.components_page_last_jobs OWNER TO strapi;

--
-- Name: components_page_last_jobs_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_last_jobs_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_last_job_id integer NOT NULL
);


ALTER TABLE public.components_page_last_jobs_components OWNER TO strapi;

--
-- Name: components_page_last_jobs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_last_jobs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_last_jobs_components_id_seq OWNER TO strapi;

--
-- Name: components_page_last_jobs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_last_jobs_components_id_seq OWNED BY public.components_page_last_jobs_components.id;


--
-- Name: components_page_last_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_last_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_last_jobs_id_seq OWNER TO strapi;

--
-- Name: components_page_last_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_last_jobs_id_seq OWNED BY public.components_page_last_jobs.id;


--
-- Name: components_page_main_videos; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_main_videos (
    id integer NOT NULL,
    "smallText" character varying(255),
    title character varying(255),
    subtitle character varying(255),
    video character varying(255)
);


ALTER TABLE public.components_page_main_videos OWNER TO strapi;

--
-- Name: components_page_main_videos_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_main_videos_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_main_video_id integer NOT NULL
);


ALTER TABLE public.components_page_main_videos_components OWNER TO strapi;

--
-- Name: components_page_main_videos_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_main_videos_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_main_videos_components_id_seq OWNER TO strapi;

--
-- Name: components_page_main_videos_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_main_videos_components_id_seq OWNED BY public.components_page_main_videos_components.id;


--
-- Name: components_page_main_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_main_videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_main_videos_id_seq OWNER TO strapi;

--
-- Name: components_page_main_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_main_videos_id_seq OWNED BY public.components_page_main_videos.id;


--
-- Name: components_page_menus; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_menus (
    id integer NOT NULL,
    label character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_menus OWNER TO strapi;

--
-- Name: components_page_menus_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_menus_id_seq OWNER TO strapi;

--
-- Name: components_page_menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_menus_id_seq OWNED BY public.components_page_menus.id;


--
-- Name: components_page_our_customers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_our_customers (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255)
);


ALTER TABLE public.components_page_our_customers OWNER TO strapi;

--
-- Name: components_page_our_customers_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_our_customers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_our_customer_id integer NOT NULL
);


ALTER TABLE public.components_page_our_customers_components OWNER TO strapi;

--
-- Name: components_page_our_customers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_our_customers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_our_customers_components_id_seq OWNER TO strapi;

--
-- Name: components_page_our_customers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_our_customers_components_id_seq OWNED BY public.components_page_our_customers_components.id;


--
-- Name: components_page_our_customers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_our_customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_our_customers_id_seq OWNER TO strapi;

--
-- Name: components_page_our_customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_our_customers_id_seq OWNED BY public.components_page_our_customers.id;


--
-- Name: components_page_our_processes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_our_processes (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255)
);


ALTER TABLE public.components_page_our_processes OWNER TO strapi;

--
-- Name: components_page_our_processes_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_our_processes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_our_process_id integer NOT NULL
);


ALTER TABLE public.components_page_our_processes_components OWNER TO strapi;

--
-- Name: components_page_our_processes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_our_processes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_our_processes_components_id_seq OWNER TO strapi;

--
-- Name: components_page_our_processes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_our_processes_components_id_seq OWNED BY public.components_page_our_processes_components.id;


--
-- Name: components_page_our_processes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_our_processes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_our_processes_id_seq OWNER TO strapi;

--
-- Name: components_page_our_processes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_our_processes_id_seq OWNED BY public.components_page_our_processes.id;


--
-- Name: components_page_social_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_social_links (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_social_links OWNER TO strapi;

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_social_links_id_seq OWNER TO strapi;

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_social_links_id_seq OWNED BY public.components_page_social_links.id;


--
-- Name: components_page_the_companies; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_the_companies (
    id integer NOT NULL,
    title character varying(255),
    text text
);


ALTER TABLE public.components_page_the_companies OWNER TO strapi;

--
-- Name: components_page_the_companies_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_the_companies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_the_companies_id_seq OWNER TO strapi;

--
-- Name: components_page_the_companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_the_companies_id_seq OWNED BY public.components_page_the_companies.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO strapi;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO strapi;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: homes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.homes (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.homes OWNER TO strapi;

--
-- Name: homes_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.homes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    home_id integer NOT NULL
);


ALTER TABLE public.homes_components OWNER TO strapi;

--
-- Name: homes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.homes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homes_components_id_seq OWNER TO strapi;

--
-- Name: homes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.homes_components_id_seq OWNED BY public.homes_components.id;


--
-- Name: homes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.homes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homes_id_seq OWNER TO strapi;

--
-- Name: homes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.homes_id_seq OWNED BY public.homes.id;


--
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.i18n_locales OWNER TO strapi;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locales_id_seq OWNER TO strapi;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


ALTER TABLE public.strapi_administrator OWNER TO strapi;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO strapi;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO strapi;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO strapi;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO strapi;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO strapi;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO strapi;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO strapi;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO strapi;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO strapi;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO strapi;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO strapi;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO strapi;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO strapi;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO strapi;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: components_header_menus id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_header_menus ALTER COLUMN id SET DEFAULT nextval('public.components_header_menus_id_seq'::regclass);


--
-- Name: components_menu_menus id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_menu_menus ALTER COLUMN id SET DEFAULT nextval('public.components_menu_menus_id_seq'::regclass);


--
-- Name: components_page_about_directors id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_about_directors ALTER COLUMN id SET DEFAULT nextval('public.components_page_about_directors_id_seq'::regclass);


--
-- Name: components_page_aboutuses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_aboutuses ALTER COLUMN id SET DEFAULT nextval('public.components_page_aboutuses_id_seq'::regclass);


--
-- Name: components_page_banners id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_banners ALTER COLUMN id SET DEFAULT nextval('public.components_page_banners_id_seq'::regclass);


--
-- Name: components_page_buttons id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);


--
-- Name: components_page_contents id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_contents ALTER COLUMN id SET DEFAULT nextval('public.components_page_contents_id_seq'::regclass);


--
-- Name: components_page_footers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_footers ALTER COLUMN id SET DEFAULT nextval('public.components_page_footers_id_seq'::regclass);


--
-- Name: components_page_galleries id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_galleries ALTER COLUMN id SET DEFAULT nextval('public.components_page_galleries_id_seq'::regclass);


--
-- Name: components_page_headers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_id_seq'::regclass);


--
-- Name: components_page_headers_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_components_id_seq'::regclass);


--
-- Name: components_page_images id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_images ALTER COLUMN id SET DEFAULT nextval('public.components_page_images_id_seq'::regclass);


--
-- Name: components_page_instafeeds id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_instafeeds ALTER COLUMN id SET DEFAULT nextval('public.components_page_instafeeds_id_seq'::regclass);


--
-- Name: components_page_last_jobs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_last_jobs ALTER COLUMN id SET DEFAULT nextval('public.components_page_last_jobs_id_seq'::regclass);


--
-- Name: components_page_last_jobs_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_last_jobs_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_last_jobs_components_id_seq'::regclass);


--
-- Name: components_page_main_videos id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_main_videos ALTER COLUMN id SET DEFAULT nextval('public.components_page_main_videos_id_seq'::regclass);


--
-- Name: components_page_main_videos_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_main_videos_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_main_videos_components_id_seq'::regclass);


--
-- Name: components_page_menus id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_menus ALTER COLUMN id SET DEFAULT nextval('public.components_page_menus_id_seq'::regclass);


--
-- Name: components_page_our_customers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_our_customers ALTER COLUMN id SET DEFAULT nextval('public.components_page_our_customers_id_seq'::regclass);


--
-- Name: components_page_our_customers_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_our_customers_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_our_customers_components_id_seq'::regclass);


--
-- Name: components_page_our_processes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_our_processes ALTER COLUMN id SET DEFAULT nextval('public.components_page_our_processes_id_seq'::regclass);


--
-- Name: components_page_our_processes_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_our_processes_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_our_processes_components_id_seq'::regclass);


--
-- Name: components_page_social_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_social_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_social_links_id_seq'::regclass);


--
-- Name: components_page_the_companies id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_the_companies ALTER COLUMN id SET DEFAULT nextval('public.components_page_the_companies_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: homes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homes ALTER COLUMN id SET DEFAULT nextval('public.homes_id_seq'::regclass);


--
-- Name: homes_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homes_components ALTER COLUMN id SET DEFAULT nextval('public.homes_components_id_seq'::regclass);


--
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: components_header_menus; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_header_menus (id, "Label", "Link", url, label) FROM stdin;
1	Quem Somos	#	#	\N
2	Servi├ºos	#	#	\N
3	Portf├│lio	#	#	\N
4	Contato	#	#	\N
5	\N	\N	#	Quem Somos
6	\N	\N	#	Servi├ºos
7	\N	\N	#	Portf├│lio
8	\N	\N	#	Contato
\.


--
-- Data for Name: components_menu_menus; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_menu_menus (id, "Link", "Label") FROM stdin;
1	#	Quem Somos
2	#	Servi├ºos
3	#	Portf├│lio
4	#	Contato
\.


--
-- Data for Name: components_page_about_directors; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_about_directors (id, title, subtitle, name, role, description) FROM stdin;
1	Caio Pelegrini	Diretor da Groove Filmes	Caio Pelegrini	Diretor	Apaixonado por contar hist├│rias, Caio Pelegrini teve seu primeiro contato com o universo de casamentos em 2013.ÔÇ¿Em Abril de 2015, funda a Groove Filmes com uma nova proposta: "Pensamos em dar uma nova roupagem aosÔÇ¿v├¡deos, inclu├¡ndo coisas que sempre imaginamos, mas nunca hav├¡amos visto, e que fizesse com que as pessoasÔÇ¿gostassem de assistir a um filmesde casamento".\n\nA ideia da Groove Filmes ├® contar a hist├│ria do casal em seu grande dia, mas focando nas situa├º├Áes, emo├º├Áes e ver coisas atrav├®s de olhares refinados e enquadramentos inesperados. ÔÇ£Procuramos todos os detalhes relevantes, pois os filmes s├úo pensados para os noivos, suas fam├¡lias e amigos. Tamb├®m temos um cuidado especial na trilha sonora de cada v├¡deo, sempre pensando que aquelas mem├│rias s├úo atemporais e inestim├íveis. "Assim, ├® poss├¡vel criar uma imers├úo, fazendo com que as pessoas se sintam novamente no dia do casamento, mas de forma natural, charmosa e eleganteÔÇØ, explica Caio.\n\nComo cada casal ├® ├║nico, a Groove Filmes sempre tem novos desafios, e um deles ├® produzir um v├¡deo 100% in├®dito para cada grande dia. "J├í fizemos mais de 400 casamentos pelo mundo, e cada um foi contado de uma maneira... Sempre enaltecendo a singularidade do casal, os detalhes planejados cuidadosamente e a emo├º├úo sentida no dia. ├ë inexplic├ível!"\n\nCaio ├® quem cuida dos atendimentos, que s├úo feitos via Skype, Facetime ou Whatsapp, ou pessoalmente, com hor├írios flex├¡veis, e o Whatsapp est├í sempre online.
\.


--
-- Data for Name: components_page_aboutuses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_aboutuses (id, title, "textOne", "textTwo") FROM stdin;
1	Quem Somos	Nosso trabalho ├® contar sua hist├│ria, de uma forma ├║nica e especial,\ntornando seu filme uma recorda├º├úo inesquec├¡vel. Contamos com os melhores e\nmais modernos equipamentos do mercado, para que seu filme seja uma mega\nprodu├º├úo, ao estilo Hollywood.	Aqui, seu dia se torna ainda mais especial.
\.


--
-- Data for Name: components_page_banners; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_banners (id, "textOne", "textTwo", video) FROM stdin;
1	Com a Groove filmes, seus filmes ser├úo	Agradaveis | Encantadores | Inesqueciveis	552479788
\.


--
-- Data for Name: components_page_buttons; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_buttons (id, url, label) FROM stdin;
1	#	Entre em contato
\.


--
-- Data for Name: components_page_contents; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_contents (id, title, text) FROM stdin;
1	Do Briefing ao Roteiro	Desenvolvemos um roteiro original e personalizado para sua necessidade.
2	Pr├®-Produ├º├úo e Produ├º├úo	Cada roteiro apresenta desafios diferentes e aqui, escolhemos as estrat├®gias certas. Indicamos refer├¬ncias visuais e elabora├º├úo de storyboards. Criamos imagens que encantam e hist├│rias que conectam. 
3	P├│s-Produ├º├úo e Finaliza├º├úo	Nessa etapa s├úo selecionadas trilhas, locutores e elementos gr├íficos, al├®m da corre├º├úo de cor. Depois ├® a entrega do material final para web, TV, cinema ou qualquer m├¡dia digital.
\.


--
-- Data for Name: components_page_footers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_footers (id, copyright, "linkWhatsapp") FROM stdin;
1	┬®2022 GROOVE FILMES | Todos direitos reservados	https://wa.me/5514996009964
\.


--
-- Data for Name: components_page_galleries; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_galleries (id, title, subtitle, url) FROM stdin;
1	Fabi Santina + Leandro Munh├│s	Lovestory	552479788
2	Fabi Santina + Leandro Munh├│s	Lovestory	552479788
3	Fabi Santina + Leandro Munh├│s	Lovestory	552479788
4	Fabi Santina + Leandro Munh├│s	Lovestory	552479788
5	Fabi Santina + Leandro Munh├│s	Lovestory	552479788
6	Fabi Santina + Leandro Munh├│s	Lovestory	552479788
7	Fabi Santina + Leandro Munh├│s	Lovestory	552479788
8	Relodi Carai	CARAI	552479788
9	BAAHH GURI	AAAA	552479788
\.


--
-- Data for Name: components_page_headers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_headers (id) FROM stdin;
1
\.


--
-- Data for Name: components_page_headers_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_headers_components (id, field, "order", component_type, component_id, components_page_header_id) FROM stdin;
1	menu	1	components_page_menus	1	1
2	menu	2	components_page_menus	2	1
3	menu	3	components_page_menus	3	1
4	menu	4	components_page_menus	4	1
7	socialLinks	1	components_page_social_links	3	1
5	socialLinks	2	components_page_social_links	1	1
6	socialLinks	3	components_page_social_links	2	1
\.


--
-- Data for Name: components_page_images; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_images (id) FROM stdin;
1
2
3
4
5
6
7
8
9
10
11
\.


--
-- Data for Name: components_page_instafeeds; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_instafeeds (id, title, "instagramToken") FROM stdin;
1	Veja mais em nosso instagram @groovefilmes	IGQVJYM1NZATzF2RmhsN0l5bmpuSnNwV1lwRnJYNUVIbXlRajVMV3ZAJX3ZAZASklOTk1nQkFsX1BJM2ZAjR1pFV1Q2UlNuNmFBNG5Fa25NRDRjWWl1bnFydW1PTnI2US1OSkYyeVQ3NzJ6YWVfeGp1SWg3UAZDZD
\.


--
-- Data for Name: components_page_last_jobs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_last_jobs (id, title, subtitle) FROM stdin;
1	Ultimos Trabalhos	Evolu├¡ndo a cada dia
\.


--
-- Data for Name: components_page_last_jobs_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_last_jobs_components (id, field, "order", component_type, component_id, components_page_last_job_id) FROM stdin;
1	gallery	1	components_page_galleries	1	1
2	gallery	2	components_page_galleries	2	1
3	gallery	3	components_page_galleries	3	1
4	gallery	4	components_page_galleries	4	1
5	gallery	5	components_page_galleries	5	1
6	gallery	6	components_page_galleries	6	1
7	gallery	7	components_page_galleries	7	1
8	gallery	8	components_page_galleries	8	1
9	gallery	9	components_page_galleries	9	1
\.


--
-- Data for Name: components_page_main_videos; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_main_videos (id, "smallText", title, subtitle, video) FROM stdin;
1	Muito mais que uma simples recorda├º├úo	Reviva seu dia Sempre que quiser	Suas memorias viram realidade todos os dias	552479788
\.


--
-- Data for Name: components_page_main_videos_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_main_videos_components (id, field, "order", component_type, component_id, components_page_main_video_id) FROM stdin;
1	button	1	components_page_buttons	1	1
\.


--
-- Data for Name: components_page_menus; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_menus (id, label, url) FROM stdin;
1	Quem Somos	#quem-somos
2	Servi├ºos	#
3	Portf├│lio	#
4	Contato	#
\.


--
-- Data for Name: components_page_our_customers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_our_customers (id, title, subtitle) FROM stdin;
1	Nossos Clientes	Conhe├ºa as parcerias que est├úo construindo nossa hist├│ria
\.


--
-- Data for Name: components_page_our_customers_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_our_customers_components (id, field, "order", component_type, component_id, components_page_our_customer_id) FROM stdin;
1	image	1	components_page_images	1	1
2	image	2	components_page_images	2	1
3	image	3	components_page_images	3	1
4	image	4	components_page_images	4	1
5	image	5	components_page_images	5	1
6	image	6	components_page_images	6	1
7	images	1	components_page_images	7	1
8	images	2	components_page_images	8	1
9	images	3	components_page_images	9	1
10	images	4	components_page_images	10	1
11	images	5	components_page_images	11	1
\.


--
-- Data for Name: components_page_our_processes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_our_processes (id, title, subtitle) FROM stdin;
1	Nosso Processo	├ë assim que nasce os filmes
\.


--
-- Data for Name: components_page_our_processes_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_our_processes_components (id, field, "order", component_type, component_id, components_page_our_process_id) FROM stdin;
1	content	1	components_page_contents	1	1
2	content	2	components_page_contents	2	1
3	content	3	components_page_contents	3	1
\.


--
-- Data for Name: components_page_social_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_social_links (id, title, url) FROM stdin;
3	youtube	https://youtube.com/
1	vimeo	https://vimeo.com/
2	instagram	https://www.instagram.com/
\.


--
-- Data for Name: components_page_the_companies; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_the_companies (id, title, text) FROM stdin;
1	A Empresa	A Groove Filmes nasceu de um sonho, que junto com o amor por registrar recorda├º├Áes, fez com que a paix├úo pela arte se tornasse um trabalho, facilitando as decis├Áes de nossos clientes. Somos uma empresa diferente, pois fazemos filmes diferentes. Sabemos que n├úo ├® f├ícil encontrar a pessoa certa para materializar esse momento ├║nico. Ent├úo, chegamos para tornar as coisas mais simples. Trabalhamos com os mais novos e modernos equipamentos, garantindo a qualidade do seu filme, pois sabemos que ele vai durar pra sempre. Ser├í uma honra ter voc├¬s como parte da fam├¡lia Groove Filmes.
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
64	plugin_content_manager_configuration_components::page.footer	{"uid":"page.footer","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"linkWhatsapp","defaultSortBy":"linkWhatsapp","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"copyright":{"edit":{"label":"Copyright","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Copyright","searchable":true,"sortable":true}},"linkWhatsapp":{"edit":{"label":"LinkWhatsapp","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"LinkWhatsapp","searchable":true,"sortable":true}}},"layouts":{"list":["id","copyright","linkWhatsapp"],"edit":[[{"name":"copyright","size":6},{"name":"linkWhatsapp","size":6}]],"editRelations":[]},"isComponent":true}	object		
61	model_def_page.instafeed	{"uid":"page.instafeed","collectionName":"components_page_instafeeds","info":{"name":"instafeed","icon":"camera-retro"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"instagramToken":{"type":"text","required":true}}}	object	\N	\N
58	model_def_page.our-customer	{"uid":"page.our-customer","collectionName":"components_page_our_customers","info":{"name":"ourCustomer","icon":"user-alt","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"subtitle":{"type":"string","required":true},"images":{"type":"component","repeatable":true,"component":"page.image","required":true}}}	object	\N	\N
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
41	model_def_page.about-us	{"uid":"page.about-us","collectionName":"components_page_aboutuses","info":{"name":"aboutUs","icon":"address-card"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"textOne":{"type":"richtext","required":true},"textTwo":{"type":"richtext","required":true},"logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}}}}	object	\N	\N
2	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
3	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
10	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
11	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
13	plugin_i18n_default_locale	"en"	string		
12	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
14	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
15	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
19	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
34	plugin_content_manager_configuration_components::page.header	{"uid":"page.header","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"menu":{"edit":{"label":"Menu","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Menu","searchable":false,"sortable":false}},"socialLinks":{"edit":{"label":"SocialLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SocialLinks","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"menu","size":12}],[{"name":"socialLinks","size":12}]],"editRelations":[]},"isComponent":true}	object		
63	model_def_page.footer	{"uid":"page.footer","collectionName":"components_page_footers","info":{"name":"footer","icon":"window-minimize","description":""},"options":{"timestamps":false},"attributes":{"copyright":{"type":"text","required":true},"linkWhatsapp":{"type":"string","required":true}}}	object	\N	\N
16	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
8	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
42	plugin_content_manager_configuration_components::page.about-us	{"uid":"page.about-us","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"textOne":{"edit":{"label":"TextOne","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TextOne","searchable":false,"sortable":false}},"textTwo":{"edit":{"label":"TextTwo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TextTwo","searchable":false,"sortable":false}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","logo"],"edit":[[{"name":"title","size":6}],[{"name":"textOne","size":12}],[{"name":"textTwo","size":12}],[{"name":"logo","size":6}]],"editRelations":[]},"isComponent":true}	object		
60	plugin_content_manager_configuration_components::page.image	{"uid":"page.image","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","image"],"edit":[[{"name":"image","size":6}]],"editRelations":[]},"isComponent":true}	object		
24	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
55	model_def_page.the-company	{"uid":"page.the-company","collectionName":"components_page_the_companies","info":{"name":"theCompany","icon":"city","description":""},"options":{"timestamps":false},"attributes":{"background":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"title":{"type":"string","required":true,"default":"A Empresa"},"text":{"type":"richtext","default":"A Groove Filmes nasceu de um sonho, que junto com o amor por registrar recorda├º├Áes, fez com que a paix├úo pela arte se tornasse um trabalho, facilitando as decis├Áes de nossos clientes. Somos uma empresa diferente, pois fazemos filmes diferentes. Sabemos que n├úo ├® f├ícil encontrar a pessoa certa para materializar esse momento ├║nico. Ent├úo, chegamos para tornar as coisas mais simples. Trabalhamos com os mais novos e modernos equipamentos, garantindo a qualidade do seu filme, pois sabemos que ele vai durar pra sempre. Ser├í uma honra ter voc├¬s como parte da fam├¡lia Groove Filmes.","required":true},"image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
17	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
20	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
22	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But donÔÇÖt worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
23	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
47	plugin_content_manager_configuration_components::page.last-jobs	{"uid":"page.last-jobs","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"gallery":{"edit":{"label":"Gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gallery","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"gallery","size":12}]],"editRelations":[]},"isComponent":true}	object		
45	model_def_page.gallery	{"uid":"page.gallery","collectionName":"components_page_galleries","info":{"name":"gallery","icon":"photo-video"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"subtitle":{"type":"string","required":true},"thumbnail":{"collection":"file","via":"related","allowedTypes":["files","images","videos"],"plugin":"upload","required":true,"pluginOptions":{}},"url":{"type":"string","required":true}}}	object	\N	\N
50	model_def_page.our-process	{"uid":"page.our-process","collectionName":"components_page_our_processes","info":{"name":"ourProcess","icon":"cogs"},"options":{"timestamps":false},"attributes":{"background":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"title":{"type":"string","required":true},"subtitle":{"type":"string","required":true},"content":{"type":"component","repeatable":true,"component":"page.content","required":true,"max":3}}}	object	\N	\N
18	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
21	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
44	plugin_content_manager_configuration_components::page.banner	{"uid":"page.banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"video","defaultSortBy":"video","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"textOne":{"edit":{"label":"TextOne","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TextOne","searchable":true,"sortable":true}},"textTwo":{"edit":{"label":"TextTwo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TextTwo","searchable":true,"sortable":true}},"backgroundImage":{"edit":{"label":"BackgroundImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BackgroundImage","searchable":false,"sortable":false}},"video":{"edit":{"label":"Video","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Video","searchable":true,"sortable":true}}},"layouts":{"list":["id","textOne","textTwo","backgroundImage"],"edit":[[{"name":"textOne","size":6},{"name":"textTwo","size":6}],[{"name":"backgroundImage","size":6},{"name":"video","size":6}]],"editRelations":[]},"isComponent":true}	object		
25	model_def_menu.menu	{"uid":"menu.menu","collectionName":"components_menu_menus","info":{"name":"Menu","icon":"bars"},"options":{"timestamps":false},"attributes":{"Link":{"type":"string","required":true},"Label":{"type":"string","required":true}}}	object	\N	\N
46	model_def_page.last-jobs	{"uid":"page.last-jobs","collectionName":"components_page_last_jobs","info":{"name":"lastJobs","icon":"video","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"subtitle":{"type":"string","required":true},"gallery":{"type":"component","repeatable":true,"component":"page.gallery","required":true,"min":3}}}	object	\N	\N
62	plugin_content_manager_configuration_components::page.instafeed	{"uid":"page.instafeed","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"instagramToken":{"edit":{"label":"InstagramToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"InstagramToken","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","instagramToken"],"edit":[[{"name":"title","size":6},{"name":"instagramToken","size":6}]],"editRelations":[]},"isComponent":true}	object		
28	plugin_content_manager_configuration_content_types::application::home.home	{"uid":"application::home.home","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"mainVideo":{"edit":{"label":"MainVideo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainVideo","searchable":false,"sortable":false}},"aboutUs":{"edit":{"label":"AboutUs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AboutUs","searchable":false,"sortable":false}},"banner":{"edit":{"label":"Banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Banner","searchable":false,"sortable":false}},"lastJobs":{"edit":{"label":"LastJobs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"LastJobs","searchable":false,"sortable":false}},"ourProcess":{"edit":{"label":"OurProcess","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"OurProcess","searchable":false,"sortable":false}},"aboutDirector":{"edit":{"label":"AboutDirector","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AboutDirector","searchable":false,"sortable":false}},"theCompany":{"edit":{"label":"TheCompany","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TheCompany","searchable":false,"sortable":false}},"ourCustomer":{"edit":{"label":"OurCustomer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"OurCustomer","searchable":false,"sortable":false}},"instafeed":{"edit":{"label":"Instafeed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Instafeed","searchable":false,"sortable":false}},"footer":{"edit":{"label":"Footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Footer","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at","logo"],"edit":[[{"name":"logo","size":6}],[{"name":"header","size":12}],[{"name":"mainVideo","size":12}],[{"name":"aboutUs","size":12}],[{"name":"banner","size":12}],[{"name":"lastJobs","size":12}],[{"name":"ourProcess","size":12}],[{"name":"aboutDirector","size":12}],[{"name":"theCompany","size":12}],[{"name":"ourCustomer","size":12}],[{"name":"instafeed","size":12}],[{"name":"footer","size":12}]],"editRelations":[]}}	object		
51	plugin_content_manager_configuration_components::page.content	{"uid":"page.content","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":false,"sortable":false}}},"layouts":{"list":["id","icon","title"],"edit":[[{"name":"icon","size":6},{"name":"title","size":6}],[{"name":"text","size":12}]],"editRelations":[]},"isComponent":true}	object		
26	model_def_application::home.home	{"uid":"application::home.home","collectionName":"homes","kind":"singleType","info":{"name":"Home","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"header":{"type":"component","repeatable":false,"component":"page.header","required":true},"mainVideo":{"type":"component","repeatable":false,"component":"page.main-video"},"aboutUs":{"type":"component","repeatable":false,"component":"page.about-us"},"banner":{"type":"component","repeatable":false,"component":"page.banner","required":true},"lastJobs":{"type":"component","repeatable":false,"component":"page.last-jobs","required":true},"ourProcess":{"type":"component","repeatable":false,"component":"page.our-process","required":true},"aboutDirector":{"type":"component","repeatable":false,"component":"page.about-director","required":true},"theCompany":{"type":"component","repeatable":false,"component":"page.the-company"},"ourCustomer":{"type":"component","repeatable":false,"component":"page.our-customer"},"instafeed":{"type":"component","repeatable":false,"component":"page.instafeed","required":true},"footer":{"type":"component","repeatable":false,"component":"page.footer"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
59	plugin_content_manager_configuration_components::page.our-customer	{"uid":"page.our-customer","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"images":{"edit":{"label":"Images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Images","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"images","size":12}]],"editRelations":[]},"isComponent":true}	object		
4	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
52	plugin_content_manager_configuration_components::page.our-process	{"uid":"page.our-process","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"background":{"edit":{"label":"Background","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Background","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}}},"layouts":{"list":["id","background","title","subtitle"],"edit":[[{"name":"background","size":6},{"name":"title","size":6}],[{"name":"subtitle","size":6}],[{"name":"content","size":12}]],"editRelations":[]},"isComponent":true}	object		
48	plugin_content_manager_configuration_components::page.gallery	{"uid":"page.gallery","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"thumbnail":{"edit":{"label":"Thumbnail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Thumbnail","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","thumbnail"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"thumbnail","size":6},{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}	object		
43	model_def_page.banner	{"uid":"page.banner","collectionName":"components_page_banners","info":{"name":"banner","icon":"image"},"options":{"timestamps":false},"attributes":{"textOne":{"type":"text","required":true},"textTwo":{"type":"text","required":true},"backgroundImage":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"video":{"type":"string","required":true}}}	object	\N	\N
29	model_def_header.menu	{"uid":"header.menu","collectionName":"components_header_menus","info":{"name":"Menu","icon":"heading","description":""},"options":{"timestamps":false},"attributes":{"label":{"type":"string","required":true},"url":{"type":"string","required":true}}}	object	\N	\N
31	model_def_page.header	{"uid":"page.header","collectionName":"components_page_headers","info":{"name":"header","icon":"h-square","description":""},"options":{"timestamps":false},"attributes":{"menu":{"type":"component","repeatable":true,"component":"page.menu","required":true},"socialLinks":{"type":"component","repeatable":true,"component":"page.social-links","required":true}}}	object	\N	\N
33	plugin_content_manager_configuration_components::page.menu	{"uid":"page.menu","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","url"],"edit":[[{"name":"label","size":6},{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}	object		
32	model_def_page.menu	{"uid":"page.menu","collectionName":"components_page_menus","info":{"name":"menu","icon":"bars","description":""},"options":{"timestamps":false},"attributes":{"label":{"type":"string","required":true},"url":{"type":"string","required":true}}}	object	\N	\N
36	plugin_content_manager_configuration_components::page.social-links	{"uid":"page.social-links","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","url"],"edit":[[{"name":"title","size":6},{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}	object		
35	model_def_page.social-links	{"uid":"page.social-links","collectionName":"components_page_social_links","info":{"name":"socialLinks","icon":"network-wired","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"enumeration","enum":["vimeo","instagram","youtube"],"required":true},"url":{"type":"string","required":true}}}	object	\N	\N
56	plugin_content_manager_configuration_components::page.the-company	{"uid":"page.the-company","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"background":{"edit":{"label":"Background","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Background","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","background","title","image"],"edit":[[{"name":"background","size":6},{"name":"title","size":6}],[{"name":"text","size":12}],[{"name":"image","size":6}]],"editRelations":[]},"isComponent":true}	object		
54	plugin_content_manager_configuration_components::page.about-director	{"uid":"page.about-director","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Role","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle","image"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"image","size":6},{"name":"name","size":6}],[{"name":"role","size":6}],[{"name":"description","size":12}]],"editRelations":[]},"isComponent":true}	object		
53	model_def_page.about-director	{"uid":"page.about-director","collectionName":"components_page_about_directors","info":{"name":"aboutDirector","icon":"user-tie"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"subtitle":{"type":"string","required":true},"image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"name":{"type":"string","required":true},"role":{"type":"string","required":true},"description":{"type":"richtext","required":true}}}	object	\N	\N
6	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
40	plugin_content_manager_configuration_components::page.button	{"uid":"page.button","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}}},"layouts":{"list":["id","url","label"],"edit":[[{"name":"url","size":6},{"name":"label","size":6}]],"editRelations":[]},"isComponent":true}	object		
37	model_def_page.button	{"uid":"page.button","collectionName":"components_page_buttons","info":{"name":"button","icon":"link"},"options":{"timestamps":false},"attributes":{"url":{"type":"string","required":true},"label":{"type":"string","required":true}}}	object	\N	\N
38	model_def_page.main-video	{"uid":"page.main-video","collectionName":"components_page_main_videos","info":{"name":"mainVideo","icon":"file-video","description":""},"options":{"timestamps":false},"attributes":{"imageMobile":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"smallText":{"type":"string","required":true},"title":{"type":"string","required":true},"subtitle":{"type":"string","required":true},"button":{"type":"component","repeatable":false,"component":"page.button","required":true},"video":{"type":"string","required":true}}}	object	\N	\N
39	plugin_content_manager_configuration_components::page.main-video	{"uid":"page.main-video","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"smallText","defaultSortBy":"smallText","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"imageMobile":{"edit":{"label":"ImageMobile","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ImageMobile","searchable":false,"sortable":false}},"smallText":{"edit":{"label":"SmallText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SmallText","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}},"video":{"edit":{"label":"Video","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Video","searchable":false,"sortable":false}}},"layouts":{"list":["id","video","imageMobile","smallText"],"edit":[[{"name":"video","size":6},{"name":"imageMobile","size":6}],[{"name":"smallText","size":6},{"name":"title","size":6}],[{"name":"subtitle","size":6}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
9	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
7	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
49	model_def_page.content	{"uid":"page.content","collectionName":"components_page_contents","info":{"name":"content","icon":"file-signature"},"options":{"timestamps":false},"attributes":{"icon":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"title":{"type":"string","required":true},"text":{"type":"richtext","required":true}}}	object	\N	\N
57	model_def_page.image	{"uid":"page.image","collectionName":"components_page_images","info":{"name":"image","icon":"images"},"options":{"timestamps":false},"attributes":{"image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}}}}	object	\N	\N
5	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
\.


--
-- Data for Name: homes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.homes (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	2021-08-09 17:01:43.879+00	1	1	2021-08-09 16:35:36.868+00	2022-03-08 22:16:51.205+00
\.


--
-- Data for Name: homes_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.homes_components (id, field, "order", component_type, component_id, home_id) FROM stdin;
13	header	1	components_page_headers	1	1
14	mainVideo	1	components_page_main_videos	1	1
15	aboutUs	1	components_page_aboutuses	1	1
16	banner	1	components_page_banners	1	1
5	Menu	1	components_header_menus	1	1
6	Menu	2	components_header_menus	2	1
7	Menu	3	components_header_menus	3	1
8	Menu	4	components_header_menus	4	1
9	menu	1	components_header_menus	5	1
10	menu	2	components_header_menus	6	1
11	menu	3	components_header_menus	7	1
12	menu	4	components_header_menus	8	1
17	lastJobs	1	components_page_last_jobs	1	1
18	ourProcess	1	components_page_our_processes	1	1
19	aboutDirector	1	components_page_about_directors	1	1
20	theCompany	1	components_page_the_companies	1	1
21	ourCustomer	1	components_page_our_customers	1	1
22	instafeed	1	components_page_instafeeds	1	1
23	footer	1	components_page_footers	1	1
\.


--
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	\N	2021-08-09 13:50:35.455+00	2021-08-09 13:50:35.455+00
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
1	Camila	Fernandes	\N	kaah.fernandess20@gmail.com	$2a$10$8zeIgY0HCF/6QzVXhswTbudMQpuN1AN2hH9/TwjGqEM.3jnGVMw2e	6eef0eca51ddd5c21b69ffb8d9bb945b643a3698	\N	t	\N	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
1	plugins::upload.read	\N	{}	[]	2	2021-08-09 13:50:36.637+00	2021-08-09 13:50:36.644+00
4	plugins::upload.assets.download	\N	{}	[]	2	2021-08-09 13:50:36.638+00	2021-08-09 13:50:36.649+00
5	plugins::upload.assets.copy-link	\N	{}	[]	2	2021-08-09 13:50:36.64+00	2021-08-09 13:50:36.649+00
2	plugins::upload.assets.create	\N	{}	[]	2	2021-08-09 13:50:36.638+00	2021-08-09 13:50:36.649+00
3	plugins::upload.assets.update	\N	{}	[]	2	2021-08-09 13:50:36.638+00	2021-08-09 13:50:36.649+00
6	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2021-08-09 13:50:36.682+00	2021-08-09 13:50:36.689+00
7	plugins::upload.assets.create	\N	{}	[]	3	2021-08-09 13:50:36.682+00	2021-08-09 13:50:36.689+00
8	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2021-08-09 13:50:36.682+00	2021-08-09 13:50:36.69+00
9	plugins::upload.assets.download	\N	{}	[]	3	2021-08-09 13:50:36.682+00	2021-08-09 13:50:36.69+00
10	plugins::upload.assets.copy-link	\N	{}	[]	3	2021-08-09 13:50:36.682+00	2021-08-09 13:50:36.692+00
11	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-09 13:50:36.744+00	2021-08-09 13:50:36.757+00
12	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-09 13:50:36.744+00	2021-08-09 13:50:36.758+00
13	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-09 13:50:36.744+00	2021-08-09 13:50:36.758+00
15	plugins::content-type-builder.read	\N	{}	[]	1	2021-08-09 13:50:36.744+00	2021-08-09 13:50:36.758+00
16	plugins::email.settings.read	\N	{}	[]	1	2021-08-09 13:50:36.744+00	2021-08-09 13:50:36.758+00
17	plugins::upload.read	\N	{}	[]	1	2021-08-09 13:50:36.744+00	2021-08-09 13:50:36.763+00
18	plugins::upload.assets.create	\N	{}	[]	1	2021-08-09 13:50:36.745+00	2021-08-09 13:50:36.763+00
19	plugins::upload.assets.update	\N	{}	[]	1	2021-08-09 13:50:36.745+00	2021-08-09 13:50:36.763+00
20	plugins::upload.assets.download	\N	{}	[]	1	2021-08-09 13:50:36.745+00	2021-08-09 13:50:36.763+00
21	plugins::upload.assets.copy-link	\N	{}	[]	1	2021-08-09 13:50:36.785+00	2021-08-09 13:50:36.797+00
22	plugins::upload.settings.read	\N	{}	[]	1	2021-08-09 13:50:36.787+00	2021-08-09 13:50:36.8+00
23	plugins::i18n.locale.create	\N	{}	[]	1	2021-08-09 13:50:36.787+00	2021-08-09 13:50:36.8+00
24	plugins::i18n.locale.read	\N	{}	[]	1	2021-08-09 13:50:36.788+00	2021-08-09 13:50:36.8+00
25	plugins::i18n.locale.update	\N	{}	[]	1	2021-08-09 13:50:36.788+00	2021-08-09 13:50:36.8+00
26	plugins::i18n.locale.delete	\N	{}	[]	1	2021-08-09 13:50:36.793+00	2021-08-09 13:50:36.808+00
27	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2021-08-09 13:50:36.793+00	2021-08-09 13:50:36.808+00
28	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2021-08-09 13:50:36.793+00	2021-08-09 13:50:36.808+00
29	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2021-08-09 13:50:36.793+00	2021-08-09 13:50:36.808+00
30	plugins::users-permissions.roles.create	\N	{}	[]	1	2021-08-09 13:50:36.797+00	2021-08-09 13:50:36.812+00
309	plugins::content-manager.explorer.publish	application::home.home	{}	[]	1	2022-03-10 21:47:18.661+00	2022-03-10 21:47:18.675+00
31	plugins::users-permissions.roles.read	\N	{}	[]	1	2021-08-09 13:50:36.824+00	2021-08-09 13:50:36.836+00
32	plugins::users-permissions.roles.update	\N	{}	[]	1	2021-08-09 13:50:36.828+00	2021-08-09 13:50:36.839+00
42	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2021-08-09 13:50:36.861+00	2021-08-09 13:50:36.867+00
51	admin::roles.create	\N	{}	[]	1	2021-08-09 13:50:36.896+00	2021-08-09 13:50:36.908+00
308	plugins::content-manager.explorer.delete	application::home.home	{}	[]	1	2022-03-10 21:47:18.661+00	2022-03-10 21:47:18.675+00
37	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2021-08-09 13:50:36.833+00	2021-08-09 13:50:36.846+00
45	admin::webhooks.update	\N	{}	[]	1	2021-08-09 13:50:36.864+00	2021-08-09 13:50:36.884+00
54	admin::roles.delete	\N	{}	[]	1	2021-08-09 13:50:36.901+00	2021-08-09 13:50:36.914+00
310	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2022-03-10 21:47:18.661+00	2022-03-10 21:47:18.677+00
39	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2021-08-09 13:50:36.836+00	2021-08-09 13:50:36.849+00
33	plugins::users-permissions.roles.delete	\N	{}	[]	1	2021-08-09 13:50:36.83+00	2021-08-09 13:50:36.842+00
43	admin::webhooks.create	\N	{}	[]	1	2021-08-09 13:50:36.864+00	2021-08-09 13:50:36.88+00
48	admin::users.read	\N	{}	[]	1	2021-08-09 13:50:36.893+00	2021-08-09 13:50:36.904+00
40	admin::marketplace.read	\N	{}	[]	1	2021-08-09 13:50:36.836+00	2021-08-09 13:50:36.849+00
34	plugins::users-permissions.providers.read	\N	{}	[]	1	2021-08-09 13:50:36.83+00	2021-08-09 13:50:36.842+00
44	admin::webhooks.read	\N	{}	[]	1	2021-08-09 13:50:36.864+00	2021-08-09 13:50:36.881+00
49	admin::users.update	\N	{}	[]	1	2021-08-09 13:50:36.894+00	2021-08-09 13:50:36.904+00
53	admin::roles.update	\N	{}	[]	1	2021-08-09 13:50:36.901+00	2021-08-09 13:50:36.913+00
41	admin::marketplace.plugins.install	\N	{}	[]	1	2021-08-09 13:50:36.859+00	2021-08-09 13:50:36.864+00
36	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2021-08-09 13:50:36.833+00	2021-08-09 13:50:36.846+00
46	admin::webhooks.delete	\N	{}	[]	1	2021-08-09 13:50:36.891+00	2021-08-09 13:50:36.905+00
50	admin::users.delete	\N	{}	[]	1	2021-08-09 13:50:36.896+00	2021-08-09 13:50:36.907+00
38	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2021-08-09 13:50:36.833+00	2021-08-09 13:50:36.846+00
52	admin::roles.read	\N	{}	[]	1	2021-08-09 13:50:36.896+00	2021-08-09 13:50:36.908+00
299	plugins::content-manager.explorer.read	application::home.home	{"fields": ["logo", "header.menu.label", "header.menu.url", "header.socialLinks.title", "header.socialLinks.url", "mainVideo.imageMobile", "mainVideo.smallText", "mainVideo.title", "mainVideo.subtitle", "mainVideo.button.url", "mainVideo.button.label", "mainVideo.video", "aboutUs.title", "aboutUs.textOne", "aboutUs.textTwo", "aboutUs.logo", "banner.textOne", "banner.textTwo", "banner.backgroundImage", "banner.video", "lastJobs.title", "lastJobs.subtitle", "lastJobs.gallery.title", "lastJobs.gallery.subtitle", "lastJobs.gallery.thumbnail", "lastJobs.gallery.url", "ourProcess.background", "ourProcess.title", "ourProcess.subtitle", "ourProcess.content.icon", "ourProcess.content.title", "ourProcess.content.text", "aboutDirector.title", "aboutDirector.subtitle", "aboutDirector.image", "aboutDirector.name", "aboutDirector.role", "aboutDirector.description", "theCompany.background", "theCompany.title", "theCompany.text", "theCompany.image", "ourCustomer.title", "ourCustomer.subtitle", "ourCustomer.images.image", "instafeed.title", "instafeed.instagramToken", "footer.copyright", "footer.linkWhatsapp"]}	[]	1	2022-03-08 22:08:01.28+00	2022-03-08 22:08:01.29+00
300	plugins::content-manager.explorer.create	application::home.home	{"fields": ["logo", "header.menu.label", "header.menu.url", "header.socialLinks.title", "header.socialLinks.url", "mainVideo.imageMobile", "mainVideo.smallText", "mainVideo.title", "mainVideo.subtitle", "mainVideo.button.url", "mainVideo.button.label", "mainVideo.video", "aboutUs.title", "aboutUs.textOne", "aboutUs.textTwo", "aboutUs.logo", "banner.textOne", "banner.textTwo", "banner.backgroundImage", "banner.video", "lastJobs.title", "lastJobs.subtitle", "lastJobs.gallery.title", "lastJobs.gallery.subtitle", "lastJobs.gallery.thumbnail", "lastJobs.gallery.url", "ourProcess.background", "ourProcess.title", "ourProcess.subtitle", "ourProcess.content.icon", "ourProcess.content.title", "ourProcess.content.text", "aboutDirector.title", "aboutDirector.subtitle", "aboutDirector.image", "aboutDirector.name", "aboutDirector.role", "aboutDirector.description", "theCompany.background", "theCompany.title", "theCompany.text", "theCompany.image", "ourCustomer.title", "ourCustomer.subtitle", "ourCustomer.images.image", "instafeed.title", "instafeed.instagramToken", "footer.copyright", "footer.linkWhatsapp"]}	[]	1	2022-03-08 22:08:01.28+00	2022-03-08 22:08:01.29+00
301	plugins::content-manager.explorer.update	application::home.home	{"fields": ["logo", "header.menu.label", "header.menu.url", "header.socialLinks.title", "header.socialLinks.url", "mainVideo.imageMobile", "mainVideo.smallText", "mainVideo.title", "mainVideo.subtitle", "mainVideo.button.url", "mainVideo.button.label", "mainVideo.video", "aboutUs.title", "aboutUs.textOne", "aboutUs.textTwo", "aboutUs.logo", "banner.textOne", "banner.textTwo", "banner.backgroundImage", "banner.video", "lastJobs.title", "lastJobs.subtitle", "lastJobs.gallery.title", "lastJobs.gallery.subtitle", "lastJobs.gallery.thumbnail", "lastJobs.gallery.url", "ourProcess.background", "ourProcess.title", "ourProcess.subtitle", "ourProcess.content.icon", "ourProcess.content.title", "ourProcess.content.text", "aboutDirector.title", "aboutDirector.subtitle", "aboutDirector.image", "aboutDirector.name", "aboutDirector.role", "aboutDirector.description", "theCompany.background", "theCompany.title", "theCompany.text", "theCompany.image", "ourCustomer.title", "ourCustomer.subtitle", "ourCustomer.images.image", "instafeed.title", "instafeed.instagramToken", "footer.copyright", "footer.linkWhatsapp"]}	[]	1	2022-03-08 22:08:01.28+00	2022-03-08 22:08:01.29+00
35	plugins::users-permissions.providers.update	\N	{}	[]	1	2021-08-09 13:50:36.83+00	2021-08-09 13:50:36.843+00
47	admin::users.create	\N	{}	[]	1	2021-08-09 13:50:36.893+00	2021-08-09 13:50:36.904+00
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2021-08-09 13:50:36.59+00	2021-08-09 13:50:36.59+00
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2021-08-09 13:50:36.611+00	2021-08-09 13:50:36.611+00
3	Author	strapi-author	Authors can manage the content they have created.	2021-08-09 13:50:36.625+00	2021-08-09 13:50:36.625+00
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
6	last-job.png			768	624	{"small": {"ext": ".png", "url": "/uploads/small_last_job_27455e7bdd.png", "hash": "small_last_job_27455e7bdd", "mime": "image/png", "name": "small_last-job.png", "path": null, "size": 508.8, "width": 500, "height": 406}, "medium": {"ext": ".png", "url": "/uploads/medium_last_job_27455e7bdd.png", "hash": "medium_last_job_27455e7bdd", "mime": "image/png", "name": "medium_last-job.png", "path": null, "size": 1091.81, "width": 750, "height": 609}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_last_job_27455e7bdd.png", "hash": "thumbnail_last_job_27455e7bdd", "mime": "image/png", "name": "thumbnail_last-job.png", "path": null, "size": 82.72, "width": 192, "height": 156}}	last_job_27455e7bdd	.png	image/png	672.12	/uploads/last_job_27455e7bdd.png	\N	local	\N	1	1	2021-09-06 18:26:21.27+00	2021-09-22 00:48:06.441+00
7	background-ourprocess.png			1366	720	{"large": {"ext": ".png", "url": "/uploads/large_background_ourprocess_33ec967aeb.png", "hash": "large_background_ourprocess_33ec967aeb", "mime": "image/png", "name": "large_background-ourprocess.png", "path": null, "size": 730.78, "width": 1000, "height": 527}, "small": {"ext": ".png", "url": "/uploads/small_background_ourprocess_33ec967aeb.png", "hash": "small_background_ourprocess_33ec967aeb", "mime": "image/png", "name": "small_background-ourprocess.png", "path": null, "size": 200.83, "width": 500, "height": 264}, "medium": {"ext": ".png", "url": "/uploads/medium_background_ourprocess_33ec967aeb.png", "hash": "medium_background_ourprocess_33ec967aeb", "mime": "image/png", "name": "medium_background-ourprocess.png", "path": null, "size": 430.45, "width": 750, "height": 395}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_background_ourprocess_33ec967aeb.png", "hash": "thumbnail_background_ourprocess_33ec967aeb", "mime": "image/png", "name": "thumbnail_background-ourprocess.png", "path": null, "size": 52.58, "width": 245, "height": 129}}	background_ourprocess_33ec967aeb	.png	image/png	929.48	/uploads/background_ourprocess_33ec967aeb.png	\N	local	\N	1	1	2021-09-23 22:49:04.298+00	2021-09-23 22:49:04.338+00
1	logo.png	Logo Groove Filmes		126	64	\N	logo_996d587324	.png	image/png	3.48	/uploads/logo_996d587324.png	\N	local	\N	1	1	2021-08-09 17:01:36.016+00	2021-08-09 17:03:15.58+00
2	2021-02-24 20-00-05.mp4			\N	\N	\N	2021_02_24_20_00_05_935dfbf597	.mp4	video/mp4	1846.92	/uploads/2021_02_24_20_00_05_935dfbf597.mp4	\N	local	\N	1	1	2021-08-11 23:48:36.913+00	2021-08-11 23:48:36.931+00
3	dori-2.jpg			640	360	{"small": {"ext": ".jpg", "url": "/uploads/small_dori_2_d496e7fc21.jpg", "hash": "small_dori_2_d496e7fc21", "mime": "image/jpeg", "name": "small_dori-2.jpg", "path": null, "size": 15.88, "width": 500, "height": 281}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_dori_2_d496e7fc21.jpg", "hash": "thumbnail_dori_2_d496e7fc21", "mime": "image/jpeg", "name": "thumbnail_dori-2.jpg", "path": null, "size": 5.67, "width": 245, "height": 138}}	dori_2_d496e7fc21	.jpg	image/jpeg	22.28	/uploads/dori_2_d496e7fc21.jpg	\N	local	\N	1	1	2021-08-13 20:38:10.872+00	2021-08-13 20:38:10.923+00
4	logo 2.png			422	213	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_logo_2_39461464d0.png", "hash": "thumbnail_logo_2_39461464d0", "mime": "image/png", "name": "thumbnail_logo 2.png", "path": null, "size": 13.95, "width": 245, "height": 124}}	logo_2_39461464d0	.png	image/png	10.89	/uploads/logo_2_39461464d0.png	\N	local	\N	1	1	2021-08-16 14:05:43.748+00	2021-08-16 14:05:43.764+00
5	Rectangle 4.png			1366	406	{"large": {"ext": ".png", "url": "/uploads/large_Rectangle_4_472ab69dc5.png", "hash": "large_Rectangle_4_472ab69dc5", "mime": "image/png", "name": "large_Rectangle 4.png", "path": null, "size": 542.78, "width": 1000, "height": 297}, "small": {"ext": ".png", "url": "/uploads/small_Rectangle_4_472ab69dc5.png", "hash": "small_Rectangle_4_472ab69dc5", "mime": "image/png", "name": "small_Rectangle 4.png", "path": null, "size": 151.98, "width": 500, "height": 149}, "medium": {"ext": ".png", "url": "/uploads/medium_Rectangle_4_472ab69dc5.png", "hash": "medium_Rectangle_4_472ab69dc5", "mime": "image/png", "name": "medium_Rectangle 4.png", "path": null, "size": 322.06, "width": 750, "height": 223}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Rectangle_4_472ab69dc5.png", "hash": "thumbnail_Rectangle_4_472ab69dc5", "mime": "image/png", "name": "thumbnail_Rectangle 4.png", "path": null, "size": 39.99, "width": 245, "height": 73}}	Rectangle_4_472ab69dc5	.png	image/png	467.50	/uploads/Rectangle_4_472ab69dc5.png	\N	local	\N	1	1	2021-08-16 22:57:53.215+00	2021-08-16 22:57:53.232+00
8	briefing-icon.png			86	86	\N	briefing_icon_b0f3570f7c	.png	image/png	1.44	/uploads/briefing_icon_b0f3570f7c.png	\N	local	\N	1	1	2021-09-23 22:51:36.777+00	2021-09-23 22:51:36.784+00
9	pre-producao-icon.png			86	86	\N	pre_producao_icon_6c0dc8d98f	.png	image/png	1.48	/uploads/pre_producao_icon_6c0dc8d98f.png	\N	local	\N	1	1	2021-09-23 22:52:09.594+00	2021-09-23 22:52:09.6+00
10	pos-producao-icon.png			86	86	\N	pos_producao_icon_b19f8ca7b6	.png	image/png	1.40	/uploads/pos_producao_icon_b19f8ca7b6.png	\N	local	\N	1	1	2021-09-23 22:52:33.158+00	2021-09-23 22:52:33.164+00
11	caio-pelegrini.png	Imagem do diretor		256	373	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_caio_pelegrini_87b90161d2.png", "hash": "thumbnail_caio_pelegrini_87b90161d2", "mime": "image/png", "name": "thumbnail_caio-pelegrini.png", "path": null, "size": 30.48, "width": 107, "height": 156}}	caio_pelegrini_87b90161d2	.png	image/png	123.27	/uploads/caio_pelegrini_87b90161d2.png	\N	local	\N	1	1	2021-10-27 01:54:52.684+00	2021-10-27 01:57:39.111+00
12	background-groove-filmes.png			1366	810	{"large": {"ext": ".png", "url": "/uploads/large_background_groove_filmes_d427d68d59.png", "hash": "large_background_groove_filmes_d427d68d59", "mime": "image/png", "name": "large_background-groove-filmes.png", "path": null, "size": 797.21, "width": 1000, "height": 593}, "small": {"ext": ".png", "url": "/uploads/small_background_groove_filmes_d427d68d59.png", "hash": "small_background_groove_filmes_d427d68d59", "mime": "image/png", "name": "small_background-groove-filmes.png", "path": null, "size": 222.58, "width": 500, "height": 296}, "medium": {"ext": ".png", "url": "/uploads/medium_background_groove_filmes_d427d68d59.png", "hash": "medium_background_groove_filmes_d427d68d59", "mime": "image/png", "name": "medium_background-groove-filmes.png", "path": null, "size": 473.18, "width": 750, "height": 445}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_background_groove_filmes_d427d68d59.png", "hash": "thumbnail_background_groove_filmes_d427d68d59", "mime": "image/png", "name": "thumbnail_background-groove-filmes.png", "path": null, "size": 57.58, "width": 245, "height": 145}}	background_groove_filmes_d427d68d59	.png	image/png	977.75	/uploads/background_groove_filmes_d427d68d59.png	\N	local	\N	1	1	2022-01-31 21:41:26.02+00	2022-01-31 22:18:20.229+00
13	logo-company.png			386	465	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_logo_company_2d3ceae2b9.png", "hash": "thumbnail_logo_company_2d3ceae2b9", "mime": "image/png", "name": "thumbnail_logo-company.png", "path": null, "size": 16.67, "width": 129, "height": 156}}	logo_company_2d3ceae2b9	.png	image/png	35.45	/uploads/logo_company_2d3ceae2b9.png	\N	local	\N	1	1	2022-01-31 22:26:20.18+00	2022-01-31 22:26:20.189+00
14	rectangle.png			200	90	\N	rectangle_77bc0a489b	.png	image/png	0.60	/uploads/rectangle_77bc0a489b.png	\N	local	\N	1	1	2022-02-08 01:20:53.786+00	2022-02-08 01:20:53.839+00
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
5	1	1	homes	Logo	1
21	2	1	homes	video	1
236	14	1	components_page_images	image	1
237	14	2	components_page_images	image	1
238	14	3	components_page_images	image	1
239	14	4	components_page_images	image	1
240	14	5	components_page_images	image	1
241	14	6	components_page_images	image	1
395	3	1	components_page_main_videos	imageMobile	1
396	4	1	components_page_aboutuses	logo	1
397	5	1	components_page_banners	backgroundImage	1
398	6	1	components_page_galleries	thumbnail	1
399	6	2	components_page_galleries	thumbnail	1
400	6	3	components_page_galleries	thumbnail	1
401	6	4	components_page_galleries	thumbnail	1
402	6	5	components_page_galleries	thumbnail	1
403	6	6	components_page_galleries	thumbnail	1
404	6	7	components_page_galleries	thumbnail	1
405	6	8	components_page_galleries	thumbnail	1
406	6	9	components_page_galleries	thumbnail	1
407	8	1	components_page_contents	icon	1
408	9	2	components_page_contents	icon	1
409	10	3	components_page_contents	icon	1
410	7	1	components_page_our_processes	background	1
411	11	1	components_page_about_directors	image	1
412	12	1	components_page_the_companies	background	1
413	13	1	components_page_the_companies	image	1
414	14	7	components_page_images	image	1
415	14	8	components_page_images	image	1
416	14	9	components_page_images	image	1
417	14	10	components_page_images	image	1
418	14	11	components_page_images	image	1
419	1	1	homes	logo	1
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	content-manager	collection-types	bulkdelete	f		1	\N	\N
3	content-manager	collection-types	create	f		1	\N	\N
5	content-manager	collection-types	delete	f		1	\N	\N
4	content-manager	collection-types	create	f		2	\N	\N
2	content-manager	collection-types	bulkdelete	f		2	\N	\N
6	content-manager	collection-types	delete	f		2	\N	\N
7	content-manager	collection-types	find	f		2	\N	\N
9	content-manager	collection-types	findone	f		1	\N	\N
8	content-manager	collection-types	find	f		1	\N	\N
10	content-manager	collection-types	findone	f		2	\N	\N
11	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
12	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
13	content-manager	collection-types	publish	f		1	\N	\N
14	content-manager	collection-types	publish	f		2	\N	\N
15	content-manager	collection-types	unpublish	f		1	\N	\N
16	content-manager	collection-types	unpublish	f		2	\N	\N
17	content-manager	collection-types	update	f		1	\N	\N
18	content-manager	collection-types	update	f		2	\N	\N
19	content-manager	components	findcomponentconfiguration	f		1	\N	\N
20	content-manager	components	findcomponentconfiguration	f		2	\N	\N
21	content-manager	components	findcomponents	f		1	\N	\N
22	content-manager	components	findcomponents	f		2	\N	\N
23	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
24	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
25	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
26	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
27	content-manager	content-types	findcontenttypes	f		1	\N	\N
28	content-manager	content-types	findcontenttypes	f		2	\N	\N
29	content-manager	content-types	findcontenttypessettings	f		1	\N	\N
30	content-manager	content-types	findcontenttypessettings	f		2	\N	\N
31	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
32	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
33	content-manager	relations	find	f		1	\N	\N
34	content-manager	relations	find	f		2	\N	\N
35	content-manager	single-types	createorupdate	f		1	\N	\N
36	content-manager	single-types	createorupdate	f		2	\N	\N
37	content-manager	single-types	delete	f		1	\N	\N
38	content-manager	single-types	delete	f		2	\N	\N
39	content-manager	single-types	find	f		1	\N	\N
40	content-manager	single-types	find	f		2	\N	\N
41	content-manager	single-types	publish	f		1	\N	\N
42	content-manager	single-types	publish	f		2	\N	\N
43	content-manager	single-types	unpublish	f		1	\N	\N
44	content-manager	single-types	unpublish	f		2	\N	\N
45	content-manager	uid	checkuidavailability	f		1	\N	\N
46	content-manager	uid	checkuidavailability	f		2	\N	\N
47	content-manager	uid	generateuid	f		1	\N	\N
48	content-manager	uid	generateuid	f		2	\N	\N
49	content-type-builder	builder	getreservednames	f		1	\N	\N
50	content-type-builder	builder	getreservednames	f		2	\N	\N
51	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
52	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
53	content-type-builder	componentcategories	editcategory	f		1	\N	\N
54	content-type-builder	componentcategories	editcategory	f		2	\N	\N
55	content-type-builder	components	createcomponent	f		1	\N	\N
56	content-type-builder	components	createcomponent	f		2	\N	\N
57	content-type-builder	components	deletecomponent	f		1	\N	\N
58	content-type-builder	components	deletecomponent	f		2	\N	\N
59	content-type-builder	components	getcomponent	f		1	\N	\N
60	content-type-builder	components	getcomponent	f		2	\N	\N
61	content-type-builder	components	getcomponents	f		1	\N	\N
62	content-type-builder	components	getcomponents	f		2	\N	\N
63	content-type-builder	components	updatecomponent	f		1	\N	\N
64	content-type-builder	components	updatecomponent	f		2	\N	\N
65	content-type-builder	connections	getconnections	f		1	\N	\N
66	content-type-builder	connections	getconnections	f		2	\N	\N
67	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
68	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
69	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
70	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
71	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
77	email	email	getsettings	f		1	\N	\N
78	email	email	getsettings	f		2	\N	\N
79	email	email	send	f		1	\N	\N
81	email	email	test	f		1	\N	\N
82	email	email	test	f		2	\N	\N
88	i18n	locales	createlocale	f		2	\N	\N
89	i18n	locales	deletelocale	f		1	\N	\N
91	i18n	locales	listlocales	f		1	\N	\N
92	i18n	locales	listlocales	f		2	\N	\N
98	upload	upload	destroy	f		2	\N	\N
99	upload	upload	find	f		1	\N	\N
108	upload	upload	updatesettings	f		2	\N	\N
118	users-permissions	auth	forgotpassword	t		2	\N	\N
75	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
73	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
80	email	email	send	f		2	\N	\N
85	i18n	iso-locales	listisolocales	f		1	\N	\N
90	i18n	locales	deletelocale	f		2	\N	\N
94	i18n	locales	updatelocale	f		2	\N	\N
102	upload	upload	findone	f		2	\N	\N
104	upload	upload	getsettings	f		2	\N	\N
111	users-permissions	auth	callback	f		1	\N	\N
114	users-permissions	auth	connect	t		2	\N	\N
120	users-permissions	auth	register	t		2	\N	\N
124	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
129	users-permissions	user	destroy	f		1	\N	\N
134	users-permissions	user	find	f		2	\N	\N
139	users-permissions	user	update	f		1	\N	\N
144	users-permissions	userspermissions	deleterole	f		2	\N	\N
149	users-permissions	userspermissions	getpermissions	f		1	\N	\N
152	users-permissions	userspermissions	getpolicies	f		2	\N	\N
159	users-permissions	userspermissions	getroutes	f		1	\N	\N
162	users-permissions	userspermissions	index	f		2	\N	\N
168	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
171	users-permissions	userspermissions	updaterole	f		1	\N	\N
173	application	home	delete	f		2	\N	\N
76	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
74	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
83	i18n	content-types	getnonlocalizedattributes	f		1	\N	\N
87	i18n	locales	createlocale	f		1	\N	\N
93	i18n	locales	updatelocale	f		1	\N	\N
96	upload	upload	count	f		2	\N	\N
103	upload	upload	getsettings	f		1	\N	\N
107	upload	upload	updatesettings	f		1	\N	\N
113	users-permissions	auth	connect	t		1	\N	\N
117	users-permissions	auth	forgotpassword	f		1	\N	\N
123	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
127	users-permissions	user	create	f		1	\N	\N
133	users-permissions	user	find	f		1	\N	\N
137	users-permissions	user	me	t		1	\N	\N
141	users-permissions	userspermissions	createrole	f		1	\N	\N
146	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
151	users-permissions	userspermissions	getpolicies	f		1	\N	\N
155	users-permissions	userspermissions	getrole	f		1	\N	\N
161	users-permissions	userspermissions	index	f		1	\N	\N
166	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
172	users-permissions	userspermissions	updaterole	f		2	\N	\N
177	application	home	update	f		1	\N	\N
86	i18n	iso-locales	listisolocales	f		2	\N	\N
97	upload	upload	destroy	f		1	\N	\N
106	upload	upload	search	f		2	\N	\N
116	users-permissions	auth	emailconfirmation	t		2	\N	\N
126	users-permissions	user	count	f		2	\N	\N
135	users-permissions	user	findone	f		1	\N	\N
145	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
156	users-permissions	userspermissions	getrole	f		2	\N	\N
165	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
175	application	home	find	f		1	\N	\N
100	upload	upload	find	f		2	\N	\N
110	upload	upload	upload	f		2	\N	\N
119	users-permissions	auth	register	f		1	\N	\N
131	users-permissions	user	destroyall	f		1	\N	\N
143	users-permissions	userspermissions	deleterole	f		1	\N	\N
154	users-permissions	userspermissions	getproviders	f		2	\N	\N
164	users-permissions	userspermissions	searchusers	f		2	\N	\N
174	application	home	delete	f		1	\N	\N
101	upload	upload	findone	f		1	\N	\N
112	users-permissions	auth	callback	t		2	\N	\N
122	users-permissions	auth	resetpassword	t		2	\N	\N
132	users-permissions	user	destroyall	f		2	\N	\N
142	users-permissions	userspermissions	createrole	f		2	\N	\N
153	users-permissions	userspermissions	getproviders	f		1	\N	\N
163	users-permissions	userspermissions	searchusers	f		1	\N	\N
178	application	home	update	f		2	\N	\N
109	upload	upload	upload	f		1	\N	\N
121	users-permissions	auth	resetpassword	f		1	\N	\N
130	users-permissions	user	destroy	f		2	\N	\N
140	users-permissions	user	update	f		2	\N	\N
150	users-permissions	userspermissions	getpermissions	f		2	\N	\N
160	users-permissions	userspermissions	getroutes	f		2	\N	\N
170	users-permissions	userspermissions	updateproviders	f		2	\N	\N
176	application	home	find	t		2	\N	\N
128	users-permissions	user	create	f		2	\N	\N
138	users-permissions	user	me	t		2	\N	\N
148	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
158	users-permissions	userspermissions	getroles	f		2	\N	\N
167	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
72	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
84	i18n	content-types	getnonlocalizedattributes	f		2	\N	\N
95	upload	upload	count	f		1	\N	\N
105	upload	upload	search	f		1	\N	\N
115	users-permissions	auth	emailconfirmation	f		1	\N	\N
125	users-permissions	user	count	f		1	\N	\N
136	users-permissions	user	findone	f		2	\N	\N
147	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
157	users-permissions	userspermissions	getroles	f		1	\N	\N
169	users-permissions	userspermissions	updateproviders	f		1	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
1	Gabriel	bieuss303@gmail.com	local	$2a$10$durx2oUXNiFLi5k0onm7DOnAJIuvgH4H2fES8CAS5phD49jBwImui	\N	\N	t	f	1	1	1	2022-02-02 17:59:39.09+00	2022-02-02 18:01:14.214+00
\.


--
-- Name: components_header_menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_header_menus_id_seq', 8, true);


--
-- Name: components_menu_menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_menu_menus_id_seq', 4, true);


--
-- Name: components_page_about_directors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_about_directors_id_seq', 1, true);


--
-- Name: components_page_aboutuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_aboutuses_id_seq', 1, true);


--
-- Name: components_page_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_banners_id_seq', 1, true);


--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 1, true);


--
-- Name: components_page_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_contents_id_seq', 3, true);


--
-- Name: components_page_footers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_footers_id_seq', 1, true);


--
-- Name: components_page_galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_galleries_id_seq', 9, true);


--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_headers_components_id_seq', 7, true);


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_headers_id_seq', 1, true);


--
-- Name: components_page_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_images_id_seq', 13, true);


--
-- Name: components_page_instafeeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_instafeeds_id_seq', 1, true);


--
-- Name: components_page_last_jobs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_last_jobs_components_id_seq', 9, true);


--
-- Name: components_page_last_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_last_jobs_id_seq', 1, true);


--
-- Name: components_page_main_videos_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_main_videos_components_id_seq', 1, true);


--
-- Name: components_page_main_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_main_videos_id_seq', 1, true);


--
-- Name: components_page_menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_menus_id_seq', 4, true);


--
-- Name: components_page_our_customers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_our_customers_components_id_seq', 13, true);


--
-- Name: components_page_our_customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_our_customers_id_seq', 1, true);


--
-- Name: components_page_our_processes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_our_processes_components_id_seq', 3, true);


--
-- Name: components_page_our_processes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_our_processes_id_seq', 1, true);


--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_social_links_id_seq', 3, true);


--
-- Name: components_page_the_companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_the_companies_id_seq', 1, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.core_store_id_seq', 64, true);


--
-- Name: homes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.homes_components_id_seq', 23, true);


--
-- Name: homes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.homes_id_seq', 1, true);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 310, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 14, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 419, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 178, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, true);


--
-- Name: components_header_menus components_header_menus_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_header_menus
    ADD CONSTRAINT components_header_menus_pkey PRIMARY KEY (id);


--
-- Name: components_menu_menus components_menu_menus_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_menu_menus
    ADD CONSTRAINT components_menu_menus_pkey PRIMARY KEY (id);


--
-- Name: components_page_about_directors components_page_about_directors_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_about_directors
    ADD CONSTRAINT components_page_about_directors_pkey PRIMARY KEY (id);


--
-- Name: components_page_aboutuses components_page_aboutuses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_aboutuses
    ADD CONSTRAINT components_page_aboutuses_pkey PRIMARY KEY (id);


--
-- Name: components_page_banners components_page_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_banners
    ADD CONSTRAINT components_page_banners_pkey PRIMARY KEY (id);


--
-- Name: components_page_buttons components_page_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_page_contents components_page_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_contents
    ADD CONSTRAINT components_page_contents_pkey PRIMARY KEY (id);


--
-- Name: components_page_footers components_page_footers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_footers
    ADD CONSTRAINT components_page_footers_pkey PRIMARY KEY (id);


--
-- Name: components_page_galleries components_page_galleries_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_galleries
    ADD CONSTRAINT components_page_galleries_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers_components components_page_headers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers components_page_headers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers
    ADD CONSTRAINT components_page_headers_pkey PRIMARY KEY (id);


--
-- Name: components_page_images components_page_images_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_images
    ADD CONSTRAINT components_page_images_pkey PRIMARY KEY (id);


--
-- Name: components_page_instafeeds components_page_instafeeds_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_instafeeds
    ADD CONSTRAINT components_page_instafeeds_pkey PRIMARY KEY (id);


--
-- Name: components_page_last_jobs_components components_page_last_jobs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_last_jobs_components
    ADD CONSTRAINT components_page_last_jobs_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_last_jobs components_page_last_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_last_jobs
    ADD CONSTRAINT components_page_last_jobs_pkey PRIMARY KEY (id);


--
-- Name: components_page_main_videos_components components_page_main_videos_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_main_videos_components
    ADD CONSTRAINT components_page_main_videos_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_main_videos components_page_main_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_main_videos
    ADD CONSTRAINT components_page_main_videos_pkey PRIMARY KEY (id);


--
-- Name: components_page_menus components_page_menus_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_menus
    ADD CONSTRAINT components_page_menus_pkey PRIMARY KEY (id);


--
-- Name: components_page_our_customers_components components_page_our_customers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_our_customers_components
    ADD CONSTRAINT components_page_our_customers_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_our_customers components_page_our_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_our_customers
    ADD CONSTRAINT components_page_our_customers_pkey PRIMARY KEY (id);


--
-- Name: components_page_our_processes_components components_page_our_processes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_our_processes_components
    ADD CONSTRAINT components_page_our_processes_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_our_processes components_page_our_processes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_our_processes
    ADD CONSTRAINT components_page_our_processes_pkey PRIMARY KEY (id);


--
-- Name: components_page_social_links components_page_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_social_links
    ADD CONSTRAINT components_page_social_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_the_companies components_page_the_companies_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_the_companies
    ADD CONSTRAINT components_page_the_companies_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: homes_components homes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homes_components
    ADD CONSTRAINT homes_components_pkey PRIMARY KEY (id);


--
-- Name: homes homes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homes
    ADD CONSTRAINT homes_pkey PRIMARY KEY (id);


--
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: components_page_headers_components components_page_header_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_header_id_fk FOREIGN KEY (components_page_header_id) REFERENCES public.components_page_headers(id) ON DELETE CASCADE;


--
-- Name: components_page_last_jobs_components components_page_last_job_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_last_jobs_components
    ADD CONSTRAINT components_page_last_job_id_fk FOREIGN KEY (components_page_last_job_id) REFERENCES public.components_page_last_jobs(id) ON DELETE CASCADE;


--
-- Name: components_page_main_videos_components components_page_main_video_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_main_videos_components
    ADD CONSTRAINT components_page_main_video_id_fk FOREIGN KEY (components_page_main_video_id) REFERENCES public.components_page_main_videos(id) ON DELETE CASCADE;


--
-- Name: components_page_our_customers_components components_page_our_customer_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_our_customers_components
    ADD CONSTRAINT components_page_our_customer_id_fk FOREIGN KEY (components_page_our_customer_id) REFERENCES public.components_page_our_customers(id) ON DELETE CASCADE;


--
-- Name: components_page_our_processes_components components_page_our_process_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_our_processes_components
    ADD CONSTRAINT components_page_our_process_id_fk FOREIGN KEY (components_page_our_process_id) REFERENCES public.components_page_our_processes(id) ON DELETE CASCADE;


--
-- Name: homes_components home_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homes_components
    ADD CONSTRAINT home_id_fk FOREIGN KEY (home_id) REFERENCES public.homes(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

