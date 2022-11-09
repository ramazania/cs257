--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
-- Name: tournaments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tournaments (
    id text,
    tournament_name text,
    year text,
    host_country text,
    winner text
);


--
-- Data for Name: tournaments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tournaments (id, tournament_name, year, host_country, winner) FROM stdin;
WC-1930	1930 FIFA World Cup	1930	Uruguay	Uruguay
WC-1934	1934 FIFA World Cup	1934	Italy	Italy
WC-1938	1938 FIFA World Cup	1938	France	Italy
WC-1950	1950 FIFA World Cup	1950	Brazil	Uruguay
WC-1954	1954 FIFA World Cup	1954	Switzerland	West Germany
WC-1958	1958 FIFA World Cup	1958	Sweden	Brazil
WC-1962	1962 FIFA World Cup	1962	Chile	Brazil
WC-1966	1966 FIFA World Cup	1966	England	England
WC-1970	1970 FIFA World Cup	1970	Mexico	Brazil
WC-1974	1974 FIFA World Cup	1974	West Germany	West Germany
WC-1978	1978 FIFA World Cup	1978	Argentina	Argentina
WC-1982	1982 FIFA World Cup	1982	Spain	Italy
WC-1986	1986 FIFA World Cup	1986	Mexico	Argentina
WC-1990	1990 FIFA World Cup	1990	Italy	West Germany
WC-1994	1994 FIFA World Cup	1994	United States	Brazil
WC-1998	1998 FIFA World Cup	1998	France	France
WC-2002	2002 FIFA World Cup	2002	Korea, Japan	Brazil
WC-2006	2006 FIFA World Cup	2006	Germany	Italy
WC-2010	2010 FIFA World Cup	2010	South Africa	Spain
WC-2014	2014 FIFA World Cup	2014	Brazil	Germany
WC-2018	2018 FIFA World Cup	2018	Russia	France
\.


--
-- PostgreSQL database dump complete
--

