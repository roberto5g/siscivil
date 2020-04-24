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
-- Name: tipo_diploma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_diploma (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.tipo_diploma OWNER TO postgres;

--
-- Name: nivel_formacoes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nivel_formacoes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nivel_formacoes_id_seq OWNER TO postgres;

--
-- Name: nivel_formacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nivel_formacoes_id_seq OWNED BY public.tipo_diploma.id;


--
-- Name: tipo_diploma id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_diploma ALTER COLUMN id SET DEFAULT nextval('public.nivel_formacoes_id_seq'::regclass);


--
-- Data for Name: tipo_diploma; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipo_diploma VALUES (1, 'Ensino Fundamental', '2020-01-14 11:44:09', '2020-01-14 11:44:09');
INSERT INTO public.tipo_diploma VALUES (7, 'Pós-Graduação Strictu Senso - Mestrado', '2020-01-20 14:28:56', '2020-01-20 14:28:56');
INSERT INTO public.tipo_diploma VALUES (8, 'Pós-Graduação Strictu Senso - Doutorado', '2020-01-20 14:30:07', '2020-01-20 14:30:07');
INSERT INTO public.tipo_diploma VALUES (2, 'Ensino Médio', '2020-01-14 11:44:09', '2020-01-14 11:44:09');
INSERT INTO public.tipo_diploma VALUES (3, 'Ensino Técnico', '2020-01-14 11:44:09', '2020-01-14 11:44:09');
INSERT INTO public.tipo_diploma VALUES (4, 'Graduação - Tecnologo', '2020-01-20 14:33:57', '2020-01-20 14:33:57');
INSERT INTO public.tipo_diploma VALUES (5, 'Graduação - Licenciatura/Bacharelado', '2020-01-20 14:25:30', '2020-01-20 14:25:34');
INSERT INTO public.tipo_diploma VALUES (6, 'Pós-Graduação Lato Sensu - Especialização/MBA', '2020-01-20 14:28:09', '2020-01-20 14:28:09');


--
-- Name: nivel_formacoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nivel_formacoes_id_seq', 1, false);


--
-- Name: tipo_diploma nivel_formacoes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_diploma
    ADD CONSTRAINT nivel_formacoes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

