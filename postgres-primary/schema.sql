--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0 (Debian 15.0-1.pgdg110+1)
-- Dumped by pg_dump version 15.0 (Debian 15.0-1.pgdg110+1)

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
-- Name: customers; Type: TABLE; Schema: public; Owner: postgresadmin
--

CREATE TABLE public.customers (
    firstname text,
    customer_id integer NOT NULL,
    date_created timestamp without time zone
);


ALTER TABLE public.customers OWNER TO postgresadmin;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresadmin
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO postgresadmin;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresadmin
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: postgresadmin
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: TABLE customers; Type: ACL; Schema: public; Owner: postgresadmin
--

GRANT SELECT ON TABLE public.customers TO replicator;


--
-- PostgreSQL database dump complete
--

