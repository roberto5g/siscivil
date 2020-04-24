--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.16
-- Dumped by pg_dump version 12rc1

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

--
-- Name: parametro_conselhos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parametro_conselhos (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    sigla character varying(10)
);


ALTER TABLE public.parametro_conselhos OWNER TO postgres;

--
-- Name: parametro_conselhos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parametro_conselhos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parametro_conselhos_id_seq OWNER TO postgres;

--
-- Name: parametro_conselhos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parametro_conselhos_id_seq OWNED BY public.parametro_conselhos.id;


--
-- Name: parametro_conselhos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametro_conselhos ALTER COLUMN id SET DEFAULT nextval('public.parametro_conselhos_id_seq'::regclass);


--
-- Data for Name: parametro_conselhos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.parametro_conselhos VALUES (3, 'Conselho Regional de Engenharia e Agronomia', '2019-12-07 20:06:15', '2019-12-07 20:06:15', 'CREA');
INSERT INTO public.parametro_conselhos VALUES (1, 'Conselho Regional de Administração', '2019-12-07 20:05:49', '2019-12-07 20:05:49', 'CRA');
INSERT INTO public.parametro_conselhos VALUES (2, 'Conselho Regional de Contabilidade', '2019-12-07 20:06:03', '2019-12-07 20:06:03', 'CRC');


--
-- Name: parametro_conselhos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parametro_conselhos_id_seq', 1, false);


--
-- Name: parametro_conselhos parametro_conselhos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametro_conselhos
    ADD CONSTRAINT parametro_conselhos_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

