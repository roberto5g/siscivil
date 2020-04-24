--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7 (Ubuntu 11.7-2.pgdg18.04+1)
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
-- Name: cidades; Type: TABLE; Schema: public; Owner: homestead
--

CREATE TABLE public.cidades (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    estado_id integer NOT NULL
);


ALTER TABLE public.cidades OWNER TO homestead;

--
-- Name: cidades_id_seq; Type: SEQUENCE; Schema: public; Owner: homestead
--

CREATE SEQUENCE public.cidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cidades_id_seq OWNER TO homestead;

--
-- Name: cidades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: homestead
--

ALTER SEQUENCE public.cidades_id_seq OWNED BY public.cidades.id;


--
-- Name: estados; Type: TABLE; Schema: public; Owner: homestead
--

CREATE TABLE public.estados (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    uf character varying(2) NOT NULL
);


ALTER TABLE public.estados OWNER TO homestead;

--
-- Name: estados_id_seq; Type: SEQUENCE; Schema: public; Owner: homestead
--

CREATE SEQUENCE public.estados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estados_id_seq OWNER TO homestead;

--
-- Name: estados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: homestead
--

ALTER SEQUENCE public.estados_id_seq OWNED BY public.estados.id;


--
-- Name: formacao; Type: TABLE; Schema: public; Owner: homestead
--

CREATE TABLE public.formacao (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    nivel character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.formacao OWNER TO homestead;

--
-- Name: formacao_id_seq; Type: SEQUENCE; Schema: public; Owner: homestead
--

CREATE SEQUENCE public.formacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.formacao_id_seq OWNER TO homestead;

--
-- Name: formacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: homestead
--

ALTER SEQUENCE public.formacao_id_seq OWNED BY public.formacao.id;


--
-- Name: informacoes; Type: TABLE; Schema: public; Owner: homestead
--

CREATE TABLE public.informacoes (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    telefone character varying(255) NOT NULL,
    endereco character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    ano_licenciamento character varying(255) NOT NULL,
    ultimo_posto_graduacao character varying(255) NOT NULL,
    guarnicao character varying(255) NOT NULL,
    feito_contato character varying(255) NOT NULL,
    tipo_trabalho character varying(255),
    esfera character varying(255),
    cidade_id integer,
    om_id integer,
    formacao_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.informacoes OWNER TO homestead;

--
-- Name: informacoes_id_seq; Type: SEQUENCE; Schema: public; Owner: homestead
--

CREATE SEQUENCE public.informacoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.informacoes_id_seq OWNER TO homestead;

--
-- Name: informacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: homestead
--

ALTER SEQUENCE public.informacoes_id_seq OWNED BY public.informacoes.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: homestead
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO homestead;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: homestead
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO homestead;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: homestead
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: homestead
--

CREATE TABLE public.ofmobilizador (
    id integer NOT NULL,
    posto_grad character varying(255) NOT NULL,
    nome_guerra character varying(255) NOT NULL,
    telefone_ctt character varying(255) NOT NULL,
    aqs character varying(255) NOT NULL,
    tipo character varying(255) NOT NULL,
    prm_id integer,
    user_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.ofmobilizador OWNER TO homestead;

--
-- Name: ofmobilizador_id_seq; Type: SEQUENCE; Schema: public; Owner: homestead
--

CREATE SEQUENCE public.ofmobilizador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ofmobilizador_id_seq OWNER TO homestead;

--
-- Name: ofmobilizador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: homestead
--

ALTER SEQUENCE public.ofmobilizador_id_seq OWNED BY public.ofmobilizador.id;


--
-- Name: oms; Type: TABLE; Schema: public; Owner: homestead
--

CREATE TABLE public.oms (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    sigla character varying(30) NOT NULL,
    prm_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.oms OWNER TO homestead;

--
-- Name: oms_id_seq; Type: SEQUENCE; Schema: public; Owner: homestead
--

CREATE SEQUENCE public.oms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oms_id_seq OWNER TO homestead;

--
-- Name: oms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: homestead
--

ALTER SEQUENCE public.oms_id_seq OWNED BY public.oms.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: homestead
--

CREATE TABLE public.password_resets (
    email character varying(191) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO homestead;

--
-- Name: prmguarnicao; Type: TABLE; Schema: public; Owner: homestead
--

CREATE TABLE public.prmguarnicao (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.prmguarnicao OWNER TO homestead;

--
-- Name: prmguarnicao_id_seq; Type: SEQUENCE; Schema: public; Owner: homestead
--

CREATE SEQUENCE public.prmguarnicao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prmguarnicao_id_seq OWNER TO homestead;

--
-- Name: prmguarnicao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: homestead
--

ALTER SEQUENCE public.prmguarnicao_id_seq OWNED BY public.prmguarnicao.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: homestead
--

CREATE TABLE public.users (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    email character varying(191) NOT NULL,
    password character varying(255) NOT NULL,
    cpf character varying(255) NOT NULL,
    identidade character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO homestead;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: homestead
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO homestead;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: homestead
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: cidades id; Type: DEFAULT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.cidades ALTER COLUMN id SET DEFAULT nextval('public.cidades_id_seq'::regclass);


--
-- Name: estados id; Type: DEFAULT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.estados ALTER COLUMN id SET DEFAULT nextval('public.estados_id_seq'::regclass);


--
-- Name: formacao id; Type: DEFAULT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.formacao ALTER COLUMN id SET DEFAULT nextval('public.formacao_id_seq'::regclass);


--
-- Name: informacoes id; Type: DEFAULT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.informacoes ALTER COLUMN id SET DEFAULT nextval('public.informacoes_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.ofmobilizador ALTER COLUMN id SET DEFAULT nextval('public.ofmobilizador_id_seq'::regclass);


--
-- Name: oms id; Type: DEFAULT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.oms ALTER COLUMN id SET DEFAULT nextval('public.oms_id_seq'::regclass);


--
-- Name: prmguarnicao id; Type: DEFAULT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.prmguarnicao ALTER COLUMN id SET DEFAULT nextval('public.prmguarnicao_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: cidades; Type: TABLE DATA; Schema: public; Owner: homestead
--




--
-- Data for Name: estados; Type: TABLE DATA; Schema: public; Owner: homestead
--

INSERT INTO public.estados VALUES (1, 'Acre', 'AC');
INSERT INTO public.estados VALUES (2, 'Alagoas', 'AL');
INSERT INTO public.estados VALUES (3, 'Amazonas', 'AM');
INSERT INTO public.estados VALUES (4, 'Amapá', 'AP');
INSERT INTO public.estados VALUES (5, 'Bahia', 'BA');
INSERT INTO public.estados VALUES (6, 'Ceará', 'CE');
INSERT INTO public.estados VALUES (7, 'Distrito Federal', 'DF');
INSERT INTO public.estados VALUES (8, 'Espírito Santo', 'ES');
INSERT INTO public.estados VALUES (9, 'Goiás', 'GO');
INSERT INTO public.estados VALUES (10, 'Maranhão', 'MA');
INSERT INTO public.estados VALUES (11, 'Minas Gerais', 'MG');
INSERT INTO public.estados VALUES (12, 'Mato Grosso do Sul', 'MS');
INSERT INTO public.estados VALUES (13, 'Mato Grosso', 'MT');
INSERT INTO public.estados VALUES (14, 'Pará', 'PA');
INSERT INTO public.estados VALUES (15, 'Paraíba', 'PB');
INSERT INTO public.estados VALUES (16, 'Pernambuco', 'PE');
INSERT INTO public.estados VALUES (17, 'Piauí', 'PI');
INSERT INTO public.estados VALUES (18, 'Paraná', 'PR');
INSERT INTO public.estados VALUES (19, 'Rio de Janeiro', 'RJ');
INSERT INTO public.estados VALUES (20, 'Rio Grande do Norte', 'RN');
INSERT INTO public.estados VALUES (21, 'Rondônia', 'RO');
INSERT INTO public.estados VALUES (22, 'Roraima', 'RR');
INSERT INTO public.estados VALUES (23, 'Rio Grande do Sul', 'RS');
INSERT INTO public.estados VALUES (24, 'Santa Catarina', 'SC');
INSERT INTO public.estados VALUES (25, 'Sergipe', 'SE');
INSERT INTO public.estados VALUES (26, 'São Paulo', 'SP');
INSERT INTO public.estados VALUES (27, 'Tocantins', 'TO');


--
-- Data for Name: formacao; Type: TABLE DATA; Schema: public; Owner: homestead
--

INSERT INTO public.formacao VALUES (1, 'Médico', 'Oficial', '2020-03-27 00:42:55', '2020-03-27 00:42:55');
INSERT INTO public.formacao VALUES (2, 'Veterinário', 'Oficial', '2020-03-27 00:43:10', '2020-03-27 00:43:10');
INSERT INTO public.formacao VALUES (3, 'Enfermagem', 'Oficial', '2020-03-27 00:43:28', '2020-03-27 00:43:28');
INSERT INTO public.formacao VALUES (4, 'Farmacêutico Outros', 'Oficial', '2020-03-29 03:20:42', '2020-03-29 03:20:42');
INSERT INTO public.formacao VALUES (5, 'Farmacêutico Bioquímico', 'Oficial', '2020-03-29 03:20:24', '2020-03-29 03:20:24');
INSERT INTO public.formacao VALUES (6, 'Dentista', 'Oficial', '2020-03-29 03:19:25', '2020-03-29 03:19:25');
INSERT INTO public.formacao VALUES (7, 'Técnico Em Enfermagem', 'Praça', '2020-03-27 00:44:10', '2020-03-27 00:44:10');
INSERT INTO public.formacao VALUES (8, 'Técnico Em Laboratório', 'Praça', '2020-03-27 00:44:23', '2020-03-27 00:44:23');
INSERT INTO public.formacao VALUES (9, 'Técnico Em Farmácia', 'Praça', '2020-03-29 03:21:24', '2020-03-29 03:21:24');
INSERT INTO public.formacao VALUES (10, 'QMS Geral Saúde', 'Praça', '2020-03-27 00:43:55', '2020-03-29 03:22:20');

--
-- Data for Name: informacoes; Type: TABLE DATA; Schema: public; Owner: homestead
--

INSERT INTO public.informacoes VALUES (5, 'Lizandra Albuquerque Salgado Filho', '(32) 98423-4827', 'rua salgado rua', 'salgado@gmail.com', '2018', '2º Ten', 'Não', 'Sim', 'Particular', NULL, 102, 5, 3, '2020-03-27 03:56:34', '2020-03-27 03:56:34');
INSERT INTO public.informacoes VALUES (6, 'Carlos dos Santos', '(38) 29492-8349', 'rua são pedro n/ 2992', 'carlos@gmail.com', '2017', '3º Sgt', 'Não', 'Sim', 'Público', 'Municipal', 223, 4, 5, '2020-03-27 04:02:39', '2020-03-27 04:02:39');
INSERT INTO public.informacoes VALUES (9, 'Sumarita dos Santos Araujoumari', '(27) 34872-2342', 'avenida do coqueiro', 'suma@gmail.com', '2018', '1° Ten', 'Sim', 'Sim', 'Público', 'Municipal', 256, 10, 1, '2020-03-28 16:44:40', '2020-03-28 16:52:14');
INSERT INTO public.informacoes VALUES (8, 'Bianca dos Santos Araujo Tutuita', '(27) 34872-8347', 'avenida do sol', 'bia@gmail.com', '2016', '1° Ten', 'Sim', 'Sim', 'Público', 'Estadual', 256, 1, 1, '2020-03-28 16:40:20', '2020-03-28 16:52:39');
INSERT INTO public.informacoes VALUES (11, 'Amanda Soares', '(82) 73487-2384', 'rua co ajskdhajhsdjahds ajshdjahsd', 'amanda@gmail.com', '2019', '1º Ten', 'Sim', 'Sim', 'Público', 'Estadual', 274, 53, 1, '2020-03-28 17:33:31', '2020-03-28 17:33:31');
INSERT INTO public.informacoes VALUES (13, 'Raquel Teste Santos', '(32) 42342-3423', 'awrwer werwew er', 'raquel@gmail.com', '2019', '3º Sgt', 'Sim', 'Sim', 'Particular', NULL, 4400, 45, 5, '2020-03-28 17:36:30', '2020-03-28 17:36:30');
INSERT INTO public.informacoes VALUES (14, 'Rodolfo Carlos Alberto', '(73) 72384-7827', 'rua ajsdjahdjsh adsa sdjh asd', 'rodolfo@gmail.com', '2015', '1º Ten', 'Sim', 'Sim', 'Particular', NULL, 204, 46, 1, '2020-03-29 01:42:46', '2020-03-29 01:42:46');
INSERT INTO public.informacoes VALUES (15, 'Ricardo Picanço Dinis', '(27) 34872-8347', 'rua ejhrtjeht 123123', 'ricardo@ajsdh.com', '2018', '3º Sgt', 'Não', 'Não', 'Particular', NULL, 4382, 45, 5, '2020-03-29 01:43:59', '2020-03-29 01:43:59');
INSERT INTO public.informacoes VALUES (16, 'Sergio Alves', '(23) 74823-8482', 'rua sergioi sda sd', 'sergio@gmail.com', '2017', '2º Ten', 'Não', 'Não', 'Público', 'Estadual', 279, 45, 1, '2020-03-29 01:44:46', '2020-03-29 01:44:46');
INSERT INTO public.informacoes VALUES (17, 'Italo Breçaz Asd', '(39) 82938-4923', 'rua teste teste', 'rbas@gmail.com', '2015', '1° Ten', 'Sim', 'Sim', 'Particular', NULL, 80, 1, 1, '2020-03-29 02:08:29', '2020-03-29 02:28:51');
INSERT INTO public.informacoes VALUES (7, 'Clara Andra Carl', '(18) 23781-2381', 'rua teste', 'carla@gmail.com', '2017', '1° Ten', 'Não', 'Não', 'Público', 'Federal', 84, 1, 1, '2020-03-27 23:01:12', '2020-03-29 18:44:51');
INSERT INTO public.informacoes VALUES (12, 'Ricardo Santos', '(92) 34892-8349', 'ahsd asjdh asdh jh asdj hjahs d', 'ricardo@gmail.com', '2015', '1° Ten', 'Não', 'Não', 'Particular', NULL, 105, 1, 2, '2020-03-28 17:34:25', '2020-03-29 18:46:16');
INSERT INTO public.informacoes VALUES (18, 'Teste Teste Teste', '(23) 74672-6347', 'yuaryuauyrs', 'teste@gmail.com', '2018', '1° Ten', 'Sim', 'Sim', 'Particular', NULL, 4413, 64, 1, '2020-03-29 18:33:47', '2020-03-29 19:21:37');
INSERT INTO public.informacoes VALUES (19, 'Camila Ferreira Sod Sandos', '(23) 42342-3423', 'rua teste teste', 'camila@gmail.com', '2015', '3º Sgt', 'Sim', 'Sim', 'Particular', NULL, 256, 7, 4, '2020-03-29 19:26:55', '2020-03-29 19:26:55');


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: homestead
--

INSERT INTO public.migrations VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO public.migrations VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO public.migrations VALUES (5, '2019_01_23_210001_create_cidades_table', 1);
INSERT INTO public.migrations VALUES (6, '2019_01_23_215002_create_prmguarnicao_table', 1);
INSERT INTO public.migrations VALUES (7, '2019_01_23_220000_create_oms_table', 1);
INSERT INTO public.migrations VALUES (8, '2019_01_25_175001_create_formacao_table', 1);
INSERT INTO public.migrations VALUES (9, '2019_01_25_185001_create_ofmobilizador_table', 1);
INSERT INTO public.migrations VALUES (12, '2019_01_23_210000_create_estados_table', 3);
INSERT INTO public.migrations VALUES (13, '2019_01_25_195001_create_informacoes_table', 4);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: homestead
--

INSERT INTO public.ofmobilizador VALUES (1, '2° Ten', 'Roberto', '(92)99156-0140', 'OTT', 'Administrador', 1, 1, '2020-03-27 00:38:09', '2020-03-27 00:42:31');
INSERT INTO public.ofmobilizador VALUES (5, '2º Ten', 'Edson', '(82) 73487-2348', 'Quadro Auxíliar de Oficiais - QAO', 'Mobilizador', 5, 6, '2020-03-28 17:31:05', '2020-03-28 17:31:05');
INSERT INTO public.ofmobilizador VALUES (6, '2º Ten', 'Teixeira', '(34) 23423-4234', 'Quadro Auxíliar de Oficiais - QAO', 'Mobilizador', 7, 7, '2020-03-28 17:32:08', '2020-03-28 17:32:08');


--
-- Data for Name: oms; Type: TABLE DATA; Schema: public; Owner: homestead
--

INSERT INTO public.oms VALUES (1, 'Comando Militar da Amazônia', 'CMDO CMA', 1, '2020-03-27 00:40:30', '2020-03-27 00:40:30');
INSERT INTO public.oms VALUES (4, '7° Batalhão de Infantaria de Selva', '7° BIS', 2, '2020-03-27 02:08:28', '2020-03-27 02:08:28');
INSERT INTO public.oms VALUES (5, '6° Batalhão de Engenharia E Construção', '6° BEC', 2, '2020-03-27 02:09:14', '2020-03-27 02:09:14');
INSERT INTO public.oms VALUES (6, '3ª Compania de Forças Especiais', '3ª CIA FESP', 1, '2020-03-27 22:45:04', '2020-03-27 22:45:04');
INSERT INTO public.oms VALUES (7, '4° Centro de Geoinformação', '4° C GEO', 1, '2020-03-27 22:46:16', '2020-03-27 22:46:16');
INSERT INTO public.oms VALUES (8, '4° Centro de Telemática de Área', '4° CTA', 1, '2020-03-27 22:46:46', '2020-03-27 22:46:46');
INSERT INTO public.oms VALUES (9, 'Compania de Comando CMA', 'CIA C CMA', 1, '2020-03-27 22:47:19', '2020-03-27 22:47:19');
INSERT INTO public.oms VALUES (10, 'Centro de Instrução de Guerra na Selva', 'CIGS', 1, '2020-03-27 22:47:51', '2020-03-27 22:47:51');
INSERT INTO public.oms VALUES (11, 'Colégio Militar de Manaus', 'CMM', 1, '2020-03-27 22:48:08', '2020-03-27 22:48:08');
INSERT INTO public.oms VALUES (12, 'Comissão Regional de Obras 12ª RM', 'CRO/12', 1, '2020-03-27 22:48:50', '2020-03-27 22:48:50');
INSERT INTO public.oms VALUES (13, 'Hospital Militar de Área de Manaus', 'HMAM', 1, '2020-03-27 22:49:21', '2020-03-27 22:49:21');
INSERT INTO public.oms VALUES (14, 'Compania de Comando 2° GPT E', 'CIA C 2° GPT  E', 1, '2020-03-27 22:49:59', '2020-03-27 22:49:59');
INSERT INTO public.oms VALUES (15, 'Centro de Embarcações do Comando Militar da Amazônia', 'CECMA', 1, '2020-03-27 22:50:34', '2020-03-27 22:50:34');
INSERT INTO public.oms VALUES (16, '12ª Inspetoria de Contabilidade e Finanças do Exército', '12ª ICFEX', 1, '2020-03-27 22:51:34', '2020-03-27 22:51:34');
INSERT INTO public.oms VALUES (17, 'Parque Regional de Manutenção 12ª RM', 'PQ R MNT/12', 1, '2020-03-27 22:52:24', '2020-03-27 22:52:24');
INSERT INTO public.oms VALUES (18, 'Comando da 12ª Região Militar', 'CMDO 12ª RM', 1, '2020-03-27 22:53:07', '2020-03-27 22:53:07');
INSERT INTO public.oms VALUES (19, '2° Grupamento de Engenharia', 'CMDO 2° GPT E', 1, '2020-03-27 22:53:53', '2020-03-27 22:53:53');
INSERT INTO public.oms VALUES (20, '4° Batalhão de Aviação do Exército', '4° B AV EX', 1, '2020-03-27 22:54:26', '2020-03-27 22:54:26');
INSERT INTO public.oms VALUES (21, '12° Batalhão de Suprimento', '12° BSUP', 1, '2020-03-27 22:54:58', '2020-03-27 22:54:58');
INSERT INTO public.oms VALUES (22, '4ª Companhia de Inteligência', '4ª CIA INTLG', 1, '2020-03-27 22:55:56', '2020-03-27 22:56:33');
INSERT INTO public.oms VALUES (23, '12º Grupo﻿ de Artilharia Antiaérea de Selva', '12º GAAAE', 1, '2020-03-27 22:57:15', '2020-03-27 22:57:15');
INSERT INTO public.oms VALUES (24, '1º Batalhão de Comunicações de Selva', '1º B COM SL', 1, '2020-03-27 22:57:46', '2020-03-27 22:57:46');
INSERT INTO public.oms VALUES (25, '7° Batalhão de Polícia do Exército', '7º BPE', 1, '2020-03-27 22:58:16', '2020-03-27 22:58:16');
INSERT INTO public.oms VALUES (26, '1ª Brigada de Infantaria de Selva', 'CMDO 1ª BDA INF SL', 2, '2020-03-28 00:21:55', '2020-03-28 00:21:55');
INSERT INTO public.oms VALUES (2, 'Compania de Comando 12ª RM', 'CIA C 12ª RM', 1, '2020-03-27 00:41:31', '2020-03-28 00:23:08');
INSERT INTO public.oms VALUES (27, 'Compania de Comando 1ª BDA INF SL', 'CIA C 1ª BDA INF SL', 2, '2020-03-28 00:25:15', '2020-03-28 00:25:15');
INSERT INTO public.oms VALUES (28, '12° Esquadrão de Cavalaria Mecanizado', '12° ESQ C MEC', 2, '2020-03-28 00:26:12', '2020-03-28 00:26:12');
INSERT INTO public.oms VALUES (29, '32° Pelotão de Polícia do Exército', '32° PEL PE', 2, '2020-03-28 00:27:16', '2020-03-28 00:27:16');
INSERT INTO public.oms VALUES (30, '1º Pelotão de Comunicações de Selva', '1° PEL COM SL', 2, '2020-03-28 00:27:44', '2020-03-28 00:27:44');
INSERT INTO public.oms VALUES (31, '7º Batalhão de Infantaria de Selva', '7° BIS', 2, '2020-03-28 00:28:28', '2020-03-28 00:28:28');
INSERT INTO public.oms VALUES (32, '10° Grupo de Artilharia de Campanha de Selva', '10° GAC SL', 2, '2020-03-28 00:29:05', '2020-03-28 00:29:05');
INSERT INTO public.oms VALUES (33, '6º Batalhão de Engenharia de Construção', '6° BEC', 2, '2020-03-28 00:29:25', '2020-03-28 00:29:25');
INSERT INTO public.oms VALUES (34, '1º Batalhão Logístico de Selva', '1ª B LOG SL', 2, '2020-03-28 00:30:09', '2020-03-28 00:30:09');
INSERT INTO public.oms VALUES (35, '17ª Brigada de Infantaria de Selva', 'CMDO 17ª BDA INF SL', 3, '2020-03-28 00:31:42', '2020-03-28 00:31:42');
INSERT INTO public.oms VALUES (36, '17ª Companhia de Infantaria de Selva', '17ª CIA INF SL', 3, '2020-03-28 00:32:30', '2020-03-28 00:32:30');
INSERT INTO public.oms VALUES (37, '17ª Base Logística', '17ª BA LOG', 3, '2020-03-28 00:33:05', '2020-03-28 00:33:05');
INSERT INTO public.oms VALUES (38, '17º Pelotão de Polícia do Exército', '17º PEL PE', 3, '2020-03-28 00:33:32', '2020-03-28 00:33:32');
INSERT INTO public.oms VALUES (39, '17º Pelotão de Comunicações de Selva', '17º PEL COM SL', 3, '2020-03-28 00:33:58', '2020-03-28 00:33:58');
INSERT INTO public.oms VALUES (40, '5º Batalhão de Engenharia de Construção', '5° BEC', 3, '2020-03-28 00:34:24', '2020-03-28 00:34:24');
INSERT INTO public.oms VALUES (41, 'Hospital de Guarnição Porto Velho', 'H GU PV', 3, '2020-03-28 00:34:46', '2020-03-28 00:34:46');
INSERT INTO public.oms VALUES (42, 'Companhia de Comando da 17ª Bda Inf Sl', 'CIA C 17ª BDA INF SL', 3, '2020-03-28 00:35:18', '2020-03-28 00:35:18');
INSERT INTO public.oms VALUES (43, '4º Batalhão de Infantaria de Selva', '4° BIS', 4, '2020-03-28 00:38:25', '2020-03-28 00:38:25');
INSERT INTO public.oms VALUES (44, '7º Batalhão de Engenharia e Construção', '7° BEC', 4, '2020-03-28 00:38:46', '2020-03-28 00:38:46');
INSERT INTO public.oms VALUES (45, '16ª Brigada de Infantaria de Selva', 'CMDO 16ª BDA INF SL', 5, '2020-03-28 00:39:50', '2020-03-28 00:39:50');
INSERT INTO public.oms VALUES (46, 'Companhia de Comando 16ª Bda Inf Sl', 'CIA C 16ª BDA INF SL', 5, '2020-03-28 00:40:58', '2020-03-28 00:40:58');
INSERT INTO public.oms VALUES (47, '17° Batalhão de Infantaria de Selva', '17° BIS', 5, '2020-03-28 00:41:47', '2020-03-28 00:41:47');
INSERT INTO public.oms VALUES (48, '16ª Base Logística', '16ª BA LOG', 5, '2020-03-28 00:42:26', '2020-03-28 00:42:26');
INSERT INTO public.oms VALUES (49, '34º Pelotão de Polícia do Exército', '34° PEL PE', 5, '2020-03-28 00:42:55', '2020-03-28 00:42:55');
INSERT INTO public.oms VALUES (50, '16° Pelotão de Comunicações de Selva', '16º PEL COM SL', 5, '2020-03-28 00:44:36', '2020-03-28 00:44:36');
INSERT INTO public.oms VALUES (51, '61º Batalhão de Infantaria de Selva', '61º BIS', 6, '2020-03-28 00:45:07', '2020-03-28 00:45:07');
INSERT INTO public.oms VALUES (52, '8º Batalhão de Infantaria de Selva', '8º BIS', 7, '2020-03-28 00:45:51', '2020-03-28 00:45:51');
INSERT INTO public.oms VALUES (53, 'Hospital de Guarnição de Tabatinga', 'H GU TAB', 7, '2020-03-28 00:47:24', '2020-03-28 00:47:24');
INSERT INTO public.oms VALUES (54, '2ª Brigada de Infantaria de Selva', 'CMDO 2ª BDA INF SL', 8, '2020-03-28 00:48:53', '2020-03-28 00:48:53');
INSERT INTO public.oms VALUES (55, '21ª Companhia de Engenharia de Construção', '21ª CIA E CNST', 8, '2020-03-28 00:49:35', '2020-03-28 00:49:35');
INSERT INTO public.oms VALUES (56, 'Hospital de Guarnição de São Gabriel da Cachoeira', 'H GU SGC', 8, '2020-03-28 00:49:58', '2020-03-28 00:49:58');
INSERT INTO public.oms VALUES (57, 'Compania de Comando 2ª Bda Inf Sl', 'CIA C 2ª BDA INF SL', 8, '2020-03-28 00:52:05', '2020-03-28 00:52:05');
INSERT INTO public.oms VALUES (58, '22° Pelotão de Polícia do Exército', '22° PEL  PE', 8, '2020-03-28 00:53:12', '2020-03-28 00:53:12');
INSERT INTO public.oms VALUES (59, '2º Pelotão de Comunicações de Selva', '2° PEL  COM SL', 8, '2020-03-28 00:54:09', '2020-03-28 00:54:09');
INSERT INTO public.oms VALUES (60, '5º Batalhão de Infantaria de Selva', '5° BIS', 8, '2020-03-28 00:54:34', '2020-03-28 00:54:34');
INSERT INTO public.oms VALUES (61, '2º Batalhão Logístico de Selva', '2º B LOG SL', 8, '2020-03-28 00:55:09', '2020-03-28 00:55:09');
INSERT INTO public.oms VALUES (62, '6º Batalhão de Infantaria de Selva', '6º BIS', 9, '2020-03-28 00:55:48', '2020-03-28 00:55:48');
INSERT INTO public.oms VALUES (63, '3º Batalhão de Infantaria de Selva', '3º BIS', 10, '2020-03-28 00:56:25', '2020-03-28 00:56:25');
INSERT INTO public.oms VALUES (64, '54° Batalhão de Infantaria de Selva', '54º BIS', 11, '2020-03-28 00:56:56', '2020-03-28 00:56:56');
INSERT INTO public.oms VALUES (3, '1° Batalhão de Infantaria de Selva', '1º BIS(AMV)', 1, '2020-03-27 00:41:56', '2020-03-28 20:44:17');


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: homestead
--



--
-- Data for Name: prmguarnicao; Type: TABLE DATA; Schema: public; Owner: homestead
--

INSERT INTO public.prmguarnicao VALUES (2, 'PRM 12-002 /  BOA VISTA-RR', '2020-03-27 00:39:52', '2020-03-27 00:39:52');
INSERT INTO public.prmguarnicao VALUES (3, 'PRM 12-003 / PORTO VELHO-RO', '2020-03-28 00:30:44', '2020-03-28 00:30:44');
INSERT INTO public.prmguarnicao VALUES (4, 'PRM 12-004 / RIO BRANCO-AC', '2020-03-28 00:35:55', '2020-03-28 00:35:55');
INSERT INTO public.prmguarnicao VALUES (5, 'PRM 12-005 / TEFÉ-AM', '2020-03-28 00:36:15', '2020-03-28 00:36:15');
INSERT INTO public.prmguarnicao VALUES (6, 'PRM 12-006  / CRUZEIRO DO SUL-AC', '2020-03-28 00:36:39', '2020-03-28 00:36:39');
INSERT INTO public.prmguarnicao VALUES (7, 'PRM 12-007 / TABATINGA', '2020-03-28 00:37:02', '2020-03-28 00:37:02');
INSERT INTO public.prmguarnicao VALUES (8, 'SGC - AM', '2020-03-28 00:37:15', '2020-03-28 00:37:15');
INSERT INTO public.prmguarnicao VALUES (9, 'GUAJARÁ-MIRIM-RO', '2020-03-28 00:37:27', '2020-03-28 00:37:27');
INSERT INTO public.prmguarnicao VALUES (10, 'BARCELOS', '2020-03-28 00:37:35', '2020-03-28 00:37:35');
INSERT INTO public.prmguarnicao VALUES (11, 'HUMAITÁ-AM', '2020-03-28 00:37:44', '2020-03-28 00:37:44');
INSERT INTO public.prmguarnicao VALUES (1, 'PRM 12-001  / MANAUS-AM', '2020-03-27 00:37:03', '2020-03-28 15:34:09');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: homestead
--

INSERT INTO public.users VALUES (6, 'Edson dos Santos', 'edson@gmail.com', '$2y$10$bWd4sXdwK6O9ilx/dac2feY3QCv1/mZmNLzyYWmzac7VVDRRFEKom', '70622742248', '123123434-3', 'sO1vDWU7SYHVQNOOFIgbKAx6vxHfVtt41WWW1xDGWHsvxHF4DsF5orenkBbd', '2020-03-28 17:31:05', '2020-03-28 20:07:05');
INSERT INTO public.users VALUES (7, 'Carlos nascimento Teixeira', 'carlos@gmail.com', '$2y$10$yIGi6qfjBRVfduTb6f6Zj.JeAzPl9hjGuniszsK5wSJA5FGz12wVq', '86185415402', '234234234-2', 'B7CNeNw6UVQHItr3u7MC58wiYwTR5LRyA9Ct2kVXNIOjKlC6gVpqc77dswRS', '2020-03-28 17:32:08', '2020-03-28 17:32:08');
INSERT INTO public.users VALUES (1, 'Admin Admin', 'admin@gmail.com', '$2y$10$ckAoSKHkZL7CEoH3i/JlseRZoNhy1wYzuU0j18nRxbfTlQFmz6vq.', '89479327287', '23121212121', 'BOdulQVylqdt6hh55v3IuA0BYoooFFrGo7xQTECb02VDUnztu2AYHzcshsnP', '2020-03-27 00:33:52', '2020-03-27 00:42:31');


--
-- Name: cidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: homestead
--

SELECT pg_catalog.setval('public.cidades_id_seq', 1, false);


--
-- Name: estados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: homestead
--

SELECT pg_catalog.setval('public.estados_id_seq', 1, false);


--
-- Name: formacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: homestead
--

SELECT pg_catalog.setval('public.formacao_id_seq', 10, true);


--
-- Name: informacoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: homestead
--

SELECT pg_catalog.setval('public.informacoes_id_seq', 19, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: homestead
--

SELECT pg_catalog.setval('public.migrations_id_seq', 13, true);


--
-- Name: ofmobilizador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: homestead
--

SELECT pg_catalog.setval('public.ofmobilizador_id_seq', 6, true);


--
-- Name: oms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: homestead
--

SELECT pg_catalog.setval('public.oms_id_seq', 64, true);


--
-- Name: prmguarnicao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: homestead
--

SELECT pg_catalog.setval('public.prmguarnicao_id_seq', 12, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: homestead
--

SELECT pg_catalog.setval('public.users_id_seq', 7, true);


--
-- Name: cidades cidades_pkey; Type: CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.cidades
    ADD CONSTRAINT cidades_pkey PRIMARY KEY (id);


--
-- Name: estados estados_pkey; Type: CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.estados
    ADD CONSTRAINT estados_pkey PRIMARY KEY (id);


--
-- Name: formacao formacao_pkey; Type: CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.formacao
    ADD CONSTRAINT formacao_pkey PRIMARY KEY (id);


--
-- Name: informacoes informacoes_pkey; Type: CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.informacoes
    ADD CONSTRAINT informacoes_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: usuario ofmobilizador_pkey; Type: CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.ofmobilizador
    ADD CONSTRAINT ofmobilizador_pkey PRIMARY KEY (id);


--
-- Name: oms oms_pkey; Type: CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.oms
    ADD CONSTRAINT oms_pkey PRIMARY KEY (id);


--
-- Name: prmguarnicao prmguarnicao_pkey; Type: CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.prmguarnicao
    ADD CONSTRAINT prmguarnicao_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: homestead
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: informacoes informacoes_cidade_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.informacoes
    ADD CONSTRAINT informacoes_cidade_id_foreign FOREIGN KEY (cidade_id) REFERENCES public.cidades(id) ON DELETE CASCADE;


--
-- Name: informacoes informacoes_formacao_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.informacoes
    ADD CONSTRAINT informacoes_formacao_id_foreign FOREIGN KEY (formacao_id) REFERENCES public.formacao(id) ON DELETE CASCADE;


--
-- Name: informacoes informacoes_om_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.informacoes
    ADD CONSTRAINT informacoes_om_id_foreign FOREIGN KEY (om_id) REFERENCES public.oms(id) ON DELETE CASCADE;


--
-- Name: usuario ofmobilizador_prm_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.ofmobilizador
    ADD CONSTRAINT ofmobilizador_prm_id_foreign FOREIGN KEY (prm_id) REFERENCES public.prmguarnicao(id) ON DELETE CASCADE;


--
-- Name: usuario ofmobilizador_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.ofmobilizador
    ADD CONSTRAINT ofmobilizador_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: oms oms_prm_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: homestead
--

ALTER TABLE ONLY public.oms
    ADD CONSTRAINT oms_prm_id_foreign FOREIGN KEY (prm_id) REFERENCES public.prmguarnicao(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

