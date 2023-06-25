--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-06-25 18:34:25

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
-- TOC entry 218 (class 1259 OID 24586)
-- Name: Casamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Casamento" (
    "idC" character varying NOT NULL,
    "SiglaEstado" character varying NOT NULL,
    "Total" integer
);


ALTER TABLE public."Casamento" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16408)
-- Name: Estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Estado" (
    "SiglaEstado" character varying(100) NOT NULL,
    "NomeEstado" character varying(100) NOT NULL,
    "Regiao" character varying(100) NOT NULL,
    "Populacao" integer NOT NULL,
    "IDH" double precision NOT NULL
);


ALTER TABLE public."Estado" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24576)
-- Name: FamiliaDivorciada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FamiliaDivorciada" (
    "idTF" character varying(100) NOT NULL,
    "SiglaEstado" character varying(100) NOT NULL,
    "SemFilhos" integer,
    "SomenteComFilhosMaioresDeIdade" integer,
    "SomenteComFilhosMenoresDeIdade" integer,
    "ComFilhosMaioresEMenoresDeIdade" integer,
    "SemDeclaracao" integer,
    "TotalFilhos" integer
);


ALTER TABLE public."FamiliaDivorciada" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24581)
-- Name: GuardaDivorcio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GuardaDivorcio" (
    "idRGF" character varying(100) NOT NULL,
    "SiglaEstado" character varying(100) NOT NULL,
    "Marido" integer,
    "Mulher" integer,
    "AmbosConjuges" integer,
    "Outro" integer,
    "SemDeclaracao" integer
);


ALTER TABLE public."GuardaDivorcio" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16415)
-- Name: TipoDivorcio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TipoDivorcio" (
    "idTD" character varying(100) NOT NULL,
    "SiglaEstado" character varying(100) NOT NULL,
    "Total" integer,
    "Consensual" integer,
    "NaoConsensual" integer,
    "ComunhaoUniversal" integer,
    "ComunhaoParcial" integer,
    "Separacao" integer,
    "SemDeclaracao" integer
);


ALTER TABLE public."TipoDivorcio" OWNER TO postgres;

--
-- TOC entry 3348 (class 0 OID 24586)
-- Dependencies: 218
-- Data for Name: Casamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Casamento" ("idC", "SiglaEstado", "Total") FROM stdin;
C1	AC	3903
C2	AL	13755
C3	AP	2811
C4	AM	13132
C5	BA	60794
C6	CE	33235
C7	DF	20404
C8	ES	22976
C9	GO	30115
C10	MA	21395
C11	MT	17280
C12	MS	14173
C13	MG	104476
C14	PA	34563
C15	PB	15977
C16	PR	50775
C17	PE	43742
C18	PI	8488
C19	RJ	75363
C20	RN	13126
C21	RS	34234
C22	RO	12110
C23	RR	2190
C24	SC	31631
C25	SP	228375
C26	SE	7205
C27	TO	7072
\.


--
-- TOC entry 3344 (class 0 OID 16408)
-- Dependencies: 214
-- Data for Name: Estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Estado" ("SiglaEstado", "NomeEstado", "Regiao", "Populacao", "IDH") FROM stdin;
AC	Acre	Norte	829780	0.71
AL	Alagoas	Nordeste	3125254	0.684
AP	Amapá	Norte	774268	0.688
AM	Amazonas	Norte	3952262	0.7
BA	Bahia	Nordeste	14659023	0.691
CE	Ceará	Nordeste	8936431	0.734
DF	Distrito Federal	Centro Oeste	2923369	0.814
ES	Espírito Santo	Sudeste	4108508	0.771
GO	Goiás	Centro Oeste	6950976	0.737
MA	Maranhão	Nordeste	6800605	0.676
MT	Mato Grosso	Centro Oeste	3784239	0.736
MS	Mato Grosso do Sul	Centro Oeste	2833742	0.742
MG	Minas Gerais	Sudeste	20732660	0.774
PA	Pará	Norte	8442962	0.69
PB	Paraíba	Nordeste	4030961	0.698
PR	Paraná	Sul	11835379	0.769
PE	Pernambuco	Nordeste	9051113	0.719
PI	Piauí	Nordeste	3270174	0.69
RJ	Rio de Janeiro	Sudeste	16615526	0.762
RN	Rio Grande do Norte	Nordeste	3303953	0.728
RS	Rio Grande do Sul	Sul	11088065	0.771
RO	Rondônia	Norte	1616379	0.7
RR	Roraima	Norte	634805	0.699
SC	Santa Catarina	Sul	7762154	0.792
SP	São Paulo	Sudeste	46024937	0.806
SE	Sergipe	Nordeste	2211868	0.702
TO	Tocantins	Norte	1584306	0.731
\.


--
-- TOC entry 3346 (class 0 OID 24576)
-- Dependencies: 216
-- Data for Name: FamiliaDivorciada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."FamiliaDivorciada" ("idTF", "SiglaEstado", "SemFilhos", "SomenteComFilhosMaioresDeIdade", "SomenteComFilhosMenoresDeIdade", "ComFilhosMaioresEMenoresDeIdade", "SemDeclaracao", "TotalFilhos") FROM stdin;
TF1	AC	263	82	341	46	\N	831
TF2	AL	1406	756	2290	307	12	6141
TF3	AP	1406	63	161	35	\N	570
TF4	AM	1505	696	2335	304	1	6240
TF5	BA	4565	2908	6912	1040	17	19297
TF6	CE	2781	1590	4839	599	77	12257
TF7	DF	894	516	2423	360	\N	5531
TF8	ES	1007	581	2345	332	5	5585
TF9	GO	1678	945	3527	490	117	8530
TF10	MA	3157	1051	2961	590	68	9177
TF11	MT	1062	399	1478	186	1	3667
TF12	MS	1359	664	2195	278	1	5500
TF13	MG	10909	7151	21415	3478	330	56060
TF14	PA	1042	710	1078	144	5	3931
TF15	PB	1685	551	2055	212	1	4836
TF16	PR	2744	1992	8479	1600	59	21022
TF17	PE	3858	2085	5458	816	52	14968
TF18	PI	421	399	844	126	26	2592
TF19	RJ	7907	4417	12974	1940	396	31681
TF20	RN	885	632	1183	216	21	3765
TF21	RS	1629	1050	3535	595	\N	8659
TF22	RO	994	274	1562	184	\N	3438
TF23	RR	27	10	45	4	\N	101
TF24	SC	2407	1588	5704	1050	39	14286
TF25	SP	29389	13280	47413	6714	1009	113780
TF26	SE	576	339	895	158	13	2534
TF27	TO	726	386	1077	144	3	3059
\.


--
-- TOC entry 3347 (class 0 OID 24581)
-- Dependencies: 217
-- Data for Name: GuardaDivorcio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."GuardaDivorcio" ("idRGF", "SiglaEstado", "Marido", "Mulher", "AmbosConjuges", "Outro", "SemDeclaracao") FROM stdin;
RGF1	AC	21	225	134	\N	7
RGF2	AL	71	1705	735	24	62
RGF3	AP	3	128	60	2	3
RGF4	AM	90	399	2076	4	70
RGF5	BA	325	4835	2490	29	273
RGF6	CE	198	3155	1658	25	403
RGF7	DF	56	705	1587	83	352
RGF8	ES	124	1285	1220	17	31
RGF9	GO	156	2445	1332	38	54
RGF10	MA	285	1819	1365	46	36
RGF11	MT	253	624	724	17	46
RGF12	MS	91	1514	787	24	57
RGF13	MG	807	13256	10213	99	529
RGF14	PA	72	653	470	8	20
RGF15	PB	290	1460	488	7	22
RGF16	PR	375	5112	4188	72	332
RGF17	PE	196	4210	1614	38	216
RGF18	PI	30	673	222	9	36
RGF19	RJ	300	5562	2949	174	5950
RGF20	RN	61	1028	283	7	20
RGF21	RS	168	2468	1440	22	32
RGF22	RO	81	875	744	19	27
RGF23	RR	7	25	14	2	1
RGF24	SC	356	3747	2538	45	69
RGF25	SP	1512	31537	17828	501	2770
RGF26	SE	33	735	271	6	8
RGF27	TO	61	645	426	37	52
\.


--
-- TOC entry 3345 (class 0 OID 16415)
-- Dependencies: 215
-- Data for Name: TipoDivorcio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TipoDivorcio" ("idTD", "SiglaEstado", "Total", "Consensual", "NaoConsensual", "ComunhaoUniversal", "ComunhaoParcial", "Separacao", "SemDeclaracao") FROM stdin;
TD1	AC	732	548	174	8	707	10	7
TD2	AL	4771	2745	2024	70	4547	142	12
TD3	AP	389	204	185	23	356	10	\N
TD4	AM	4841	3073	1767	45	4749	25	22
TD5	BA	15442	12029	3398	393	14645	362	42
TD6	CE	9886	6679	3204	161	9529	133	63
TD7	DF	4193	2749	1444	101	3936	156	\N
TD8	ES	4270	2437	1831	339	3671	254	6
TD9	GO	6757	3282	3460	291	6010	387	69
TD10	MA	7827	4329	3329	213	6988	273	353
TD11	MT	3126	2484	642	237	2744	137	8
TD12	MS	4497	2914	1582	168	4181	136	12
TD13	MG	43283	29716	13556	3038	38501	1700	44
TD14	PA	2979	1824	1149	112	2803	51	13
TD15	PB	4504	2770	1732	65	4379	58	2
TD16	PR	14874	9985	4872	1130	12634	1052	58
TD17	PE	12269	8645	3606	432	11376	410	51
TD18	PI	1816	1117	696	59	1672	53	32
TD19	RJ	27634	13258	14351	509	25815	1102	208
TD20	RN	2937	2119	814	83	2771	73	10
TD21	RS	6809	4437	2359	919	5591	281	18
TD22	RO	3014	2274	737	53	2895	60	6
TD23	RR	86	40	46	4	79	2	1
TD24	SC	10788	7289	3487	1774	8457	478	79
TD25	SP	97805	70882	26849	2765	92051	2835	154
TD26	SE	1981	1304	677	84	1822	71	4
TD27	TO	2336	1727	607	92	2165	71	8
\.


--
-- TOC entry 3197 (class 2606 OID 24592)
-- Name: Casamento Casamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Casamento"
    ADD CONSTRAINT "Casamento_pkey" PRIMARY KEY ("idC");


--
-- TOC entry 3195 (class 2606 OID 24585)
-- Name: GuardaDivorcio ResponsavelPelaGuardaDosFilhos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GuardaDivorcio"
    ADD CONSTRAINT "ResponsavelPelaGuardaDosFilhos_pkey" PRIMARY KEY ("idRGF");


--
-- TOC entry 3193 (class 2606 OID 24580)
-- Name: FamiliaDivorciada TipoFamilia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FamiliaDivorciada"
    ADD CONSTRAINT "TipoFamilia_pkey" PRIMARY KEY ("idTF");


--
-- TOC entry 3189 (class 2606 OID 16414)
-- Name: Estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Estado"
    ADD CONSTRAINT estado_pkey PRIMARY KEY ("SiglaEstado");


--
-- TOC entry 3191 (class 2606 OID 16419)
-- Name: TipoDivorcio tipoDivorcio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TipoDivorcio"
    ADD CONSTRAINT "tipoDivorcio_pkey" PRIMARY KEY ("idTD");


--
-- TOC entry 3201 (class 2606 OID 24593)
-- Name: Casamento fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Casamento"
    ADD CONSTRAINT fk FOREIGN KEY ("SiglaEstado") REFERENCES public."Estado"("SiglaEstado");


--
-- TOC entry 3200 (class 2606 OID 24598)
-- Name: GuardaDivorcio fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GuardaDivorcio"
    ADD CONSTRAINT fk FOREIGN KEY ("SiglaEstado") REFERENCES public."Estado"("SiglaEstado");


--
-- TOC entry 3199 (class 2606 OID 24603)
-- Name: FamiliaDivorciada fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FamiliaDivorciada"
    ADD CONSTRAINT fk FOREIGN KEY ("SiglaEstado") REFERENCES public."Estado"("SiglaEstado");


--
-- TOC entry 3198 (class 2606 OID 24608)
-- Name: TipoDivorcio fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TipoDivorcio"
    ADD CONSTRAINT fk FOREIGN KEY ("SiglaEstado") REFERENCES public."Estado"("SiglaEstado");


-- Completed on 2023-06-25 18:34:25

--
-- PostgreSQL database dump complete
--

