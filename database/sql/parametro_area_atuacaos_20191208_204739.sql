--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-0ubuntu0.19.04.1)
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
-- Name: parametro_area_atuacaos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parametro_area_atuacaos (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    exige_conselho character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    precisa_cnh character varying(255) NOT NULL,
    grau_formacao_id integer NOT NULL,
    conselho_id integer
);


ALTER TABLE public.parametro_area_atuacaos OWNER TO postgres;

--
-- Name: parametro_area_atuacaos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parametro_area_atuacaos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parametro_area_atuacaos_id_seq OWNER TO postgres;

--
-- Name: parametro_area_atuacaos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parametro_area_atuacaos_id_seq OWNED BY public.parametro_area_atuacaos.id;


--
-- Name: parametro_conselhos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parametro_conselhos (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.parametro_conselhos OWNER TO postgres;

--
-- Name: parametro_conselhos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parametro_conselhos_id_seq
    AS integer
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
-- Name: parametro_grau_formacao_academicas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parametro_grau_formacao_academicas (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    exibe_area_atuacao character varying(255) NOT NULL,
    exibe_ramo_area_atuacao character varying(255) NOT NULL,
    permite_apenas_um character varying(255) NOT NULL,
    grau_formacao character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.parametro_grau_formacao_academicas OWNER TO postgres;

--
-- Name: parametro_grau_formacao_academicas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parametro_grau_formacao_academicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parametro_grau_formacao_academicas_id_seq OWNER TO postgres;

--
-- Name: parametro_grau_formacao_academicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parametro_grau_formacao_academicas_id_seq OWNED BY public.parametro_grau_formacao_academicas.id;


--
-- Name: parametro_area_atuacaos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametro_area_atuacaos ALTER COLUMN id SET DEFAULT nextval('public.parametro_area_atuacaos_id_seq'::regclass);


--
-- Name: parametro_conselhos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametro_conselhos ALTER COLUMN id SET DEFAULT nextval('public.parametro_conselhos_id_seq'::regclass);


--
-- Name: parametro_grau_formacao_academicas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametro_grau_formacao_academicas ALTER COLUMN id SET DEFAULT nextval('public.parametro_grau_formacao_academicas_id_seq'::regclass);


--
-- Data for Name: parametro_area_atuacaos; Type: TABLE DATA; Schema: public; Owner: postgres
--
INSERT INTO public.parametro_area_atuacaos VALUES (1, 'Administração', 'Sim', '2019-12-07 12:20:06', '2019-12-07 12:20:06', 'Não', 5, 1);
INSERT INTO public.parametro_area_atuacaos VALUES (2, 'Agronomia (ou Engenharia Agronômica)', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (3, 'Antropologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (4, 'Arqueologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (5, 'Arquitetura', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (6, 'Arquivística', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (7, 'Artes Cênicas', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (8, 'Artes Visuais', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (9, 'Astronomia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (10, 'Biblioteconomia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (11, 'Bioengenharia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (12, 'Biofísica', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (13, 'Biologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (14, 'Biologia Marinha', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (15, 'Biomedicina', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (16, 'Botânica', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (17, 'Ciência e Tecnologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (18, 'Ciência da Computação', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (19, 'Ciência Política (ou Ciências do Estado)', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (20, 'Ciências Agrárias', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (21, 'Ciências Ambientais', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (22, 'Ciências Atuariais', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (23, 'Ciências Biológicas', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (24, 'Ciências Biomoleculares', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (26, 'Ciências da Saúde', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (27, 'Ciências do Meio Aquático', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (28, 'Ciências Humanas (licenciatura)', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (29, 'Ciências Matemáticas da Terra', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (30, 'Ciências Naturais (licenciatura)', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (31, 'Ciências Náuticas', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (32, 'Ciências Sociais', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (33, 'Cinema', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (34, 'Comunicação social', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (35, 'Dança', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (36, 'Defesa e Gestão Estratégica Internacional', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (37, 'Desenho Industrial', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (38, 'Design de Interiores', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (39, 'Design de Moda', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (40, 'Direito', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (41, 'Ecologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (43, 'Economia Doméstica', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (44, 'Editoração', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (45, 'Educação Artística (licenciatura)', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (46, 'Educação do Campo (licenciatura)', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (47, 'Educação física', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (48, 'Enfermagem', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (49, 'Engenharia Aeroespacial', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (50, 'Engenharia Aeronáutica', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (51, 'Engenharia Agrícola', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (52, 'Engenharia Ambiental', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (53, 'Engenharia Biomédica', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (54, 'Engenharia Cartográfica (ou Engenharia Geográfica)', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (55, 'Engenharia Civil', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (56, 'Engenharia de Alimentos', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (57, 'Engenharia de Computação', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (58, 'Engenharia de Controle e Automação', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (59, 'Engenharia de Manufatura', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (60, 'Engenharia de Materiais', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (61, 'Engenharia de Minas', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (62, 'Engenharia de Pesca', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (63, 'Engenharia de Petróleo', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (64, 'Engenharia de Produção', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (65, 'Engenharia de Sistemas Eletrônicos', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (66, 'Engenharia de Software', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (67, 'Engenharia de Tecidos', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (68, 'Engenharia de Telecomunicações', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (69, 'Engenharia Elétrica (ou Engenharia de Energia)', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (70, 'Engenharia Física', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (71, 'Engenharia Florestal', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (72, 'Engenharia Geológica', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (73, 'Engenharia Industrial Madeireira', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (74, 'Engenharia Mecânica', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (75, 'Engenharia Mecatrônica', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (76, 'Engenharia Metalúrgica', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (77, 'Engenharia Militar', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (78, 'Engenharia Naval e Oceânica', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (79, 'Engenharia Nuclear', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (80, 'Engenharia Química', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (81, 'Engenharia Sanitária', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (82, 'Engenharia Têxtil', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 3);
INSERT INTO public.parametro_area_atuacaos VALUES (83, 'Escultura', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (84, 'Estatística', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (85, 'Farmácia (ou Bioquímica)', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (86, 'Filosofia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (42, 'Economia', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (25, 'Ciências Contábeis', 'Sim', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, 2);
INSERT INTO public.parametro_area_atuacaos VALUES (87, 'Física', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (88, 'Física Computacional', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (89, 'Física Médica', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (90, 'Fisioterapia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (91, 'Fonoaudiologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (92, 'Gastronomia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (93, 'Geofísica', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (94, 'Geografia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (95, 'Geologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (96, 'Geoprocessamento e Sensoriamento Remoto', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (97, 'Gerontologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (98, 'Gestão Ambiental', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (99, 'Gestão Pública', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (100, 'Gravurismo', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (101, 'História', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (102, 'História da Arte', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (103, 'Hotelaria', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (104, 'Informática', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (105, 'Informática Biomédica', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (106, 'Jornalismo', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (107, 'Letras', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (108, 'Linguística', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (109, 'Matemática', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (110, 'Matemática Aplicada', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (111, 'Matemática Computacional', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (112, 'Medicina', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (113, 'Medicina Veterinária', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (114, 'Meteorologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (115, 'Microbiologia e Imunologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (116, 'Museologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (117, 'Música', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (118, 'Nanotecnologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (119, 'Naturologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (120, 'Neurociência', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (121, 'Nutrição', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (122, 'Oceanografia (arcaicamente referido como Ciência dos Mares)', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (123, 'Odontologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (124, 'Ordenamento do Território', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (125, 'Paisagismo', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (126, 'Pedagogia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (127, 'Pintura', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (128, 'Produção Audiovisual (Rádio e TV ou Radialismo)', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (129, 'Produção Cultural', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (130, 'Psicologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (131, 'Publicidade e Propaganda', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (132, 'Química', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (133, 'Química Ambiental', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (134, 'Química Industrial', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (135, 'Quiropraxia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (136, 'Relações Internacionais', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (137, 'Relações Públicas', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (138, 'Saúde Coletiva', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (139, 'Segurança Pública', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (140, 'Serviço Social', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (141, 'Sistemas de Informação', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (142, 'Sociologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (143, 'Teatro', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (144, 'Teologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (145, 'Terapia ocupacional', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (146, 'Transporte Terrestre', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (147, 'Turismologia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (148, 'Urbanismo', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (149, 'Zootecnia', 'Não', '2019-12-07 12:20:48', '2019-12-07 12:20:48', 'Não', 5, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (150, 'Automação Industrial', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (151, 'Biocombustíveis', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (152, 'Biotecnologia', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (153, 'Cafeicultura', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (154, 'Ciência dos Alimentos', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (155, 'Ciência dos Materiais', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (156, 'Ciências Aeronáuticas', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (157, 'Comércio Exterior', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (158, 'Construção de Edifícios', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (159, 'Construção de Estradas', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (160, 'Construção Naval', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (161, 'Cooperativismo', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (162, 'Cosmetologia', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (163, 'Design de Jogos Digitais', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (164, 'Design de Produto', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (165, 'Design Gráfico', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (166, 'Drenagem e Irrigação', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (167, 'Energias Renováveis', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (168, 'Enologia', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (169, 'Esporte e Lazer', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (170, 'Eventos', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (171, 'Fotografia', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (172, 'Fruticultura', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (173, 'Gestão Comercial', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (174, 'Gestão da Qualidade', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (175, 'Gestão da Tecnologia da Informação', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (176, 'Gestão de Petróleo e Gás', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (177, 'Gestão de Recursos Hídricos', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (178, 'Gestão de Segurança Privada', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (179, 'Gestão do Agronegócio', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (180, 'Gestão em Serviços Jurídicos e Notariais', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (181, 'Gestão Financeira', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (182, 'Gestão Hospitalar', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (183, 'Gestão Portuária', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (184, 'Horticultura', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (185, 'Logística', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (186, 'Manutenção Industrial', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (187, 'Mecatrônica e Mecânica de Precisão', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (188, 'Meliponicultura', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (189, 'Mercadologia', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (190, 'Mineração', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (191, 'Negócios Imobiliários', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (192, 'Oftálmica', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (193, 'Processamento de Dados', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (194, 'Processos Escolares', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (195, 'Processos Metalúrgicos', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (196, 'Produção de Aguardente', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (197, 'Produção de Laticínios', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (198, 'Produção de Materiais Plásticos', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (199, 'Produção Fonográfica', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (200, 'Produção Sucroalcooleira', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (201, 'Produção Têxtil', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (202, 'Projetos de Estruturas Aeronáuticas', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (203, 'Radiologia', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (204, 'Recursos Humanos', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (205, 'Redes de Computadores', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (206, 'Redes de Telecomunicações', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (207, 'Saneamento Ambiental', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (208, 'Secretariado', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (209, 'Segurança da Informação', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (210, 'Segurança no Trabalho', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (211, 'Silvicultura', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (212, 'Sistemas Biomédicos', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (213, 'Sistemas de Navegação Fluvial', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (214, 'Sistemas Elétricos', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (215, 'Sistemas Embarcados', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (216, 'Sistemas para Internet', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (217, 'Telemática', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (218, 'Transporte Aéreo', 'Não', '2019-12-07 12:34:43', '2019-12-07 12:34:43', 'Não', 4, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (219, 'Técnico em Agente Comunitário de Saúde', 'Não', '2019-12-07 14:10:47', '2019-12-07 14:10:47', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (220, 'Técnico em análises Clínicas* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (221, 'Técnico em Citopatologia ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (222, 'Técnico em Controle Ambiental', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (223, 'Técnico em Cuidados de Idosos', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (224, 'Técnico em Enfermagem*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (225, 'Técnico em Equipamentos Biomédicos', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (226, 'Técnico em Estética', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (227, 'Técnico em Farmácia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (228, 'Técnico em Gerência de Saúde', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (229, 'Técnico em Hemoterapia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (230, 'Técnico em Imagem Pessoal', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (231, 'Técnico em Imobilizações Ortopédicas', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (232, 'Técnico em Massoterapia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (233, 'Técnico em Meio Ambiente ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (234, 'Técnico em Meteorologia*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (235, 'Técnico em Necropsia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (236, 'Técnico em Nutrição e Dietética', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (237, 'Técnico em Óptica', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (238, 'Técnico em Órteses e Próteses', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (239, 'Técnico em Podologia ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (240, 'Técnico em Prótese Dentária ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (241, 'Técnico em Radiologia ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (242, 'Técnico em Reabilitação de Dependentes Químicos', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (243, 'Técnico em Reciclagem', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (244, 'Técnico em Registros e Informações em Saúde', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (245, 'Técnico em Saúde Bucal', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (246, 'Técnico em Vigilância em Saúde', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (247, 'Técnico em Automação Industrial', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (248, 'Técnico em Eletroeletrônica ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (249, 'Técnico em Eletromecânica', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (250, 'Técnico em Eletrônica*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (251, 'Técnico em Eletrotécnica* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (252, 'Técnico em Manutenção Automotiva* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (253, 'Técnico em Manutenção de Aeronaves em Aviônicos*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (254, 'Técnico em Manutenção de Aeronaves em Célula*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (255, 'Técnico em Manutenção de Aeronaves em Grupo Motopropulsor*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (256, 'Técnico em Manutenção de Máquinas Industriais', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (257, 'Técnico em Manutenção de Máquinas Navais*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (258, 'Técnico em Manutenção de Máquinas Pesadas', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (259, 'Técnico em Manutenção de Sistemas Metroferroviários', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (260, 'Técnico em Mecânica', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (261, 'Técnico em Mecânica de Precisão', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (262, 'Técnico em Mecatrônica', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (263, 'Técnico em Metalurgia*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (264, 'Técnico em Metrologia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (265, 'Técnico em Processamento da Madeira', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (266, 'Técnico em Refrigeração e Climatização', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (267, 'Técnico em Sistemas a Gás', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (268, 'Técnico em Sistemas de Energia Renovável', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (269, 'Técnico em Soldagem', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (270, 'Técnico em Alimentação Escolar', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (271, 'Técnico em Biblioteconomia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (272, 'Técnico em Infraestrutura Escolar', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (273, 'Técnico em Laboratório de Ciências da Natureza', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (274, 'Técnico em Ludoteca ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (275, 'Técnico em Multimeios Didáticos ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (276, 'Técnico em Orientação Comunitária', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (277, 'Técnico em Produção de Materiais Didáticos Bilíngues em Libras/língua Portuguesa', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (278, 'Técnico em Secretaria Escolar ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (279, 'Técnico em Tradução e Interpretação de Libras', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (280, 'Técnico em Treinamento e Instrução de Cães-guias', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (281, 'Técnico em Administração* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (282, 'Técnico em Comércio ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (283, 'Técnico em Comércio Exterior', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (284, 'Técnico em Condomínio', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (285, 'Técnico em Contabilidade', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (286, 'Técnico em Cooperativismo', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (287, 'Técnico em Finanças ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (288, 'Técnico em Logística* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (289, 'Técnico em Marketing', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (290, 'Técnico em Qualidade ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (291, 'Técnico em Recursos Humanos ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (292, 'Técnico em Secretariado ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (293, 'Técnico em Seguros', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (294, 'Técnico em Serviços Jurídicos', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (295, 'Técnico em Serviços Públicos', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (296, 'Técnico em Transações Imobiliárias', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (297, 'Técnico em Vendas ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (298, 'Técnico em Computação Gráfica', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (299, 'Técnico em Desenvolvimento de Sistemas', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (300, 'Técnico em Informática', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (301, 'Técnico em Informática Para Internet', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (302, 'Técnico em Manutenção e Suporte em Informática*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (303, 'Técnico em Programação de Jogos Digitais', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (304, 'Técnico em Redes de Computadores* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (305, 'Técnico em Sistemas de Comutação', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (306, 'Técnico em Sistemas de Transmissão* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (307, 'Técnico em Telecomunicações* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (308, 'Técnico Aeroportuário*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (309, 'Técnico em Agrimensura* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (310, 'Técnico em Carpintaria* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (311, 'Técnico em Desenho de Construção Civil', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (312, 'Técnico em Edificações*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (313, 'Técnico em Estradas ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (314, 'Técnico em Geodésia e Cartografia*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (315, 'Técnico em Geoprocessamento', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (316, 'Técnico em Hidrologia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (317, 'Técnico em Portos ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (318, 'Técnico em Saneamento', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (319, 'Técnico em Trânsito ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (320, 'Técnico em Transporte Aquaviário', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (321, 'Técnico em Transporte de Cargas', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (322, 'Técnico em Transporte Dutoviário ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (323, 'Técnico em Transporte Metroferroviário', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (324, 'Técnico em Transporte Rodoviário', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (325, 'Técnico em Agroindústria', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (326, 'Técnico em Alimentos', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (327, 'Técnico em Apicultura', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (328, 'Técnico em Cervejaria', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (329, 'Técnico em Confeitaria ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (330, 'Técnico em Panificação', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (331, 'Técnico em Processamento de Pescado', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (332, 'Técnico em Viticultura e Enologia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (333, 'Técnico em Artes Circenses', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (334, 'Técnico em Artes Visuais ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (335, 'Técnico em Artesanato', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (336, 'Técnico em Canto', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (337, 'Técnico em Cenografia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (338, 'Técnico em Composição e Arranjo ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (339, 'Técnico em Comunicação Visual', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (340, 'Técnico em Conservação e Restauro ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (341, 'Técnico em Dança', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (342, 'Técnico em Design de Calçados ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (343, 'Técnico em Design de Embalagens', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (344, 'Técnico em Design de Interiores', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (345, 'Técnico em Design de Joias', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (346, 'Técnico em Design de Móveis', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (347, 'Técnico em Documentação Musical', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (348, 'Técnico em Fabricação de Instrumentos Musicais', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (349, 'Técnico em Figurino Cênico', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (350, 'Técnico em Instrumento Musical* ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (351, 'Técnico em Modelagem do Vestuário', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (352, 'Técnico em Multimídia ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (353, 'Técnico em Museologia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (354, 'Técnico em Paisagismo', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (355, 'Técnico em Processos Fonográficos ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (356, 'Técnico em Processos Fotográficos', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (357, 'Técnico em Produção de Áudio e Vídeo', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (358, 'Técnico em Produção de Moda', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (359, 'Técnico em Publicidade', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (360, 'Técnico em Rádio e Televisão', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (361, 'Técnico em Regência', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (362, 'Técnico em Teatro', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (363, 'Técnico em açúcar e Álcool', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (364, 'Técnico em análises Químicas', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (365, 'Técnico em Biocombustíveis', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (366, 'Técnico em Biotecnologia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (367, 'Técnico em Calçados ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (368, 'Técnico em Celulose e Papel', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (369, 'Técnico em Cerâmica', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (370, 'Técnico em Construção Naval', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (371, 'Técnico em Curtimento', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (372, 'Técnico em Fabricação Mecânica*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (373, 'Técnico em Impressão Offset', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (374, 'Técnico em Impressão Rotográfica e Flexográfica', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (375, 'Técnico em Joalheria', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (376, 'Técnico em Móveis', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (377, 'Técnico em Petróleo e Gás ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (378, 'Técnico em Petroquímica', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (379, 'Técnico em Plásticos', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (380, 'Técnico em Pré-impressão Gráfica', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (381, 'Técnico em Processos Gráficos ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (382, 'Técnico em Química', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (383, 'Técnico em Têxtil', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (384, 'Técnico em Vestuário', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (385, 'Técnico em Agricultura', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (386, 'Técnico em Agroecologia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (387, 'Técnico em Agronegócio', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (388, 'Técnico em Agropecuária', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (389, 'Técnico em Aquicultura', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (390, 'Técnico em Cafeicultura', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (391, 'Técnico em Equipamentos Pesqueiros', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (392, 'Técnico em Florestas', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (393, 'Técnico em Fruticultura', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (394, 'Técnico em Geologia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (395, 'Técnico em Grãos', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (396, 'Técnico em Mineração ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (397, 'Técnico em Pesca', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (398, 'Técnico em Pós-colheita ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (399, 'Técnico em Recursos Minerais', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (400, 'Técnico em Recursos Pesqueiros ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (401, 'Técnico em Zootecnia', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (402, 'Técnico em Defesa Civil', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (403, 'Técnico em Segurança do Trabalho', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (404, 'Técnico em Agenciamento de Viagem', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (405, 'Técnico em Cozinha*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (406, 'Técnico em Eventos*', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (407, 'Técnico em Guia de Turismo', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (408, 'Técnico em Hospedagem ', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (409, 'Técnico em Lazer', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);
INSERT INTO public.parametro_area_atuacaos VALUES (410, 'Técnico em Restaurante e Bar', 'Não', '2019-12-07 14:11:05', '2019-12-07 14:11:05', 'Não', 3, NULL);



--
-- Data for Name: parametro_conselhos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.parametro_conselhos VALUES (1, 'CRA', '2019-12-07 20:05:49', '2019-12-07 20:05:49');
INSERT INTO public.parametro_conselhos VALUES (2, 'CRC', '2019-12-07 20:06:03', '2019-12-07 20:06:03');
INSERT INTO public.parametro_conselhos VALUES (3, 'CREA', '2019-12-07 20:06:15', '2019-12-07 20:06:15');


--
-- Data for Name: parametro_grau_formacao_academicas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.parametro_grau_formacao_academicas VALUES (1, 'Ensino Fundamental', 'Não', 'Não', 'Não', 'Formação Básica', '2019-12-06 21:58:25', '2019-12-06 21:58:25');
INSERT INTO public.parametro_grau_formacao_academicas VALUES (2, 'Ensino Médio', 'Não', 'Não', 'Não', 'Formação Básica', '2019-12-06 21:58:52', '2019-12-06 21:58:52');
INSERT INTO public.parametro_grau_formacao_academicas VALUES (3, 'Ensino Médio / Técnico', 'Sim', 'Sim', 'Não', 'Formação Técnica', '2019-12-06 23:55:33', '2019-12-06 23:55:33');
INSERT INTO public.parametro_grau_formacao_academicas VALUES (4, 'Ensino Superior - Tecnologo', 'Sim', 'Sim', 'Sim', 'Formação Superior', '2019-12-06 23:56:53', '2019-12-06 23:56:53');
INSERT INTO public.parametro_grau_formacao_academicas VALUES (5, 'Ensino Superior - Licenciatura, Bacharelado', 'Sim', 'Sim', 'Sim', 'Formação Superior', '2019-12-06 23:57:12', '2019-12-06 23:57:12');


--
-- Name: parametro_area_atuacaos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parametro_area_atuacaos_id_seq', 5, true);


--
-- Name: parametro_conselhos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parametro_conselhos_id_seq', 1, false);


--
-- Name: parametro_grau_formacao_academicas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parametro_grau_formacao_academicas_id_seq', 7, true);


--
-- Name: parametro_area_atuacaos parametro_area_atuacaos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametro_area_atuacaos
    ADD CONSTRAINT parametro_area_atuacaos_pkey PRIMARY KEY (id);


--
-- Name: parametro_conselhos parametro_conselhos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametro_conselhos
    ADD CONSTRAINT parametro_conselhos_pkey PRIMARY KEY (id);


--
-- Name: parametro_grau_formacao_academicas parametro_grau_formacao_academicas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametro_grau_formacao_academicas
    ADD CONSTRAINT parametro_grau_formacao_academicas_pkey PRIMARY KEY (id);


--
-- Name: parametro_area_atuacaos parametro_area_atuacaos_conselho_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametro_area_atuacaos
    ADD CONSTRAINT parametro_area_atuacaos_conselho_id_foreign FOREIGN KEY (conselho_id) REFERENCES public.parametro_conselhos(id) ON DELETE CASCADE;


--
-- Name: parametro_area_atuacaos parametro_area_atuacaos_grau_formacao_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametro_area_atuacaos
    ADD CONSTRAINT parametro_area_atuacaos_grau_formacao_id_foreign FOREIGN KEY (grau_formacao_id) REFERENCES public.parametro_grau_formacao_academicas(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

