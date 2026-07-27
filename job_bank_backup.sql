--
-- PostgreSQL database dump
--

\restrict cZMLeP4uYlnnH279zY8obHntCVoiLh6mJim0m5HkCV408SMwZGLc7Z0YPvMyxRQ

-- Dumped from database version 17.9
-- Dumped by pg_dump version 18.4 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jobs (
    id character varying NOT NULL,
    title character varying,
    date_posted character varying,
    location character varying,
    salary character varying,
    scraped_at timestamp without time zone
);


--
-- Name: jobs_cleaned; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jobs_cleaned (
    id character varying NOT NULL,
    title character varying,
    date_posted date,
    city character varying,
    province character varying,
    min_salary double precision,
    max_salary double precision,
    salary_period character varying,
    cleaned_at timestamp without time zone
);


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jobs (id, title, date_posted, location, salary, scraped_at) FROM stdin;
article-48249602	manager, computer applications	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.955981
article-48249507	director of technology management	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.955994
article-48250276	data mining analyst	January 17, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.955996
article-48250187	data analyst - informatics and systems	January 17, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.955997
article-48250475	data processing and systems analysis manager	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.955998
article-48250538	senior software developer	January 17, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956
article-48250925	data mining analyst	January 17, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956001
article-48250988	director of technology management	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956002
article-48251472	data mining analyst	January 17, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956003
article-48251104	software developer	January 17, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956004
article-48251235	director, data processing	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956005
article-48251454	software developer	January 17, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956006
article-48251930	data scientist	January 17, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956007
article-48251962	manager, computer applications	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956008
article-48252051	data scientist	January 17, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956009
article-48252036	information technology (IT) director	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.95601
article-48241352	artificial intelligence (AI) consultant	January 17, 2026	Montréal (QC)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956011
article-48236358	manager, computer systems	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956012
article-48235939	artificial intelligence (AI) consultant	January 17, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956013
article-48236435	software developer	January 17, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956014
article-48236508	manager, computer applications	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956015
article-48237111	manager, computer applications	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956016
article-48237451	manager, computerized information systems	January 17, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956017
article-48233407	manager, computer applications	January 16, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956018
article-48234853	artificial intelligence (AI) consultant	January 16, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956019
article-48230695	information technology (IT) implementation manager	January 16, 2026	Kelowna (BC)	Salary $119,700.00 annually	2026-02-02 23:27:25.95602
article-48231761	director of technology management	January 16, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956021
article-48228202	software developer	January 16, 2026	Oakville (ON)	Salary $48.50 hourly	2026-02-02 23:27:25.956022
article-48224086	office supervisor	January 16, 2026	Nanaimo (BC)	Salary $36.60 hourly	2026-02-02 23:27:25.956023
article-48223743	data processing specialist	January 16, 2026	Toronto (ON)	Salary $43.96 hourly	2026-02-02 23:27:25.956025
article-48222726	software developer	January 16, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956026
article-48222852	director of technology management	January 16, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956027
article-48222629	artificial intelligence (AI) consultant	January 16, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956028
article-48222836	manager, computer applications	January 16, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956029
article-48221279	manager, computer applications	January 16, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.95603
article-48221166	cloud developer	January 16, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956031
article-48222490	manager, computer applications	January 16, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956032
article-48221447	manager, computer applications	January 16, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956033
article-48207827	Internet systems administrator	January 16, 2026	Kuujjuaq (QC)	Salary $52,482.00 to $89,256.00 annually	2026-02-02 23:27:25.956034
article-48207757	operations supervisor	January 16, 2026	Saguenay (QC)	Salary $39.00 to $43.00 hourly	2026-02-02 23:27:25.956035
article-48206314	data scientist	January 16, 2026	Vancouver (BC)	Salary $26.00 to $78.00 hourly	2026-02-02 23:27:25.956036
article-48206174	manager, data processing and systems analysis	January 16, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956037
article-48206780	data scientist	January 16, 2026	Vancouver (BC)	Salary $26.00 to $78.00 hourly	2026-02-02 23:27:25.956038
article-48207433	data scientist	January 16, 2026	East York (ON)	Salary $26.00 to $78.00 hourly	2026-02-02 23:27:25.956039
article-48206378	senior software developer	January 16, 2026	East York (ON)	Salary $25.00 to $63.00 hourly	2026-02-02 23:27:25.95604
article-48207536	senior software developer	January 16, 2026	North York (ON)	Salary $25.00 to $63.00 hourly	2026-02-02 23:27:25.956041
article-48205991	senior software developer	January 16, 2026	Mississauga (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956042
article-48205312	manager, IT (information technology) implementation	January 16, 2026	Vancouver (BC)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956043
article-48205875	manager, IT (information technology) implementation	January 16, 2026	East York (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956044
article-48157973	software developer	January 14, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956045
article-48157886	data mining analyst	January 14, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956046
article-48156560	administrator, data	January 14, 2026	Montréal (QC)	Salary $30.27 to $53.64 hourly	2026-02-02 23:27:25.956047
article-48158341	manager, computer systems	January 14, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956048
article-48157172	manager, IT (information technology) implementation	January 14, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956049
article-48157447	manager, computer systems	January 14, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.95605
article-47826617	database analyst	January 04, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956118
article-48153295	manager, IT (information technology) implementation	January 14, 2026	London (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956051
article-48141161	data mining analyst	January 14, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956052
article-48142205	data warehouse analyst	January 14, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956053
article-48175340	data analyst - informatics and systems	January 14, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956054
article-48205764	manager, data processing and systems analysis	January 14, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956055
article-48141113	artificial intelligence (AI) consultant	January 14, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956056
article-48142529	data scientist	January 13, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956057
article-48141553	mobile applications developer	January 13, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956058
article-48138460	software developer	January 13, 2026	Oshawa (ON)	Salary $48.20 hourly	2026-02-02 23:27:25.956059
article-48136122	data engineer	January 13, 2026	Toronto (ON)	Salary $100,000.00 to $140,000.00 annually	2026-02-02 23:27:25.95606
article-48134416	records office supervisor	January 13, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-02-02 23:27:25.956061
article-48134031	records office supervisor	January 13, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-02-02 23:27:25.956062
article-48129412	office supervisor	January 13, 2026	Mississauga (ON)	Salary $36.10 hourly	2026-02-02 23:27:25.956063
article-48127981	data engineer	January 13, 2026	Richmond Hill (ON)	Salary $88,035.00 to $97,817.00 annually	2026-02-02 23:27:25.956064
article-48128031	cloud developer	January 13, 2026	Concord (ON)	Salary $25.00 hourly	2026-02-02 23:27:25.956065
article-48127895	cloud developer	January 13, 2026	Toronto (ON)	Salary $48.51 to $94.97 hourly	2026-02-02 23:27:25.956066
article-48126553	data scientist	January 13, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956067
article-48126404	data mining analyst	January 13, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956068
article-48125351	artificial intelligence (AI) consultant	January 13, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956069
article-48051703	data scientist	January 11, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95607
article-48050833	data scientist	January 11, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956071
article-48117243	software developer	January 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956072
article-48116571	software developer	January 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956078
article-48116626	software developer	January 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956079
article-48116741	software developer	January 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.95608
article-48116818	software developer	January 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956081
article-48117046	software developer	January 11, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956082
article-48117106	software developer	January 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956083
article-48117138	software developer	January 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956084
article-48117517	software developer	January 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956085
article-48117460	software developer	January 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956086
article-48118094	software developer	January 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956087
article-48051278	manager, IT (information technology) implementation	January 11, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956088
article-48050090	manager, computer applications	January 10, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956089
article-48029575	manager, computer applications	January 10, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.95609
article-48029272	director of technology management	January 10, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956091
article-48029865	manager, IT (information technology) implementation	January 10, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956092
article-48019443	data scientist	January 10, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956093
article-48019739	senior software developer	January 10, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956095
article-48020475	senior software developer	January 10, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956096
article-48020537	manager, computer applications	January 10, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956097
article-48207347	director of technology management	January 10, 2026	Mississauga (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.9561
article-48018380	senior software developer	January 09, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956101
article-48012845	data administrator	January 09, 2026	Fort McMurray (AB)	Salary $23.00 to $27.00 hourly	2026-02-02 23:27:25.956102
article-47871279	developer, software	January 05, 2026	Gatineau (QC)	Salary $54,210.00 annually	2026-02-02 23:27:25.956103
article-47871286	developer, software	January 05, 2026	Lévis (QC)	Salary $54,210.00 annually	2026-02-02 23:27:25.956104
article-47871288	developer, software	January 05, 2026	Sept-Îles (QC)	Salary $54,210.00 annually	2026-02-02 23:27:25.956105
article-47867659	operations supervisor	January 05, 2026	Terrebonne (QC)	Salary $80,000.00 to $110,000.00 annually	2026-02-02 23:27:25.956106
article-47855572	software developer	January 05, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956107
article-47856784	data scientist	January 05, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956108
article-48116333	big data analyst	January 05, 2026	Toronto (ON)	Salary $70,000.00 to $85,000.00 annually	2026-02-02 23:27:25.956109
article-48117835	software developer	January 05, 2026	Montréal (QC)	Salary $70.00 to $100.00 hourly	2026-02-02 23:27:25.95611
article-47856664	software developer	January 05, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956111
article-47926448	software developer	January 05, 2026	Dundas (ON)	Salary $64,000.00 to $75,000.00 annually	2026-02-02 23:27:25.956112
article-47926414	data engineer	January 05, 2026	Toronto (ON)	Salary $55.00 to $56.00 hourly	2026-02-02 23:27:25.956114
article-47839985	data mining analyst	January 04, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956115
article-47824391	senior software developer	January 04, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956116
article-47855635	software developer	January 04, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956117
article-47855496	software quality assurance director	January 04, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956119
article-47810415	manager, computer applications	January 03, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.95612
article-47805921	director of technology management	January 03, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956121
article-47803717	software developer	January 03, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956122
article-47801589	software developer	January 03, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956123
article-47796039	software developer	January 03, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956124
article-47784856	operations supervisor	January 02, 2026	Kitchener (ON)	Salary $50,000.00 to $65,000.00 annually	2026-02-02 23:27:25.956125
article-47784517	database analyst	January 02, 2026	Mississauga (ON)	Salary $44.00 to $46.00 hourly (to be negotiated)	2026-02-02 23:27:25.956126
article-47778131	data scientist	January 02, 2026	Toronto (ON)	Salary $124,500.00 to $160,800.00 annually (to be negotiated)	2026-02-02 23:27:25.956127
article-47775202	software developer	January 02, 2026	Toronto (ON)	Salary $145,000.00 to $195,000.00 annually	2026-02-02 23:27:25.956128
article-47703410	software developer	December 29, 2025	Etobicoke (ON)	Salary $48.07 hourly	2026-02-02 23:27:25.956129
article-47685446	data scientist	December 29, 2025	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95613
article-47739597	software developer	December 29, 2025	Calgary (AB)	Salary $60,000.00 to $80,000.00 annually	2026-02-02 23:27:25.956131
article-47686237	data mining analyst	December 29, 2025	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956132
article-47686336	data analyst - informatics and systems	December 29, 2025	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956133
article-47684745	artificial intelligence (AI) analyst	December 29, 2025	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956135
article-47684637	software developer	December 28, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956136
article-47682868	data analyst - informatics and systems	December 28, 2025	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956137
article-47686048	data mining analyst	December 28, 2025	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956138
article-47652547	architect, database	December 28, 2025	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956139
article-47652028	artificial intelligence (AI) consultant	December 28, 2025	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95614
article-47686010	mobile applications developer	December 28, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956141
article-47651564	software developer	December 27, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956142
article-47602211	software developer	December 26, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956143
article-47600857	data mining analyst	December 26, 2025	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956144
article-47596047	data mining analyst	December 26, 2025	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956145
article-47651763	manager, computer applications	December 26, 2025	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956146
article-47576624	manager, data processing and systems analysis	December 25, 2025	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956147
article-47576066	manager, IT (information technology) implementation	December 25, 2025	Mississauga (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956148
article-47573845	manager, computer applications	December 25, 2025	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956148
article-47616571	artificial intelligence (AI) consultant	December 25, 2025	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-02 23:27:25.95615
article-47549811	manager, computer applications	December 25, 2025	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956151
article-47615945	information technology (IT) director	December 25, 2025	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956152
article-47539559	database analyst	December 24, 2025	Scarborough (ON)	Salary $45.00 hourly	2026-02-02 23:27:25.956153
article-47532786	office supervisor	December 24, 2025	Nisku (AB)	Salary $36.50 hourly	2026-02-02 23:27:25.956154
article-47529894	technical program manager - information technology (IT)	December 24, 2025	Nepean (ON)	Salary $165,000.00 to $185,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956156
article-47651980	director of technology management	December 24, 2025	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956157
article-47525366	office supervisor	December 23, 2025	Québec (QC)	Salary $29.00 to $31.00 hourly	2026-02-02 23:27:25.956158
article-47523612	data analyst - informatics and systems	December 23, 2025	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956159
article-47521386	data entry supervisor	December 23, 2025	Québec (QC)	Salary $20.00 hourly	2026-02-02 23:27:25.95616
article-47520533	big data analyst	December 23, 2025	Dorval (QC)	Salary $45,000.00 annually	2026-02-02 23:27:25.956161
article-47519069	database analyst	December 23, 2025	Pickering (ON)	Salary $44.50 hourly	2026-02-02 23:27:25.956165
article-48117534	software developer	December 23, 2025	Toronto (ON)	Salary $110,000.00 to $130,000.00 annually	2026-02-02 23:27:25.956166
article-48117162	software developer	December 23, 2025	Calgary (AB)	Salary $80.00 to $100.00 annually	2026-02-02 23:27:25.956167
article-48116596	software developer	December 23, 2025	Squamish (BC)	Salary $95,000.00 to $125,000.00 annually	2026-02-02 23:27:25.956168
article-48118048	data scientist	December 23, 2025	Vancouver (BC)	Salary $70,000.00 to $90,000.00 annually	2026-02-02 23:27:25.956169
article-48117869	software developer	December 23, 2025	Boisbriand (QC)	Salary $85,000.00 to $95,000.00 annually	2026-02-02 23:27:25.95617
article-47498643	software developer	December 22, 2025	Vancouver (BC)	Salary $88,000.00 to $100,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956171
article-47496194	office supervisor	December 22, 2025	Rocky View (AB)	Salary $36.00 hourly	2026-02-02 23:27:25.956172
article-47496155	senior software developer	December 22, 2025	Kanata (ON)	Salary $140,000.00 to $170,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956173
article-47496156	application programmer	December 22, 2025	Kanata (ON)	Salary $120,000.00 to $150,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956174
article-47495078	software developer	December 22, 2025	Kanata (ON)	Salary $120,000.00 to $150,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956175
article-47454247	data analyst - informatics and systems	December 21, 2025	Burlington (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956176
article-47445171	computer projects manager	December 21, 2025	Saint-Georges (QC)	Salary $35.00 to $45.00 hourly	2026-02-02 23:27:25.956177
article-47476724	manager, computer applications	December 21, 2025	Gloucester (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956178
article-47476832	manager, IT (information technology) implementation	December 21, 2025	Gloucester (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956179
article-47415860	manager, computer applications	December 20, 2025	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956182
article-47413869	software developer	December 20, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956183
article-47413691	senior software developer	December 20, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956184
article-47415351	data scientist	December 20, 2025	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956186
article-48117830	software developer	December 20, 2025	Toronto (ON)	Salary $90,000.00 annually	2026-02-02 23:27:25.956187
article-48116891	software developer	December 20, 2025	Toronto (ON)	Salary $90,000.00 to $105,000.00 annually	2026-02-02 23:27:25.956188
article-47414223	software developer	December 20, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956189
article-47415281	software developer	December 20, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.95619
article-47415167	software developer	December 20, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956191
article-47415172	data warehouse analyst	December 20, 2025	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956192
article-47413941	manager, computer applications	December 20, 2025	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956193
article-47414254	manager, IT (information technology) implementation	December 20, 2025	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956194
article-47414408	manager, computer applications	December 20, 2025	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956195
article-47414426	manager, computer applications	December 20, 2025	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956196
article-47413806	director of technology management	December 20, 2025	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956197
article-47413834	Java programmer	December 20, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956198
article-47414107	manager, computer applications	December 20, 2025	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956199
article-47414855	Java programmer	December 20, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.9562
article-47825768	manager, computer applications	December 20, 2025	Montréal (QC)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956201
article-47413731	software developer	December 19, 2025	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956202
article-47414363	data mining analyst	December 19, 2025	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956203
article-47475461	data scientist	December 19, 2025	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-02 23:27:25.956204
article-47476907	data scientist	December 19, 2025	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-02 23:27:25.956205
article-47370454	business data analyst	December 18, 2025	Toronto (ON)	Salary $83,560.00 to $97,486.00 annually (to be negotiated)	2026-02-02 23:27:25.956206
article-47369066	information technology (IT) director	December 18, 2025	Burnaby (BC)	Salary $180,523.00 annually	2026-02-02 23:27:25.956207
article-47368688	data scientist	December 18, 2025	Brampton (ON)	Salary $48.38 hourly	2026-02-02 23:27:25.956207
article-48000155	software developer	December 18, 2025	Fergus (ON)	Salary $49.00 hourly	2026-02-02 23:27:25.956208
article-47367951	data entry supervisor	December 18, 2025	Brampton (ON)	Salary $36.00 hourly	2026-02-02 23:27:25.956209
article-47972582	operations supervisor	December 17, 2025	Pitt Meadows (BC)	Salary $47,000.00 to $50,000.00 annually (to be negotiated)	2026-02-02 23:27:25.95621
article-47340343	office supervisor	December 17, 2025	Surrey (BC)	Salary $31.00 hourly	2026-02-02 23:27:25.956211
article-48123537	data administrator	December 15, 2025	Milton (ON)	Salary $47.00 hourly	2026-02-02 23:27:25.956212
article-47778561	office supervisor	December 11, 2025	Montréal (QC)	Salary $35.00 hourly	2026-02-02 23:27:25.956214
article-47181544	manager, computer systems	December 11, 2025	Abbotsford (BC)	Salary $60.44 hourly	2026-02-02 23:27:25.956215
article-47171743	office supervisor	December 10, 2025	Brampton (ON)	Salary $34.50 to $37.00 hourly (to be negotiated)	2026-02-02 23:27:25.956216
article-47975798	data scientist	December 10, 2025	Toronto (ON)	Salary $11,250.00 monthly	2026-02-02 23:27:25.956217
article-47769637	business process manager	December 09, 2025	Nepean (ON)	Salary $160,000.00 to $180,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956218
article-47110475	analyst, database	December 08, 2025	Toronto (ON)	Salary $92,497.60 annually	2026-02-02 23:27:25.956219
article-48129484	software developer	December 08, 2025	Miller Lake (ON)	Salary $50.00 hourly	2026-02-02 23:27:25.95622
article-48041094	data architect	December 05, 2025	Brampton (ON)	Salary $44.00 to $48.00 hourly (to be negotiated)	2026-02-02 23:27:25.956221
article-46936086	database manager	December 03, 2025	Oshawa (ON)	Salary $45.00 hourly	2026-02-02 23:27:25.956222
article-46901386	software developer	December 01, 2025	Edmonton (AB)	Salary $41.86 hourly	2026-02-02 23:27:25.956223
article-48192084	database analyst	December 01, 2025	Nepean (ON)	Salary $150,000.00 to $170,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956224
article-46760488	office supervisor	November 27, 2025	Brampton (ON)	Salary $36.50 hourly	2026-02-02 23:27:25.956225
article-46676426	data engineer	November 25, 2025	Mississauga (ON)	Salary $51.00 hourly	2026-02-02 23:27:25.956226
article-46676396	software developer	November 25, 2025	Mississauga (ON)	Salary $50.00 hourly	2026-02-02 23:27:25.956227
article-46634864	administrative supervisor	November 24, 2025	Mississauga (ON)	Salary $37.00 hourly	2026-02-02 23:27:25.956228
article-46525150	database analyst	November 21, 2025	Markham (ON)	Salary $42.75 to $46.75 hourly (to be negotiated)	2026-02-02 23:27:25.956229
article-46519699	interactive media developer	November 21, 2025	Picton (ON)	Salary $48.08 hourly	2026-02-02 23:27:25.95623
article-48189575	office supervisor	November 21, 2025	Vancouver (BC)	Salary $38.00 hourly	2026-02-02 23:27:25.956231
article-47933645	operations supervisor	November 21, 2025	Québec (QC)	Salary $55,000.00 to $57,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956232
article-48222058	software developer	November 18, 2025	Hamilton (ON)	Salary $43.60 hourly	2026-02-02 23:27:25.956233
article-46371163	information systems manager	November 18, 2025	Pickering (ON)	Salary $68.00 hourly	2026-02-02 23:27:25.956234
article-46335283	software developer	November 17, 2025	Etobicoke (ON)	Salary $48.08 to $50.00 hourly (to be negotiated)	2026-02-02 23:27:25.956234
article-48158513	office supervisor	November 14, 2025	Richmond (BC)	Salary $38.00 hourly	2026-02-02 23:27:25.956235
article-46237330	Java programmer	November 14, 2025	Toronto (ON)	Salary $67.31 hourly	2026-02-02 23:27:25.956236
article-48225032	operations supervisor	November 11, 2025	Brampton (ON)	Salary $36.10 hourly	2026-02-02 23:27:25.956237
article-46119720	software developer	November 10, 2025	North Vancouver (BC)	Salary $48.08 hourly	2026-02-02 23:27:25.956238
article-46043814	administrative supervisor	November 07, 2025	Burnaby (BC)	Salary $36.60 hourly	2026-02-02 23:27:25.956239
article-46014233	data scientist	November 06, 2025	Burnaby (BC)	Salary $43.50 hourly	2026-02-02 23:27:25.95624
article-46003962	data entry supervisor	November 06, 2025	Concord (ON)	Salary $36.00 hourly	2026-02-02 23:27:25.956241
article-45992116	office supervisor	November 06, 2025	Brampton (ON)	Salary $36.00 to $40.00 hourly (to be negotiated)	2026-02-02 23:27:25.956242
article-45912246	office supervisor	November 04, 2025	Mississauga (ON)	Salary $30.00 to $36.00 hourly (to be negotiated)	2026-02-02 23:27:25.956243
article-45907765	computerized information systems manager	November 04, 2025	Richmond (BC)	Salary $72.12 hourly	2026-02-02 23:27:25.956244
article-45873272	developer, software	November 03, 2025	Toronto (ON)	Salary $85,000.00 to $98,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956249
article-47776831	developer, software	November 03, 2025	Toronto (ON)	Salary $85,000.00 to $98,000.00 annually (to be negotiated)	2026-02-02 23:27:25.95625
article-48086042	software developer	October 31, 2025	Victoria (BC)	Salary $51.28 hourly	2026-02-02 23:27:25.956251
article-45740802	computer application programmer	October 30, 2025	Toronto (ON)	Salary $48.08 hourly	2026-02-02 23:27:25.956252
article-46855628	operations supervisor	October 30, 2025	Laval (QC)	Salary $35.00 hourly	2026-02-02 23:27:25.956253
article-45715889	business systems manager	October 29, 2025	Thunder Bay (ON)	Salary $68.00 hourly	2026-02-02 23:27:25.956254
article-45706388	information technology (IT) implementation manager	October 29, 2025	Toronto (ON)	Salary $5,415.20 biweekly	2026-02-02 23:27:25.956255
article-45603384	office clerks supervisor	October 25, 2025	Edmonton (AB)	Salary $36.00 hourly	2026-02-02 23:27:25.956256
article-45544659	operations supervisor	October 23, 2025	Acton (ON)	Salary $36.00 hourly	2026-02-02 23:27:25.956257
article-45540693	systems manager - computer systems	October 23, 2025	Etobicoke (ON)	Salary $4,080.00 biweekly	2026-02-02 23:27:25.956258
article-45486627	office supervisor	October 21, 2025	Calgary (AB)	Salary $36.00 hourly	2026-02-02 23:27:25.956259
article-45486423	business data analyst	October 21, 2025	Toronto (ON)	Salary $19.00 hourly	2026-02-02 23:27:25.95626
article-47700309	developer, software	October 21, 2025	North York (ON)	Salary $87,000.00 annually	2026-02-02 23:27:25.956261
article-45466853	administrative supervisor	October 20, 2025	Edmonton (AB)	Salary $36.00 hourly	2026-02-02 23:27:25.956262
article-47272020	operations supervisor	October 18, 2025	Various locations	Salary $36.00 hourly	2026-02-02 23:27:25.956263
article-48134778	database analyst (DBA)	October 17, 2025	Brampton (ON)	Salary $45.00 hourly	2026-02-02 23:27:25.956264
article-45421175	data entry clerks supervisor	October 17, 2025	Scarborough (ON)	Salary $36.00 hourly	2026-02-02 23:27:25.956265
article-45272486	data administrator	October 08, 2025	Richmond (BC)	Salary $45.00 to $48.00 hourly (to be negotiated)	2026-02-02 23:27:25.956266
article-45176768	software developer	October 03, 2025	Mississauga (ON)	Salary $53.00 hourly	2026-02-02 23:27:25.956267
article-45159460	software developer	October 01, 2025	Calgary (AB)	Salary $41.00 hourly	2026-02-02 23:27:25.956268
article-48094183	data engineer	September 26, 2025	Toronto (ON)	Salary $49.00 hourly	2026-02-02 23:27:25.956268
article-45055636	administrative supervisor	September 19, 2025	Toronto (ON)	Salary $75,000.00 annually	2026-02-02 23:27:25.956269
article-48331695	software developer	January 20, 2026	Vancouver (BC)	Salary $21.30 hourly	2026-02-02 23:27:25.95627
article-48331705	data architect	January 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956271
article-48331760	software developer	January 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956272
article-48331811	software developer	January 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956273
article-48328057	manager, computer systems	January 20, 2026	Mississauga (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956274
article-48325355	data scientist	January 20, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956276
article-48326159	database architect	January 20, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956277
article-48321911	information technology (IT) director	January 19, 2026	Burnaby (BC)	Salary $180,523.00 annually	2026-02-02 23:27:25.956278
article-48321991	operations supervisor	January 19, 2026	Toronto (ON)	Salary $21.00 to $25.00 hourly	2026-02-02 23:27:25.956279
article-48313141	manager, IT (information technology) implementation	January 19, 2026	Montréal (QC)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.95628
article-48309464	database analyst	January 19, 2026	Mississauga (ON)	Salary $45.50 hourly	2026-02-02 23:27:25.95628
article-48308326	developer, software	January 19, 2026	Brossard (QC)	Salary $60,000.00 annually	2026-02-02 23:27:25.956281
article-48307766	operations supervisor	January 19, 2026	Cantley (QC)	Salary $20.00 to $28.00 hourly	2026-02-02 23:27:25.956282
article-48308462	data processing director	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956283
article-48308747	manager, computer systems	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956284
article-48305590	Java programmer	January 19, 2026	Montréal (QC)	Salary $75,000.00 to $100,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956285
article-48299394	manager, computer applications	January 19, 2026	Montréal (QC)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956286
article-48293081	manager, data processing and systems analysis	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956287
article-48293165	senior software developer	January 19, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956288
article-48293210	software developer	January 19, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956289
article-48293334	Java programmer	January 19, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.95629
article-48293369	software developer	January 19, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956291
article-48293463	manager, computer applications	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956292
article-48293606	manager, computer applications	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956293
article-48293724	software developer	January 19, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956294
article-48294247	software developer	January 19, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956295
article-48331585	software developer	January 19, 2026	Fort McMurray (AB)	Salary $29.00 hourly	2026-02-02 23:27:25.956296
article-48331629	software developer	January 19, 2026	Fort McMurray (AB)	Salary $29.00 hourly	2026-02-02 23:27:25.956297
article-48331699	software developer	January 19, 2026	Fort McMurray (AB)	Salary $29.00 hourly	2026-02-02 23:27:25.956298
article-48331842	software developer	January 19, 2026	Fort McMurray (AB)	Salary $29.00 hourly	2026-02-02 23:27:25.956299
article-48331854	software developer	January 19, 2026	Fort McMurray (AB)	Salary $29.00 hourly	2026-02-02 23:27:25.9563
article-48331887	software developer	January 19, 2026	Fort McMurray (AB)	Salary $29.00 hourly	2026-02-02 23:27:25.956301
article-48294724	data warehouse analyst	January 19, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956302
article-48295054	software quality assurance director	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956303
article-48295428	manager, computer applications	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956304
article-48293759	manager, IT (information technology) implementation	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956305
article-48293919	manager, computer applications	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956306
article-48293939	manager, computer applications	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956307
article-48294185	manager, computer applications	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956308
article-48294225	manager, computer applications	January 19, 2026	Stratford (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956309
article-48294389	Java programmer	January 19, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.95631
article-48295052	manager, computer applications	January 19, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956311
article-48294570	senior software developer	January 18, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956312
article-48293437	manager, computer applications	January 18, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956313
article-48293302	director of technology management	January 18, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956314
article-48290663	software developer	January 18, 2026	London (ON)	Salary $45,000.00 to $62,000.00 annually	2026-02-02 23:27:25.956315
article-48280040	senior software developer	January 18, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956316
article-48279973	data scientist	January 18, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956317
article-48281181	director of software engineering	January 18, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956317
article-48280739	director of technology management	January 18, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956318
article-48279824	artificial intelligence (AI) consultant	January 18, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956319
article-48280304	artificial intelligence (AI) consultant	January 18, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95632
article-48280063	manager, computer applications	January 18, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956321
article-48267958	operations supervisor	January 18, 2026	Thorsby (AB)	Salary $25.00 to $35.00 hourly	2026-02-02 23:27:25.956322
article-48294900	data scientist	January 18, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956326
article-48265721	data mining analyst	January 18, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956328
article-48294830	software developer	January 18, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956331
article-48331630	software developer	January 18, 2026	Calgary (AB)	Salary $19.00 hourly	2026-02-02 23:27:25.956332
article-48331840	software developer	January 18, 2026	Toronto (ON)	Salary $19.75 hourly	2026-02-02 23:27:25.956333
article-48295012	data scientist	January 18, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-02 23:27:25.956334
article-48258921	cloud operations manager	January 17, 2026	Burnaby (BC)	Salary $48,000.00 to $60,000.00 annually	2026-02-02 23:27:25.956335
article-48256656	cloud operations manager	January 17, 2026	Montréal (QC)	Salary $49,934.92 to $67,979.88 annually	2026-02-02 23:27:25.956336
article-48386427	office clerks supervisor	January 21, 2026	Petite-Rivière-Saint-François (QC)	Salary $2,073.40 biweekly	2026-02-02 23:27:25.956337
article-48382893	office supervisor	January 21, 2026	Surrey (BC)	Salary $37.00 hourly	2026-02-02 23:27:25.956338
article-48382072	office supervisor	January 21, 2026	Burnaby (BC)	Salary $3,148.68 biweekly	2026-02-02 23:27:25.956339
article-48382036	office supervisor	January 21, 2026	Surrey (BC)	Salary $36.60 hourly	2026-02-02 23:27:25.95634
article-48380180	artificial intelligence (AI) designer	January 21, 2026	Concord (ON)	Salary $29.00 to $49.00 hourly (to be negotiated)	2026-02-02 23:27:25.956341
article-48376832	operations supervisor	January 21, 2026	Gold River (BC)	Salary $85,280.00 annually	2026-02-02 23:27:25.956342
article-48377137	big data analyst	January 21, 2026	Drayton Valley (AB)	Salary $45.30 hourly	2026-02-02 23:27:25.956343
article-48375200	senior software developer	January 21, 2026	Mississauga (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956344
article-48375733	software developer	January 21, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956345
article-48376662	senior software developer	January 21, 2026	Mississauga (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956346
article-48373759	director of software engineering	January 21, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956347
article-48371508	computer applications manager	January 21, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956348
article-48372155	information technology (IT) director	January 21, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956349
article-48372892	operations supervisor	January 21, 2026	Vernon (BC)	Salary $20.67 to $45.00 hourly	2026-02-02 23:27:25.95635
article-48372973	senior software developer	January 21, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956351
article-48372985	director of technology management	January 21, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956352
article-48373072	artificial intelligence (AI) consultant	January 21, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956352
article-48373243	director, data processing	January 21, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956353
article-48357203	operations supervisor	January 21, 2026	Toronto (ON)	Salary $20.00 hourly	2026-02-02 23:27:25.956354
article-48357529	manager, computer systems development	January 21, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956355
article-48357590	manager, IT (information technology) implementation	January 21, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956356
article-48357854	manager, IT (information technology) implementation	January 21, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956357
article-48358288	data scientist	January 21, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956358
article-48358693	data scientist	January 21, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956359
article-48359181	data scientist	January 21, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95636
article-48356458	data scientist	January 20, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956361
article-48344527	cybersecurity manager	January 20, 2026	Laval (QC)	Salary $85,000.00 annually	2026-02-02 23:27:25.956362
article-48343973	senior software developer	January 20, 2026	Vancouver (BC)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956363
article-48343934	manager, data processing and systems analysis	January 20, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956364
article-48343820	manager, computer applications	January 20, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956365
article-48344151	manager, computer applications	January 20, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956366
article-48344055	manager, computer applications	January 20, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956367
article-48343297	software development manager	January 20, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956368
article-48341610	data scientist	January 20, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956369
article-48343312	data scientist	January 20, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956373
article-48341829	senior software developer	January 20, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956374
article-48343430	senior software developer	January 20, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956379
article-48343346	artificial intelligence (AI) consultant	January 20, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95638
article-48342136	artificial intelligence (AI) consultant	January 20, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956381
article-48342572	artificial intelligence (AI) consultant	January 20, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956382
article-48343109	information technology (IT) director	January 20, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956383
article-48445441	cloud operations manager	January 23, 2026	Delta (BC)	Salary $75,000.00 to $90,000.00 annually	2026-02-02 23:27:25.956384
article-48443691	office supervisor	January 23, 2026	High Level (AB)	Salary $30.00 hourly	2026-02-02 23:27:25.956385
article-48442852	interactive media developer	January 23, 2026	Montréal (QC)	Salary $72,000.00 to $91,000.00 annually	2026-02-02 23:27:25.956386
article-48442919	operations supervisor	January 23, 2026	Edmonton (AB)	Salary $21.00 to $25.00 hourly	2026-02-02 23:27:25.956387
article-48443010	administrator, database	January 23, 2026	Toronto (ON)	Salary $90,000.00 to $100,000.00 annually	2026-02-02 23:27:25.956388
article-48439972	computer projects manager	January 23, 2026	Victoriaville (QC)	Salary $23.00 to $29.00 hourly	2026-02-02 23:27:25.956389
article-48440126	data scientist	January 23, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95639
article-48439878	artificial intelligence (AI) consultant	January 23, 2026	Mississauga (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956391
article-48440724	data scientist	January 23, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956392
article-48440766	senior software developer	January 23, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956393
article-48440769	senior software developer	January 23, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956394
article-48440898	manager, IT (information technology) implementation	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956395
article-48441053	artificial intelligence (AI) consultant	January 23, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956396
article-48441082	data processing and systems analysis manager	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956397
article-48441113	senior software developer	January 23, 2026	Mississauga (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956398
article-48441657	software developer	January 23, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956399
article-48441692	software developer	January 23, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.9564
article-48441818	director, data processing	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956401
article-48441784	artificial intelligence (AI) consultant	January 23, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956402
article-48442030	software developer	January 23, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956403
article-48442371	senior software developer	January 23, 2026	Vancouver (BC)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956404
article-48442536	manager, computer applications	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956405
article-48442589	senior software developer	January 23, 2026	Mississauga (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956406
article-48440121	cloud developer	January 23, 2026	Brampton (ON)	Salary $70,000.00 to $115,000.00 annually	2026-02-02 23:27:25.956407
article-48440022	cloud developer	January 23, 2026	Edmonton (AB)	Salary $52,780.00 annually	2026-02-02 23:27:25.956408
article-48439712	database analyst	January 23, 2026	Richmond Hill (ON)	Salary $45.00 hourly	2026-02-02 23:27:25.956409
article-48432525	software developer	January 23, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.95641
article-48432356	software developer	January 23, 2026	London (ON)	Salary $47.93 hourly	2026-02-02 23:27:25.956411
article-48432655	software developer	January 23, 2026	Toronto (ON)	Salary $75.00 to $80.00 hourly	2026-02-02 23:27:25.956412
article-48432664	data architect	January 23, 2026	Toronto (ON)	Salary $150,000.00 annually	2026-02-02 23:27:25.956413
article-48423601	manager, data processing and systems analysis	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956414
article-48423944	software developer	January 23, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956417
article-48424761	data scientist	January 23, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956418
article-48423947	manager, data processing and systems analysis	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956419
article-48424526	manager, computer applications	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.95642
article-48423958	manager, computer applications	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956421
article-48424125	manager, computerized information systems	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956422
article-48421535	data warehouse analyst	January 22, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956423
article-48414624	director of technology management	January 22, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956424
article-48412907	software developer	January 22, 2026	Vancouver (BC)	Salary $105,000.00 to $130,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956425
article-48411479	computer application programmer	January 22, 2026	Surrey (BC)	Salary $52.40 hourly	2026-02-02 23:27:25.956426
article-48410283	test engineering manager - software	January 22, 2026	Vancouver (BC)	Salary $105,000.00 to $130,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956427
article-48407632	information technology (IT) director	January 22, 2026	Burnaby (BC)	Salary $142,501.00 annually	2026-02-02 23:27:25.956428
article-48407320	application programmer	January 22, 2026	Chilliwack (BC)	Salary $52.50 hourly	2026-02-02 23:27:25.956448
article-48407249	application programmer	January 22, 2026	Chilliwack (BC)	Salary $52.50 hourly	2026-02-02 23:27:25.956449
article-48406909	senior software developer	January 22, 2026	Vancouver (BC)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.95645
article-48406873	manager, IT (information technology) implementation	January 22, 2026	Montréal (QC)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956451
article-48405237	software developer	January 22, 2026	Vancouver (BC)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956452
article-48405302	senior software developer	January 22, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956453
article-48406487	data scientist	January 22, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956454
article-48405409	data scientist	January 22, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956455
article-48406581	director of technology management	January 22, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956456
article-48405114	data processing director	January 22, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956457
article-48404885	data scientist	January 22, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956458
article-48406359	database architect	January 22, 2026	Mississauga (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956459
article-48406243	data scientist	January 22, 2026	Montréal (QC)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95646
article-48406176	manager, computer systems	January 22, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956461
article-48404768	manager, computer applications	January 22, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956462
article-48432486	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956463
article-48387581	data mining analyst	January 22, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956464
article-48432661	software developer	January 22, 2026	Vancouver (BC)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956465
article-48430071	software developer	January 22, 2026	Cambridge (ON)	Salary $69.11 hourly	2026-02-02 23:27:25.956466
article-48432617	software developer	January 22, 2026	Montréal (QC)	Salary $110,000.00 to $115,000.00 annually	2026-02-02 23:27:25.956467
article-48432489	software developer	January 22, 2026	Toronto (ON)	Salary $75,000.00 annually	2026-02-02 23:27:25.956468
article-48388723	software developer	January 22, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956469
article-48432470	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.95647
article-48432462	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956471
article-48432496	software developer	January 22, 2026	Toronto (ON)	Salary $75,000.00 to $85,000.00 hourly	2026-02-02 23:27:25.956472
article-48432559	software developer	January 22, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956473
article-48389527	senior software developer	January 22, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956474
article-48432596	software developer	January 22, 2026	Waterloo (ON)	Salary $80,000.00 annually	2026-02-02 23:27:25.956475
article-48389536	manager, computer applications	January 22, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956476
article-48388420	software developer	January 21, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956477
article-48474417	cloud operations manager	January 24, 2026	London (ON)	Salary $70,000.00 annually	2026-02-02 23:27:25.956478
article-48474198	data processing director	January 24, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956479
article-48474122	data scientist	January 24, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95648
article-48474099	manager, computer applications	January 24, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956481
article-48474284	information technology (IT) director	January 24, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956482
article-48471933	data scientist	January 24, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956483
article-48472697	artificial intelligence (AI) consultant	January 24, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956484
article-48472511	information technology (IT) director	January 24, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956485
article-48473190	operations supervisor	January 24, 2026	Vernon (BC)	Salary $20.67 to $45.00 hourly	2026-02-02 23:27:25.956486
article-48472988	software engineering manager	January 24, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956487
article-48473067	director of technology management	January 24, 2026	Vancouver (BC)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956488
article-48473151	artificial intelligence (AI) consultant	January 24, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956489
article-48473264	information technology (IT) director	January 24, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.95649
article-48473315	data mining analyst	January 24, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956491
article-48473451	data scientist	January 24, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956492
article-48473526	artificial intelligence (AI) consultant	January 24, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956493
article-48473676	data mining analyst	January 24, 2026	Mississauga (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956494
article-48473902	software developer	January 24, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956495
article-48460863	manager, IT (information technology) implementation	January 24, 2026	Montréal (QC)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956496
article-48459098	cloud operations manager	January 24, 2026	Greater Sudbury (ON)	Salary $23.00 to $25.00 hourly	2026-02-02 23:27:25.956497
article-48457128	operations supervisor	January 24, 2026	Hope (BC)	Salary $36.70 hourly	2026-02-02 23:27:25.956498
article-48455509	manager, IT (information technology) implementation	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956499
article-48455613	director of technology management	January 23, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.9565
article-48456974	manager, computer applications	January 23, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956501
article-48450363	cybersecurity manager	January 23, 2026	Montréal (QC)	Salary $45,000.00 annually	2026-02-02 23:27:25.956502
article-48496067	artificial intelligence (AI) consultant	January 25, 2026	Mississauga (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956502
article-48496304	artificial intelligence (AI) consultant	January 25, 2026	Mississauga (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956505
article-48496860	data scientist	January 25, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956506
article-48497481	artificial intelligence (AI) consultant	January 25, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956507
article-48497534	data scientist	January 25, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956508
article-48497971	director of software engineering	January 25, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956509
article-48498114	manager, computer applications	January 25, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.95651
article-48488068	data scientist	January 25, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956511
article-48488577	data scientist	January 25, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956512
article-48488777	data analyst - informatics and systems	January 25, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956513
article-48488794	software developer	January 24, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956514
article-48485047	manager, data processing and systems analysis	January 24, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956517
article-48485766	data scientist	January 24, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956518
article-48486597	data mining analyst	January 24, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956519
article-48486661	manager, IT (information technology) implementation	January 24, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.95652
article-48556069	data analyst - informatics and systems	January 27, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-02 23:27:25.956521
article-48554110	senior software developer	January 27, 2026	Vancouver (BC)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956522
article-48554146	data analyst - informatics and systems	January 27, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956523
article-48551779	developer, software	January 27, 2026	Montréal (QC)	Salary $90,000.00 to $110,000.00 annually	2026-02-02 23:27:25.956524
article-48551893	data scientist	January 27, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956525
article-48551864	director of technology management	January 27, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956526
article-48551857	manager, computer applications	January 27, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956527
article-48552417	artificial intelligence (AI) consultant	January 27, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956528
article-48552438	software developer	January 27, 2026	Vancouver (BC)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.95653
article-48552513	data scientist	January 27, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956531
article-48552563	information technology (IT) director	January 27, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956532
article-48552598	data scientist	January 27, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956533
article-48552752	artificial intelligence (AI) consultant	January 27, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956533
article-48552821	artificial intelligence (AI) consultant	January 27, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956534
article-48552891	data scientist	January 27, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956535
article-48553048	software engineering manager	January 27, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956536
article-48553127	director of technology management	January 27, 2026	Vancouver (BC)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956537
article-48553209	artificial intelligence (AI) consultant	January 27, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956538
article-48553323	information technology (IT) director	January 27, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956539
article-48553542	data scientist	January 27, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95654
article-48553684	manager, data processing and systems analysis	January 27, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956541
article-48553872	manager, IT (information technology) implementation	January 27, 2026	Montréal (QC)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956542
article-48549187	analyst, database	January 27, 2026	Toronto (ON)	Salary $25.00 hourly	2026-02-02 23:27:25.956543
article-48547130	data engineer	January 27, 2026	Vancouver (BC)	Salary $98,000.00 to $125,000.00 annually	2026-02-02 23:27:25.956544
article-48546913	computer application programmer	January 27, 2026	Toronto (ON)	Salary $130,000.00 annually	2026-02-02 23:27:25.956545
article-48543590	director of technology management	January 27, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956546
article-48544343	director of technology management	January 27, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956547
article-48539985	software developer	January 27, 2026	Markham (ON)	Salary $47.60 hourly	2026-02-02 23:27:25.956548
article-48538921	manager, data processing and systems analysis	January 27, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956549
article-48539537	database architect	January 27, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.95655
article-48539534	architect, database	January 27, 2026	Toronto (ON)	Salary $25.38 to $61.54 hourly	2026-02-02 23:27:25.956551
article-48538827	artificial intelligence (AI) consultant	January 27, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956552
article-48538232	software developer	January 26, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956553
article-48530876	software developer	January 26, 2026	Mississauga (ON)	Salary $100,000.00 annually	2026-02-02 23:27:25.956554
article-48524713	data scientist	January 26, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956555
article-48524763	artificial intelligence (AI) consultant	January 26, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956556
article-48523486	data processing and systems analysis manager	January 26, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956557
article-48524146	software development manager	January 26, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956558
article-48523156	senior software developer	January 26, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956559
article-48523160	senior software developer	January 26, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956563
article-48524455	senior software developer	January 26, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956564
article-48524095	software developer	January 26, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956565
article-48524224	director, data processing	January 26, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956566
article-48524450	software developer	January 26, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956567
article-48523293	manager, IT (information technology) implementation	January 26, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956568
article-48524063	artificial intelligence (AI) consultant	January 26, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956569
article-48524545	artificial intelligence (AI) consultant	January 26, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.95657
article-48523653	director of technology management	January 26, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956571
article-48523556	manager, computer applications	January 26, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956572
article-48524160	director of technology management	January 26, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956573
article-48522587	computer programs manager	January 26, 2026	Montréal (QC)	Salary $91,420.00 annually	2026-02-02 23:27:25.956574
article-48519677	data scientist	January 26, 2026	Markham (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956575
article-48547101	software developer	January 26, 2026	Montréal (QC)	Salary $65.52 to $80.00 hourly	2026-02-02 23:27:25.956576
article-48687866	cloud developer	February 01, 2026	Toronto (ON)	Salary $25.00 to $63.00 hourly	2026-02-02 23:27:25.956577
article-48688420	software developer	February 01, 2026	Toronto (ON)	Salary $25.00 to $63.00 hourly	2026-02-02 23:27:25.956578
article-48688513	software developer	February 01, 2026	Calgary (AB)	Salary $25.00 to $63.00 hourly	2026-02-02 23:27:25.956579
article-48679906	manager, data processing and systems analysis	January 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.95658
article-48680121	data mining analyst	January 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956581
article-48680353	manager, computer applications	January 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956582
article-48680933	data mining analyst	January 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956583
article-48681616	data mining analyst	January 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956584
article-48665874	senior software developer	January 31, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956585
article-48665794	data scientist	January 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956586
article-48666204	artificial intelligence (AI) consultant	January 31, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956587
article-48666285	information technology (IT) director	January 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956588
article-48666312	data scientist	January 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956589
article-48666470	senior software developer	January 31, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.95659
article-48666650	senior software developer	January 31, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956591
article-48667187	data scientist	January 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956592
article-48666948	manager, computer systems	January 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956593
article-48666977	senior software developer	January 31, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956594
article-48666990	senior software developer	January 31, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956595
article-48667215	director, data processing	January 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956596
article-48667569	manager, computer applications	January 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956597
article-48667579	software developer	January 31, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956601
article-48667694	artificial intelligence (AI) consultant	January 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956602
article-48667695	manager, data processing and systems analysis	January 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956603
article-48667773	software developer	January 31, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956604
article-48657806	artificial intelligence (AI) consultant	January 31, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956605
article-48651309	operations supervisor	January 30, 2026	Pointe-aux-Trembles (QC)	Salary $60,000.00 to $70,000.00 annually	2026-02-02 23:27:25.956606
article-48646389	computerized information systems manager	January 30, 2026	Surrey (BC)	Salary $60.10 hourly	2026-02-02 23:27:25.956607
article-48644611	software developer	January 30, 2026	Mississauga (ON)	Salary $53.00 hourly	2026-02-02 23:27:25.956608
article-48644023	data administrator	January 30, 2026	Edmonton (AB)	Salary $46.00 hourly	2026-02-02 23:27:25.956609
article-48643903	machine learning specialist	January 30, 2026	Vancouver (BC)	Salary $111,775.00 to $111,776.00 annually (to be negotiated)	2026-02-02 23:27:25.95661
article-48641573	cloud developer	January 30, 2026	Calgary (AB)	Salary $115,000.00 to $140,000.00 annually	2026-02-02 23:27:25.956611
article-48641138	senior software developer	January 30, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956612
article-48639925	senior software developer	January 30, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956613
article-48640491	software developer	January 30, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956614
article-48638771	artificial intelligence (AI) consultant	January 30, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956615
article-48639606	data scientist	January 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956616
article-48638676	senior software developer	January 30, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956617
article-48641215	manager, computer applications	January 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956618
article-48640240	manager, IT (information technology) implementation	January 30, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956619
article-48639028	computer applications manager	January 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.95662
article-48640306	operations supervisor	January 30, 2026	Vernon (BC)	Salary $22.00 to $46.00 hourly	2026-02-02 23:27:25.956621
article-48640934	manager, computer applications	January 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956622
article-48634272	software developer	January 30, 2026	Victoria (BC)	Salary $61,190.01 to $125,222.74 annually	2026-02-02 23:27:25.956622
article-48632389	data engineer	January 30, 2026	Toronto (ON)	Salary $45.00 to $55.00 hourly	2026-02-02 23:27:25.956623
article-48632258	software developer	January 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956624
article-48632304	software developer	January 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956625
article-48632306	software developer	January 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956626
article-48631803	manager, IT (information technology) implementation	January 30, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956627
article-48515545	data scientist	January 23, 2026	Toronto (ON)	Salary $59.00 to $69.00 hourly	2026-02-02 23:27:25.956628
article-48515660	software developer	January 23, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956629
article-48628351	data architect	January 23, 2026	Toronto (ON)	Salary $150,000.00 annually	2026-02-02 23:27:25.95663
article-48670638	manager, computer applications	January 23, 2026	Toronto (ON)	Salary $81,442.00 to $146,641.00 annually	2026-02-02 23:27:25.956631
article-48547050	computer application programmer	January 23, 2026	Coquitlam (BC)	Salary $35.00 to $40.00 hourly	2026-02-02 23:27:25.956632
article-48597119	manager, IT (information technology) implementation	January 23, 2026	Montréal (QC)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956633
article-48628081	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956634
article-48628265	software developer	January 22, 2026	Montréal (QC)	Salary $110,000.00 to $115,000.00 annually	2026-02-02 23:27:25.956635
article-48628033	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956636
article-48628056	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956637
article-48628225	software developer	January 22, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956638
article-48628252	software developer	January 22, 2026	Waterloo (ON)	Salary $80,000.00 annually	2026-02-02 23:27:25.956639
article-48455162	director of technology management	January 22, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.95664
article-48546855	computer application programmer	January 22, 2026	Woodstock (ON)	Salary $45.87 hourly	2026-02-02 23:27:25.956641
article-48427790	big data analyst	January 21, 2026	Drayton Valley (AB)	Salary $45.30 hourly	2026-02-02 23:27:25.956642
article-48627873	software developer	January 21, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956643
article-48432371	software developer	January 21, 2026	Boisbriand (QC)	Salary $90,000.00 to $110,000.00 annually	2026-02-02 23:27:25.956644
article-48632161	software developer	January 20, 2026	Mississauga (ON)	Salary $67,592.40 annually	2026-02-02 23:27:25.956645
article-48542507	data architect	January 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956646
article-48542598	software developer	January 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956647
article-48627878	software developer	January 20, 2026	Cambridge (ON)	Salary $40,000.00 to $55,000.00 annually	2026-02-02 23:27:25.956651
article-48542546	software developer	January 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956652
article-48596563	data scientist	January 20, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-02 23:27:25.956653
article-48389262	manager, data processing and systems analysis	January 20, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956654
article-48510210	manager, computer systems	January 20, 2026	Mississauga (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956655
article-48546996	computer application programmer	January 19, 2026	Burnaby (BC)	Salary $70,000.00 to $100,000.00 annually	2026-02-02 23:27:25.956656
article-48293873	data mining analyst	January 19, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956657
article-48294411	software developer	January 19, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956658
article-48294717	software developer	January 19, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956659
article-48515582	software developer	January 19, 2026	Fort McMurray (AB)	Salary $29.00 hourly	2026-02-02 23:27:25.95666
article-48515770	software developer	January 19, 2026	Fort McMurray (AB)	Salary $29.00 hourly	2026-02-02 23:27:25.956661
article-48432460	software developer	January 19, 2026	London (ON)	Salary $18.00 hourly	2026-02-02 23:27:25.956662
article-48489045	director of technology management	January 10, 2026	Mississauga (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956663
article-48005514	software developer	January 09, 2026	Calgary (AB)	Salary $48.50 hourly	2026-02-02 23:27:25.956667
article-48004179	senior software developer	January 09, 2026	Kanata (ON)	Salary $110,000.00 to $140,000.00 annually	2026-02-02 23:27:25.956668
article-48003954	operations supervisor	January 09, 2026	Montréal (QC)	Salary $60,000.00 annually	2026-02-02 23:27:25.956669
article-47986447	software development manager	January 09, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.95667
article-47985574	software developer	January 09, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956671
article-48547137	computer application programmer	January 09, 2026	Toronto (ON)	Salary $85,280.00 annually	2026-02-02 23:27:25.956672
article-47985656	office supervisor	January 09, 2026	Toronto (ON)	Salary $20.67 to $45.00 hourly	2026-02-02 23:27:25.956673
article-47985995	manager, IT (information technology) implementation	January 09, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956674
article-47986458	manager, IT (information technology) implementation	January 09, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956675
article-47985033	technical program manager - information technology (IT)	January 08, 2026	Ottawa (ON)	Salary $66.70 hourly	2026-02-02 23:27:25.956676
article-47975012	records office supervisor	January 08, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-02-02 23:27:25.956677
article-47974831	software developer	January 08, 2026	Vancouver (BC)	Salary $60,000.00 to $65,000.00 annually	2026-02-02 23:27:25.956678
article-47954746	software developer	January 08, 2026	Toronto (ON)	Salary $28.75 to $69.71 hourly	2026-02-02 23:27:25.956679
article-48052283	data processing director	January 08, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.95668
article-48052748	director of technology management	January 08, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956681
article-47990090	cloud developer	January 08, 2026	Edmonton (AB)	Salary $46,373.38 to $89,785.66 annually	2026-02-02 23:27:25.956682
article-47883781	computer department coordinator	January 05, 2026	Montréal (QC)	Salary $80,000.00 to $100,000.00 annually	2026-02-02 23:27:25.956683
article-48341418	software developer	January 05, 2026	North York (ON)	Salary $97,000.00 to $100,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956687
article-47876940	director of technology	January 05, 2026	Georgetown (ON)	Salary $150,000.00 annually	2026-02-02 23:27:25.956688
article-48359553	application programmer	January 05, 2026	Surrey (BC)	Salary $62.00 hourly	2026-02-02 23:27:25.956689
article-48490289	software developer	January 05, 2026	Toronto (ON)	Salary $45.00 hourly	2026-02-02 23:27:25.95669
article-48490348	software developer	January 05, 2026	Vaughan (ON)	Salary $45.00 hourly	2026-02-02 23:27:25.95669
article-47774596	operations supervisor	December 31, 2025	Surrey (BC)	Salary $36.60 hourly	2026-02-02 23:27:25.956691
article-47734964	supervisor, clinical receptionists	December 30, 2025	Toronto (ON)	Salary $38.00 hourly	2026-02-02 23:27:25.956692
article-47708329	office supervisor	December 29, 2025	Brampton (ON)	Salary $36.00 to $40.00 hourly (to be negotiated)	2026-02-02 23:27:25.956693
article-47706761	office supervisor	December 29, 2025	Scarborough (ON)	Salary $44.34 hourly	2026-02-02 23:27:25.956694
article-48439710	software developer	December 18, 2025	Fergus (ON)	Salary $49.00 hourly	2026-02-02 23:27:25.956695
article-48409938	data scientist	December 10, 2025	Toronto (ON)	Salary $11,250.00 monthly	2026-02-02 23:27:25.956696
article-48551476	software developer	December 08, 2025	Miller Lake (ON)	Salary $50.00 hourly	2026-02-02 23:27:25.956697
article-48400894	operations supervisor	November 21, 2025	Québec (QC)	Salary $55,000.00 to $57,000.00 annually (to be negotiated)	2026-02-02 23:27:25.956698
article-48638630	software developer	November 18, 2025	Hamilton (ON)	Salary $43.60 hourly	2026-02-02 23:27:25.956699
article-48610926	data entry supervisor	November 06, 2025	Concord (ON)	Salary $36.00 hourly	2026-02-02 23:27:25.9567
article-48527912	software developer	October 31, 2025	Victoria (BC)	Salary $51.28 hourly	2026-02-02 23:27:25.956701
article-48595363	data entry clerks supervisor	October 17, 2025	Scarborough (ON)	Salary $36.00 hourly	2026-02-02 23:27:25.956702
article-48721617	business systems manager	February 02, 2026	Brampton (ON)	Salary $70.00 hourly	2026-02-02 23:27:25.956703
article-48707201	software developer	February 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956704
article-48706346	software developer	February 01, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956705
article-48703459	artificial intelligence (AI) consultant	February 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956706
article-48695904	senior software developer	February 01, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956707
article-48693904	director of technology management	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956708
article-48694262	data scientist	February 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956709
article-48694408	manager, IT (information technology) implementation	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.95671
article-48694507	manager, computer applications	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956711
article-48694593	senior software developer	February 01, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956712
article-48694679	senior software developer	February 01, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956713
article-48694820	director of technology management	February 01, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956714
article-48694991	information technology (IT) director	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956715
article-48695325	manager, data processing and systems analysis	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956716
article-48695072	software developer	February 01, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-02 23:27:25.956717
article-48695145	software development manager	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956718
article-48695213	data mining analyst	February 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956719
article-48695211	software development manager	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.95672
article-48695690	artificial intelligence (AI) consultant	February 01, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956721
article-48695677	software development manager	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956722
article-48695772	data scientist	February 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-02 23:27:25.956723
article-48667931	information technology (IT) director	January 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956724
article-48715351	software developer	January 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956725
article-48715337	software developer	January 30, 2026	Toronto (ON)	Salary $100,000.00 to $130,000.00 annually	2026-02-02 23:27:25.956726
article-48715233	software developer	January 30, 2026	Toronto (ON)	Salary $74.00 to $88.00 hourly	2026-02-02 23:27:25.956727
article-48715352	software developer	January 30, 2026	Vaughan (ON)	Salary $100,000.00 annually	2026-02-02 23:27:25.956728
article-48715267	software developer	January 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956729
article-48715027	software developer	January 30, 2026	Westmount (QC)	Salary $100,000.00 to $1,350,000.00 annually	2026-02-02 23:27:25.95673
article-48627108	manager, IT (information technology) implementation	January 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.95673
article-48627274	manager, IT (information technology) implementation	January 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-02 23:27:25.956731
article-48621697	PC (personal computer) application developer	January 29, 2026	Brossard (QC)	Salary $110,000.00 to $120,000.00 annually	2026-02-02 23:27:25.956732
article-48621121	computer projects manager	January 29, 2026	Terrebonne (QC)	Salary $48.91 to $65.91 hourly	2026-02-02 23:27:25.956733
article-48618876	information technology (IT) implementation manager	January 29, 2026	Burnaby (BC)	Salary $94,142.00 annually	2026-02-02 23:27:25.956734
article-48710936	software developer	January 22, 2026	Vancouver (BC)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956736
article-48710745	data architect	January 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956737
article-48710849	software developer	January 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956737
article-48710785	software developer	January 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956738
article-48628360	data engineer	January 16, 2026	Vancouver (BC)	Salary $100,000.00 annually	2026-02-02 23:27:25.956739
article-48628174	software developer	January 16, 2026	Toronto (ON)	Salary $80,000.00 annually	2026-02-02 23:27:25.956741
article-48628276	software developer	January 16, 2026	LaSalle (ON)	Salary $50,000.00 annually	2026-02-02 23:27:25.956741
article-48628145	software developer	January 16, 2026	Vancouver (BC)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956742
article-48628337	software developer	January 16, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956743
article-48628280	software developer	January 16, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956744
article-48188872	software developer	January 15, 2026	Calgary (AB)	Salary $48.08 hourly	2026-02-02 23:27:25.956745
article-48628161	software developer	January 15, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956746
article-48710778	software developer	January 15, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-02 23:27:25.956747
article-48388722	director, data processing	January 15, 2026	Québec (QC)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956748
article-48205223	developer, software	January 15, 2026	Blainville (QC)	Salary $55,000.00 annually	2026-02-02 23:27:25.956749
article-48294334	director of technology management	January 15, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.95675
article-48627812	software developer	January 13, 2026	Toronto (ON)	Salary $55.00 hourly	2026-02-02 23:27:25.956751
article-48106647	computer projects manager	January 12, 2026	Montréal (QC)	Salary $100,000.00 to $130,000.00 annually	2026-02-02 23:27:25.956752
article-48102891	data administrator	January 12, 2026	Mississauga (ON)	Salary $43.96 hourly	2026-02-02 23:27:25.956753
article-48079990	manager, computer applications	January 12, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-02 23:27:25.956754
article-48053053	data mining analyst	January 11, 2026	Toronto (ON)	Salary $29.74 to $64.90 hourly	2026-02-02 23:27:25.956755
article-48325287	manager, IT (information technology) implementation	January 11, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-02 23:27:25.956756
article-48737104	artificial intelligence (AI) consultant	February 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-03 05:45:04.539103
article-48737130	senior software developer	February 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-03 05:45:04.539108
article-48738002	manager, computer applications	February 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-03 05:45:04.539108
article-48738296	database architect	February 03, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-03 05:45:04.539109
article-48735349	data scientist	February 02, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-03 05:45:04.53911
article-48736284	manager, data processing and systems analysis	February 02, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-03 05:45:04.53911
article-48734669	data engineer	February 02, 2026	Kirkland (QC)	Salary $75,000.00 to $120,000.00 annually	2026-02-03 05:45:04.539111
article-48729935	cloud developer	February 02, 2026	Scarborough (ON)	Salary $28.02 hourly	2026-02-03 05:45:04.539112
article-48729939	software developer	February 02, 2026	Kitchener (ON)	Salary $90,000.00 to $110,000.00 annually	2026-02-03 05:45:04.539113
article-48727721	senior software developer	February 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-03 05:45:04.539114
article-48724882	data engineer	February 02, 2026	Toronto (ON)	Salary $41.26 to $60.00 hourly	2026-02-03 05:45:04.539114
article-48721779	artificial intelligence (AI) consultant	February 02, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-03 05:45:04.539115
article-48723105	senior software developer	February 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-03 05:45:04.539115
article-48723427	manager, computer systems	February 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-03 05:45:04.539116
article-48723598	software developer	February 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-03 05:45:04.539116
article-48723716	director, data processing	February 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-03 05:45:04.539117
article-48723891	director of technology management	February 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-03 05:45:04.539118
article-48723866	data scientist	February 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-03 05:45:04.539118
article-48724260	senior software developer	February 02, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-03 05:45:04.539119
article-48724393	data processing director	February 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-03 05:45:04.539119
article-48724411	manager, computer applications	February 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-03 05:45:04.53912
article-48749630	office services supervisor	February 03, 2026	Saint-Laurent (QC)	Salary $65,000.00 annually	2026-02-03 16:02:38.750505
article-48746002	director of technology management	February 03, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-03 16:02:38.750509
article-48747146	director of technology management	February 03, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-03 16:02:38.75051
article-48747360	manager, data processing and systems analysis	February 03, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-03 16:02:38.750511
article-48747349	director of technology management	February 03, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-03 16:02:38.750511
article-48782791	artificial intelligence (AI) consultant	February 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-04 15:58:34.5843
article-48771771	developer, software	February 04, 2026	Dundas (ON)	Salary $64,000.00 to $75,000.00 annually	2026-02-04 15:58:34.584304
article-48771405	software developer	February 04, 2026	Toronto (ON)	Salary $70.00 to $110.00 hourly	2026-02-04 15:58:34.584304
article-48769339	software developer	February 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-04 15:58:34.584305
article-48769920	data analyst - informatics and systems	February 04, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-04 15:58:34.584305
article-48766927	manager, data processing and systems analysis	February 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-04 15:58:34.584306
article-48767288	software development manager	February 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-04 15:58:34.584307
article-48767359	manager, computer applications	February 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-04 15:58:34.584308
article-48764801	cloud developer	February 03, 2026	Mississauga (ON)	Salary $70,000.00 to $95,000.00 annually	2026-02-04 15:58:34.584308
article-48762315	senior software developer	February 03, 2026	London (ON)	Salary $64.48 hourly	2026-02-04 15:58:34.584309
article-48761041	operations supervisor	February 03, 2026	Concord (ON)	Salary $36.10 hourly	2026-02-04 15:58:34.58431
article-48758967	data analytics consultant	February 03, 2026	Mississauga (ON)	Salary $46.50 to $50.00 hourly (to be negotiated)	2026-02-04 15:58:34.58431
article-48757522	office services supervisor	February 03, 2026	Saint-Laurent (QC)	Salary $29.00 to $32.00 hourly	2026-02-04 15:58:34.584311
article-48757455	DBA (database administrator)	February 03, 2026	Terrebonne (QC)	Salary $43.00 hourly	2026-02-04 15:58:34.584311
article-48757378	DBA (database analyst)	February 03, 2026	Montréal (QC)	Salary $35.00 hourly	2026-02-04 15:58:34.584312
article-48755387	senior software developer	February 03, 2026	Dorval (QC)	Salary $70,000.00 to $90,000.00 annually	2026-02-04 15:58:34.584312
article-48754782	information technology (IT) director	February 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-04 15:58:34.584313
article-48752022	senior software developer	February 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-04 15:58:34.584313
article-48753398	data scientist	February 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-04 15:58:34.584314
article-48753739	operations supervisor	February 03, 2026	Vernon (BC)	Salary $22.00 to $46.00 hourly	2026-02-04 15:58:34.584314
article-48753824	director of software engineering	February 03, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-02-04 15:58:34.584315
article-48754054	data scientist	February 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-04 15:58:34.584315
article-48754402	software developer	February 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-04 15:58:34.584315
article-48769399	software developer	February 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-04 15:58:45.778047
article-48769855	manager, IT (information technology) implementation	February 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-04 15:58:45.778052
article-48813239	manager, data processing and systems analysis	February 05, 2026	Vancouver (BC)	Salary $40.00 to $92.00 hourly	2026-02-05 15:55:15.820172
article-48810337	software developer	February 05, 2026	Timmins (ON)	Salary $20.00 hourly	2026-02-05 15:55:15.820177
article-48802885	manager, IT (information technology) implementation	February 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-05 15:55:15.820177
article-48802935	artificial intelligence (AI) consultant	February 05, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-05 15:55:15.820178
article-48803410	data scientist	February 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-05 15:55:15.820179
article-48803977	mobile applications developer	February 05, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-05 15:55:15.820179
article-48800214	artificial intelligence (AI) consultant	February 04, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-05 15:55:15.82018
article-48795130	records office supervisor	February 04, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-02-05 15:55:15.820181
article-48795051	data scientist	February 04, 2026	Toronto (ON)	Salary $150,000.00 to $210,000.00 annually	2026-02-05 15:55:15.820182
article-48792250	cloud developer	February 04, 2026	Gravenhurst (ON)	Salary $22.00 to $26.00 hourly	2026-02-05 15:55:15.820182
article-48789541	cloud developer	February 04, 2026	Newmarket (ON)	Salary $110,000.00 to $130,000.00 annually	2026-02-05 15:55:15.820183
article-48789158	data administrator	February 04, 2026	Richmond (BC)	Salary $45.00 to $48.00 hourly (to be negotiated)	2026-02-05 15:55:15.820184
article-48786051	operations supervisor	February 04, 2026	Langley (BC)	Salary $45.80 hourly	2026-02-05 15:55:15.820184
article-48786574	director of technology management	February 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-05 15:55:15.820185
article-48787558	senior software developer	February 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-05 15:55:15.820185
article-48788430	manager, data processing and systems analysis	February 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-05 15:55:15.820186
article-48788517	software developer	February 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-05 15:55:15.820186
article-48788654	manager, computer applications	February 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-05 15:55:15.820187
article-48810066	software developer	February 04, 2026	Toronto (ON)	Salary $80,000.00 annually	2026-02-05 15:55:15.820187
article-48807715	software developer	February 04, 2026	Woodstock (ON)	Salary $25.00 to $40.00 hourly	2026-02-05 15:55:15.820188
article-48810031	software developer	February 04, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-02-05 15:55:15.820188
article-48810270	software developer	February 04, 2026	Hamilton (ON)	Salary $28.74 to $33.14 hourly	2026-02-05 15:55:24.776891
article-48810312	software developer	February 03, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-02-05 15:55:33.976524
article-48810109	software developer	February 03, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:55:33.976529
article-48809982	software developer	February 03, 2026	Fort McMurray (AB)	Salary $29.00 hourly	2026-02-05 15:55:33.97653
article-48810385	software developer	February 03, 2026	Toronto (ON)	Salary $21.12 hourly	2026-02-05 15:55:33.97653
article-48774066	data engineer	February 02, 2026	Kirkland (QC)	Salary $90,000.00 to $120,000.00 annually	2026-02-05 15:55:43.621375
article-48810474	software developer	February 02, 2026	Toronto (ON)	Salary $70,000.00 to $110,000.00 annually	2026-02-05 15:55:43.621381
article-48809986	software developer	February 02, 2026	Hamilton (ON)	Salary $12.00 hourly	2026-02-05 15:55:43.621382
article-48810341	software developer	February 02, 2026	Guelph (ON)	Salary $12.00 hourly	2026-02-05 15:55:43.621383
article-48766615	data scientist	February 02, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-05 15:55:43.621384
article-48807761	business data analyst	February 02, 2026	Ayr (ON)	Salary $70,000.00 to $85,000.00 annually	2026-02-05 15:55:43.621385
article-48803256	data scientist	February 02, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-05 15:55:43.621386
article-48681804	data analyst - informatics and systems	February 01, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-05 15:55:43.621387
article-48810294	software developer	February 01, 2026	Toronto (ON)	Salary $21.12 hourly	2026-02-05 15:55:52.69764
article-48681484	artificial intelligence (AI) consultant	February 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-05 15:55:52.697646
article-48680243	manager, IT (information technology) implementation	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-05 15:55:52.697647
article-48680477	manager, IT (information technology) implementation	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-05 15:55:52.697648
article-48681646	manager, computer applications	February 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-05 15:55:52.697649
article-48655372	data mining analyst	January 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-05 15:55:52.69765
article-48653765	data mining analyst	January 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-05 15:55:52.697651
article-48654448	data scientist	January 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-05 15:55:52.697652
article-48618111	information technology (IT) service delivery manager	January 29, 2026	Markham (ON)	Salary $68.00 to $70.00 hourly (to be negotiated)	2026-02-05 15:56:02.089539
article-48617784	software developer	January 29, 2026	Toronto (ON)	Salary $48.08 to $50.00 hourly (to be negotiated)	2026-02-05 15:56:02.089545
article-48608973	artificial intelligence (AI) consultant	January 29, 2026	Sainte-Thérèse (QC)	Salary $46.37 hourly	2026-02-05 15:56:02.089545
article-48601358	data mining analyst	January 29, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-05 15:56:02.089546
article-48805244	software developer	January 29, 2026	Toronto (ON)	Salary $83.00 to $100.00 hourly	2026-02-05 15:56:02.089547
article-48632383	software developer	January 29, 2026	Toronto (ON)	Salary $130,000.00 annually	2026-02-05 15:56:02.089547
article-48632242	software developer	January 29, 2026	Toronto (ON)	Salary $75,000.00 to $110,000.00 annually	2026-02-05 15:56:11.068587
article-48632404	software developer	January 29, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:11.068594
article-48632299	software developer	January 29, 2026	Montréal (QC)	Salary $58.62 to $70.00 hourly	2026-02-05 15:56:11.068595
article-48632282	software developer	January 29, 2026	Westmount (QC)	Salary $100,000.00 to $1,350,000.00 annually	2026-02-05 15:56:11.068596
article-48786148	cloud developer	January 29, 2026	Montréal (QC)	Salary $75,000.00 to $100,000.00 annually	2026-02-05 15:56:11.068597
article-48596172	manager, computer applications	January 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-05 15:56:11.068598
article-48589502	cloud developer	January 28, 2026	North York (ON)	Salary $70,000.00 to $120,000.00 annually	2026-02-05 15:56:11.068599
article-48586659	office clerks supervisor	January 28, 2026	Montréal (QC)	Salary $38.00 to $39.00 hourly (to be negotiated)	2026-02-05 15:56:11.068599
article-48584525	cloud developer	January 28, 2026	Calgary (AB)	Salary $28.00 to $30.00 hourly	2026-02-05 15:56:11.0686
article-48583243	data scientist	January 28, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-05 15:56:11.068601
article-48581285	technical program manager - information technology (IT)	January 28, 2026	Concord (ON)	Salary $11,800.00 monthly	2026-02-05 15:56:11.068602
article-48579349	computer projects manager	January 28, 2026	Québec (QC)	Salary $85,000.00 to $100,000.00 annually	2026-02-05 15:56:11.068603
article-48579043	software developer	January 28, 2026	Calgary (AB)	Salary $41.00 hourly	2026-02-05 15:56:11.068604
article-48577495	data scientist	January 28, 2026	London (ON)	Salary $30.00 to $69.74 hourly	2026-02-05 15:56:11.068605
article-48578880	data scientist	January 28, 2026	London (ON)	Salary $30.00 to $69.74 hourly	2026-02-05 15:56:11.068606
article-48568428	data mining analyst	January 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-05 15:56:11.068607
article-48804999	software developer	January 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:11.068609
article-48630139	software developer	January 28, 2026	Edmonton (AB)	Salary $4,000.00 to $6,000.00 monthly	2026-02-05 15:56:11.06861
article-48805419	software developer	January 28, 2026	Westmount (QC)	Salary $90,000.00 to $1,250,000.00 annually	2026-02-05 15:56:11.068611
article-48567789	data analyst - informatics and systems	January 28, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-05 15:56:11.068612
article-48805096	machine learning engineer	January 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:11.068613
article-48568252	manager, IT (information technology) implementation	January 28, 2026	London (ON)	Salary $43.75 to $103.37 hourly	2026-02-05 15:56:11.068614
article-48562247	administrator, data	January 27, 2026	Sherbrooke (QC)	Salary $64,173.00 to $104,013.00 annually	2026-02-05 15:56:11.068615
article-48561389	software developer	January 27, 2026	Vancouver (BC)	Salary $52.50 hourly	2026-02-05 15:56:11.068615
article-48559529	artificial intelligence (AI) analyst	January 27, 2026	Mississauga (ON)	Salary $51.90 hourly	2026-02-05 15:56:11.068617
article-48558972	senior software developer	January 27, 2026	Toronto (ON)	Salary $100,000.00 to $150,000.00 monthly (to be negotiated)	2026-02-05 15:56:19.016493
article-48557331	cloud developer	January 27, 2026	Edmonton (AB)	Salary $56.78 to $60.55 hourly	2026-02-05 15:56:19.016502
article-48741482	data engineer	January 27, 2026	Vancouver (BC)	Salary $98,000.00 to $125,000.00 annually	2026-02-05 15:56:19.016524
article-48805428	software developer	January 27, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:19.016526
article-48805030	software developer	January 27, 2026	Toronto (ON)	Salary $21.12 hourly	2026-02-05 15:56:19.016527
article-48508982	manager, data processing and systems analysis	January 26, 2026	Surrey (BC)	Salary $40.00 to $92.00 hourly	2026-02-05 15:56:19.016528
article-48509015	manager, data processing and systems analysis	January 26, 2026	Alert Bay (BC)	Salary $40.00 to $92.00 hourly	2026-02-05 15:56:19.016529
article-48509926	manager, data processing and systems analysis	January 26, 2026	Coquitlam (BC)	Salary $40.00 to $92.00 hourly	2026-02-05 15:56:19.01653
article-48741445	software developer	January 26, 2026	Montréal (QC)	Salary $65.52 to $80.00 hourly	2026-02-05 15:56:19.016531
article-48805217	software developer	January 26, 2026	London (ON)	Salary $18.00 hourly	2026-02-05 15:56:19.016532
article-48455110	manager, data processing and systems analysis	January 24, 2026	Vancouver (BC)	Salary $40.00 to $92.00 hourly	2026-02-05 15:56:29.265105
article-48710885	software developer	January 24, 2026	Toronto (ON)	Salary $100,000.00 annually	2026-02-05 15:56:29.26511
article-48710742	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:29.265111
article-48710924	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:29.265112
article-48710806	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:29.265112
article-48710645	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:29.265113
article-48710808	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:29.265113
article-48710854	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:29.265114
article-48450433	operations supervisor	January 23, 2026	Richmond (BC)	Salary $58,500.00 to $59,900.00 annually	2026-02-05 15:56:29.265115
article-48450181	database analyst	January 23, 2026	Vancouver (BC)	Salary $44.15 hourly	2026-02-05 15:56:29.265116
article-48448817	business data analyst	January 23, 2026	Nepean (ON)	Salary $3,850.00 biweekly	2026-02-05 15:56:29.265116
article-48710764	software developer	January 23, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:39.025788
article-48790322	manager, computer applications	January 23, 2026	Toronto (ON)	Salary $81,442.00 to $146,641.00 annually	2026-02-05 15:56:39.025795
article-48805282	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:39.025796
article-48805535	software developer	January 22, 2026	Montréal (QC)	Salary $110,000.00 to $115,000.00 annually	2026-02-05 15:56:39.025797
article-48805221	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:39.025798
article-48805236	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:39.0258
article-48805461	software developer	January 22, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:39.025801
article-48809999	software developer	January 21, 2026	Boisbriand (QC)	Salary $90,000.00 to $110,000.00 annually	2026-02-05 15:56:49.088887
article-48804998	software developer	January 20, 2026	Cambridge (ON)	Salary $40,000.00 to $55,000.00 annually	2026-02-05 15:56:49.088891
article-48387937	software developer	January 18, 2026	Toronto (ON)	Salary $25.00 to $63.00 hourly	2026-02-05 15:56:57.035371
article-48388346	data scientist	January 18, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-05 15:56:57.035377
article-48388235	data scientist	January 18, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-05 15:56:57.035378
article-48388911	director of technology management	January 18, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-05 15:56:57.035379
article-48805613	software developer	January 17, 2026	Vancouver (BC)	Salary $108,992.00 to $130,000.00 annually	2026-02-05 15:56:57.03538
article-48805261	software developer	January 17, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-02-05 15:56:57.03538
article-48805595	information systems manager	January 17, 2026	Vancouver (BC)	Salary $100,000.00 annually	2026-02-05 15:56:57.035381
article-48805634	data engineer	January 16, 2026	Vancouver (BC)	Salary $100,000.00 annually	2026-02-05 15:56:57.035381
article-48805375	software developer	January 16, 2026	Toronto (ON)	Salary $80,000.00 annually	2026-02-05 15:57:04.436833
article-48805352	software developer	January 16, 2026	Vancouver (BC)	Salary $10,000.00 monthly	2026-02-05 15:57:04.43684
article-48805601	software developer	January 16, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:57:04.436841
article-48805548	software developer	January 16, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:57:04.436842
article-48805363	software developer	January 15, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-05 15:57:04.436843
article-48295242	manager, IT (information technology) implementation	January 15, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-05 15:57:04.436844
article-48810305	operations supervisor	January 15, 2026	St. Marys (ON)	Salary $50,000.00 to $75,000.00 annually	2026-02-05 15:57:04.436845
article-48169425	database administrator (DBA)	January 14, 2026	Surrey (BC)	Salary $45.00 hourly	2026-02-05 15:57:04.436846
article-48166984	records office supervisor	January 14, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-02-05 15:57:04.436847
article-48166765	cloud operations manager	January 14, 2026	Mississauga (ON)	Salary $65,000.00 annually	2026-02-05 15:57:04.436849
article-48166408	administrative supervisor	January 14, 2026	Toronto (ON)	Salary $75,000.00 annually	2026-02-05 15:57:04.436849
article-48166380	software programmer	January 14, 2026	Hamilton (ON)	Salary $67,984.80 annually	2026-02-05 15:57:04.43685
article-48772448	records office supervisor	January 13, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-02-05 15:57:14.440165
article-48582417	office supervisor	January 13, 2026	Mississauga (ON)	Salary $36.10 hourly	2026-02-05 15:57:14.440172
article-48121099	manager, IT (information technology) implementation	January 13, 2026	Vancouver (BC)	Salary $40.00 to $92.00 hourly	2026-02-05 15:57:14.440173
article-48804907	software developer	January 13, 2026	Toronto (ON)	Salary $140,000.00 to $165,000.00 annually	2026-02-05 15:57:14.440174
article-48805378	software developer	January 13, 2026	Vancouver (BC)	Salary $140,000.00 to $165,000.00 annually	2026-02-05 15:57:14.440175
article-48805401	software developer	January 13, 2026	Montréal (QC)	Salary $140,000.00 to $165,000.00 annually	2026-02-05 15:57:14.440176
article-48805429	software developer	January 13, 2026	Calgary (AB)	Salary $140,000.00 to $165,000.00 annually	2026-02-05 15:57:14.440177
article-48804906	software developer	January 13, 2026	Toronto (ON)	Salary $55.00 hourly	2026-02-05 15:57:14.440178
article-48805263	software developer	January 13, 2026	Toronto (ON)	Salary $5,558.00 monthly	2026-02-05 15:57:14.440179
article-48804781	software developer	January 10, 2026	Toronto (ON)	Salary $80,000.00 annually	2026-02-05 15:57:14.44018
article-48725121	computer manager	January 09, 2026	Vancouver (BC)	Salary $200,000.00 to $253,650.00 annually (to be negotiated)	2026-02-05 15:57:22.723331
article-48612600	software development manager	January 07, 2026	Vancouver (BC)	Salary $50.48 hourly	2026-02-05 15:57:22.723337
article-47990156	data engineer	January 07, 2026	Toronto (ON)	Salary $90,000.00 to $120,000.00 annually	2026-02-05 15:57:22.723338
article-48804880	software developer	January 07, 2026	Kelowna (BC)	Salary $21.00 hourly	2026-02-05 15:57:22.723339
article-47954629	manager, computer applications	January 07, 2026	Toronto (ON)	Salary $42.41 to $96.63 hourly	2026-02-05 15:57:22.72334
article-47905056	office supervisor	January 06, 2026	Edmonton (AB)	Salary $36.25 hourly	2026-02-05 15:57:22.723341
article-48588348	office supervisor	January 06, 2026	Montréal (QC)	Salary $34.62 hourly	2026-02-05 15:57:22.723342
article-47885843	administrative supervisor	January 05, 2026	Coquitlam (BC)	Salary $37.00 hourly	2026-02-05 15:57:22.723343
article-48897881	office supervisor	February 06, 2026	Québec (QC)	Salary $74,500.00 to $94,400.00 hourly	2026-02-06 15:55:24.133949
article-48848620	data mining analyst	February 06, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-06 15:55:24.133953
article-48849954	manager, computer applications	February 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133954
article-48850567	information technology (IT) director	February 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133955
article-48850988	information technology (IT) director	February 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133955
article-48851104	software developer	February 06, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-06 15:55:24.133956
article-48851719	manager, computer applications	February 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133956
article-48851839	software developer	February 06, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-06 15:55:24.133957
article-48852005	manager, computer applications	February 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133958
article-48852064	manager, computer applications	February 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133959
article-48849061	data scientist	February 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-06 15:55:24.133959
article-48850546	senior software developer	February 05, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-06 15:55:24.13396
article-48851922	director, data processing	February 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.13396
article-48852078	software developer	February 05, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-06 15:55:24.133961
article-48894956	operations supervisor	February 05, 2026	Brampton (ON)	Salary $37.00 hourly	2026-02-06 15:55:24.133961
article-48831336	cloud developer	February 05, 2026	North Vancouver (BC)	Salary $60,102.13 to $100,000.00 annually	2026-02-06 15:55:24.133962
article-48896713	operations supervisor	February 05, 2026	Pitt Meadows (BC)	Salary $47,000.00 to $50,000.00 annually (to be negotiated)	2026-02-06 15:55:24.133962
article-48816187	computer applications manager	February 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133963
article-48816293	manager, IT (information technology) implementation	February 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133964
article-48816343	software developer	February 05, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-06 15:55:24.133964
article-48816564	manager, computer applications	February 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133964
article-48816935	senior software developer	February 05, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-06 15:55:24.133965
article-48816950	software engineering manager	February 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133965
article-48817032	software development manager	February 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133966
article-48817061	director of technology management	February 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:24.133966
article-48817084	manager, computer applications	February 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-06 15:55:32.098096
article-48894291	artificial intelligence programmer	February 05, 2026	Varennes (QC)	Salary $95,000.00 to $105,000.00 annually (to be negotiated)	2026-02-06 15:55:32.0981
article-48855809	data analyst - informatics and systems	February 05, 2026	Toronto (ON)	Salary $47.90 hourly	2026-02-06 15:55:32.098101
article-48807688	software developer	February 04, 2026	Toronto (ON)	Salary $70.00 to $110.00 hourly	2026-02-06 15:55:32.098102
article-48810203	software developer	February 04, 2026	Toronto (ON)	Salary $100,000.00 to $220,000.00 annually	2026-02-06 15:55:39.469699
article-48810120	software developer	February 04, 2026	Toronto (ON)	Salary $70.00 to $75.00 hourly	2026-02-06 15:55:39.469703
article-48867015	software developer	February 04, 2026	Woodstock (ON)	Salary $25.00 to $40.00 hourly	2026-02-06 15:55:39.469704
article-48892688	office services supervisor	February 03, 2026	Saint-Laurent (QC)	Salary $65,000.00 annually	2026-02-06 15:55:39.469704
article-48904134	director of technology management	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-07 16:41:53.134902
article-48904144	data scientist	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-07 16:41:53.134906
article-48904174	manager, computer systems	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-07 16:41:53.134907
article-48904207	artificial intelligence (AI) consultant	February 07, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-02-07 16:41:53.134907
article-48904211	data scientist	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-07 16:41:53.134908
article-48904259	manager, computer applications	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-07 16:41:53.134908
article-48904262	manager, IT (information technology) implementation	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-07 16:41:53.134909
article-48904298	senior software developer	February 07, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-02-07 16:41:53.13491
article-48904332	software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-07 16:41:53.134911
article-48904345	director of technology management	February 07, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-02-07 16:41:53.134912
article-48904356	senior software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-07 16:41:53.134912
article-48904361	software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-07 16:41:53.134913
article-48904369	software development manager	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-07 16:41:53.134913
article-48904376	software development manager	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-07 16:41:53.134914
article-48904377	data mining analyst	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-07 16:41:53.134915
article-48904396	manager, computer applications	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-07 16:41:53.134915
article-48904398	software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-07 16:41:53.134916
article-48904446	manager, computer applications	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-07 16:41:53.134916
article-48904480	senior software developer	February 07, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-02-07 16:41:53.134917
article-48901193	cloud developer	February 06, 2026	Westmount (QC)	Salary $55,000.00 to $110,000.00 annually	2026-02-07 16:41:53.134917
article-48900778	developer, software	February 06, 2026	Montréal (QC)	Salary $80,000.00 annually	2026-02-07 16:41:53.134918
article-48900123	database administrator (DBA)	February 06, 2026	Victoria (BC)	Salary $7,587.00 monthly	2026-02-07 16:41:53.134918
article-48900482	software developer	February 06, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-07 16:41:53.134919
article-48900257	operations supervisor	February 06, 2026	Mount Hope (ON)	Salary $58,500.00 to $59,900.00 annually	2026-02-07 16:41:53.134919
article-48898438	data scientist	February 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-07 16:41:53.134919
article-48898697	senior software developer	February 06, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-07 16:42:02.422093
article-48898450	software engineering manager	February 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-07 16:42:02.422098
article-48903868	operations supervisor	February 06, 2026	Calgary (AB)	Salary $31.48 hourly	2026-02-07 16:42:02.422098
article-48817098	data scientist	February 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-07 16:42:02.422099
article-48900584	software developer	February 05, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-07 16:42:02.422099
article-48900513	software developer	February 05, 2026	Toronto (ON)	Salary $72.00 to $86.00 hourly	2026-02-07 16:42:02.4221
article-48903257	cloud developer	February 05, 2026	North Vancouver (BC)	Salary $60,102.13 to $100,000.00 annually	2026-02-07 16:42:02.4221
article-48907365	data scientist	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-08 15:39:39.122869
article-48907380	EDP (electronic data processing) analyst	February 08, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-08 15:39:39.122873
article-48906332	software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-08 15:39:39.122874
article-48906437	manager, computer applications	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-08 15:39:39.122874
article-48906456	data mining analyst	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-08 15:39:39.122875
article-48906474	director of technology management	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-08 15:39:39.122875
article-48906483	data scientist	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-08 15:39:39.122876
article-48906622	software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-08 15:39:39.122877
article-48906785	manager, data processing and systems analysis	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-08 15:39:39.122878
article-48906860	software development manager	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-08 15:39:39.122879
article-48906995	manager, computer applications	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-08 15:39:39.122879
article-48907004	manager, IT (information technology) implementation	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-08 15:39:39.12288
article-48907293	data mining analyst	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-08 15:39:39.12288
article-48906066	manager, data processing and systems analysis	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-08 15:39:39.122881
article-48906076	data mining analyst	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-08 15:39:39.122881
article-48905515	operations supervisor	February 07, 2026	Oakville (ON)	Salary $18.00 to $20.00 hourly	2026-02-08 15:39:39.122882
article-48905492	database analyst	February 07, 2026	Toronto (ON)	Salary $47.00 hourly	2026-02-08 15:39:39.122882
article-48905138	cloud operations manager	February 07, 2026	Peterborough (ON)	Salary $25.00 to $33.00 hourly	2026-02-08 15:39:39.122883
article-48898628	data scientist	February 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-08 15:39:47.49996
article-48913059	data scientist	February 09, 2026	London (ON)	Salary $30.00 to $69.74 hourly	2026-02-09 16:08:19.703694
article-48913078	artificial intelligence (AI) consultant	February 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-09 16:08:19.703698
article-48912873	software developer	February 09, 2026	Toronto (ON)	Salary $700.00 to $730.00 weekly	2026-02-09 16:08:19.703699
article-48912806	software developer	February 09, 2026	Toronto (ON)	Salary $95.00 to $110.00 hourly	2026-02-09 16:08:19.7037
article-48910083	big data analyst	February 08, 2026	Mississauga (ON)	Salary $70,000.00 to $80,000.00 annually	2026-02-09 16:08:19.7037
article-48908931	software developer	February 08, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-09 16:08:19.703701
article-48909017	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-09 16:08:19.703701
article-48909083	senior software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-09 16:08:19.703702
article-48909101	software engineering manager	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-09 16:08:19.703703
article-48909111	manager, computer systems	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-09 16:08:19.703704
article-48909131	manager, data processing and systems analysis	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-09 16:08:19.703704
article-48909144	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-09 16:08:19.703705
article-48909154	artificial intelligence (AI) consultant	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-09 16:08:19.703705
article-48909155	artificial intelligence (AI) consultant	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-09 16:08:19.703706
article-48909159	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-09 16:08:19.703706
article-48920734	office supervisor	February 10, 2026	Mississauga (ON)	Salary $30.00 to $36.00 hourly (to be negotiated)	2026-02-10 16:17:56.149198
article-48917906	cloud developer	February 09, 2026	Etobicoke (ON)	Salary $35.54 to $45.29 hourly	2026-02-10 16:17:56.149202
article-48917855	software development manager	February 09, 2026	Oshawa (ON)	Salary $65.00 to $75.00 hourly (to be negotiated)	2026-02-10 16:17:56.149203
article-48917599	administrator, data	February 09, 2026	Montréal (QC)	Salary $80,000.00 to $90,000.00 annually	2026-02-10 16:17:56.149203
article-48916908	machine learning specialist	February 09, 2026	Toronto (ON)	Salary $125,800.00 to $157,300.00 annually (to be negotiated)	2026-02-10 16:17:56.149204
article-48916464	DBA (database architect)	February 09, 2026	Montréal (QC)	Salary $65,901.00 annually	2026-02-10 16:17:56.149205
article-48916275	cybersecurity manager	February 09, 2026	Berthierville (QC)	Salary $18.00 to $25.00 hourly	2026-02-10 16:17:56.149205
article-48916410	cybersecurity manager	February 09, 2026	Notre-Dame-des-Prairies (QC)	Salary $18.00 to $25.00 hourly	2026-02-10 16:17:56.149206
article-48916222	data entry clerks supervisor	February 09, 2026	Scarborough (ON)	Salary $36.00 hourly	2026-02-10 16:17:56.149207
article-48916049	database developer	February 09, 2026	Montréal (QC)	Salary $65,901.00 annually	2026-02-10 16:17:56.149208
article-48916125	DBA (database architect)	February 09, 2026	Montréal (QC)	Salary $73,586.00 annually	2026-02-10 16:17:56.149208
article-48914174	data scientist	February 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-10 16:17:56.149209
article-48914181	senior software developer	February 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-10 16:17:56.14921
article-48914201	director of technology management	February 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-10 16:17:56.14921
article-48914210	senior software developer	February 09, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-02-10 16:17:56.149211
article-48914219	artificial intelligence (AI) consultant	February 09, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-02-10 16:17:56.149211
article-48914270	manager, IT (information technology) implementation	February 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-10 16:17:56.149212
article-48914305	senior software developer	February 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-10 16:17:56.149213
article-48914363	data mining analyst	February 09, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-10 16:17:56.149213
article-48914390	software development manager	February 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-10 16:17:56.149214
article-48914411	director of technology management	February 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-10 16:17:56.149214
article-48914422	manager, computer applications	February 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-10 16:17:56.149215
article-48914429	artificial intelligence (AI) consultant	February 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-10 16:17:56.149215
article-48914437	senior software developer	February 09, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-02-10 16:17:56.149216
article-48914441	manager, data processing and systems analysis	February 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-10 16:17:56.149217
article-48914448	manager, computer applications	February 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-10 16:18:07.84974
article-48919536	software developer	February 09, 2026	Toronto (ON)	Salary $101.00 daily	2026-02-10 16:18:07.849745
article-48919745	software developer	February 09, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-10 16:18:07.849746
article-48919821	software developer	February 09, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-10 16:18:07.849747
article-48919846	software developer	February 09, 2026	Montréal (QC)	Salary $65.52 to $80.00 hourly	2026-02-10 16:18:07.849748
article-48919707	software developer	February 08, 2026	London (ON)	Salary $18.35 hourly	2026-02-10 16:18:07.849748
article-48923119	big data analyst	February 10, 2026	Edmonton (AB)	Salary $35.00 hourly	2026-02-10 20:46:12.293594
article-48923117	cloud developer	February 10, 2026	Toronto (ON)	Salary $45.00 to $50.00 hourly	2026-02-10 20:46:12.293599
article-48922525	data engineer	February 10, 2026	London (ON)	Salary $102,710.00 to $134,727.00 annually (to be negotiated)	2026-02-10 20:46:12.293599
article-48921921	data quality analyst	February 10, 2026	Greater Sudbury (ON)	Salary $31.69 to $39.62 hourly	2026-02-10 20:46:12.2936
article-48921794	data analyst - informatics and systems	February 10, 2026	Saint-Laurent (QC)	Salary $35.00 hourly	2026-02-10 20:46:12.2936
article-48914451	manager, computer systems development	February 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-10 20:46:19.336541
article-48914457	manager, computer applications	February 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-10 20:46:19.336547
article-48924507	operations supervisor	February 10, 2026	Wasaga Beach (ON)	Salary $22.00 to $24.00 hourly	2026-02-11 16:14:07.70812
article-48924023	administrative clerks supervisor	February 10, 2026	Vaughan (ON)	Salary $37,580.65 to $49,961.53 annually	2026-02-11 16:14:07.708125
article-48931417	software developer	February 12, 2026	Ottawa (ON)	Salary $51.00 hourly	2026-02-12 16:07:03.979355
article-48929622	operations supervisor	February 11, 2026	Edmonton (AB)	Salary $37.00 hourly	2026-02-12 16:07:03.979359
article-48928106	senior software developer	February 11, 2026	White Rock (BC)	Salary $120,000.00 annually	2026-02-12 16:07:03.97936
article-48927528	cybersecurity manager	February 11, 2026	Drummondville (QC)	Salary $65,000.00 annually	2026-02-12 16:07:03.979361
article-48927336	senior software developer	February 11, 2026	Edmonton (AB)	Salary $80,000.00 to $160,000.00 annually (to be negotiated)	2026-02-12 16:07:03.979361
article-48937465	cloud developer	February 13, 2026	Toronto (ON)	Salary $90.00 hourly	2026-02-13 15:58:24.944901
article-48935479	operations supervisor	February 12, 2026	Brampton (ON)	Salary $36.10 hourly	2026-02-13 15:58:24.944907
article-48935158	data analytics specialist	February 12, 2026	Toronto (ON)	Salary $100,600.00 to $125,800.00 annually (to be negotiated)	2026-02-13 15:58:24.944907
article-48934919	information technology (IT) implementation manager	February 12, 2026	Kelowna (BC)	Salary $113.00 hourly	2026-02-13 15:58:24.944908
article-48934844	operations supervisor	February 12, 2026	North York (ON)	Salary $2,816.00 biweekly + 1% commission per piece	2026-02-13 15:58:24.944908
article-48934215	cybersecurity manager	February 12, 2026	Sainte-Thérèse (QC)	Salary $20.00 hourly	2026-02-13 15:58:24.944909
article-48933981	cloud operations manager	February 12, 2026	Edmonton (AB)	Salary $62,000.00 to $70,100.00 annually	2026-02-13 15:58:24.94491
article-48933405	application programmer	February 12, 2026	Surrey (BC)	Salary $62.00 hourly	2026-02-13 15:58:24.944911
article-48933403	database analyst	February 12, 2026	Mississauga (ON)	Salary $44.60 hourly	2026-02-13 15:58:24.944912
article-48932598	senior software developer	February 12, 2026	Montréal (QC)	Salary $70.00 hourly	2026-02-13 15:58:24.944912
article-48914446	software development manager	February 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-13 15:58:32.673374
article-48943531	data mining analyst	February 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:33.84793
article-48943644	data mining analyst	February 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:33.847935
article-48943344	office supervisor	February 13, 2026	Burnaby (BC)	Salary $36.60 hourly	2026-02-14 15:39:33.847935
article-48943037	office supervisor	February 13, 2026	Calgary (AB)	Salary $36.00 hourly	2026-02-14 15:39:33.847936
article-48942088	manager, IT (information technology) implementation	February 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:33.847936
article-48942153	software quality assurance director	February 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:33.847937
article-48942282	data analyst - informatics and systems	February 13, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-14 15:39:33.847938
article-48941711	database architect	February 13, 2026	Mississauga (ON)	Salary $25.00 to $61.03 hourly	2026-02-14 15:39:33.847939
article-48941954	manager, computer applications	February 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:33.847939
article-48941374	software developer	February 13, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:39:33.84794
article-48941679	manager, computer systems development	February 13, 2026	London (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:33.847941
article-48941149	data scientist	February 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:33.847941
article-48939155	operations supervisor	February 13, 2026	Surrey (BC)	Salary $36.60 hourly	2026-02-14 15:39:33.847942
article-48939362	operations supervisor	February 13, 2026	Okotoks (AB)	Salary $18.00 to $22.00 hourly	2026-02-14 15:39:33.847942
article-48939030	operations supervisor	February 13, 2026	Montréal (QC)	Salary $60,000.00 annually	2026-02-14 15:39:33.847943
article-48941577	data scientist	February 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:43.70173
article-48940709	software developer	February 12, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-14 15:39:43.701735
article-48941639	director of software engineering	February 12, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:43.701735
article-48945034	data mining analyst	February 12, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-14 15:39:43.701736
article-48940441	software developer	February 12, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:39:43.701737
article-48941834	senior software developer	February 12, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:39:43.701737
article-48941849	data mining analyst	February 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:43.701738
article-48941925	data scientist	February 11, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:43.701738
article-48941104	data scientist	February 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:43.701739
article-48941424	manager, computer applications	February 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:43.701739
article-48911752	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:56.469988
article-48940543	manager, data processing and systems analysis	February 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:43.70174
article-48942058	manager, data processing and systems analysis	February 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:43.70174
article-48941224	manager, IT (information technology) implementation	February 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:43.701741
article-48940677	manager, computer applications	February 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:43.701741
article-48942017	manager, computer applications	February 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:43.701742
article-48942427	artificial intelligence (AI) consultant	February 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:43.701742
article-48942059	data scientist	February 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:50.769986
article-48918603	data mining analyst	February 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:50.769991
article-48940442	data mining analyst	February 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:50.769992
article-48941905	senior software developer	February 10, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-02-14 15:39:50.769992
article-48942272	software developer	February 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:39:50.769993
article-48940961	data scientist	February 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:50.769993
article-48941302	data scientist	February 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:50.769994
article-48918589	manager, data processing and systems analysis	February 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:50.769994
article-48940882	artificial intelligence (AI) consultant	February 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:50.769995
article-48941148	data scientist	February 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:50.769995
article-48941916	manager, IT (information technology) implementation	February 10, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:50.769996
article-48942244	artificial intelligence (AI) consultant	February 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:39:50.769996
article-48942240	manager, computer applications	February 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:50.769997
article-48940676	software quality assurance director	February 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:39:50.769997
article-48910814	data scientist	February 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:00.062088
article-48910888	data scientist	February 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:00.062094
article-48910785	senior software developer	February 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:00.062095
article-48910943	mobile applications developer	February 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:00.062096
article-48907323	data mining analyst	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:10.238924
article-48907133	data scientist	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:10.238928
article-48906734	data mining analyst	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:10.238929
article-48906821	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:10.23893
article-48906450	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:10.23893
article-48906862	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:10.238931
article-48906444	senior software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:10.238931
article-48906695	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:10.238932
article-48906776	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:10.238932
article-48907178	data mining analyst	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:10.238933
article-48907132	database architect	February 08, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-14 15:40:10.238933
article-48906410	senior software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:10.238934
article-48906892	director, data processing	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:10.238935
article-48906827	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:10.238935
article-48906696	data mining analyst	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:10.238936
article-48940679	data mining analyst	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:10.238936
article-48907192	director, data processing	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:10.238937
article-48907248	data mining analyst	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:10.238937
article-48907212	senior software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:10.238938
article-48906793	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973974
article-48906459	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.97398
article-48906646	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973981
article-48906880	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973982
article-48906908	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973983
article-48907334	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973984
article-48906887	data analyst - informatics and systems	February 08, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-14 15:40:19.973984
article-48907000	manager, data processing and systems analysis	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:19.973985
article-48906740	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973986
article-48906871	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973987
article-48906676	senior software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973987
article-48906472	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973988
article-48941667	senior software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973989
article-48906462	senior software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.97399
article-48940657	software developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:19.973991
article-48906399	manager, data processing and systems analysis	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:19.973991
article-48907131	architect, database	February 08, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-14 15:40:19.973992
article-48906769	data scientist	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:19.973993
article-48942439	artificial intelligence (AI) consultant	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:19.973995
article-48906993	director of technology management	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:19.973995
article-48906352	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:19.973996
article-48906791	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:19.973997
article-48941168	manager, data processing and systems analysis	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:19.973998
article-48906464	information technology (IT) director	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:19.973999
article-48906777	artificial intelligence (AI) consultant	February 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:27.883963
article-48906546	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883969
article-48906745	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.88397
article-48907087	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883972
article-48906357	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883972
article-48906471	manager, IT (information technology) implementation	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883973
article-48906850	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883974
article-48907091	manager, IT (information technology) implementation	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883975
article-48907112	mobile applications developer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:27.883976
article-48907137	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883977
article-48906538	manager, computer systems	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883977
article-48906600	manager, IT (information technology) implementation	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883978
article-48942404	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883979
article-48907009	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.88398
article-48906550	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883981
article-48907282	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883982
article-48906336	information technology (IT) director	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883982
article-48906373	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883983
article-48906386	information technology (IT) director	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883984
article-48906755	information technology (IT) director	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883985
article-48906839	manager, computer applications	February 08, 2026	Stratford (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883986
article-48906900	Java programmer	February 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:27.883986
article-48907019	manager, IT (information technology) implementation	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883987
article-48907151	manager, computer applications	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883988
article-48942264	manager, IT (information technology) implementation	February 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:27.883989
article-48940850	data mining analyst	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:44.235647
article-48941643	data mining analyst	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:44.235651
article-48942062	data scientist	February 07, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:44.235652
article-48902342	software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:44.235653
article-48942006	data scientist	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:44.235653
article-48941544	manager, data processing and systems analysis	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:44.235654
article-48902304	data scientist	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:44.235655
article-48940825	software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:44.235655
article-48941717	manager, data processing and systems analysis	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:44.235656
article-48941851	senior software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:44.235657
article-48941698	senior software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:44.235657
article-48941399	senior software developer	February 07, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:44.235658
article-48902443	software developer	February 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:40:44.235658
article-48940985	artificial intelligence (AI) consultant	February 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:44.235659
article-48902566	manager, computerized information systems	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:44.23566
article-48942281	manager, computer applications	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:44.23566
article-48902453	manager, IT (information technology) implementation	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:44.235661
article-48902508	manager, computer applications	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:44.235661
article-48941663	manager, IT (information technology) implementation	February 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:44.235662
article-48940439	data scientist	February 06, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:52.568482
article-48941790	data scientist	February 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:40:52.568487
article-48912835	senior software developer	February 06, 2026	Waterloo (ON)	Salary $120.00 daily	2026-02-14 15:40:52.568487
article-48912857	software developer	February 06, 2026	Toronto (ON)	Salary $22.00 to $24.00 hourly	2026-02-14 15:40:52.568488
article-48942399	information technology (IT) director	February 06, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:52.568489
article-48941259	manager, IT (information technology) implementation	February 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:52.568489
article-48942339	manager, data processing and systems analysis	February 05, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-02-14 15:40:52.568491
article-48942111	manager, computer applications	February 05, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-02-14 15:41:01.702575
article-48941787	data scientist	February 04, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-14 15:41:01.702581
article-48942011	manager, database	February 04, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-14 15:41:01.702581
article-48810400	software developer	February 04, 2026	Vancouver (BC)	Salary $80,000.00 annually	2026-02-14 15:41:01.702582
article-48941135	manager, computer systems	February 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:41:01.702583
article-48941449	data analyst - informatics and systems	February 03, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-14 15:41:11.849631
article-48940711	senior software developer	February 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:41:11.849636
article-48941755	software developer	February 02, 2026	Toronto (ON)	Salary $25.00 to $63.00 hourly	2026-02-14 15:41:20.990954
article-48941890	data scientist	February 02, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-14 15:41:20.99096
article-48942356	artificial intelligence (AI) consultant	February 02, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-14 15:41:20.990962
article-48942227	manager, IT (information technology) implementation	February 02, 2026	London (ON)	Salary $43.75 to $103.37 hourly	2026-02-14 15:41:20.990963
article-48910881	artificial intelligence (AI) consultant	February 02, 2026	Calgary (AB)	Salary $26.00 to $78.00 hourly	2026-02-14 15:41:20.990964
article-48902580	manager, computer applications	February 02, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-14 15:41:20.990965
article-48943660	director of technology management	February 02, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-14 15:41:20.990967
article-48941695	software developer	February 01, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-14 15:41:20.990967
article-48919769	software developer	February 01, 2026	Toronto (ON)	Salary $21.12 hourly	2026-02-14 15:41:20.990968
article-48911877	software developer	January 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:30.065634
article-48856788	software developer	January 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:30.065641
article-48857628	software developer	January 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:30.065642
article-48911865	software developer	January 30, 2026	Toronto (ON)	Salary $100,000.00 to $130,000.00 annually	2026-02-14 15:41:30.065643
article-48911878	software developer	January 30, 2026	Vaughan (ON)	Salary $100,000.00 annually	2026-02-14 15:41:30.065644
article-48857652	software developer	January 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:30.065645
article-48911821	software developer	January 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:30.065646
article-48911600	software developer	January 30, 2026	Westmount (QC)	Salary $100,000.00 to $1,350,000.00 annually	2026-02-14 15:41:30.065647
article-48940474	manager, IT (information technology) implementation	January 30, 2026	Cambridge (ON)	Salary $40.00 to $92.00 hourly	2026-02-14 15:41:30.065648
article-48858885	software developer	January 29, 2026	Toronto (ON)	Salary $130,000.00 annually	2026-02-14 15:41:37.372011
article-48859325	software developer	January 29, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:37.372016
article-48856669	software developer	January 29, 2026	Toronto (ON)	Salary $75,000.00 to $110,000.00 annually	2026-02-14 15:41:37.372017
article-48941092	senior software developer	January 29, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-14 15:41:37.372018
article-48940431	manager, IT (information technology) implementation	January 29, 2026	Edmonton (AB)	Salary $43.75 to $103.37 hourly	2026-02-14 15:41:37.372019
article-48911559	software developer	January 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:37.37202
article-48911811	software developer	January 28, 2026	Westmount (QC)	Salary $90,000.00 to $1,250,000.00 annually	2026-02-14 15:41:37.372021
article-48911651	machine learning engineer	January 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:37.372022
article-48911815	software developer	January 27, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:46.158233
article-48911586	software developer	January 27, 2026	Toronto (ON)	Salary $21.12 hourly	2026-02-14 15:41:46.158239
article-48858684	software developer	January 24, 2026	Toronto (ON)	Salary $100,000.00 annually	2026-02-14 15:41:46.15824
article-48857137	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:46.158241
article-48859113	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:46.158242
article-48858015	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:46.158243
article-48856298	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:46.158244
article-48858056	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:46.158245
article-48858394	software developer	January 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:46.158246
article-48917935	cloud operations manager	January 24, 2026	London (ON)	Salary $70,000.00 annually	2026-02-14 15:41:46.158247
article-48857421	software developer	January 23, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:56.46998
article-48900529	data engineer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:56.469985
article-48911761	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:56.469986
article-48911899	software developer	January 22, 2026	Montréal (QC)	Salary $110,000.00 to $115,000.00 annually	2026-02-14 15:41:56.469986
article-48859346	software developer	January 22, 2026	Vancouver (BC)	Salary $10,000.00 monthly	2026-02-14 15:41:56.469987
article-48911743	software developer	January 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-14 15:41:56.469988
article-48911556	software developer	January 20, 2026	Cambridge (ON)	Salary $40,000.00 to $55,000.00 annually	2026-02-14 15:42:05.414425
article-48911939	software developer	January 17, 2026	Vancouver (BC)	Salary $108,992.00 to $130,000.00 annually	2026-02-14 15:42:05.414431
article-48911948	data engineer	January 16, 2026	Vancouver (BC)	Salary $100,000.00 annually	2026-02-14 15:42:15.664841
article-48911795	software developer	January 16, 2026	Toronto (ON)	Salary $80,000.00 annually	2026-02-14 15:42:15.664846
article-48896158	data analyst - informatics and systems	January 14, 2026	Surrey (BC)	Salary $45.00 hourly	2026-02-14 15:42:15.664847
article-48927352	office supervisor	January 13, 2026	Mississauga (ON)	Salary $36.10 hourly	2026-02-14 15:42:15.664848
article-48896603	software developer	January 05, 2026	North York (ON)	Salary $97,000.00 to $100,000.00 annually (to be negotiated)	2026-02-14 15:42:15.664849
article-48893524	database analyst	December 24, 2025	Scarborough (ON)	Salary $45.00 hourly	2026-02-14 15:42:15.664851
article-48894577	data scientist	December 18, 2025	Brampton (ON)	Salary $48.38 hourly	2026-02-14 15:42:25.147639
article-48899494	software developer	December 18, 2025	Fergus (ON)	Salary $49.00 hourly	2026-02-14 15:42:25.147646
article-48921076	software developer	December 08, 2025	Miller Lake (ON)	Salary $50.00 hourly	2026-02-14 15:42:25.147647
article-48896288	interactive media developer	November 21, 2025	Picton (ON)	Salary $48.08 hourly	2026-02-14 15:42:25.147649
article-48896019	operations supervisor	November 21, 2025	Québec (QC)	Salary $55,000.00 to $57,000.00 annually (to be negotiated)	2026-02-14 15:42:25.14765
article-48922972	office supervisor	November 14, 2025	Richmond (BC)	Salary $38.00 hourly	2026-02-14 15:42:34.24522
article-48896029	computerized information systems manager	November 04, 2025	Richmond (BC)	Salary $72.12 hourly	2026-02-14 15:42:34.245226
article-48916918	software developer	October 31, 2025	Victoria (BC)	Salary $51.28 hourly	2026-02-14 15:42:34.245227
article-48894292	operations supervisor	October 18, 2025	Various locations	Salary $36.00 hourly	2026-02-14 15:42:34.245227
article-48923865	database analyst (DBA)	October 17, 2025	Brampton (ON)	Salary $45.00 hourly	2026-02-14 15:42:34.245228
article-48947577	Internet systems administrator	February 15, 2026	Kuujjuaq (QC)	Salary $52,482.00 to $89,256.00 annually	2026-02-15 15:38:44.238717
article-48947515	operations supervisor	February 15, 2026	Saguenay (QC)	Salary $39.00 to $43.00 hourly	2026-02-15 15:38:44.238721
article-48946297	operations supervisor	February 14, 2026	Vancouver (BC)	Salary $36.75 hourly	2026-02-15 15:38:44.238722
article-48946296	database analyst (DBA)	February 14, 2026	Brampton (ON)	Salary $45.00 hourly	2026-02-15 15:38:44.238723
article-48945823	manager, computer applications	February 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-15 15:38:44.238723
article-48945408	software engineering manager	February 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-15 15:38:44.238724
article-48945424	data mining analyst	February 14, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-15 15:38:44.238724
article-48945453	data scientist	February 14, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-15 15:38:44.238725
article-48945462	data mining analyst	February 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-15 15:38:44.238726
article-48945466	data scientist	February 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-15 15:38:44.238727
article-48945468	software developer	February 14, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-15 15:38:44.238727
article-48945474	software developer	February 14, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-15 15:38:44.238728
article-48945475	data scientist	February 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-15 15:38:44.238728
article-48949749	operations supervisor	February 15, 2026	Edmonton (AB)	Salary $23.00 to $36.00 hourly	2026-02-16 15:56:11.158149
article-48948772	artificial intelligence (AI) consultant	February 15, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-02-16 15:56:11.158154
article-48948789	manager, computer applications	February 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-16 15:56:11.158155
article-48948828	manager, IT (information technology) implementation	February 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-16 15:56:11.158155
article-48948869	data scientist	February 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-16 15:56:11.158156
article-48948910	software developer	February 15, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-16 15:56:11.158156
article-48948926	director of technology management	February 15, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-02-16 15:56:11.158157
article-48948987	software development manager	February 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-16 15:56:11.158159
article-48949034	manager, database	February 15, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-16 15:56:11.158159
article-48958505	operations supervisor	February 17, 2026	Québec (QC)	Salary $55,000.00 to $57,000.00 annually (to be negotiated)	2026-02-17 16:06:03.137485
article-48958488	operations supervisor	February 17, 2026	Québec (QC)	Salary $55,000.00 to $57,000.00 annually (to be negotiated)	2026-02-17 16:06:03.137489
article-48958462	software developer	February 17, 2026	Toronto (ON)	Salary $48.08 to $50.00 hourly (to be negotiated)	2026-02-17 16:06:03.13749
article-48958445	administrative supervisor	February 17, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-02-17 16:06:03.13749
article-48957555	manager, IT (information technology) implementation	February 17, 2026	London (ON)	Salary $43.75 to $103.37 hourly	2026-02-17 16:06:03.137491
article-48957066	artificial intelligence (AI) consultant	February 17, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-17 16:06:03.137492
article-48956023	software developer	February 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-17 16:06:03.137492
article-48955876	data mining analyst	February 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-17 16:06:03.137493
article-48955666	office supervisor	February 16, 2026	Surrey (BC)	Salary $36.60 hourly	2026-02-17 16:06:03.137494
article-48954751	cybersecurity manager	February 16, 2026	Laval (QC)	Salary $26.00 to $30.00 hourly	2026-02-17 16:06:03.137494
article-48953947	office supervisor	February 16, 2026	Montréal (QC)	Salary $35.00 to $38.00 hourly	2026-02-17 16:06:03.137495
article-48953510	senior software developer	February 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-17 16:06:03.137495
article-48953621	database architect	February 16, 2026	Mississauga (ON)	Salary $25.00 to $61.03 hourly	2026-02-17 16:06:03.137496
article-48953638	data mining analyst	February 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-17 16:06:03.137496
article-48953658	data scientist	February 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-17 16:06:03.137497
article-48953664	data processing director	February 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-17 16:06:03.137497
article-48965199	software developer	February 18, 2026	Brossard (QC)	Salary $8,667.00 monthly	2026-02-18 16:06:07.79606
article-48963683	manager, computer applications	February 18, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-02-18 16:06:07.796065
article-48962647	Java programmer	February 17, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-18 16:06:07.796066
article-48962435	artificial intelligence (AI) consultant	February 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-18 16:06:07.796067
article-48961435	cybersecurity manager	February 17, 2026	Sainte-Martine (QC)	Salary $60,000.00 to $80,000.00 annually	2026-02-18 16:06:07.796068
article-48961133	computer game programmer	February 17, 2026	Westmount (QC)	Salary $99,000.00 annually	2026-02-18 16:06:07.796069
article-48960955	cloud developer	February 17, 2026	Gloucester (ON)	Salary $85,000.00 to $95,000.00 annually	2026-02-18 16:06:07.796069
article-48960022	cybersecurity manager	February 17, 2026	Montréal (QC)	Salary $67,500.00 annually	2026-02-18 16:06:07.796071
article-48958983	database designer	February 17, 2026	Mississauga (ON)	Salary $95,000.00 annually	2026-02-18 16:06:07.796071
article-48958666	manager, computer applications	February 17, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-18 16:06:07.796072
article-48958728	senior software developer	February 17, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-18 16:06:07.796073
article-48958784	manager, database	February 17, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-18 16:06:07.796073
article-48958789	data scientist	February 17, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-18 16:06:07.796074
article-48958812	artificial intelligence (AI) consultant	February 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-18 16:06:07.796074
article-48971894	data administrator	February 19, 2026	Lethbridge (AB)	Salary $41.00 hourly	2026-02-19 16:02:22.157965
article-48971842	operations supervisor	February 19, 2026	Mississauga (ON)	Salary $36.50 hourly	2026-02-19 16:02:22.15797
article-48971467	office clerks supervisor	February 19, 2026	Montréal (QC)	Salary $38.00 to $39.00 hourly (to be negotiated)	2026-02-19 16:02:22.15797
article-48971257	DBA (database administrator)	February 19, 2026	Granby (QC)	Salary $35.00 hourly	2026-02-19 16:02:22.157971
article-48971216	artificial intelligence (AI) consultant	February 19, 2026	Québec (QC)	Salary $60,000.00 to $800,000.00 annually	2026-02-19 16:02:22.157971
article-48970166	supervisor, clinical receptionists	February 19, 2026	Toronto (ON)	Salary $38.00 hourly	2026-02-19 16:02:22.157972
article-48968971	manager, computer applications	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:22.157973
article-48967670	operations supervisor	February 18, 2026	Brampton (ON)	Salary $17.60 to $19.00 hourly	2026-02-19 16:02:22.157974
article-48967232	machine learning engineer	February 18, 2026	Calgary (AB)	Salary $80,000.00 to $150,000.00 annually (to be negotiated)	2026-02-19 16:02:22.157974
article-48967125	software developer	February 18, 2026	Vancouver (BC)	Salary $52.50 hourly	2026-02-19 16:02:22.157975
article-48967071	senior software developer	February 18, 2026	Sherwood Park (AB)	Salary $95,000.00 to $100,000.00 annually (to be negotiated)	2026-02-19 16:02:22.157976
article-48966939	cloud services manager	February 18, 2026	North Bay (ON)	Salary $25.00 to $27.50 hourly	2026-02-19 16:02:22.157976
article-48966867	cloud operations manager	February 18, 2026	Toronto (ON)	Salary $55,000.00 to $75,000.00 annually	2026-02-19 16:02:22.157977
article-48965305	director of technology management	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:22.157977
article-48965340	manager, data processing and systems analysis	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:22.157978
article-48965408	software developer	February 18, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-19 16:02:22.157978
article-48965420	senior software developer	February 18, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-02-19 16:02:22.157979
article-48965508	manager, computer applications	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:22.157979
article-48965537	senior software developer	February 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-19 16:02:22.15798
article-48965546	data scientist	February 18, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-19 16:02:22.15798
article-48965565	senior software developer	February 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-19 16:02:22.157981
article-48965593	director of technology management	February 18, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:22.157981
article-48965599	data mining analyst	February 18, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-19 16:02:22.157982
article-48965640	manager, computer systems	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:22.157982
article-48965783	director of technology management	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:22.157983
article-48965917	software developer	February 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-19 16:02:30.070426
article-48965925	senior software developer	February 18, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-02-19 16:02:30.070431
article-48965899	software developer	February 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-19 16:02:30.070431
article-48965933	manager, computer applications	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:30.070432
article-48965920	artificial intelligence (AI) consultant	February 18, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-19 16:02:30.070433
article-48965948	manager, computer systems development	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:30.070433
article-48965952	manager, computer applications	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:30.070434
article-48965908	manager, computer applications	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-19 16:02:30.070434
article-48970310	software developer	February 18, 2026	Calgary (AB)	Salary $64,142.32 to $86,906.90 annually	2026-02-19 16:02:30.070435
article-48969701	operations supervisor	February 18, 2026	Uxbridge (ON)	Salary $30.00 to $35.00 hourly	2026-02-19 16:02:30.070436
article-48956352	data scientist	February 17, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-02-19 16:02:38.890829
article-48956354	manager, data processing and systems analysis	February 17, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-19 16:02:38.890833
article-48956325	director of technology management	February 17, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-19 16:02:38.890834
article-48975716	software developer	February 19, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-20 15:51:45.569952
article-48974590	database analyst (DBA)	February 19, 2026	Port Coquitlam (BC)	Salary $27.50 hourly	2026-02-20 15:51:45.56996
article-48974411	operations supervisor	February 19, 2026	Richmond (BC)	Salary $58,000.00 to $62,000.00 annually	2026-02-20 15:51:45.569961
article-48974459	business systems manager	February 19, 2026	Abbotsford (BC)	Salary $100,000.00 to $125,000.00 annually	2026-02-20 15:51:45.569961
article-48973603	office clerks supervisor	February 19, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-02-20 15:51:45.569962
article-48973183	office supervisor	February 19, 2026	Coquitlam (BC)	Salary $33.50 hourly	2026-02-20 15:51:45.569962
article-48972381	application programmer	February 19, 2026	Ottawa (ON)	Salary $80,000.00 to $100,000.00 annually (to be negotiated)	2026-02-20 15:51:45.569963
article-48971937	artificial intelligence (AI) consultant	February 19, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-02-20 15:51:45.569964
article-48972001	senior software developer	February 19, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-02-20 15:51:45.569965
article-48972055	operations supervisor	February 19, 2026	Vernon (BC)	Salary $22.00 to $46.00 hourly	2026-02-20 15:51:45.569966
article-48972071	software developer	February 19, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-20 15:51:45.569966
article-48972077	data scientist	February 19, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-20 15:51:45.569967
article-48972113	data scientist	February 19, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-20 15:51:45.569967
article-48972124	data processing director	February 19, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-20 15:51:45.569968
article-48965932	data scientist	February 18, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-20 15:51:53.002463
article-48965848	senior software developer	February 18, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-02-20 15:51:53.002468
article-48965919	software developer	February 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-20 15:51:53.002468
article-48965935	software development manager	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-20 15:51:53.002469
article-48965930	software development manager	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-20 15:51:53.00247
article-48965868	manager, data processing and systems analysis	February 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-20 15:51:53.00247
article-48976715	software developer	February 18, 2026	Calgary (AB)	Salary $64,142.32 to $86,906.90 annually	2026-02-20 15:52:02.271113
article-48983062	computer projects manager	February 21, 2026	Québec (QC)	Salary $75,000.00 to $100,000.00 annually	2026-02-21 15:37:53.444684
article-48982441	cloud developer	February 21, 2026	Mississauga (ON)	Salary $120,000.00 to $300,000.00 annually	2026-02-21 15:37:53.444695
article-48981459	data mining analyst	February 20, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-21 15:37:53.444695
article-48981475	manager, data processing and systems analysis	February 20, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-21 15:37:53.444696
article-48981486	artificial intelligence (AI) consultant	February 20, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-21 15:37:53.444697
article-48979799	cloud operations manager	February 20, 2026	Brockville (ON)	Salary $65,000.00 to $70,000.00 annually	2026-02-21 15:37:53.444697
article-48979556	cloud developer	February 20, 2026	Kirkland (QC)	Salary $65,000.00 annually	2026-02-21 15:37:53.444698
article-48979237	cloud developer	February 20, 2026	North York (ON)	Salary $55,000.00 to $60,000.00 annually	2026-02-21 15:37:53.444699
article-48979269	data architect	February 20, 2026	Toronto (ON)	Salary $70.00 to $80.00 hourly	2026-02-21 15:37:53.4447
article-48978099	artificial intelligence (AI) consultant	February 20, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-21 15:37:53.4447
article-48978116	director of technology management	February 20, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-21 15:37:53.444701
article-48978151	senior software developer	February 20, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-21 15:37:53.444701
article-48978264	manager, database	February 20, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-21 15:37:53.444702
article-48978287	senior software developer	February 20, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-21 15:37:53.444702
article-48978322	senior software developer	February 20, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-21 15:37:53.444703
article-48978387	director of software engineering	February 20, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-02-21 15:37:53.444703
article-48978559	senior software developer	February 20, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-21 15:37:53.444704
article-48985203	data mining analyst	February 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-22 15:38:55.385611
article-48985215	data scientist	February 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-22 15:38:55.385617
article-48984290	artificial intelligence (AI) consultant	February 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-22 15:38:55.385619
article-48984010	data scientist	February 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-22 15:38:55.38562
article-48983318	software engineering manager	February 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-22 15:38:55.385621
article-48983333	software developer	February 21, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-02-22 15:38:55.385623
article-48983343	manager, computer applications	February 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-22 15:38:55.385624
article-48983385	artificial intelligence (AI) consultant	February 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-22 15:38:55.385626
article-48983448	director of technology management	February 21, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-02-22 15:38:55.385628
article-48983539	data scientist	February 21, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-22 15:38:55.385629
article-48983543	manager, computer applications	February 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-22 15:38:55.385631
article-48990650	systems manager - computer systems	February 23, 2026	Etobicoke (ON)	Salary $4,080.00 biweekly	2026-02-23 15:59:44.894734
article-48989880	systems implementation manager - computer systems	February 23, 2026	Saint-Georges (QC)	Salary $35.00 to $45.00 hourly	2026-02-23 15:59:44.894738
article-48986574	senior software developer	February 22, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-23 15:59:44.894738
article-48986632	senior software developer	February 22, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-23 15:59:44.894739
article-48986658	data scientist	February 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-23 15:59:44.894739
article-48986666	software developer	February 22, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-23 15:59:44.89474
article-48981792	artificial intelligence (AI) consultant	February 21, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-23 15:59:44.894741
article-48997847	manager, computer systems	February 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-24 16:11:42.774819
article-48998053	data mining analyst	February 24, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-24 16:11:42.774824
article-48998072	senior software developer	February 24, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-24 16:11:42.774825
article-48998075	director of software engineering	February 24, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-02-24 16:11:42.774825
article-48998081	database architect	February 24, 2026	Mississauga (ON)	Salary $25.00 to $61.03 hourly	2026-02-24 16:11:42.774826
article-48998083	data mining analyst	February 24, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-24 16:11:42.774826
article-48998089	director of technology management	February 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-24 16:11:42.774827
article-48998106	senior software developer	February 24, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-02-24 16:11:42.774828
article-48998118	software developer	February 24, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-24 16:11:42.774829
article-48998142	software developer	February 24, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-24 16:11:42.774829
article-48998148	software developer	February 24, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-24 16:11:42.77483
article-48998161	data analyst - informatics and systems	February 24, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-24 16:11:42.77483
article-48997956	software programmer	February 24, 2026	Toronto (ON)	Salary $21.00 hourly	2026-02-24 16:11:42.774831
article-48998067	computer development division head	February 24, 2026	Saint-Césaire (QC)	Salary $50,000.00 to $60,000.00 annually	2026-02-24 16:11:42.774831
article-48997797	operations supervisor	February 24, 2026	Edmonton (AB)	Salary $37.50 hourly	2026-02-24 16:11:42.774832
article-48997188	operations supervisor	February 24, 2026	Trois-Rivières (QC)	Salary $50,000.00 to $75,000.00 annually	2026-02-24 16:11:42.774832
article-48995670	senior software developer	February 24, 2026	London (ON)	Salary $65,000.00 annually	2026-02-24 16:11:42.774833
article-48995333	computer programs manager	February 24, 2026	Val-d'Or (QC)	Salary $40.92 to $53.99 hourly	2026-02-24 16:11:42.774833
article-48994820	manager, computer applications	February 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-24 16:11:42.774834
article-48994499	operations supervisor	February 23, 2026	Laval (QC)	Salary $90,000.00 annually	2026-02-24 16:11:42.774834
article-48992790	office supervisor	February 23, 2026	Burnaby (BC)	Salary $6,275.00 monthly	2026-02-24 16:11:42.774835
article-48990729	cybersecurity manager	February 23, 2026	Saint-Lambert (QC)	Salary $24.00 to $26.00 hourly	2026-02-24 16:11:42.774835
article-48990694	senior software developer	February 23, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-24 16:11:42.774836
article-48990875	software developer	February 23, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-24 16:11:42.774836
article-48990928	data mining analyst	February 23, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-24 16:11:42.774837
article-48990974	manager, computer applications	February 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-24 16:11:51.129457
article-48996382	software developer	February 23, 2026	Toronto (ON)	Salary $200,000.00 to $325,000.00 annually	2026-02-24 16:11:51.129462
article-48996155	software developer	February 23, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-24 16:11:51.129462
article-48996345	software developer	February 23, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-24 16:11:51.129463
article-48996683	software developer	February 23, 2026	Ottawa (ON)	Salary $200.00 daily	2026-02-24 16:11:51.129463
article-48996501	software developer	February 23, 2026	Toronto (ON)	Salary $101.00 daily	2026-02-24 16:11:51.129464
article-48996456	software developer	February 22, 2026	Montréal (QC)	Salary $75,000.00 annually	2026-02-24 16:11:51.129465
article-48996625	software developer	February 22, 2026	Toronto (ON)	Salary $21.12 hourly	2026-02-24 16:11:51.129465
article-48985505	manager, IT (information technology) implementation	February 22, 2026	London (ON)	Salary $43.75 to $103.37 hourly	2026-02-24 16:11:51.129466
article-48996118	software developer	February 21, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-24 16:11:51.129466
article-48995164	operations supervisor	February 21, 2026	Mississauga (ON)	Salary $18.00 to $20.00 hourly	2026-02-24 16:11:51.129467
article-48996653	operations supervisor	February 21, 2026	Mississauga (ON)	Salary $50,000.00 annually	2026-02-24 16:11:51.129467
article-48996088	software developer	February 20, 2026	Brampton (ON)	Salary $10,000.00 monthly	2026-02-24 16:11:58.453528
article-48996668	software developer	February 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-24 16:11:58.453533
article-48996600	data engineer	February 19, 2026	Toronto (ON)	Salary $80,000.00 to $130,000.00 annually	2026-02-24 16:12:06.784588
article-48996286	software developer	February 19, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-24 16:12:06.784593
article-48996637	software developer	February 19, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-24 16:12:06.784594
article-48996531	software developer	February 19, 2026	Toronto (ON)	Salary $90,000.00 to $110,000.00 annually	2026-02-24 16:12:06.784595
article-48996329	software developer	February 19, 2026	Toronto (ON)	Salary $90,000.00 annually	2026-02-24 16:12:06.784595
article-48996538	software developer	February 19, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-24 16:12:06.784596
article-48996357	software developer	February 19, 2026	Toronto (ON)	Salary $75,000.00 to $85,000.00 annually	2026-02-24 16:12:06.784596
article-48996513	software developer	February 19, 2026	Toronto (ON)	Salary $75,000.00 annually	2026-02-24 16:12:06.784597
article-48997932	cloud services manager	February 18, 2026	North Bay (ON)	Salary $25.00 to $27.50 hourly	2026-02-24 16:12:15.306254
article-48996575	software developer	February 17, 2026	Toronto (ON)	Salary $22.00 to $24.00 hourly	2026-02-24 16:12:15.306259
article-48996581	software developer	February 17, 2026	Montréal (QC)	Salary $76,000,108,544.00 annually	2026-02-24 16:12:15.306259
article-48981872	director of technology management	February 17, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-24 16:12:15.30626
article-48981784	manager, computer applications	February 17, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-02-24 16:12:15.30626
article-48996634	software developer	February 16, 2026	Toronto (ON)	Salary $18.35 hourly	2026-02-24 16:12:15.306261
article-48996224	software developer	February 15, 2026	Toronto (ON)	Salary $200.00 daily	2026-02-24 16:12:24.368161
article-48996237	data scientist	February 14, 2026	Ottawa (ON)	Salary $100,000.00 annually	2026-02-24 16:12:24.368168
article-48996317	software developer	February 13, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-24 16:12:24.368169
article-48996821	software developer	February 13, 2026	Vancouver (BC)	Salary $140,000.00 to $165,000.00 annually	2026-02-24 16:12:24.36817
article-48996565	software developer	February 13, 2026	Vancouver (BC)	Salary $75,000.00 annually	2026-02-24 16:12:24.368171
article-48996252	software developer	February 13, 2026	Bolton (ON)	Salary $17.75 hourly	2026-02-24 16:12:24.368172
article-48996320	software developer	February 12, 2026	Montréal (QC)	Salary $70.00 to $100.00 hourly	2026-02-24 16:12:32.906902
article-48928310	cloud developer	February 11, 2026	Calgary (AB)	Salary $55,000.00 to $65,000.00 annually	2026-02-24 16:12:32.906908
article-48996260	software developer	February 11, 2026	London (ON)	Salary $10,000.00 monthly	2026-02-24 16:12:32.906909
article-48996467	software developer	February 11, 2026	London (ON)	Salary $10,000.00 monthly	2026-02-24 16:12:32.90691
article-48996448	software developer	February 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-24 16:12:32.906911
article-48996559	software developer	February 11, 2026	London (ON)	Salary $10,000.00 monthly	2026-02-24 16:12:32.906912
article-48992085	manager, IT (information technology) implementation	February 10, 2026	Toronto (ON)	Salary $81,442.00 to $146,641.00 annually	2026-02-24 16:12:41.546515
article-49006872	data centre operator	February 25, 2026	Edmonton (AB)	Salary $20.00 to $48.00 hourly	2026-02-26 05:17:18.221096
article-49006638	software developer	February 25, 2026	Waterloo (ON)	Salary $70.00 to $90.00 hourly (to be negotiated)	2026-02-26 05:17:18.221101
article-49006345	software development manager	February 25, 2026	Vancouver (BC)	Salary $50.48 hourly	2026-02-26 05:17:18.221101
article-49006241	operations supervisor	February 25, 2026	Wildcat (AB)	Salary $36.00 hourly	2026-02-26 05:17:18.221102
article-49006170	operations supervisor	February 25, 2026	Carp (ON)	Salary $54,000.00 annually	2026-02-26 05:17:18.221102
article-49005153	software developer	February 25, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-26 05:17:18.221103
article-49005175	software developer	February 25, 2026	North Vancouver (BC)	Salary $21.84 hourly	2026-02-26 05:17:18.221104
article-49004047	data analyst - informatics and systems	February 25, 2026	Montréal (QC)	Salary $71,687.00 annually	2026-02-26 05:17:18.221105
article-49003986	senior software developer	February 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-26 05:17:18.221106
article-49003993	artificial intelligence (AI) consultant	February 25, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-02-26 05:17:18.221107
article-49004007	manager, computer applications	February 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-26 05:17:18.221107
article-49004064	artificial intelligence (AI) consultant	February 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-26 05:17:18.221108
article-49004071	software developer	February 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-26 05:17:18.221108
article-49004116	data scientist	February 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-26 05:17:18.221109
article-49004142	data scientist	February 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-26 05:17:18.221109
article-49004145	artificial intelligence (AI) consultant	February 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-26 05:17:18.22111
article-49004146	software developer	February 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-26 05:17:18.22111
article-49004152	software development manager	February 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-26 05:17:18.221111
article-49004156	artificial intelligence (AI) consultant	February 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-26 05:17:18.221111
article-49004163	manager, computer systems development	February 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-26 05:17:18.221112
article-49003689	night supervisor, telephone system	February 25, 2026	Saint-Césaire (QC)	Salary $24.92 to $30.28 hourly	2026-02-26 05:17:18.221112
article-49002603	cloud developer	February 25, 2026	Mississauga (ON)	Salary $56.41 to $101.04 hourly	2026-02-26 05:17:18.221113
article-49001377	computer department coordinator	February 24, 2026	Saguenay (QC)	Salary $45.57 to $59.96 hourly	2026-02-26 05:17:18.221113
article-49000273	mobile applications developer	February 24, 2026	Windsor (ON)	Salary $18.00 to $23.00 hourly (to be negotiated)	2026-02-26 05:17:18.221114
article-48998546	manager, data processing and systems analysis	February 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-26 05:17:18.221114
article-48998657	data analyst - informatics and systems	February 24, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-02-26 05:17:26.702812
article-49005142	software developer	February 24, 2026	Toronto (ON)	Salary $55.00 to $60.00 hourly	2026-02-26 05:17:26.702817
article-49005194	software developer	February 24, 2026	Vancouver (BC)	Salary $50,000.00 to $75,000.00 annually	2026-02-26 05:17:26.702817
article-49005157	software developer	February 24, 2026	Toronto (ON)	Salary $200,000.00 to $325,000.00 annually	2026-02-26 05:17:26.702818
article-49005349	software developer	February 24, 2026	Toronto (ON)	Salary $80.00 to $90.00 hourly	2026-02-26 05:17:26.702819
article-49005184	software developer	February 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-26 05:17:26.702819
article-49005313	software developer	February 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-26 05:17:26.70282
article-49005290	software developer	February 24, 2026	Toronto (ON)	Salary $90,000.00 to $110,000.00 annually	2026-02-26 05:17:26.70282
article-48990935	manager, IT (information technology) implementation	February 23, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-02-26 05:17:35.206089
article-49005090	data engineer	February 20, 2026	Vancouver (BC)	Salary $160,000.00 to $180,000.00 annually	2026-02-26 05:17:44.330701
article-49009038	software developer	February 25, 2026	Vancouver (BC)	Salary $115,000.00 annually	2026-02-26 16:04:51.987778
article-49009172	data architect	February 25, 2026	Toronto (ON)	Salary $150,000.00 annually	2026-02-26 16:04:51.987782
article-48998558	manager, data processing and systems analysis	February 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-26 16:05:03.159479
article-49009160	data engineer	February 24, 2026	Toronto (ON)	Salary $69.00 to $79.00 hourly	2026-02-26 16:05:03.159483
article-49016213	data scientist	February 27, 2026	London (ON)	Salary $30.00 to $69.74 hourly	2026-02-27 15:51:19.423064
article-49015728	software developer	February 27, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-02-27 15:51:19.423069
article-49015651	software developer	February 27, 2026	Edmonton (AB)	Salary $40.00 hourly	2026-02-27 15:51:19.423069
article-49015685	software developer	February 27, 2026	Edmonton (AB)	Salary $4,050.00 monthly	2026-02-27 15:51:19.42307
article-49015084	computer projects manager	February 27, 2026	Québec (QC)	Salary $85,000.00 to $100,000.00 annually	2026-02-27 15:51:19.42307
article-49014069	manager, IT (information technology) implementation	February 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-27 15:51:19.423071
article-49012879	office supervisor	February 26, 2026	Tweed (ON)	Salary $31.00 hourly	2026-02-27 15:51:19.423072
article-49012797	data scientist	February 26, 2026	Woodbridge (ON)	Salary $46.50 to $47.50 hourly (to be negotiated)	2026-02-27 15:51:19.423073
article-49012142	information technology (IT) service delivery manager	February 26, 2026	Thunder Bay (ON)	Salary $119,721.79 to $140,849.21 annually (to be negotiated)	2026-02-27 15:51:19.423074
article-49012075	data scientist	February 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-27 15:51:19.423074
article-49011528	operations supervisor	February 26, 2026	North Saanich (BC)	Salary $37.00 hourly	2026-02-27 15:51:19.423075
article-49011432	operations supervisor	February 26, 2026	Victoria (BC)	Salary $37.00 hourly	2026-02-27 15:51:19.423075
article-49010322	manager, computer applications	February 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-27 15:51:19.423076
article-49010329	director of technology management	February 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-27 15:51:19.423076
article-49010428	senior software developer	February 26, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-02-27 15:51:19.423077
article-49010456	manager, computer applications	February 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-27 15:51:19.423077
article-49010464	data mining analyst	February 26, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-27 15:51:19.423078
article-49010484	director of technology management	February 26, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-02-27 15:51:19.423078
article-49010488	artificial intelligence (AI) consultant	February 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-27 15:51:19.423079
article-49010495	data scientist	February 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-27 15:51:19.423079
article-49010502	senior software developer	February 26, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-27 15:51:19.42308
article-49010510	database architect	February 26, 2026	Mississauga (ON)	Salary $25.00 to $61.03 hourly	2026-02-27 15:51:19.42308
article-49010513	data mining analyst	February 26, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-27 15:51:19.423081
article-49010523	data mining analyst	February 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-27 15:51:19.423081
article-49010527	senior software developer	February 26, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-02-27 15:51:19.423082
article-49010557	manager, computer applications	February 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-27 15:51:30.080508
article-49010551	artificial intelligence (AI) consultant	February 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-27 15:51:30.080512
article-49010547	artificial intelligence (AI) consultant	February 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-27 15:51:30.080513
article-49015652	software developer	February 26, 2026	Toronto (ON)	Salary $6,069.00 monthly	2026-02-27 15:51:30.080513
article-49015687	software developer	February 26, 2026	Toronto (ON)	Salary $60.00 hourly	2026-02-27 15:51:30.080514
article-49015667	software developer	February 25, 2026	Toronto (ON)	Salary $19.75 hourly	2026-02-27 15:51:40.527305
article-49015722	software developer	February 25, 2026	Toronto (ON)	Salary $19.75 hourly	2026-02-27 15:51:40.52731
article-49021367	office supervisor	February 28, 2026	Québec (QC)	Salary $29.00 to $31.00 hourly	2026-02-28 15:34:38.729341
article-49021269	data mining analyst	February 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-28 15:34:38.729345
article-49021157	manager, data processing and systems analysis	February 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-28 15:34:38.729346
article-49020618	data mining analyst	February 28, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-28 15:34:38.729347
article-49019920	senior software developer	February 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-28 15:34:38.729347
article-49019594	manager, data processing and systems analysis	February 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-28 15:34:38.729348
article-49019637	data analyst - informatics and systems	February 27, 2026	Burlington (ON)	Salary $25.00 to $61.03 hourly	2026-02-28 15:34:38.729348
article-49019647	manager, data processing and systems analysis	February 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-28 15:34:38.729349
article-49019444	help desk manager - information technology (IT)	February 27, 2026	Langley (BC)	Salary $38.50 to $41.50 hourly (to be negotiated)	2026-02-28 15:34:38.72935
article-49019224	data scientist	February 27, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-02-28 15:34:38.729351
article-49018752	DBA (database administrator)	February 27, 2026	Laval (QC)	Salary $45.00 hourly	2026-02-28 15:34:38.729351
article-49018768	DBA (database administrator)	February 27, 2026	Laval (QC)	Salary $50.00 hourly	2026-02-28 15:34:38.729352
article-49018784	data scientist	February 27, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-28 15:34:38.729352
article-49018681	database analyst (DBA)	February 27, 2026	Vancouver (BC)	Salary $45.00 hourly	2026-02-28 15:34:38.729353
article-49017988	information technology (IT) implementation manager	February 27, 2026	Toronto (ON)	Salary $5,415.20 biweekly	2026-02-28 15:34:38.729353
article-49016844	manager, computer systems	February 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-28 15:34:38.729354
article-49016862	manager, data processing and systems analysis	February 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-28 15:34:38.729354
article-49016912	senior software developer	February 27, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-02-28 15:34:38.729355
article-49016921	artificial intelligence (AI) consultant	February 27, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-02-28 15:34:38.729355
article-49016924	senior software developer	February 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-28 15:34:38.729356
article-49016943	manager, computer applications	February 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-28 15:34:38.729356
article-49017053	software developer	February 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-28 15:34:38.729357
article-49017065	senior software developer	February 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-28 15:34:38.729357
article-49017067	software developer	February 27, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-02-28 15:34:38.729358
article-49017077	operations supervisor	February 27, 2026	Vernon (BC)	Salary $22.00 to $46.00 hourly	2026-02-28 15:34:38.729358
article-49017272	software developer	February 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-02-28 15:34:47.66613
article-49017270	artificial intelligence (AI) consultant	February 27, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-02-28 15:34:47.666135
article-49017084	data scientist	February 27, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-02-28 15:34:47.666136
article-49016796	software development programmer	February 27, 2026	Edmonton (AB)	Salary $41.00 hourly	2026-02-28 15:34:47.666137
article-49010535	manager, data processing	February 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-02-28 15:34:47.666137
article-49024446	artificial intelligence (AI) consultant	March 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-01 15:37:00.010772
article-49023084	data scientist	February 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-01 15:37:00.010776
article-49023089	manager, IT (information technology) implementation	February 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-01 15:37:00.010777
article-49023123	manager, IT (information technology) implementation	February 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-01 15:37:00.010778
article-49022348	operations supervisor	February 28, 2026	Toronto (ON)	Salary $22.00 to $46.00 hourly	2026-03-01 15:37:00.010778
article-49021478	manager, computer applications	February 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-01 15:37:00.010779
article-49021518	data scientist	February 28, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-01 15:37:00.010779
article-49021570	artificial intelligence (AI) consultant	February 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-01 15:37:00.010781
article-49021621	director of technology management	February 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-01 15:37:00.010781
article-49021662	manager, computer applications	February 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-01 15:37:00.010782
article-49021666	senior software developer	February 28, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-01 15:37:00.010783
article-49021701	software development manager	February 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-01 15:37:00.010783
article-49021712	data scientist	February 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-01 15:37:00.010784
article-49021715	software developer	February 28, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-01 15:37:00.010784
article-49021716	artificial intelligence (AI) consultant	February 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-01 15:37:00.010785
article-49017125	data scientist	February 27, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-01 15:37:07.496999
article-49017116	software developer	February 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-01 15:37:07.497003
article-49017088	director of software engineering	February 27, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-03-01 15:37:07.497003
article-49027830	computer manager	March 02, 2026	Vancouver (BC)	Salary $200,000.00 to $253,650.00 annually (to be negotiated)	2026-03-02 15:54:56.829479
article-49027597	software engineering manager	March 02, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-03-02 15:54:56.829483
article-49026306	data mining analyst	March 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-02 15:54:56.829483
article-49025912	developer, software	March 01, 2026	Brossard (QC)	Salary $60,000.00 annually	2026-03-02 15:54:56.829484
article-49025374	data analyst - informatics and systems	March 01, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-02 15:54:56.829485
article-49025379	data mining analyst	March 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-02 15:54:56.829485
article-49025149	data scientist	March 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-02 15:54:56.829486
article-49024832	artificial intelligence (AI) consultant	March 01, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-02 15:54:56.829487
article-49024842	artificial intelligence (AI) consultant	March 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-02 15:54:56.829488
article-49024861	senior software developer	March 01, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-02 15:54:56.829488
article-49024897	data scientist	March 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-02 15:54:56.829489
article-49024995	software developer	March 01, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-02 15:54:56.829489
article-49027234	software developer	February 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-02 15:55:05.05491
article-49027247	software developer	February 27, 2026	Vancouver (BC)	Salary $120,000.00 to $150,000.00 annually	2026-03-02 15:55:13.713179
article-49027228	software developer	February 27, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-02 15:55:13.713184
article-49027377	software developer	February 27, 2026	Medicine Hat (AB)	Salary $27.33 hourly	2026-03-02 15:55:13.713185
article-49014328	artificial intelligence (AI) consultant	February 27, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-02 15:55:13.713186
article-49033989	operations supervisor	March 03, 2026	Laval (QC)	Salary $35.00 hourly	2026-03-03 15:58:46.575732
article-49033456	data scientist	March 03, 2026	London (ON)	Salary $30.00 to $69.74 hourly	2026-03-03 15:58:46.575736
article-49032991	manager, computer applications	March 03, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-03-03 15:58:46.575737
article-49031612	data scientist	March 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-03 15:58:46.575737
article-49030763	technical program manager - information technology (IT)	March 02, 2026	Spruce Grove (AB)	Salary $75,000.00 to $95,000.00 annually (to be negotiated)	2026-03-03 15:58:46.575738
article-49030159	information technology (IT) infrastructure engineering manager	March 02, 2026	Kitchener (ON)	Salary $70,000.00 to $75,000.00 annually (to be negotiated)	2026-03-03 15:58:46.575739
article-49030125	operations supervisor	March 02, 2026	Mississauga (ON)	Salary $32.00 hourly	2026-03-03 15:58:46.575739
article-49030031	mobile applications developer	March 02, 2026	Calgary (AB)	Salary $48.00 to $50.00 hourly (to be negotiated)	2026-03-03 15:58:46.57574
article-49029897	information technology (IT) director	March 02, 2026	Surrey (BC)	Salary $184,488.00 annually	2026-03-03 15:58:46.575741
article-49029902	computer projects manager	March 02, 2026	Terrebonne (QC)	Salary $48.91 to $65.91 hourly	2026-03-03 15:58:46.575742
article-49029844	database manager	March 02, 2026	Abbotsford (BC)	Salary $50.00 to $55.00 hourly (to be negotiated)	2026-03-03 15:58:46.575743
article-49029746	software developer	March 02, 2026	Victoria (BC)	Salary $51.28 hourly	2026-03-03 15:58:46.575743
article-49029542	computerized information systems manager	March 02, 2026	Richmond (BC)	Salary $72.12 hourly	2026-03-03 15:58:46.575744
article-49029526	office supervisor	March 02, 2026	Mississauga (ON)	Salary $36.00 hourly	2026-03-03 15:58:46.575744
article-49028849	data analyst - informatics and systems	March 02, 2026	Richmond Hill (ON)	Salary $45.00 hourly	2026-03-03 15:58:46.575745
article-49028594	senior software developer	March 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-03 15:58:46.575745
article-49028602	software developer	March 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-03 15:58:46.575746
article-49028612	director of technology management	March 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-03 15:58:46.575746
article-49028614	senior software developer	March 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-03 15:58:46.575747
article-49028634	data analyst - informatics and systems	March 02, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-03 15:58:46.575747
article-49028658	senior software developer	March 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-03 15:58:46.575748
article-49028677	software developer	March 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-03 15:58:46.575748
article-49028683	director of technology management	March 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-03 15:58:46.575749
article-49028711	data scientist	March 02, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-03 15:58:46.575749
article-49028712	data processing director	March 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-03 15:58:46.575749
article-49040348	software developer	March 04, 2026	Mattawa (ON)	Salary $43.50 hourly	2026-03-04 15:57:01.450833
article-49040143	office supervisor	March 04, 2026	Sherbrooke (QC)	Salary $80,063.00 to $108,323.00 annually	2026-03-04 15:57:01.450838
article-49039002	software developer	March 04, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-04 15:57:01.450839
article-49037231	artificial intelligence (AI) analyst	March 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-04 15:57:01.450839
article-49036748	software developer	March 03, 2026	Miller Lake (ON)	Salary $50.00 hourly	2026-03-04 15:57:01.45084
article-49035273	operations supervisor	March 03, 2026	Pointe-aux-Trembles (QC)	Salary $70,000.00 annually	2026-03-04 15:57:01.450841
article-49035343	data scientist	March 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-04 15:57:01.450842
article-49034553	artificial intelligence (AI) consultant	March 03, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-04 15:57:01.450843
article-49034606	artificial intelligence (AI) consultant	March 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-04 15:57:01.450844
article-49034615	manager, computer applications	March 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-04 15:57:01.450845
article-49034634	manager, computer applications	March 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-04 15:57:01.450845
article-49034664	manager, computer applications	March 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-04 15:57:01.450846
article-49034736	director of technology management	March 03, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-03-04 15:57:01.450846
article-49034771	artificial intelligence (AI) consultant	March 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-04 15:57:01.450847
article-49034784	data mining analyst	March 03, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-04 15:57:01.450848
article-49034795	data scientist	March 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-04 15:57:01.450848
article-49034805	manager, computer applications	March 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-04 15:57:01.450849
article-49034818	software developer	March 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-04 15:57:01.45085
article-49034844	artificial intelligence (AI) consultant	March 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-04 15:57:01.45085
article-49034846	senior software developer	March 03, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-04 15:57:01.450851
article-49034864	artificial intelligence (AI) consultant	March 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-04 15:57:01.450852
article-49039171	software developer	March 03, 2026	Edmonton (AB)	Salary $62.00 to $80.00 hourly	2026-03-04 15:57:01.450852
article-49039088	software developer	March 03, 2026	Vancouver (BC)	Salary $120,000.00 to $135,000.00 annually	2026-03-04 15:57:08.933751
article-49039177	software developer	March 03, 2026	Toronto (ON)	Salary $120,000.00 to $135,000.00 annually	2026-03-04 15:57:08.933756
article-49039160	software developer	March 03, 2026	Grande Prairie (AB)	Salary $40.00 hourly	2026-03-04 15:57:08.933756
article-49039036	software developer	March 03, 2026	Toronto (ON)	Salary $75,000.00 to $110,000.00 annually	2026-03-04 15:57:08.933757
article-49028722	software developer	March 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-04 15:57:08.933757
article-49028749	data analyst - informatics and systems	March 02, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-04 15:57:08.933758
article-49039058	software developer	March 02, 2026	Toronto (ON)	Salary $101.00 daily	2026-03-04 15:57:16.25804
article-49039067	software developer	March 02, 2026	Toronto (ON)	Salary $101.00 daily	2026-03-04 15:57:16.258045
article-49038964	software developer	March 02, 2026	Montréal (QC)	Salary $82.00 to $100.00 hourly	2026-03-04 15:57:16.258045
article-49038935	software developer	March 02, 2026	Montréal (QC)	Salary $200.00 daily	2026-03-04 15:57:16.258046
article-49038978	software developer	March 02, 2026	Edmonton (AB)	Salary $200.00 daily	2026-03-04 15:57:16.258046
article-49039081	software developer	March 02, 2026	Calgary (AB)	Salary $200.00 daily	2026-03-04 15:57:16.258047
article-49039056	software developer	March 02, 2026	Toronto (ON)	Salary $21.80 hourly	2026-03-04 15:57:16.258048
article-49039118	software developer	March 02, 2026	Montréal (QC)	Salary $65.52 to $80.00 hourly	2026-03-04 15:57:16.258048
article-49039127	software developer	March 02, 2026	Pembroke (ON)	Salary $54,000.00 to $58,000.00 annually	2026-03-04 15:57:16.258049
article-49023433	software developer	March 01, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-03-04 15:57:16.258049
article-49040035	manager, database	March 01, 2026	Kitchener (ON)	Salary $24.00 to $58.00 hourly	2026-03-04 15:57:16.25805
article-49040062	manager, database	March 01, 2026	Cambridge (ON)	Salary $24.00 to $58.00 hourly	2026-03-04 15:57:16.25805
article-49040069	manager, database	March 01, 2026	Waterloo (ON)	Salary $24.00 to $58.00 hourly	2026-03-04 15:57:16.258051
article-49040082	manager, database	March 01, 2026	Guelph (ON)	Salary $24.00 to $58.00 hourly	2026-03-04 15:57:16.258051
article-49045038	software developer	March 05, 2026	Toronto (ON)	Salary $75.00 to $93.00 hourly	2026-03-05 16:00:57.945028
article-49045025	software developer	March 05, 2026	Vancouver (BC)	Salary $35.00 hourly	2026-03-05 16:00:57.945032
article-49044572	operations supervisor	March 05, 2026	Hope (BC)	Salary $36.70 hourly	2026-03-05 16:00:57.945033
article-49043608	data scientist	March 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-05 16:00:57.945034
article-49043725	data scientist	March 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-05 16:00:57.945034
article-49040422	director of technology management	March 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-05 16:00:57.945035
article-49040434	software developer	March 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-05 16:00:57.945035
article-49040444	senior software developer	March 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-05 16:00:57.945036
article-49040473	data scientist	March 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-05 16:00:57.945037
article-49040507	senior software developer	March 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-05 16:00:57.945038
article-49040561	data scientist	March 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-05 16:00:57.945038
article-49040562	data scientist	March 04, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-05 16:00:57.945039
article-49040569	manager, computer applications	March 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-05 16:00:57.945039
article-49044991	software developer	March 04, 2026	Toronto (ON)	Salary $45.00 hourly	2026-03-05 16:00:57.94504
article-49045059	software developer	March 03, 2026	Ottawa (ON)	Salary $23.00 hourly	2026-03-05 16:01:07.267546
article-49039156	software developer	March 03, 2026	Ottawa (ON)	Salary $23.00 hourly	2026-03-05 16:01:07.26755
article-49044927	software developer	March 03, 2026	Ottawa (ON)	Salary $23.00 hourly	2026-03-05 16:01:07.267551
article-49045040	software developer	March 03, 2026	London (ON)	Salary $18.35 hourly	2026-03-05 16:01:07.267552
article-49045045	software developer	March 03, 2026	London (ON)	Salary $18.35 hourly	2026-03-05 16:01:07.267552
article-49054762	personnel clerks supervisor	March 06, 2026	Dorval (QC)	Salary $62,889.00 to $78,610.00 annually (to be negotiated)	2026-03-06 15:52:33.188009
article-49050911	software developer	March 06, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-03-06 15:52:33.188013
article-49050977	software developer	March 06, 2026	Toronto (ON)	Salary $70,000.00 to $80,000.00 annually	2026-03-06 15:52:33.188014
article-49049338	manager, computer applications	March 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-06 15:52:33.188015
article-49049379	data scientist	March 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-06 15:52:33.188015
article-49049407	manager, computerized information systems	March 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-06 15:52:33.188016
article-49049035	manager, computer systems development	March 05, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-03-06 15:52:33.188017
article-49049052	manager, computer applications	March 05, 2026	Burnaby (BC)	Salary $40.00 to $92.00 hourly	2026-03-06 15:52:33.188018
article-49049069	director of technology management	March 05, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-03-06 15:52:33.188019
article-49047958	data architect	March 05, 2026	Montréal (QC)	Salary $80,000.00 annually	2026-03-06 15:52:33.188019
article-49047326	operations supervisor	March 05, 2026	Delta (BC)	Salary $70,000.00 to $80,000.00 annually (to be negotiated)	2026-03-06 15:52:33.18802
article-49046231	data scientist	March 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-06 15:52:33.18802
article-49046244	manager, data processing and systems analysis	March 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-06 15:52:33.188021
article-49046248	artificial intelligence (AI) consultant	March 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-06 15:52:33.188022
article-49046252	software developer	March 05, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-03-06 15:52:33.188022
article-49046255	senior software developer	March 05, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-06 15:52:33.188023
article-49046270	data scientist	March 05, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-06 15:52:33.188023
article-49046301	manager, computer applications	March 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-06 15:52:33.188024
article-49046410	manager, computer systems	March 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-06 15:52:33.188024
article-49046451	manager, IT (information technology) implementation	March 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-06 15:52:33.188025
article-49046473	data mining analyst	March 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-06 15:52:33.188025
article-49046500	software development manager	March 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-06 15:52:33.188026
article-49046561	software developer	March 05, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-06 15:52:33.188026
article-49046577	software development manager	March 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-06 15:52:33.188027
article-49046600	manager, computer systems development	March 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-06 15:52:33.188027
article-49046569	computer department coordinator	March 05, 2026	Montréal (QC)	Salary $80,000.00 to $100,000.00 annually	2026-03-06 15:52:42.849032
article-49050928	software developer	March 05, 2026	Toronto (ON)	Salary $95,000.00 annually	2026-03-06 15:52:42.849036
article-49051012	software developer	March 05, 2026	Vancouver (BC)	Salary $35.00 hourly	2026-03-06 15:52:42.849037
article-49051082	software developer	March 05, 2026	Vaughan (ON)	Salary $17.60 to $19.40 hourly	2026-03-06 15:52:42.849037
article-49050782	data processing manager	March 05, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-03-06 15:52:42.849038
article-49054523	cloud developer	March 05, 2026	Calgary (AB)	Salary $55,000.00 to $65,000.00 annually	2026-03-06 15:52:42.849039
article-49054701	operations supervisor	March 05, 2026	Edmonton (AB)	Salary $21.00 to $25.00 hourly	2026-03-06 15:52:42.849039
article-49049311	data scientist	March 04, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-06 15:52:42.84904
article-49053548	software programmer	March 04, 2026	Orillia (ON)	Salary $40,000.00 annually	2026-03-06 15:52:52.493746
article-49051955	cloud developer	March 04, 2026	Duncan (BC)	Salary $27.00 hourly	2026-03-06 15:52:52.493751
article-49060919	data scientist	March 07, 2026	London (ON)	Salary $30.00 to $69.74 hourly	2026-03-07 15:35:53.657358
article-49059365	data scientist	March 06, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-07 15:35:53.657362
article-49059193	data mining analyst	March 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-07 15:35:53.657363
article-49059260	artificial intelligence (AI) analyst	March 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-07 15:35:53.657363
article-49057869	supervisor, clinical receptionists	March 06, 2026	Scarborough (ON)	Salary $32.00 hourly	2026-03-07 15:35:53.657364
article-49056724	information technology (IT) service delivery manager	March 06, 2026	Markham (ON)	Salary $68.00 to $70.00 hourly (to be negotiated)	2026-03-07 15:35:53.657364
article-49056619	operations supervisor	March 06, 2026	Sherwood Park (AB)	Salary $33.47 to $40.17 hourly	2026-03-07 15:35:53.657365
article-49055314	manager, computer systems	March 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-07 15:35:53.657366
article-49055356	senior software developer	March 06, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-03-07 15:35:53.657366
article-49055372	artificial intelligence (AI) consultant	March 06, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-03-07 15:35:53.657367
article-49055395	senior software developer	March 06, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-07 15:35:53.657368
article-49055466	manager, computer systems	March 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-07 15:35:53.657368
article-49055468	data scientist	March 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-07 15:35:53.657369
article-49055479	artificial intelligence (AI) consultant	March 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-07 15:35:53.657369
article-49055493	software developer	March 06, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-03-07 15:35:53.65737
article-49055535	data scientist	March 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-07 15:35:53.65737
article-49055538	director of technology management	March 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-07 15:35:53.657371
article-49055571	manager, computer applications	March 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-07 15:35:53.657371
article-49055583	director of software engineering	March 06, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-03-07 15:35:53.657372
article-49055596	data mining analyst	March 06, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-07 15:35:53.657372
article-49055636	operations supervisor	March 06, 2026	Toronto (ON)	Salary $22.00 to $46.00 hourly	2026-03-07 15:35:53.657372
article-49055638	director of technology management	March 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-07 15:35:53.657373
article-49055661	artificial intelligence (AI) consultant	March 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-07 15:35:53.657373
article-49055671	manager, computer applications	March 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-07 15:35:53.657374
article-49055689	data analyst - informatics and systems	March 06, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-07 15:35:53.657374
article-49046480	developer, software	March 05, 2026	Montréal (QC)	Salary $90,000.00 to $110,000.00 annually	2026-03-07 15:36:02.571464
article-49046452	developer, software	March 05, 2026	Brossard (QC)	Salary $120,000.00 to $150,000.00 annually	2026-03-07 15:36:02.571468
article-49046313	DBA (database analyst)	March 05, 2026	Montréal (QC)	Salary $85,000.00 to $110,000.00 annually	2026-03-07 15:36:02.571469
article-49060475	senior software developer	March 05, 2026	Toronto (ON)	Salary $160,000.00 to $200,000.00 annually	2026-03-07 15:36:10.327833
article-49059461	manager, data processing and systems analysis	March 05, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-03-07 15:36:10.327837
article-49060216	director of technology management	March 05, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-03-07 15:36:10.327838
article-49059176	analyst, database	March 05, 2026	Toronto (ON)	Salary $24.00 to $58.00 hourly	2026-03-07 15:36:10.327838
article-49060262	director of technology management	March 05, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-03-07 15:36:10.327838
article-49071490	artificial intelligence (AI) consultant	March 09, 2026	Québec (QC)	Salary $70,000.00 to $105,000.00 annually	2026-03-09 16:10:33.189781
article-49071486	artificial intelligence (AI) consultant	March 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:33.189785
article-49071584	artificial intelligence (AI) consultant	March 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:33.189786
article-49071601	software developer	March 09, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-03-09 16:10:33.189786
article-49071608	senior software developer	March 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-09 16:10:33.189787
article-49071640	data scientist	March 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:33.189787
article-49071642	director of technology management	March 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:33.189788
article-49071685	director of software engineering	March 09, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:33.189789
article-49071702	data scientist	March 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:33.18979
article-49071711	manager, computer applications	March 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:33.18979
article-49071713	software development manager	March 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:33.189791
article-49071787	senior software developer	March 09, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-09 16:10:33.189791
article-49071830	software development manager	March 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:33.189792
article-49070319	clerical supervisor	March 09, 2026	Montréal (QC)	Salary $36.06 hourly	2026-03-09 16:10:33.189792
article-49069904	office supervisor	March 09, 2026	Québec (QC)	Salary $74,500.00 to $94,400.00 annually	2026-03-09 16:10:33.189793
article-49070014	software engineering manager	March 09, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:33.189793
article-49069398	software developer	March 09, 2026	Toronto (ON)	Salary $85,000.00 annually	2026-03-09 16:10:33.189794
article-49067888	manager, IT (information technology) implementation	March 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:33.189794
article-49067927	manager, computer applications	March 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:33.189795
article-49065787	manager, computer applications	March 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:33.189795
article-49065791	senior software developer	March 08, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-09 16:10:33.189796
article-49065829	senior software developer	March 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-09 16:10:33.189796
article-49065160	artificial intelligence (AI) consultant	March 08, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:33.189797
article-49064534	data analyst - informatics and systems	March 08, 2026	Toronto (ON)	Salary $24.00 to $58.00 hourly	2026-03-09 16:10:33.189797
article-49064473	administrative supervisor	March 08, 2026	Burnaby (BC)	Salary $36.60 hourly	2026-03-09 16:10:33.189798
article-49063456	data mining analyst	March 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:40.293032
article-49063430	data scientist	March 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:40.293035
article-49063378	data analyst - informatics and systems	March 07, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-09 16:10:40.293036
article-49063389	data scientist	March 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:40.293037
article-49063335	artificial intelligence (AI) consultant	March 07, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:40.293037
article-49063311	computer systems manager	March 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:40.293038
article-49061601	director of technology management	March 07, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:40.293038
article-49061398	artificial intelligence (AI) consultant	March 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:40.293039
article-49061701	artificial intelligence (AI) consultant	March 07, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:40.293039
article-49061582	database manager	March 07, 2026	Montréal (QC)	Salary $25.00 to $61.03 hourly	2026-03-09 16:10:40.29304
article-49061708	director of technology management	March 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:40.29304
article-49061401	manager, computer applications	March 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:10:40.293041
article-49069624	data modeler	March 07, 2026	Toronto (ON)	Salary $95.00 hourly	2026-03-09 16:10:40.293041
article-49069435	software developer	March 07, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:10:40.293042
article-49069479	software developer	March 07, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:10:40.293042
article-49069579	software developer	March 06, 2026	Vancouver (BC)	Salary $10,000.00 monthly	2026-03-09 16:10:47.671439
article-49069625	software developer	March 06, 2026	Toronto (ON)	Salary $80.00 to $93.00 hourly	2026-03-09 16:10:47.671443
article-49069580	software developer	March 06, 2026	London (ON)	Salary $20.00 hourly	2026-03-09 16:10:47.671444
article-49049517	data scientist	March 06, 2026	London (ON)	Salary $30.00 to $69.74 hourly	2026-03-09 16:10:47.671444
article-49067743	database architect	March 05, 2026	Toronto (ON)	Salary $24.00 to $58.00 hourly	2026-03-09 16:10:57.195185
article-49068160	database administrator (DBA)	March 05, 2026	Toronto (ON)	Salary $24.00 to $58.00 hourly	2026-03-09 16:10:57.19519
article-49064586	manager, computer applications	March 05, 2026	Moosonee (ON)	Salary $34.07 to $41.70 hourly	2026-03-09 16:10:57.195191
article-49069604	software developer	March 03, 2026	London (ON)	Salary $18.35 hourly	2026-03-09 16:11:04.56742
article-49053670	big data analyst	March 02, 2026	Toronto (ON)	Salary $85,000.00 to $100,000.00 annually	2026-03-09 16:11:13.433795
article-49050777	data communications specialist	March 02, 2026	Toronto (ON)	Salary $50,000.00 to $60,000.00 annually	2026-03-09 16:11:13.4338
article-49051081	software developer	March 02, 2026	Mississauga (ON)	Salary $90,000.00 to $100,000.00 annually	2026-03-09 16:11:13.433801
article-49054655	cloud developer	March 02, 2026	Toronto (ON)	Salary $75,000.00 to $95,000.00 annually	2026-03-09 16:11:13.433801
article-49023216	data scientist	March 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-09 16:11:20.940397
article-49023434	manager, computer applications	March 01, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-03-09 16:11:20.940402
article-49068601	software developer	February 28, 2026	Vancouver (BC)	Salary $120,000.00 annually	2026-03-09 16:11:20.940403
article-49068477	software developer	February 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:20.940404
article-49068495	software developer	February 27, 2026	Vancouver (BC)	Salary $120,000.00 to $150,000.00 annually	2026-03-09 16:11:20.940404
article-49068468	software developer	February 27, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:20.940405
article-49057013	software developer	February 27, 2026	Cambridge (ON)	Salary $36.00 to $46.00 hourly	2026-03-09 16:11:20.940406
article-49050156	software developer	February 27, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:20.940407
article-49050012	software developer	February 27, 2026	Edmonton (AB)	Salary $40.00 hourly	2026-03-09 16:11:20.940408
article-49050037	software developer	February 27, 2026	Edmonton (AB)	Salary $4,050.00 monthly	2026-03-09 16:11:20.940408
article-49050015	software developer	February 26, 2026	Toronto (ON)	Salary $6,069.00 monthly	2026-03-09 16:11:28.470754
article-49050038	software developer	February 26, 2026	Toronto (ON)	Salary $60.00 hourly	2026-03-09 16:11:28.470758
article-49068497	software developer	February 25, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:28.47076
article-49044351	software developer	February 25, 2026	Vancouver (BC)	Salary $115,000.00 annually	2026-03-09 16:11:28.470761
article-49044525	data architect	February 25, 2026	Toronto (ON)	Salary $150,000.00 annually	2026-03-09 16:11:28.470762
article-49050127	software developer	February 25, 2026	Toronto (ON)	Salary $19.75 hourly	2026-03-09 16:11:28.470763
article-49054045	administrator, database	February 25, 2026	Toronto (ON)	Salary $110,000.00 annually	2026-03-09 16:11:28.470763
article-49068574	software developer	February 24, 2026	Vancouver (BC)	Salary $50,000.00 to $75,000.00 annually	2026-03-09 16:11:36.149827
article-49068559	software developer	February 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:36.149832
article-49068788	software developer	February 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:36.149833
article-49068753	software developer	February 24, 2026	Toronto (ON)	Salary $90,000.00 to $110,000.00 annually	2026-03-09 16:11:36.149834
article-49053254	software programmer	February 24, 2026	Toronto (ON)	Salary $21.00 hourly	2026-03-09 16:11:36.149834
article-49038976	software developer	February 23, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:36.149835
article-49068541	software developer	February 23, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:36.149836
article-49032740	software developer	February 22, 2026	Toronto (ON)	Salary $21.12 hourly	2026-03-09 16:11:36.149837
article-49068305	software developer	February 21, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:36.149837
article-49068270	software developer	February 20, 2026	Brampton (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:45.795208
article-49068812	software developer	February 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:45.795213
article-49063136	supervisor, clinical receptionists	February 19, 2026	Toronto (ON)	Salary $38.00 hourly	2026-03-09 16:11:45.795214
article-49068745	data engineer	February 19, 2026	Toronto (ON)	Salary $80,000.00 to $130,000.00 annually	2026-03-09 16:11:45.795215
article-49068494	software developer	February 19, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:45.795216
article-49068775	software developer	February 19, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:45.795217
article-49068699	software developer	February 19, 2026	Toronto (ON)	Salary $90,000.00 to $110,000.00 annually	2026-03-09 16:11:45.795218
article-49068531	software developer	February 19, 2026	Toronto (ON)	Salary $90,000.00 annually	2026-03-09 16:11:45.795219
article-49068704	software developer	February 19, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:11:45.79522
article-49044900	software developer	February 18, 2026	Ottawa (ON)	Salary $25.00 to $63.00 hourly	2026-03-09 16:11:45.795221
article-49044495	software developer	February 18, 2026	Fort McMurray (AB)	Salary $29.00 hourly	2026-03-09 16:11:45.795222
article-49053909	big data analyst	February 17, 2026	Burlington (ON)	Salary $39,940.42 to $80,602.87 annually	2026-03-09 16:11:54.336698
article-49068730	software developer	February 17, 2026	Toronto (ON)	Salary $22.00 to $24.00 hourly	2026-03-09 16:11:54.336702
article-49068737	software developer	February 17, 2026	Montréal (QC)	Salary $76,000,108,544.00 annually	2026-03-09 16:11:54.336703
article-49068116	operations supervisor	February 14, 2026	Vancouver (BC)	Salary $36.75 hourly	2026-03-09 16:11:54.336704
article-49031248	database analyst (DBA)	February 14, 2026	Brampton (ON)	Salary $45.00 hourly	2026-03-09 16:11:54.336705
article-49068448	data scientist	February 14, 2026	Ottawa (ON)	Salary $100,000.00 annually	2026-03-09 16:11:54.336706
article-49062051	office supervisor	February 13, 2026	Burnaby (BC)	Salary $37.00 hourly	2026-03-09 16:11:54.336706
article-49068544	software developer	February 13, 2026	Toronto (ON)	Salary $100,000.00 to $220,000.00 annually	2026-03-09 16:12:01.532184
article-49068616	software developer	February 13, 2026	Vancouver (BC)	Salary $140,000.00 to $165,000.00 annually	2026-03-09 16:12:01.532188
article-49068752	software developer	February 13, 2026	Toronto (ON)	Salary $65.00 hourly	2026-03-09 16:12:01.532189
article-49068720	software developer	February 13, 2026	Vancouver (BC)	Salary $75,000.00 annually	2026-03-09 16:12:01.53219
article-49021961	operations supervisor	February 12, 2026	Brampton (ON)	Salary $36.10 hourly	2026-03-09 16:12:01.532191
article-49000993	senior software developer	February 12, 2026	Waterloo (ON)	Salary $115,000.00 to $130,000.00 annually	2026-03-09 16:12:01.532192
article-49068810	software developer	February 11, 2026	London (ON)	Salary $10,000.00 monthly	2026-03-09 16:12:01.532193
article-49068467	software developer	February 11, 2026	London (ON)	Salary $10,000.00 monthly	2026-03-09 16:12:01.532194
article-49068633	software developer	February 11, 2026	London (ON)	Salary $10,000.00 monthly	2026-03-09 16:12:01.532195
article-49068621	software developer	February 11, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:12:01.532196
article-49068716	software developer	February 11, 2026	London (ON)	Salary $10,000.00 monthly	2026-03-09 16:12:01.532197
article-49068585	software developer	February 09, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:12:10.391872
article-49032716	software developer	February 09, 2026	Montréal (QC)	Salary $77.93 to $98.00 hourly	2026-03-09 16:12:10.391877
article-49068705	software developer	February 09, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-09 16:12:10.391878
article-49068624	software developer	February 09, 2026	Montréal (QC)	Salary $58.62 to $70.00 hourly	2026-03-09 16:12:10.391879
article-49058476	operations supervisor	February 05, 2026	Pitt Meadows (BC)	Salary $47,000.00 to $50,000.00 annually (to be negotiated)	2026-03-09 16:12:10.39188
article-49011498	records office supervisor	February 04, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-03-09 16:12:10.391881
article-49004809	senior software developer	February 03, 2026	London (ON)	Salary $64.48 hourly	2026-03-09 16:12:10.391882
article-49041226	DBA (database analyst)	February 03, 2026	Montréal (QC)	Salary $35.00 hourly	2026-03-09 16:12:10.391882
article-49046098	software developer	January 28, 2026	Calgary (AB)	Salary $48.08 hourly	2026-03-09 16:12:19.158562
article-49040274	senior software developer	January 27, 2026	Toronto (ON)	Salary $100,000.00 to $150,000.00 monthly (to be negotiated)	2026-03-09 16:12:19.158567
article-49009948	software developer	January 27, 2026	Markham (ON)	Salary $47.60 hourly	2026-03-09 16:12:19.158568
article-49046864	records office supervisor	January 14, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-03-09 16:12:19.158569
article-49048419	data analyst - informatics and systems	January 14, 2026	Surrey (BC)	Salary $45.00 hourly	2026-03-09 16:12:19.15857
article-48989815	office supervisor	December 24, 2025	Nisku (AB)	Salary $36.50 hourly	2026-03-09 16:12:19.158571
article-49056072	software developer	December 18, 2025	Fergus (ON)	Salary $49.00 hourly	2026-03-09 16:12:27.939848
article-49035235	administrative supervisor	November 24, 2025	Mississauga (ON)	Salary $37.00 hourly	2026-03-09 16:12:27.939854
article-49034450	operations supervisor	November 21, 2025	Québec (QC)	Salary $55,000.00 to $57,000.00 annually (to be negotiated)	2026-03-09 16:12:27.939855
article-48999055	information systems manager	November 18, 2025	Pickering (ON)	Salary $68.00 hourly	2026-03-09 16:12:27.939856
article-49075760	data scientist	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-10 16:11:44.594068
article-49075781	information technology (IT) director	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594073
article-49075801	information technology (IT) director	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594073
article-49075812	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594074
article-49075815	data mining analyst	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-10 16:11:44.594074
article-49075821	information technology (IT) director	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594075
article-49075832	software developer	March 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-10 16:11:44.594076
article-49075835	director of technology management	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594077
article-49075866	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594078
article-49075890	software developer	March 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-10 16:11:44.594078
article-49075905	manager, data processing and systems analysis	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594079
article-49075914	software developer	March 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-10 16:11:44.594079
article-49075916	data mining analyst	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-10 16:11:44.59408
article-49075941	manager, data processing and systems analysis	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.59408
article-49075943	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594081
article-49075948	software developer	March 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-10 16:11:44.594081
article-49075950	data analyst - informatics and systems	March 10, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-10 16:11:44.594082
article-49075952	director, data processing	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594082
article-49075984	manager, data processing and systems analysis	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594083
article-49075988	manager, IT (information technology) implementation	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594084
article-49075990	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594084
article-49076005	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594085
article-49076011	data mining analyst	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-10 16:11:44.594085
article-49075350	manager, IT (information technology) implementation	March 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:44.594086
article-49075476	senior software developer	March 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-10 16:11:44.594086
article-49075581	artificial intelligence (AI) consultant	March 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-10 16:11:52.561838
article-49073192	senior software developer	March 09, 2026	Montréal (QC)	Salary $75,000.00 annually	2026-03-10 16:11:52.561842
article-49072043	information technology (IT) director	March 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-10 16:11:52.561843
article-49071901	software developer	March 09, 2026	Abbotsford (BC)	Salary $50,000.00 to $70,000.00 annually (to be negotiated)	2026-03-10 16:11:52.561844
article-49085921	data administrator	March 11, 2026	Etobicoke (ON)	Salary $24.00 to $31.25 hourly	2026-03-11 16:00:30.548441
article-49084963	software developer	March 11, 2026	Kelowna (BC)	Salary $21.00 hourly	2026-03-11 16:00:30.548445
article-49084991	software developer	March 11, 2026	Toronto (ON)	Salary $62.00 to $70.00 hourly	2026-03-11 16:00:30.548446
article-49085038	software developer	March 11, 2026	Vancouver (BC)	Salary $115,000.00 annually	2026-03-11 16:00:30.548446
article-49083740	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-11 16:00:30.548447
article-49082046	database developer	March 10, 2026	Montréal (QC)	Salary $60.00 to $62.00 hourly	2026-03-11 16:00:30.548448
article-49081830	DBA (database administrator)	March 10, 2026	Various locations	Salary $70.00 to $80.00 hourly (to be negotiated)	2026-03-11 16:00:30.548448
article-49080497	quantitative analyst	March 10, 2026	Surrey (BC)	Salary $150,000.00 annually	2026-03-11 16:00:30.548449
article-49079587	administrative clerks supervisor	March 10, 2026	Richmond (BC)	Salary $37.00 hourly	2026-03-11 16:00:30.54845
article-49078933	data scientist	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-11 16:00:30.548451
article-49079003	artificial intelligence (AI) consultant	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-11 16:00:30.548451
article-49079007	artificial intelligence (AI) consultant	March 10, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-11 16:00:30.548452
article-49079026	data scientist	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-11 16:00:30.548452
article-49079047	software engineering manager	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-11 16:00:30.548453
article-49079076	software developer	March 10, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-03-11 16:00:30.548453
article-49079160	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-11 16:00:30.548454
article-49079201	data mining analyst	March 10, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-11 16:00:30.548454
article-49079203	data scientist	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-11 16:00:30.548455
article-49079215	director of technology management	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-11 16:00:30.548455
article-49079217	data scientist	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-11 16:00:30.548456
article-49079226	data scientist	March 10, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-11 16:00:30.548456
article-49079235	operations supervisor	March 10, 2026	Vernon (BC)	Salary $22.00 to $46.00 hourly	2026-03-11 16:00:30.548457
article-49079242	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-11 16:00:30.548457
article-49079243	senior software developer	March 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-11 16:00:30.548458
article-49079247	artificial intelligence (AI) consultant	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-11 16:00:30.548458
article-49079567	director of technology management	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-11 16:00:37.432976
article-49085106	software developer	March 10, 2026	Toronto (ON)	Salary $95.00 to $110.00 hourly	2026-03-11 16:00:37.43298
article-49085046	software developer	March 10, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-11 16:00:37.432981
article-49084968	software developer	March 10, 2026	Toronto (ON)	Salary $80.00 to $90.00 hourly	2026-03-11 16:00:37.432981
article-49084978	software developer	March 09, 2026	Toronto (ON)	Salary $85,000.00 annually	2026-03-11 16:00:44.969434
article-49067551	cloud developer	March 09, 2026	Markham (ON)	Salary $20.00 to $23.00 hourly	2026-03-11 16:00:44.969438
article-49093669	computer application development manager	March 12, 2026	New Westminster (BC)	Salary $125,000.00 annually	2026-03-12 16:12:23.442729
article-49090587	cloud operations manager	March 12, 2026	Vancouver (BC)	Salary $65,000.00 to $90,000.00 annually	2026-03-12 16:12:23.442733
article-49090238	software quality assurance director	March 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-12 16:12:23.442733
article-49090243	data mining analyst	March 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-12 16:12:23.442734
article-49090381	artificial intelligence (AI) consultant	March 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-12 16:12:23.442735
article-49089950	manager, computer applications	March 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-12 16:12:23.442735
article-49089975	manager, computer applications	March 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-12 16:12:23.442736
article-49090029	data mining analyst	March 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-12 16:12:23.442737
article-49090032	manager, data processing and systems analysis	March 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-12 16:12:23.442738
article-49089404	telephone service supervisor	March 11, 2026	Meaford (ON)	Salary $17.85 to $19.49 hourly	2026-03-12 16:12:23.442738
article-49087790	machine learning specialist	March 11, 2026	Newmarket (ON)	Salary $120,000.00 annually	2026-03-12 16:12:23.442739
article-49087787	information technology (IT) implementation manager	March 11, 2026	Kingston (ON)	Salary $68,920.00 to $84,043.00 annually (to be negotiated)	2026-03-12 16:12:23.442739
article-49087440	application programmer	March 11, 2026	Surrey (BC)	Salary $50.00 hourly	2026-03-12 16:12:23.44274
article-49087078	software developer	March 11, 2026	North Vancouver (BC)	Salary $48.08 hourly	2026-03-12 16:12:23.44274
article-49086551	developer, software	March 11, 2026	Québec (QC)	Salary $45.00 hourly	2026-03-12 16:12:23.442741
article-49086536	artificial intelligence (AI) consultant	March 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-12 16:12:23.442741
article-49086540	artificial intelligence (AI) consultant	March 11, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-12 16:12:23.442742
article-49086552	information technology (IT) director	March 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-12 16:12:23.442742
article-49086717	operations supervisor	March 11, 2026	Toronto (ON)	Salary $22.00 to $46.00 hourly	2026-03-12 16:12:23.442743
article-49086726	manager, database	March 11, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-12 16:12:23.442743
article-49086744	artificial intelligence (AI) consultant	March 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-12 16:12:23.442744
article-49086823	software developer	March 11, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-12 16:12:23.442744
article-49086922	director of technology management	March 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-12 16:12:23.442745
article-49086928	director of technology management	March 11, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-03-12 16:12:23.442745
article-49086931	data scientist	March 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-12 16:12:23.442746
article-49086995	senior software developer	March 11, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-12 16:12:31.88936
article-49086982	software developer	March 11, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-12 16:12:31.889364
article-49086940	manager, computer systems	March 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-12 16:12:31.889365
article-49086964	manager, computer applications	March 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-12 16:12:31.889365
article-49079538	data scientist	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-12 16:12:31.889366
article-49079469	data scientist	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-12 16:12:31.889366
article-49079542	software developer	March 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-12 16:12:31.889367
article-49079483	data processing director	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-12 16:12:31.889367
article-49079409	data mining analyst	March 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-12 16:12:39.267359
article-49090621	director of technology management	March 10, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-03-12 16:12:48.257331
article-49100139	computer projects manager	March 13, 2026	Sherbrooke (QC)	Salary $120,000.00 to $140,000.00 annually	2026-03-13 15:56:49.655979
article-49100499	software developer	March 13, 2026	Vancouver (BC)	Salary $110,000.00 to $135,000.00 annually	2026-03-13 15:56:49.655983
article-49100626	software developer	March 13, 2026	Vancouver (BC)	Salary $110,000.00 to $135,000.00 annually	2026-03-13 15:56:49.655984
article-49100496	software developer	March 13, 2026	Montréal (QC)	Salary $75,000.00 annually	2026-03-13 15:56:49.655984
article-49099986	software developer	March 13, 2026	Québec (QC)	Salary $90,000.00 annually	2026-03-13 15:56:49.655985
article-49099657	data scientist	March 13, 2026	London (ON)	Salary $30.00 to $69.74 hourly	2026-03-13 15:56:49.655985
article-49099351	data scientist	March 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-13 15:56:49.655986
article-49098016	data analyst - informatics and systems	March 13, 2026	Etobicoke (ON)	Salary $43.96 hourly	2026-03-13 15:56:49.655987
article-49097876	data analyst - informatics and systems	March 13, 2026	Mississauga (ON)	Salary $43.96 hourly	2026-03-13 15:56:49.655988
article-49097871	data scientist	March 12, 2026	Mississauga (ON)	Salary $98,000.00 to $150,000.00 annually (to be negotiated)	2026-03-13 15:56:49.655988
article-49097000	operations supervisor	March 12, 2026	Toronto (ON)	Salary $20.00 hourly	2026-03-13 15:56:49.655989
article-49096891	operations supervisor	March 12, 2026	Toronto (ON)	Salary $21.50 to $25.00 hourly	2026-03-13 15:56:49.65599
article-49096675	computer system operations manager	March 12, 2026	Ottawa (ON)	Salary $125,500.00 to $156,880.00 annually	2026-03-13 15:56:49.65599
article-49096588	PC (personal computer) application developer	March 12, 2026	Montréal (QC)	Salary $100,000.00 to $110,000.00 annually	2026-03-13 15:56:49.655991
article-49095939	administrative supervisor	March 12, 2026	Markham (ON)	Salary $36.00 hourly	2026-03-13 15:56:49.655991
article-49094467	software developer	March 12, 2026	Various locations	Salary $20.00 hourly	2026-03-13 15:56:49.655992
article-49093731	director of technology management	March 12, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-13 15:56:49.655992
article-49093782	senior software developer	March 12, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-03-13 15:56:49.655993
article-49093814	manager, computer applications	March 12, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-13 15:56:49.655993
article-49093820	senior software developer	March 12, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-13 15:56:49.655994
article-49093824	manager, computer applications	March 12, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-13 15:56:49.655994
article-49093858	artificial intelligence (AI) consultant	March 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-13 15:56:49.655995
article-49093930	director of technology management	March 12, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-13 15:56:49.655995
article-49093967	director of technology management	March 12, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-13 15:56:49.655996
article-49093974	operations supervisor	March 12, 2026	Vernon (BC)	Salary $22.00 to $46.00 hourly	2026-03-13 15:56:49.655996
article-49094061	manager, computer systems development	March 12, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-13 15:56:59.774926
article-49093995	manager, IT (information technology) implementation	March 12, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-13 15:56:59.77493
article-49094053	information technology (IT) implementation manager	March 12, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-13 15:56:59.774931
article-49100436	software developer	March 12, 2026	Vancouver (BC)	Salary $155,000.00 annually	2026-03-13 15:56:59.774932
article-49100430	software developer	March 12, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-13 15:56:59.774932
article-49100452	machine learning engineer	March 12, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-13 15:56:59.774933
article-49086977	software development manager	March 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-13 15:56:59.774934
article-49086999	senior software developer	March 11, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-13 15:57:10.283098
article-49087008	software development manager	March 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-13 15:57:10.283103
article-49086942	artificial intelligence (AI) consultant	March 11, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-13 15:57:10.283104
article-49100498	software developer	March 11, 2026	Montréal (QC)	Salary $10,000.00 monthly	2026-03-13 15:57:10.283105
article-49100602	software developer	March 11, 2026	Montréal (QC)	Salary $10,000.00 monthly	2026-03-13 15:57:10.283105
article-49100660	software developer	March 11, 2026	Toronto (ON)	Salary $79.00 to $93.00 hourly	2026-03-13 15:57:10.283106
article-49100547	software developer	March 11, 2026	Mississauga (ON)	Salary $60,000.00 annually	2026-03-13 15:57:10.283106
article-49096950	cloud developer	March 11, 2026	St. Catharines (ON)	Salary $70,000.00 to $75,000.00 annually	2026-03-13 15:57:10.283107
article-49107349	software development manager	March 14, 2026	Sainte-Julie (QC)	Salary $90,000.00 to $120,000.00 annually	2026-03-14 15:39:33.850906
article-49106658	data management specialist	March 14, 2026	Edmonton (AB)	Salary $35.00 to $50.00 hourly	2026-03-14 15:39:33.850912
article-49105265	manager, computer applications	March 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-14 15:39:33.850913
article-49104892	manager, computer systems development	March 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-14 15:39:33.850914
article-49104938	data mining analyst	March 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-14 15:39:33.850914
article-49104974	senior software developer	March 13, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-14 15:39:33.850915
article-49103740	cloud services manager	March 13, 2026	Maple (ON)	Salary $55,000.00 to $63,000.00 annually	2026-03-14 15:39:33.850916
article-49103174	artificial intelligence (AI) analyst	March 13, 2026	Gloucester (ON)	Salary $22.00 hourly	2026-03-14 15:39:33.850918
article-49101448	artificial intelligence (AI) consultant	March 13, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-14 15:39:33.85092
article-49101632	director of technology management	March 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-14 15:39:33.850921
article-49101672	senior software developer	March 13, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-14 15:39:33.850922
article-49101700	software development manager	March 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-14 15:39:33.850923
article-49101708	data scientist	March 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-14 15:39:33.850923
article-49101730	director of technology management	March 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-14 15:39:33.850924
article-49106159	software developer	March 13, 2026	Kelowna (BC)	Salary $86,828.09 to $142,291.20 annually	2026-03-14 15:39:33.850925
article-49094043	software development manager	March 12, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-14 15:39:42.521392
article-49093993	artificial intelligence (AI) consultant	March 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-14 15:39:42.521396
article-49109527	senior software developer	March 14, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-15 15:41:36.829653
article-49109616	manager, computer applications	March 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-15 15:41:36.829658
article-49109446	data mining analyst	March 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-15 15:41:36.829659
article-49108560	clerical supervisor	March 14, 2026	Concord (ON)	Salary $26.00 to $29.00 hourly	2026-03-15 15:41:36.829659
article-49108114	senior software developer	March 14, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-15 15:41:36.82966
article-49107552	artificial intelligence (AI) consultant	March 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-15 15:41:36.829661
article-49107555	manager, computer applications	March 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-15 15:41:36.829661
article-49107560	senior software developer	March 14, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-15 15:41:36.829663
article-49107567	manager, computer applications	March 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-15 15:41:36.829663
article-49107606	manager, database	March 14, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-15 15:41:36.829664
article-49107624	artificial intelligence (AI) analyst	March 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-15 15:41:36.829665
article-49107637	senior software developer	March 14, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-15 15:41:36.829665
article-49107666	manager, computer systems	March 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-15 15:41:36.829666
article-49107677	manager, IT (information technology) implementation	March 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-15 15:41:36.829667
article-49107680	data mining analyst	March 14, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-15 15:41:36.829667
article-49107691	senior software developer	March 14, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-15 15:41:36.829668
article-49107695	senior software developer	March 14, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-15 15:41:36.829668
article-49107802	artificial intelligence (AI) consultant	March 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-15 15:41:36.829669
article-49107820	director of technology management	March 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-15 15:41:36.829669
article-49107927	data analyst - informatics and systems	March 14, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-15 15:41:36.82967
article-49108002	manager, computer systems development	March 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-15 15:41:36.82967
article-49109742	manager, data processing and systems analysis	March 13, 2026	Brampton (ON)	Salary $40.00 to $92.00 hourly	2026-03-15 15:41:47.788536
article-49116611	artificial intelligence (AI) consultant	March 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:14.185596
article-49116613	artificial intelligence (AI) consultant	March 16, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:14.185601
article-49116636	information technology (IT) director	March 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-16 16:17:14.185602
article-49116739	senior software developer	March 16, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-03-16 16:17:14.185602
article-49116778	senior software developer	March 16, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-16 16:17:14.185603
article-49116808	software developer	March 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-16 16:17:14.185604
article-49116826	artificial intelligence (AI) consultant	March 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:14.185604
article-49116830	artificial intelligence (AI) analyst	March 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:14.185605
article-49116855	senior software developer	March 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-16 16:17:14.185606
article-49116856	software developer	March 16, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-03-16 16:17:14.185607
article-49116891	database manager	March 16, 2026	Montréal (QC)	Salary $25.00 to $61.03 hourly	2026-03-16 16:17:14.185607
article-49116898	director of technology management	March 16, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-03-16 16:17:14.185608
article-49116922	artificial intelligence (AI) consultant	March 16, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:14.185609
article-49116936	manager, IT (information technology) implementation	March 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-16 16:17:14.185609
article-49116942	data mining analyst	March 16, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:14.18561
article-49116960	senior software developer	March 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-16 16:17:14.18561
article-49116961	manager, computer applications	March 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-16 16:17:14.185611
article-49116964	senior software developer	March 16, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-16 16:17:14.185611
article-49116972	software developer	March 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-16 16:17:14.185612
article-49117037	artificial intelligence (AI) consultant	March 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:14.185612
article-49117044	artificial intelligence (AI) consultant	March 16, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:14.185613
article-49117057	senior software developer	March 16, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-16 16:17:14.185613
article-49117092	software development manager	March 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-16 16:17:14.185614
article-49117102	information technology (IT) implementation manager	March 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-16 16:17:14.185615
article-49117169	manager, computer systems development	March 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-16 16:17:14.185615
article-49114797	data scientist	March 16, 2026	London (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:22.124712
article-49113326	manager, data processing and systems analysis	March 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-16 16:17:22.124717
article-49111571	data scientist	March 15, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:22.124717
article-49111631	data scientist	March 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:22.124718
article-49111567	data scientist	March 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:22.124718
article-49111530	data scientist	March 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:22.124719
article-49111522	artificial intelligence (AI) consultant	March 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:22.12472
article-49111565	director of technology management	March 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-16 16:17:22.12472
article-49111639	director of technology management	March 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-16 16:17:22.124721
article-49105102	data scientist	March 14, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-16 16:17:22.124721
article-49114983	software developer	March 14, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-16 16:17:22.124722
article-49114810	software developer	March 14, 2026	Edmonton (AB)	Salary $200.00 daily	2026-03-16 16:17:22.124722
article-49114868	software developer	March 14, 2026	Ottawa (ON)	Salary $200.00 daily	2026-03-16 16:17:22.124723
article-49114778	software developer	March 13, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-03-16 16:17:30.096295
article-49123671	manager, computer applications	March 17, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-17 16:17:07.75431
article-49123674	software developer	March 17, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-03-17 16:17:07.754316
article-49123685	manager, computer applications	March 17, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-17 16:17:07.754317
article-49123736	manager, database	March 17, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-17 16:17:07.754317
article-49123752	artificial intelligence (AI) consultant	March 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-17 16:17:07.754318
article-49123796	data scientist	March 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-17 16:17:07.754318
article-49123839	data mining analyst	March 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-17 16:17:07.754319
article-49123859	artificial intelligence (AI) consultant	March 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-17 16:17:07.75432
article-49123863	director of technology management	March 17, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-17 16:17:07.754321
article-49123907	artificial intelligence (AI) consultant	March 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-17 16:17:07.754321
article-49122549	developer, software	March 17, 2026	Saint-Laurent (QC)	Salary $65,000.00 to $90,000.00 annually (to be negotiated)	2026-03-17 16:17:07.754322
article-49122280	machine learning specialist	March 17, 2026	Montréal (QC)	Salary $90,000.00 annually	2026-03-17 16:17:07.754322
article-49121885	software developer	March 17, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-17 16:17:07.754323
article-49121914	software developer	March 17, 2026	Lloydminster (AB)	Salary $90,000.00 to $140,000.00 annually	2026-03-17 16:17:07.754323
article-49121116	manager, IT (information technology) implementation	March 17, 2026	Vancouver (BC)	Salary $40.00 to $92.00 hourly	2026-03-17 16:17:07.754324
article-49120866	operations supervisor	March 17, 2026	Saguenay (QC)	Salary $39.00 to $43.00 hourly	2026-03-17 16:17:07.754324
article-49119919	business systems manager	March 16, 2026	Fort St. John (BC)	Salary $40.00 to $60.00 hourly	2026-03-17 16:17:07.754325
article-49119086	Internet systems administrator	March 16, 2026	Delta (BC)	Salary $49.65 hourly	2026-03-17 16:17:07.754326
article-49118504	data scientist	March 16, 2026	Kitchener (ON)	Salary $53,094.34 to $116,898.51 annually	2026-03-17 16:17:07.754326
article-49117929	office supervisor	March 16, 2026	Richmond (BC)	Salary $38.00 hourly	2026-03-17 16:17:07.754327
article-49121639	software developer	March 16, 2026	Vancouver (BC)	Salary $150,000.00 to $160,000.00 annually	2026-03-17 16:17:18.208189
article-49121840	software developer	March 16, 2026	Toronto (ON)	Salary $100,000.00 to $220,000.00 annually	2026-03-17 16:17:18.208195
article-49121696	software developer	March 16, 2026	Toronto (ON)	Salary $140,000.00 to $165,000.00 annually	2026-03-17 16:17:18.208196
article-49121880	software developer	March 16, 2026	Vancouver (BC)	Salary $140,000.00 to $165,000.00 annually	2026-03-17 16:17:18.208196
article-49121893	software developer	March 16, 2026	Calgary (AB)	Salary $140,000.00 to $165,000.00 annually	2026-03-17 16:17:18.208197
article-49121845	software developer	March 16, 2026	Montréal (QC)	Salary $65.00 to $75.00 annually	2026-03-17 16:17:29.558267
article-49121905	software developer	March 16, 2026	Toronto (ON)	Salary $74.00 to $90.00 hourly	2026-03-17 16:17:29.558272
article-49121939	software developer	March 16, 2026	Toronto (ON)	Salary $65.00 hourly	2026-03-17 16:17:29.558273
article-49121705	software developer	March 16, 2026	Boisbriand (QC)	Salary $90,000.00 to $110,000.00 annually	2026-03-17 16:17:29.558273
article-49121667	software developer	March 15, 2026	Toronto (ON)	Salary $21.12 hourly	2026-03-17 16:17:29.558274
article-49120586	data analyst - informatics and systems	March 15, 2026	Toronto (ON)	Salary $24.00 to $58.00 hourly	2026-03-17 16:17:29.558274
article-49121452	software developer	March 13, 2026	Kelowna (BC)	Salary $86,828.09 to $142,291.20 annually	2026-03-17 16:17:41.13874
article-49129618	software developer	March 18, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-18 16:18:05.272207
article-49129278	director of technology	March 18, 2026	Vancouver (BC)	Salary $193,900.00 to $245,200.00 annually (to be negotiated)	2026-03-18 16:18:05.272211
article-49126006	cloud developer	March 17, 2026	North York (ON)	Salary $71,401.90 to $125,260.32 annually	2026-03-18 16:18:05.272212
article-49125732	big data analyst	March 17, 2026	Calgary (AB)	Salary $17.94 to $59.39 hourly	2026-03-18 16:18:05.272212
article-49124732	software developer	March 17, 2026	Guelph (ON)	Salary $75,000.00 annually	2026-03-18 16:18:05.272213
article-49129759	operations supervisor	March 17, 2026	Coquitlam (BC)	Salary $86,000.00 annually	2026-03-18 16:18:05.272214
article-49129663	software developer	March 17, 2026	Montréal (QC)	Salary $50.00 to $60.00 hourly	2026-03-18 16:18:05.272214
article-49129481	software developer	March 17, 2026	Fort St. John (BC)	Salary $24.50 hourly	2026-03-18 16:18:05.272215
article-49129686	software developer	March 17, 2026	Prince George (BC)	Salary $24.50 hourly	2026-03-18 16:18:05.272216
article-49134894	office supervisor	March 18, 2026	Edmonton (AB)	Salary $36.50 hourly	2026-03-19 16:06:20.956946
article-49133986	cybersecurity manager	March 18, 2026	Montréal (QC)	Salary $23.00 hourly	2026-03-19 16:06:20.95695
article-49134060	cybersecurity manager	March 18, 2026	Saint-Eustache (QC)	Salary $22.00 hourly	2026-03-19 16:06:20.95695
article-49133188	software developer	March 18, 2026	Burnaby (BC)	Salary $4,228.20 biweekly	2026-03-19 16:06:20.956951
article-49131957	cloud operations manager	March 18, 2026	Calgary (AB)	Salary $70,000.00 to $90,000.00 annually	2026-03-19 16:06:20.956951
article-49136148	software developer	March 18, 2026	Waterloo (ON)	Salary $80,000.00 to $110,000.00 annually	2026-03-19 16:06:20.956952
article-49143009	director of technology management	March 20, 2026	Sherbrooke (QC)	Salary $110,414.00 to $134,206.00 annually	2026-03-20 15:56:53.34907
article-49140026	information technology (IT) implementation manager	March 19, 2026	Nelson (BC)	Salary $99,900.00 annually	2026-03-20 15:56:53.349074
article-49138889	records management supervisor	March 19, 2026	Alma (QC)	Salary $30.70 hourly	2026-03-20 15:56:53.349075
article-49138445	information technology (IT) implementation manager	March 19, 2026	Surrey (BC)	Salary $55.86 hourly	2026-03-20 15:56:53.349076
article-49137824	information systems manager	March 19, 2026	Pickering (ON)	Salary $68.00 hourly	2026-03-20 15:56:53.349076
article-49149843	computer manager	March 21, 2026	Montréal (QC)	Salary $150,000.00 to $175,000.00 annually	2026-03-21 15:38:14.237143
article-49148343	artificial intelligence (AI) consultant	March 21, 2026	Québec (QC)	Salary $60,000.00 to $800,000.00 annually	2026-03-21 15:38:14.237147
article-49146098	data engineer	March 20, 2026	Mississauga (ON)	Salary $51.00 hourly	2026-03-21 15:38:14.237148
article-49146095	software developer	March 20, 2026	Mississauga (ON)	Salary $50.00 hourly	2026-03-21 15:38:14.237148
article-49145311	business data analyst	March 20, 2026	Edmonton (AB)	Salary $48.10 hourly	2026-03-21 15:38:14.237149
article-49144423	data analytics specialist	March 20, 2026	Cambridge (ON)	Salary $25.00 to $35.00 hourly (to be negotiated)	2026-03-21 15:38:14.23715
article-49144221	information technology (IT) implementation manager	March 20, 2026	Victoria (BC)	Salary $90,900.08 annually	2026-03-21 15:38:14.23715
article-49152030	database administrator (DBA)	March 21, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-22 15:38:52.151222
article-49152078	software developer	March 21, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-22 15:38:52.151227
article-49152167	data analyst - informatics and systems	March 21, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-22 15:38:52.151228
article-49150538	cloud developer	March 21, 2026	Oakville (ON)	Salary $55,000.00 to $75,000.00 annually	2026-03-22 15:38:52.151229
article-49150387	data analyst - informatics and systems	March 21, 2026	Mississauga (ON)	Salary $25.00 to $61.03 hourly	2026-03-22 15:38:52.151231
article-49149949	director of technology management	March 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-22 15:38:52.151232
article-49149966	artificial intelligence (AI) consultant	March 21, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-03-22 15:38:52.151233
article-49149973	senior software developer	March 21, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-22 15:38:52.151235
article-49149974	data scientist	March 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-22 15:38:52.151236
article-49149975	artificial intelligence (AI) consultant	March 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-22 15:38:52.151237
article-49150003	artificial intelligence (AI) consultant	March 21, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-03-22 15:38:52.151238
article-49150025	senior software developer	March 21, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-22 15:38:52.151238
article-49150076	senior software developer	March 21, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-22 15:38:52.151239
article-49150109	senior software developer	March 21, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-22 15:38:52.151239
article-49150114	data scientist	March 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-22 15:38:52.15124
article-49150122	senior software developer	March 21, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-03-22 15:38:52.15124
article-49150127	data processing director	March 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-22 15:38:52.151241
article-49150156	senior software developer	March 21, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-22 15:38:52.151241
article-49150166	director of technology management	March 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-22 15:38:52.151242
article-49153053	big data analyst	March 21, 2026	Toronto (ON)	Salary $20.00 hourly	2026-03-22 15:38:52.151243
article-49158798	cloud operations manager	March 23, 2026	Caledon Village (ON)	Salary $55,000.00 to $66,000.00 annually	2026-03-23 16:09:41.671429
article-49158200	data entry supervisor	March 23, 2026	Concord (ON)	Salary $36.00 hourly	2026-03-23 16:09:41.671436
article-49157194	software developer	March 23, 2026	Toronto (ON)	Salary $80.00 hourly	2026-03-23 16:09:41.671437
article-49157306	software developer	March 23, 2026	Toronto (ON)	Salary $85.00 hourly	2026-03-23 16:09:41.671438
article-49157404	software developer	March 23, 2026	Toronto (ON)	Salary $80.00 hourly	2026-03-23 16:09:41.671438
article-49157491	software developer	March 23, 2026	Toronto (ON)	Salary $95.00 hourly	2026-03-23 16:09:41.671439
article-49157509	software developer	March 23, 2026	Toronto (ON)	Salary $80.00 hourly	2026-03-23 16:09:41.671439
article-49157590	operations supervisor	March 23, 2026	Toronto (ON)	Salary $65.00 hourly	2026-03-23 16:09:41.67144
article-49157702	senior software developer	March 23, 2026	Toronto (ON)	Salary $200.00 daily	2026-03-23 16:09:41.671441
article-49157764	software developer	March 23, 2026	Toronto (ON)	Salary $80.00 hourly	2026-03-23 16:09:41.671442
article-49157780	software developer	March 23, 2026	Toronto (ON)	Salary $80.00 hourly	2026-03-23 16:09:41.671442
article-49157804	software developer	March 23, 2026	Toronto (ON)	Salary $80.00 hourly	2026-03-23 16:09:41.671443
article-49157814	software developer	March 23, 2026	Toronto (ON)	Salary $70.00 hourly	2026-03-23 16:09:41.671444
article-49157652	software developer	March 23, 2026	Toronto (ON)	Salary $55.00 hourly	2026-03-23 16:09:41.671444
article-49156936	business data analyst	March 23, 2026	Edmonton (AB)	Salary $48.10 hourly	2026-03-23 16:09:41.671445
article-49155831	manager, IT (information technology) implementation	March 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-23 16:09:41.671445
article-49156076	manager, computer applications	March 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-23 16:09:41.671446
article-49155098	manager, IT (information technology) implementation	March 22, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-03-23 16:09:41.671447
article-49154587	developer, software	March 22, 2026	Blainville (QC)	Salary $55,000.00 annually	2026-03-23 16:09:41.671447
article-49154627	data scientist	March 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-23 16:09:41.671447
article-49154315	cloud operations manager	March 22, 2026	Westlock (AB)	Salary $90,000.00 to $110,000.00 annually	2026-03-23 16:09:41.671448
article-49154058	artificial intelligence (AI) consultant	March 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-23 16:09:41.671449
article-49154066	software development manager	March 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-23 16:09:41.671449
article-49154071	manager, computer applications	March 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-23 16:09:41.67145
article-49154114	director of technology management	March 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-23 16:09:41.67145
article-49154136	director of technology management	March 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-23 16:09:50.519391
article-49157426	software developer	March 22, 2026	Hamilton (ON)	Salary $24.05 hourly	2026-03-23 16:09:50.519402
article-49157629	software developer	March 21, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-03-23 16:09:50.519403
article-49156822	big data analyst	March 21, 2026	Toronto (ON)	Salary $20.00 hourly	2026-03-23 16:09:50.519404
article-49157723	software developer	March 21, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-23 16:09:50.519405
article-49157448	software developer	March 21, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-03-23 16:09:50.519406
article-49157205	software developer	March 20, 2026	Toronto (ON)	Salary $130,000.00 to $160,000.00 annually	2026-03-23 16:09:58.108282
article-49157269	software developer	March 20, 2026	Hamilton (ON)	Salary $28.95 hourly	2026-03-23 16:09:58.108289
article-49157365	software developer	March 20, 2026	Mississauga (ON)	Salary $41.00 hourly	2026-03-23 16:09:58.10829
article-49157468	software developer	March 19, 2026	Vancouver (BC)	Salary $90,000.00 to $130,000.00 annually	2026-03-23 16:09:58.108291
article-49157419	software developer	March 19, 2026	Oakville (ON)	Salary $140,000.00 annually	2026-03-23 16:09:58.108291
article-49157229	software developer	March 19, 2026	Toronto (ON)	Salary $85,000.00 annually	2026-03-23 16:09:58.108292
article-49157812	software developer	March 19, 2026	Toronto (ON)	Salary $85,000.00 annually	2026-03-23 16:09:58.108292
article-49157543	software developer	March 19, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-23 16:09:58.108293
article-49157457	software developer	March 19, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-23 16:09:58.108293
article-49157609	software developer	March 19, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-23 16:09:58.108294
article-49157518	software developer	March 19, 2026	Vancouver (BC)	Salary $26.00 hourly	2026-03-23 16:09:58.108294
article-49157618	software developer	March 19, 2026	Montréal (QC)	Salary $85,000.00 to $125,000.00 annually	2026-03-23 16:09:58.108295
article-49157657	software developer	March 19, 2026	Windsor (ON)	Salary $85,000.00 to $125,000.00 annually	2026-03-23 16:09:58.108296
article-49157725	software developer	March 19, 2026	Toronto (ON)	Salary $85,000.00 to $125,000.00 annually	2026-03-23 16:09:58.108296
article-49166942	machine learning specialist	March 24, 2026	Toronto (ON)	Salary $100,600.00 to $125,800.00 annually (to be negotiated)	2026-03-24 16:17:58.373255
article-49166472	manager, computer applications	March 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-24 16:17:58.373259
article-49166484	software developer	March 24, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-24 16:17:58.37326
article-49166498	artificial intelligence (AI) consultant	March 24, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-24 16:17:58.373261
article-49166525	senior software developer	March 24, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-03-24 16:17:58.373261
article-49166551	software developer	March 24, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-03-24 16:17:58.373262
article-49166627	manager, IT (information technology) implementation	March 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-24 16:17:58.373262
article-49166687	data scientist	March 24, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-24 16:17:58.373264
article-49166695	manager, computer systems development	March 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-24 16:17:58.373264
article-49166291	software developer	March 24, 2026	Calgary (AB)	Salary $48.08 hourly	2026-03-24 16:17:58.373265
article-49165718	software developer	March 24, 2026	Oakville (ON)	Salary $60,000.00 to $105,000.00 annually (to be negotiated)	2026-03-24 16:17:58.373266
article-49165455	operations supervisor	March 24, 2026	Québec (QC)	Salary $55,000.00 to $57,000.00 annually (to be negotiated)	2026-03-24 16:17:58.373266
article-49164412	operations supervisor	March 24, 2026	North Vancouver (BC)	Salary $29.00 to $33.00 hourly	2026-03-24 16:17:58.373267
article-49161988	database analyst	March 23, 2026	Richmond Hill (ON)	Salary $45.00 hourly	2026-03-24 16:17:58.373267
article-49161734	application programmer	March 23, 2026	Surrey (BC)	Salary $62.00 hourly	2026-03-24 16:17:58.373268
article-49160177	information technology (IT) director	March 23, 2026	Burnaby (BC)	Salary $180,523.00 annually	2026-03-24 16:17:58.373268
article-49160110	office supervisor	March 23, 2026	Brampton (ON)	Salary $36.50 hourly	2026-03-24 16:17:58.373269
article-49159430	data architect	March 23, 2026	Montréal (QC)	Salary $80,000.00 annually	2026-03-24 16:17:58.373269
article-49159502	data analyst - informatics and systems	March 23, 2026	Mississauga (ON)	Salary $25.00 to $61.03 hourly	2026-03-24 16:17:58.37327
article-49159525	artificial intelligence (AI) consultant	March 23, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-03-24 16:17:58.373271
article-49159556	artificial intelligence (AI) consultant	March 23, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-24 16:17:58.373271
article-49159667	artificial intelligence (AI) consultant	March 23, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-03-24 16:17:58.373272
article-49159696	artificial intelligence (AI) consultant	March 23, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-24 16:17:58.373272
article-49159714	manager, computer applications	March 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-24 16:17:58.373273
article-49159751	data scientist	March 23, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-24 16:17:58.373273
article-49159860	artificial intelligence (AI) consultant	March 23, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-03-24 16:18:06.910825
article-49159752	artificial intelligence (AI) consultant	March 23, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-24 16:18:06.910829
article-49159868	manager, computer applications	March 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-24 16:18:06.91083
article-49159879	information technology (IT) implementation manager	March 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-24 16:18:06.91083
article-49159333	machine learning engineer	March 23, 2026	Vancouver (BC)	Salary $75,000.00 to $85,000.00 annually (to be negotiated)	2026-03-24 16:18:06.910831
article-49164415	business data analyst	March 23, 2026	Edmonton (AB)	Salary $48.10 hourly	2026-03-24 16:18:06.910831
article-49154181	application programmer	March 22, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-03-24 16:18:15.607279
article-49164457	big data analyst	March 21, 2026	Toronto (ON)	Salary $20.00 hourly	2026-03-24 16:18:15.607284
article-49164399	cloud developer	March 21, 2026	Oakville (ON)	Salary $55,000.00 to $75,000.00 annually	2026-03-24 16:18:15.607285
article-49173199	artificial intelligence (AI) consultant	March 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:22:04.093944
article-49173206	information technology (IT) director	March 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:04.093948
article-49173243	software engineering manager	March 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:04.093949
article-49173251	software development manager	March 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:04.09395
article-49173284	senior software developer	March 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:22:04.093951
article-49173378	director of technology management	March 25, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:04.093951
article-49173384	software development manager	March 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:04.093952
article-49173473	data scientist	March 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:22:04.093953
article-49173489	senior software developer	March 25, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:22:04.093954
article-49173497	data analyst - informatics and systems	March 25, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-25 16:22:04.093954
article-49173506	senior software developer	March 25, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-25 16:22:04.093955
article-49173517	software development manager	March 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:04.093956
article-49173521	manager, IT (information technology) implementation	March 25, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:04.093956
article-49173524	senior software developer	March 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:22:04.093957
article-49173369	Java programmer	March 25, 2026	Montréal (QC)	Salary $75,000.00 to $100,000.00 annually (to be negotiated)	2026-03-25 16:22:04.093957
article-49171310	data scientist	March 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:22:04.093958
article-49171242	systems implementation manager - computer systems	March 25, 2026	Saint-Georges (QC)	Salary $35.00 to $45.00 hourly	2026-03-25 16:22:04.093958
article-49170395	director of technology management	March 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:04.093959
article-49170452	artificial intelligence (AI) consultant	March 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:22:04.093959
article-49170496	manager, computer applications	March 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:04.09396
article-49168208	e-business (electronic business) software developer	March 24, 2026	Various locations	Salary $90,000.00 to $100,000.00 annually (to be negotiated)	2026-03-25 16:22:04.09396
article-49167846	data administrator	March 24, 2026	Edmonton (AB)	Salary $46.00 hourly	2026-03-25 16:22:04.093961
article-49167242	cloud developer	March 24, 2026	Markham (ON)	Salary $60,000.00 to $72,000.00 annually	2026-03-25 16:22:04.093961
article-49166946	senior software developer	March 24, 2026	Etobicoke (ON)	Salary $113,409.00 annually	2026-03-25 16:22:04.093962
article-49163025	data mining analyst	March 24, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:22:13.037642
article-49163142	data scientist	March 24, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:22:13.037646
article-49172071	software developer	March 24, 2026	Victoria (BC)	Salary $50.00 to $60.00 hourly	2026-03-25 16:22:13.037647
article-49172013	software developer	March 24, 2026	Toronto (ON)	Salary $80.00 hourly	2026-03-25 16:22:13.037647
article-49172046	software developer	March 24, 2026	Toronto (ON)	Salary $80.00 hourly	2026-03-25 16:22:13.037648
article-49171961	software developer	March 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:22:13.037648
article-49171889	software developer	March 24, 2026	Toronto (ON)	Salary $70.00 hourly	2026-03-25 16:22:13.037649
article-49172034	software developer	March 24, 2026	Toronto (ON)	Salary $80.00 hourly	2026-03-25 16:22:13.037649
article-49172041	software developer	March 24, 2026	Chatham (ON)	Salary $85,000.00 to $125,000.00 annually	2026-03-25 16:22:13.03765
article-49171779	software developer	March 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:22:13.03765
article-49171828	software developer	March 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:22:13.037651
article-49171994	software developer	March 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:22:13.037652
article-49172006	software developer	March 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:22:13.037652
article-49172020	software developer	March 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:22:13.037652
article-49172052	software developer	March 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:22:13.037653
article-49171626	software developer	March 24, 2026	Brossard (QC)	Salary $110,013.52 annually	2026-03-25 16:22:22.55162
article-49163151	artificial intelligence (AI) consultant	March 24, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:22:22.551624
article-49159834	software development manager	March 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:22.551625
article-49159844	data processing director	March 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:22.551625
article-49159876	senior software developer	March 23, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:22:22.551626
article-49157986	DBA (database architect)	March 23, 2026	Trois-Rivières, QC	Salary $80,000.00 to $130,000.00 annually (to be negotiated)	2026-03-25 16:22:22.551626
article-49155966	software developer	March 23, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:22:31.771775
article-49172045	software developer	March 23, 2026	Oakville (ON)	Salary $120,000.00 annually	2026-03-25 16:22:31.77178
article-49171964	software developer	March 23, 2026	Toronto (ON)	Salary $48.00 hourly	2026-03-25 16:22:31.771781
article-49156011	manager, data processing and systems analysis	March 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:31.771782
article-49171481	business data analyst	March 23, 2026	Edmonton (AB)	Salary $48.10 hourly	2026-03-25 16:22:31.771783
article-49151963	software developer	March 22, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:22:31.771784
article-49152132	data analyst - informatics and systems	March 22, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-25 16:22:31.771785
article-49152082	software development manager	March 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:31.771786
article-49151865	manager, data processing and systems analysis	March 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:31.771787
article-49152017	manager, computer applications	March 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:22:31.771788
article-49171524	big data analyst	March 21, 2026	Toronto (ON)	Salary $20.00 hourly	2026-03-25 16:22:42.589351
article-49143239	data scientist	March 20, 2026	London, ON	Salary $85,000.00 to $95,000.00 annually (to be negotiated)	2026-03-25 16:22:42.589355
article-49135217	cybersecurity manager	March 19, 2026	Saint-Laurent (QC)	Salary $30.00 hourly	2026-03-25 16:22:51.573655
article-49170732	software developer	March 18, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:22:51.57366
article-49160203	data communications specialist	March 17, 2026	Toronto (ON)	Salary $65,203.00 to $111,078.00 annually	2026-03-25 16:23:00.043167
article-49163887	software developer	March 17, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:23:00.043173
article-49170561	software developer	March 17, 2026	Fort St. John (BC)	Salary $24.50 hourly	2026-03-25 16:23:00.043174
article-49170832	software developer	March 17, 2026	Prince George (BC)	Salary $24.50 hourly	2026-03-25 16:23:00.043175
article-49163928	software developer	March 17, 2026	Lloydminster (AB)	Salary $90,000.00 to $140,000.00 annually	2026-03-25 16:23:00.043175
article-49170795	software developer	March 17, 2026	Montréal (QC)	Salary $50.00 to $60.00 hourly	2026-03-25 16:23:00.043176
article-49170971	operations supervisor	March 17, 2026	Coquitlam (BC)	Salary $86,000.00 annually	2026-03-25 16:23:00.043177
article-49170957	data engineer	March 16, 2026	Toronto (ON)	Salary $80,000.00 to $130,000.00 annually	2026-03-25 16:23:00.043178
article-49113318	software developer	March 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:00.043179
article-49113191	software developer	March 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:00.043179
article-49163821	software developer	March 16, 2026	Toronto (ON)	Salary $100,000.00 to $220,000.00 annually	2026-03-25 16:23:00.04318
article-49113418	senior software developer	March 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:00.043181
article-49127762	data communications specialist	March 16, 2026	Québec (QC)	Salary $30.00 to $67.00 hourly	2026-03-25 16:23:00.043181
article-49163632	software developer	March 16, 2026	Toronto (ON)	Salary $140,000.00 to $165,000.00 annually	2026-03-25 16:23:07.369048
article-49163882	software developer	March 16, 2026	Vancouver (BC)	Salary $140,000.00 to $165,000.00 annually	2026-03-25 16:23:07.369054
article-49163899	software developer	March 16, 2026	Calgary (AB)	Salary $140,000.00 to $165,000.00 annually	2026-03-25 16:23:07.369055
article-49170873	software developer	March 16, 2026	Montréal (QC)	Salary $140,000.00 to $165,000.00 annually	2026-03-25 16:23:07.369056
article-49170827	software developer	March 16, 2026	Vancouver (BC)	Salary $50,000.00 to $75,000.00 annually	2026-03-25 16:23:07.369056
article-49163826	software developer	March 16, 2026	Montréal (QC)	Salary $65.00 to $75.00 annually	2026-03-25 16:23:07.369057
article-49163989	data modeler	March 16, 2026	Toronto (ON)	Salary $95.00 hourly	2026-03-25 16:23:07.369058
article-49113417	manager, data processing and systems analysis	March 16, 2026	Vancouver (BC)	Salary $40.00 to $92.00 hourly	2026-03-25 16:23:07.369059
article-49170781	software developer	March 16, 2026	Toronto (ON)	Salary $85,000.00 to $90,000.00 annually	2026-03-25 16:23:07.36906
article-49170687	software developer	March 16, 2026	Toronto (ON)	Salary $50,000.00 to $67,000.00 annually	2026-03-25 16:23:07.369061
article-49157645	software developer	March 16, 2026	Toronto (ON)	Salary $90,000.00 to $95,000.00 annually	2026-03-25 16:23:07.369062
article-49113345	software developer	March 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:07.369063
article-49113446	software developer	March 16, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:07.369064
article-49163977	software developer	March 16, 2026	Toronto (ON)	Salary $65.00 hourly	2026-03-25 16:23:07.369065
article-49170714	software developer	March 16, 2026	Toronto (ON)	Salary $70,000.00 to $80,000.00 annually	2026-03-25 16:23:07.369066
article-49170944	software developer	March 16, 2026	Calgary (AB)	Salary $22.00 hourly	2026-03-25 16:23:07.369067
article-49157432	software developer	March 16, 2026	Calgary (AB)	Salary $60,000.00 to $150,000.00 annually	2026-03-25 16:23:07.369068
article-49170933	software developer	March 16, 2026	Vancouver (BC)	Salary $75,000.00 annually	2026-03-25 16:23:07.369069
article-49170929	software developer	March 16, 2026	Toronto (ON)	Salary $90,000.00 to $110,000.00 annually	2026-03-25 16:23:07.36907
article-49170774	software developer	March 16, 2026	Mississauga (ON)	Salary $19.00 to $20.00 annually	2026-03-25 16:23:07.369071
article-49163662	software developer	March 16, 2026	Boisbriand (QC)	Salary $90,000.00 to $110,000.00 annually	2026-03-25 16:23:07.369072
article-49127725	information technology (IT) director	March 16, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-03-25 16:23:07.369073
article-49113413	manager, computer applications	March 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:07.369074
article-49109717	manager, data processing and systems analysis	March 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:16.221259
article-49109690	software developer	March 15, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:16.221264
article-49109817	data analyst - informatics and systems	March 15, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-25 16:23:16.221265
article-49105361	data scientist	March 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:23:16.221266
article-49157933	software developer	March 14, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:23:16.221267
article-49105252	software developer	March 14, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:16.221268
article-49157890	software developer	March 14, 2026	Edmonton (AB)	Salary $200.00 daily	2026-03-25 16:23:16.221269
article-49157904	software developer	March 14, 2026	Ottawa (ON)	Salary $200.00 daily	2026-03-25 16:23:16.22127
article-49105235	director of technology management	March 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:16.221271
article-49105312	manager, computer applications	March 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:16.221272
article-49105210	database architect	March 14, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-25 16:23:16.221273
article-49105316	manager, computer applications	March 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:16.221274
article-49097870	manager, data processing and systems analysis	March 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:25.783019
article-49157865	software developer	March 13, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-03-25 16:23:25.783025
article-49141772	software developer	March 13, 2026	Vancouver (BC)	Salary $35.00 hourly	2026-03-25 16:23:25.783026
article-49141966	software developer	March 13, 2026	Vancouver (BC)	Salary $35.00 hourly	2026-03-25 16:23:25.783027
article-49142021	software developer	March 13, 2026	Vancouver (BC)	Salary $110,000.00 to $135,000.00 annually	2026-03-25 16:23:25.783028
article-49090464	data scientist	March 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:23:25.783029
article-49090520	data mining analyst	March 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:23:25.78303
article-49090469	data scientist	March 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:23:25.783031
article-49090501	software developer	March 12, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:25.783032
article-49090302	artificial intelligence (AI) consultant	March 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-25 16:23:25.783033
article-49170675	software developer	March 12, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:23:25.783034
article-49090467	architect, database	March 12, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-25 16:23:25.783035
article-49170709	machine learning engineer	March 12, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:23:25.783036
article-49126358	data engineer	March 11, 2026	Markham (ON)	Salary $60,000.00 to $70,000.00 annually	2026-03-25 16:23:34.668436
article-49170778	software developer	March 11, 2026	Montréal (QC)	Salary $10,000.00 monthly	2026-03-25 16:23:34.668442
article-49128492	software developer	March 11, 2026	Vancouver (BC)	Salary $115,000.00 annually	2026-03-25 16:23:34.668443
article-49170908	software developer	March 11, 2026	Montréal (QC)	Salary $10,000.00 monthly	2026-03-25 16:23:34.668444
article-49083471	senior software developer	March 11, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:34.668444
article-49075329	software developer	March 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:34.668446
article-49075605	software developer	March 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:34.668446
article-49163879	software developer	March 10, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:23:34.668448
article-49075453	software developer	March 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:34.668448
article-49075722	software developer	March 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:43.403698
article-49075565	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:43.403704
article-49075252	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:43.403705
article-49075658	manager, IT (information technology) implementation	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:43.403706
article-49075375	manager, computer systems	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:43.403707
article-49075422	manager, IT (information technology) implementation	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:43.403708
article-49075640	manager, IT (information technology) implementation	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:43.403709
article-49075675	manager, computer applications	March 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:43.40371
article-49067917	senior software developer	March 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-25 16:23:43.403711
article-49067877	manager, IT (information technology) implementation	March 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-25 16:23:43.403712
article-49063815	manager, IT (information technology) implementation	March 08, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-03-25 16:23:51.224377
article-49170638	software developer	March 07, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:23:51.224381
article-49170671	software developer	March 07, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:23:51.224382
article-49056022	data scientist	March 06, 2026	Calgary, AB	Salary $46.15 hourly	2026-03-25 16:23:51.224383
article-49049512	data scientist	March 06, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-25 16:23:51.224384
article-49170843	software developer	March 06, 2026	Vancouver (BC)	Salary $10,000.00 monthly	2026-03-25 16:23:51.224385
article-49163540	software developer	March 06, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-03-25 16:23:51.224386
article-49083835	data mining analyst	March 05, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-03-25 16:23:51.224387
article-49163585	software developer	March 05, 2026	Toronto (ON)	Salary $95,000.00 annually	2026-03-25 16:23:51.224388
article-49164030	software developer	March 03, 2026	Ottawa (ON)	Salary $23.00 hourly	2026-03-25 16:24:01.705379
article-49163781	software developer	March 03, 2026	Ottawa (ON)	Salary $23.00 hourly	2026-03-25 16:24:01.705383
article-49170738	software developer	March 03, 2026	Toronto (ON)	Salary $75,000.00 to $110,000.00 annually	2026-03-25 16:24:01.705384
article-49076793	cloud developer	March 03, 2026	Calgary (AB)	Salary $100,000.00 to $120,000.00 annually	2026-03-25 16:24:01.705385
article-49164208	database manager	March 02, 2026	Abbotsford (BC)	Salary $50.00 to $55.00 hourly (to be negotiated)	2026-03-25 16:24:01.705386
article-49166161	office supervisor	March 02, 2026	Mississauga (ON)	Salary $36.00 hourly	2026-03-25 16:24:01.705387
article-49076683	big data analyst	March 02, 2026	Toronto (ON)	Salary $85,000.00 to $100,000.00 annually	2026-03-25 16:24:01.705388
article-49170881	software developer	March 02, 2026	Montréal (QC)	Salary $65.52 to $80.00 hourly	2026-03-25 16:24:01.705389
article-49170911	software developer	March 02, 2026	Pembroke (ON)	Salary $54,000.00 to $58,000.00 annually	2026-03-25 16:24:01.70539
article-49161169	cloud developer	March 02, 2026	Toronto (ON)	Salary $75,000.00 to $95,000.00 annually	2026-03-25 16:24:01.705391
article-49171775	cloud operations manager	March 02, 2026	Calgary (AB)	Salary $18.06 to $20.00 hourly	2026-03-25 16:24:12.52804
article-49170727	software developer	February 27, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:24:12.528046
article-49163936	software developer	February 27, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:24:12.528046
article-49103490	office supervisor	February 26, 2026	Tweed (ON)	Salary $31.00 hourly	2026-03-25 16:24:12.528047
article-49163813	software developer	February 26, 2026	Toronto (ON)	Salary $60.00 hourly	2026-03-25 16:24:12.528048
article-49170707	software developer	February 26, 2026	Toronto (ON)	Salary $6,069.00 monthly	2026-03-25 16:24:12.528049
article-49170950	software developer	February 26, 2026	Hamilton (ON)	Salary $21.00 hourly	2026-03-25 16:24:12.52805
article-49163792	software developer	February 25, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:24:22.246494
article-49170998	data architect	February 25, 2026	Toronto (ON)	Salary $150,000.00 annually	2026-03-25 16:24:22.246499
article-49163838	software developer	February 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-25 16:24:22.2465
article-49102057	office supervisor	February 19, 2026	Coquitlam (BC)	Salary $33.50 hourly	2026-03-25 16:24:22.246501
article-49140795	database designer	February 17, 2026	Mississauga (ON)	Salary $95,000.00 annually	2026-03-25 16:24:22.246501
article-49168340	office supervisor	February 16, 2026	Surrey (BC)	Salary $36.60 hourly	2026-03-25 16:24:22.246502
article-49119802	database analyst (DBA)	February 14, 2026	Brampton (ON)	Salary $45.00 hourly	2026-03-25 16:24:22.246503
article-49148709	office supervisor	February 13, 2026	Burnaby (BC)	Salary $37.00 hourly	2026-03-25 16:24:22.246504
article-49168351	operations supervisor	February 13, 2026	Surrey (BC)	Salary $36.60 hourly	2026-03-25 16:24:22.246505
article-49102348	operations supervisor	February 12, 2026	Brampton (ON)	Salary $36.10 hourly	2026-03-25 16:24:22.246506
article-49144128	operations supervisor	February 05, 2026	Pitt Meadows (BC)	Salary $47,000.00 to $50,000.00 annually (to be negotiated)	2026-03-25 16:24:32.575992
article-49094436	records office supervisor	February 04, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-03-25 16:24:32.575997
article-49137677	records office supervisor	January 14, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-03-25 16:24:32.575998
article-49138757	data analyst - informatics and systems	January 14, 2026	Surrey (BC)	Salary $45.00 hourly	2026-03-25 16:24:32.575999
article-49137661	records office supervisor	January 13, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-03-25 16:24:32.576
article-49113545	records office supervisor	January 08, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-03-25 16:24:42.920737
article-49143779	software developer	December 18, 2025	Fergus (ON)	Salary $49.00 hourly	2026-03-25 16:24:42.920742
article-49178506	director of technology management	March 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-26 16:20:37.98129
article-49178521	data analyst - informatics and systems	March 26, 2026	Mississauga (ON)	Salary $25.00 to $61.03 hourly	2026-03-26 16:20:37.981294
article-49178639	manager, database	March 26, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-26 16:20:37.981295
article-49178723	director of technology management	March 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-26 16:20:37.981295
article-49178727	artificial intelligence (AI) consultant	March 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-26 16:20:37.981296
article-49178740	senior software developer	March 26, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-26 16:20:37.981296
article-49178761	senior software developer	March 26, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-26 16:20:37.981297
article-49178869	data scientist	March 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-26 16:20:37.981298
article-49178894	manager, computer applications	March 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-26 16:20:37.981299
article-49176630	computer programs manager	March 26, 2026	Val-d'Or (QC)	Salary $40.92 to $53.99 hourly	2026-03-26 16:20:37.981299
article-49175818	business data analyst	March 25, 2026	Nepean (ON)	Salary $3,850.00 biweekly	2026-03-26 16:20:37.9813
article-49175250	test engineering manager - software	March 25, 2026	Morinville (AB)	Salary $17.75 to $21.00 hourly (to be negotiated)	2026-03-26 16:20:37.9813
article-49174802	cloud developer	March 25, 2026	Calgary (AB)	Salary $56,000.00 annually	2026-03-26 16:20:37.981301
article-49177036	software developer	March 25, 2026	Toronto (ON)	Salary $62.00 hourly	2026-03-26 16:20:48.172867
article-49176855	big data analyst	March 24, 2026	Mississauga (ON)	Salary $68,100.00 to $76,500.00 annually	2026-03-26 16:20:48.172871
article-49185138	desktop publishing supervisor	March 27, 2026	Vancouver (BC)	Salary $114,465.00 annually	2026-03-28 15:45:42.1974
article-49184998	information systems manager	March 27, 2026	Vancouver (BC)	Salary $64.00 to $99.00 hourly (to be negotiated)	2026-03-28 15:45:42.197405
article-49184117	senior software developer	March 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-28 15:45:42.197406
article-49184131	director of technology management	March 27, 2026	Vancouver (BC)	Salary $43.75 to $103.37 hourly	2026-03-28 15:45:42.197407
article-49184180	manager, computer applications	March 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-28 15:45:42.197407
article-49184184	data scientist	March 27, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-28 15:45:42.197408
article-49184186	director of technology management	March 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-28 15:45:42.197408
article-49184193	data scientist	March 27, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-28 15:45:42.197409
article-49183706	administrator, data	March 27, 2026	Saint-Hyacinthe (QC)	Salary $100,000.00 to $140,000.00 annually	2026-03-28 15:45:42.19741
article-49181279	manager, data processing and systems analysis	March 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-28 15:45:42.197411
article-49181326	senior software developer	March 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-28 15:45:42.197411
article-49180828	big data analyst	March 26, 2026	Markham (ON)	Salary $44.47 hourly	2026-03-28 15:45:42.197412
article-49180245	data analyst - informatics and systems	March 26, 2026	Victoria (BC)	Salary $62.26 hourly	2026-03-28 15:45:42.197412
article-49179773	office supervisor	March 26, 2026	Rocky View (AB)	Salary $36.00 hourly	2026-03-28 15:45:42.197413
article-49181767	Internet systems administrator	March 26, 2026	Montréal (QC)	Salary $85,000.00 to $100,000.00 annually	2026-03-28 15:45:42.197413
article-49181802	computer projects manager	March 26, 2026	Saint-Eustache (QC)	Salary $100,000.00 to $125,000.00 annually	2026-03-28 15:45:42.197414
article-49175572	operations supervisor	March 25, 2026	Georgetown (ON)	Salary $70,000.00 to $80,000.00 annually	2026-03-28 15:45:42.197414
article-49181167	artificial intelligence (AI) consultant	March 25, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-03-28 15:45:53.182967
article-49187439	big data analyst	March 24, 2026	Mississauga (ON)	Salary $68,100.00 to $76,500.00 annually	2026-03-28 15:46:05.847513
article-49188829	data scientist	March 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-29 15:46:09.07625
article-49188464	software development manager	March 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-29 15:46:09.076254
article-49188492	senior software developer	March 28, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-29 15:46:09.076255
article-49188496	manager, computer applications	March 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-29 15:46:09.076255
article-49188523	manager, database	March 28, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-29 15:46:09.076256
article-49188536	manager, computer applications	March 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-29 15:46:09.076256
article-49188591	director of technology management	March 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-29 15:46:09.076257
article-49188600	software engineering manager	March 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-29 15:46:09.076258
article-49188601	operations supervisor	March 28, 2026	Vernon (BC)	Salary $22.00 to $46.00 hourly	2026-03-29 15:46:09.076259
article-49188619	manager, IT (information technology) implementation	March 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-29 15:46:09.07626
article-49188623	data mining analyst	March 28, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-29 15:46:09.076261
article-49188638	software development manager	March 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-29 15:46:09.076261
article-49188655	artificial intelligence (AI) consultant	March 28, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-03-29 15:46:09.076262
article-49188669	senior software developer	March 28, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-29 15:46:09.076262
article-49188670	database analyst (DBA)	March 28, 2026	Montréal (QC)	Salary $25.00 to $61.03 hourly	2026-03-29 15:46:09.076263
article-49188671	senior software developer	March 28, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-03-29 15:46:09.076263
article-49188673	data scientist	March 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-29 15:46:09.076264
article-49188677	data analyst - informatics and systems	March 28, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-29 15:46:09.076265
article-49189728	manager, computer applications	March 27, 2026	Montréal (QC)	Salary $40.00 to $92.00 hourly	2026-03-29 15:46:17.182935
article-49193541	developer, software	March 30, 2026	Montréal (QC)	Salary $20.00 to $35.00 hourly (to be negotiated)	2026-03-30 16:13:04.156583
article-49192895	data mining analyst	March 30, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-30 16:13:04.156587
article-49192416	software developer	March 30, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-30 16:13:04.156587
article-49192424	senior software developer	March 30, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-30 16:13:04.156588
article-49192432	software developer	March 30, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-30 16:13:04.156588
article-49192454	software developer	March 30, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-30 16:13:04.156589
article-49192456	artificial intelligence (AI) consultant	March 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-30 16:13:04.15659
article-49192458	manager, data processing and systems analysis	March 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-30 16:13:04.156591
article-49192521	manager, computer applications	March 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-30 16:13:04.156592
article-49192532	software engineering manager	March 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-30 16:13:04.156592
article-49191385	artificial intelligence (AI) analyst	March 29, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-30 16:13:04.156593
article-49191443	data scientist	March 29, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-30 16:13:04.156593
article-49191444	data mining analyst	March 29, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-30 16:13:04.156594
article-49191456	artificial intelligence (AI) consultant	March 29, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-30 16:13:04.156595
article-49191462	manager, computer applications	March 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-30 16:13:04.156595
article-49191468	director of technology management	March 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-30 16:13:04.156596
article-49191487	director of technology management	March 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-30 16:13:04.156596
article-49191500	information technology (IT) implementation manager	March 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-30 16:13:04.156597
article-49191508	manager, computer systems development	March 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-30 16:13:04.156597
article-49191509	data analyst - informatics and systems	March 29, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-30 16:13:04.156598
article-49191510	manager, computer applications	March 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-30 16:13:04.156598
article-49192417	manager, IT (information technology) implementation	March 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-30 16:13:04.156599
article-49193358	software developer	March 29, 2026	Toronto (ON)	Salary $140,000.00 annually	2026-03-30 16:13:04.156599
article-49193254	software developer	March 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-30 16:13:14.903052
article-49193331	software developer	March 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-30 16:13:14.903056
article-49193284	software developer	March 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-30 16:13:14.903057
article-49193150	software developer	March 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-03-30 16:13:14.903057
article-49193335	software developer	March 27, 2026	Vancouver (BC)	Salary $130.00 to $190.00 annually	2026-03-30 16:13:14.903058
article-49193177	software developer	March 27, 2026	Toronto (ON)	Salary $80.00 hourly	2026-03-30 16:13:14.903059
article-49193233	software developer	March 26, 2026	Toronto (ON)	Salary $5,565.00 monthly	2026-03-30 16:13:14.903059
article-49193303	data engineer	March 25, 2026	Oshawa (ON)	Salary $75.58 to $92.58 hourly	2026-03-30 16:13:27.682616
article-49193300	software developer	March 25, 2026	Markham (ON)	Salary $47.68 to $47.68 hourly	2026-03-30 16:13:27.682621
article-49192871	big data analyst	March 24, 2026	Mississauga (ON)	Salary $68,100.00 to $76,500.00 annually	2026-03-30 16:13:38.730327
article-49193322	software developer	March 24, 2026	Kitchener (ON)	Salary $19.49 hourly	2026-03-30 16:13:38.730332
article-49193687	software developer	March 23, 2026	Vancouver (BC)	Salary $150,000.00 to $160,000.00 annually	2026-03-30 16:14:00.834423
article-49194052	software developer	March 23, 2026	Toronto (ON)	Salary $95.00 to $110.00 hourly	2026-03-30 16:14:00.834428
article-49194089	software developer	March 23, 2026	Vancouver (BC)	Salary $110,000.00 to $135,000.00 annually	2026-03-30 16:14:00.834429
article-49194230	software developer	March 23, 2026	Toronto (ON)	Salary $55.00 hourly	2026-03-30 16:14:00.83443
article-49194098	software developer	March 23, 2026	Vancouver (BC)	Salary $35.00 hourly	2026-03-30 16:14:00.834431
article-49194297	software developer	March 23, 2026	Vancouver (BC)	Salary $110,000.00 to $135,000.00 annually	2026-03-30 16:14:00.834432
article-49194236	software developer	March 23, 2026	Vancouver (BC)	Salary $35.00 hourly	2026-03-30 16:14:00.834433
article-49176891	business data analyst	March 23, 2026	Edmonton (AB)	Salary $48.10 hourly	2026-03-30 16:14:00.834434
article-49176939	big data analyst	March 21, 2026	Toronto (ON)	Salary $20.00 hourly	2026-03-30 16:14:12.71135
article-49193834	software developer	March 20, 2026	Hamilton (ON)	Salary $28.95 hourly	2026-03-30 16:14:12.711355
article-49194054	software developer	March 19, 2026	Oakville (ON)	Salary $140,000.00 annually	2026-03-30 16:14:12.711356
article-49193692	software developer	March 19, 2026	Toronto (ON)	Salary $85,000.00 annually	2026-03-30 16:14:12.711357
article-49194397	software developer	March 19, 2026	Toronto (ON)	Salary $85,000.00 annually	2026-03-30 16:14:12.711358
article-49194105	software developer	March 17, 2026	Montréal (QC)	Salary $50.00 to $60.00 hourly	2026-03-30 16:14:24.394411
article-49193904	software developer	March 16, 2026	Toronto (ON)	Salary $140,000.00 to $165,000.00 annually	2026-03-30 16:14:35.177244
article-49194183	software developer	March 16, 2026	Vancouver (BC)	Salary $140,000.00 to $165,000.00 annually	2026-03-30 16:14:35.177249
article-49194115	software developer	March 16, 2026	Montréal (QC)	Salary $65.00 to $75.00 annually	2026-03-30 16:14:35.17725
article-49194304	software developer	March 16, 2026	Calgary (AB)	Salary $22.00 hourly	2026-03-30 16:14:35.177251
article-49194062	software developer	March 16, 2026	Calgary (AB)	Salary $60,000.00 to $150,000.00 annually	2026-03-30 16:14:35.177252
article-49194285	software developer	March 16, 2026	Toronto (ON)	Salary $90,000.00 to $110,000.00 annually	2026-03-30 16:14:35.177253
article-49198220	data scientist	March 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-31 16:15:38.503952
article-49197561	artificial intelligence (AI) consultant	March 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-31 16:15:38.503956
article-49197688	manager, data processing and systems analysis	March 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-31 16:15:38.503957
article-49197711	software developer	March 30, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-03-31 16:15:38.503957
article-49197482	data mining analyst	March 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-31 16:15:38.503958
article-49196633	software developer	March 30, 2026	Saint-Laurent (QC)	Salary $80,000.00 to $90,000.00 annually	2026-03-31 16:15:38.503958
article-49196153	cloud developer	March 30, 2026	Mississauga (ON)	Salary $47,636.88 to $130,709.76 annually	2026-03-31 16:15:38.503959
article-49195782	video game developer	March 30, 2026	Edmonton (AB)	Salary $50,000.00 to $60,000.00 annually (to be negotiated)	2026-03-31 16:15:38.50396
article-49195285	data engineer	March 30, 2026	Ottawa (ON)	Salary $89,056.00 to $111,320.00 annually (to be negotiated)	2026-03-31 16:15:38.503961
article-49194430	artificial intelligence (AI) consultant	March 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-31 16:15:38.503962
article-49194451	information technology (IT) director	March 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-31 16:15:38.503962
article-49194593	data scientist	March 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-31 16:15:38.503963
article-49194693	manager, IT (information technology) implementation	March 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-31 16:15:38.503963
article-49194699	director of technology management	March 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-31 16:15:38.503964
article-49194712	manager, computer systems	March 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-03-31 16:15:38.503964
article-49194826	data mining analyst	March 30, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-03-31 16:15:38.503965
article-49194895	senior software developer	March 30, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-03-31 16:15:38.503965
article-49194910	application programmer	March 30, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-03-31 16:15:38.503966
article-49194919	data scientist	March 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-03-31 16:15:38.503966
article-49194964	data analyst - informatics and systems	March 30, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-03-31 16:15:38.503967
article-49194879	computer projects manager	March 30, 2026	Terrebonne (QC)	Salary $48.91 to $65.91 hourly	2026-03-31 16:15:38.503967
article-49194438	data analytics specialist	March 30, 2026	Toronto (ON)	Salary $80,000.00 to $115,000.00 annually (to be negotiated)	2026-03-31 16:15:38.503968
article-49203812	database analyst	April 01, 2026	Nepean (ON)	Salary $150,000.00 to $170,000.00 annually (to be negotiated)	2026-04-01 16:13:10.153494
article-49203425	quantitative analyst	April 01, 2026	Surrey (BC)	Salary $150,000.00 annually	2026-04-01 16:13:10.153498
article-49203224	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153499
article-49203238	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153499
article-49203125	software developer	April 01, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.1535
article-49203137	software developer	April 01, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-04-01 16:13:10.1535
article-49203140	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153501
article-49203173	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153502
article-49203183	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153503
article-49202877	data mining analyst	April 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-01 16:13:10.153503
article-49203091	manager, computer applications	April 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-01 16:13:10.153504
article-49202754	software developer	April 01, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153505
article-49202918	software developer	April 01, 2026	Montréal (QC)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153505
article-49202926	software developer	April 01, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153506
article-49202932	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153506
article-49202942	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153507
article-49202949	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153507
article-49202955	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153508
article-49202996	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.153509
article-49203014	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.15351
article-49203072	software developer	April 01, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:10.15351
article-49202138	manager, IT (information technology) implementation	April 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-01 16:13:10.153511
article-49202285	software development manager	March 31, 2026	Oshawa (ON)	Salary $65.00 to $75.00 hourly (to be negotiated)	2026-04-01 16:13:10.153511
article-49202065	senior software developer	March 31, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-01 16:13:10.153512
article-49201957	manager, data processing and systems analysis	March 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-01 16:13:10.153512
article-49201859	cloud developer	March 31, 2026	North York (ON)	Salary $30.78 to $89.24 hourly	2026-04-01 16:13:18.365881
article-49201229	data administrator	March 31, 2026	Drayton Valley (AB)	Salary $42.00 hourly	2026-04-01 16:13:18.365885
article-49201203	software engineering manager	March 31, 2026	Hamilton (ON)	Salary $140,000.00 to $230,000.00 annually	2026-04-01 16:13:18.365886
article-49200645	cloud developer	March 31, 2026	Toronto (ON)	Salary $125,000.00 to $180,000.00 annually	2026-04-01 16:13:18.365887
article-49200499	systems architecture director	March 31, 2026	Mississauga (ON)	Salary $84.13 hourly	2026-04-01 16:13:18.365887
article-49200044	database analyst	March 31, 2026	Markham (ON)	Salary $44.47 hourly	2026-04-01 16:13:28.298068
article-49199682	senior software developer	March 31, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-01 16:13:28.298073
article-49200342	senior software developer	March 31, 2026	Thornhill (ON)	Salary $47.00 hourly	2026-04-01 16:13:28.298076
article-49200391	software developer	March 31, 2026	Mississauga (ON)	Salary $48.08 hourly	2026-04-01 16:13:28.298078
article-49199244	data analyst - informatics and systems	March 31, 2026	Mississauga (ON)	Salary $25.00 to $61.03 hourly	2026-04-01 16:13:28.29808
article-49199280	senior software developer	March 31, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-01 16:13:28.298082
article-49199055	director of technology management	March 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-01 16:13:28.298083
article-49199500	manager, IT (information technology) implementation	March 31, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-01 16:13:28.298085
article-49199301	artificial intelligence (AI) consultant	March 31, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-01 16:13:28.298086
article-49199024	artificial intelligence (AI) analyst	March 31, 2026	Montréal (QC)	Salary $25.00 hourly	2026-04-01 16:13:28.298087
article-49202934	software developer	March 31, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:28.298088
article-49202889	software developer	March 31, 2026	Toronto (ON)	Salary $85,000.00 annually	2026-04-01 16:13:28.298089
article-49203189	software developer	March 31, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:28.29809
article-49203905	data scientist	March 31, 2026	Montréal (QC)	Salary $70,000.00 to $110,000.00 annually	2026-04-01 16:13:28.298092
article-49203092	director of software engineering	March 31, 2026	Calgary (AB)	Salary $160,000.00 annually	2026-04-01 16:13:28.298093
article-49202737	software developer	March 30, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:36.763147
article-49202744	software developer	March 30, 2026	Saint-Laurent (QC)	Salary $80,000.00 to $90,000.00 annually	2026-04-01 16:13:36.763151
article-49202264	manager, database	March 30, 2026	Toronto (ON)	Salary $24.00 to $58.00 hourly	2026-04-01 16:13:36.763152
article-49202760	software developer	March 28, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:36.763153
article-49203083	software developer	March 28, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-01 16:13:44.864527
article-49203166	software developer	March 27, 2026	Chatham (ON)	Salary $85,000.00 to $125,000.00 annually	2026-04-01 16:13:44.864533
article-49197806	cloud operations manager	March 27, 2026	Markham (ON)	Salary $80,000.00 to $90,000.00 annually	2026-04-01 16:13:44.864534
article-49209726	manager, computer applications	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.137992
article-49209748	software developer	April 02, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-04-02 16:10:56.137997
article-49210002	manager, IT (information technology) implementation	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.137997
article-49210012	director of technology management	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.137998
article-49210014	software development manager	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.137999
article-49210074	manager, computer applications	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.137999
article-49210094	director of technology management	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.138
article-49210105	artificial intelligence (AI) consultant	April 02, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-02 16:10:56.138001
article-49210122	software development manager	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.138002
article-49210124	data scientist	April 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-02 16:10:56.138003
article-49210126	manager, IT (information technology) implementation	April 02, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.138003
article-49210129	senior software developer	April 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-02 16:10:56.138004
article-49209989	computer systems manager	April 02, 2026	Vancouver (BC)	Salary $40.87 hourly	2026-04-02 16:10:56.138004
article-49207886	senior software developer	April 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-02 16:10:56.138005
article-49207900	Java programmer	April 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-02 16:10:56.138005
article-49207901	data scientist	April 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-02 16:10:56.138006
article-49207904	data mining analyst	April 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-02 16:10:56.138006
article-49207641	data mining analyst	April 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-02 16:10:56.138007
article-49207642	software developer	April 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-02 16:10:56.138008
article-49207687	senior software developer	April 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-02 16:10:56.138008
article-49207794	manager, computer applications	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.138009
article-49207834	information technology (IT) director	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.138009
article-49207846	software developer	April 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-02 16:10:56.13801
article-49207850	software development manager	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:10:56.13801
article-49207058	computer projects manager	April 01, 2026	Boisbriand (QC)	Salary $88,000.00 to $110,000.00 annually	2026-04-02 16:10:56.138011
article-49206431	business systems manager	April 01, 2026	Québec (QC)	Salary $72,709.00 to $92,911.00 annually (to be negotiated)	2026-04-02 16:11:05.990784
article-49204647	artificial intelligence (AI) consultant	April 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-02 16:11:05.990789
article-49204658	data scientist	April 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-02 16:11:05.99079
article-49204787	senior software developer	April 01, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-04-02 16:11:05.99079
article-49204755	artificial intelligence (AI) consultant	April 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-02 16:11:05.990791
article-49204629	artificial intelligence (AI) consultant	April 01, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-02 16:11:05.990791
article-49204509	software engineering manager	April 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-02 16:11:05.990792
article-49208164	software developer	April 01, 2026	Toronto (ON)	Salary $97.25 hourly	2026-04-02 16:11:14.038578
article-49207917	director, data processing	April 01, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-04-02 16:11:14.038582
article-49207956	cloud developer	March 31, 2026	North York (ON)	Salary $30.78 to $89.24 hourly	2026-04-02 16:11:22.119718
article-49214787	computer projects manager	April 03, 2026	Québec (QC)	Salary $85,000.00 to $100,000.00 annually	2026-04-03 15:52:50.457728
article-49214306	data scientist	April 03, 2026	Montréal (QC)	Salary $26.00 to $78.00 hourly	2026-04-03 15:52:50.457732
article-49213837	data mining analyst	April 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-03 15:52:50.457733
article-49213845	artificial intelligence (AI) consultant	April 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-03 15:52:50.457733
article-49213544	data analyst - informatics and systems	April 02, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-03 15:52:50.457734
article-49213695	database analyst	April 02, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-03 15:52:50.457735
article-49212522	administrator, database	April 02, 2026	Ottawa (ON)	Salary $77,120.00 to $90,780.00 hourly	2026-04-03 15:52:50.457735
article-49212998	administrator, database	April 02, 2026	Ottawa (ON)	Salary $77,120.00 to $90,780.00 annually	2026-04-03 15:52:50.457736
article-49212705	cloud developer	April 02, 2026	Mississauga (ON)	Salary $100,000.00 to $120,000.00 annually	2026-04-03 15:52:50.457737
article-49212369	software developer	April 02, 2026	Edmonton (AB)	Salary $30.00 to $35.00 hourly	2026-04-03 15:52:50.457738
article-49212095	data warehouse analyst	April 02, 2026	Concord (ON)	Salary $70,000.00 to $81,000.00 annually (to be negotiated)	2026-04-03 15:52:50.457738
article-49212122	records office supervisor	April 02, 2026	Brampton (ON)	Salary $36.00 hourly	2026-04-03 15:52:50.457739
article-49210850	software development manager	April 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-03 15:52:50.45774
article-49210262	artificial intelligence (AI) consultant	April 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-03 15:52:50.45774
article-49210347	senior software developer	April 02, 2026	Etobicoke (ON)	Salary $113,409.00 annually	2026-04-03 15:52:50.457741
article-49214637	manager, data processing and systems analysis	April 02, 2026	Kitchener (ON)	Salary $40.00 to $92.00 hourly	2026-04-03 15:53:02.853762
article-49223254	cloud operations manager	April 05, 2026	Kanata (ON)	Salary $130,000.00 to $150,000.00 annually	2026-04-05 15:47:13.173525
article-49221671	data analyst - informatics and systems	April 04, 2026	Montréal (QC)	Salary $25.00 to $61.03 hourly	2026-04-05 15:47:13.173529
article-49220173	information technology (IT) director	April 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-05 15:47:13.17353
article-49220183	artificial intelligence (AI) consultant	April 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-05 15:47:13.173531
article-49220241	manager, IT (information technology) implementation	April 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-05 15:47:13.173531
article-49220276	operations supervisor	April 04, 2026	Vernon (BC)	Salary $22.00 to $46.00 hourly	2026-04-05 15:47:13.173532
article-49220319	data scientist	April 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-05 15:47:13.173532
article-49220322	senior software developer	April 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-05 15:47:13.173534
article-49220368	director of technology management	April 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-05 15:47:13.173534
article-49220434	information technology (IT) implementation manager	April 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-05 15:47:13.173535
article-49220442	director of software engineering	April 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-05 15:47:13.173535
article-49220443	data analyst - informatics and systems	April 04, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-05 15:47:13.173536
article-49215940	office supervisor	April 03, 2026	Montréal (QC)	Salary $35.00 to $38.00 hourly	2026-04-05 15:47:13.173537
article-49215912	director of technology management	April 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-05 15:47:13.173537
article-49215967	software developer	April 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-05 15:47:13.173538
article-49215970	data analyst - informatics and systems	April 03, 2026	Mississauga (ON)	Salary $25.00 to $61.03 hourly	2026-04-05 15:47:13.173538
article-49216022	senior software developer	April 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-05 15:47:13.173539
article-49216055	artificial intelligence (AI) consultant	April 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-05 15:47:13.173539
article-49216058	manager, computer applications	April 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-05 15:47:13.17354
article-49216096	director, data processing	April 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-05 15:47:13.17354
article-49216125	artificial intelligence (AI) consultant	April 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-05 15:47:13.173541
article-49216126	manager, computer applications	April 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-05 15:47:13.173541
article-49216211	database analyst (DBA)	April 03, 2026	Montréal (QC)	Salary $25.00 to $61.03 hourly	2026-04-05 15:47:13.173542
article-49216219	manager, computer applications	April 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-05 15:47:13.173542
article-49216232	data analyst - informatics and systems	April 03, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-05 15:47:13.173543
article-49225442	software developer	April 06, 2026	Toronto (ON)	Salary $69,882.56 to $119,278.21 annually	2026-04-06 15:59:58.956108
article-49224842	manager, IT (information technology) implementation	April 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-06 15:59:58.956113
article-49223475	senior software developer	April 05, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-04-06 15:59:58.956114
article-49223478	software developer	April 05, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-04-06 15:59:58.956115
article-49223500	senior software developer	April 05, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-06 15:59:58.956115
article-49223501	artificial intelligence (AI) consultant	April 05, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-06 15:59:58.956116
article-49223504	artificial intelligence (AI) consultant	April 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-06 15:59:58.956116
article-49223530	manager, IT (information technology) implementation	April 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-06 15:59:58.956117
article-49223536	software development manager	April 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-06 15:59:58.956118
article-49223576	data scientist	April 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-06 15:59:58.956119
article-49223623	manager, IT (information technology) implementation	April 05, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-04-06 15:59:58.956119
article-49223631	senior software developer	April 05, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-06 15:59:58.95612
article-49216270	senior software developer	April 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-06 16:00:09.097798
article-49232581	artificial intelligence (AI) consultant	April 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-07 16:17:44.749974
article-49232623	manager, computer applications	April 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-07 16:17:44.749978
article-49232760	manager, IT (information technology) implementation	April 07, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-04-07 16:17:44.749979
article-49232761	software development manager	April 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-07 16:17:44.749979
article-49232769	manager, computer systems	April 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-07 16:17:44.74998
article-49232772	senior software developer	April 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-07 16:17:44.749981
article-49232788	senior software developer	April 07, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-07 16:17:44.749981
article-49232790	software development manager	April 07, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-07 16:17:44.749982
article-49232821	artificial intelligence (AI) consultant	April 07, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-07 16:17:44.749983
article-49232887	data scientist	April 07, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-07 16:17:44.749984
article-49232091	information technology (IT) implementation managerThis job posting is posted by a recruitment agency on behalf of the employer.	April 07, 2026	St. Albert (AB)	Salary $120,000.00 to $130,000.00 annually (to be negotiated)	2026-04-07 16:17:44.749985
article-49230115	software developer	April 07, 2026	Montréal (QC)	Salary $10,000.00 monthly	2026-04-07 16:17:44.749985
article-49229369	database architect	April 07, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-07 16:17:44.749986
article-49228972	manager, IT (information technology) implementation	April 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-07 16:17:44.749986
article-49228694	operations supervisor	April 06, 2026	Victoria (BC)	Salary $24.00 hourly	2026-04-07 16:17:44.749987
article-49227956	office supervisor	April 06, 2026	Rocky View (AB)	Salary $36.00 hourly	2026-04-07 16:17:44.749987
article-49226963	data analyst - informatics and systems	April 06, 2026	Mississauga (ON)	Salary $25.00 to $61.03 hourly	2026-04-07 16:17:44.749988
article-49226964	software engineering manager	April 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-07 16:17:44.749988
article-49227015	software development manager	April 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-07 16:17:44.749989
article-49227032	data scientist	April 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-07 16:17:44.749989
article-49227083	manager, IT (information technology) implementation	April 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-07 16:17:44.74999
article-49227116	artificial intelligence (AI) consultant	April 06, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-07 16:17:44.74999
article-49227130	manager, computer applications	April 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-07 16:17:44.749991
article-49227142	data analyst - informatics and systems	April 06, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-07 16:17:44.749991
article-49227152	senior software developer	April 06, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-04-07 16:17:44.749992
article-49229657	software developer	April 06, 2026	Drayton Valley (AB)	Salary $45.00 hourly	2026-04-07 16:17:53.611291
article-49229692	software developer	April 06, 2026	Toronto (ON)	Salary $69,882.56 to $119,278.21 annually	2026-04-07 16:17:53.611295
article-49230190	software developer	April 06, 2026	LaSalle (ON)	Salary $50,000.00 annually	2026-04-07 16:17:53.611296
article-49230158	software developer	April 06, 2026	Edmonton (AB)	Salary $80.00 hourly	2026-04-07 16:17:53.611296
article-49230223	software developer	April 06, 2026	Edmonton (AB)	Salary $80.00 to $88.00 hourly	2026-04-07 16:17:53.611297
article-49229995	software developer	April 06, 2026	Waterloo (ON)	Salary $55.00 hourly	2026-04-07 16:17:53.611298
article-49230113	software developer	April 06, 2026	Toronto (ON)	Salary $55.00 hourly	2026-04-07 16:17:53.611298
article-49230070	software developer	April 06, 2026	Montréal (QC)	Salary $38.00 hourly	2026-04-07 16:17:53.611299
article-49230181	software developer	April 06, 2026	Laval (QC)	Salary $38.00 hourly	2026-04-07 16:17:53.611299
article-49229195	manager, computer system operations	April 05, 2026	Brampton (ON)	Salary $40.00 to $92.00 hourly	2026-04-07 16:17:53.6113
article-49216235	data scientist	April 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-07 16:18:02.385879
article-49230083	software developer	April 03, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-07 16:18:02.385884
article-49230021	software developer	April 03, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-07 16:18:02.385885
article-49230205	software developer	April 03, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-07 16:18:02.385885
article-49230137	software developer	April 03, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-07 16:18:02.385886
article-49230077	data architect	April 02, 2026	Montréal (QC)	Salary $90,000.00 to $120,000.00 hourly	2026-04-07 16:18:09.791269
article-49230045	software developer	April 02, 2026	Mississauga (ON)	Salary $100,000.00 to $125,000.00 annually	2026-04-07 16:18:09.791274
article-49229662	software developer	April 02, 2026	Toronto (ON)	Salary $80.00 hourly	2026-04-07 16:18:09.791274
article-49230052	software developer	April 02, 2026	Mississauga (ON)	Salary $100,000.00 to $125,000.00 annually	2026-04-07 16:18:09.791275
article-49230048	senior software developer	April 02, 2026	Edmonton (AB)	Salary $120,000.00 annually	2026-04-07 16:18:09.791275
article-49229730	software developer	April 02, 2026	Vancouver (BC)	Salary $155,000.00 annually	2026-04-07 16:18:09.791276
article-49230147	software developer	April 02, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-07 16:18:09.791276
article-49230148	software developer	April 02, 2026	Campbell River (BC)	Salary $39,520.00 to $43,680.00 annually	2026-04-07 16:18:09.791277
article-49230104	software developer	April 02, 2026	Montréal (QC)	Salary $38.00 to $40.00 hourly	2026-04-07 16:18:09.791278
article-49230057	software developer	April 01, 2026	Markham (ON)	Salary $30.00 to $34.00 hourly	2026-04-07 16:18:18.111565
article-49238004	application programmer	April 08, 2026	Chilliwack (BC)	Salary $52.50 hourly	2026-04-08 16:21:22.526475
article-49238024	business process manager	April 08, 2026	Nepean (ON)	Salary $160,000.00 to $180,000.00 annually (to be negotiated)	2026-04-08 16:21:22.52648
article-49237668	data engineer	April 08, 2026	Toronto (ON)	Salary $98,000.00 annually	2026-04-08 16:21:22.526481
article-49236218	office supervisor	April 08, 2026	Québec (QC)	Salary $74,500.00 to $94,400.00 annually	2026-04-08 16:21:22.526481
article-49235818	director, data processing	April 08, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-04-08 16:21:22.526481
article-49235801	manager, IT (information technology) implementation	April 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-08 16:21:22.526482
article-49234825	co-ordinator, word processing service	April 07, 2026	Drummondville (QC)	Salary $58,700.00 to $67,400.00 annually	2026-04-08 16:21:22.526483
article-49234421	co-ordinator, word processing service	April 07, 2026	Sherbrooke (QC)	Salary $58,700.00 to $67,400.00 annually	2026-04-08 16:21:22.526484
article-49234613	co-ordinator, word processing service	April 07, 2026	Saint-Jérôme (QC)	Salary $58,700.00 to $67,400.00 annually	2026-04-08 16:21:22.526485
article-49234499	operations supervisor	April 07, 2026	Delta (BC)	Salary $70,000.00 to $80,000.00 annually (to be negotiated)	2026-04-08 16:21:22.526485
article-49234652	receptionists supervisor	April 07, 2026	Edmonton (AB)	Salary $24.00 to $30.00 hourly (to be negotiated)	2026-04-08 16:21:22.526486
article-49233670	cloud operations manager	April 07, 2026	Fort Saskatchewan (AB)	Salary $120,000.00 to $160,000.00 annually	2026-04-08 16:21:22.526486
article-49233309	developer, software	April 07, 2026	Saint-Laurent (QC)	Salary $110,000.00 annually	2026-04-08 16:21:22.526487
article-49233541	developer, software	April 07, 2026	Saint-Laurent (QC)	Salary $90,000.00 annually	2026-04-08 16:21:22.526487
article-49233558	software developer	April 07, 2026	Surrey (BC)	Salary $44.00 hourly	2026-04-08 16:21:22.526488
article-49233521	software developerThis job posting is posted by a recruitment agency on behalf of the employer.	April 07, 2026	Rockcliffe (ON)	Salary $51.00 hourly	2026-04-08 16:21:22.526488
article-49236649	data administrator	April 07, 2026	Etobicoke (ON)	Salary $20.00 hourly	2026-04-08 16:21:34.376417
article-49236703	software developer	April 07, 2026	Innisfail (AB)	Salary $45.00 hourly	2026-04-08 16:21:34.376423
article-49236362	cloud developer	April 07, 2026	Penticton (BC)	Salary $53,056.00 to $55,470.00 annually	2026-04-08 16:21:34.376424
article-49235740	cloud developer	April 07, 2026	Toronto (ON)	Salary $100,000.00 to $110,000.00 annually	2026-04-08 16:21:34.376425
article-49227162	software development manager	April 06, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-08 16:21:34.376425
article-49227163	data analyst - informatics and systems	April 06, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-08 16:21:34.376426
article-49227159	database analyst (DBA)	April 06, 2026	Montréal (QC)	Salary $25.00 to $61.03 hourly	2026-04-08 16:21:34.376426
article-49236670	software developer	April 06, 2026	Drayton Valley (AB)	Salary $45.00 hourly	2026-04-08 16:21:34.376427
article-49236735	software developer	April 06, 2026	Toronto (ON)	Salary $69,882.56 to $119,278.21 annually	2026-04-08 16:21:34.376427
article-49245656	artificial intelligence (AI) consultant	April 09, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-09 16:25:58.598766
article-49245963	artificial intelligence (AI) consultant	April 09, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-09 16:25:58.598774
article-49245979	manager, computer applications	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:25:58.598775
article-49245981	senior software developer	April 09, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-04-09 16:25:58.598776
article-49245984	data analyst - informatics and systems	April 09, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-09 16:25:58.598777
article-49245794	cloud developer	April 09, 2026	Toronto (ON)	Salary $75,000.00 to $95,000.00 annually	2026-04-09 16:25:58.598777
article-49244950	machine learning specialist	April 09, 2026	Toronto (ON)	Salary $125,800.00 to $157,300.00 annually (to be negotiated)	2026-04-09 16:25:58.598778
article-49244488	office supervisor	April 09, 2026	New Richmond (QC)	Salary $31.59 hourly	2026-04-09 16:25:58.598779
article-49244443	computer development division head	April 09, 2026	Shawinigan (QC)	Salary $95,111.00 annually	2026-04-09 16:25:58.59878
article-49243783	computer projects manager	April 09, 2026	Québec (QC)	Salary $85,000.00 to $90,000.00 annually	2026-04-09 16:25:58.598781
article-49243275	manager, computer applications	April 09, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-04-09 16:25:58.598782
article-49242301	supervisor, clinical receptionists	April 09, 2026	Toronto (ON)	Salary $38.00 hourly	2026-04-09 16:25:58.598782
article-49241911	information technology (IT) director	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:25:58.598783
article-49241946	senior software developer	April 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-09 16:25:58.598784
article-49241950	information technology (IT) director	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:25:58.598784
article-49241991	manager, computer systems	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:25:58.598785
article-49242001	software engineering manager	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:25:58.598786
article-49242025	database architect	April 09, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-09 16:25:58.598786
article-49242064	manager, computer applications	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:25:58.598787
article-49242084	manager, computer applications	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:25:58.598788
article-49242089	manager, computer applications	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:25:58.598788
article-49242091	data analyst - informatics and systems	April 09, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-09 16:25:58.598789
article-49242109	software developer	April 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-09 16:25:58.598789
article-49242112	director, data processing	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:25:58.59879
article-49242127	senior software developer	April 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-09 16:25:58.59879
article-49242173	manager, computer applications	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:26:08.837217
article-49242149	manager, IT (information technology) implementation	April 09, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:26:08.837221
article-49242055	software developer	April 08, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-04-09 16:26:08.837222
article-49241958	software developer	April 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-09 16:26:08.837222
article-49242019	manager, IT (information technology) implementation	April 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:26:08.837222
article-49241922	manager, computer applications	April 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:26:08.837223
article-49242142	manager, IT (information technology) implementation	April 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:26:08.837223
article-49240644	office supervisor	April 08, 2026	Kelowna (BC)	Salary $94,500.00 annually	2026-04-09 16:26:08.837223
article-49240901	computer programs manager	April 08, 2026	Québec (QC)	Salary $95,111.00 to $116,916.00 annually	2026-04-09 16:26:08.837224
article-49240958	computer programs manager	April 08, 2026	Montréal (QC)	Salary $95,111.00 to $116,916.00 annually	2026-04-09 16:26:08.837224
article-49240725	computer game programmer	April 08, 2026	Scarborough (ON)	Salary $48.08 hourly	2026-04-09 16:26:08.837225
article-49240835	clerical supervisor	April 08, 2026	Kamloops (BC)	Salary $35.59 hourly	2026-04-09 16:26:08.837225
article-49240615	chief data officer	April 08, 2026	Vancouver (BC)	Salary $160,000.00 annually	2026-04-09 16:26:08.837226
article-49239777	senior software developer	April 08, 2026	Vancouver (BC)	Salary $100,000.00 to $176,612.31 annually	2026-04-09 16:26:08.837226
article-49239871	computer department coordinator	April 08, 2026	Sherbrooke (QC)	Salary $64,173.00 to $104,013.00 annually	2026-04-09 16:26:08.837226
article-49239910	information technology (it) system administrator	April 08, 2026	Ottawa (ON)	Salary $50.00 to $60.00 hourly (to be negotiated)	2026-04-09 16:26:08.837227
article-49239508	computer projects manager	April 08, 2026	Montréal (QC)	Salary $36.65 to $62.01 hourly	2026-04-09 16:26:08.837227
article-49239525	computer projects manager	April 08, 2026	Québec (QC)	Salary $36.65 to $62.01 hourly	2026-04-09 16:26:08.837228
article-49239073	data scientist	April 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-09 16:26:08.837228
article-49239119	senior software developer	April 08, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-04-09 16:26:08.837228
article-49239013	artificial intelligence (AI) consultant	April 08, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-09 16:26:08.837229
article-49239144	senior software developer	April 08, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-09 16:26:20.865953
article-49239125	manager, IT (information technology) implementation	April 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:26:20.865958
article-49239299	information technology (IT) director	April 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:26:20.865959
article-49239229	operations supervisor	April 08, 2026	Vernon (BC)	Salary $22.00 to $46.00 hourly	2026-04-09 16:26:20.865959
article-49239280	director of technology management	April 08, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-09 16:26:20.865959
article-49239041	cybersecurity manager	April 08, 2026	Saint-Canut (QC)	Salary $38,500.00 annually	2026-04-09 16:26:20.86596
article-49243067	software developer	April 08, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-09 16:26:20.86596
article-49242968	software developer	April 08, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-09 16:26:20.86596
article-49242969	software developer	April 08, 2026	Markham (ON)	Salary $10,000.00 monthly	2026-04-09 16:26:20.865961
article-49243100	software developer	April 08, 2026	Markham (ON)	Salary $10,000.00 monthly	2026-04-09 16:26:20.865961
article-49242779	software developer	April 07, 2026	Innisfail (AB)	Salary $45.00 hourly	2026-04-09 16:26:32.065641
article-49243115	software developer	April 07, 2026	Edmonton (AB)	Salary $80.00 to $100.00 hourly	2026-04-09 16:26:32.065646
article-49243011	software developer	April 07, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-09 16:26:32.065647
article-49255577	software developer	April 10, 2026	Toronto (ON)	Salary $90,000.00 annually	2026-04-10 16:05:23.265419
article-49253030	cloud operations manager	April 10, 2026	Calgary (AB)	Salary $50,514.12 to $123,413.37 annually	2026-04-10 16:05:23.265423
article-49251468	software developer	April 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-10 16:05:23.265424
article-49251898	manager, data processing and systems analysis	April 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-10 16:05:23.265424
article-49252019	manager, computer applications	April 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-10 16:05:23.265425
article-49252083	data mining analyst	April 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-10 16:05:23.265425
article-49252111	software engineering manager	April 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-10 16:05:23.265426
article-49249916	manager, computer systems	April 09, 2026	Abbotsford (BC)	Salary $67.34 hourly	2026-04-10 16:05:23.265427
article-49249987	office supervisor	April 09, 2026	Tweed (ON)	Salary $36.00 hourly	2026-04-10 16:05:23.265428
article-49248458	operations supervisor	April 09, 2026	Mississauga (ON)	Salary $38.00 hourly	2026-04-10 16:05:23.265429
article-49247913	data engineer	April 09, 2026	Toronto (ON)	Salary $75,000.00 annually	2026-04-10 16:05:23.265429
article-49247878	User interface (UI) designer	April 09, 2026	Sudbury (ON)	Salary $25.00 hourly	2026-04-10 16:05:23.26543
article-49242147	data analyst - informatics and systems	April 09, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-10 16:05:33.111423
article-49255626	software developer	April 09, 2026	Toronto (ON)	Salary $60.00 hourly	2026-04-10 16:05:33.111427
article-49255624	software developer	April 09, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-04-10 16:05:33.111428
article-49242256	software developer	April 09, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-10 16:05:33.111429
article-49293126	computer projects manager	April 12, 2026	Sherbrooke (QC)	Salary $115,000.00 to $135,000.00 annually	2026-04-12 15:50:50.243591
article-49292671	data scientist	April 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-12 15:50:50.243596
article-49292679	database analyst	April 12, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-12 15:50:50.243597
article-49292725	manager, IT (information technology) implementation	April 12, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:50.243597
article-49292719	software developer	April 11, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-12 15:50:50.243598
article-49292448	artificial intelligence (AI) consultant	April 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-12 15:50:50.243599
article-49290783	manager, computer applications	April 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:50.243599
article-49290789	artificial intelligence (AI) consultant	April 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-12 15:50:50.243601
article-49290808	senior software developer	April 11, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-12 15:50:50.243601
article-49290860	artificial intelligence (AI) consultant	April 11, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-12 15:50:50.243602
article-49290946	data scientist	April 11, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-04-12 15:50:50.243603
article-49290961	manager, computer applications	April 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:50.243603
article-49290989	manager, IT (information technology) implementation	April 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:50.243604
article-49290990	software development manager	April 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:50.243604
article-49290995	manager, computer applications	April 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:50.243605
article-49291000	data scientist	April 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-12 15:50:50.243605
article-49289573	PC (personal computer) application developer	April 11, 2026	Montréal (QC)	Salary $100,000.00 to $110,000.00 annually	2026-04-12 15:50:50.243606
article-49270702	manager, IT (information technology) implementation	April 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:50.243606
article-49270740	software developer	April 11, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-12 15:50:50.243607
article-49270769	artificial intelligence (AI) consultant	April 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-12 15:50:50.243607
article-49270790	manager, IT (information technology) implementation	April 11, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:50.243608
article-49270807	software developer	April 11, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-12 15:50:50.243608
article-49270949	data scientist	April 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-12 15:50:50.243609
article-49270951	architect, database	April 11, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-12 15:50:50.243609
article-49270964	software developer	April 11, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-12 15:50:50.243609
article-49264660	office supervisor	April 10, 2026	Brampton (ON)	Salary $36.10 hourly	2026-04-12 15:50:59.755786
article-49264730	office supervisor	April 10, 2026	Brampton (ON)	Salary $36.00 to $37.00 hourly (to be negotiated)	2026-04-12 15:50:59.755791
article-49260900	information technology (IT) director	April 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:59.755792
article-49260939	senior software developer	April 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-12 15:50:59.755793
article-49261356	software development manager	April 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:59.755793
article-49261335	software developer	April 10, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-12 15:50:59.755794
article-49261141	software development manager	April 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:59.755794
article-49261338	senior software developer	April 10, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-04-12 15:50:59.755795
article-49261366	data analyst - informatics and systems	April 10, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-12 15:50:59.755795
article-49261333	data mining analyst	April 10, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-12 15:50:59.755796
article-49261246	manager, IT (information technology) implementation	April 10, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:59.755796
article-49261358	information technology (IT) implementation manager	April 10, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-12 15:50:59.755797
article-49260910	telephone service supervisor	April 10, 2026	Meaford (ON)	Salary $18.39 to $20.07 hourly	2026-04-12 15:50:59.755797
article-49299290	operations supervisor	April 13, 2026	Val-David (QC)	Salary $26.10 to $27.65 hourly	2026-04-13 16:22:33.472029
article-49299248	software developer	April 13, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-13 16:22:33.472034
article-49299312	senior software developer	April 13, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-13 16:22:33.472035
article-49299336	artificial intelligence (AI) consultant	April 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-13 16:22:33.472035
article-49299350	artificial intelligence (AI) consultant	April 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-13 16:22:33.472036
article-49299415	director, data processing	April 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-13 16:22:33.472036
article-49299448	artificial intelligence (AI) consultant	April 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-13 16:22:33.472037
article-49299450	artificial intelligence (AI) consultant	April 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-13 16:22:33.472038
article-49299649	artificial intelligence (AI) consultant	April 13, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-13 16:22:33.472039
article-49298794	help desk manager - information technology (IT)	April 13, 2026	Coniston (ON)	Salary $50,000.00 to $70,000.00 annually	2026-04-13 16:22:33.472039
article-49299035	software development manager	April 13, 2026	Sainte-Julie (QC)	Salary $90,000.00 to $120,000.00 annually	2026-04-13 16:22:33.47204
article-49298204	operations supervisor	April 13, 2026	Saguenay (QC)	Salary $39.00 to $42.00 hourly	2026-04-13 16:22:33.472041
article-49296586	manager, IT (information technology) implementation	April 13, 2026	Coquitlam (BC)	Salary $29.00 to $69.00 hourly	2026-04-13 16:22:33.472041
article-49296626	manager, IT (information technology) implementation	April 13, 2026	Alert Bay (BC)	Salary $29.00 to $69.00 hourly	2026-04-13 16:22:33.472042
article-49296210	director of technology management	April 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-13 16:22:33.472042
article-49296220	data mining analyst	April 13, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-13 16:22:33.472043
article-49296226	manager, computer applications	April 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-13 16:22:33.472043
article-49295681	cloud operations manager	April 12, 2026	Canmore (AB)	Salary $60,000.00 annually	2026-04-13 16:22:33.472044
article-49294593	senior software developer	April 12, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-13 16:22:33.472045
article-49294600	data scientist	April 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-13 16:22:33.472045
article-49294642	software developer	April 12, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-13 16:22:33.472046
article-49294647	senior software developer	April 12, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-13 16:22:33.472046
article-49294719	application programmer	April 12, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-04-13 16:22:33.472047
article-49294720	database analyst (DBA)	April 12, 2026	Montréal (QC)	Salary $25.00 to $61.03 hourly	2026-04-13 16:22:33.472047
article-49294724	data scientist	April 12, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-13 16:22:33.472048
article-49270970	data mining analyst	April 11, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-13 16:22:42.020719
article-49297178	software developer	April 11, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-04-13 16:22:42.020726
article-49297229	software developer	April 11, 2026	Vernon (BC)	Salary $72,950.00 to $84,820.00 annually	2026-04-13 16:22:42.020726
article-49297242	software developer	April 10, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-13 16:22:50.736698
article-49296933	software developer	April 10, 2026	Mississauga (ON)	Salary $80,000.00 to $100,000.00 annually	2026-04-13 16:22:50.736704
article-49297124	software developer	April 10, 2026	Toronto (ON)	Salary $80.00 to $93.00 hourly	2026-04-13 16:22:50.736704
article-49297198	software developer	April 10, 2026	Toronto (ON)	Salary $45.00 hourly	2026-04-13 16:22:50.736705
article-49326167	data scientist	April 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-14 16:20:08.910776
article-49326263	senior software developer	April 14, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-14 16:20:08.910781
article-49326291	software developer	April 14, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-04-14 16:20:08.910782
article-49326312	data scientist	April 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-14 16:20:08.910782
article-49326488	manager, IT (information technology) implementation	April 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-14 16:20:08.910783
article-49326592	senior software developer	April 14, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-04-14 16:20:08.910783
article-49326636	data analyst - informatics and systems	April 14, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-14 16:20:08.910784
article-49326642	manager, IT (information technology) implementation	April 14, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-04-14 16:20:08.910785
article-49305295	manager, IT (information technology) implementation	April 13, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-14 16:20:08.910786
article-49302477	cloud operations manager	April 13, 2026	Ottawa (ON)	Salary $65,000.00 to $77,500.00 annually	2026-04-14 16:20:08.910787
article-49302081	information systems manager	April 13, 2026	Calgary (AB)	Salary $36.00 hourly	2026-04-14 16:20:08.910787
article-49339667	data centre manager	April 15, 2026	Sherbrooke (QC)	Salary $114,000.00 to $127,000.00 annually	2026-04-15 16:14:05.241786
article-49337618	office supervisor	April 15, 2026	Sherbrooke (QC)	Salary $80,063.00 to $108,323.00 hourly	2026-04-15 16:14:05.24179
article-49335825	data analyst - informatics and systems	April 15, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-15 16:14:05.241791
article-49335831	senior software developer	April 15, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-15 16:14:05.241792
article-49335839	software developer	April 15, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-15 16:14:05.241792
article-49335849	manager, data processing and systems analysis	April 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-15 16:14:05.241793
article-49335875	data mining analyst	April 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-15 16:14:05.241794
article-49335914	manager, computer applications	April 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-15 16:14:05.241795
article-49335931	manager, IT (information technology) implementation	April 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-15 16:14:05.241796
article-49335750	operations supervisor	April 15, 2026	Burnaby (BC)	Salary $25.00 to $40.00 hourly	2026-04-15 16:14:05.241797
article-49335723	information technology (IT) director	April 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-15 16:14:05.241797
article-49335845	data scientist	April 14, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-15 16:14:05.241798
article-49335861	manager, IT (information technology) implementation	April 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-15 16:14:05.241799
article-49335621	operations supervisor	April 14, 2026	Brampton (ON)	Salary $60,000.00 to $100,000.00 annually	2026-04-15 16:14:05.2418
article-49333906	cybersecurity manager	April 14, 2026	Montréal (QC)	Salary $23.00 hourly	2026-04-15 16:14:05.241801
article-49333990	operations supervisor	April 14, 2026	Thunder Bay (ON)	Salary $26.42 hourly	2026-04-15 16:14:05.241801
article-49333287	cloud operations manager	April 14, 2026	Cambridge (ON)	Salary $46,000.00 to $54,000.00 annually	2026-04-15 16:14:05.241802
article-49332027	cybersecurity manager	April 14, 2026	Dollard-des-Ormeaux (QC)	Salary $26.00 to $31.00 hourly	2026-04-15 16:14:05.241803
article-49331913	software developer	April 14, 2026	Scarborough (ON)	Salary $40,000.00 annually	2026-04-15 16:14:05.241803
article-49331999	computer systems manager	April 14, 2026	Toronto (ON)	Salary $46.00 hourly	2026-04-15 16:14:05.241804
article-49330977	manager, IT (information technology) implementation	April 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-15 16:14:05.241805
article-49331293	database analyst	April 14, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-15 16:14:05.241805
article-49307314	data analyst - informatics and systems	April 13, 2026	Vancouver (BC)	Salary $55.42 hourly	2026-04-15 16:14:12.610325
article-49346955	information technology (IT) service delivery manager	April 16, 2026	Thunder Bay (ON)	Salary $98,941.44 to $116,401.69 annually (to be negotiated)	2026-04-16 16:48:12.210996
article-49347120	cloud solutions architect manager	April 16, 2026	Toronto (ON)	Salary $140,795.00 annually	2026-04-16 16:48:12.211
article-49346066	software developer	April 16, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-16 16:48:12.211001
article-49346225	software developer	April 16, 2026	Kelowna (BC)	Salary $22.00 hourly	2026-04-16 16:48:12.211002
article-49346316	software developer	April 16, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-16 16:48:12.211002
article-49345491	software developer	April 16, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-16 16:48:12.211003
article-49344641	operations supervisor	April 16, 2026	Saguenay (QC)	Salary $39.00 to $43.00 hourly	2026-04-16 16:48:12.211004
article-49344477	software developer	April 16, 2026	Calgary (AB)	Salary $36.00 hourly	2026-04-16 16:48:12.211005
article-49344203	manager, computer applications	April 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-16 16:48:12.211005
article-49344233	data mining analyst	April 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-16 16:48:12.211006
article-49343912	database architect (DBA)	April 15, 2026	Toronto (ON)	Salary $70.00 hourly	2026-04-16 16:48:12.211007
article-49343921	senior software developer	April 15, 2026	Toronto (ON)	Salary $70.00 to $80.00 hourly (to be negotiated)	2026-04-16 16:48:12.211007
article-49343275	administrative supervisor	April 15, 2026	Burnaby (BC)	Salary $36.60 hourly	2026-04-16 16:48:12.211008
article-49343380	manager, IT (information technology) implementation	April 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-16 16:48:12.211009
article-49342699	software developerThis job posting is posted by a recruitment agency on behalf of the employer.	April 15, 2026	Mississauga (ON)	Salary $85,000.00 to $95,000.00 annually (to be negotiated)	2026-04-16 16:48:12.211009
article-49342204	software developer	April 15, 2026	Nepean (ON)	Salary $80,000.00 to $110,000.00 annually (to be negotiated)	2026-04-16 16:48:12.21101
article-49341085	manager, IT (information technology) implementation	April 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-16 16:48:12.21101
article-49340870	cloud developer	April 15, 2026	Calgary (AB)	Salary $30.00 to $31.00 hourly	2026-04-16 16:48:12.211011
article-49340070	artificial intelligence (AI) consultant	April 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-16 16:48:12.211011
article-49340137	artificial intelligence (AI) consultant	April 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-16 16:48:12.211012
article-49340185	data scientist	April 15, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-04-16 16:48:12.211012
article-49340205	artificial intelligence (AI) consultant	April 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-16 16:48:12.211013
article-49340214	data scientist	April 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-16 16:48:12.211013
article-49340218	data scientist	April 15, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-16 16:48:12.211014
article-49340259	manager, computer applications	April 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-16 16:48:12.211014
article-49340311	manager, computer systems development	April 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-16 16:48:21.804715
article-49340269	manager, IT (information technology) implementation	April 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-16 16:48:21.80472
article-49340293	information technology (IT) implementation manager	April 15, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-16 16:48:21.80472
article-49345680	software developer	April 15, 2026	Montréal (QC)	Salary $10,000.00 monthly	2026-04-16 16:48:21.804721
article-49345106	cloud developer	April 15, 2026	Toronto (ON)	Salary $75,000.00 to $95,000.00 annually	2026-04-16 16:48:21.804722
article-49345657	machine learning engineer	April 15, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-16 16:48:21.804722
article-49345265	information technology (IT) director	April 15, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-04-16 16:48:21.804723
article-49345971	data engineer	April 14, 2026	Toronto (ON)	Salary $86.00 hourly	2026-04-16 16:48:30.849986
article-49346321	software developer	April 14, 2026	Toronto (ON)	Salary $90,000.00 annually	2026-04-16 16:48:30.849991
article-49345521	software developer	April 14, 2026	Oakville (ON)	Salary $20.00 hourly	2026-04-16 16:48:30.849992
article-49345960	software developer	April 14, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-04-16 16:48:30.849993
article-49346020	software developer	April 14, 2026	Toronto (ON)	Salary $88,933.00 annually	2026-04-16 16:48:30.849993
article-49346350	cloud developer	April 14, 2026	Toronto (ON)	Salary $101.00 daily	2026-04-16 16:48:30.849994
article-49344366	director of technology management	April 14, 2026	Brampton (ON)	Salary $40.00 to $92.00 hourly	2026-04-16 16:48:30.849994
article-49346510	software developer	April 13, 2026	Ajax (ON)	Salary $120,000.00 annually	2026-04-16 16:48:39.773071
article-49352749	manager, management information system (MIS)	April 17, 2026	Oakville (ON)	Salary $150,000.00 to $170,000.00 annually (to be negotiated)	2026-04-17 16:12:19.687547
article-49352202	manager, computer applications	April 17, 2026	Toronto (ON)	Salary $60,000.00 to $75,000.00 annually	2026-04-17 16:12:19.687551
article-49351211	manager, computer applications	April 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-17 16:12:19.687552
article-49350124	software developer	April 16, 2026	Vancouver (BC)	Salary $31.25 to $84.13 hourly	2026-04-17 16:12:19.687552
article-49349985	office supervisor	April 16, 2026	Calgary (AB)	Salary $36.50 hourly	2026-04-17 16:12:19.687553
article-49349655	big data analyst	April 16, 2026	Brossard (QC)	Salary $80,000.00 to $100,000.00 annually	2026-04-17 16:12:19.687554
article-49349879	cloud operations manager	April 16, 2026	Markham (ON)	Salary $50,507.69 to $80,000.00 annually	2026-04-17 16:12:19.687555
article-49349838	cloud developer	April 16, 2026	Mississauga (ON)	Salary $94,437.84 to $118,046.88 annually	2026-04-17 16:12:19.687556
article-49349853	cloud developer	April 16, 2026	Burnaby (BC)	Salary $50,000.00 to $60,000.00 annually	2026-04-17 16:12:19.687557
article-49349263	developer, software	April 16, 2026	Sherbrooke (QC)	Salary $114,500.00 to $167,500.00 annually	2026-04-17 16:12:19.687557
article-49349237	developer, software	April 16, 2026	Various locations	Salary $114,500.00 to $167,500.00 annually (to be negotiated)	2026-04-17 16:12:19.687558
article-49349138	manager, IT (information technology) implementation	April 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-17 16:12:19.687558
article-49348349	artificial intelligence (AI) designer	April 16, 2026	Montréal (QC)	Salary $100,900.00 annually	2026-04-17 16:12:19.687559
article-49347966	information technology (IT) director	April 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-17 16:12:19.687559
article-49348062	manager, computer applications	April 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-17 16:12:19.68756
article-49348093	artificial intelligence (AI) consultant	April 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-17 16:12:19.68756
article-49348111	artificial intelligence (AI) consultant	April 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-17 16:12:19.687561
article-49348169	senior software developer	April 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-17 16:12:19.687562
article-49348186	artificial intelligence (AI) consultant	April 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-17 16:12:19.687562
article-49348284	software development manager	April 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-17 16:12:19.687563
article-49348330	senior software developer	April 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-17 16:12:19.687563
article-49348343	software developer	April 16, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-04-17 16:12:19.687564
article-49348394	artificial intelligence (AI) consultant	April 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-17 16:12:19.687564
article-49348405	manager, IT (information technology) implementation	April 16, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-04-17 16:12:19.687565
article-49348451	data mining analyst	April 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-17 16:12:19.687565
article-49348601	information technology (IT) director	April 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-17 16:12:27.739288
article-49348534	information technology (IT) director	April 16, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-17 16:12:27.739292
article-49348627	manager, IT (information technology) implementation	April 16, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-04-17 16:12:27.739292
article-49348112	operations supervisor	April 16, 2026	Toronto (ON)	Salary $20.00 hourly	2026-04-17 16:12:27.739293
article-49352253	software developer	April 16, 2026	Montréal (QC)	Salary $25.00 to $63.00 hourly	2026-04-17 16:12:27.739293
article-49352297	data scientist	April 16, 2026	Toronto (ON)	Salary $90,000.00 to $120,000.00 annually	2026-04-17 16:12:27.739294
article-49352137	cloud developer	April 15, 2026	Toronto (ON)	Salary $75,000.00 to $95,000.00 annually	2026-04-17 16:12:36.838109
article-49356259	telephone service supervisor	April 17, 2026	Saint-Jean-sur-Richelieu (QC)	Salary $19.85 to $23.41 hourly	2026-04-18 15:52:01.576493
article-49355199	data management specialist	April 17, 2026	Laval (QC)	Salary $28.75 to $34.75 hourly (to be negotiated)	2026-04-18 15:52:01.576497
article-49354914	cloud operations manager	April 17, 2026	Palmer Rapids (ON)	Salary $55,000.00 to $65,000.00 annually	2026-04-18 15:52:01.576498
article-49355045	administrative clerks supervisor	April 17, 2026	Waterloo (ON)	Salary $28.50 hourly	2026-04-18 15:52:01.576499
article-49354368	computer projects manager	April 17, 2026	Montréal (QC)	Salary $55,000.00 to $80,000.00 annually	2026-04-18 15:52:01.576499
article-49353174	senior software developer	April 17, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-18 15:52:01.5765
article-49353228	data scientist	April 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-18 15:52:01.576501
article-49353235	senior software developer	April 17, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-18 15:52:01.576502
article-49353253	data scientist	April 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-18 15:52:01.576503
article-49353362	manager, data processing planning	April 17, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-18 15:52:01.576503
article-49353731	manager, IT (information technology) implementation	April 17, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-18 15:52:01.576504
article-49353744	data scientist	April 17, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-04-18 15:52:01.576504
article-49353751	data mining analyst	April 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-18 15:52:01.576505
article-49353844	artificial intelligence (AI) consultant	April 17, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-18 15:52:01.576505
article-49353848	data mining analyst	April 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-18 15:52:01.576506
article-49353908	artificial intelligence (AI) consultant	April 17, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-18 15:52:01.576507
article-49353910	software development manager	April 17, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-18 15:52:01.576507
article-49353928	data analyst - informatics and systems	April 17, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-18 15:52:01.576508
article-49353933	information technology (IT) implementation manager	April 17, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-18 15:52:01.576508
article-49353358	software development programmer	April 17, 2026	Calgary (AB)	Salary $48.08 hourly	2026-04-18 15:52:01.576509
article-49348624	data scientist	April 16, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-18 15:52:11.452908
article-49348458	software developer	April 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-18 15:52:11.452912
article-49348595	software developer	April 16, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-18 15:52:11.452913
article-49348603	senior software developer	April 16, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-04-18 15:52:11.452913
article-49348636	data analyst - informatics and systems	April 16, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-18 15:52:11.452914
article-49360139	manager, computer applications	April 19, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-19 15:52:20.233618
article-49360330	data scientist	April 19, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-19 15:52:20.233623
article-49358889	artificial intelligence (AI) consultant	April 18, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-19 15:52:20.233623
article-49358937	software development manager	April 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-19 15:52:20.233624
article-49358956	data scientist	April 18, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-19 15:52:20.233624
article-49358986	data mining analyst	April 18, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-19 15:52:20.233625
article-49358907	software developer	April 18, 2026	Fergus (ON)	Salary $49.00 hourly	2026-04-19 15:52:20.233626
article-49358331	software developer	April 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-19 15:52:20.233627
article-49358333	artificial intelligence (AI) consultant	April 18, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-19 15:52:20.233627
article-49358363	manager, computer applications	April 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-19 15:52:20.233628
article-49358384	senior software developer	April 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-19 15:52:20.233629
article-49358427	senior software developer	April 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-19 15:52:20.233629
article-49358441	software developer	April 18, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-04-19 15:52:20.23363
article-49358473	software developer	April 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-19 15:52:20.23363
article-49358485	senior software developer	April 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-19 15:52:20.233631
article-49358514	senior software developer	April 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-19 15:52:20.233631
article-49358520	artificial intelligence (AI) consultant	April 18, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-19 15:52:20.233632
article-49358535	manager, IT (information technology) implementation	April 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-19 15:52:20.233632
article-49358565	manager, computer applications	April 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-19 15:52:20.233633
article-49358573	manager, IT (information technology) implementation	April 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-19 15:52:20.233633
article-49358579	application programmer	April 18, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-04-19 15:52:20.233634
article-49358580	analyst, electronic data processing (EDP) systems	April 18, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-19 15:52:20.233634
article-49358585	senior software developer	April 18, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-19 15:52:20.233635
article-49358590	manager, computer applications	April 18, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-19 15:52:20.233636
article-49366008	artificial intelligence (AI) consultant	April 20, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-20 16:20:57.487881
article-49366196	senior software developer	April 20, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-20 16:20:57.487886
article-49366207	manager, data processing planning	April 20, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:20:57.487887
article-49366289	manager, IT (information technology) implementation	April 20, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:20:57.487887
article-49366299	software development manager	April 20, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:20:57.487888
article-49366335	director of technology management	April 20, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:20:57.487888
article-49366398	data scientist	April 20, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-04-20 16:20:57.487889
article-49366429	data scientist	April 20, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-20 16:20:57.48789
article-49366451	data analyst - informatics and systems	April 20, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-20 16:20:57.487891
article-49365611	data analytics manager	April 20, 2026	Toronto (ON)	Salary $99,056.00 to $132,074.00 annually	2026-04-20 16:20:57.487892
article-49365715	software developer	April 20, 2026	Mississauga (ON)	Salary $48.50 hourly	2026-04-20 16:20:57.487892
article-49364986	cloud operations manager	April 20, 2026	Blue Mountains (ON)	Salary $100,000.00 to $125,000.00 annually	2026-04-20 16:20:57.487893
article-49364621	database developer	April 20, 2026	Trois-Rivières (QC)	Salary $19.50 hourly	2026-04-20 16:20:57.487893
article-49364523	Data Analytics Specialist	April 20, 2026	Ottawa (ON)	Salary $94,193.00 annually	2026-04-20 16:20:57.487894
article-49363247	information technology (IT) director	April 20, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:20:57.487894
article-49363268	information technology (IT) director	April 20, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:20:57.487895
article-49363297	data scientist	April 20, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-20 16:20:57.487895
article-49363343	manager, IT (information technology) implementation	April 20, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:20:57.487896
article-49363348	Java programmer	April 20, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-20 16:20:57.487897
article-49363349	data scientist	April 20, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-20 16:20:57.487897
article-49361665	information technology (IT) director	April 19, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:20:57.487898
article-49361669	data scientist	April 19, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-20 16:20:57.487898
article-49361671	manager, computer applications	April 19, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:20:57.487899
article-49361686	software engineering manager	April 19, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:20:57.487899
article-49361693	senior software developer	April 19, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-20 16:20:57.4879
article-49361842	software developer	April 19, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-20 16:21:08.632024
article-49361714	software development manager	April 19, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:21:08.632028
article-49361840	artificial intelligence (AI) consultant	April 19, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-20 16:21:08.632028
article-49361823	data scientist	April 19, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-04-20 16:21:08.632029
article-49361871	data analyst - informatics and systems	April 19, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-20 16:21:08.632029
article-49361809	data mining analyst	April 19, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-20 16:21:08.63203
article-49361708	artificial intelligence (AI) consultant	April 19, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-20 16:21:08.632031
article-49361852	artificial intelligence (AI) consultant	April 19, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-20 16:21:08.632031
article-49361834	manager, computer applications	April 19, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:21:08.632032
article-49361815	manager, computer applications	April 19, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:21:08.632032
article-49361698	artificial intelligence (AI) consultant	April 19, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-20 16:21:08.632033
article-49361793	manager, IT (information technology) implementation	April 19, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-20 16:21:08.632033
article-49373548	manager, computer applications	April 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-21 16:20:13.875068
article-49373773	software developer	April 21, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-04-21 16:20:13.875072
article-49373779	artificial intelligence (AI) consultant	April 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-21 16:20:13.875073
article-49373781	manager, IT (information technology) implementation	April 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-21 16:20:13.875074
article-49373792	data scientist	April 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-21 16:20:13.875074
article-49373793	software development manager	April 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-21 16:20:13.875075
article-49373796	manager, data processing and systems analysis	April 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-21 16:20:13.875075
article-49373810	manager, computer applications	April 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-21 16:20:13.875077
article-49373813	senior software developer	April 21, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-04-21 16:20:13.875078
article-49373820	application programmer	April 21, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-04-21 16:20:13.875078
article-49373821	analyst, electronic data processing (EDP) systems	April 21, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-21 16:20:13.875079
article-49373822	senior software developer	April 21, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-21 16:20:13.875079
article-49373830	manager, IT (information technology) implementation	April 21, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-04-21 16:20:13.87508
article-49373842	manager, computer systems development	April 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-21 16:20:13.875081
article-49372846	telephone service supervisor	April 21, 2026	Meaford (ON)	Salary $18.39 to $20.07 hourly	2026-04-21 16:20:13.875081
article-49372942	software developer	April 21, 2026	Etobicoke (ON)	Salary $50.00 hourly	2026-04-21 16:20:13.875082
article-49372440	network design manager	April 21, 2026	Laval (QC)	Salary $120,000.00 to $150,000.00 annually	2026-04-21 16:20:13.875082
article-49372665	computer manager	April 21, 2026	Saguenay (QC)	Salary $115,000.00 to $153,000.00 annually	2026-04-21 16:20:13.875083
article-49371932	developer, software	April 21, 2026	Montréal (QC)	Salary $110,000.00 to $135,000.00 annually	2026-04-21 16:20:13.875083
article-49371880	information systems manager	April 21, 2026	Vancouver (BC)	Salary $64.00 to $99.00 hourly (to be negotiated)	2026-04-21 16:20:13.875084
article-49369895	manager, computer applications	April 21, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-21 16:20:13.875085
article-49369953	artificial intelligence (AI) consultant	April 21, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-21 16:20:13.875085
article-49368302	information systems manager	April 20, 2026	Orangeville (ON)	Salary $150,000.00 annually	2026-04-21 16:20:13.875085
article-49368040	software engineering manager	April 20, 2026	Concord (ON)	Salary $68.00 hourly	2026-04-21 16:20:13.875086
article-49367553	database developer	April 20, 2026	Toronto (ON)	Salary $18.60 hourly	2026-04-21 16:20:13.875087
article-49367809	office supervisor	April 20, 2026	Thornhill (BC)	Salary $37.00 to $38.00 hourly (to be negotiated)	2026-04-21 16:20:25.538522
article-49367082	operations supervisor	April 20, 2026	Mission (BC)	Salary $36.60 hourly	2026-04-21 16:20:25.538527
article-49370739	data engineer	April 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-21 16:20:25.538527
article-49371309	data engineer	April 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-21 16:20:25.538528
article-49371447	data engineer	April 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-21 16:20:25.538529
article-49371239	software developer	April 20, 2026	Toronto (ON)	Salary $101.00 daily	2026-04-21 16:20:25.538529
article-49370754	software developer	April 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-21 16:20:25.53853
article-49370010	data analyst - informatics and systems	April 20, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-21 16:20:25.53853
article-49371822	software developer	April 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-21 16:20:25.538531
article-49370978	software developer	April 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-21 16:20:37.33114
article-49371229	software developer	April 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-21 16:20:37.331145
article-49371572	software developer	April 20, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-04-21 16:20:37.331146
article-49370641	software developer	April 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-21 16:20:37.331147
article-49371292	software developer	April 20, 2026	Mirabel (QC)	Salary $100.00 to $150,000.00 hourly	2026-04-21 16:20:37.331147
article-49370546	cloud developer	April 20, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-21 16:20:37.331148
article-49370908	quantitative analyst	April 20, 2026	Toronto (ON)	Salary $25.00 hourly	2026-04-21 16:20:37.331148
article-49361703	data scientist	April 19, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-21 16:20:37.331149
article-49361805	artificial intelligence (AI) consultant	April 19, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-21 16:20:37.331149
article-49379811	software development manager	April 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-22 16:19:01.456558
article-49379812	data scientist	April 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456562
article-49379851	software developer	April 22, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-22 16:19:01.456563
article-49379913	artificial intelligence (AI) consultant	April 22, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456563
article-49379925	senior software developer	April 22, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-22 16:19:01.456564
article-49379942	artificial intelligence (AI) consultant	April 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456564
article-49379953	manager, computer applications	April 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-22 16:19:01.456565
article-49379979	data scientist	April 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456566
article-49379993	data scientist	April 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456567
article-49380004	senior software developer	April 22, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-22 16:19:01.456567
article-49380008	artificial intelligence (AI) consultant	April 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456568
article-49380011	artificial intelligence (AI) consultant	April 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456569
article-49380056	artificial intelligence (AI) consultant	April 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456569
article-49380118	data mining analyst	April 22, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.45657
article-49380151	software development manager	April 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-22 16:19:01.45657
article-49380156	data scientist	April 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456571
article-49380178	artificial intelligence (AI) consultant	April 22, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456571
article-49380214	database analyst (DBA)	April 22, 2026	Montréal (QC)	Salary $25.00 to $61.03 hourly	2026-04-22 16:19:01.456572
article-49380228	manager, IT (information technology) implementation	April 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-22 16:19:01.456573
article-49378712	computer networks manager	April 22, 2026	Montréal (QC)	Salary $150,000.00 annually	2026-04-22 16:19:01.456573
article-49378705	software developer	April 22, 2026	Montréal (QC)	Salary $46.15 hourly	2026-04-22 16:19:01.456574
article-49377428	data mining analyst	April 22, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-22 16:19:01.456574
article-49377489	manager, computer applications	April 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-22 16:19:01.456575
article-49376766	cybersecurity manager	April 21, 2026	Montréal (QC)	Salary $50,000.00 annually	2026-04-22 16:19:01.456576
article-49375480	data analyst - informatics and systems	April 21, 2026	Burnaby (BC)	Salary $3,577.88 biweekly	2026-04-22 16:19:01.456576
article-49374383	mobile applications developer	April 21, 2026	Calgary (AB)	Salary $48.00 to $50.00 hourly (to be negotiated)	2026-04-22 16:19:09.096402
article-49377381	software developer	April 21, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-22 16:19:09.096408
article-49377926	big data analyst	April 21, 2026	Toronto (ON)	Salary $55,000.00 annually	2026-04-22 16:19:09.096409
article-49378094	information technology (IT) director	April 21, 2026	Calgary (AB)	Salary $40.00 to $92.00 hourly	2026-04-22 16:19:09.09641
article-49378098	information technology (IT) director	April 21, 2026	Vancouver (BC)	Salary $110,000.00 to $140,000.00 annually	2026-04-22 16:19:09.096411
article-49377273	cloud developer	April 21, 2026	Toronto (ON)	Salary $18.00 to $19.00 hourly	2026-04-22 16:19:09.096412
article-49386534	senior software developer	April 23, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-23 16:52:16.107127
article-49386545	artificial intelligence (AI) consultant	April 23, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-23 16:52:16.107131
article-49386736	software development manager	April 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-23 16:52:16.107132
article-49386741	manager, IT (information technology) implementation	April 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-23 16:52:16.107133
article-49386759	data scientist	April 23, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-04-23 16:52:16.107133
article-49386794	manager, computer applications	April 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-23 16:52:16.107134
article-49386813	software development manager	April 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-23 16:52:16.107135
article-49386818	application programmer	April 23, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-04-23 16:52:16.107136
article-49386820	analyst, electronic data processing (EDP) systems	April 23, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-23 16:52:16.107136
article-49386862	senior software developer	April 23, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-23 16:52:16.107137
article-49385332	cybersecurity manager	April 23, 2026	Montréal (QC)	Salary $65,000.00 to $75,000.00 annually	2026-04-23 16:52:16.107138
article-49385299	computer projects manager	April 23, 2026	Montréal (QC)	Salary $90,000.00 to $110,000.00 annually (to be negotiated)	2026-04-23 16:52:16.107138
article-49385658	manager, systems - computer systems	April 23, 2026	Longueuil (QC)	Salary $140,504.00 to $155,000.00 annually (to be negotiated)	2026-04-23 16:52:16.107139
article-49385645	software developer	April 23, 2026	Thunder Bay, ON	Salary $80,000.00 to $105,000.00 annually (to be negotiated)	2026-04-23 16:52:16.107139
article-49384846	software developer	April 23, 2026	Burnaby (BC)	Salary $10,000.00 monthly	2026-04-23 16:52:16.10714
article-49384952	database developer	April 23, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-23 16:52:16.10714
article-49384793	software developer	April 23, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-23 16:52:16.107141
article-49383241	software developer	April 23, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-23 16:52:16.107142
article-49383306	data mining analyst	April 23, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-23 16:52:16.107142
article-49383362	artificial intelligence (AI) consultant	April 23, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-23 16:52:16.107143
article-49383418	manager, IT (information technology) implementation	April 23, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-23 16:52:16.107143
article-49382822	computer projects manager	April 22, 2026	Québec (QC)	Salary $75,000.00 to $95,000.00 annually	2026-04-23 16:52:16.107144
article-49382447	data centre operator	April 22, 2026	Montréal (QC)	Salary $90,000.00 to $110,000.00 annually	2026-04-23 16:52:16.107144
article-49382295	data scientist	April 22, 2026	Burnaby (BC)	Salary $48.10 hourly	2026-04-23 16:52:16.107145
article-49382242	administrative supervisor	April 22, 2026	Westbank (BC)	Salary $37.00 to $39.00 hourly (to be negotiated)	2026-04-23 16:52:16.107145
article-49381335	computer manager	April 22, 2026	Vancouver (BC)	Salary $41.00 hourly	2026-04-23 16:52:23.616741
article-49381165	operations supervisor	April 22, 2026	Nestleton Station (ON)	Salary $22.00 to $24.00 hourly	2026-04-23 16:52:23.616746
article-49380330	IT (information technology) development manager	April 22, 2026	Coquitlam (BC)	Salary $142,820.00 annually	2026-04-23 16:52:23.616747
article-49383395	senior software developer	April 22, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-23 16:52:23.616747
article-49385061	software developer	April 22, 2026	Montréal (QC)	Salary $10,000.00 monthly	2026-04-23 16:52:23.616748
article-49384990	software developer	April 22, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-04-23 16:52:23.616749
article-49384911	software developer	April 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-23 16:52:23.616749
article-49385116	software developer	April 22, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-23 16:52:31.755355
article-49384654	software engineering manager	April 22, 2026	Surrey (BC)	Salary $142,750.00 annually	2026-04-23 16:52:31.755359
article-49384810	quantitative analyst	April 22, 2026	Toronto (ON)	Salary $25.00 hourly	2026-04-23 16:52:31.75536
article-49384615	data engineer	April 21, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-23 16:52:31.75536
article-49384515	big data analyst	April 21, 2026	Toronto (ON)	Salary $55,000.00 annually	2026-04-23 16:52:31.755361
article-49385059	software developer	April 21, 2026	Toronto (ON)	Salary $100,000.00 to $120,000.00 annually	2026-04-23 16:52:31.755361
article-49384913	software developer	April 21, 2026	Montréal (QC)	Salary $38.00 hourly	2026-04-23 16:52:31.755362
article-49384986	software developer	April 21, 2026	Montréal (QC)	Salary $38.00 to $40.00 hourly	2026-04-23 16:52:31.755362
article-49385120	software developer	April 21, 2026	Laval (QC)	Salary $38.00 hourly	2026-04-23 16:52:40.075421
article-49383455	manager, data processing and systems analysis	April 21, 2026	Mississauga (ON)	Salary $40.00 to $92.00 hourly	2026-04-23 16:52:40.075426
article-49392308	technical program manager - information technology (IT)	April 24, 2026	Nepean (ON)	Salary $165,000.00 to $185,000.00 annually (to be negotiated)	2026-04-24 16:11:52.886694
article-49391285	data engineer	April 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-24 16:11:52.886699
article-49391308	software developer	April 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-24 16:11:52.8867
article-49390780	data engineer	April 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-24 16:11:52.8867
article-49390466	software developer	April 24, 2026	Toronto (ON)	Salary $25.00 to $63.00 hourly	2026-04-24 16:11:52.886701
article-49390085	software development manager	April 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-24 16:11:52.886702
article-49390230	senior software developer	April 24, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-24 16:11:52.886702
article-49390276	data scientist	April 24, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-24 16:11:52.886703
article-49390289	manager, computer applications	April 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-24 16:11:52.886704
article-49390317	manager, computer applications	April 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-24 16:11:52.886704
article-49390209	senior software developer	April 23, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-24 16:11:52.886705
article-49389729	IT (information technology) development manager	April 23, 2026	Saanich (BC)	Salary $98,340.00 annually	2026-04-24 16:11:52.886705
article-49388938	software development programmer	April 23, 2026	Vancouver (BC)	Salary $40.00 hourly	2026-04-24 16:11:52.886706
article-49388932	business data analyst	April 23, 2026	Burnaby (BC)	Salary $43.00 hourly	2026-04-24 16:11:52.886706
article-49388467	operations supervisor	April 23, 2026	Toronto (ON)	Salary $55,000.00 to $75,000.00 annually (to be negotiated)	2026-04-24 16:11:52.886707
article-49388098	computer projects manager	April 23, 2026	Sherbrooke (QC)	Salary $110,414.00 to $134,206.00 annually	2026-04-24 16:11:52.886707
article-49387890	computer application development manager	April 23, 2026	Longueuil (QC)	Salary $140,504.00 annually	2026-04-24 16:11:52.886708
article-49387304	cybersecurity manager	April 23, 2026	Alma (QC)	Salary $16.60 hourly	2026-04-24 16:11:52.886709
article-49387250	big data analyst	April 23, 2026	Sault Ste. Marie (ON)	Salary $20.34 to $26.00 hourly	2026-04-24 16:11:52.886709
article-49390887	data engineer	April 23, 2026	Toronto (ON)	Salary $110,000.00 annually	2026-04-24 16:12:02.011079
article-49390791	software developer	April 23, 2026	Toronto (ON)	Salary $70.00 hourly	2026-04-24 16:12:02.011085
article-49391105	software developer	April 23, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-04-24 16:12:02.011086
article-49390408	operations supervisor	April 23, 2026	Richmond Hill (ON)	Salary $85,000.00 to $105,000.00 annually	2026-04-24 16:12:02.011086
article-49391197	data engineer	April 22, 2026	Montréal-Est (QC)	Salary $10,000.00 monthly	2026-04-24 16:12:11.567341
article-49390708	big data analyst	April 21, 2026	Toronto (ON)	Salary $55,000.00 annually	2026-04-24 16:12:20.475919
article-49399686	application programmer	April 26, 2026	Laval (QC)	Salary $40.00 hourly	2026-04-26 15:55:08.298061
article-49399687	application programmer	April 26, 2026	Laval (QC)	Salary $40.00 hourly	2026-04-26 15:55:08.298065
article-49399405	data scientist	April 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:08.298066
article-49398893	manager, computer applications	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:08.298066
article-49398901	director, data processing	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:08.298067
article-49398070	data scientist	April 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:08.298067
article-49397941	software development manager	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:08.298068
article-49397948	software development manager	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:08.298069
article-49397949	data scientist	April 25, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:08.29807
article-49397957	artificial intelligence (AI) consultant	April 25, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:08.29807
article-49397971	senior software developer	April 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-26 15:55:08.298071
article-49397972	data mining analyst	April 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:08.298072
article-49397977	artificial intelligence (AI) consultant	April 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:08.298072
article-49397983	manager, IT (information technology) implementation	April 25, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:08.298073
article-49397984	operations supervisor	April 25, 2026	Toronto (ON)	Salary $22.00 to $46.00 hourly	2026-04-26 15:55:08.298073
article-49397991	data analyst - informatics and systems	April 25, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-26 15:55:08.298074
article-49397751	senior software developer	April 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-26 15:55:08.298074
article-49397760	artificial intelligence (AI) consultant	April 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:08.298075
article-49397768	software engineering manager	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:08.298076
article-49397776	manager, computer applications	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:08.298076
article-49397791	senior software developer	April 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-26 15:55:08.298077
article-49397802	data scientist	April 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:08.298077
article-49397837	artificial intelligence (AI) consultant	April 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:08.298078
article-49397840	data scientist	April 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:08.298078
article-49397849	software development manager	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:08.298079
article-49397868	manager, IT (information technology) implementation	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:16.522631
article-49397904	manager, IT (information technology) implementation	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:16.522635
article-49397923	artificial intelligence (AI) consultant	April 25, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:16.522636
article-49397900	director of technology management	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:16.522636
article-49397511	computer projects manager	April 25, 2026	Saint-Eustache (QC)	Salary $100,000.00 to $125,000.00 annually	2026-04-26 15:55:16.522637
article-49397490	Internet systems administrator	April 25, 2026	Montréal (QC)	Salary $85,000.00 to $100,000.00 annually	2026-04-26 15:55:16.522638
article-49396546	artificial intelligence (AI) consultant	April 25, 2026	Toronto (ON)	Salary $26.00 to $78.00 hourly	2026-04-26 15:55:16.522638
article-49396515	computer programs manager	April 25, 2026	Val-d'Or (QC)	Salary $40.92 to $53.99 hourly	2026-04-26 15:55:16.522639
article-49396306	software developer	April 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-26 15:55:16.522639
article-49396183	software developer	April 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-26 15:55:16.52264
article-49396249	senior software developer	April 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-26 15:55:16.52264
article-49396281	database analyst	April 25, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-26 15:55:16.522641
article-49395402	senior software developer	April 24, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-26 15:55:16.522641
article-49395397	artificial intelligence (AI) consultant	April 24, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:16.522642
article-49395146	office supervisor	April 24, 2026	Nisku (AB)	Salary $36.50 hourly	2026-04-26 15:55:16.522642
article-49395263	software development programmer	April 24, 2026	North York (ON)	Salary $48.25 hourly	2026-04-26 15:55:16.522643
article-49395139	software developer	April 24, 2026	Mississauga (ON)	Salary $50.00 hourly	2026-04-26 15:55:16.522644
article-49395212	senior software developer	April 24, 2026	Toronto (ON)	Salary $130,000.00 annually	2026-04-26 15:55:16.522644
article-49395213	data analyst - informatics and systems	April 24, 2026	Oshawa (ON)	Salary $20.00 hourly	2026-04-26 15:55:16.522645
article-49394301	machine learning engineer	April 24, 2026	North Vancouver (BC)	Salary $100,000.00 to $150,000.00 annually (to be negotiated)	2026-04-26 15:55:16.522645
article-49393502	IT (information technology) development manager	April 24, 2026	Vancouver (BC)	Salary $117,909.00 annually	2026-04-26 15:55:16.522646
article-49393111	data scientist	April 24, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:16.522646
article-49393347	software developer	April 24, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-26 15:55:16.522647
article-49393201	data mining analyst	April 24, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:26.568069
article-49392981	artificial intelligence (AI) consultant	April 24, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:26.568073
article-49392788	senior software developer	April 24, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-26 15:55:26.568074
article-49392955	data scientist	April 24, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-26 15:55:26.568074
article-49393221	help desk manager - information technology (IT)	April 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:26.568075
article-49393205	manager, IT (information technology) implementation	April 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:26.568075
article-49392870	software developer	April 24, 2026	Oakville (ON)	Salary $60,000.00 to $105,000.00 annually (to be negotiated)	2026-04-26 15:55:26.568076
article-49396257	director, data processing	April 24, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-26 15:55:26.568076
article-49402373	data mining analyst	April 27, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.141272
article-49402449	manager, data processing and systems analysis	April 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-27 16:53:24.141276
article-49402454	software developer	April 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-27 16:53:24.141277
article-49402495	manager, data processing and systems analysis	April 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-27 16:53:24.141278
article-49402583	software developer	April 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-27 16:53:24.141278
article-49402607	senior software developer	April 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-27 16:53:24.141279
article-49401198	data scientist	April 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.14128
article-49400735	software developer	April 26, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-27 16:53:24.141281
article-49400744	artificial intelligence (AI) consultant	April 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.141282
article-49400805	senior software developer	April 26, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-27 16:53:24.141282
article-49400808	data scientist	April 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.141283
article-49400820	manager, IT (information technology) implementation	April 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-27 16:53:24.141283
article-49400822	artificial intelligence (AI) consultant	April 26, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.141284
article-49400824	artificial intelligence (AI) consultant	April 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.141284
article-49400829	senior software developer	April 26, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-27 16:53:24.141285
article-49400834	data mining analyst	April 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.141286
article-49400841	manager, computer applications	April 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-27 16:53:24.141286
article-49400843	senior software developer	April 26, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-27 16:53:24.141287
article-49400865	software development manager	April 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-27 16:53:24.141287
article-49400937	data scientist	April 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.141288
article-49400943	director of technology management	April 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-27 16:53:24.141288
article-49400960	data scientist	April 26, 2026	Vancouver (BC)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.141289
article-49400968	data scientist	April 26, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.141289
article-49401018	manager, computer applications	April 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-27 16:53:24.14129
article-49401044	data scientist	April 26, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:24.141291
article-49401138	data mining analyst	April 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-27 16:53:39.200107
article-49401143	information technology (IT) director	April 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-27 16:53:39.200112
article-49401173	manager, IT (information technology) implementation	April 26, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-27 16:53:39.200112
article-49403612	software developer	April 26, 2026	Toronto (ON)	Salary $55.00 hourly	2026-04-27 16:53:39.200113
article-49403517	software developer	April 26, 2026	Vancouver (BC)	Salary $35.00 hourly	2026-04-27 16:53:39.200114
article-49403617	software developer	April 26, 2026	Vancouver (BC)	Salary $35.00 hourly	2026-04-27 16:53:39.200114
article-49403712	software developer	April 26, 2026	Toronto (ON)	Salary $60.00 to $80.00 hourly	2026-04-27 16:53:39.200115
article-49403664	quantitative analyst	April 26, 2026	Toronto (ON)	Salary $125.00 daily	2026-04-27 16:53:39.200115
article-49397882	director, data processing	April 25, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-27 16:53:52.804396
article-49397872	senior software developer	April 25, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-27 16:53:52.8044
article-49403428	software developer	April 25, 2026	Vancouver (BC)	Salary $80,000.00 to $87,000.00 annually	2026-04-27 16:53:52.804401
article-49403650	software developer	April 25, 2026	Toronto (ON)	Salary $80,000.00 to $87,000.00 annually	2026-04-27 16:53:52.804401
article-49403343	data engineer	April 24, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-04-27 16:54:05.440947
article-49403568	data engineer	April 24, 2026	Toronto (ON)	Salary $86,000.00 annually	2026-04-27 16:54:05.440953
article-49403653	software developer	April 24, 2026	Montréal (QC)	Salary $65.52 to $80.00 hourly	2026-04-27 16:54:05.440955
article-49403674	software developer	April 24, 2026	Toronto (ON)	Salary $85,000.00 to $125,000.00 annually	2026-04-27 16:54:05.440955
article-49403419	data steward	April 24, 2026	Toronto (ON)	Salary $60.00 hourly	2026-04-27 16:54:18.447824
article-49403622	DBA (database analyst)	April 24, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-04-27 16:54:18.447829
article-49413350	software developer	April 28, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:24.253602
article-49413383	data scientist	April 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:24.253607
article-49413401	software engineering manager	April 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:24.253607
article-49413508	senior software developer	April 28, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:24.253608
article-49413514	software development manager	April 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:24.253609
article-49413519	data scientist	April 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:24.253609
article-49413546	data scientist	April 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:24.25361
article-49413557	senior software developer	April 28, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:24.253611
article-49413598	manager, computer applications	April 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:24.253612
article-49413602	software developer	April 28, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:24.253613
article-49413625	data mining analyst	April 28, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:24.253613
article-49413631	artificial intelligence (AI) consultant	April 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:24.253614
article-49413648	senior software developer	April 28, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:24.253614
article-49413656	manager, IT (information technology) implementation	April 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:24.253615
article-49413657	data scientist	April 28, 2026	Vancouver (BC)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:24.253615
article-49413658	artificial intelligence (AI) consultant	April 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:24.253616
article-49413661	artificial intelligence (AI) consultant	April 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:24.253617
article-49413668	senior software developer	April 28, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:24.253617
article-49413673	data scientist	April 28, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:24.253618
article-49413675	manager, IT (information technology) implementation	April 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:24.253618
article-49413677	director, data processing	April 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:24.253619
article-49413686	software developer	April 28, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:24.25362
article-49413693	director of technology management	April 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:24.25362
article-49413700	data mining analyst	April 28, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:24.253621
article-49413714	manager, IT (information technology) implementation	April 28, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:24.253621
article-49412645	operations supervisor	April 28, 2026	Nestleton Station (ON)	Salary $22.00 to $24.00 hourly	2026-04-28 17:02:33.470971
article-49410951	software developer	April 28, 2026	Vancouver (BC)	Salary $20.00 to $30.00 hourly	2026-04-28 17:02:33.470975
article-49411054	software developer	April 28, 2026	Vancouver (BC)	Salary $20.00 to $30.00 hourly	2026-04-28 17:02:33.470976
article-49411239	software developer	April 28, 2026	Toronto (ON)	Salary $40.00 hourly	2026-04-28 17:02:33.470976
article-49410911	software engineering manager	April 28, 2026	Calgary (AB)	Salary $150,000.00 annually	2026-04-28 17:02:33.470977
article-49408068	director of technology management	April 27, 2026	Québec (QC)	Salary $50,000.00 to $120,000.00 hourly	2026-04-28 17:02:33.470977
article-49407650	business data analyst	April 27, 2026	St. Thomas (ON)	Salary $41.50 hourly	2026-04-28 17:02:33.470978
article-49407043	software developer	April 27, 2026	Toronto (ON)	Salary $48.37 hourly	2026-04-28 17:02:33.470979
article-49406272	application programmer	April 27, 2026	Surrey (BC)	Salary $62.00 hourly	2026-04-28 17:02:33.470979
article-49405868	data scientist	April 27, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:33.47098
article-49405542	software development manager	April 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:33.47098
article-49405894	software development manager	April 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:33.470981
article-49405853	data mining analyst	April 27, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:33.470981
article-49405663	data scientist	April 27, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:33.470982
article-49405902	data analyst - informatics and systems	April 27, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-28 17:02:33.470982
article-49405939	senior software developer	April 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:33.470983
article-49405831	software development manager	April 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:33.470983
article-49405687	senior software developer	April 27, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:33.470984
article-49405693	artificial intelligence (AI) consultant	April 27, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:33.470984
article-49405727	data scientist	April 27, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:33.470985
article-49405858	data mining analyst	April 27, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:33.470985
article-49405944	analyst, electronic data processing (EDP) systems	April 27, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-28 17:02:33.470986
article-49405568	database analyst (DBA)	April 27, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-28 17:02:33.470986
article-49405941	application programmer	April 27, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:33.470987
article-49405836	manager, IT (information technology) implementation	April 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:33.470987
article-49405909	manager, computer applications	April 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:41.873417
article-49405819	artificial intelligence (AI) consultant	April 27, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:41.873422
article-49405884	information technology (IT) director	April 27, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-28 17:02:41.873423
article-49401085	data scientist	April 26, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-28 17:02:41.873423
article-49401120	data analyst - informatics and systems	April 26, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-28 17:02:41.873424
article-49401145	senior software developer	April 26, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-04-28 17:02:41.873424
article-49401165	data analyst - informatics and systems	April 26, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-04-28 17:02:41.873425
article-49420364	office supervisor	April 29, 2026	Hamilton (ON)	Salary $36.50 hourly	2026-04-29 16:52:33.648327
article-49420073	manager, data processing and systems analysis	April 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-29 16:52:33.648331
article-49420191	manager, computer applications	April 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-29 16:52:33.648332
article-49420253	data mining analyst	April 29, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-29 16:52:33.648333
article-49420285	software development manager	April 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-29 16:52:33.648333
article-49420320	director of technology management	April 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-29 16:52:33.648334
article-49420353	software developer	April 29, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-29 16:52:33.648334
article-49420355	artificial intelligence (AI) consultant	April 29, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-29 16:52:33.648336
article-49420369	manager, IT (information technology) implementation	April 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-29 16:52:33.648336
article-49420400	help desk manager - information technology (IT)	April 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-29 16:52:33.648337
article-49420412	data scientist	April 29, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-04-29 16:52:33.648338
article-49420421	software development manager	April 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-29 16:52:33.648338
article-49420439	data scientist	April 29, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-29 16:52:33.648339
article-49420447	manager, IT (information technology) implementation	April 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-29 16:52:33.648339
article-49420451	senior software developer	April 29, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-29 16:52:33.64834
article-49420456	database analyst (DBA)	April 29, 2026	Montréal (QC)	Salary $25.00 to $61.03 hourly	2026-04-29 16:52:33.64834
article-49420461	manager, computer applications	April 29, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-04-29 16:52:33.648341
article-49420496	senior software developer	April 29, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-29 16:52:33.648341
article-49417263	software developer	April 29, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-04-29 16:52:33.648342
article-49415625	business systems manager	April 28, 2026	Orangeville (ON)	Salary $140,000.00 to $160,000.00 annually	2026-04-29 16:52:33.648342
article-49415021	administrative supervisor	April 28, 2026	Coquitlam (BC)	Salary $37.00 hourly	2026-04-29 16:52:33.648343
article-49414475	software development programmer	April 28, 2026	Vancouver (BC)	Salary $52.40 hourly	2026-04-29 16:52:33.648343
article-49417837	artificial intelligence (AI) consultant	April 28, 2026	Toronto (ON)	Salary $135,000.00 to $155,000.00 annually	2026-04-29 16:52:42.196188
article-49417855	operations supervisor	April 28, 2026	Vancouver (BC)	Salary $50,000.00 to $60,000.00 annually	2026-04-29 16:52:42.196193
article-49425476	software developer	April 30, 2026	Toronto (ON)	Salary $80,000.00 annually	2026-04-30 16:45:57.816474
article-49425493	software developer	April 30, 2026	Calgary (AB)	Salary $120,000.00 to $155,000.00 annually	2026-04-30 16:45:57.816478
article-49422699	data analyst - informatics and systems	April 29, 2026	Calgary (AB)	Salary $44.50 hourly	2026-04-30 16:45:57.816479
article-49422405	EDP (electronic data processing) specialist	April 29, 2026	Rouyn-Noranda (QC)	Salary $30.00 hourly	2026-04-30 16:45:57.816479
article-49422224	software developer	April 29, 2026	Surrey (BC)	Salary $37.10 hourly	2026-04-30 16:45:57.81648
article-49421664	software developer	April 29, 2026	Toronto (ON)	Salary $120,000.00 annually	2026-04-30 16:45:57.81648
article-49421575	artificial intelligence (AI) consultant	April 29, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-04-30 16:45:57.816481
article-49421316	data administrator	April 29, 2026	Etobicoke (ON)	Salary $24.00 to $31.25 hourly	2026-04-30 16:45:57.816482
article-49431822	data centre operator	May 01, 2026	Various locations	Salary $28.84 to $36.05 hourly (to be negotiated)	2026-05-01 16:07:15.986239
article-49431821	data centre manager	May 01, 2026	Balzac (AB)	Salary $95,000.00 to $120,000.00 annually (to be negotiated)	2026-05-01 16:07:15.986243
article-49430235	data scientist	May 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-01 16:07:15.986244
article-49429227	software engineering manager	May 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-01 16:07:15.986244
article-49428579	PC (personal computer) application developer	April 30, 2026	Montréal (QC)	Salary $65,000.00 to $90,000.00 annually	2026-05-01 16:07:15.986245
article-49428587	data centre operator	April 30, 2026	Victoriaville (QC)	Salary $65,000.00 to $100,000.00 annually	2026-05-01 16:07:15.986246
article-49428631	data centre operator	April 30, 2026	Boucherville (QC)	Salary $65,000.00 to $100,000.00 annually	2026-05-01 16:07:15.986246
article-49428917	data centre manager	April 30, 2026	Burnaby (BC)	Salary $95,000.00 to $120,000.00 annually (to be negotiated)	2026-05-01 16:07:15.986247
article-49428899	computer systems manager	April 30, 2026	Ottawa (ON)	Salary $106,400.00 to $132,800.00 annually (to be negotiated)	2026-05-01 16:07:15.986248
article-49427434	developer, software	April 30, 2026	Blainville (QC)	Salary $55,000.00 annually	2026-05-01 16:07:15.986249
article-49427233	manager, data processing and systems analysis	April 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-01 16:07:15.98625
article-49427268	artificial intelligence (AI) consultant	April 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-01 16:07:15.98625
article-49427363	data scientist	April 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-01 16:07:15.98625
article-49427378	data scientist	April 30, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-05-01 16:07:15.986251
article-49427446	senior software developer	April 30, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-01 16:07:15.986251
article-49427539	artificial intelligence (AI) consultant	April 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-01 16:07:15.986252
article-49427618	data mining analyst	April 30, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-05-01 16:07:15.986252
article-49427679	manager, IT (information technology) implementation	April 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-01 16:07:15.986253
article-49427696	software engineering manager	April 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-01 16:07:15.986253
article-49427781	data scientist	April 30, 2026	Vancouver (BC)	Salary $30.00 to $69.74 hourly	2026-05-01 16:07:15.986254
article-49427807	data scientist	April 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-01 16:07:15.986254
article-49427829	manager, computer applications	April 30, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-01 16:07:15.986255
article-49427837	senior software developer	April 30, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-01 16:07:15.986255
article-49427840	data scientist	April 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-01 16:07:15.986256
article-49427851	artificial intelligence (AI) consultant	April 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-01 16:07:15.986256
article-49437690	operations supervisor	May 02, 2026	Edmonton (AB)	Salary $35,000.00 annually	2026-05-02 15:58:58.320585
article-49436930	manager, computer applications	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:58:58.32059
article-49436974	information technology (IT) director	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:58:58.32059
article-49436980	data analyst - informatics and systems	May 02, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-05-02 15:58:58.320591
article-49436986	software development manager	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:58:58.320592
article-49437028	manager, computer applications	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:58:58.320592
article-49436825	manager, IT (information technology) implementation	May 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:58:58.320593
article-49435932	cloud developer	May 01, 2026	Toronto (ON)	Salary $29.95 hourly	2026-05-02 15:58:58.320594
article-49435874	director of data science	May 01, 2026	Montréal (QC)	Salary $80,700.00 to $110,000.00 annually	2026-05-02 15:58:58.320595
article-49435451	cloud developer	May 01, 2026	Brampton (ON)	Salary $70.00 to $90.00 hourly	2026-05-02 15:58:58.320595
article-49434675	data quality analyst	May 01, 2026	Maple (ON)	Salary $44.50 hourly	2026-05-02 15:58:58.320596
article-49433049	systems architecture director	May 01, 2026	Calgary (AB)	Salary $84.13 hourly	2026-05-02 15:58:58.320597
article-49432025	artificial intelligence (AI) consultant	May 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-02 15:58:58.320597
article-49432043	data scientist	May 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-02 15:58:58.320598
article-49432066	manager, data processing and systems analysis	May 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:58:58.320598
article-49432159	database analyst (DBA)	May 01, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-05-02 15:58:58.320599
article-49432172	data scientist	May 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-02 15:58:58.3206
article-49432205	software developer	May 01, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-02 15:58:58.3206
article-49432240	manager, computer applications	May 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:58:58.320601
article-49432321	data scientist	May 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-02 15:58:58.320602
article-49432417	manager, data processing and systems analysis	May 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:58:58.320602
article-49432421	data scientist	May 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-02 15:58:58.320603
article-49432432	data mining analyst	May 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-02 15:58:58.320603
article-49432461	senior software developer	May 01, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-02 15:58:58.320604
article-49432519	data analyst - informatics and systems	May 01, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-05-02 15:58:58.320604
article-49432783	manager, database	May 01, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-05-02 15:59:09.390902
article-49432779	data scientist	May 01, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-05-02 15:59:09.390907
article-49432800	artificial intelligence (AI) consultant	May 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-02 15:59:09.390907
article-49432679	artificial intelligence (AI) consultant	May 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-02 15:59:09.390908
article-49432831	information technology (IT) director	May 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:59:09.390908
article-49432577	director of technology management	May 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:59:09.390909
article-49432756	director of technology management	May 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-02 15:59:09.39091
article-49432859	computer projects manager	May 01, 2026	Boisbriand (QC)	Salary $88,000.00 to $110,000.00 annually	2026-05-02 15:59:09.39091
article-49437901	software developer	May 01, 2026	Mississauga (ON)	Salary $122,202.54 annually	2026-05-02 15:59:09.390911
article-49428050	data scientist	April 30, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-02 15:59:21.615907
article-49440747	software developer	May 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-03 15:59:50.424792
article-49440903	manager, computer applications	May 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:50.424796
article-49440721	operations supervisor	May 03, 2026	Edmonton (AB)	Salary $35,000.00 annually	2026-05-03 15:59:50.424797
article-49438986	artificial intelligence (AI) consultant	May 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-03 15:59:50.424797
article-49439019	software development manager	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:50.424797
article-49439041	manager, data processing planning	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:50.424798
article-49439057	senior software developer	May 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-03 15:59:50.424798
article-49439058	artificial intelligence (AI) consultant	May 02, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-05-03 15:59:50.424799
article-49439060	senior software developer	May 02, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-05-03 15:59:50.4248
article-49439076	data scientist	May 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-03 15:59:50.4248
article-49439080	senior software developer	May 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-03 15:59:50.424801
article-49439084	artificial intelligence (AI) consultant	May 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-03 15:59:50.424801
article-49439128	software engineering manager	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:50.424802
article-49439136	senior software developer	May 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-03 15:59:50.424802
article-49439138	senior software developer	May 02, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-05-03 15:59:50.424803
article-49439180	artificial intelligence (AI) consultant	May 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-03 15:59:50.424803
article-49439184	manager, computer applications	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:50.424803
article-49439187	information technology (IT) director	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:50.424804
article-49439189	senior software developer	May 02, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-03 15:59:50.424804
article-49439195	software development manager	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:50.424805
article-49439205	manager, computer applications	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:50.424805
article-49439212	artificial intelligence (AI) consultant	May 02, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-05-03 15:59:50.424805
article-49439221	director of technology management	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:50.424806
article-49439228	artificial intelligence (AI) consultant	May 02, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-03 15:59:50.424806
article-49439244	senior software developer	May 02, 2026	Calgary (AB)	Salary $30.00 to $76.92 hourly	2026-05-03 15:59:50.424807
article-49439341	manager, IT (information technology) implementation	May 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:58.839349
article-49432808	data scientist	May 01, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-03 15:59:58.839354
article-49432424	data engineer	May 01, 2026	London (ON)	Salary $70,790.55 annually	2026-05-03 15:59:58.839354
article-49432711	data processing director	May 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:58.839355
article-49432745	software development manager	May 01, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-03 15:59:58.839355
article-49449214	artificial intelligence (AI) consultant	May 04, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-05-04 16:59:13.666031
article-49449260	data processing director	May 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-04 16:59:13.666037
article-49449267	manager, computer applications	May 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-04 16:59:13.666037
article-49449292	data scientist	May 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-04 16:59:13.666038
article-49449318	senior software developer	May 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-04 16:59:13.666038
article-49449329	artificial intelligence (AI) consultant	May 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-04 16:59:13.666039
article-49449352	data scientist	May 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-04 16:59:13.66604
article-49449373	manager, IT (information technology) implementation	May 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-04 16:59:13.666041
article-49449374	software developer	May 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-04 16:59:13.666042
article-49449394	manager, IT (information technology) implementation	May 04, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-04 16:59:13.666043
article-49449396	data mining analyst	May 04, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-05-04 16:59:13.666043
article-49449412	senior software developer	May 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-04 16:59:13.666044
article-49449434	software developer	May 04, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-04 16:59:13.666044
article-49446770	software developer	May 04, 2026	Toronto (ON)	Salary $55.00 hourly	2026-05-04 16:59:13.666045
article-49442596	data scientist	May 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-04 16:59:13.666045
article-49442632	manager, data processing and systems analysis	May 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-04 16:59:13.666046
article-49442656	data scientist	May 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-04 16:59:13.666047
article-49442676	software development manager	May 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-04 16:59:13.666047
article-49442703	data scientist	May 03, 2026	Mississauga (ON)	Salary $30.00 to $69.74 hourly	2026-05-04 16:59:13.666048
article-49442721	manager, IT (information technology) implementation	May 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-04 16:59:13.666048
article-49442758	senior software developer	May 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-04 16:59:13.666049
article-49442760	data scientist	May 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-04 16:59:13.666049
article-49442762	software developer	May 03, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-04 16:59:13.66605
article-49442774	data mining analyst	May 03, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-04 16:59:13.66605
article-49442781	information technology (IT) director	May 03, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-04 16:59:13.66605
article-49446803	data engineer	May 03, 2026	Toronto (ON)	Salary $50.00 hourly	2026-05-04 16:59:22.813497
article-49439265	senior software developer	May 02, 2026	Vancouver (BC)	Salary $30.00 to $76.92 hourly	2026-05-04 16:59:22.813502
article-49458048	data scientist	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114694
article-49458054	artificial intelligence (AI) consultant	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114699
article-49458058	data scientist	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114699
article-49458173	data analyst - informatics and systems	May 05, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-05-05 16:53:39.1147
article-49458183	data mining analyst	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.1147
article-49458207	data scientist	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114701
article-49458208	data scientist	May 05, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114702
article-49458238	senior software developer	May 05, 2026	Toronto (ON)	Salary $30.00 to $76.92 hourly	2026-05-05 16:53:39.114703
article-49458257	manager, computer applications	May 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-05 16:53:39.114704
article-49458258	director, data processing	May 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-05 16:53:39.114704
article-49458261	artificial intelligence (AI) consultant	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114705
article-49458275	data analyst - informatics and systems	May 05, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-05-05 16:53:39.114705
article-49458288	artificial intelligence (AI) consultant	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114706
article-49458304	artificial intelligence (AI) consultant	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114706
article-49458306	artificial intelligence (AI) consultant	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114707
article-49458312	senior software developer	May 05, 2026	Mississauga (ON)	Salary $30.00 to $76.92 hourly	2026-05-05 16:53:39.114708
article-49458326	data scientist	May 05, 2026	Vancouver (BC)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114708
article-49458336	help desk manager - information technology (IT)	May 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-05 16:53:39.114709
article-49458340	data processing director	May 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-05 16:53:39.114709
article-49458352	artificial intelligence (AI) consultant	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.11471
article-49458356	artificial intelligence (AI) consultant	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.11471
article-49458358	software development manager	May 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-05 16:53:39.114711
article-49458379	data scientist	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114711
article-49458383	data scientist	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114712
article-49458395	artificial intelligence (AI) consultant	May 05, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:39.114712
article-49458408	manager, IT (information technology) implementation	May 05, 2026	Mississauga (ON)	Salary $43.75 to $103.37 hourly	2026-05-05 16:53:48.121373
article-49457347	data administrator	May 05, 2026	Mont-Royal (QC)	Salary $42,000.00 to $55,000.00 annually	2026-05-05 16:53:48.121379
article-49456803	software development programmer	May 05, 2026	LaSalle (QC)	Salary $95,000.00 to $120,000.00 annually (to be negotiated)	2026-05-05 16:53:48.12138
article-49456445	operations supervisor	May 05, 2026	Montréal (QC)	Salary $35.45 hourly	2026-05-05 16:53:48.12138
article-49455809	software developer	May 05, 2026	Toronto (ON)	Salary $65,600.00 to $98,400.00 annually	2026-05-05 16:53:48.121381
article-49453685	artificial intelligence (AI) consultant	May 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:48.121381
article-49453094	operations supervisor	May 04, 2026	Surrey (BC)	Salary $36.85 hourly	2026-05-05 16:53:48.121382
article-49452951	cybersecurity manager	May 04, 2026	Varennes (QC)	Salary $27.50 hourly	2026-05-05 16:53:48.121382
article-49452296	information technology (IT) director	May 04, 2026	Victoria (BC)	Salary $126,100.02 annually	2026-05-05 16:53:48.121383
article-49451480	software developer	May 04, 2026	Kamloops (BC)	Salary $49.64 hourly	2026-05-05 16:53:48.121384
article-49450793	software developer	May 04, 2026	Etobicoke (ON)	Salary $48.08 to $50.00 hourly (to be negotiated)	2026-05-05 16:53:48.121384
article-49450375	data mining analyst	May 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:48.121385
article-49450019	software developer	May 04, 2026	Mississauga (ON)	Salary $56,977.48 to $100,000.00 annually	2026-05-05 16:53:48.121385
article-49449920	data mining analyst	May 04, 2026	Toronto (ON)	Salary $30.00 to $69.74 hourly	2026-05-05 16:53:48.121386
article-49455816	software developer	May 04, 2026	Hamilton (ON)	Salary $29.75 to $34.30 hourly	2026-05-05 16:53:57.538197
article-49455558	manager, computer system operations	May 04, 2026	Caledon (ON)	Salary $85,000.00 to $95,000.00 annually	2026-05-05 16:53:57.538202
article-49442846	data analyst - informatics and systems	May 03, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-05-05 16:53:57.538203
article-49453403	director, data processing	May 02, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-05-05 16:54:07.516085
article-49446496	software developer	May 01, 2026	Toronto (ON)	Salary $90.00 hourly	2026-05-05 16:54:16.645589
article-49446720	software developer	May 01, 2026	Toronto (ON)	Salary $85,000.00 annually	2026-05-05 16:54:16.645593
article-49446495	software developer	April 30, 2026	Montréal (QC)	Salary $120,000.00 to $155,000.00 annually	2026-05-05 16:54:16.645594
article-49446742	software developer	April 30, 2026	Vancouver (BC)	Salary $120,000.00 to $155,000.00 annually	2026-05-05 16:54:16.645594
article-49446821	software developer	April 30, 2026	Toronto (ON)	Salary $120,000.00 to $155,000.00 annually	2026-05-05 16:54:16.645595
article-49446820	software developer	April 30, 2026	Toronto (ON)	Salary $120,000.00 to $180,000.00 annually	2026-05-05 16:54:25.602274
article-49425615	software developer	April 29, 2026	Toronto (ON)	Salary $45.00 hourly	2026-05-05 16:54:25.602279
article-49425554	software developer	April 28, 2026	Vancouver (BC)	Salary $80,000.00 to $100,000.00 annually	2026-05-05 16:54:25.602281
article-49454426	software engineering manager	April 28, 2026	Calgary (AB)	Salary $150,000.00 annually	2026-05-05 16:54:25.602281
article-49445431	data engineer	April 26, 2026	Toronto (ON)	Salary $110,000.00 to $140,000.00 annually	2026-05-05 16:54:36.474953
article-49444937	software developer	April 26, 2026	Vancouver (BC)	Salary $150,000.00 to $160,000.00 annually	2026-05-05 16:54:36.474959
article-49446189	software developer	April 26, 2026	Vancouver (BC)	Salary $110,000.00 to $140,000.00 annually	2026-05-05 16:54:36.47496
article-49446072	software developer	April 26, 2026	Toronto (ON)	Salary $110,000.00 to $140,000.00 annually	2026-05-05 16:54:36.474961
article-49431320	software developer	April 26, 2026	Vancouver (BC)	Salary $110,000.00 to $135,000.00 annually	2026-05-05 16:54:36.474962
article-49445430	software developer	April 26, 2026	Vancouver (BC)	Salary $35.00 hourly	2026-05-05 16:54:36.474963
article-49445146	software developer	April 26, 2026	Toronto (ON)	Salary $150,000.00 to $180,000.00 annually	2026-05-05 16:54:36.474964
article-49445814	software developer	April 26, 2026	Vancouver (BC)	Salary $35.00 hourly	2026-05-05 16:54:36.474965
article-49446181	software developer	April 26, 2026	Toronto (ON)	Salary $60.00 to $80.00 hourly	2026-05-05 16:54:36.474966
article-49445990	quantitative analyst	April 26, 2026	Toronto (ON)	Salary $125.00 daily	2026-05-05 16:54:36.474967
article-49445633	data engineer	April 24, 2026	Toronto (ON)	Salary $86,000.00 annually	2026-05-05 16:54:44.221915
article-49446757	software developer	April 24, 2026	Toronto (ON)	Salary $100,000.00 to $120,000.00 annually	2026-05-05 16:54:44.22192
article-49445931	software developer	April 24, 2026	Montréal (QC)	Salary $65.52 to $80.00 hourly	2026-05-05 16:54:44.221921
article-49446681	software developer	April 24, 2026	Montréal (QC)	Salary $85,000.00 to $125,000.00 annually	2026-05-05 16:54:44.221922
article-49445803	software developer	April 24, 2026	Windsor (ON)	Salary $85,000.00 to $125,000.00 annually	2026-05-05 16:54:44.221923
article-49445904	software developer	April 24, 2026	Chatham (ON)	Salary $85,000.00 to $125,000.00 annually	2026-05-05 16:54:44.221924
article-49446006	software developer	April 24, 2026	Toronto (ON)	Salary $85,000.00 to $125,000.00 annually	2026-05-05 16:54:44.221925
article-49445150	data steward	April 24, 2026	Toronto (ON)	Salary $60.00 hourly	2026-05-05 16:54:44.221926
article-49431204	data engineer	April 23, 2026	Toronto (ON)	Salary $110,000.00 annually	2026-05-05 16:54:52.494416
article-49404521	Internet systems administrator	April 22, 2026	Vancouver (BC)	Salary $68,392.50 annually	2026-05-05 16:54:52.494423
article-49445527	software developer	April 21, 2026	Montréal (QC)	Salary $65.52 to $80.00 hourly	2026-05-05 16:55:01.82706
article-49445585	data architect	April 20, 2026	Montréal (QC)	Salary $90,000.00 to $120,000.00 hourly	2026-05-05 16:55:01.827065
article-49446067	cloud developer	April 20, 2026	Toronto (ON)	Salary $101.00 daily	2026-05-05 16:55:01.827066
article-49446192	data engineer	April 17, 2026	Toronto (ON)	Salary $80,000.00 to $120,000.00 annually	2026-05-05 16:55:12.078802
article-49446091	software developer	April 17, 2026	Ajax (ON)	Salary $80.00 hourly	2026-05-05 16:55:12.078808
article-49446088	software developer	April 17, 2026	Toronto (ON)	Salary $140,000.00 annually	2026-05-05 16:55:12.078809
article-49445421	software developer	April 17, 2026	Vancouver (BC)	Salary $90,000.00 to $130,000.00 annually	2026-05-05 16:55:12.07881
article-49445463	software developer	April 17, 2026	Toronto (ON)	Salary $100,000.00 to $220,000.00 annually	2026-05-05 16:55:12.078811
article-49454833	software developer	April 17, 2026	Vancouver (BC)	Salary $50,000.00 to $75,000.00 annually	2026-05-05 16:55:12.078812
article-49445046	software developer	April 17, 2026	Toronto (ON)	Salary $120,000.00 to $150,000.00 annually	2026-05-05 16:55:12.078813
article-49444947	software developer	April 17, 2026	Mississauga (ON)	Salary $80,000.00 to $100,000.00 annually	2026-05-05 16:55:12.078814
article-49445473	software developer	April 17, 2026	Mississauga (ON)	Salary $100,000.00 to $125,000.00 annually	2026-05-05 16:55:12.078814
article-49425581	software developer	April 17, 2026	Markham (ON)	Salary $64,201.00 annually	2026-05-05 16:55:12.078815
article-49454347	data engineer	April 16, 2026	Montréal (QC)	Salary $65.00 to $70.00 hourly	2026-05-05 16:55:20.969512
article-49454972	data engineer	April 16, 2026	Windsor (ON)	Salary $36.80 to $38.11 hourly	2026-05-05 16:55:20.969518
article-49445580	data engineer	April 16, 2026	Toronto (ON)	Salary $86.00 hourly	2026-05-05 16:55:20.969519
article-49445508	software developer	April 16, 2026	Markham (ON)	Salary $30.00 to $34.00 hourly	2026-05-05 16:55:20.96952
article-49377467	computer systems development manager	April 15, 2026	Vancouver (BC)	Salary $40.00 to $92.00 hourly	2026-05-05 16:55:20.969521
article-49454846	software developer	April 14, 2026	Toronto (ON)	Salary $102,000.00 annually	2026-05-05 16:55:20.969522
article-49446214	software developer	April 13, 2026	Ajax (ON)	Salary $120,000.00 annually	2026-05-05 16:55:30.784263
article-49446084	software developer	April 11, 2026	Vernon (BC)	Salary $72,950.00 to $84,820.00 annually	2026-05-05 16:55:30.78427
article-49307376	data analyst - informatics and systems	April 10, 2026	Oshawa (ON)	Salary $36.02 hourly	2026-05-05 16:55:30.784271
article-49307481	data analyst - informatics and systems	April 10, 2026	Markham (ON)	Salary $36.02 hourly	2026-05-05 16:55:30.784272
article-49363099	data communications specialist	April 10, 2026	Vancouver (BC)	Salary $30.00 to $67.00 hourly	2026-05-05 16:55:30.784273
article-49381023	cloud operations manager	April 10, 2026	Calgary (AB)	Salary $83,200.00 annually	2026-05-05 16:55:30.784274
article-49434556	office supervisor	April 09, 2026	Tweed (ON)	Salary $36.00 hourly	2026-05-05 16:55:39.376219
article-49447189	data engineer	April 09, 2026	Toronto (ON)	Salary $75,000.00 annually	2026-05-05 16:55:39.376225
article-49436668	supervisor, clinical receptionists	April 09, 2026	Toronto (ON)	Salary $38.00 hourly	2026-05-05 16:55:39.376226
article-49433569	clerical supervisor	April 08, 2026	Kamloops (BC)	Salary $35.59 hourly	2026-05-05 16:55:39.376227
article-49253419	senior software developer	April 08, 2026	Vancouver (BC)	Salary $100,000.00 to $176,612.31 annually	2026-05-05 16:55:39.376228
article-49428690	quantitative analyst	April 01, 2026	Surrey (BC)	Salary $150,000.00 annually	2026-05-05 16:55:49.750229
article-49440512	software development manager	March 31, 2026	Oshawa (ON)	Salary $65.00 to $75.00 hourly (to be negotiated)	2026-05-05 16:55:49.750234
article-49435447	office supervisor	March 26, 2026	Rocky View (AB)	Salary $36.00 hourly	2026-05-05 16:55:49.750235
article-49458750	database analyst	March 23, 2026	Richmond Hill (ON)	Salary $45.00 hourly	2026-05-05 16:55:49.750237
article-49410827	business data analyst	March 20, 2026	Edmonton (AB)	Salary $48.10 hourly	2026-05-05 16:55:49.750238
article-49456431	administrative supervisor	March 12, 2026	Markham (ON)	Salary $36.00 hourly	2026-05-05 16:55:49.750239
article-49447424	computer manager	March 02, 2026	Vancouver (BC)	Salary $200,000.00 to $253,650.00 annually (to be negotiated)	2026-05-05 16:55:59.773155
article-49408630	database analyst (DBA)	February 14, 2026	Brampton (ON)	Salary $45.00 hourly	2026-05-05 16:55:59.77316
article-49438497	software developer	February 12, 2026	Ottawa (ON)	Salary $51.00 hourly	2026-05-05 16:55:59.773161
article-49426570	records office supervisor	January 14, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-05-05 16:55:59.773162
article-49434796	data analyst - informatics and systems	January 14, 2026	Surrey (BC)	Salary $45.00 hourly	2026-05-05 16:56:09.090815
article-49426541	records office supervisor	January 13, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-05-05 16:56:09.09082
article-49465821	PC (personal computer) application developer	May 06, 2026	Laval (QC)	Salary $80,000.00 to $110,000.00 annually	2026-05-06 16:52:34.276027
article-49461551	administrator, database	May 05, 2026	Calgary (AB)	Salary $44.06 hourly	2026-05-06 16:52:34.276031
article-49461140	technical program manager - information technology (IT)	May 05, 2026	Ottawa (ON)	Salary $66.70 hourly	2026-05-06 16:52:34.276032
article-49459443	administrator, data	May 05, 2026	Montréal (QC)	Salary $30.27 to $53.64 hourly	2026-05-06 16:52:34.276032
article-49458825	software developer	May 05, 2026	Toronto (ON)	Salary $90,000.00 to $105,000.00 annually	2026-05-06 16:52:34.276033
article-49458407	data analyst - informatics and systems	May 05, 2026	Toronto (ON)	Salary $25.00 to $61.03 hourly	2026-05-06 16:52:45.124158
article-49458421	manager, computer systems development	May 05, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-05-06 16:52:45.124164
article-49958878	artificial intelligence (AI) consultant	July 25, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-07-26 22:30:49.444917
article-49958728	artificial intelligence (AI) consultant	July 25, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-07-26 22:30:49.444928
article-49957319	office supervisor	July 24, 2026	Rocky View (AB)	Salary $37.50 hourly	2026-07-26 22:30:49.444929
article-49955842	DBA (database analyst)	July 24, 2026	Lachine (QC)	Salary $36.00 hourly	2026-07-26 22:30:49.444929
article-49955003	software developer	July 24, 2026	Montréal (QC)	Salary $70.00 hourly	2026-07-26 22:30:49.44493
article-49955102	software developer	July 24, 2026	Toronto (ON)	Salary $88.54 hourly	2026-07-26 22:30:49.444931
article-49955178	software developer	July 24, 2026	Toronto (ON)	Salary $88.54 hourly	2026-07-26 22:30:49.444931
article-49955199	software developer	July 24, 2026	Toronto (ON)	Salary $88.54 hourly	2026-07-26 22:30:49.444933
article-49954870	information technology (IT) director	July 24, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-07-26 22:30:49.444934
article-49954020	software engineering manager	July 23, 2026	North Vancouver (BC)	Salary $64.00 hourly	2026-07-26 22:30:49.444934
article-49952041	developer, software	July 23, 2026	Montréal (QC)	Salary $75,000.00 annually	2026-07-26 22:30:49.444935
article-49954638	data analyst - informatics and systems	July 23, 2026	Saint-Laurent (QC)	Salary $64.71 hourly	2026-07-26 22:30:49.444935
article-49957346	software developer	July 23, 2026	Cambridge (ON)	Salary $60.52 hourly	2026-07-26 22:30:49.444936
article-49955191	data engineer	July 23, 2026	Kitchener (ON)	Salary $10,000.00 monthly	2026-07-26 22:30:49.444936
article-49955192	software developer	July 23, 2026	Montréal (QC)	Salary $65.52 to $80.00 hourly	2026-07-26 22:30:49.444936
article-49955043	software developer	July 23, 2026	Montréal (QC)	Salary $70.00 hourly	2026-07-26 22:30:49.444937
article-49955046	software developer	July 23, 2026	Markham (ON)	Salary $95,000.00 hourly	2026-07-26 22:30:49.444937
article-49954908	software developer	July 23, 2026	Cambridge (ON)	Salary $110,000.00 to $130,000.00 annually	2026-07-26 22:30:49.444938
article-49954916	software developer	July 23, 2026	Kitchener (ON)	Salary $110,000.00 to $130,000.00 annually	2026-07-26 22:30:49.444938
article-49955021	software developer	July 23, 2026	Kitchener (ON)	Salary $110,000.00 annually	2026-07-26 22:30:49.444938
article-49955080	software developer	July 23, 2026	Guelph (ON)	Salary $110,000.00 to $130,000.00 annually	2026-07-26 22:30:49.444939
article-49955105	software developer	July 23, 2026	Cambridge (ON)	Salary $110,000.00 annually	2026-07-26 22:30:49.444939
article-49955121	software developer	July 23, 2026	Guelph (ON)	Salary $110,000.00 annually	2026-07-26 22:30:49.44494
article-49955094	software developer	July 23, 2026	Mississauga (ON)	Salary $25.00 hourly	2026-07-26 22:30:49.44494
article-49955188	software developer	July 23, 2026	Toronto (ON)	Salary $200.00 to $300.00 hourly	2026-07-26 22:30:49.444941
article-49948940	big data analyst	July 22, 2026	Orillia (ON)	Salary $65,000.00 to $75,000.00 annually	2026-07-26 22:30:58.538657
article-49948922	software developer	July 22, 2026	Vaughan (ON)	Salary $60,000.00 to $70,000.00 annually	2026-07-26 22:30:58.538665
article-49948477	senior software developer	July 22, 2026	Toronto (ON)	Salary $110,000.00 to $130,000.00 annually (to be negotiated)	2026-07-26 22:30:58.538666
article-49948226	IT (information technology) development manager	July 22, 2026	Victoria (BC)	Salary $62.00 to $68.00 hourly (to be negotiated)	2026-07-26 22:30:58.538666
article-49947583	manager, IT (information technology) implementation	July 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-07-26 22:30:58.538667
article-49947462	information systems manager	July 22, 2026	Vancouver (BC)	Salary $64.00 to $99.00 hourly (to be negotiated)	2026-07-26 22:30:58.538667
article-49947287	cybersecurity manager	July 22, 2026	Thetford Mines (QC)	Salary $30.00 to $35.00 hourly	2026-07-26 22:30:58.538668
article-49946656	data engineer	July 22, 2026	Edmonton (AB)	Salary $75.00 hourly	2026-07-26 22:30:58.538668
article-49946428	artificial intelligence (AI) consultant	July 22, 2026	Edmonton (AB)	Salary $30.00 to $69.74 hourly	2026-07-26 22:30:58.538668
article-49946410	manager, computer applications	July 22, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-07-26 22:30:58.538669
article-49954895	data engineer	July 22, 2026	Toronto (ON)	Salary $100,000.00 to $130,000.00 annually	2026-07-26 22:30:58.538669
article-49955009	software developer	July 22, 2026	Markham (ON)	Salary $60,000.00 to $70,000.00 annually	2026-07-26 22:30:58.53867
article-49945239	software development programmer	July 21, 2026	Nepean (ON)	Salary $54.00 hourly	2026-07-26 22:30:58.53867
article-49944647	operations supervisor	July 21, 2026	Etobicoke (ON)	Salary $37.75 hourly	2026-07-26 22:30:58.53867
article-49944455	software developer	July 21, 2026	Toronto (ON)	Salary $80,500.00 to $100,600.00 annually (to be negotiated)	2026-07-26 22:30:58.538671
article-49944283	cloud operations manager	July 21, 2026	Edmonton (AB)	Salary $19.00 hourly	2026-07-26 22:30:58.538672
article-49944119	database manager	July 21, 2026	West Vancouver (BC)	Salary $88,500.00 to $93,500.00 annually (to be negotiated)	2026-07-26 22:30:58.538673
article-49944034	big data analyst	July 21, 2026	Concord (ON)	Salary $45,000.00 to $55,000.00 annually	2026-07-26 22:30:58.538673
article-49943575	data custodian	July 21, 2026	Concord (ON)	Salary $37.50 to $42.50 hourly (to be negotiated)	2026-07-26 22:30:58.538674
article-49942322	developer, software	July 21, 2026	Saint-Laurent (QC)	Salary $110,000.00 annually	2026-07-26 22:30:58.538674
article-49941926	senior software developer	July 21, 2026	Montréal (QC)	Salary $30.00 to $76.92 hourly	2026-07-26 22:30:58.538674
article-49955078	data modeler	July 21, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:30:58.538675
article-49946583	software developer	July 21, 2026	Vancouver (BC)	Salary $120,000.00 to $180,000.00 annually	2026-07-26 22:30:58.538675
article-49946731	software developer	July 21, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:30:58.538675
article-49946462	software developer	July 21, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:06.511231
article-49946669	DBA (database analyst)	July 21, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-07-26 22:31:06.511235
article-49947168	operations supervisor	July 21, 2026	Guelph (ON)	Salary $22.50 hourly	2026-07-26 22:31:06.511236
article-49947050	operations supervisor	July 21, 2026	High River (AB)	Salary $24.55 hourly	2026-07-26 22:31:06.511237
article-49938479	software developer	July 20, 2026	Toronto (ON)	Salary $102,700.00 to $137,000.00 annually	2026-07-26 22:31:06.511237
article-49938415	software developer	July 20, 2026	Toronto (ON)	Salary $146,200.00 to $195,000.00 annually	2026-07-26 22:31:06.511237
article-49938576	software developer	July 20, 2026	Toronto (ON)	Salary $67,200.00 to $89,600.00 annually	2026-07-26 22:31:06.511238
article-49937938	administrator, database	July 20, 2026	London (ON)	Salary $86,000.00 to $95,000.00 annually	2026-07-26 22:31:06.511238
article-49937923	office supervisor	July 20, 2026	Brampton (ON)	Salary $36.50 hourly	2026-07-26 22:31:06.511239
article-49937540	data engineer	July 20, 2026	London (ON)	Salary $70,790.55 annually	2026-07-26 22:31:06.511239
article-49936682	developer, software	July 20, 2026	Blainville (QC)	Salary $55,000.00 annually	2026-07-26 22:31:06.511239
article-49946570	software developer	July 20, 2026	Hamilton (ON)	Salary $65,000.00 to $85,000.00 annually	2026-07-26 22:31:06.51124
article-49946518	software developer	July 20, 2026	Toronto (ON)	Salary $105,000.00 to $125,000.00 annually	2026-07-26 22:31:06.51124
article-49946454	software developer	July 20, 2026	Montréal (QC)	Salary $65.52 to $80.00 hourly	2026-07-26 22:31:06.51124
article-49933043	director of technology management	July 20, 2026	Toronto (ON)	Salary $40.00 to $92.00 hourly	2026-07-26 22:31:06.511241
article-49943988	cloud operations manager	July 20, 2026	Nanaimo (BC)	Salary $30.00 to $35.00 hourly	2026-07-26 22:31:06.511241
article-49946728	operations supervisor	July 20, 2026	Mississauga (ON)	Salary $50,000.00 annually	2026-07-26 22:31:06.511242
article-49929592	software developer	July 18, 2026	Guelph (ON)	Salary $90,000.00 annually	2026-07-26 22:31:06.511242
article-49927085	data scientist	July 18, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-07-26 22:31:06.511242
article-49927083	data scientist	July 18, 2026	Edmonton (AB)	Salary $30.00 to $69.74 hourly	2026-07-26 22:31:06.511243
article-49927105	information technology (IT) implementation manager	July 18, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-07-26 22:31:06.511243
article-49935812	software developer	July 18, 2026	Toronto (ON)	Salary $87.38 hourly	2026-07-26 22:31:06.511243
article-49925275	operations supervisor	July 17, 2026	Toronto (ON)	Salary $81,600.00 to $108,900.00 annually	2026-07-26 22:31:06.511244
article-49925227	computer manager	July 17, 2026	Montréal (QC)	Salary $140,000.00 to $170,000.00 annually	2026-07-26 22:31:06.511249
article-49923485	DBA (database administrator)	July 17, 2026	London (ON)	Salary $86,000.00 to $95,000.00 annually (to be negotiated)	2026-07-26 22:31:06.51125
article-49922430	operations supervisor	July 17, 2026	Thunder Bay (ON)	Salary $26.42 hourly	2026-07-26 22:31:15.657219
article-49922282	administrative supervisor	July 17, 2026	Vancouver (BC)	Salary $40.00 hourly	2026-07-26 22:31:15.657223
article-49922281	operations supervisor	July 17, 2026	Brantford (ON)	Salary $37.00 hourly	2026-07-26 22:31:15.657224
article-49921993	big data analyst	July 17, 2026	Montréal (QC)	Salary $70,000.00 annually	2026-07-26 22:31:15.657224
article-49921954	operations supervisor	July 17, 2026	Mississauga (ON)	Salary $37.00 hourly	2026-07-26 22:31:15.657225
article-49935807	data engineer	July 17, 2026	Oshawa (ON)	Salary $80.00 to $92.58 hourly	2026-07-26 22:31:15.657225
article-49935858	data engineer	July 17, 2026	Oshawa (ON)	Salary $80.00 hourly	2026-07-26 22:31:15.657225
article-49935585	data analytics manager	July 17, 2026	Ottawa (ON)	Salary $106,000.00 to $118,000.00 annually	2026-07-26 22:31:15.657226
article-49935786	software developer	July 17, 2026	Toronto (ON)	Salary $30.00 hourly	2026-07-26 22:31:15.657226
article-49935877	software developer	July 17, 2026	Toronto (ON)	Salary $30.00 to $37.00 hourly	2026-07-26 22:31:15.657226
article-49935838	software developer	July 17, 2026	Waterloo (ON)	Salary $110,000.00 annually	2026-07-26 22:31:15.657227
article-49935707	software developer	July 17, 2026	Waterloo (ON)	Salary $110,000.00 to $130,000.00 annually	2026-07-26 22:31:15.657227
article-49935501	software developer	July 17, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:15.657227
article-49935664	software developer	July 17, 2026	Calgary (AB)	Salary $85.00 to $100.00 annually	2026-07-26 22:31:15.657228
article-49935685	software developer	July 17, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:15.657228
article-49935614	software developer	July 17, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:15.657228
article-49935872	database developer	July 17, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:15.657229
article-49918668	operations supervisor	July 16, 2026	Nelson (BC)	Salary $96,397.34 annually	2026-07-26 22:31:15.657229
article-49918299	data management specialist	July 16, 2026	Markham (ON)	Salary $45.00 hourly	2026-07-26 22:31:15.657229
article-49916755	data quality analyst	July 16, 2026	Val-d'Or (QC)	Salary $33.79 hourly	2026-07-26 22:31:15.65723
article-49915565	lead data scientist	July 16, 2026	Toronto (ON)	Salary $50.00 to $55.00 hourly	2026-07-26 22:31:15.65723
article-49915549	office supervisor	July 16, 2026	Coquitlam (BC)	Salary $37.32 hourly	2026-07-26 22:31:15.65723
article-49915530	software developer	July 16, 2026	Montréal (QC)	Salary $37.50 hourly	2026-07-26 22:31:15.657231
article-49914361	data analytics specialist	July 16, 2026	Laval (QC)	Salary $60,000.00 annually	2026-07-26 22:31:15.657231
article-49913444	software development manager	July 16, 2026	Richmond Hill (ON)	Salary $90,000.00 to $120,000.00 annually	2026-07-26 22:31:15.657231
article-49913322	information technology (IT) implementation manager	July 16, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-07-26 22:31:23.909233
article-49913489	artificial intelligence (AI) consultant	July 16, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-07-26 22:31:23.909237
article-49913469	artificial intelligence (AI) consultant	July 16, 2026	Edmonton (AB)	Salary $30.00 to $69.74 hourly	2026-07-26 22:31:23.909238
article-49913447	artificial intelligence (AI) consultant	July 16, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-07-26 22:31:23.909238
article-49935706	data modeler	July 16, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:23.909239
article-49909602	senior software developer	July 15, 2026	Calgary (AB)	Salary $110,000.00 to $150,000.00 annually	2026-07-26 22:31:23.909239
article-49909516	office supervisor	July 15, 2026	Burnaby (BC)	Salary $38.40 hourly	2026-07-26 22:31:23.90924
article-49909261	data engineer	July 15, 2026	Mississauga (ON)	Salary $51.00 hourly	2026-07-26 22:31:23.90924
article-49909258	software developer	July 15, 2026	Mississauga (ON)	Salary $50.00 hourly	2026-07-26 22:31:23.90924
article-49908675	cybersecurity manager	July 15, 2026	Saint-Canut (QC)	Salary $38,500.00 annually	2026-07-26 22:31:23.909241
article-49907034	software engineering manager	July 15, 2026	Toronto (ON)	Salary $125,000.00 to $165,000.00 annually	2026-07-26 22:31:23.909241
article-49906446	manager, IT (information technology) implementation	July 15, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-07-26 22:31:23.909241
article-49905266	developer, software	July 15, 2026	Sherbrooke (QC)	Salary $114,500.00 to $167,500.00 annually	2026-07-26 22:31:23.909242
article-49905190	developer, software	July 15, 2026	Sherbrooke (QC)	Salary $166,000.00 to $205,000.00 annually	2026-07-26 22:31:23.909242
article-49951073	software developer	July 15, 2026	Ottawa (ON)	Salary $78,936.00 annually	2026-07-26 22:31:23.909242
article-49950680	data analytics manager	July 15, 2026	Montréal (QC)	Salary $100.00 hourly	2026-07-26 22:31:23.909243
article-49935966	software developer	July 15, 2026	Victoria (BC)	Salary $140,000.00 annually	2026-07-26 22:31:23.909243
article-49946075	operations supervisor	July 15, 2026	Arthur (ON)	Salary $70,000.00 annually	2026-07-26 22:31:23.909243
article-49946070	operations supervisor	July 15, 2026	Arthur (ON)	Salary $20,000.00 annually	2026-07-26 22:31:23.909244
article-49902616	big data analyst	July 14, 2026	Burnaby (BC)	Salary $60,000.00 to $70,000.00 annually	2026-07-26 22:31:23.909244
article-49899456	software development manager	July 14, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-07-26 22:31:23.909244
article-49899491	manager, IT (information technology) implementation	July 14, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-07-26 22:31:23.909245
article-49899302	data scientist	July 14, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-07-26 22:31:23.909245
article-49946204	data architect	July 14, 2026	Toronto (ON)	Salary $80.00 hourly	2026-07-26 22:31:23.909245
article-49946279	software developer	July 14, 2026	Mississauga (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:23.909246
article-49945510	software developer	July 14, 2026	Calgary (AB)	Salary $200.00 daily	2026-07-26 22:31:33.407203
article-49945933	software developer	July 14, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:33.407206
article-49945606	software developer	July 14, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:33.407207
article-49945747	software developer	July 14, 2026	Calgary (AB)	Salary $10,000.00 monthly	2026-07-26 22:31:33.407207
article-49946066	software developer	July 14, 2026	Toronto (ON)	Salary $50.00 hourly	2026-07-26 22:31:33.407208
article-49946260	software developer	July 14, 2026	Victoria (BC)	Salary $200.00 daily	2026-07-26 22:31:33.407208
article-49946301	software developer	July 14, 2026	Toronto (ON)	Salary $160,000.00 annually	2026-07-26 22:31:33.407209
article-49896540	cloud developer	July 13, 2026	Mississauga (ON)	Salary $100,000.00 to $110,000.00 annually	2026-07-26 22:31:33.407209
article-49895829	software development programmer	July 13, 2026	Vancouver (BC)	Salary $55.00 hourly	2026-07-26 22:31:33.407209
article-49895097	DBA (database administrator)	July 13, 2026	Montréal (QC)	Salary $65,000.00 annually	2026-07-26 22:31:33.40721
article-49894711	data analyst - informatics and systems	July 13, 2026	Montréal (QC)	Salary $65,000.00 annually	2026-07-26 22:31:33.40721
article-49894386	software developer	July 13, 2026	Oakville (ON)	Salary $105,000.00 to $115,000.00 annually (to be negotiated)	2026-07-26 22:31:33.40721
article-49894148	clerical supervisor	July 13, 2026	Sorel (QC)	Salary $35.00 hourly	2026-07-26 22:31:33.407211
article-49893595	clerical supervisor	July 13, 2026	Trois-Rivières (QC)	Salary $35.00 hourly	2026-07-26 22:31:33.407211
article-49890712	computer projects manager	July 13, 2026	Sherbrooke (QC)	Salary $102,500.00 to $120,000.00 annually	2026-07-26 22:31:33.407211
article-49945803	data scientist	July 13, 2026	Ottawa (ON)	Salary $80,000.00 annually	2026-07-26 22:31:33.407212
article-49889322	clerical supervisor	July 12, 2026	Trois-Rivières (QC)	Salary $35.00 hourly	2026-07-26 22:31:33.407212
article-49883377	Internet systems administrator	July 11, 2026	Sherbrooke (QC)	Salary $167,000.00 to $190,000.00 annually	2026-07-26 22:31:33.407212
article-49935602	data engineer	July 11, 2026	Toronto (ON)	Salary $70,000.00 to $80,000.00 annually	2026-07-26 22:31:33.407213
article-49951451	data engineer	July 11, 2026	Toronto (ON)	Salary $100,000.00 to $125,000.00 annually	2026-07-26 22:31:33.407213
article-49950491	data engineer	July 11, 2026	Montréal (QC)	Salary $120,000.00 annually	2026-07-26 22:31:33.407213
article-49945908	software developer	July 11, 2026	Vancouver (BC)	Salary $83,000.00 to $135,000.00 annually	2026-07-26 22:31:33.407214
article-49934520	software developer	July 11, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:31:33.407214
article-49934175	software developer	July 11, 2026	Toronto (ON)	Salary $88.54 hourly	2026-07-26 22:31:33.407214
article-49951265	software developer	July 11, 2026	Montréal (QC)	Salary $65,000.00 to $115,000.00 annually	2026-07-26 22:31:33.407215
article-49950506	software developer	July 11, 2026	Vancouver (BC)	Salary $60,000.00 to $100,000.00 annually	2026-07-26 22:31:42.103493
article-49933817	software developer	July 11, 2026	Vancouver (BC)	Salary $70,000.00 to $90,000.00 annually	2026-07-26 22:31:42.103498
article-49950368	software developer	July 11, 2026	Toronto (ON)	Salary $100,000.00 to $150,000.00 annually	2026-07-26 22:31:42.103499
article-49935715	software developer	July 11, 2026	Mississauga (ON)	Salary $86,129.00 annually	2026-07-26 22:31:42.103499
article-49945508	software developer	July 11, 2026	Ottawa (ON)	Salary $84,698.00 to $112,931.00 annually	2026-07-26 22:31:42.103499
article-49951093	software developer	July 11, 2026	Laval (QC)	Salary $60,000.00 annually	2026-07-26 22:31:42.1035
article-49951448	data scientist	July 11, 2026	Montréal (QC)	Salary $120,000.00 annually	2026-07-26 22:31:42.1035
article-49950295	software developer	July 11, 2026	Montréal (QC)	Salary $120,000.00 annually	2026-07-26 22:31:42.103501
article-49960105	office supervisor	July 11, 2026	Montréal (QC)	Salary $36.00 hourly	2026-07-26 22:31:42.103501
article-49881653	manager, IT (information technology) integration	July 10, 2026	Surrey (BC)	Salary $67.31 hourly	2026-07-26 22:31:42.103501
article-49881388	data entry supervisor	July 10, 2026	London (ON)	Salary $36.00 to $38.00 hourly	2026-07-26 22:31:42.103502
article-49881020	Data Engineer	July 10, 2026	Calgary (AB)	Salary $103,798.00 annually	2026-07-26 22:31:42.103502
article-49880326	systems manager - computer systems	July 10, 2026	Hamilton (ON)	Salary $37.00 to $38.00 hourly (to be negotiated)	2026-07-26 22:31:42.103502
article-49878767	senior software developer	July 10, 2026	London (ON)	Salary $65,000.00 annually	2026-07-26 22:31:42.103503
article-49878717	data entry supervisor	July 10, 2026	London (ON)	Salary $36.92 hourly	2026-07-26 22:31:42.103503
article-49878693	data analyst - informatics and systems	July 10, 2026	Mississauga (ON)	Salary $45.00 hourly	2026-07-26 22:31:42.103503
article-49876934	data scientist	July 10, 2026	Montréal (QC)	Salary $30.00 to $69.74 hourly	2026-07-26 22:31:42.103505
article-49935833	data engineer	July 10, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:42.103506
article-49934336	data architect	July 10, 2026	Toronto (ON)	Salary $95.30 hourly	2026-07-26 22:31:42.103506
article-49951263	software developer	July 10, 2026	Montréal (QC)	Salary $40.00 to $44.00 hourly	2026-07-26 22:31:42.103506
article-49951299	software developer	July 10, 2026	Montréal (QC)	Salary $40.00 hourly	2026-07-26 22:31:42.103507
article-49951509	software developer	July 10, 2026	Laval (QC)	Salary $40.00 hourly	2026-07-26 22:31:42.103507
article-49950913	software developer	July 10, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:42.103507
article-49950747	software developer	July 10, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:42.103508
article-49875004	software developer	July 09, 2026	Vancouver (BC)	Salary $96,000.00 to $100,000.00 annually (to be negotiated)	2026-07-26 22:31:42.103508
article-49874494	big data analyst	July 09, 2026	Toronto (ON)	Salary $55,000.00 annually	2026-07-26 22:31:50.698899
article-49874310	software programmer	July 09, 2026	Vancouver (BC)	Salary $70,000.00 to $90,000.00 annually (to be negotiated)	2026-07-26 22:31:50.698904
article-49872350	computer manager	July 09, 2026	Saint-Hyacinthe (QC)	Salary $129,027.00 to $151,797.00 annually	2026-07-26 22:31:50.698904
article-49950511	data engineer	July 09, 2026	Toronto (ON)	Salary $110,000.00 annually	2026-07-26 22:31:50.698905
article-49951158	data engineer	July 09, 2026	Vancouver (BC)	Salary $110,000.00 annually	2026-07-26 22:31:50.698905
article-49951515	data engineer	July 09, 2026	Toronto (ON)	Salary $86.00 hourly	2026-07-26 22:31:50.698906
article-49950540	software developer	July 09, 2026	Ottawa (ON)	Salary $80,000.00 annually	2026-07-26 22:31:50.698906
article-49934533	software developer	July 09, 2026	Toronto (ON)	Salary $88.52 hourly	2026-07-26 22:31:50.698906
article-49933846	software developer	July 09, 2026	Toronto (ON)	Salary $88.54 hourly	2026-07-26 22:31:50.698907
article-49950724	senior software developer	July 09, 2026	Ottawa (ON)	Salary $100,000.00 annually	2026-07-26 22:31:50.698907
article-49950513	software developer	July 09, 2026	Toronto (ON)	Salary $110,000.00 annually	2026-07-26 22:31:50.698907
article-49951436	software developer	July 09, 2026	Victoria (BC)	Salary $100,000.00 annually	2026-07-26 22:31:50.698908
article-49950708	software developer	July 09, 2026	Mississauga (ON)	Salary $60,000.00 annually	2026-07-26 22:31:50.698908
article-49951129	software developer	July 09, 2026	Montréal (QC)	Salary $77.93 to $97.00 hourly	2026-07-26 22:31:50.698908
article-49948565	data analytics manager	July 09, 2026	Vancouver (BC)	Salary $75,000.00 to $85,000.00 annually	2026-07-26 22:31:50.698909
article-49945949	data scientist	July 09, 2026	Toronto (ON)	Salary $96,000.00 annually	2026-07-26 22:31:50.698909
article-49951269	software developer	July 09, 2026	Toronto (ON)	Salary $130,000.00 annually	2026-07-26 22:31:50.698909
article-49951090	software developer	July 09, 2026	Toronto (ON)	Salary $97,000.00 annually	2026-07-26 22:31:50.69891
article-49945885	data scientist	July 09, 2026	Toronto (ON)	Salary $96,000.00 annually	2026-07-26 22:31:50.69891
article-49951365	software developer	July 09, 2026	Surrey (BC)	Salary $89,910.00 annually	2026-07-26 22:31:50.69891
article-49951154	software developer	July 09, 2026	Surrey (BC)	Salary $119,000.00 annually	2026-07-26 22:31:50.698911
article-49950779	software developer	July 09, 2026	Vancouver (BC)	Salary $75,000.00 annually	2026-07-26 22:31:50.698911
article-49946156	software developer	July 09, 2026	Toronto (ON)	Salary $70,000.00 annually	2026-07-26 22:31:50.698911
article-49950105	software developer	July 09, 2026	Montréal (QC)	Salary $77.93 to $97.00 hourly	2026-07-26 22:31:50.698912
article-49951033	software developer	July 09, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:31:50.698914
article-49950199	software developer	July 09, 2026	Montréal (QC)	Salary $77.93 to $97.00 hourly	2026-07-26 22:31:58.646595
article-49951234	software developer	July 09, 2026	Montréal (QC)	Salary $38.46 hourly	2026-07-26 22:31:58.646599
article-49935947	software developer	July 09, 2026	Toronto (ON)	Salary $110,000.00 annually	2026-07-26 22:31:58.646599
article-49950609	software developer	July 09, 2026	Toronto (ON)	Salary $90,000.00 annually	2026-07-26 22:31:58.6466
article-49951298	data scientist	July 09, 2026	Toronto (ON)	Salary $120,000.00 annually	2026-07-26 22:31:58.6466
article-49949992	data scientist	July 09, 2026	Edmonton (AB)	Salary $30.00 to $69.74 hourly	2026-07-26 22:31:58.646601
article-49867209	office supervisor	July 08, 2026	Mississauga (ON)	Salary $37.00 hourly	2026-07-26 22:31:58.646601
article-49865621	office supervisor	July 08, 2026	West Vancouver (BC)	Salary $38.40 hourly	2026-07-26 22:31:58.646601
article-49864200	operations supervisor	July 08, 2026	Calgary (AB)	Salary $21.30 hourly	2026-07-26 22:31:58.646602
article-49863634	data analyst - informatics and systems	July 08, 2026	Longueuil (QC)	Salary $80,000.00 to $85,000.00 annually	2026-07-26 22:31:58.646602
article-49951521	software developer	July 08, 2026	Montréal (QC)	Salary $10,000.00 monthly	2026-07-26 22:31:58.646602
article-49860536	office supervisor	July 07, 2026	Montréal (QC)	Salary $36.00 hourly	2026-07-26 22:31:58.646603
article-49859521	software developer	July 07, 2026	Waterloo (ON)	Salary $48.35 hourly	2026-07-26 22:31:58.646603
article-49858710	operations supervisor	July 07, 2026	Kitchener (ON)	Salary $37.00 hourly	2026-07-26 22:31:58.646603
article-49857381	cloud developer	July 07, 2026	Mississauga (ON)	Salary $120,000.00 to $130,000.00 annually	2026-07-26 22:31:58.646604
article-49857632	information technology (IT) development manager	July 07, 2026	North York (ON)	Salary $100,000.00	2026-07-26 22:31:58.646604
article-49856388	data analyst - informatics and systems	July 07, 2026	Stoneham-et-Tewkesbury (QC)	Salary $40.00 hourly	2026-07-26 22:31:58.646604
article-49934546	software developer	June 29, 2026	Toronto (ON)	Salary $88.54 hourly	2026-07-26 22:32:22.660729
article-49855476	information technology (IT) director	July 07, 2026	Montréal (QC)	Salary $43.75 to $103.37 hourly	2026-07-26 22:31:58.646605
article-49935264	software developer	July 07, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:31:58.646605
article-49933848	software developer	July 07, 2026	Toronto (ON)	Salary $88.54 hourly	2026-07-26 22:31:58.646605
article-49853307	information technology (IT) implementation manager	July 06, 2026	Victoria (BC)	Salary $90,900.08 annually	2026-07-26 22:31:58.646606
article-49853259	director of software engineering	July 06, 2026	Edmonton (AB)	Salary $150,000.00 to $180,000.00 annually (to be negotiated)	2026-07-26 22:31:58.646606
article-49852041	information technology (IT) implementation manager	July 06, 2026	Delta (BC)	Salary $43.21 hourly	2026-07-26 22:31:58.646606
article-49851680	artificial intelligence (AI) consultant	July 06, 2026	Québec (QC)	Salary $60,000.00 to $800,000.00 annually	2026-07-26 22:31:58.646607
article-49851309	artificial intelligence (AI) consultant	July 06, 2026	Sherbrooke (QC)	Salary $64,173.00 to $104,013.00 annually	2026-07-26 22:31:58.646607
article-49851145	information technology (IT) service delivery manager	July 06, 2026	Markham (ON)	Salary $68.00 to $70.00 hourly (to be negotiated)	2026-07-26 22:32:06.37184
article-49933342	software developer	July 06, 2026	Toronto (ON)	Salary $86.90 hourly	2026-07-26 22:32:06.371844
article-49934748	software developer	July 06, 2026	Toronto (ON)	Salary $88.54 hourly	2026-07-26 22:32:06.371845
article-49934261	software developer	July 06, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:32:06.371845
article-49950484	software developer	July 06, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:32:06.371845
article-49950834	software developer	July 06, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:32:06.371846
article-49950349	software developer	July 06, 2026	Vancouver (BC)	Salary $103,000.00 annually	2026-07-26 22:32:06.371846
article-49950681	software developer	July 06, 2026	St. Marys (ON)	Salary $55,000.00 to $95,000.00 annually	2026-07-26 22:32:06.371846
article-49934665	artificial intelligence designer	July 06, 2026	Toronto (ON)	Salary $126.50 daily	2026-07-26 22:32:06.371847
article-49950449	DBA (database analyst)	July 06, 2026	Toronto (ON)	Salary $10,000.00 monthly	2026-07-26 22:32:06.371847
article-49945777	data engineer	July 04, 2026	Toronto (ON)	Salary $120,000.00 annually	2026-07-26 22:32:06.371848
article-49951300	data scientist	July 04, 2026	Toronto (ON)	Salary $120,000.00 annually	2026-07-26 22:32:06.371848
article-49837194	software development manager	July 03, 2026	Vancouver (BC)	Salary $67.31 hourly	2026-07-26 22:32:06.371848
article-49836345	records office supervisor	July 03, 2026	Edmonton (AB)	Salary $37.50 hourly	2026-07-26 22:32:06.371849
article-49835378	database analyst	July 03, 2026	Markham (ON)	Salary $44.47 hourly	2026-07-26 22:32:06.371849
article-49834193	technical delivery manager - information technology (IT)	July 03, 2026	Toronto (ON)	Salary $200,000.00 to $210,000.00 annually (to be negotiated)	2026-07-26 22:32:06.371849
article-49834224	data engineer	July 03, 2026	Toronto (ON)	Salary $140,000.00 to $190,000.00 annually	2026-07-26 22:32:06.37185
article-49832267	computer projects manager	July 03, 2026	Victoriaville (QC)	Salary $23.00 to $29.00 hourly	2026-07-26 22:32:06.37185
article-49951272	software developer	July 03, 2026	Montréal (QC)	Salary $10,000.00 monthly	2026-07-26 22:32:06.37185
article-49828120	software developer	July 02, 2026	Mississauga (ON)	Salary $53.00 hourly	2026-07-26 22:32:06.371851
article-49827857	computer programs manager	July 02, 2026	Montréal (QC)	Salary $45,000.00 to $50,000.00 annually	2026-07-26 22:32:06.371851
article-49827015	operations supervisor	July 02, 2026	Coaldale (AB)	Salary $81,600.00 to $108,900.00 annually	2026-07-26 22:32:06.371851
article-49826051	developer, software	July 02, 2026	Sherbrooke (QC)	Salary $143,500.00 to $166,500.00 annually	2026-07-26 22:32:06.371852
article-49826050	software development manager	July 02, 2026	Sherbrooke (QC)	Salary $200,000.00 to $245,000.00 annually	2026-07-26 22:32:06.371852
article-49826048	developer, software	July 02, 2026	Sherbrooke (QC)	Salary $143,500.00 to $166,500.00 annually	2026-07-26 22:32:06.371852
article-49825866	developer, software	July 02, 2026	Sherbrooke (QC)	Salary $167,000.00 to $195,000.00 annually	2026-07-26 22:32:15.345488
article-49935939	software developer	July 02, 2026	Edmonton (AB)	Salary $80.00 to $90.00 hourly	2026-07-26 22:32:15.345493
article-49912027	artificial intelligence (AI) consultant	July 02, 2026	Calgary (AB)	Salary $30.00 to $69.74 hourly	2026-07-26 22:32:15.345494
article-49911995	manager, IT (information technology) implementation	July 02, 2026	Toronto (ON)	Salary $43.75 to $103.37 hourly	2026-07-26 22:32:15.345494
article-49911778	manager, IT (information technology) implementation	July 02, 2026	Toronto (ON)	Salary $75,000.00 to $120,000.00 annually	2026-07-26 22:32:15.345495
article-49824962	developer, software	July 01, 2026	Brossard (QC)	Salary $60,000.00 annually	2026-07-26 22:32:15.345495
article-49953321	data engineer	July 01, 2026	Mississauga (ON)	Salary $60.00 to $70.00 hourly	2026-07-26 22:32:15.345495
article-49826833	operations supervisor	July 01, 2026	Ingersoll (ON)	Salary $26.50 hourly	2026-07-26 22:32:15.345496
article-49826884	operations supervisor	July 01, 2026	London (ON)	Salary $26.50 hourly	2026-07-26 22:32:15.345496
article-49827026	operations supervisor	July 01, 2026	London (ON)	Salary $26.50 hourly	2026-07-26 22:32:15.345496
article-49819457	software developer	June 30, 2026	Fergus (ON)	Salary $49.00 hourly	2026-07-26 22:32:15.345497
article-49816658	director of technology management	June 30, 2026	Sherbrooke (QC)	Salary $110,414.00 to $134,206.00 annually	2026-07-26 22:32:15.345497
article-49935747	software developer	June 30, 2026	Mirabel (QC)	Salary $105.00 to $125,000.00 daily	2026-07-26 22:32:15.345498
article-49814039	administrative supervisor	June 29, 2026	Vancouver (BC)	Salary $40.00 hourly	2026-07-26 22:32:15.345498
article-49813385	computerized information systems manager	June 29, 2026	Richmond (BC)	Salary $72.12 hourly	2026-07-26 22:32:15.345498
article-49813311	records office supervisor	June 29, 2026	Calgary (AB)	Salary $37.50 hourly	2026-07-26 22:32:15.345499
article-49811017	data engineer	June 29, 2026	Richmond Hill (ON)	Salary $95,000.00 to $120,000.00 annually	2026-07-26 22:32:15.345499
article-49809587	computer game developer	June 29, 2026	Montréal (QC)	Salary $46.10 hourly	2026-07-26 22:32:15.345499
article-49934474	data engineer	June 29, 2026	Toronto (ON)	Salary $80.00 hourly	2026-07-26 22:32:15.3455
article-49934981	data engineer	June 29, 2026	Toronto (ON)	Salary $85.35 hourly	2026-07-26 22:32:15.3455
article-49935093	software developer	June 29, 2026	Toronto (ON)	Salary $88.52 hourly	2026-07-26 22:32:15.3455
article-49934561	software developer	June 29, 2026	Toronto (ON)	Salary $88.52 hourly	2026-07-26 22:32:15.345501
article-49934498	software developer	June 29, 2026	Toronto (ON)	Salary $74.34 hourly	2026-07-26 22:32:15.345501
article-49935244	software developer	June 29, 2026	Toronto (ON)	Salary $88.54 hourly	2026-07-26 22:32:15.345501
article-49934925	software developer	June 29, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:32:15.345502
article-49934756	software developer	June 29, 2026	Toronto (ON)	Salary $86.90 hourly	2026-07-26 22:32:22.660733
article-49933935	software developer	June 29, 2026	Toronto (ON)	Salary $86.90 hourly	2026-07-26 22:32:22.660734
article-49933811	software developer	June 29, 2026	Toronto (ON)	Salary $87.38 hourly	2026-07-26 22:32:22.660734
article-49934357	software developer	June 29, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:32:22.660735
article-49933687	software developer	June 29, 2026	Toronto (ON)	Salary $87.38 hourly	2026-07-26 22:32:22.660735
article-49934313	software developer	June 29, 2026	Toronto (ON)	Salary $87.38 hourly	2026-07-26 22:32:22.660735
article-49934386	software developer	June 29, 2026	Toronto (ON)	Salary $87.38 hourly	2026-07-26 22:32:22.660736
article-49935029	software developer	June 29, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:32:22.660736
article-49934426	software developer	June 29, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:32:22.660736
article-49934225	software developer	June 29, 2026	Toronto (ON)	Salary $88.63 hourly	2026-07-26 22:32:22.660737
article-49934421	software developer	June 29, 2026	Toronto (ON)	Salary $73.50 hourly	2026-07-26 22:32:22.660737
article-49934161	software developer	June 29, 2026	Toronto (ON)	Salary $73.86 hourly	2026-07-26 22:32:22.660737
article-49934079	software developer	June 29, 2026	Toronto (ON)	Salary $88.54 hourly	2026-07-26 22:32:22.660738
article-49934959	software developer	June 29, 2026	Toronto (ON)	Salary $59.09 hourly	2026-07-26 22:32:22.660738
article-49934212	software developer	June 29, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:32:22.660738
article-49935066	software developer	June 29, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:32:22.660739
article-49934681	software developer	June 29, 2026	Toronto (ON)	Salary $82.07 hourly	2026-07-26 22:32:22.660739
article-49933911	software developer	June 29, 2026	Toronto (ON)	Salary $73.86 hourly	2026-07-26 22:32:22.660739
article-49933921	software developer	June 29, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:32:22.66074
article-49934860	software developer	June 29, 2026	Toronto (ON)	Salary $90.18 hourly	2026-07-26 22:32:22.66074
article-49950847	data scientist	June 29, 2026	Toronto (ON)	Salary $100,000.00 to $115,000.00 hourly	2026-07-26 22:32:22.66074
article-49951444	data scientist	June 29, 2026	Toronto (ON)	Salary $100,000.00 annually	2026-07-26 22:32:22.660741
article-49934935	software developer	June 29, 2026	Toronto (ON)	Salary $80.00 hourly	2026-07-26 22:32:22.660741
article-49934625	software developer	June 29, 2026	Toronto (ON)	Salary $80.00 hourly	2026-07-26 22:32:22.660741
article-49934403	software developer	June 29, 2026	Toronto (ON)	Salary $85.00 hourly	2026-07-26 22:32:30.090556
article-49935187	software developer	June 29, 2026	Toronto (ON)	Salary $39.49 hourly	2026-07-26 22:32:30.090561
article-49798926	office supervisor	June 26, 2026	Richmond (BC)	Salary $38.00 hourly	2026-07-26 22:32:30.090562
article-49789183	office clerks supervisor	June 25, 2026	Montréal (QC)	Salary $38.00 hourly	2026-07-26 22:32:30.090562
article-49786048	operations supervisor	June 24, 2026	Brampton (ON)	Salary $38.00 hourly	2026-07-26 22:32:30.090563
article-49774401	artificial intelligence programmer	June 23, 2026	Montréal (QC)	Salary $90,000.00 annually	2026-07-26 22:32:30.090563
article-49770987	software developer	June 22, 2026	Edmonton (AB)	Salary $40.87 hourly	2026-07-26 22:32:30.090563
article-49768822	business data analyst	June 22, 2026	North York (ON)	Salary $80,000.00 annually	2026-07-26 22:32:30.090564
article-49751271	data management specialist	June 19, 2026	Laval (QC)	Salary $28.75 to $36.00 hourly (to be negotiated)	2026-07-26 22:32:30.090564
article-49746009	office supervisor	June 18, 2026	Brampton (ON)	Salary $37.00 hourly	2026-07-26 22:32:30.090565
article-49745041	operations supervisor	June 18, 2026	Scarborough (ON)	Salary $37.00 hourly	2026-07-26 22:32:30.090565
article-49737372	software developer	June 17, 2026	Edmonton (AB)	Salary $41.00 hourly	2026-07-26 22:32:30.090565
article-49736034	data analyst - informatics and systems	June 17, 2026	Vancouver, BC	Salary $62,500.00 annually	2026-07-26 22:32:30.090566
article-49728035	business systems manager	June 16, 2026	Brampton (ON)	Salary $70.00 hourly	2026-07-26 22:32:30.090566
article-49722257	senior software developer	June 15, 2026	Langley (BC)	Salary $52.50 hourly	2026-07-26 22:32:30.090566
article-49703954	mobile applications developer	June 12, 2026	Montréal (QC)	Salary $89,840.00 to $145,990.00 annually (to be negotiated)	2026-07-26 22:32:30.090567
article-49698717	operations supervisor	June 11, 2026	Mission (BC)	Salary $36.60 hourly	2026-07-26 22:32:30.090567
article-49682303	supervisor, clinical receptionists	June 09, 2026	Toronto (ON)	Salary $38.00 hourly	2026-07-26 22:32:30.090567
article-49654259	administrative supervisor	June 04, 2026	Markham (ON)	Salary $36.00 hourly	2026-07-26 22:32:30.090568
article-49653450	clerical supervisor	June 04, 2026	Kamloops (BC)	Salary $35.59 hourly	2026-07-26 22:32:30.090568
article-49651062	office services supervisor	June 04, 2026	Saint-Laurent (QC)	Salary $66,600.00 annually	2026-07-26 22:32:30.090568
article-49641503	clerical supervisor	June 03, 2026	Saint-Léonard (QC)	Salary $36.06 hourly	2026-07-26 22:32:30.090569
article-49637471	business data analyst	June 02, 2026	North York (ON)	Salary $82,810.00 annually	2026-07-26 22:32:30.090569
article-49625017	software developer	June 01, 2026	Montréal (QC)	Salary $46.15 hourly	2026-07-26 22:32:30.090569
article-49605027	administrative supervisor	May 28, 2026	Edmonton (AB)	Salary $38.00 hourly	2026-07-26 22:32:30.09057
article-49603935	administrative supervisor	May 28, 2026	Montréal (QC)	Salary $35.88 hourly	2026-07-26 22:32:37.636356
article-49597789	software developer	May 27, 2026	Markham (ON)	Salary $47.60 hourly	2026-07-26 22:32:37.636361
article-49589823	administrative supervisor	May 26, 2026	Surrey (BC)	Salary $36.00 hourly	2026-07-26 22:32:37.636361
article-49588804	operations supervisor	May 26, 2026	North Bay (ON)	Salary $31.50 hourly	2026-07-26 22:32:37.636362
article-49584538	information technology (IT) service delivery manager	May 25, 2026	Mississauga (ON)	Salary $175,000.00 annually	2026-07-26 22:32:37.636362
article-49581094	database analyst	May 25, 2026	Aurora (ON)	Salary $45.00 to $47.00 hourly (to be negotiated)	2026-07-26 22:32:37.636363
article-49552190	operations supervisor	May 20, 2026	Mississauga (ON)	Salary $36.00 hourly	2026-07-26 22:32:37.636363
article-49553114	business data analyst	May 20, 2026	Edmonton (AB)	Salary $48.10 hourly	2026-07-26 22:32:37.636363
article-49549988	developer, software	May 20, 2026	Montréal (QC)	Salary $100,000.00 to $120,000.00 annually (to be negotiated)	2026-07-26 22:32:37.636364
article-49542885	database analyst	May 19, 2026	Edmonton (AB)	Salary $45.80 hourly	2026-07-26 22:32:37.636364
article-49541388	data analyst - informatics and systems	May 19, 2026	Various locations	Salary $135,000.00 to $140,000.00 annually (to be negotiated)	2026-07-26 22:32:37.636364
article-49523531	application development director - information technology (IT)	May 15, 2026	Calgary (AB)	Salary $250,000.00 annually	2026-07-26 22:32:37.636365
article-49522430	data analyst - informatics and systems	May 15, 2026	Surrey (BC)	Salary $45.00 hourly	2026-07-26 22:32:37.636365
article-49522399	software developer	May 15, 2026	Richmond Hill (ON)	Salary $48.08 hourly	2026-07-26 22:32:37.636365
article-49521672	records office supervisor	May 15, 2026	Edmonton (AB)	Salary $36.00 hourly	2026-07-26 22:32:37.636366
article-49513262	data administrator	May 14, 2026	Edmonton (AB)	Salary $46.00 hourly	2026-07-26 22:32:37.636366
article-49507421	operations supervisor	May 13, 2026	Vancouver (BC)	Salary $36.75 hourly	2026-07-26 22:32:37.636366
article-49505982	office supervisor	May 13, 2026	Abbotsford (BC)	Salary $38.00 hourly	2026-07-26 22:32:37.636367
article-49503496	database analyst (DBA)	May 13, 2026	Mississauga (ON)	Salary $100,000.00 annually	2026-07-26 22:32:37.636367
article-49499475	office supervisor	May 12, 2026	Etobicoke (ON)	Salary $36.25 to $40.00 hourly (to be negotiated)	2026-07-26 22:32:37.636367
article-49498988	software developer	May 12, 2026	Thunder Bay, ON	Salary $80,000.00 to $105,000.00 annually (to be negotiated)	2026-07-26 22:32:37.636368
article-49496632	developer, software	May 12, 2026	Various locations	Salary $114,500.00 to $167,500.00 annually (to be negotiated)	2026-07-26 22:32:37.636368
article-49493571	developer, software	May 12, 2026	Montréal (QC)	Salary $70,000.00 to $80,000.00 annually (to be negotiated)	2026-07-26 22:32:37.636368
article-49494807	operations supervisor	May 11, 2026	Pitt Meadows (BC)	Salary $47,000.00 to $50,000.00 annually (to be negotiated)	2026-07-26 22:32:37.636369
article-49493822	data administrator	May 11, 2026	Mississauga (ON)	Salary $45.00 hourly	2026-07-26 22:32:37.636369
article-49494186	mobile applications developer	May 09, 2026	Mississauga (ON)	Salary $48.50 hourly	2026-07-26 22:32:45.487703
article-49478029	data administrator	May 07, 2026	Edmonton (AB)	Salary $46.00 hourly	2026-07-26 22:32:45.487709
article-49477713	data engineer	May 07, 2026	Mississauga (ON)	Salary $77,000.00 annually	2026-07-26 22:32:45.487709
article-49587209	software developer	May 04, 2026	Etobicoke (ON)	Salary $48.08 to $50.00 hourly (to be negotiated)	2026-07-26 22:32:45.48771
article-49405461	software developer	April 27, 2026	Toronto (ON)	Salary $50.00 hourly	2026-07-26 22:32:45.48771
\.


--
-- Data for Name: jobs_cleaned; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jobs_cleaned (id, title, date_posted, city, province, min_salary, max_salary, salary_period, cleaned_at) FROM stdin;
article-48249602	manager, computer applications	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762626
article-48249507	director of technology management	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762628
article-48250276	data mining analyst	2026-01-17	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762629
article-48250187	data analyst - informatics and systems	2026-01-17	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.76263
article-48250475	data processing and systems analysis manager	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762631
article-48250538	senior software developer	2026-01-17	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762633
article-48250925	data mining analyst	2026-01-17	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762633
article-48250988	director of technology management	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762634
article-48251472	data mining analyst	2026-01-17	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762635
article-48251104	software developer	2026-01-17	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762636
article-48251235	director, data processing	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762637
article-48251454	software developer	2026-01-17	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762638
article-48251930	data scientist	2026-01-17	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762639
article-48251962	manager, computer applications	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76264
article-48252051	data scientist	2026-01-17	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.76264
article-48252036	information technology (IT) director	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762641
article-48241352	artificial intelligence (AI) consultant	2026-01-17	Montréal	QC	29.74	64.9	hourly	2026-02-03 00:34:21.762642
article-48236358	manager, computer systems	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762643
article-48235939	artificial intelligence (AI) consultant	2026-01-17	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762644
article-48236435	software developer	2026-01-17	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762644
article-48236508	manager, computer applications	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762645
article-48237111	manager, computer applications	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762646
article-48237451	manager, computerized information systems	2026-01-17	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762647
article-48233407	manager, computer applications	2026-01-16	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762648
article-48234853	artificial intelligence (AI) consultant	2026-01-16	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762648
article-48230695	information technology (IT) implementation manager	2026-01-16	Kelowna	BC	119700	119700	annually	2026-02-03 00:34:21.76265
article-48231761	director of technology management	2026-01-16	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.76265
article-48228202	software developer	2026-01-16	Oakville	ON	48.5	48.5	hourly	2026-02-03 00:34:21.762651
article-48224086	office supervisor	2026-01-16	Nanaimo	BC	36.6	36.6	hourly	2026-02-03 00:34:21.762652
article-48223743	data processing specialist	2026-01-16	Toronto	ON	43.96	43.96	hourly	2026-02-03 00:34:21.762653
article-48222726	software developer	2026-01-16	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762654
article-48222852	director of technology management	2026-01-16	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762654
article-48222629	artificial intelligence (AI) consultant	2026-01-16	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762655
article-48222836	manager, computer applications	2026-01-16	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762656
article-48221279	manager, computer applications	2026-01-16	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762657
article-48221166	cloud developer	2026-01-16	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762658
article-48222490	manager, computer applications	2026-01-16	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762659
article-48221447	manager, computer applications	2026-01-16	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762659
article-48207827	Internet systems administrator	2026-01-16	Kuujjuaq	QC	52482	89256	annually	2026-02-03 00:34:21.76266
article-48207757	operations supervisor	2026-01-16	Saguenay	QC	39	43	hourly	2026-02-03 00:34:21.762661
article-48206314	data scientist	2026-01-16	Vancouver	BC	26	78	hourly	2026-02-03 00:34:21.762661
article-48206174	manager, data processing and systems analysis	2026-01-16	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762662
article-48206780	data scientist	2026-01-16	Vancouver	BC	26	78	hourly	2026-02-03 00:34:21.762663
article-48207433	data scientist	2026-01-16	East York	ON	26	78	hourly	2026-02-03 00:34:21.762664
article-48206378	senior software developer	2026-01-16	East York	ON	25	63	hourly	2026-02-03 00:34:21.762665
article-48207536	senior software developer	2026-01-16	North York	ON	25	63	hourly	2026-02-03 00:34:21.762666
article-48205991	senior software developer	2026-01-16	Mississauga	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762666
article-48205312	manager, IT (information technology) implementation	2026-01-16	Vancouver	BC	40	92	hourly	2026-02-03 00:34:21.762667
article-48205875	manager, IT (information technology) implementation	2026-01-16	East York	ON	40	92	hourly	2026-02-03 00:34:21.762668
article-48157973	software developer	2026-01-14	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762669
article-48157886	data mining analyst	2026-01-14	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762669
article-48156560	administrator, data	2026-01-14	Montréal	QC	30.27	53.64	hourly	2026-02-03 00:34:21.76267
article-48158341	manager, computer systems	2026-01-14	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762671
article-48157172	manager, IT (information technology) implementation	2026-01-14	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762672
article-48157447	manager, computer systems	2026-01-14	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762673
article-47826617	database analyst	2026-01-04	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762674
article-48153295	manager, IT (information technology) implementation	2026-01-14	London	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762675
article-48141161	data mining analyst	2026-01-14	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762676
article-48142205	data warehouse analyst	2026-01-14	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762676
article-48175340	data analyst - informatics and systems	2026-01-14	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762677
article-48205764	manager, data processing and systems analysis	2026-01-14	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.762678
article-48141113	artificial intelligence (AI) consultant	2026-01-14	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762679
article-48142529	data scientist	2026-01-13	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.76268
article-48141553	mobile applications developer	2026-01-13	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762681
article-48138460	software developer	2026-01-13	Oshawa	ON	48.2	48.2	hourly	2026-02-03 00:34:21.762681
article-48136122	data engineer	2026-01-13	Toronto	ON	100000	140000	annually	2026-02-03 00:34:21.762683
article-48134416	records office supervisor	2026-01-13	Edmonton	AB	36	36	hourly	2026-02-03 00:34:21.762683
article-48134031	records office supervisor	2026-01-13	Edmonton	AB	36	36	hourly	2026-02-03 00:34:21.762684
article-48129412	office supervisor	2026-01-13	Mississauga	ON	36.1	36.1	hourly	2026-02-03 00:34:21.762685
article-48127981	data engineer	2026-01-13	Richmond Hill	ON	88035	97817	annually	2026-02-03 00:34:21.762688
article-48128031	cloud developer	2026-01-13	Concord	ON	25	25	hourly	2026-02-03 00:34:21.762689
article-48127895	cloud developer	2026-01-13	Toronto	ON	48.51	94.97	hourly	2026-02-03 00:34:21.76269
article-48126553	data scientist	2026-01-13	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762692
article-48126404	data mining analyst	2026-01-13	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762693
article-48125351	artificial intelligence (AI) consultant	2026-01-13	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762694
article-48051703	data scientist	2026-01-11	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762695
article-48050833	data scientist	2026-01-11	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762696
article-48117243	software developer	2026-01-11	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762697
article-48116571	software developer	2026-01-11	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762698
article-48116626	software developer	2026-01-11	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762698
article-48116741	software developer	2026-01-11	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762699
article-48116818	software developer	2026-01-11	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.7627
article-48117046	software developer	2026-01-11	Mississauga	ON	10000	10000	monthly	2026-02-03 00:34:21.762701
article-48117106	software developer	2026-01-11	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762702
article-48117138	software developer	2026-01-11	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762702
article-48117517	software developer	2026-01-11	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762703
article-48117460	software developer	2026-01-11	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762704
article-48118094	software developer	2026-01-11	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762705
article-48051278	manager, IT (information technology) implementation	2026-01-11	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762706
article-48050090	manager, computer applications	2026-01-10	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762706
article-48029575	manager, computer applications	2026-01-10	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.762707
article-48029272	director of technology management	2026-01-10	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.76271
article-48029865	manager, IT (information technology) implementation	2026-01-10	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.76271
article-48019443	data scientist	2026-01-10	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762712
article-48019739	senior software developer	2026-01-10	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762713
article-48020475	senior software developer	2026-01-10	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762713
article-48020537	manager, computer applications	2026-01-10	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762714
article-48207347	director of technology management	2026-01-10	Mississauga	ON	40	92	hourly	2026-02-03 00:34:21.762715
article-48018380	senior software developer	2026-01-09	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762716
article-48012845	data administrator	2026-01-09	Fort McMurray	AB	23	27	hourly	2026-02-03 00:34:21.762717
article-47871279	developer, software	2026-01-05	Gatineau	QC	54210	54210	annually	2026-02-03 00:34:21.762717
article-47871286	developer, software	2026-01-05	Lévis	QC	54210	54210	annually	2026-02-03 00:34:21.762718
article-47871288	developer, software	2026-01-05	Sept-Îles	QC	54210	54210	annually	2026-02-03 00:34:21.762719
article-47867659	operations supervisor	2026-01-05	Terrebonne	QC	80000	110000	annually	2026-02-03 00:34:21.76272
article-47855572	software developer	2026-01-05	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.76272
article-47856784	data scientist	2026-01-05	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762721
article-48116333	big data analyst	2026-01-05	Toronto	ON	70000	85000	annually	2026-02-03 00:34:21.762722
article-48117835	software developer	2026-01-05	Montréal	QC	70	100	hourly	2026-02-03 00:34:21.762723
article-47856664	software developer	2026-01-05	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762723
article-47926448	software developer	2026-01-05	Dundas	ON	64000	75000	annually	2026-02-03 00:34:21.762725
article-47926414	data engineer	2026-01-05	Toronto	ON	55	56	hourly	2026-02-03 00:34:21.762725
article-47839985	data mining analyst	2026-01-04	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762726
article-47824391	senior software developer	2026-01-04	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762727
article-47855635	software developer	2026-01-04	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762728
article-47855496	software quality assurance director	2026-01-04	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762728
article-47810415	manager, computer applications	2026-01-03	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762729
article-47805921	director of technology management	2026-01-03	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.76273
article-47803717	software developer	2026-01-03	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762731
article-47801589	software developer	2026-01-03	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762732
article-47796039	software developer	2026-01-03	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762732
article-47784856	operations supervisor	2026-01-02	Kitchener	ON	50000	65000	annually	2026-02-03 00:34:21.762733
article-47784517	database analyst	2026-01-02	Mississauga	ON	44	46	hourly	2026-02-03 00:34:21.762734
article-47778131	data scientist	2026-01-02	Toronto	ON	124500	160800	annually	2026-02-03 00:34:21.762735
article-47775202	software developer	2026-01-02	Toronto	ON	145000	195000	annually	2026-02-03 00:34:21.762735
article-47703410	software developer	2025-12-29	Etobicoke	ON	48.07	48.07	hourly	2026-02-03 00:34:21.762736
article-47685446	data scientist	2025-12-29	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762737
article-47739597	software developer	2025-12-29	Calgary	AB	60000	80000	annually	2026-02-03 00:34:21.762738
article-47686237	data mining analyst	2025-12-29	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762739
article-47686336	data analyst - informatics and systems	2025-12-29	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762739
article-47684745	artificial intelligence (AI) analyst	2025-12-29	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.76274
article-47684637	software developer	2025-12-28	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762741
article-47682868	data analyst - informatics and systems	2025-12-28	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762742
article-47686048	data mining analyst	2025-12-28	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762743
article-47652547	architect, database	2025-12-28	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762743
article-47652028	artificial intelligence (AI) consultant	2025-12-28	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762744
article-47686010	mobile applications developer	2025-12-28	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762745
article-47651564	software developer	2025-12-27	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762746
article-47602211	software developer	2025-12-26	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762747
article-47600857	data mining analyst	2025-12-26	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762747
article-47596047	data mining analyst	2025-12-26	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762748
article-47651763	manager, computer applications	2025-12-26	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.762749
article-47576624	manager, data processing and systems analysis	2025-12-25	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76275
article-47576066	manager, IT (information technology) implementation	2025-12-25	Mississauga	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76275
article-47573845	manager, computer applications	2025-12-25	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762751
article-47616571	artificial intelligence (AI) consultant	2025-12-25	Toronto	ON	26	78	hourly	2026-02-03 00:34:21.762752
article-47549811	manager, computer applications	2025-12-25	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762753
article-47615945	information technology (IT) director	2025-12-25	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.762754
article-47539559	database analyst	2025-12-24	Scarborough	ON	45	45	hourly	2026-02-03 00:34:21.762756
article-47532786	office supervisor	2025-12-24	Nisku	AB	36.5	36.5	hourly	2026-02-03 00:34:21.762757
article-47529894	technical program manager - information technology (IT)	2025-12-24	Nepean	ON	165000	185000	annually	2026-02-03 00:34:21.762758
article-47651980	director of technology management	2025-12-24	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.762759
article-47525366	office supervisor	2025-12-23	Québec	QC	29	31	hourly	2026-02-03 00:34:21.76276
article-47523612	data analyst - informatics and systems	2025-12-23	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762761
article-47521386	data entry supervisor	2025-12-23	Québec	QC	20	20	hourly	2026-02-03 00:34:21.762762
article-47520533	big data analyst	2025-12-23	Dorval	QC	45000	45000	annually	2026-02-03 00:34:21.762763
article-47519069	database analyst	2025-12-23	Pickering	ON	44.5	44.5	hourly	2026-02-03 00:34:21.762763
article-48117534	software developer	2025-12-23	Toronto	ON	110000	130000	annually	2026-02-03 00:34:21.762764
article-48117162	software developer	2025-12-23	Calgary	AB	80	100	annually	2026-02-03 00:34:21.762765
article-48116596	software developer	2025-12-23	Squamish	BC	95000	125000	annually	2026-02-03 00:34:21.762766
article-48118048	data scientist	2025-12-23	Vancouver	BC	70000	90000	annually	2026-02-03 00:34:21.762767
article-48117869	software developer	2025-12-23	Boisbriand	QC	85000	95000	annually	2026-02-03 00:34:21.762767
article-47498643	software developer	2025-12-22	Vancouver	BC	88000	100000	annually	2026-02-03 00:34:21.762768
article-47496194	office supervisor	2025-12-22	Rocky View	AB	36	36	hourly	2026-02-03 00:34:21.762769
article-47496155	senior software developer	2025-12-22	Kanata	ON	140000	170000	annually	2026-02-03 00:34:21.76277
article-47496156	application programmer	2025-12-22	Kanata	ON	120000	150000	annually	2026-02-03 00:34:21.76277
article-47495078	software developer	2025-12-22	Kanata	ON	120000	150000	annually	2026-02-03 00:34:21.762771
article-47454247	data analyst - informatics and systems	2025-12-21	Burlington	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762772
article-47445171	computer projects manager	2025-12-21	Saint-Georges	QC	35	45	hourly	2026-02-03 00:34:21.762773
article-47476724	manager, computer applications	2025-12-21	Gloucester	ON	40	92	hourly	2026-02-03 00:34:21.762773
article-47476832	manager, IT (information technology) implementation	2025-12-21	Gloucester	ON	40	92	hourly	2026-02-03 00:34:21.762774
article-47415860	manager, computer applications	2025-12-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762775
article-47413869	software developer	2025-12-20	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762776
article-47413691	senior software developer	2025-12-20	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762777
article-47415351	data scientist	2025-12-20	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762777
article-48117830	software developer	2025-12-20	Toronto	ON	90000	90000	annually	2026-02-03 00:34:21.762778
article-48116891	software developer	2025-12-20	Toronto	ON	90000	105000	annually	2026-02-03 00:34:21.762779
article-47414223	software developer	2025-12-20	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.76278
article-47415281	software developer	2025-12-20	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762781
article-47415167	software developer	2025-12-20	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762781
article-47415172	data warehouse analyst	2025-12-20	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762782
article-47413941	manager, computer applications	2025-12-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762783
article-47414254	manager, IT (information technology) implementation	2025-12-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762784
article-47414408	manager, computer applications	2025-12-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762785
article-47414426	manager, computer applications	2025-12-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762785
article-47413806	director of technology management	2025-12-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762786
article-47413834	Java programmer	2025-12-20	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762787
article-47414107	manager, computer applications	2025-12-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762788
article-47414855	Java programmer	2025-12-20	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762788
article-47825768	manager, computer applications	2025-12-20	Montréal	QC	42.41	96.63	hourly	2026-02-03 00:34:21.762789
article-47413731	software developer	2025-12-19	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.76279
article-47414363	data mining analyst	2025-12-19	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762791
article-47475461	data scientist	2025-12-19	Toronto	ON	26	78	hourly	2026-02-03 00:34:21.762791
article-47476907	data scientist	2025-12-19	Toronto	ON	26	78	hourly	2026-02-03 00:34:21.762792
article-47370454	business data analyst	2025-12-18	Toronto	ON	83560	97486	annually	2026-02-03 00:34:21.762793
article-47369066	information technology (IT) director	2025-12-18	Burnaby	BC	180523	180523	annually	2026-02-03 00:34:21.762794
article-47368688	data scientist	2025-12-18	Brampton	ON	48.38	48.38	hourly	2026-02-03 00:34:21.762794
article-48000155	software developer	2025-12-18	Fergus	ON	49	49	hourly	2026-02-03 00:34:21.762795
article-47367951	data entry supervisor	2025-12-18	Brampton	ON	36	36	hourly	2026-02-03 00:34:21.762796
article-47972582	operations supervisor	2025-12-17	Pitt Meadows	BC	47000	50000	annually	2026-02-03 00:34:21.762797
article-47340343	office supervisor	2025-12-17	Surrey	BC	31	31	hourly	2026-02-03 00:34:21.762797
article-48123537	data administrator	2025-12-15	Milton	ON	47	47	hourly	2026-02-03 00:34:21.762798
article-47778561	office supervisor	2025-12-11	Montréal	QC	35	35	hourly	2026-02-03 00:34:21.762799
article-47181544	manager, computer systems	2025-12-11	Abbotsford	BC	60.44	60.44	hourly	2026-02-03 00:34:21.7628
article-47171743	office supervisor	2025-12-10	Brampton	ON	34.5	37	hourly	2026-02-03 00:34:21.7628
article-47975798	data scientist	2025-12-10	Toronto	ON	11250	11250	monthly	2026-02-03 00:34:21.762801
article-47769637	business process manager	2025-12-09	Nepean	ON	160000	180000	annually	2026-02-03 00:34:21.762802
article-47110475	analyst, database	2025-12-08	Toronto	ON	92497.6	92497.6	annually	2026-02-03 00:34:21.762803
article-48129484	software developer	2025-12-08	Miller Lake	ON	50	50	hourly	2026-02-03 00:34:21.762804
article-48041094	data architect	2025-12-05	Brampton	ON	44	48	hourly	2026-02-03 00:34:21.762804
article-46936086	database manager	2025-12-03	Oshawa	ON	45	45	hourly	2026-02-03 00:34:21.762805
article-46901386	software developer	2025-12-01	Edmonton	AB	41.86	41.86	hourly	2026-02-03 00:34:21.762806
article-48192084	database analyst	2025-12-01	Nepean	ON	150000	170000	annually	2026-02-03 00:34:21.762807
article-46760488	office supervisor	2025-11-27	Brampton	ON	36.5	36.5	hourly	2026-02-03 00:34:21.762808
article-46676426	data engineer	2025-11-25	Mississauga	ON	51	51	hourly	2026-02-03 00:34:21.762808
article-46676396	software developer	2025-11-25	Mississauga	ON	50	50	hourly	2026-02-03 00:34:21.762809
article-46634864	administrative supervisor	2025-11-24	Mississauga	ON	37	37	hourly	2026-02-03 00:34:21.76281
article-46525150	database analyst	2025-11-21	Markham	ON	42.75	46.75	hourly	2026-02-03 00:34:21.762811
article-46519699	interactive media developer	2025-11-21	Picton	ON	48.08	48.08	hourly	2026-02-03 00:34:21.762811
article-48189575	office supervisor	2025-11-21	Vancouver	BC	38	38	hourly	2026-02-03 00:34:21.762812
article-47933645	operations supervisor	2025-11-21	Québec	QC	55000	57000	annually	2026-02-03 00:34:21.762813
article-48222058	software developer	2025-11-18	Hamilton	ON	43.6	43.6	hourly	2026-02-03 00:34:21.762814
article-46371163	information systems manager	2025-11-18	Pickering	ON	68	68	hourly	2026-02-03 00:34:21.762814
article-46335283	software developer	2025-11-17	Etobicoke	ON	48.08	50	hourly	2026-02-03 00:34:21.762815
article-48158513	office supervisor	2025-11-14	Richmond	BC	38	38	hourly	2026-02-03 00:34:21.762816
article-46237330	Java programmer	2025-11-14	Toronto	ON	67.31	67.31	hourly	2026-02-03 00:34:21.762817
article-48225032	operations supervisor	2025-11-11	Brampton	ON	36.1	36.1	hourly	2026-02-03 00:34:21.76282
article-46119720	software developer	2025-11-10	North Vancouver	BC	48.08	48.08	hourly	2026-02-03 00:34:21.76282
article-46043814	administrative supervisor	2025-11-07	Burnaby	BC	36.6	36.6	hourly	2026-02-03 00:34:21.762821
article-46014233	data scientist	2025-11-06	Burnaby	BC	43.5	43.5	hourly	2026-02-03 00:34:21.762822
article-46003962	data entry supervisor	2025-11-06	Concord	ON	36	36	hourly	2026-02-03 00:34:21.762823
article-45992116	office supervisor	2025-11-06	Brampton	ON	36	40	hourly	2026-02-03 00:34:21.762824
article-45912246	office supervisor	2025-11-04	Mississauga	ON	30	36	hourly	2026-02-03 00:34:21.762825
article-45907765	computerized information systems manager	2025-11-04	Richmond	BC	72.12	72.12	hourly	2026-02-03 00:34:21.762825
article-45873272	developer, software	2025-11-03	Toronto	ON	85000	98000	annually	2026-02-03 00:34:21.762826
article-47776831	developer, software	2025-11-03	Toronto	ON	85000	98000	annually	2026-02-03 00:34:21.762827
article-48086042	software developer	2025-10-31	Victoria	BC	51.28	51.28	hourly	2026-02-03 00:34:21.762828
article-45740802	computer application programmer	2025-10-30	Toronto	ON	48.08	48.08	hourly	2026-02-03 00:34:21.762828
article-46855628	operations supervisor	2025-10-30	Laval	QC	35	35	hourly	2026-02-03 00:34:21.762829
article-45715889	business systems manager	2025-10-29	Thunder Bay	ON	68	68	hourly	2026-02-03 00:34:21.76283
article-45706388	information technology (IT) implementation manager	2025-10-29	Toronto	ON	5415.2	5415.2	weekly	2026-02-03 00:34:21.762831
article-45603384	office clerks supervisor	2025-10-25	Edmonton	AB	36	36	hourly	2026-02-03 00:34:21.762831
article-45544659	operations supervisor	2025-10-23	Acton	ON	36	36	hourly	2026-02-03 00:34:21.762832
article-45540693	systems manager - computer systems	2025-10-23	Etobicoke	ON	4080	4080	weekly	2026-02-03 00:34:21.762833
article-45486627	office supervisor	2025-10-21	Calgary	AB	36	36	hourly	2026-02-03 00:34:21.762834
article-45486423	business data analyst	2025-10-21	Toronto	ON	19	19	hourly	2026-02-03 00:34:21.762835
article-47700309	developer, software	2025-10-21	North York	ON	87000	87000	annually	2026-02-03 00:34:21.762836
article-45466853	administrative supervisor	2025-10-20	Edmonton	AB	36	36	hourly	2026-02-03 00:34:21.762836
article-47272020	operations supervisor	2025-10-18	Various locations	\N	36	36	hourly	2026-02-03 00:34:21.762837
article-48134778	database analyst (DBA)	2025-10-17	Brampton	ON	45	45	hourly	2026-02-03 00:34:21.762838
article-45421175	data entry clerks supervisor	2025-10-17	Scarborough	ON	36	36	hourly	2026-02-03 00:34:21.762839
article-45272486	data administrator	2025-10-08	Richmond	BC	45	48	hourly	2026-02-03 00:34:21.76284
article-45176768	software developer	2025-10-03	Mississauga	ON	53	53	hourly	2026-02-03 00:34:21.762841
article-45159460	software developer	2025-10-01	Calgary	AB	41	41	hourly	2026-02-03 00:34:21.762841
article-48094183	data engineer	2025-09-26	Toronto	ON	49	49	hourly	2026-02-03 00:34:21.762842
article-45055636	administrative supervisor	2025-09-19	Toronto	ON	75000	75000	annually	2026-02-03 00:34:21.762843
article-48331695	software developer	2026-01-20	Vancouver	BC	21.3	21.3	hourly	2026-02-03 00:34:21.762844
article-48331705	data architect	2026-01-20	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762844
article-48331760	software developer	2026-01-20	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762845
article-48331811	software developer	2026-01-20	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762846
article-48328057	manager, computer systems	2026-01-20	Mississauga	ON	40	92	hourly	2026-02-03 00:34:21.762847
article-48325355	data scientist	2026-01-20	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762848
article-48326159	database architect	2026-01-20	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762848
article-48321911	information technology (IT) director	2026-01-19	Burnaby	BC	180523	180523	annually	2026-02-03 00:34:21.762849
article-48321991	operations supervisor	2026-01-19	Toronto	ON	21	25	hourly	2026-02-03 00:34:21.76285
article-48313141	manager, IT (information technology) implementation	2026-01-19	Montréal	QC	42.41	96.63	hourly	2026-02-03 00:34:21.762851
article-48309464	database analyst	2026-01-19	Mississauga	ON	45.5	45.5	hourly	2026-02-03 00:34:21.762851
article-48308326	developer, software	2026-01-19	Brossard	QC	60000	60000	annually	2026-02-03 00:34:21.762852
article-48307766	operations supervisor	2026-01-19	Cantley	QC	20	28	hourly	2026-02-03 00:34:21.762853
article-48308462	data processing director	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762854
article-48308747	manager, computer systems	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762855
article-48305590	Java programmer	2026-01-19	Montréal	QC	75000	100000	annually	2026-02-03 00:34:21.762855
article-48299394	manager, computer applications	2026-01-19	Montréal	QC	42.41	96.63	hourly	2026-02-03 00:34:21.762856
article-48293081	manager, data processing and systems analysis	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762857
article-48293165	senior software developer	2026-01-19	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762858
article-48293210	software developer	2026-01-19	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762858
article-48293334	Java programmer	2026-01-19	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762859
article-48293369	software developer	2026-01-19	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.76286
article-48293463	manager, computer applications	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762861
article-48293606	manager, computer applications	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762862
article-48293724	software developer	2026-01-19	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762862
article-48294247	software developer	2026-01-19	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762863
article-48331585	software developer	2026-01-19	Fort McMurray	AB	29	29	hourly	2026-02-03 00:34:21.762864
article-48331629	software developer	2026-01-19	Fort McMurray	AB	29	29	hourly	2026-02-03 00:34:21.762865
article-48331699	software developer	2026-01-19	Fort McMurray	AB	29	29	hourly	2026-02-03 00:34:21.762865
article-48331842	software developer	2026-01-19	Fort McMurray	AB	29	29	hourly	2026-02-03 00:34:21.762866
article-48331854	software developer	2026-01-19	Fort McMurray	AB	29	29	hourly	2026-02-03 00:34:21.762867
article-48331887	software developer	2026-01-19	Fort McMurray	AB	29	29	hourly	2026-02-03 00:34:21.762868
article-48294724	data warehouse analyst	2026-01-19	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762869
article-48295054	software quality assurance director	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76287
article-48295428	manager, computer applications	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762871
article-48293759	manager, IT (information technology) implementation	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762871
article-48293919	manager, computer applications	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762872
article-48293939	manager, computer applications	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762873
article-48294185	manager, computer applications	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762874
article-48294225	manager, computer applications	2026-01-19	Stratford	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762874
article-48294389	Java programmer	2026-01-19	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762875
article-48295052	manager, computer applications	2026-01-19	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762876
article-48294570	senior software developer	2026-01-18	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762877
article-48293437	manager, computer applications	2026-01-18	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762878
article-48293302	director of technology management	2026-01-18	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762878
article-48290663	software developer	2026-01-18	London	ON	45000	62000	annually	2026-02-03 00:34:21.762879
article-48280040	senior software developer	2026-01-18	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.76288
article-48279973	data scientist	2026-01-18	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762881
article-48281181	director of software engineering	2026-01-18	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762884
article-48280739	director of technology management	2026-01-18	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762884
article-48279824	artificial intelligence (AI) consultant	2026-01-18	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762885
article-48280304	artificial intelligence (AI) consultant	2026-01-18	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762886
article-48280063	manager, computer applications	2026-01-18	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762887
article-48267958	operations supervisor	2026-01-18	Thorsby	AB	25	35	hourly	2026-02-03 00:34:21.762888
article-48294900	data scientist	2026-01-18	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762888
article-48265721	data mining analyst	2026-01-18	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762889
article-48294830	software developer	2026-01-18	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.76289
article-48331630	software developer	2026-01-18	Calgary	AB	19	19	hourly	2026-02-03 00:34:21.762891
article-48331840	software developer	2026-01-18	Toronto	ON	19.75	19.75	hourly	2026-02-03 00:34:21.762892
article-48295012	data scientist	2026-01-18	Toronto	ON	26	78	hourly	2026-02-03 00:34:21.762892
article-48258921	cloud operations manager	2026-01-17	Burnaby	BC	48000	60000	annually	2026-02-03 00:34:21.762893
article-48256656	cloud operations manager	2026-01-17	Montréal	QC	49934.92	67979.88	annually	2026-02-03 00:34:21.762894
article-48386427	office clerks supervisor	2026-01-21	Petite-Rivière-Saint-François	QC	2073.4	2073.4	weekly	2026-02-03 00:34:21.762895
article-48382893	office supervisor	2026-01-21	Surrey	BC	37	37	hourly	2026-02-03 00:34:21.762896
article-48382072	office supervisor	2026-01-21	Burnaby	BC	3148.68	3148.68	weekly	2026-02-03 00:34:21.762896
article-48382036	office supervisor	2026-01-21	Surrey	BC	36.6	36.6	hourly	2026-02-03 00:34:21.762897
article-48380180	artificial intelligence (AI) designer	2026-01-21	Concord	ON	29	49	hourly	2026-02-03 00:34:21.762898
article-48376832	operations supervisor	2026-01-21	Gold River	BC	85280	85280	annually	2026-02-03 00:34:21.762899
article-48377137	big data analyst	2026-01-21	Drayton Valley	AB	45.3	45.3	hourly	2026-02-03 00:34:21.7629
article-48375200	senior software developer	2026-01-21	Mississauga	ON	28.75	69.71	hourly	2026-02-03 00:34:21.7629
article-48375733	software developer	2026-01-21	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762901
article-48376662	senior software developer	2026-01-21	Mississauga	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762902
article-48373759	director of software engineering	2026-01-21	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762903
article-48371508	computer applications manager	2026-01-21	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762904
article-48372155	information technology (IT) director	2026-01-21	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762904
article-48372892	operations supervisor	2026-01-21	Vernon	BC	20.67	45	hourly	2026-02-03 00:34:21.762905
article-48372973	senior software developer	2026-01-21	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762906
article-48372985	director of technology management	2026-01-21	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762907
article-48373072	artificial intelligence (AI) consultant	2026-01-21	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762908
article-48373243	director, data processing	2026-01-21	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762908
article-48357203	operations supervisor	2026-01-21	Toronto	ON	20	20	hourly	2026-02-03 00:34:21.762909
article-48357529	manager, computer systems development	2026-01-21	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76291
article-48357590	manager, IT (information technology) implementation	2026-01-21	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762911
article-48357854	manager, IT (information technology) implementation	2026-01-21	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762912
article-48358288	data scientist	2026-01-21	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762912
article-48358693	data scientist	2026-01-21	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762913
article-48359181	data scientist	2026-01-21	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762914
article-48356458	data scientist	2026-01-20	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762915
article-48344527	cybersecurity manager	2026-01-20	Laval	QC	85000	85000	annually	2026-02-03 00:34:21.762915
article-48343973	senior software developer	2026-01-20	Vancouver	BC	28.75	69.71	hourly	2026-02-03 00:34:21.762916
article-48343934	manager, data processing and systems analysis	2026-01-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762917
article-48343820	manager, computer applications	2026-01-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76292
article-48344151	manager, computer applications	2026-01-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762921
article-48344055	manager, computer applications	2026-01-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762922
article-48343297	software development manager	2026-01-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762923
article-48341610	data scientist	2026-01-20	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762924
article-48343312	data scientist	2026-01-20	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762925
article-48341829	senior software developer	2026-01-20	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762926
article-48343430	senior software developer	2026-01-20	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762927
article-48343346	artificial intelligence (AI) consultant	2026-01-20	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762928
article-48342136	artificial intelligence (AI) consultant	2026-01-20	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762929
article-48342572	artificial intelligence (AI) consultant	2026-01-20	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.76293
article-48343109	information technology (IT) director	2026-01-20	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76293
article-48445441	cloud operations manager	2026-01-23	Delta	BC	75000	90000	annually	2026-02-03 00:34:21.762931
article-48443691	office supervisor	2026-01-23	High Level	AB	30	30	hourly	2026-02-03 00:34:21.762932
article-48442852	interactive media developer	2026-01-23	Montréal	QC	72000	91000	annually	2026-02-03 00:34:21.762933
article-48442919	operations supervisor	2026-01-23	Edmonton	AB	21	25	hourly	2026-02-03 00:34:21.762934
article-48443010	administrator, database	2026-01-23	Toronto	ON	90000	100000	annually	2026-02-03 00:34:21.762935
article-48439972	computer projects manager	2026-01-23	Victoriaville	QC	23	29	hourly	2026-02-03 00:34:21.762936
article-48440126	data scientist	2026-01-23	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762937
article-48439878	artificial intelligence (AI) consultant	2026-01-23	Mississauga	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762939
article-48440724	data scientist	2026-01-23	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.76294
article-48440766	senior software developer	2026-01-23	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762941
article-48440769	senior software developer	2026-01-23	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762942
article-48440898	manager, IT (information technology) implementation	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762943
article-48441053	artificial intelligence (AI) consultant	2026-01-23	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762943
article-48441082	data processing and systems analysis manager	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762944
article-48441113	senior software developer	2026-01-23	Mississauga	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762945
article-48441657	software developer	2026-01-23	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762946
article-48441692	software developer	2026-01-23	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762947
article-48441818	director, data processing	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762947
article-48441784	artificial intelligence (AI) consultant	2026-01-23	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762948
article-48442030	software developer	2026-01-23	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762949
article-48442371	senior software developer	2026-01-23	Vancouver	BC	28.75	69.71	hourly	2026-02-03 00:34:21.76295
article-48442536	manager, computer applications	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762951
article-48442589	senior software developer	2026-01-23	Mississauga	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762951
article-48440121	cloud developer	2026-01-23	Brampton	ON	70000	115000	annually	2026-02-03 00:34:21.762953
article-48440022	cloud developer	2026-01-23	Edmonton	AB	52780	52780	annually	2026-02-03 00:34:21.762954
article-48439712	database analyst	2026-01-23	Richmond Hill	ON	45	45	hourly	2026-02-03 00:34:21.762955
article-48432525	software developer	2026-01-23	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762956
article-48432356	software developer	2026-01-23	London	ON	47.93	47.93	hourly	2026-02-03 00:34:21.762957
article-48432655	software developer	2026-01-23	Toronto	ON	75	80	hourly	2026-02-03 00:34:21.762957
article-48432664	data architect	2026-01-23	Toronto	ON	150000	150000	annually	2026-02-03 00:34:21.762958
article-48423601	manager, data processing and systems analysis	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762959
article-48423944	software developer	2026-01-23	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.76296
article-48424761	data scientist	2026-01-23	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762961
article-48423947	manager, data processing and systems analysis	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762961
article-48424526	manager, computer applications	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762962
article-48423958	manager, computer applications	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762963
article-48424125	manager, computerized information systems	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762964
article-48421535	data warehouse analyst	2026-01-22	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.762965
article-48414624	director of technology management	2026-01-22	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762966
article-48412907	software developer	2026-01-22	Vancouver	BC	105000	130000	annually	2026-02-03 00:34:21.762966
article-48411479	computer application programmer	2026-01-22	Surrey	BC	52.4	52.4	hourly	2026-02-03 00:34:21.762967
article-48410283	test engineering manager - software	2026-01-22	Vancouver	BC	105000	130000	annually	2026-02-03 00:34:21.762968
article-48407632	information technology (IT) director	2026-01-22	Burnaby	BC	142501	142501	annually	2026-02-03 00:34:21.762969
article-48407320	application programmer	2026-01-22	Chilliwack	BC	52.5	52.5	hourly	2026-02-03 00:34:21.762969
article-48407249	application programmer	2026-01-22	Chilliwack	BC	52.5	52.5	hourly	2026-02-03 00:34:21.76297
article-48406909	senior software developer	2026-01-22	Vancouver	BC	28.75	69.71	hourly	2026-02-03 00:34:21.762971
article-48406873	manager, IT (information technology) implementation	2026-01-22	Montréal	QC	42.41	96.63	hourly	2026-02-03 00:34:21.762972
article-48405237	software developer	2026-01-22	Vancouver	BC	28.75	69.71	hourly	2026-02-03 00:34:21.762973
article-48405302	senior software developer	2026-01-22	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762973
article-48406487	data scientist	2026-01-22	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762974
article-48405409	data scientist	2026-01-22	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762975
article-48406581	director of technology management	2026-01-22	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762976
article-48405114	data processing director	2026-01-22	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762976
article-48404885	data scientist	2026-01-22	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762977
article-48406359	database architect	2026-01-22	Mississauga	ON	25.38	61.54	hourly	2026-02-03 00:34:21.76298
article-48406243	data scientist	2026-01-22	Montréal	QC	29.74	64.9	hourly	2026-02-03 00:34:21.762981
article-48406176	manager, computer systems	2026-01-22	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762981
article-48404768	manager, computer applications	2026-01-22	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762982
article-48432486	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762983
article-48387581	data mining analyst	2026-01-22	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762984
article-48432661	software developer	2026-01-22	Vancouver	BC	10000	10000	monthly	2026-02-03 00:34:21.762984
article-48430071	software developer	2026-01-22	Cambridge	ON	69.11	69.11	hourly	2026-02-03 00:34:21.762985
article-48432617	software developer	2026-01-22	Montréal	QC	110000	115000	annually	2026-02-03 00:34:21.762986
article-48432489	software developer	2026-01-22	Toronto	ON	75000	75000	annually	2026-02-03 00:34:21.762987
article-48388723	software developer	2026-01-22	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762988
article-48432470	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762988
article-48432462	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.762989
article-48432496	software developer	2026-01-22	Toronto	ON	75000	85000	hourly	2026-02-03 00:34:21.76299
article-48432559	software developer	2026-01-22	Mississauga	ON	10000	10000	monthly	2026-02-03 00:34:21.762991
article-48389527	senior software developer	2026-01-22	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762991
article-48432596	software developer	2026-01-22	Waterloo	ON	80000	80000	annually	2026-02-03 00:34:21.762992
article-48389536	manager, computer applications	2026-01-22	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762993
article-48388420	software developer	2026-01-21	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.762994
article-48474417	cloud operations manager	2026-01-24	London	ON	70000	70000	annually	2026-02-03 00:34:21.762995
article-48474198	data processing director	2026-01-24	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762995
article-48474122	data scientist	2026-01-24	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762996
article-48474099	manager, computer applications	2026-01-24	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762997
article-48474284	information technology (IT) director	2026-01-24	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.762998
article-48471933	data scientist	2026-01-24	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762998
article-48472697	artificial intelligence (AI) consultant	2026-01-24	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.762999
article-48472511	information technology (IT) director	2026-01-24	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763
article-48473190	operations supervisor	2026-01-24	Vernon	BC	20.67	45	hourly	2026-02-03 00:34:21.763001
article-48472988	software engineering manager	2026-01-24	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763002
article-48473067	director of technology management	2026-01-24	Vancouver	BC	42.41	96.63	hourly	2026-02-03 00:34:21.763003
article-48473151	artificial intelligence (AI) consultant	2026-01-24	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763003
article-48473264	information technology (IT) director	2026-01-24	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763004
article-48473315	data mining analyst	2026-01-24	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763005
article-48473451	data scientist	2026-01-24	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763006
article-48473526	artificial intelligence (AI) consultant	2026-01-24	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763007
article-48473676	data mining analyst	2026-01-24	Mississauga	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763008
article-48473902	software developer	2026-01-24	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763008
article-48460863	manager, IT (information technology) implementation	2026-01-24	Montréal	QC	42.41	96.63	hourly	2026-02-03 00:34:21.763009
article-48459098	cloud operations manager	2026-01-24	Greater Sudbury	ON	23	25	hourly	2026-02-03 00:34:21.76301
article-48457128	operations supervisor	2026-01-24	Hope	BC	36.7	36.7	hourly	2026-02-03 00:34:21.763011
article-48455509	manager, IT (information technology) implementation	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763012
article-48455613	director of technology management	2026-01-23	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.763012
article-48456974	manager, computer applications	2026-01-23	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763013
article-48450363	cybersecurity manager	2026-01-23	Montréal	QC	45000	45000	annually	2026-02-03 00:34:21.763014
article-48496067	artificial intelligence (AI) consultant	2026-01-25	Mississauga	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763015
article-48496304	artificial intelligence (AI) consultant	2026-01-25	Mississauga	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763016
article-48496860	data scientist	2026-01-25	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763016
article-48497481	artificial intelligence (AI) consultant	2026-01-25	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763019
article-48497534	data scientist	2026-01-25	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.76302
article-48497971	director of software engineering	2026-01-25	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763021
article-48498114	manager, computer applications	2026-01-25	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763021
article-48488068	data scientist	2026-01-25	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763022
article-48488577	data scientist	2026-01-25	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763023
article-48488777	data analyst - informatics and systems	2026-01-25	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.763024
article-48488794	software developer	2026-01-24	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763025
article-48485047	manager, data processing and systems analysis	2026-01-24	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763025
article-48485766	data scientist	2026-01-24	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763026
article-48486597	data mining analyst	2026-01-24	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763027
article-48486661	manager, IT (information technology) implementation	2026-01-24	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763028
article-48556069	data analyst - informatics and systems	2026-01-27	Toronto	ON	25	61.03	hourly	2026-02-03 00:34:21.763028
article-48554110	senior software developer	2026-01-27	Vancouver	BC	28.75	69.71	hourly	2026-02-03 00:34:21.763029
article-48554146	data analyst - informatics and systems	2026-01-27	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.76303
article-48551779	developer, software	2026-01-27	Montréal	QC	90000	110000	annually	2026-02-03 00:34:21.763031
article-48551893	data scientist	2026-01-27	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763032
article-48551864	director of technology management	2026-01-27	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763032
article-48551857	manager, computer applications	2026-01-27	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763033
article-48552417	artificial intelligence (AI) consultant	2026-01-27	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763034
article-48552438	software developer	2026-01-27	Vancouver	BC	28.75	69.71	hourly	2026-02-03 00:34:21.763035
article-48552513	data scientist	2026-01-27	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763036
article-48552563	information technology (IT) director	2026-01-27	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763036
article-48552598	data scientist	2026-01-27	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763037
article-48552752	artificial intelligence (AI) consultant	2026-01-27	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763038
article-48552821	artificial intelligence (AI) consultant	2026-01-27	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763039
article-48552891	data scientist	2026-01-27	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763039
article-48553048	software engineering manager	2026-01-27	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76304
article-48553127	director of technology management	2026-01-27	Vancouver	BC	42.41	96.63	hourly	2026-02-03 00:34:21.763041
article-48553209	artificial intelligence (AI) consultant	2026-01-27	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763041
article-48553323	information technology (IT) director	2026-01-27	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763042
article-48553542	data scientist	2026-01-27	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763043
article-48553684	manager, data processing and systems analysis	2026-01-27	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763044
article-48553872	manager, IT (information technology) implementation	2026-01-27	Montréal	QC	42.41	96.63	hourly	2026-02-03 00:34:21.763044
article-48549187	analyst, database	2026-01-27	Toronto	ON	25	25	hourly	2026-02-03 00:34:21.763045
article-48547130	data engineer	2026-01-27	Vancouver	BC	98000	125000	annually	2026-02-03 00:34:21.763046
article-48546913	computer application programmer	2026-01-27	Toronto	ON	130000	130000	annually	2026-02-03 00:34:21.763047
article-48543590	director of technology management	2026-01-27	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.763047
article-48544343	director of technology management	2026-01-27	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.763048
article-48539985	software developer	2026-01-27	Markham	ON	47.6	47.6	hourly	2026-02-03 00:34:21.763049
article-48538921	manager, data processing and systems analysis	2026-01-27	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76305
article-48539537	database architect	2026-01-27	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.76305
article-48539534	architect, database	2026-01-27	Toronto	ON	25.38	61.54	hourly	2026-02-03 00:34:21.763051
article-48538827	artificial intelligence (AI) consultant	2026-01-27	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763052
article-48538232	software developer	2026-01-26	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763053
article-48530876	software developer	2026-01-26	Mississauga	ON	100000	100000	annually	2026-02-03 00:34:21.763053
article-48524713	data scientist	2026-01-26	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763054
article-48524763	artificial intelligence (AI) consultant	2026-01-26	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763055
article-48523486	data processing and systems analysis manager	2026-01-26	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763056
article-48524146	software development manager	2026-01-26	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763056
article-48523156	senior software developer	2026-01-26	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763057
article-48523160	senior software developer	2026-01-26	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763058
article-48524455	senior software developer	2026-01-26	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763059
article-48524095	software developer	2026-01-26	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.76306
article-48524224	director, data processing	2026-01-26	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76306
article-48524450	software developer	2026-01-26	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763061
article-48523293	manager, IT (information technology) implementation	2026-01-26	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763062
article-48524063	artificial intelligence (AI) consultant	2026-01-26	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763063
article-48524545	artificial intelligence (AI) consultant	2026-01-26	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763063
article-48523653	director of technology management	2026-01-26	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763064
article-48523556	manager, computer applications	2026-01-26	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763065
article-48524160	director of technology management	2026-01-26	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763066
article-48522587	computer programs manager	2026-01-26	Montréal	QC	91420	91420	annually	2026-02-03 00:34:21.763067
article-48519677	data scientist	2026-01-26	Markham	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763067
article-48547101	software developer	2026-01-26	Montréal	QC	65.52	80	hourly	2026-02-03 00:34:21.763068
article-48687866	cloud developer	2026-02-01	Toronto	ON	25	63	hourly	2026-02-03 00:34:21.763069
article-48688420	software developer	2026-02-01	Toronto	ON	25	63	hourly	2026-02-03 00:34:21.76307
article-48688513	software developer	2026-02-01	Calgary	AB	25	63	hourly	2026-02-03 00:34:21.763071
article-48679906	manager, data processing and systems analysis	2026-01-31	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763071
article-48680121	data mining analyst	2026-01-31	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763072
article-48680353	manager, computer applications	2026-01-31	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763073
article-48680933	data mining analyst	2026-01-31	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763074
article-48681616	data mining analyst	2026-01-31	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763074
article-48665874	senior software developer	2026-01-31	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763075
article-48665794	data scientist	2026-01-31	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763076
article-48666204	artificial intelligence (AI) consultant	2026-01-31	Calgary	AB	30	69.74	hourly	2026-02-03 00:34:21.763077
article-48666285	information technology (IT) director	2026-01-31	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763077
article-48666312	data scientist	2026-01-31	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763078
article-48666470	senior software developer	2026-01-31	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763081
article-48666650	senior software developer	2026-01-31	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763082
article-48667187	data scientist	2026-01-31	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763083
article-48666948	manager, computer systems	2026-01-31	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763084
article-48666977	senior software developer	2026-01-31	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763084
article-48666990	senior software developer	2026-01-31	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763085
article-48667215	director, data processing	2026-01-31	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763086
article-48667569	manager, computer applications	2026-01-31	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763087
article-48667579	software developer	2026-01-31	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763088
article-48667694	artificial intelligence (AI) consultant	2026-01-31	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763088
article-48667695	manager, data processing and systems analysis	2026-01-31	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763089
article-48667773	software developer	2026-01-31	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.76309
article-48657806	artificial intelligence (AI) consultant	2026-01-31	Montréal	QC	30	69.74	hourly	2026-02-03 00:34:21.763091
article-48651309	operations supervisor	2026-01-30	Pointe-aux-Trembles	QC	60000	70000	annually	2026-02-03 00:34:21.763091
article-48646389	computerized information systems manager	2026-01-30	Surrey	BC	60.1	60.1	hourly	2026-02-03 00:34:21.763092
article-48644611	software developer	2026-01-30	Mississauga	ON	53	53	hourly	2026-02-03 00:34:21.763093
article-48644023	data administrator	2026-01-30	Edmonton	AB	46	46	hourly	2026-02-03 00:34:21.763094
article-48643903	machine learning specialist	2026-01-30	Vancouver	BC	111775	111776	annually	2026-02-03 00:34:21.763095
article-48641573	cloud developer	2026-01-30	Calgary	AB	115000	140000	annually	2026-02-03 00:34:21.763095
article-48641138	senior software developer	2026-01-30	Vancouver	BC	30	76.92	hourly	2026-02-03 00:34:21.763096
article-48639925	senior software developer	2026-01-30	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763097
article-48640491	software developer	2026-01-30	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763098
article-48638771	artificial intelligence (AI) consultant	2026-01-30	Mississauga	ON	30	69.74	hourly	2026-02-03 00:34:21.763099
article-48639606	data scientist	2026-01-30	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763099
article-48638676	senior software developer	2026-01-30	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.7631
article-48641215	manager, computer applications	2026-01-30	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763101
article-48640240	manager, IT (information technology) implementation	2026-01-30	Mississauga	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763102
article-48639028	computer applications manager	2026-01-30	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763102
article-48640306	operations supervisor	2026-01-30	Vernon	BC	22	46	hourly	2026-02-03 00:34:21.763103
article-48640934	manager, computer applications	2026-01-30	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763104
article-48634272	software developer	2026-01-30	Victoria	BC	61190.01	125222.74	annually	2026-02-03 00:34:21.763105
article-48632389	data engineer	2026-01-30	Toronto	ON	45	55	hourly	2026-02-03 00:34:21.763106
article-48632258	software developer	2026-01-30	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763106
article-48632304	software developer	2026-01-30	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763107
article-48632306	software developer	2026-01-30	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763108
article-48631803	manager, IT (information technology) implementation	2026-01-30	Montréal	QC	43.75	103.37	hourly	2026-02-03 00:34:21.763109
article-48515545	data scientist	2026-01-23	Toronto	ON	59	69	hourly	2026-02-03 00:34:21.76311
article-48515660	software developer	2026-01-23	Mississauga	ON	10000	10000	monthly	2026-02-03 00:34:21.763111
article-48628351	data architect	2026-01-23	Toronto	ON	150000	150000	annually	2026-02-03 00:34:21.763111
article-48670638	manager, computer applications	2026-01-23	Toronto	ON	81442	146641	annually	2026-02-03 00:34:21.763112
article-48547050	computer application programmer	2026-01-23	Coquitlam	BC	35	40	hourly	2026-02-03 00:34:21.763113
article-48597119	manager, IT (information technology) implementation	2026-01-23	Montréal	QC	40	92	hourly	2026-02-03 00:34:21.763114
article-48628081	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763114
article-48628265	software developer	2026-01-22	Montréal	QC	110000	115000	annually	2026-02-03 00:34:21.763115
article-48628033	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763116
article-48628056	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763117
article-48628225	software developer	2026-01-22	Mississauga	ON	10000	10000	monthly	2026-02-03 00:34:21.763117
article-48628252	software developer	2026-01-22	Waterloo	ON	80000	80000	annually	2026-02-03 00:34:21.763118
article-48455162	director of technology management	2026-01-22	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.763119
article-48546855	computer application programmer	2026-01-22	Woodstock	ON	45.87	45.87	hourly	2026-02-03 00:34:21.76312
article-48427790	big data analyst	2026-01-21	Drayton Valley	AB	45.3	45.3	hourly	2026-02-03 00:34:21.763121
article-48627873	software developer	2026-01-21	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763121
article-48432371	software developer	2026-01-21	Boisbriand	QC	90000	110000	annually	2026-02-03 00:34:21.763122
article-48632161	software developer	2026-01-20	Mississauga	ON	67592.4	67592.4	annually	2026-02-03 00:34:21.763123
article-48542507	data architect	2026-01-20	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763124
article-48542598	software developer	2026-01-20	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763124
article-48627878	software developer	2026-01-20	Cambridge	ON	40000	55000	annually	2026-02-03 00:34:21.763125
article-48542546	software developer	2026-01-20	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763126
article-48596563	data scientist	2026-01-20	Toronto	ON	26	78	hourly	2026-02-03 00:34:21.763127
article-48389262	manager, data processing and systems analysis	2026-01-20	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.763128
article-48510210	manager, computer systems	2026-01-20	Mississauga	ON	40	92	hourly	2026-02-03 00:34:21.763128
article-48546996	computer application programmer	2026-01-19	Burnaby	BC	70000	100000	annually	2026-02-03 00:34:21.763129
article-48293873	data mining analyst	2026-01-19	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.76313
article-48294411	software developer	2026-01-19	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763131
article-48294717	software developer	2026-01-19	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763133
article-48515582	software developer	2026-01-19	Fort McMurray	AB	29	29	hourly	2026-02-03 00:34:21.763134
article-48515770	software developer	2026-01-19	Fort McMurray	AB	29	29	hourly	2026-02-03 00:34:21.763135
article-48432460	software developer	2026-01-19	London	ON	18	18	hourly	2026-02-03 00:34:21.763136
article-48489045	director of technology management	2026-01-10	Mississauga	ON	40	92	hourly	2026-02-03 00:34:21.763137
article-48005514	software developer	2026-01-09	Calgary	AB	48.5	48.5	hourly	2026-02-03 00:34:21.763138
article-48004179	senior software developer	2026-01-09	Kanata	ON	110000	140000	annually	2026-02-03 00:34:21.763138
article-48003954	operations supervisor	2026-01-09	Montréal	QC	60000	60000	annually	2026-02-03 00:34:21.763139
article-47986447	software development manager	2026-01-09	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.76314
article-47985574	software developer	2026-01-09	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763141
article-48547137	computer application programmer	2026-01-09	Toronto	ON	85280	85280	annually	2026-02-03 00:34:21.763142
article-47985656	office supervisor	2026-01-09	Toronto	ON	20.67	45	hourly	2026-02-03 00:34:21.763143
article-47985995	manager, IT (information technology) implementation	2026-01-09	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763143
article-47986458	manager, IT (information technology) implementation	2026-01-09	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763144
article-47985033	technical program manager - information technology (IT)	2026-01-08	Ottawa	ON	66.7	66.7	hourly	2026-02-03 00:34:21.763147
article-47975012	records office supervisor	2026-01-08	Edmonton	AB	36	36	hourly	2026-02-03 00:34:21.763148
article-47974831	software developer	2026-01-08	Vancouver	BC	60000	65000	annually	2026-02-03 00:34:21.763148
article-47954746	software developer	2026-01-08	Toronto	ON	28.75	69.71	hourly	2026-02-03 00:34:21.763149
article-48052283	data processing director	2026-01-08	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.76315
article-48052748	director of technology management	2026-01-08	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.763151
article-47990090	cloud developer	2026-01-08	Edmonton	AB	46373.38	89785.66	annually	2026-02-03 00:34:21.763152
article-47883781	computer department coordinator	2026-01-05	Montréal	QC	80000	100000	annually	2026-02-03 00:34:21.763152
article-48341418	software developer	2026-01-05	North York	ON	97000	100000	annually	2026-02-03 00:34:21.763153
article-47876940	director of technology	2026-01-05	Georgetown	ON	150000	150000	annually	2026-02-03 00:34:21.763154
article-48359553	application programmer	2026-01-05	Surrey	BC	62	62	hourly	2026-02-03 00:34:21.763155
article-48490289	software developer	2026-01-05	Toronto	ON	45	45	hourly	2026-02-03 00:34:21.763155
article-48490348	software developer	2026-01-05	Vaughan	ON	45	45	hourly	2026-02-03 00:34:21.763156
article-47774596	operations supervisor	2025-12-31	Surrey	BC	36.6	36.6	hourly	2026-02-03 00:34:21.763157
article-47734964	supervisor, clinical receptionists	2025-12-30	Toronto	ON	38	38	hourly	2026-02-03 00:34:21.763158
article-47708329	office supervisor	2025-12-29	Brampton	ON	36	40	hourly	2026-02-03 00:34:21.763159
article-47706761	office supervisor	2025-12-29	Scarborough	ON	44.34	44.34	hourly	2026-02-03 00:34:21.763159
article-48439710	software developer	2025-12-18	Fergus	ON	49	49	hourly	2026-02-03 00:34:21.76316
article-48409938	data scientist	2025-12-10	Toronto	ON	11250	11250	monthly	2026-02-03 00:34:21.763161
article-48551476	software developer	2025-12-08	Miller Lake	ON	50	50	hourly	2026-02-03 00:34:21.763162
article-48400894	operations supervisor	2025-11-21	Québec	QC	55000	57000	annually	2026-02-03 00:34:21.763162
article-48638630	software developer	2025-11-18	Hamilton	ON	43.6	43.6	hourly	2026-02-03 00:34:21.763163
article-48610926	data entry supervisor	2025-11-06	Concord	ON	36	36	hourly	2026-02-03 00:34:21.763164
article-48527912	software developer	2025-10-31	Victoria	BC	51.28	51.28	hourly	2026-02-03 00:34:21.763165
article-48595363	data entry clerks supervisor	2025-10-17	Scarborough	ON	36	36	hourly	2026-02-03 00:34:21.763166
article-48721617	business systems manager	2026-02-02	Brampton	ON	70	70	hourly	2026-02-03 00:34:21.763166
article-48707201	software developer	2026-02-02	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763167
article-48706346	software developer	2026-02-01	Vancouver	BC	30	76.92	hourly	2026-02-03 00:34:21.763168
article-48703459	artificial intelligence (AI) consultant	2026-02-01	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763169
article-48695904	senior software developer	2026-02-01	Mississauga	ON	30	76.92	hourly	2026-02-03 00:34:21.763169
article-48693904	director of technology management	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.76317
article-48694262	data scientist	2026-02-01	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763171
article-48694408	manager, IT (information technology) implementation	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763172
article-48694507	manager, computer applications	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763173
article-48694593	senior software developer	2026-02-01	Mississauga	ON	30	76.92	hourly	2026-02-03 00:34:21.763173
article-48694679	senior software developer	2026-02-01	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763174
article-48694820	director of technology management	2026-02-01	Vancouver	BC	43.75	103.37	hourly	2026-02-03 00:34:21.763175
article-48694991	information technology (IT) director	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763176
article-48695325	manager, data processing and systems analysis	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763177
article-48695072	software developer	2026-02-01	Toronto	ON	30	76.92	hourly	2026-02-03 00:34:21.763177
article-48695145	software development manager	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763178
article-48695213	data mining analyst	2026-02-01	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763179
article-48695211	software development manager	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.76318
article-48695690	artificial intelligence (AI) consultant	2026-02-01	Mississauga	ON	30	69.74	hourly	2026-02-03 00:34:21.76318
article-48695677	software development manager	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763181
article-48695772	data scientist	2026-02-01	Toronto	ON	30	69.74	hourly	2026-02-03 00:34:21.763182
article-48667931	information technology (IT) director	2026-01-31	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763183
article-48715351	software developer	2026-01-30	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763183
article-48715337	software developer	2026-01-30	Toronto	ON	100000	130000	annually	2026-02-03 00:34:21.763184
article-48715233	software developer	2026-01-30	Toronto	ON	74	88	hourly	2026-02-03 00:34:21.763185
article-48715352	software developer	2026-01-30	Vaughan	ON	100000	100000	annually	2026-02-03 00:34:21.763186
article-48715267	software developer	2026-01-30	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763186
article-48715027	software developer	2026-01-30	Westmount	QC	100000	1350000	annually	2026-02-03 00:34:21.763187
article-48627108	manager, IT (information technology) implementation	2026-01-30	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763188
article-48627274	manager, IT (information technology) implementation	2026-01-30	Toronto	ON	43.75	103.37	hourly	2026-02-03 00:34:21.763189
article-48621697	PC (personal computer) application developer	2026-01-29	Brossard	QC	110000	120000	annually	2026-02-03 00:34:21.763189
article-48621121	computer projects manager	2026-01-29	Terrebonne	QC	48.91	65.91	hourly	2026-02-03 00:34:21.76319
article-48618876	information technology (IT) implementation manager	2026-01-29	Burnaby	BC	94142	94142	annually	2026-02-03 00:34:21.763191
article-48710936	software developer	2026-01-22	Vancouver	BC	10000	10000	monthly	2026-02-03 00:34:21.763192
article-48710745	data architect	2026-01-20	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763193
article-48710849	software developer	2026-01-20	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763193
article-48710785	software developer	2026-01-20	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763194
article-48628360	data engineer	2026-01-16	Vancouver	BC	100000	100000	annually	2026-02-03 00:34:21.763195
article-48628174	software developer	2026-01-16	Toronto	ON	80000	80000	annually	2026-02-03 00:34:21.763196
article-48628276	software developer	2026-01-16	LaSalle	ON	50000	50000	annually	2026-02-03 00:34:21.763197
article-48628145	software developer	2026-01-16	Vancouver	BC	10000	10000	monthly	2026-02-03 00:34:21.763198
article-48628337	software developer	2026-01-16	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763199
article-48628280	software developer	2026-01-16	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.7632
article-48188872	software developer	2026-01-15	Calgary	AB	48.08	48.08	hourly	2026-02-03 00:34:21.763201
article-48628161	software developer	2026-01-15	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763202
article-48710778	software developer	2026-01-15	Toronto	ON	10000	10000	monthly	2026-02-03 00:34:21.763203
article-48388722	director, data processing	2026-01-15	Québec	QC	40	92	hourly	2026-02-03 00:34:21.763204
article-48205223	developer, software	2026-01-15	Blainville	QC	55000	55000	annually	2026-02-03 00:34:21.763204
article-48294334	director of technology management	2026-01-15	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.763205
article-48627812	software developer	2026-01-13	Toronto	ON	55	55	hourly	2026-02-03 00:34:21.763206
article-48106647	computer projects manager	2026-01-12	Montréal	QC	100000	130000	annually	2026-02-03 00:34:21.763207
article-48102891	data administrator	2026-01-12	Mississauga	ON	43.96	43.96	hourly	2026-02-03 00:34:21.763208
article-48079990	manager, computer applications	2026-01-12	Toronto	ON	42.41	96.63	hourly	2026-02-03 00:34:21.763209
article-48053053	data mining analyst	2026-01-11	Toronto	ON	29.74	64.9	hourly	2026-02-03 00:34:21.763211
article-48325287	manager, IT (information technology) implementation	2026-01-11	Toronto	ON	40	92	hourly	2026-02-03 00:34:21.763212
article-48737104	artificial intelligence (AI) consultant	2026-02-03	Toronto	ON	30	69.74	hourly	2026-02-03 05:45:22.579645
article-48737130	senior software developer	2026-02-03	Toronto	ON	30	76.92	hourly	2026-02-03 05:45:22.579647
article-48738002	manager, computer applications	2026-02-03	Toronto	ON	43.75	103.37	hourly	2026-02-03 05:45:22.579648
article-48738296	database architect	2026-02-03	Toronto	ON	25	61.03	hourly	2026-02-03 05:45:22.579648
article-48735349	data scientist	2026-02-02	Toronto	ON	26	78	hourly	2026-02-03 05:45:22.579649
article-48736284	manager, data processing and systems analysis	2026-02-02	Toronto	ON	40	92	hourly	2026-02-03 05:45:22.57965
article-48734669	data engineer	2026-02-02	Kirkland	QC	75000	120000	annually	2026-02-03 05:45:22.579651
article-48729935	cloud developer	2026-02-02	Scarborough	ON	28.02	28.02	hourly	2026-02-03 05:45:22.579652
article-48729939	software developer	2026-02-02	Kitchener	ON	90000	110000	annually	2026-02-03 05:45:22.579653
article-48727721	senior software developer	2026-02-02	Toronto	ON	30	76.92	hourly	2026-02-03 05:45:22.579654
article-48724882	data engineer	2026-02-02	Toronto	ON	41.26	60	hourly	2026-02-03 05:45:22.579655
article-48721779	artificial intelligence (AI) consultant	2026-02-02	Mississauga	ON	30	69.74	hourly	2026-02-03 05:45:22.579656
article-48723105	senior software developer	2026-02-02	Toronto	ON	30	76.92	hourly	2026-02-03 05:45:22.579656
article-48723427	manager, computer systems	2026-02-02	Toronto	ON	43.75	103.37	hourly	2026-02-03 05:45:22.579657
article-48723598	software developer	2026-02-02	Toronto	ON	30	76.92	hourly	2026-02-03 05:45:22.579658
article-48723716	director, data processing	2026-02-02	Toronto	ON	43.75	103.37	hourly	2026-02-03 05:45:22.579659
article-48723891	director of technology management	2026-02-02	Toronto	ON	43.75	103.37	hourly	2026-02-03 05:45:22.579659
article-48723866	data scientist	2026-02-02	Toronto	ON	30	69.74	hourly	2026-02-03 05:45:22.57966
article-48724260	senior software developer	2026-02-02	Vancouver	BC	30	76.92	hourly	2026-02-03 05:45:22.579661
article-48724393	data processing director	2026-02-02	Toronto	ON	43.75	103.37	hourly	2026-02-03 05:45:22.579662
article-48724411	manager, computer applications	2026-02-02	Toronto	ON	43.75	103.37	hourly	2026-02-03 05:45:22.579662
article-48749630	office services supervisor	2026-02-03	Saint-Laurent	QC	65000	65000	annually	2026-02-03 16:04:05.487256
article-48746002	director of technology management	2026-02-03	Toronto	ON	40	92	hourly	2026-02-03 16:04:05.487266
article-48747146	director of technology management	2026-02-03	Toronto	ON	40	92	hourly	2026-02-03 16:04:05.487266
article-48747360	manager, data processing and systems analysis	2026-02-03	Toronto	ON	40	92	hourly	2026-02-03 16:04:05.487267
article-48747349	director of technology management	2026-02-03	Toronto	ON	40	92	hourly	2026-02-03 16:04:05.487268
article-48782791	artificial intelligence (AI) consultant	2026-02-04	Toronto	ON	30	69.74	hourly	2026-02-04 16:00:13.318922
article-48771771	developer, software	2026-02-04	Dundas	ON	64000	75000	annually	2026-02-04 16:00:13.318923
article-48771405	software developer	2026-02-04	Toronto	ON	70	110	hourly	2026-02-04 16:00:13.318924
article-48769339	software developer	2026-02-04	Toronto	ON	30	76.92	hourly	2026-02-04 16:00:13.318925
article-48769920	data analyst - informatics and systems	2026-02-04	Toronto	ON	25	61.03	hourly	2026-02-04 16:00:13.318926
article-48766927	manager, data processing and systems analysis	2026-02-03	Toronto	ON	43.75	103.37	hourly	2026-02-04 16:00:13.318927
article-48767288	software development manager	2026-02-03	Toronto	ON	43.75	103.37	hourly	2026-02-04 16:00:13.318928
article-48767359	manager, computer applications	2026-02-03	Toronto	ON	43.75	103.37	hourly	2026-02-04 16:00:13.318929
article-48764801	cloud developer	2026-02-03	Mississauga	ON	70000	95000	annually	2026-02-04 16:00:13.31893
article-48762315	senior software developer	2026-02-03	London	ON	64.48	64.48	hourly	2026-02-04 16:00:13.318931
article-48761041	operations supervisor	2026-02-03	Concord	ON	36.1	36.1	hourly	2026-02-04 16:00:13.318932
article-48758967	data analytics consultant	2026-02-03	Mississauga	ON	46.5	50	hourly	2026-02-04 16:00:13.318932
article-48757522	office services supervisor	2026-02-03	Saint-Laurent	QC	29	32	hourly	2026-02-04 16:00:13.318933
article-48757455	DBA (database administrator)	2026-02-03	Terrebonne	QC	43	43	hourly	2026-02-04 16:00:13.318934
article-48757378	DBA (database analyst)	2026-02-03	Montréal	QC	35	35	hourly	2026-02-04 16:00:13.318935
article-48755387	senior software developer	2026-02-03	Dorval	QC	70000	90000	annually	2026-02-04 16:00:13.318935
article-48754782	information technology (IT) director	2026-02-03	Toronto	ON	43.75	103.37	hourly	2026-02-04 16:00:13.318936
article-48752022	senior software developer	2026-02-03	Toronto	ON	30	76.92	hourly	2026-02-04 16:00:13.318937
article-48753398	data scientist	2026-02-03	Toronto	ON	30	69.74	hourly	2026-02-04 16:00:13.318937
article-48753739	operations supervisor	2026-02-03	Vernon	BC	22	46	hourly	2026-02-04 16:00:13.318938
article-48753824	director of software engineering	2026-02-03	Mississauga	ON	43.75	103.37	hourly	2026-02-04 16:00:13.318939
article-48754054	data scientist	2026-02-03	Toronto	ON	30	69.74	hourly	2026-02-04 16:00:13.31894
article-48754402	software developer	2026-02-03	Toronto	ON	30	76.92	hourly	2026-02-04 16:00:13.31894
article-48769399	software developer	2026-02-03	Toronto	ON	30	76.92	hourly	2026-02-04 16:00:13.318941
article-48769855	manager, IT (information technology) implementation	2026-02-03	Toronto	ON	43.75	103.37	hourly	2026-02-04 16:00:13.318942
article-48813239	manager, data processing and systems analysis	2026-02-05	Vancouver	BC	40	92	hourly	2026-02-05 15:57:41.321313
article-48810337	software developer	2026-02-05	Timmins	ON	20	20	hourly	2026-02-05 15:57:41.321315
article-48802885	manager, IT (information technology) implementation	2026-02-05	Toronto	ON	43.75	103.37	hourly	2026-02-05 15:57:41.321315
article-48802935	artificial intelligence (AI) consultant	2026-02-05	Montréal	QC	30	69.74	hourly	2026-02-05 15:57:41.321316
article-48803410	data scientist	2026-02-05	Toronto	ON	30	69.74	hourly	2026-02-05 15:57:41.321317
article-48803977	mobile applications developer	2026-02-05	Toronto	ON	30	76.92	hourly	2026-02-05 15:57:41.321318
article-48800214	artificial intelligence (AI) consultant	2026-02-04	Montréal	QC	30	69.74	hourly	2026-02-05 15:57:41.321319
article-48795130	records office supervisor	2026-02-04	Edmonton	AB	36	36	hourly	2026-02-05 15:57:41.32132
article-48795051	data scientist	2026-02-04	Toronto	ON	150000	210000	annually	2026-02-05 15:57:41.321321
article-48792250	cloud developer	2026-02-04	Gravenhurst	ON	22	26	hourly	2026-02-05 15:57:41.321322
article-48789541	cloud developer	2026-02-04	Newmarket	ON	110000	130000	annually	2026-02-05 15:57:41.321323
article-48789158	data administrator	2026-02-04	Richmond	BC	45	48	hourly	2026-02-05 15:57:41.321324
article-48786051	operations supervisor	2026-02-04	Langley	BC	45.8	45.8	hourly	2026-02-05 15:57:41.321325
article-48786574	director of technology management	2026-02-04	Toronto	ON	43.75	103.37	hourly	2026-02-05 15:57:41.321325
article-48787558	senior software developer	2026-02-04	Toronto	ON	30	76.92	hourly	2026-02-05 15:57:41.321326
article-48788430	manager, data processing and systems analysis	2026-02-04	Toronto	ON	43.75	103.37	hourly	2026-02-05 15:57:41.321327
article-48788517	software developer	2026-02-04	Toronto	ON	30	76.92	hourly	2026-02-05 15:57:41.321328
article-48788654	manager, computer applications	2026-02-04	Toronto	ON	43.75	103.37	hourly	2026-02-05 15:57:41.321328
article-48810066	software developer	2026-02-04	Toronto	ON	80000	80000	annually	2026-02-05 15:57:41.321329
article-48807715	software developer	2026-02-04	Woodstock	ON	25	40	hourly	2026-02-05 15:57:41.32133
article-48810031	software developer	2026-02-04	Calgary	AB	10000	10000	monthly	2026-02-05 15:57:41.321331
article-48810270	software developer	2026-02-04	Hamilton	ON	28.74	33.14	hourly	2026-02-05 15:57:41.321331
article-48810312	software developer	2026-02-03	Calgary	AB	10000	10000	monthly	2026-02-05 15:57:41.321332
article-48810109	software developer	2026-02-03	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321333
article-48809982	software developer	2026-02-03	Fort McMurray	AB	29	29	hourly	2026-02-05 15:57:41.321334
article-48810385	software developer	2026-02-03	Toronto	ON	21.12	21.12	hourly	2026-02-05 15:57:41.321335
article-48774066	data engineer	2026-02-02	Kirkland	QC	90000	120000	annually	2026-02-05 15:57:41.321335
article-48810474	software developer	2026-02-02	Toronto	ON	70000	110000	annually	2026-02-05 15:57:41.321336
article-48809986	software developer	2026-02-02	Hamilton	ON	12	12	hourly	2026-02-05 15:57:41.321337
article-48810341	software developer	2026-02-02	Guelph	ON	12	12	hourly	2026-02-05 15:57:41.321338
article-48766615	data scientist	2026-02-02	Toronto	ON	26	78	hourly	2026-02-05 15:57:41.321339
article-48807761	business data analyst	2026-02-02	Ayr	ON	70000	85000	annually	2026-02-05 15:57:41.321339
article-48803256	data scientist	2026-02-02	Toronto	ON	26	78	hourly	2026-02-05 15:57:41.32134
article-48681804	data analyst - informatics and systems	2026-02-01	Toronto	ON	25	61.03	hourly	2026-02-05 15:57:41.321341
article-48810294	software developer	2026-02-01	Toronto	ON	21.12	21.12	hourly	2026-02-05 15:57:41.321342
article-48681484	artificial intelligence (AI) consultant	2026-02-01	Toronto	ON	30	69.74	hourly	2026-02-05 15:57:41.321342
article-48680243	manager, IT (information technology) implementation	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-05 15:57:41.321343
article-48680477	manager, IT (information technology) implementation	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-05 15:57:41.321352
article-48681646	manager, computer applications	2026-02-01	Toronto	ON	43.75	103.37	hourly	2026-02-05 15:57:41.321353
article-48655372	data mining analyst	2026-01-31	Toronto	ON	30	69.74	hourly	2026-02-05 15:57:41.321354
article-48653765	data mining analyst	2026-01-31	Toronto	ON	30	69.74	hourly	2026-02-05 15:57:41.321492
article-48654448	data scientist	2026-01-31	Toronto	ON	30	69.74	hourly	2026-02-05 15:57:41.321494
article-48618111	information technology (IT) service delivery manager	2026-01-29	Markham	ON	68	70	hourly	2026-02-05 15:57:41.321495
article-48617784	software developer	2026-01-29	Toronto	ON	48.08	50	hourly	2026-02-05 15:57:41.321496
article-48608973	artificial intelligence (AI) consultant	2026-01-29	Sainte-Thérèse	QC	46.37	46.37	hourly	2026-02-05 15:57:41.321497
article-48601358	data mining analyst	2026-01-29	Montréal	QC	30	69.74	hourly	2026-02-05 15:57:41.321497
article-48805244	software developer	2026-01-29	Toronto	ON	83	100	hourly	2026-02-05 15:57:41.321498
article-48632383	software developer	2026-01-29	Toronto	ON	130000	130000	annually	2026-02-05 15:57:41.321499
article-48632242	software developer	2026-01-29	Toronto	ON	75000	110000	annually	2026-02-05 15:57:41.3215
article-48632404	software developer	2026-01-29	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321501
article-48632299	software developer	2026-01-29	Montréal	QC	58.62	70	hourly	2026-02-05 15:57:41.321502
article-48632282	software developer	2026-01-29	Westmount	QC	100000	1350000	annually	2026-02-05 15:57:41.32152
article-48786148	cloud developer	2026-01-29	Montréal	QC	75000	100000	annually	2026-02-05 15:57:41.321521
article-48596172	manager, computer applications	2026-01-29	Toronto	ON	43.75	103.37	hourly	2026-02-05 15:57:41.321523
article-48589502	cloud developer	2026-01-28	North York	ON	70000	120000	annually	2026-02-05 15:57:41.321524
article-48586659	office clerks supervisor	2026-01-28	Montréal	QC	38	39	hourly	2026-02-05 15:57:41.321526
article-48584525	cloud developer	2026-01-28	Calgary	AB	28	30	hourly	2026-02-05 15:57:41.321527
article-48583243	data scientist	2026-01-28	Montréal	QC	30	69.74	hourly	2026-02-05 15:57:41.321528
article-48581285	technical program manager - information technology (IT)	2026-01-28	Concord	ON	11800	11800	monthly	2026-02-05 15:57:41.32153
article-48579349	computer projects manager	2026-01-28	Québec	QC	85000	100000	annually	2026-02-05 15:57:41.321532
article-48579043	software developer	2026-01-28	Calgary	AB	41	41	hourly	2026-02-05 15:57:41.321533
article-48577495	data scientist	2026-01-28	London	ON	30	69.74	hourly	2026-02-05 15:57:41.321534
article-48578880	data scientist	2026-01-28	London	ON	30	69.74	hourly	2026-02-05 15:57:41.321536
article-48568428	data mining analyst	2026-01-28	Toronto	ON	30	69.74	hourly	2026-02-05 15:57:41.321546
article-48804999	software developer	2026-01-28	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321547
article-48630139	software developer	2026-01-28	Edmonton	AB	4000	6000	monthly	2026-02-05 15:57:41.321547
article-48805419	software developer	2026-01-28	Westmount	QC	90000	1250000	annually	2026-02-05 15:57:41.321548
article-48567789	data analyst - informatics and systems	2026-01-28	Toronto	ON	25	61.03	hourly	2026-02-05 15:57:41.321549
article-48805096	machine learning engineer	2026-01-28	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.32155
article-48568252	manager, IT (information technology) implementation	2026-01-28	London	ON	43.75	103.37	hourly	2026-02-05 15:57:41.32155
article-48562247	administrator, data	2026-01-27	Sherbrooke	QC	64173	104013	annually	2026-02-05 15:57:41.321551
article-48561389	software developer	2026-01-27	Vancouver	BC	52.5	52.5	hourly	2026-02-05 15:57:41.321552
article-48559529	artificial intelligence (AI) analyst	2026-01-27	Mississauga	ON	51.9	51.9	hourly	2026-02-05 15:57:41.321553
article-48558972	senior software developer	2026-01-27	Toronto	ON	100000	150000	monthly	2026-02-05 15:57:41.321554
article-48557331	cloud developer	2026-01-27	Edmonton	AB	56.78	60.55	hourly	2026-02-05 15:57:41.321554
article-48741482	data engineer	2026-01-27	Vancouver	BC	98000	125000	annually	2026-02-05 15:57:41.321555
article-48805428	software developer	2026-01-27	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321556
article-48805030	software developer	2026-01-27	Toronto	ON	21.12	21.12	hourly	2026-02-05 15:57:41.321557
article-48508982	manager, data processing and systems analysis	2026-01-26	Surrey	BC	40	92	hourly	2026-02-05 15:57:41.321557
article-48509015	manager, data processing and systems analysis	2026-01-26	Alert Bay	BC	40	92	hourly	2026-02-05 15:57:41.321558
article-48509926	manager, data processing and systems analysis	2026-01-26	Coquitlam	BC	40	92	hourly	2026-02-05 15:57:41.321559
article-48741445	software developer	2026-01-26	Montréal	QC	65.52	80	hourly	2026-02-05 15:57:41.32156
article-48805217	software developer	2026-01-26	London	ON	18	18	hourly	2026-02-05 15:57:41.32156
article-48455110	manager, data processing and systems analysis	2026-01-24	Vancouver	BC	40	92	hourly	2026-02-05 15:57:41.321561
article-48710885	software developer	2026-01-24	Toronto	ON	100000	100000	annually	2026-02-05 15:57:41.321562
article-48710742	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321563
article-48710924	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321564
article-48710806	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321565
article-48710645	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321565
article-48710808	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321566
article-48710854	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321567
article-48450433	operations supervisor	2026-01-23	Richmond	BC	58500	59900	annually	2026-02-05 15:57:41.321568
article-48450181	database analyst	2026-01-23	Vancouver	BC	44.15	44.15	hourly	2026-02-05 15:57:41.321568
article-48448817	business data analyst	2026-01-23	Nepean	ON	3850	3850	weekly	2026-02-05 15:57:41.32157
article-48710764	software developer	2026-01-23	Mississauga	ON	10000	10000	monthly	2026-02-05 15:57:41.32157
article-48790322	manager, computer applications	2026-01-23	Toronto	ON	81442	146641	annually	2026-02-05 15:57:41.321571
article-48805282	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321572
article-48805535	software developer	2026-01-22	Montréal	QC	110000	115000	annually	2026-02-05 15:57:41.321573
article-48805221	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321574
article-48805236	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321574
article-48805461	software developer	2026-01-22	Mississauga	ON	10000	10000	monthly	2026-02-05 15:57:41.321575
article-48809999	software developer	2026-01-21	Boisbriand	QC	90000	110000	annually	2026-02-05 15:57:41.321576
article-48804998	software developer	2026-01-20	Cambridge	ON	40000	55000	annually	2026-02-05 15:57:41.321576
article-48387937	software developer	2026-01-18	Toronto	ON	25	63	hourly	2026-02-05 15:57:41.321577
article-48388346	data scientist	2026-01-18	Toronto	ON	26	78	hourly	2026-02-05 15:57:41.321578
article-48388235	data scientist	2026-01-18	Toronto	ON	26	78	hourly	2026-02-05 15:57:41.321579
article-48388911	director of technology management	2026-01-18	Toronto	ON	40	92	hourly	2026-02-05 15:57:41.32158
article-48805613	software developer	2026-01-17	Vancouver	BC	108992	130000	annually	2026-02-05 15:57:41.321588
article-48805261	software developer	2026-01-17	Mississauga	ON	10000	10000	monthly	2026-02-05 15:57:41.321589
article-48805595	information systems manager	2026-01-17	Vancouver	BC	100000	100000	annually	2026-02-05 15:57:41.32159
article-48805634	data engineer	2026-01-16	Vancouver	BC	100000	100000	annually	2026-02-05 15:57:41.32159
article-48805375	software developer	2026-01-16	Toronto	ON	80000	80000	annually	2026-02-05 15:57:41.321591
article-48805352	software developer	2026-01-16	Vancouver	BC	10000	10000	monthly	2026-02-05 15:57:41.321592
article-48805601	software developer	2026-01-16	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321593
article-48805548	software developer	2026-01-16	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321594
article-48805363	software developer	2026-01-15	Toronto	ON	10000	10000	monthly	2026-02-05 15:57:41.321594
article-48295242	manager, IT (information technology) implementation	2026-01-15	Toronto	ON	40	92	hourly	2026-02-05 15:57:41.321595
article-48810305	operations supervisor	2026-01-15	St. Marys	ON	50000	75000	annually	2026-02-05 15:57:41.321596
article-48169425	database administrator (DBA)	2026-01-14	Surrey	BC	45	45	hourly	2026-02-05 15:57:41.321596
article-48166984	records office supervisor	2026-01-14	Edmonton	AB	36	36	hourly	2026-02-05 15:57:41.321597
article-48166765	cloud operations manager	2026-01-14	Mississauga	ON	65000	65000	annually	2026-02-05 15:57:41.321598
article-48166408	administrative supervisor	2026-01-14	Toronto	ON	75000	75000	annually	2026-02-05 15:57:41.321598
article-48166380	software programmer	2026-01-14	Hamilton	ON	67984.8	67984.8	annually	2026-02-05 15:57:41.321599
article-48772448	records office supervisor	2026-01-13	Edmonton	AB	36	36	hourly	2026-02-05 15:57:41.3216
article-48582417	office supervisor	2026-01-13	Mississauga	ON	36.1	36.1	hourly	2026-02-05 15:57:41.321601
article-48121099	manager, IT (information technology) implementation	2026-01-13	Vancouver	BC	40	92	hourly	2026-02-05 15:57:41.321602
article-48804907	software developer	2026-01-13	Toronto	ON	140000	165000	annually	2026-02-05 15:57:41.321603
article-48805378	software developer	2026-01-13	Vancouver	BC	140000	165000	annually	2026-02-05 15:57:41.321603
article-48805401	software developer	2026-01-13	Montréal	QC	140000	165000	annually	2026-02-05 15:57:41.321604
article-48805429	software developer	2026-01-13	Calgary	AB	140000	165000	annually	2026-02-05 15:57:41.321605
article-48804906	software developer	2026-01-13	Toronto	ON	55	55	hourly	2026-02-05 15:57:41.321606
article-48805263	software developer	2026-01-13	Toronto	ON	5558	5558	monthly	2026-02-05 15:57:41.321607
article-48804781	software developer	2026-01-10	Toronto	ON	80000	80000	annually	2026-02-05 15:57:41.321607
article-48725121	computer manager	2026-01-09	Vancouver	BC	200000	253650	annually	2026-02-05 15:57:41.321608
article-48612600	software development manager	2026-01-07	Vancouver	BC	50.48	50.48	hourly	2026-02-05 15:57:41.321609
article-47990156	data engineer	2026-01-07	Toronto	ON	90000	120000	annually	2026-02-05 15:57:41.32161
article-48804880	software developer	2026-01-07	Kelowna	BC	21	21	hourly	2026-02-05 15:57:41.32161
article-47954629	manager, computer applications	2026-01-07	Toronto	ON	42.41	96.63	hourly	2026-02-05 15:57:41.321611
article-47905056	office supervisor	2026-01-06	Edmonton	AB	36.25	36.25	hourly	2026-02-05 15:57:41.321612
article-48588348	office supervisor	2026-01-06	Montréal	QC	34.62	34.62	hourly	2026-02-05 15:57:41.321613
article-47885843	administrative supervisor	2026-01-05	Coquitlam	BC	37	37	hourly	2026-02-05 15:57:41.321613
article-48897881	office supervisor	2026-02-06	Québec	QC	74500	94400	hourly	2026-02-06 15:55:55.253645
article-48848620	data mining analyst	2026-02-06	Montréal	QC	30	69.74	hourly	2026-02-06 15:55:55.253648
article-48849954	manager, computer applications	2026-02-06	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253649
article-48850567	information technology (IT) director	2026-02-06	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253649
article-48850988	information technology (IT) director	2026-02-06	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.25365
article-48851104	software developer	2026-02-06	Toronto	ON	30	76.92	hourly	2026-02-06 15:55:55.253651
article-48851719	manager, computer applications	2026-02-06	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253652
article-48851839	software developer	2026-02-06	Toronto	ON	30	76.92	hourly	2026-02-06 15:55:55.253653
article-48852005	manager, computer applications	2026-02-06	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253654
article-48852064	manager, computer applications	2026-02-06	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253655
article-48849061	data scientist	2026-02-05	Toronto	ON	30	69.74	hourly	2026-02-06 15:55:55.253656
article-48850546	senior software developer	2026-02-05	Toronto	ON	30	76.92	hourly	2026-02-06 15:55:55.253657
article-48851922	director, data processing	2026-02-05	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253658
article-48852078	software developer	2026-02-05	Toronto	ON	30	76.92	hourly	2026-02-06 15:55:55.253659
article-48894956	operations supervisor	2026-02-05	Brampton	ON	37	37	hourly	2026-02-06 15:55:55.25366
article-48831336	cloud developer	2026-02-05	North Vancouver	BC	60102.13	100000	annually	2026-02-06 15:55:55.25366
article-48896713	operations supervisor	2026-02-05	Pitt Meadows	BC	47000	50000	annually	2026-02-06 15:55:55.253661
article-48816187	computer applications manager	2026-02-05	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253662
article-48816293	manager, IT (information technology) implementation	2026-02-05	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253663
article-48816343	software developer	2026-02-05	Vancouver	BC	30	76.92	hourly	2026-02-06 15:55:55.253664
article-48816564	manager, computer applications	2026-02-05	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253664
article-48816935	senior software developer	2026-02-05	Toronto	ON	30	76.92	hourly	2026-02-06 15:55:55.253665
article-48816950	software engineering manager	2026-02-05	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253666
article-48817032	software development manager	2026-02-05	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253666
article-48817061	director of technology management	2026-02-05	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253667
article-48817084	manager, computer applications	2026-02-05	Toronto	ON	43.75	103.37	hourly	2026-02-06 15:55:55.253668
article-48894291	artificial intelligence programmer	2026-02-05	Varennes	QC	95000	105000	annually	2026-02-06 15:55:55.253669
article-48855809	data analyst - informatics and systems	2026-02-05	Toronto	ON	47.9	47.9	hourly	2026-02-06 15:55:55.25367
article-48807688	software developer	2026-02-04	Toronto	ON	70	110	hourly	2026-02-06 15:55:55.25367
article-48810203	software developer	2026-02-04	Toronto	ON	100000	220000	annually	2026-02-06 15:55:55.253671
article-48810120	software developer	2026-02-04	Toronto	ON	70	75	hourly	2026-02-06 15:55:55.253672
article-48867015	software developer	2026-02-04	Woodstock	ON	25	40	hourly	2026-02-06 15:55:55.253673
article-48892688	office services supervisor	2026-02-03	Saint-Laurent	QC	65000	65000	annually	2026-02-06 15:55:55.253674
article-48904134	director of technology management	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-07 16:42:20.01523
article-48904144	data scientist	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-07 16:42:20.015231
article-48904174	manager, computer systems	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-07 16:42:20.015232
article-48904207	artificial intelligence (AI) consultant	2026-02-07	Calgary	AB	30	69.74	hourly	2026-02-07 16:42:20.015233
article-48904211	data scientist	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-07 16:42:20.015234
article-48904259	manager, computer applications	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-07 16:42:20.015235
article-48904262	manager, IT (information technology) implementation	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-07 16:42:20.015236
article-48904298	senior software developer	2026-02-07	Mississauga	ON	30	76.92	hourly	2026-02-07 16:42:20.015237
article-48904332	software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-07 16:42:20.015238
article-48904345	director of technology management	2026-02-07	Vancouver	BC	43.75	103.37	hourly	2026-02-07 16:42:20.015239
article-48904356	senior software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-07 16:42:20.01524
article-48904361	software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-07 16:42:20.015241
article-48904369	software development manager	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-07 16:42:20.015242
article-48904376	software development manager	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-07 16:42:20.015243
article-48904377	data mining analyst	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-07 16:42:20.015243
article-48904396	manager, computer applications	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-07 16:42:20.015244
article-48904398	software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-07 16:42:20.015245
article-48904446	manager, computer applications	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-07 16:42:20.015245
article-48904480	senior software developer	2026-02-07	Mississauga	ON	30	76.92	hourly	2026-02-07 16:42:20.015246
article-48901193	cloud developer	2026-02-06	Westmount	QC	55000	110000	annually	2026-02-07 16:42:20.015247
article-48900778	developer, software	2026-02-06	Montréal	QC	80000	80000	annually	2026-02-07 16:42:20.015248
article-48900123	database administrator (DBA)	2026-02-06	Victoria	BC	7587	7587	monthly	2026-02-07 16:42:20.015249
article-48900482	software developer	2026-02-06	Toronto	ON	10000	10000	monthly	2026-02-07 16:42:20.015249
article-48900257	operations supervisor	2026-02-06	Mount Hope	ON	58500	59900	annually	2026-02-07 16:42:20.01525
article-48898438	data scientist	2026-02-06	Toronto	ON	30	69.74	hourly	2026-02-07 16:42:20.015251
article-48898697	senior software developer	2026-02-06	Toronto	ON	30	76.92	hourly	2026-02-07 16:42:20.015252
article-48898450	software engineering manager	2026-02-06	Toronto	ON	43.75	103.37	hourly	2026-02-07 16:42:20.015253
article-48903868	operations supervisor	2026-02-06	Calgary	AB	31.48	31.48	hourly	2026-02-07 16:42:20.015254
article-48817098	data scientist	2026-02-05	Toronto	ON	30	69.74	hourly	2026-02-07 16:42:20.015254
article-48900584	software developer	2026-02-05	Toronto	ON	10000	10000	monthly	2026-02-07 16:42:20.015255
article-48900513	software developer	2026-02-05	Toronto	ON	72	86	hourly	2026-02-07 16:42:20.015256
article-48903257	cloud developer	2026-02-05	North Vancouver	BC	60102.13	100000	annually	2026-02-07 16:42:20.015257
article-48907365	data scientist	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-08 15:39:55.12646
article-48907380	EDP (electronic data processing) analyst	2026-02-08	Toronto	ON	25	61.03	hourly	2026-02-08 15:39:55.126461
article-48906332	software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-08 15:39:55.126462
article-48906437	manager, computer applications	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-08 15:39:55.126462
article-48906456	data mining analyst	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-08 15:39:55.126463
article-48906474	director of technology management	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-08 15:39:55.126464
article-48906483	data scientist	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-08 15:39:55.126465
article-48906622	software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-08 15:39:55.126466
article-48906785	manager, data processing and systems analysis	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-08 15:39:55.126467
article-48906860	software development manager	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-08 15:39:55.126468
article-48906995	manager, computer applications	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-08 15:39:55.126469
article-48907004	manager, IT (information technology) implementation	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-08 15:39:55.126469
article-48907293	data mining analyst	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-08 15:39:55.12647
article-48906066	manager, data processing and systems analysis	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-08 15:39:55.126471
article-48906076	data mining analyst	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-08 15:39:55.126471
article-48905515	operations supervisor	2026-02-07	Oakville	ON	18	20	hourly	2026-02-08 15:39:55.126472
article-48905492	database analyst	2026-02-07	Toronto	ON	47	47	hourly	2026-02-08 15:39:55.126473
article-48905138	cloud operations manager	2026-02-07	Peterborough	ON	25	33	hourly	2026-02-08 15:39:55.126474
article-48898628	data scientist	2026-02-06	Toronto	ON	30	69.74	hourly	2026-02-08 15:39:55.126475
article-48913059	data scientist	2026-02-09	London	ON	30	69.74	hourly	2026-02-09 16:08:28.580656
article-48913078	artificial intelligence (AI) consultant	2026-02-09	Toronto	ON	30	69.74	hourly	2026-02-09 16:08:28.580657
article-48912873	software developer	2026-02-09	Toronto	ON	700	730	weekly	2026-02-09 16:08:28.580658
article-48912806	software developer	2026-02-09	Toronto	ON	95	110	hourly	2026-02-09 16:08:28.580659
article-48910083	big data analyst	2026-02-08	Mississauga	ON	70000	80000	annually	2026-02-09 16:08:28.58066
article-48908931	software developer	2026-02-08	Vancouver	BC	30	76.92	hourly	2026-02-09 16:08:28.580661
article-48909017	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-09 16:08:28.580662
article-48909083	senior software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-09 16:08:28.580663
article-48909101	software engineering manager	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-09 16:08:28.580665
article-48909111	manager, computer systems	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-09 16:08:28.580666
article-48909131	manager, data processing and systems analysis	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-09 16:08:28.580666
article-48909144	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-09 16:08:28.580667
article-48909154	artificial intelligence (AI) consultant	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-09 16:08:28.580668
article-48909155	artificial intelligence (AI) consultant	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-09 16:08:28.580669
article-48909159	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-09 16:08:28.58067
article-48920734	office supervisor	2026-02-10	Mississauga	ON	30	36	hourly	2026-02-10 16:18:18.029738
article-48917906	cloud developer	2026-02-09	Etobicoke	ON	35.54	45.29	hourly	2026-02-10 16:18:18.02974
article-48917855	software development manager	2026-02-09	Oshawa	ON	65	75	hourly	2026-02-10 16:18:18.02974
article-48917599	administrator, data	2026-02-09	Montréal	QC	80000	90000	annually	2026-02-10 16:18:18.029742
article-48916908	machine learning specialist	2026-02-09	Toronto	ON	125800	157300	annually	2026-02-10 16:18:18.029743
article-48916464	DBA (database architect)	2026-02-09	Montréal	QC	65901	65901	annually	2026-02-10 16:18:18.029747
article-48916275	cybersecurity manager	2026-02-09	Berthierville	QC	18	25	hourly	2026-02-10 16:18:18.029748
article-48916410	cybersecurity manager	2026-02-09	Notre-Dame-des-Prairies	QC	18	25	hourly	2026-02-10 16:18:18.029751
article-48916222	data entry clerks supervisor	2026-02-09	Scarborough	ON	36	36	hourly	2026-02-10 16:18:18.029752
article-48916049	database developer	2026-02-09	Montréal	QC	65901	65901	annually	2026-02-10 16:18:18.029754
article-48916125	DBA (database architect)	2026-02-09	Montréal	QC	73586	73586	annually	2026-02-10 16:18:18.029755
article-48914174	data scientist	2026-02-09	Toronto	ON	30	69.74	hourly	2026-02-10 16:18:18.029757
article-48914181	senior software developer	2026-02-09	Toronto	ON	30	76.92	hourly	2026-02-10 16:18:18.029758
article-48914201	director of technology management	2026-02-09	Toronto	ON	43.75	103.37	hourly	2026-02-10 16:18:18.029759
article-48914210	senior software developer	2026-02-09	Montréal	QC	30	76.92	hourly	2026-02-10 16:18:18.029761
article-48914219	artificial intelligence (AI) consultant	2026-02-09	Calgary	AB	30	69.74	hourly	2026-02-10 16:18:18.029762
article-48914270	manager, IT (information technology) implementation	2026-02-09	Toronto	ON	43.75	103.37	hourly	2026-02-10 16:18:18.029762
article-48914305	senior software developer	2026-02-09	Toronto	ON	30	76.92	hourly	2026-02-10 16:18:18.029763
article-48914363	data mining analyst	2026-02-09	Montréal	QC	30	69.74	hourly	2026-02-10 16:18:18.029764
article-48914390	software development manager	2026-02-09	Toronto	ON	43.75	103.37	hourly	2026-02-10 16:18:18.029765
article-48914411	director of technology management	2026-02-09	Toronto	ON	43.75	103.37	hourly	2026-02-10 16:18:18.029766
article-48914422	manager, computer applications	2026-02-09	Toronto	ON	43.75	103.37	hourly	2026-02-10 16:18:18.029767
article-48914429	artificial intelligence (AI) consultant	2026-02-09	Toronto	ON	30	69.74	hourly	2026-02-10 16:18:18.029767
article-48914437	senior software developer	2026-02-09	Calgary	AB	30	76.92	hourly	2026-02-10 16:18:18.029768
article-48914441	manager, data processing and systems analysis	2026-02-09	Toronto	ON	43.75	103.37	hourly	2026-02-10 16:18:18.029769
article-48914448	manager, computer applications	2026-02-09	Toronto	ON	43.75	103.37	hourly	2026-02-10 16:18:18.02977
article-48919536	software developer	2026-02-09	Toronto	ON	101	101	daily	2026-02-10 16:18:18.029771
article-48919745	software developer	2026-02-09	Toronto	ON	10000	10000	monthly	2026-02-10 16:18:18.029772
article-48919821	software developer	2026-02-09	Toronto	ON	10000	10000	monthly	2026-02-10 16:18:18.029772
article-48919846	software developer	2026-02-09	Montréal	QC	65.52	80	hourly	2026-02-10 16:18:18.029773
article-48919707	software developer	2026-02-08	London	ON	18.35	18.35	hourly	2026-02-10 16:18:18.029774
article-48923119	big data analyst	2026-02-10	Edmonton	AB	35	35	hourly	2026-02-10 20:46:27.960586
article-48923117	cloud developer	2026-02-10	Toronto	ON	45	50	hourly	2026-02-10 20:46:27.960587
article-48922525	data engineer	2026-02-10	London	ON	102710	134727	annually	2026-02-10 20:46:27.960588
article-48921921	data quality analyst	2026-02-10	Greater Sudbury	ON	31.69	39.62	hourly	2026-02-10 20:46:27.960589
article-48921794	data analyst - informatics and systems	2026-02-10	Saint-Laurent	QC	35	35	hourly	2026-02-10 20:46:27.96059
article-48914451	manager, computer systems development	2026-02-09	Toronto	ON	43.75	103.37	hourly	2026-02-10 20:46:27.96059
article-48914457	manager, computer applications	2026-02-09	Toronto	ON	43.75	103.37	hourly	2026-02-10 20:46:27.960591
article-48924507	operations supervisor	2026-02-10	Wasaga Beach	ON	22	24	hourly	2026-02-11 16:14:16.983557
article-48924023	administrative clerks supervisor	2026-02-10	Vaughan	ON	37580.65	49961.53	annually	2026-02-11 16:14:16.983558
article-48931417	software developer	2026-02-12	Ottawa	ON	51	51	hourly	2026-02-12 16:07:12.869661
article-48929622	operations supervisor	2026-02-11	Edmonton	AB	37	37	hourly	2026-02-12 16:07:12.869663
article-48928106	senior software developer	2026-02-11	White Rock	BC	120000	120000	annually	2026-02-12 16:07:12.869663
article-48927528	cybersecurity manager	2026-02-11	Drummondville	QC	65000	65000	annually	2026-02-12 16:07:12.869664
article-48927336	senior software developer	2026-02-11	Edmonton	AB	80000	160000	annually	2026-02-12 16:07:12.869665
article-48937465	cloud developer	2026-02-13	Toronto	ON	90	90	hourly	2026-02-13 15:58:40.654892
article-48935479	operations supervisor	2026-02-12	Brampton	ON	36.1	36.1	hourly	2026-02-13 15:58:40.654894
article-48935158	data analytics specialist	2026-02-12	Toronto	ON	100600	125800	annually	2026-02-13 15:58:40.654896
article-48934919	information technology (IT) implementation manager	2026-02-12	Kelowna	BC	113	113	hourly	2026-02-13 15:58:40.654897
article-48934844	operations supervisor	2026-02-12	North York	ON	2816	1	weekly	2026-02-13 15:58:40.654899
article-48934215	cybersecurity manager	2026-02-12	Sainte-Thérèse	QC	20	20	hourly	2026-02-13 15:58:40.654901
article-48933981	cloud operations manager	2026-02-12	Edmonton	AB	62000	70100	annually	2026-02-13 15:58:40.654902
article-48933405	application programmer	2026-02-12	Surrey	BC	62	62	hourly	2026-02-13 15:58:40.654905
article-48933403	database analyst	2026-02-12	Mississauga	ON	44.6	44.6	hourly	2026-02-13 15:58:40.654906
article-48932598	senior software developer	2026-02-12	Montréal	QC	70	70	hourly	2026-02-13 15:58:40.654908
article-48914446	software development manager	2026-02-09	Toronto	ON	43.75	103.37	hourly	2026-02-13 15:58:40.654909
article-48943531	data mining analyst	2026-02-13	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943864
article-48943644	data mining analyst	2026-02-13	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943866
article-48943344	office supervisor	2026-02-13	Burnaby	BC	36.6	36.6	hourly	2026-02-14 15:42:49.943867
article-48943037	office supervisor	2026-02-13	Calgary	AB	36	36	hourly	2026-02-14 15:42:49.943868
article-48942088	manager, IT (information technology) implementation	2026-02-13	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943869
article-48942153	software quality assurance director	2026-02-13	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.94387
article-48942282	data analyst - informatics and systems	2026-02-13	Toronto	ON	25	61.03	hourly	2026-02-14 15:42:49.943871
article-48941711	database architect	2026-02-13	Mississauga	ON	25	61.03	hourly	2026-02-14 15:42:49.943872
article-48941954	manager, computer applications	2026-02-13	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943873
article-48941374	software developer	2026-02-13	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943874
article-48941679	manager, computer systems development	2026-02-13	London	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943875
article-48941149	data scientist	2026-02-13	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943876
article-48939155	operations supervisor	2026-02-13	Surrey	BC	36.6	36.6	hourly	2026-02-14 15:42:49.943877
article-48939362	operations supervisor	2026-02-13	Okotoks	AB	18	22	hourly	2026-02-14 15:42:49.943877
article-48939030	operations supervisor	2026-02-13	Montréal	QC	60000	60000	annually	2026-02-14 15:42:49.943878
article-48941577	data scientist	2026-02-12	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943879
article-48940709	software developer	2026-02-12	Vancouver	BC	30	76.92	hourly	2026-02-14 15:42:49.94388
article-48941639	director of software engineering	2026-02-12	Mississauga	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943881
article-48945034	data mining analyst	2026-02-12	Toronto	ON	26	78	hourly	2026-02-14 15:42:49.943882
article-48940441	software developer	2026-02-12	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943882
article-48941834	senior software developer	2026-02-12	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943883
article-48941849	data mining analyst	2026-02-12	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943884
article-48941925	data scientist	2026-02-11	Mississauga	ON	30	69.74	hourly	2026-02-14 15:42:49.943885
article-48941104	data scientist	2026-02-11	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943886
article-48941424	manager, computer applications	2026-02-11	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943886
article-48911752	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.943887
article-48940543	manager, data processing and systems analysis	2026-02-11	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943888
article-48942058	manager, data processing and systems analysis	2026-02-11	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943889
article-48941224	manager, IT (information technology) implementation	2026-02-11	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.94389
article-48940677	manager, computer applications	2026-02-11	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943891
article-48942017	manager, computer applications	2026-02-11	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943892
article-48942427	artificial intelligence (AI) consultant	2026-02-11	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943892
article-48942059	data scientist	2026-02-10	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943894
article-48918603	data mining analyst	2026-02-10	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943895
article-48940442	data mining analyst	2026-02-10	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943895
article-48941905	senior software developer	2026-02-10	Calgary	AB	30	76.92	hourly	2026-02-14 15:42:49.943896
article-48942272	software developer	2026-02-10	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943897
article-48940961	data scientist	2026-02-10	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943898
article-48941302	data scientist	2026-02-10	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943899
article-48918589	manager, data processing and systems analysis	2026-02-10	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.9439
article-48940882	artificial intelligence (AI) consultant	2026-02-10	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943901
article-48941148	data scientist	2026-02-10	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943902
article-48941916	manager, IT (information technology) implementation	2026-02-10	Mississauga	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943903
article-48942244	artificial intelligence (AI) consultant	2026-02-10	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943903
article-48942240	manager, computer applications	2026-02-10	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943904
article-48940676	software quality assurance director	2026-02-10	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943905
article-48910814	data scientist	2026-02-09	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943906
article-48910888	data scientist	2026-02-09	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943907
article-48910785	senior software developer	2026-02-09	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943908
article-48910943	mobile applications developer	2026-02-09	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943909
article-48907323	data mining analyst	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943909
article-48907133	data scientist	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.94391
article-48906734	data mining analyst	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943911
article-48906821	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943912
article-48906450	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943913
article-48906862	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943914
article-48906444	senior software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943915
article-48906695	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943916
article-48906776	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943917
article-48907178	data mining analyst	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943918
article-48907132	database architect	2026-02-08	Toronto	ON	25	61.03	hourly	2026-02-14 15:42:49.943919
article-48906410	senior software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943919
article-48906892	director, data processing	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.94392
article-48906827	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943921
article-48906696	data mining analyst	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943922
article-48940679	data mining analyst	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943923
article-48907192	director, data processing	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943924
article-48907248	data mining analyst	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943924
article-48907212	senior software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943925
article-48906793	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943927
article-48906459	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943928
article-48906646	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943928
article-48906880	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943929
article-48906908	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.94393
article-48907334	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943931
article-48906887	data analyst - informatics and systems	2026-02-08	Toronto	ON	25	61.03	hourly	2026-02-14 15:42:49.943932
article-48907000	manager, data processing and systems analysis	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943932
article-48906740	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943934
article-48906871	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943934
article-48906676	senior software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943935
article-48906472	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943936
article-48941667	senior software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943937
article-48906462	senior software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943938
article-48940657	software developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943939
article-48906399	manager, data processing and systems analysis	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.94394
article-48907131	architect, database	2026-02-08	Toronto	ON	25	61.03	hourly	2026-02-14 15:42:49.94394
article-48906769	data scientist	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943941
article-48942439	artificial intelligence (AI) consultant	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943942
article-48906993	director of technology management	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943943
article-48906352	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943943
article-48906791	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943944
article-48941168	manager, data processing and systems analysis	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943945
article-48906464	information technology (IT) director	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943946
article-48906777	artificial intelligence (AI) consultant	2026-02-08	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943947
article-48906546	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943948
article-48906745	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943949
article-48907087	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943949
article-48906357	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943951
article-48906471	manager, IT (information technology) implementation	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943951
article-48906850	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943952
article-48907091	manager, IT (information technology) implementation	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943953
article-48907112	mobile applications developer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943954
article-48907137	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943955
article-48906538	manager, computer systems	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943956
article-48906600	manager, IT (information technology) implementation	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943956
article-48942404	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943957
article-48907009	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943958
article-48906550	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943959
article-48907282	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.94396
article-48906336	information technology (IT) director	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943961
article-48906373	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943962
article-48906386	information technology (IT) director	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943963
article-48906755	information technology (IT) director	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943964
article-48906839	manager, computer applications	2026-02-08	Stratford	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943965
article-48906900	Java programmer	2026-02-08	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943966
article-48907019	manager, IT (information technology) implementation	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943967
article-48907151	manager, computer applications	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943967
article-48942264	manager, IT (information technology) implementation	2026-02-08	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943968
article-48940850	data mining analyst	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943969
article-48941643	data mining analyst	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.94397
article-48942062	data scientist	2026-02-07	Mississauga	ON	30	69.74	hourly	2026-02-14 15:42:49.943971
article-48902342	software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943971
article-48942006	data scientist	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943972
article-48941544	manager, data processing and systems analysis	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943973
article-48902304	data scientist	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943974
article-48940825	software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943975
article-48941717	manager, data processing and systems analysis	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943976
article-48941851	senior software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943977
article-48941698	senior software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943978
article-48941399	senior software developer	2026-02-07	Vancouver	BC	30	76.92	hourly	2026-02-14 15:42:49.943978
article-48902443	software developer	2026-02-07	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943979
article-48940985	artificial intelligence (AI) consultant	2026-02-07	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.94398
article-48902566	manager, computerized information systems	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943981
article-48942281	manager, computer applications	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943982
article-48902453	manager, IT (information technology) implementation	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943983
article-48902508	manager, computer applications	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943984
article-48941663	manager, IT (information technology) implementation	2026-02-07	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943985
article-48940439	data scientist	2026-02-06	Mississauga	ON	30	69.74	hourly	2026-02-14 15:42:49.943986
article-48941790	data scientist	2026-02-06	Toronto	ON	30	69.74	hourly	2026-02-14 15:42:49.943987
article-48912835	senior software developer	2026-02-06	Waterloo	ON	120	120	daily	2026-02-14 15:42:49.943987
article-48912857	software developer	2026-02-06	Toronto	ON	22	24	hourly	2026-02-14 15:42:49.943988
article-48942399	information technology (IT) director	2026-02-06	Montréal	QC	43.75	103.37	hourly	2026-02-14 15:42:49.943989
article-48941259	manager, IT (information technology) implementation	2026-02-06	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.94399
article-48942339	manager, data processing and systems analysis	2026-02-05	Montréal	QC	43.75	103.37	hourly	2026-02-14 15:42:49.943991
article-48942111	manager, computer applications	2026-02-05	Montréal	QC	43.75	103.37	hourly	2026-02-14 15:42:49.943991
article-48941787	data scientist	2026-02-04	Mississauga	ON	30	69.74	hourly	2026-02-14 15:42:49.943992
article-48942011	manager, database	2026-02-04	Toronto	ON	25	61.03	hourly	2026-02-14 15:42:49.943993
article-48810400	software developer	2026-02-04	Vancouver	BC	80000	80000	annually	2026-02-14 15:42:49.943994
article-48941135	manager, computer systems	2026-02-04	Toronto	ON	43.75	103.37	hourly	2026-02-14 15:42:49.943994
article-48941449	data analyst - informatics and systems	2026-02-03	Toronto	ON	25	61.03	hourly	2026-02-14 15:42:49.943996
article-48940711	senior software developer	2026-02-03	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.943997
article-48941755	software developer	2026-02-02	Toronto	ON	25	63	hourly	2026-02-14 15:42:49.943997
article-48941890	data scientist	2026-02-02	Toronto	ON	26	78	hourly	2026-02-14 15:42:49.943998
article-48942356	artificial intelligence (AI) consultant	2026-02-02	Toronto	ON	26	78	hourly	2026-02-14 15:42:49.943999
article-48942227	manager, IT (information technology) implementation	2026-02-02	London	ON	43.75	103.37	hourly	2026-02-14 15:42:49.944
article-48910881	artificial intelligence (AI) consultant	2026-02-02	Calgary	AB	26	78	hourly	2026-02-14 15:42:49.944001
article-48902580	manager, computer applications	2026-02-02	Toronto	ON	40	92	hourly	2026-02-14 15:42:49.944002
article-48943660	director of technology management	2026-02-02	Toronto	ON	40	92	hourly	2026-02-14 15:42:49.944003
article-48941695	software developer	2026-02-01	Vancouver	BC	30	76.92	hourly	2026-02-14 15:42:49.944004
article-48919769	software developer	2026-02-01	Toronto	ON	21.12	21.12	hourly	2026-02-14 15:42:49.944004
article-48911877	software developer	2026-01-30	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944005
article-48856788	software developer	2026-01-30	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944006
article-48857628	software developer	2026-01-30	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944007
article-48911865	software developer	2026-01-30	Toronto	ON	100000	130000	annually	2026-02-14 15:42:49.944007
article-48911878	software developer	2026-01-30	Vaughan	ON	100000	100000	annually	2026-02-14 15:42:49.944008
article-48857652	software developer	2026-01-30	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944009
article-48911821	software developer	2026-01-30	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.94401
article-48911600	software developer	2026-01-30	Westmount	QC	100000	1350000	annually	2026-02-14 15:42:49.944011
article-48940474	manager, IT (information technology) implementation	2026-01-30	Cambridge	ON	40	92	hourly	2026-02-14 15:42:49.944011
article-48858885	software developer	2026-01-29	Toronto	ON	130000	130000	annually	2026-02-14 15:42:49.944012
article-48859325	software developer	2026-01-29	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944013
article-48856669	software developer	2026-01-29	Toronto	ON	75000	110000	annually	2026-02-14 15:42:49.944014
article-48941092	senior software developer	2026-01-29	Toronto	ON	30	76.92	hourly	2026-02-14 15:42:49.944015
article-48940431	manager, IT (information technology) implementation	2026-01-29	Edmonton	AB	43.75	103.37	hourly	2026-02-14 15:42:49.944016
article-48911559	software developer	2026-01-28	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944017
article-48911811	software developer	2026-01-28	Westmount	QC	90000	1250000	annually	2026-02-14 15:42:49.944018
article-48911651	machine learning engineer	2026-01-28	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944018
article-48911815	software developer	2026-01-27	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944019
article-48911586	software developer	2026-01-27	Toronto	ON	21.12	21.12	hourly	2026-02-14 15:42:49.94402
article-48858684	software developer	2026-01-24	Toronto	ON	100000	100000	annually	2026-02-14 15:42:49.944021
article-48857137	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944022
article-48859113	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944022
article-48858015	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944023
article-48856298	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944024
article-48858056	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944025
article-48858394	software developer	2026-01-24	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944025
article-48917935	cloud operations manager	2026-01-24	London	ON	70000	70000	annually	2026-02-14 15:42:49.944026
article-48857421	software developer	2026-01-23	Mississauga	ON	10000	10000	monthly	2026-02-14 15:42:49.944027
article-48900529	data engineer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944028
article-48911761	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944029
article-48911899	software developer	2026-01-22	Montréal	QC	110000	115000	annually	2026-02-14 15:42:49.944029
article-48859346	software developer	2026-01-22	Vancouver	BC	10000	10000	monthly	2026-02-14 15:42:49.94403
article-48911743	software developer	2026-01-22	Toronto	ON	10000	10000	monthly	2026-02-14 15:42:49.944031
article-48911556	software developer	2026-01-20	Cambridge	ON	40000	55000	annually	2026-02-14 15:42:49.944032
article-48911939	software developer	2026-01-17	Vancouver	BC	108992	130000	annually	2026-02-14 15:42:49.944032
article-48911948	data engineer	2026-01-16	Vancouver	BC	100000	100000	annually	2026-02-14 15:42:49.944033
article-48911795	software developer	2026-01-16	Toronto	ON	80000	80000	annually	2026-02-14 15:42:49.944034
article-48896158	data analyst - informatics and systems	2026-01-14	Surrey	BC	45	45	hourly	2026-02-14 15:42:49.944035
article-48927352	office supervisor	2026-01-13	Mississauga	ON	36.1	36.1	hourly	2026-02-14 15:42:49.944036
article-48896603	software developer	2026-01-05	North York	ON	97000	100000	annually	2026-02-14 15:42:49.944037
article-48893524	database analyst	2025-12-24	Scarborough	ON	45	45	hourly	2026-02-14 15:42:49.944037
article-48894577	data scientist	2025-12-18	Brampton	ON	48.38	48.38	hourly	2026-02-14 15:42:49.944039
article-48899494	software developer	2025-12-18	Fergus	ON	49	49	hourly	2026-02-14 15:42:49.944039
article-48921076	software developer	2025-12-08	Miller Lake	ON	50	50	hourly	2026-02-14 15:42:49.94404
article-48896288	interactive media developer	2025-11-21	Picton	ON	48.08	48.08	hourly	2026-02-14 15:42:49.944041
article-48896019	operations supervisor	2025-11-21	Québec	QC	55000	57000	annually	2026-02-14 15:42:49.944042
article-48922972	office supervisor	2025-11-14	Richmond	BC	38	38	hourly	2026-02-14 15:42:49.944043
article-48896029	computerized information systems manager	2025-11-04	Richmond	BC	72.12	72.12	hourly	2026-02-14 15:42:49.944044
article-48916918	software developer	2025-10-31	Victoria	BC	51.28	51.28	hourly	2026-02-14 15:42:49.944045
article-48894292	operations supervisor	2025-10-18	Various locations	\N	36	36	hourly	2026-02-14 15:42:49.944046
article-48923865	database analyst (DBA)	2025-10-17	Brampton	ON	45	45	hourly	2026-02-14 15:42:49.944046
article-48947577	Internet systems administrator	2026-02-15	Kuujjuaq	QC	52482	89256	annually	2026-02-15 15:38:55.239782
article-48947515	operations supervisor	2026-02-15	Saguenay	QC	39	43	hourly	2026-02-15 15:38:55.239784
article-48946297	operations supervisor	2026-02-14	Vancouver	BC	36.75	36.75	hourly	2026-02-15 15:38:55.239785
article-48946296	database analyst (DBA)	2026-02-14	Brampton	ON	45	45	hourly	2026-02-15 15:38:55.239785
article-48945823	manager, computer applications	2026-02-14	Toronto	ON	43.75	103.37	hourly	2026-02-15 15:38:55.239786
article-48945408	software engineering manager	2026-02-14	Toronto	ON	43.75	103.37	hourly	2026-02-15 15:38:55.239787
article-48945424	data mining analyst	2026-02-14	Montréal	QC	30	69.74	hourly	2026-02-15 15:38:55.239788
article-48945453	data scientist	2026-02-14	Mississauga	ON	30	69.74	hourly	2026-02-15 15:38:55.239789
article-48945462	data mining analyst	2026-02-14	Toronto	ON	30	69.74	hourly	2026-02-15 15:38:55.23979
article-48945466	data scientist	2026-02-14	Toronto	ON	30	69.74	hourly	2026-02-15 15:38:55.239791
article-48945468	software developer	2026-02-14	Toronto	ON	30	76.92	hourly	2026-02-15 15:38:55.239792
article-48945474	software developer	2026-02-14	Toronto	ON	30	76.92	hourly	2026-02-15 15:38:55.239793
article-48945475	data scientist	2026-02-14	Toronto	ON	30	69.74	hourly	2026-02-15 15:38:55.239793
article-48949749	operations supervisor	2026-02-15	Edmonton	AB	23	36	hourly	2026-02-16 15:56:21.406585
article-48948772	artificial intelligence (AI) consultant	2026-02-15	Calgary	AB	30	69.74	hourly	2026-02-16 15:56:21.406586
article-48948789	manager, computer applications	2026-02-15	Toronto	ON	43.75	103.37	hourly	2026-02-16 15:56:21.406587
article-48948828	manager, IT (information technology) implementation	2026-02-15	Toronto	ON	43.75	103.37	hourly	2026-02-16 15:56:21.406588
article-48948869	data scientist	2026-02-15	Toronto	ON	30	69.74	hourly	2026-02-16 15:56:21.406589
article-48948910	software developer	2026-02-15	Toronto	ON	30	76.92	hourly	2026-02-16 15:56:21.40659
article-48948926	director of technology management	2026-02-15	Vancouver	BC	43.75	103.37	hourly	2026-02-16 15:56:21.40659
article-48948987	software development manager	2026-02-15	Toronto	ON	43.75	103.37	hourly	2026-02-16 15:56:21.406592
article-48949034	manager, database	2026-02-15	Toronto	ON	25	61.03	hourly	2026-02-16 15:56:21.406593
article-48958505	operations supervisor	2026-02-17	Québec	QC	55000	57000	annually	2026-02-17 16:06:12.466045
article-48958488	operations supervisor	2026-02-17	Québec	QC	55000	57000	annually	2026-02-17 16:06:12.466046
article-48958462	software developer	2026-02-17	Toronto	ON	48.08	50	hourly	2026-02-17 16:06:12.466047
article-48958445	administrative supervisor	2026-02-17	Edmonton	AB	36	36	hourly	2026-02-17 16:06:12.466048
article-48957555	manager, IT (information technology) implementation	2026-02-17	London	ON	43.75	103.37	hourly	2026-02-17 16:06:12.466049
article-48957066	artificial intelligence (AI) consultant	2026-02-17	Montréal	QC	30	69.74	hourly	2026-02-17 16:06:12.46605
article-48956023	software developer	2026-02-16	Toronto	ON	30	76.92	hourly	2026-02-17 16:06:12.46605
article-48955876	data mining analyst	2026-02-16	Toronto	ON	30	69.74	hourly	2026-02-17 16:06:12.466052
article-48955666	office supervisor	2026-02-16	Surrey	BC	36.6	36.6	hourly	2026-02-17 16:06:12.466053
article-48954751	cybersecurity manager	2026-02-16	Laval	QC	26	30	hourly	2026-02-17 16:06:12.466054
article-48953947	office supervisor	2026-02-16	Montréal	QC	35	38	hourly	2026-02-17 16:06:12.466055
article-48953510	senior software developer	2026-02-16	Toronto	ON	30	76.92	hourly	2026-02-17 16:06:12.466055
article-48953621	database architect	2026-02-16	Mississauga	ON	25	61.03	hourly	2026-02-17 16:06:12.466056
article-48953638	data mining analyst	2026-02-16	Toronto	ON	30	69.74	hourly	2026-02-17 16:06:12.466057
article-48953658	data scientist	2026-02-16	Toronto	ON	30	69.74	hourly	2026-02-17 16:06:12.466058
article-48953664	data processing director	2026-02-16	Toronto	ON	43.75	103.37	hourly	2026-02-17 16:06:12.466058
article-48965199	software developer	2026-02-18	Brossard	QC	8667	8667	monthly	2026-02-18 16:06:19.167246
article-48963683	manager, computer applications	2026-02-18	Montréal	QC	43.75	103.37	hourly	2026-02-18 16:06:19.167247
article-48962647	Java programmer	2026-02-17	Toronto	ON	30	76.92	hourly	2026-02-18 16:06:19.167248
article-48962435	artificial intelligence (AI) consultant	2026-02-17	Toronto	ON	30	69.74	hourly	2026-02-18 16:06:19.167249
article-48961435	cybersecurity manager	2026-02-17	Sainte-Martine	QC	60000	80000	annually	2026-02-18 16:06:19.16725
article-48961133	computer game programmer	2026-02-17	Westmount	QC	99000	99000	annually	2026-02-18 16:06:19.167251
article-48960955	cloud developer	2026-02-17	Gloucester	ON	85000	95000	annually	2026-02-18 16:06:19.167251
article-48960022	cybersecurity manager	2026-02-17	Montréal	QC	67500	67500	annually	2026-02-18 16:06:19.167253
article-48958983	database designer	2026-02-17	Mississauga	ON	95000	95000	annually	2026-02-18 16:06:19.167254
article-48958666	manager, computer applications	2026-02-17	Toronto	ON	43.75	103.37	hourly	2026-02-18 16:06:19.167255
article-48958728	senior software developer	2026-02-17	Toronto	ON	30	76.92	hourly	2026-02-18 16:06:19.167255
article-48958784	manager, database	2026-02-17	Toronto	ON	25	61.03	hourly	2026-02-18 16:06:19.167256
article-48958789	data scientist	2026-02-17	Mississauga	ON	30	69.74	hourly	2026-02-18 16:06:19.167257
article-48958812	artificial intelligence (AI) consultant	2026-02-17	Toronto	ON	30	69.74	hourly	2026-02-18 16:06:19.167258
article-48971894	data administrator	2026-02-19	Lethbridge	AB	41	41	hourly	2026-02-19 16:02:47.134078
article-48971842	operations supervisor	2026-02-19	Mississauga	ON	36.5	36.5	hourly	2026-02-19 16:02:47.13408
article-48971467	office clerks supervisor	2026-02-19	Montréal	QC	38	39	hourly	2026-02-19 16:02:47.134081
article-48971257	DBA (database administrator)	2026-02-19	Granby	QC	35	35	hourly	2026-02-19 16:02:47.134081
article-48971216	artificial intelligence (AI) consultant	2026-02-19	Québec	QC	60000	800000	annually	2026-02-19 16:02:47.134082
article-48970166	supervisor, clinical receptionists	2026-02-19	Toronto	ON	38	38	hourly	2026-02-19 16:02:47.134083
article-48968971	manager, computer applications	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-19 16:02:47.134084
article-48967670	operations supervisor	2026-02-18	Brampton	ON	17.6	19	hourly	2026-02-19 16:02:47.134085
article-48967232	machine learning engineer	2026-02-18	Calgary	AB	80000	150000	annually	2026-02-19 16:02:47.134086
article-48967125	software developer	2026-02-18	Vancouver	BC	52.5	52.5	hourly	2026-02-19 16:02:47.134087
article-48967071	senior software developer	2026-02-18	Sherwood Park	AB	95000	100000	annually	2026-02-19 16:02:47.134088
article-48966939	cloud services manager	2026-02-18	North Bay	ON	25	27.5	hourly	2026-02-19 16:02:47.134089
article-48966867	cloud operations manager	2026-02-18	Toronto	ON	55000	75000	annually	2026-02-19 16:02:47.134089
article-48965305	director of technology management	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-19 16:02:47.13409
article-48965340	manager, data processing and systems analysis	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-19 16:02:47.134091
article-48965408	software developer	2026-02-18	Vancouver	BC	30	76.92	hourly	2026-02-19 16:02:47.134091
article-48965420	senior software developer	2026-02-18	Montréal	QC	30	76.92	hourly	2026-02-19 16:02:47.134092
article-48965508	manager, computer applications	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-19 16:02:47.134098
article-48965537	senior software developer	2026-02-18	Toronto	ON	30	76.92	hourly	2026-02-19 16:02:47.134099
article-48965546	data scientist	2026-02-18	Toronto	ON	30	69.74	hourly	2026-02-19 16:02:47.1341
article-48965565	senior software developer	2026-02-18	Toronto	ON	30	76.92	hourly	2026-02-19 16:02:47.1341
article-48965593	director of technology management	2026-02-18	Vancouver	BC	43.75	103.37	hourly	2026-02-19 16:02:47.134101
article-48965599	data mining analyst	2026-02-18	Montréal	QC	30	69.74	hourly	2026-02-19 16:02:47.134102
article-48965640	manager, computer systems	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-19 16:02:47.134103
article-48965783	director of technology management	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-19 16:02:47.134103
article-48965917	software developer	2026-02-18	Toronto	ON	30	76.92	hourly	2026-02-19 16:02:47.134104
article-48965925	senior software developer	2026-02-18	Calgary	AB	30	76.92	hourly	2026-02-19 16:02:47.134105
article-48965899	software developer	2026-02-18	Toronto	ON	30	76.92	hourly	2026-02-19 16:02:47.134106
article-48965933	manager, computer applications	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-19 16:02:47.134106
article-48965920	artificial intelligence (AI) consultant	2026-02-18	Toronto	ON	30	69.74	hourly	2026-02-19 16:02:47.134107
article-48965948	manager, computer systems development	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-19 16:02:47.134108
article-48965952	manager, computer applications	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-19 16:02:47.134109
article-48965908	manager, computer applications	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-19 16:02:47.134109
article-48970310	software developer	2026-02-18	Calgary	AB	64142.32	86906.9	annually	2026-02-19 16:02:47.13411
article-48969701	operations supervisor	2026-02-18	Uxbridge	ON	30	35	hourly	2026-02-19 16:02:47.134111
article-48956352	data scientist	2026-02-17	Toronto	ON	26	78	hourly	2026-02-19 16:02:47.134112
article-48956354	manager, data processing and systems analysis	2026-02-17	Toronto	ON	40	92	hourly	2026-02-19 16:02:47.134112
article-48956325	director of technology management	2026-02-17	Toronto	ON	40	92	hourly	2026-02-19 16:02:47.134113
article-48975716	software developer	2026-02-19	Toronto	ON	30	76.92	hourly	2026-02-20 15:52:10.24797
article-48974590	database analyst (DBA)	2026-02-19	Port Coquitlam	BC	27.5	27.5	hourly	2026-02-20 15:52:10.247971
article-48974411	operations supervisor	2026-02-19	Richmond	BC	58000	62000	annually	2026-02-20 15:52:10.247972
article-48974459	business systems manager	2026-02-19	Abbotsford	BC	100000	125000	annually	2026-02-20 15:52:10.247973
article-48973603	office clerks supervisor	2026-02-19	Edmonton	AB	36	36	hourly	2026-02-20 15:52:10.247974
article-48973183	office supervisor	2026-02-19	Coquitlam	BC	33.5	33.5	hourly	2026-02-20 15:52:10.247974
article-48972381	application programmer	2026-02-19	Ottawa	ON	80000	100000	annually	2026-02-20 15:52:10.247975
article-48971937	artificial intelligence (AI) consultant	2026-02-19	Calgary	AB	30	69.74	hourly	2026-02-20 15:52:10.247977
article-48972001	senior software developer	2026-02-19	Mississauga	ON	30	76.92	hourly	2026-02-20 15:52:10.247978
article-48972055	operations supervisor	2026-02-19	Vernon	BC	22	46	hourly	2026-02-20 15:52:10.247979
article-48972071	software developer	2026-02-19	Toronto	ON	30	76.92	hourly	2026-02-20 15:52:10.247979
article-48972077	data scientist	2026-02-19	Toronto	ON	30	69.74	hourly	2026-02-20 15:52:10.24798
article-48972113	data scientist	2026-02-19	Toronto	ON	30	69.74	hourly	2026-02-20 15:52:10.247981
article-48972124	data processing director	2026-02-19	Toronto	ON	43.75	103.37	hourly	2026-02-20 15:52:10.247982
article-48965932	data scientist	2026-02-18	Toronto	ON	30	69.74	hourly	2026-02-20 15:52:10.247982
article-48965848	senior software developer	2026-02-18	Calgary	AB	30	76.92	hourly	2026-02-20 15:52:10.247983
article-48965919	software developer	2026-02-18	Toronto	ON	30	76.92	hourly	2026-02-20 15:52:10.247984
article-48965935	software development manager	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-20 15:52:10.247985
article-48965930	software development manager	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-20 15:52:10.247986
article-48965868	manager, data processing and systems analysis	2026-02-18	Toronto	ON	43.75	103.37	hourly	2026-02-20 15:52:10.247987
article-48976715	software developer	2026-02-18	Calgary	AB	64142.32	86906.9	annually	2026-02-20 15:52:10.247987
article-48983062	computer projects manager	2026-02-21	Québec	QC	75000	100000	annually	2026-02-21 15:38:02.564169
article-48982441	cloud developer	2026-02-21	Mississauga	ON	120000	300000	annually	2026-02-21 15:38:02.56417
article-48981459	data mining analyst	2026-02-20	Toronto	ON	30	69.74	hourly	2026-02-21 15:38:02.564171
article-48981475	manager, data processing and systems analysis	2026-02-20	Toronto	ON	43.75	103.37	hourly	2026-02-21 15:38:02.564172
article-48981486	artificial intelligence (AI) consultant	2026-02-20	Toronto	ON	30	69.74	hourly	2026-02-21 15:38:02.564173
article-48979799	cloud operations manager	2026-02-20	Brockville	ON	65000	70000	annually	2026-02-21 15:38:02.564174
article-48979556	cloud developer	2026-02-20	Kirkland	QC	65000	65000	annually	2026-02-21 15:38:02.564174
article-48979237	cloud developer	2026-02-20	North York	ON	55000	60000	annually	2026-02-21 15:38:02.564176
article-48979269	data architect	2026-02-20	Toronto	ON	70	80	hourly	2026-02-21 15:38:02.564177
article-48978099	artificial intelligence (AI) consultant	2026-02-20	Mississauga	ON	30	69.74	hourly	2026-02-21 15:38:02.564178
article-48978116	director of technology management	2026-02-20	Toronto	ON	43.75	103.37	hourly	2026-02-21 15:38:02.564179
article-48978151	senior software developer	2026-02-20	Toronto	ON	30	76.92	hourly	2026-02-21 15:38:02.564179
article-48978264	manager, database	2026-02-20	Toronto	ON	25	61.03	hourly	2026-02-21 15:38:02.56418
article-48978287	senior software developer	2026-02-20	Toronto	ON	30	76.92	hourly	2026-02-21 15:38:02.564181
article-48978322	senior software developer	2026-02-20	Toronto	ON	30	76.92	hourly	2026-02-21 15:38:02.564181
article-48978387	director of software engineering	2026-02-20	Mississauga	ON	43.75	103.37	hourly	2026-02-21 15:38:02.564182
article-48978559	senior software developer	2026-02-20	Vancouver	BC	30	76.92	hourly	2026-02-21 15:38:02.564183
article-48985203	data mining analyst	2026-02-21	Toronto	ON	30	69.74	hourly	2026-02-22 15:39:03.710421
article-48985215	data scientist	2026-02-21	Toronto	ON	30	69.74	hourly	2026-02-22 15:39:03.710422
article-48984290	artificial intelligence (AI) consultant	2026-02-21	Toronto	ON	30	69.74	hourly	2026-02-22 15:39:03.710423
article-48984010	data scientist	2026-02-21	Toronto	ON	30	69.74	hourly	2026-02-22 15:39:03.710424
article-48983318	software engineering manager	2026-02-21	Toronto	ON	43.75	103.37	hourly	2026-02-22 15:39:03.710424
article-48983333	software developer	2026-02-21	Vancouver	BC	30	76.92	hourly	2026-02-22 15:39:03.710425
article-48983343	manager, computer applications	2026-02-21	Toronto	ON	43.75	103.37	hourly	2026-02-22 15:39:03.710426
article-48983385	artificial intelligence (AI) consultant	2026-02-21	Toronto	ON	30	69.74	hourly	2026-02-22 15:39:03.710428
article-48983448	director of technology management	2026-02-21	Vancouver	BC	43.75	103.37	hourly	2026-02-22 15:39:03.710429
article-48983539	data scientist	2026-02-21	Mississauga	ON	30	69.74	hourly	2026-02-22 15:39:03.71043
article-48983543	manager, computer applications	2026-02-21	Toronto	ON	43.75	103.37	hourly	2026-02-22 15:39:03.71043
article-48990650	systems manager - computer systems	2026-02-23	Etobicoke	ON	4080	4080	weekly	2026-02-23 15:59:53.4167
article-48989880	systems implementation manager - computer systems	2026-02-23	Saint-Georges	QC	35	45	hourly	2026-02-23 15:59:53.416702
article-48986574	senior software developer	2026-02-22	Toronto	ON	30	76.92	hourly	2026-02-23 15:59:53.416703
article-48986632	senior software developer	2026-02-22	Toronto	ON	30	76.92	hourly	2026-02-23 15:59:53.416703
article-48986658	data scientist	2026-02-22	Toronto	ON	30	69.74	hourly	2026-02-23 15:59:53.416704
article-48986666	software developer	2026-02-22	Toronto	ON	30	76.92	hourly	2026-02-23 15:59:53.416705
article-48981792	artificial intelligence (AI) consultant	2026-02-21	Montréal	QC	30	69.74	hourly	2026-02-23 15:59:53.416705
article-48997847	manager, computer systems	2026-02-24	Toronto	ON	43.75	103.37	hourly	2026-02-24 16:12:49.739257
article-48998053	data mining analyst	2026-02-24	Montréal	QC	30	69.74	hourly	2026-02-24 16:12:49.739258
article-48998072	senior software developer	2026-02-24	Toronto	ON	30	76.92	hourly	2026-02-24 16:12:49.739259
article-48998075	director of software engineering	2026-02-24	Mississauga	ON	43.75	103.37	hourly	2026-02-24 16:12:49.73926
article-48998081	database architect	2026-02-24	Mississauga	ON	25	61.03	hourly	2026-02-24 16:12:49.739261
article-48998083	data mining analyst	2026-02-24	Montréal	QC	30	69.74	hourly	2026-02-24 16:12:49.739262
article-48998089	director of technology management	2026-02-24	Toronto	ON	43.75	103.37	hourly	2026-02-24 16:12:49.739262
article-48998106	senior software developer	2026-02-24	Calgary	AB	30	76.92	hourly	2026-02-24 16:12:49.739264
article-48998118	software developer	2026-02-24	Toronto	ON	30	76.92	hourly	2026-02-24 16:12:49.739265
article-48998142	software developer	2026-02-24	Toronto	ON	30	76.92	hourly	2026-02-24 16:12:49.739266
article-48998148	software developer	2026-02-24	Toronto	ON	30	76.92	hourly	2026-02-24 16:12:49.739267
article-48998161	data analyst - informatics and systems	2026-02-24	Toronto	ON	25	61.03	hourly	2026-02-24 16:12:49.739267
article-48997956	software programmer	2026-02-24	Toronto	ON	21	21	hourly	2026-02-24 16:12:49.739268
article-48998067	computer development division head	2026-02-24	Saint-Césaire	QC	50000	60000	annually	2026-02-24 16:12:49.739269
article-48997797	operations supervisor	2026-02-24	Edmonton	AB	37.5	37.5	hourly	2026-02-24 16:12:49.73927
article-48997188	operations supervisor	2026-02-24	Trois-Rivières	QC	50000	75000	annually	2026-02-24 16:12:49.73927
article-48995670	senior software developer	2026-02-24	London	ON	65000	65000	annually	2026-02-24 16:12:49.739271
article-48995333	computer programs manager	2026-02-24	Val-d'Or	QC	40.92	53.99	hourly	2026-02-24 16:12:49.739272
article-48994820	manager, computer applications	2026-02-23	Toronto	ON	43.75	103.37	hourly	2026-02-24 16:12:49.739273
article-48994499	operations supervisor	2026-02-23	Laval	QC	90000	90000	annually	2026-02-24 16:12:49.739273
article-48992790	office supervisor	2026-02-23	Burnaby	BC	6275	6275	monthly	2026-02-24 16:12:49.739274
article-48990729	cybersecurity manager	2026-02-23	Saint-Lambert	QC	24	26	hourly	2026-02-24 16:12:49.739275
article-48990694	senior software developer	2026-02-23	Toronto	ON	30	76.92	hourly	2026-02-24 16:12:49.739275
article-48990875	software developer	2026-02-23	Toronto	ON	30	76.92	hourly	2026-02-24 16:12:49.739276
article-48990928	data mining analyst	2026-02-23	Toronto	ON	30	69.74	hourly	2026-02-24 16:12:49.739277
article-48990974	manager, computer applications	2026-02-23	Toronto	ON	43.75	103.37	hourly	2026-02-24 16:12:49.739278
article-48996382	software developer	2026-02-23	Toronto	ON	200000	325000	annually	2026-02-24 16:12:49.739279
article-48996155	software developer	2026-02-23	Toronto	ON	10000	10000	monthly	2026-02-24 16:12:49.739279
article-48996345	software developer	2026-02-23	Toronto	ON	10000	10000	monthly	2026-02-24 16:12:49.73928
article-48996683	software developer	2026-02-23	Ottawa	ON	200	200	daily	2026-02-24 16:12:49.739281
article-48996501	software developer	2026-02-23	Toronto	ON	101	101	daily	2026-02-24 16:12:49.739281
article-48996456	software developer	2026-02-22	Montréal	QC	75000	75000	annually	2026-02-24 16:12:49.739282
article-48996625	software developer	2026-02-22	Toronto	ON	21.12	21.12	hourly	2026-02-24 16:12:49.739283
article-48985505	manager, IT (information technology) implementation	2026-02-22	London	ON	43.75	103.37	hourly	2026-02-24 16:12:49.739284
article-48996118	software developer	2026-02-21	Toronto	ON	10000	10000	monthly	2026-02-24 16:12:49.739284
article-48995164	operations supervisor	2026-02-21	Mississauga	ON	18	20	hourly	2026-02-24 16:12:49.739285
article-48996653	operations supervisor	2026-02-21	Mississauga	ON	50000	50000	annually	2026-02-24 16:12:49.739286
article-48996088	software developer	2026-02-20	Brampton	ON	10000	10000	monthly	2026-02-24 16:12:49.739286
article-48996668	software developer	2026-02-20	Toronto	ON	10000	10000	monthly	2026-02-24 16:12:49.739287
article-48996600	data engineer	2026-02-19	Toronto	ON	80000	130000	annually	2026-02-24 16:12:49.739288
article-48996286	software developer	2026-02-19	Toronto	ON	10000	10000	monthly	2026-02-24 16:12:49.739288
article-48996637	software developer	2026-02-19	Toronto	ON	10000	10000	monthly	2026-02-24 16:12:49.739289
article-48996531	software developer	2026-02-19	Toronto	ON	90000	110000	annually	2026-02-24 16:12:49.73929
article-48996329	software developer	2026-02-19	Toronto	ON	90000	90000	annually	2026-02-24 16:12:49.739291
article-48996538	software developer	2026-02-19	Toronto	ON	10000	10000	monthly	2026-02-24 16:12:49.739291
article-48996357	software developer	2026-02-19	Toronto	ON	75000	85000	annually	2026-02-24 16:12:49.739292
article-48996513	software developer	2026-02-19	Toronto	ON	75000	75000	annually	2026-02-24 16:12:49.739293
article-48997932	cloud services manager	2026-02-18	North Bay	ON	25	27.5	hourly	2026-02-24 16:12:49.739294
article-48996575	software developer	2026-02-17	Toronto	ON	22	24	hourly	2026-02-24 16:12:49.739294
article-48996581	software developer	2026-02-17	Montréal	QC	76000108544	76000108544	annually	2026-02-24 16:12:49.739295
article-48981872	director of technology management	2026-02-17	Toronto	ON	40	92	hourly	2026-02-24 16:12:49.739296
article-48981784	manager, computer applications	2026-02-17	Toronto	ON	40	92	hourly	2026-02-24 16:12:49.739296
article-48996634	software developer	2026-02-16	Toronto	ON	18.35	18.35	hourly	2026-02-24 16:12:49.739297
article-48996224	software developer	2026-02-15	Toronto	ON	200	200	daily	2026-02-24 16:12:49.739298
article-48996237	data scientist	2026-02-14	Ottawa	ON	100000	100000	annually	2026-02-24 16:12:49.739299
article-48996317	software developer	2026-02-13	Toronto	ON	10000	10000	monthly	2026-02-24 16:12:49.739301
article-48996821	software developer	2026-02-13	Vancouver	BC	140000	165000	annually	2026-02-24 16:12:49.739302
article-48996565	software developer	2026-02-13	Vancouver	BC	75000	75000	annually	2026-02-24 16:12:49.739304
article-48996252	software developer	2026-02-13	Bolton	ON	17.75	17.75	hourly	2026-02-24 16:12:49.739305
article-48996320	software developer	2026-02-12	Montréal	QC	70	100	hourly	2026-02-24 16:12:49.739306
article-48928310	cloud developer	2026-02-11	Calgary	AB	55000	65000	annually	2026-02-24 16:12:49.739308
article-48996260	software developer	2026-02-11	London	ON	10000	10000	monthly	2026-02-24 16:12:49.739309
article-48996467	software developer	2026-02-11	London	ON	10000	10000	monthly	2026-02-24 16:12:49.739311
article-48996448	software developer	2026-02-11	Toronto	ON	10000	10000	monthly	2026-02-24 16:12:49.739312
article-48996559	software developer	2026-02-11	London	ON	10000	10000	monthly	2026-02-24 16:12:49.739313
article-48992085	manager, IT (information technology) implementation	2026-02-10	Toronto	ON	81442	146641	annually	2026-02-24 16:12:49.739315
article-49006872	data centre operator	2026-02-25	Edmonton	AB	20	48	hourly	2026-02-26 05:17:52.314995
article-49006638	software developer	2026-02-25	Waterloo	ON	70	90	hourly	2026-02-26 05:17:52.314997
article-49006345	software development manager	2026-02-25	Vancouver	BC	50.48	50.48	hourly	2026-02-26 05:17:52.314998
article-49006241	operations supervisor	2026-02-25	Wildcat	AB	36	36	hourly	2026-02-26 05:17:52.314999
article-49006170	operations supervisor	2026-02-25	Carp	ON	54000	54000	annually	2026-02-26 05:17:52.315
article-49005153	software developer	2026-02-25	Toronto	ON	10000	10000	monthly	2026-02-26 05:17:52.315
article-49005175	software developer	2026-02-25	North Vancouver	BC	21.84	21.84	hourly	2026-02-26 05:17:52.315001
article-49004047	data analyst - informatics and systems	2026-02-25	Montréal	QC	71687	71687	annually	2026-02-26 05:17:52.315003
article-49003986	senior software developer	2026-02-25	Toronto	ON	30	76.92	hourly	2026-02-26 05:17:52.315004
article-49003993	artificial intelligence (AI) consultant	2026-02-25	Calgary	AB	30	69.74	hourly	2026-02-26 05:17:52.315005
article-49004007	manager, computer applications	2026-02-25	Toronto	ON	43.75	103.37	hourly	2026-02-26 05:17:52.315005
article-49004064	artificial intelligence (AI) consultant	2026-02-25	Toronto	ON	30	69.74	hourly	2026-02-26 05:17:52.315006
article-49004071	software developer	2026-02-25	Toronto	ON	30	76.92	hourly	2026-02-26 05:17:52.315007
article-49004116	data scientist	2026-02-25	Toronto	ON	30	69.74	hourly	2026-02-26 05:17:52.315008
article-49004142	data scientist	2026-02-25	Toronto	ON	30	69.74	hourly	2026-02-26 05:17:52.315008
article-49004145	artificial intelligence (AI) consultant	2026-02-25	Toronto	ON	30	69.74	hourly	2026-02-26 05:17:52.315009
article-49004146	software developer	2026-02-25	Toronto	ON	30	76.92	hourly	2026-02-26 05:17:52.31501
article-49004152	software development manager	2026-02-25	Toronto	ON	43.75	103.37	hourly	2026-02-26 05:17:52.315011
article-49004156	artificial intelligence (AI) consultant	2026-02-25	Toronto	ON	30	69.74	hourly	2026-02-26 05:17:52.315011
article-49004163	manager, computer systems development	2026-02-25	Toronto	ON	43.75	103.37	hourly	2026-02-26 05:17:52.315012
article-49003689	night supervisor, telephone system	2026-02-25	Saint-Césaire	QC	24.92	30.28	hourly	2026-02-26 05:17:52.315013
article-49002603	cloud developer	2026-02-25	Mississauga	ON	56.41	101.04	hourly	2026-02-26 05:17:52.315014
article-49001377	computer department coordinator	2026-02-24	Saguenay	QC	45.57	59.96	hourly	2026-02-26 05:17:52.315014
article-49000273	mobile applications developer	2026-02-24	Windsor	ON	18	23	hourly	2026-02-26 05:17:52.315015
article-48998546	manager, data processing and systems analysis	2026-02-24	Toronto	ON	43.75	103.37	hourly	2026-02-26 05:17:52.315016
article-48998657	data analyst - informatics and systems	2026-02-24	Toronto	ON	25	61.03	hourly	2026-02-26 05:17:52.315017
article-49005142	software developer	2026-02-24	Toronto	ON	55	60	hourly	2026-02-26 05:17:52.315018
article-49005194	software developer	2026-02-24	Vancouver	BC	50000	75000	annually	2026-02-26 05:17:52.315018
article-49005157	software developer	2026-02-24	Toronto	ON	200000	325000	annually	2026-02-26 05:17:52.315019
article-49005349	software developer	2026-02-24	Toronto	ON	80	90	hourly	2026-02-26 05:17:52.31502
article-49005184	software developer	2026-02-24	Toronto	ON	10000	10000	monthly	2026-02-26 05:17:52.31502
article-49005313	software developer	2026-02-24	Toronto	ON	10000	10000	monthly	2026-02-26 05:17:52.315021
article-49005290	software developer	2026-02-24	Toronto	ON	90000	110000	annually	2026-02-26 05:17:52.315022
article-48990935	manager, IT (information technology) implementation	2026-02-23	Mississauga	ON	43.75	103.37	hourly	2026-02-26 05:17:52.315022
article-49005090	data engineer	2026-02-20	Vancouver	BC	160000	180000	annually	2026-02-26 05:17:52.315023
article-49009038	software developer	2026-02-25	Vancouver	BC	115000	115000	annually	2026-02-26 16:05:14.203308
article-49009172	data architect	2026-02-25	Toronto	ON	150000	150000	annually	2026-02-26 16:05:14.20331
article-48998558	manager, data processing and systems analysis	2026-02-24	Toronto	ON	43.75	103.37	hourly	2026-02-26 16:05:14.203312
article-49009160	data engineer	2026-02-24	Toronto	ON	69	79	hourly	2026-02-26 16:05:14.203313
article-49016213	data scientist	2026-02-27	London	ON	30	69.74	hourly	2026-02-27 15:51:49.898843
article-49015728	software developer	2026-02-27	Toronto	ON	10000	10000	monthly	2026-02-27 15:51:49.898846
article-49015651	software developer	2026-02-27	Edmonton	AB	40	40	hourly	2026-02-27 15:51:49.89885
article-49015685	software developer	2026-02-27	Edmonton	AB	4050	4050	monthly	2026-02-27 15:51:49.898851
article-49015084	computer projects manager	2026-02-27	Québec	QC	85000	100000	annually	2026-02-27 15:51:49.898853
article-49014069	manager, IT (information technology) implementation	2026-02-26	Toronto	ON	43.75	103.37	hourly	2026-02-27 15:51:49.898854
article-49012879	office supervisor	2026-02-26	Tweed	ON	31	31	hourly	2026-02-27 15:51:49.898856
article-49012797	data scientist	2026-02-26	Woodbridge	ON	46.5	47.5	hourly	2026-02-27 15:51:49.898858
article-49012142	information technology (IT) service delivery manager	2026-02-26	Thunder Bay	ON	119721.79	140849.21	annually	2026-02-27 15:51:49.89886
article-49012075	data scientist	2026-02-26	Toronto	ON	30	69.74	hourly	2026-02-27 15:51:49.898861
article-49011528	operations supervisor	2026-02-26	North Saanich	BC	37	37	hourly	2026-02-27 15:51:49.898862
article-49011432	operations supervisor	2026-02-26	Victoria	BC	37	37	hourly	2026-02-27 15:51:49.898863
article-49010322	manager, computer applications	2026-02-26	Toronto	ON	43.75	103.37	hourly	2026-02-27 15:51:49.898865
article-49010329	director of technology management	2026-02-26	Toronto	ON	43.75	103.37	hourly	2026-02-27 15:51:49.898866
article-49010428	senior software developer	2026-02-26	Calgary	AB	30	76.92	hourly	2026-02-27 15:51:49.898867
article-49010456	manager, computer applications	2026-02-26	Toronto	ON	43.75	103.37	hourly	2026-02-27 15:51:49.898868
article-49010464	data mining analyst	2026-02-26	Mississauga	ON	30	69.74	hourly	2026-02-27 15:51:49.898869
article-49010484	director of technology management	2026-02-26	Vancouver	BC	43.75	103.37	hourly	2026-02-27 15:51:49.898871
article-49010488	artificial intelligence (AI) consultant	2026-02-26	Toronto	ON	30	69.74	hourly	2026-02-27 15:51:49.898872
article-49010495	data scientist	2026-02-26	Toronto	ON	30	69.74	hourly	2026-02-27 15:51:49.898873
article-49010502	senior software developer	2026-02-26	Toronto	ON	30	76.92	hourly	2026-02-27 15:51:49.898874
article-49010510	database architect	2026-02-26	Mississauga	ON	25	61.03	hourly	2026-02-27 15:51:49.898876
article-49010513	data mining analyst	2026-02-26	Montréal	QC	30	69.74	hourly	2026-02-27 15:51:49.898877
article-49010523	data mining analyst	2026-02-26	Toronto	ON	30	69.74	hourly	2026-02-27 15:51:49.898878
article-49010527	senior software developer	2026-02-26	Calgary	AB	30	76.92	hourly	2026-02-27 15:51:49.89888
article-49010557	manager, computer applications	2026-02-26	Toronto	ON	43.75	103.37	hourly	2026-02-27 15:51:49.898881
article-49010551	artificial intelligence (AI) consultant	2026-02-26	Toronto	ON	30	69.74	hourly	2026-02-27 15:51:49.898882
article-49010547	artificial intelligence (AI) consultant	2026-02-26	Toronto	ON	30	69.74	hourly	2026-02-27 15:51:49.898883
article-49015652	software developer	2026-02-26	Toronto	ON	6069	6069	monthly	2026-02-27 15:51:49.898884
article-49015687	software developer	2026-02-26	Toronto	ON	60	60	hourly	2026-02-27 15:51:49.898885
article-49015667	software developer	2026-02-25	Toronto	ON	19.75	19.75	hourly	2026-02-27 15:51:49.898886
article-49015722	software developer	2026-02-25	Toronto	ON	19.75	19.75	hourly	2026-02-27 15:51:49.898886
article-49021367	office supervisor	2026-02-28	Québec	QC	29	31	hourly	2026-02-28 15:34:55.392524
article-49021269	data mining analyst	2026-02-28	Toronto	ON	30	69.74	hourly	2026-02-28 15:34:55.39254
article-49021157	manager, data processing and systems analysis	2026-02-28	Toronto	ON	43.75	103.37	hourly	2026-02-28 15:34:55.392542
article-49020618	data mining analyst	2026-02-28	Montréal	QC	30	69.74	hourly	2026-02-28 15:34:55.392543
article-49019920	senior software developer	2026-02-27	Toronto	ON	30	76.92	hourly	2026-02-28 15:34:55.392544
article-49019594	manager, data processing and systems analysis	2026-02-27	Toronto	ON	43.75	103.37	hourly	2026-02-28 15:34:55.392546
article-49019637	data analyst - informatics and systems	2026-02-27	Burlington	ON	25	61.03	hourly	2026-02-28 15:34:55.392547
article-49019647	manager, data processing and systems analysis	2026-02-27	Toronto	ON	43.75	103.37	hourly	2026-02-28 15:34:55.39255
article-49019444	help desk manager - information technology (IT)	2026-02-27	Langley	BC	38.5	41.5	hourly	2026-02-28 15:34:55.392551
article-49019224	data scientist	2026-02-27	Mississauga	ON	30	69.74	hourly	2026-02-28 15:34:55.392553
article-49018752	DBA (database administrator)	2026-02-27	Laval	QC	45	45	hourly	2026-02-28 15:34:55.392554
article-49018768	DBA (database administrator)	2026-02-27	Laval	QC	50	50	hourly	2026-02-28 15:34:55.392555
article-49018784	data scientist	2026-02-27	Toronto	ON	30	69.74	hourly	2026-02-28 15:34:55.392556
article-49018681	database analyst (DBA)	2026-02-27	Vancouver	BC	45	45	hourly	2026-02-28 15:34:55.392558
article-49017988	information technology (IT) implementation manager	2026-02-27	Toronto	ON	5415.2	5415.2	weekly	2026-02-28 15:34:55.392559
article-49016844	manager, computer systems	2026-02-27	Toronto	ON	43.75	103.37	hourly	2026-02-28 15:34:55.39256
article-49016862	manager, data processing and systems analysis	2026-02-27	Toronto	ON	43.75	103.37	hourly	2026-02-28 15:34:55.392562
article-49016912	senior software developer	2026-02-27	Montréal	QC	30	76.92	hourly	2026-02-28 15:34:55.392563
article-49016921	artificial intelligence (AI) consultant	2026-02-27	Calgary	AB	30	69.74	hourly	2026-02-28 15:34:55.392564
article-49016924	senior software developer	2026-02-27	Toronto	ON	30	76.92	hourly	2026-02-28 15:34:55.392566
article-49016943	manager, computer applications	2026-02-27	Toronto	ON	43.75	103.37	hourly	2026-02-28 15:34:55.392567
article-49017053	software developer	2026-02-27	Toronto	ON	30	76.92	hourly	2026-02-28 15:34:55.392568
article-49017065	senior software developer	2026-02-27	Toronto	ON	30	76.92	hourly	2026-02-28 15:34:55.39257
article-49017067	software developer	2026-02-27	Montréal	QC	30	76.92	hourly	2026-02-28 15:34:55.392586
article-49017077	operations supervisor	2026-02-27	Vernon	BC	22	46	hourly	2026-02-28 15:34:55.392587
article-49017272	software developer	2026-02-27	Toronto	ON	30	76.92	hourly	2026-02-28 15:34:55.392589
article-49017270	artificial intelligence (AI) consultant	2026-02-27	Toronto	ON	30	69.74	hourly	2026-02-28 15:34:55.392591
article-49017084	data scientist	2026-02-27	Montréal	QC	30	69.74	hourly	2026-02-28 15:34:55.392592
article-49016796	software development programmer	2026-02-27	Edmonton	AB	41	41	hourly	2026-02-28 15:34:55.392593
article-49010535	manager, data processing	2026-02-26	Toronto	ON	43.75	103.37	hourly	2026-02-28 15:34:55.392594
article-49024446	artificial intelligence (AI) consultant	2026-03-01	Toronto	ON	30	69.74	hourly	2026-03-01 15:37:17.262076
article-49023084	data scientist	2026-02-28	Toronto	ON	30	69.74	hourly	2026-03-01 15:37:17.262078
article-49023089	manager, IT (information technology) implementation	2026-02-28	Toronto	ON	43.75	103.37	hourly	2026-03-01 15:37:17.262078
article-49023123	manager, IT (information technology) implementation	2026-02-28	Toronto	ON	43.75	103.37	hourly	2026-03-01 15:37:17.262079
article-49022348	operations supervisor	2026-02-28	Toronto	ON	22	46	hourly	2026-03-01 15:37:17.26208
article-49021478	manager, computer applications	2026-02-28	Toronto	ON	43.75	103.37	hourly	2026-03-01 15:37:17.262081
article-49021518	data scientist	2026-02-28	Mississauga	ON	30	69.74	hourly	2026-03-01 15:37:17.262082
article-49021570	artificial intelligence (AI) consultant	2026-02-28	Toronto	ON	30	69.74	hourly	2026-03-01 15:37:17.262083
article-49021621	director of technology management	2026-02-28	Toronto	ON	43.75	103.37	hourly	2026-03-01 15:37:17.262084
article-49021662	manager, computer applications	2026-02-28	Toronto	ON	43.75	103.37	hourly	2026-03-01 15:37:17.262085
article-49021666	senior software developer	2026-02-28	Toronto	ON	30	76.92	hourly	2026-03-01 15:37:17.262086
article-49021701	software development manager	2026-02-28	Toronto	ON	43.75	103.37	hourly	2026-03-01 15:37:17.262087
article-49021712	data scientist	2026-02-28	Toronto	ON	30	69.74	hourly	2026-03-01 15:37:17.262087
article-49021715	software developer	2026-02-28	Toronto	ON	30	76.92	hourly	2026-03-01 15:37:17.262088
article-49021716	artificial intelligence (AI) consultant	2026-02-28	Toronto	ON	30	69.74	hourly	2026-03-01 15:37:17.262089
article-49017125	data scientist	2026-02-27	Mississauga	ON	30	69.74	hourly	2026-03-01 15:37:17.26209
article-49017116	software developer	2026-02-27	Toronto	ON	30	76.92	hourly	2026-03-01 15:37:17.26209
article-49017088	director of software engineering	2026-02-27	Mississauga	ON	43.75	103.37	hourly	2026-03-01 15:37:17.262091
article-49027830	computer manager	2026-03-02	Vancouver	BC	200000	253650	annually	2026-03-02 15:55:22.618535
article-49027597	software engineering manager	2026-03-02	Mississauga	ON	43.75	103.37	hourly	2026-03-02 15:55:22.618537
article-49026306	data mining analyst	2026-03-01	Toronto	ON	30	69.74	hourly	2026-03-02 15:55:22.618538
article-49025912	developer, software	2026-03-01	Brossard	QC	60000	60000	annually	2026-03-02 15:55:22.618539
article-49025374	data analyst - informatics and systems	2026-03-01	Toronto	ON	25	61.03	hourly	2026-03-02 15:55:22.61854
article-49025379	data mining analyst	2026-03-01	Toronto	ON	30	69.74	hourly	2026-03-02 15:55:22.61854
article-49025149	data scientist	2026-03-01	Toronto	ON	30	69.74	hourly	2026-03-02 15:55:22.618541
article-49024832	artificial intelligence (AI) consultant	2026-03-01	Mississauga	ON	30	69.74	hourly	2026-03-02 15:55:22.618543
article-49024842	artificial intelligence (AI) consultant	2026-03-01	Toronto	ON	30	69.74	hourly	2026-03-02 15:55:22.618544
article-49024861	senior software developer	2026-03-01	Toronto	ON	30	76.92	hourly	2026-03-02 15:55:22.618545
article-49024897	data scientist	2026-03-01	Toronto	ON	30	69.74	hourly	2026-03-02 15:55:22.618545
article-49024995	software developer	2026-03-01	Toronto	ON	30	76.92	hourly	2026-03-02 15:55:22.618546
article-49027234	software developer	2026-02-28	Toronto	ON	10000	10000	monthly	2026-03-02 15:55:22.618547
article-49027247	software developer	2026-02-27	Vancouver	BC	120000	150000	annually	2026-03-02 15:55:22.618548
article-49027228	software developer	2026-02-27	Toronto	ON	10000	10000	monthly	2026-03-02 15:55:22.618548
article-49027377	software developer	2026-02-27	Medicine Hat	AB	27.33	27.33	hourly	2026-03-02 15:55:22.618549
article-49014328	artificial intelligence (AI) consultant	2026-02-27	Montréal	QC	30	69.74	hourly	2026-03-02 15:55:22.61855
article-49033989	operations supervisor	2026-03-03	Laval	QC	35	35	hourly	2026-03-03 15:59:03.728962
article-49033456	data scientist	2026-03-03	London	ON	30	69.74	hourly	2026-03-03 15:59:03.728964
article-49032991	manager, computer applications	2026-03-03	Montréal	QC	43.75	103.37	hourly	2026-03-03 15:59:03.728966
article-49031612	data scientist	2026-03-02	Toronto	ON	30	69.74	hourly	2026-03-03 15:59:03.728968
article-49030763	technical program manager - information technology (IT)	2026-03-02	Spruce Grove	AB	75000	95000	annually	2026-03-03 15:59:03.728969
article-49030159	information technology (IT) infrastructure engineering manager	2026-03-02	Kitchener	ON	70000	75000	annually	2026-03-03 15:59:03.72897
article-49030125	operations supervisor	2026-03-02	Mississauga	ON	32	32	hourly	2026-03-03 15:59:03.728972
article-49030031	mobile applications developer	2026-03-02	Calgary	AB	48	50	hourly	2026-03-03 15:59:03.728973
article-49029897	information technology (IT) director	2026-03-02	Surrey	BC	184488	184488	annually	2026-03-03 15:59:03.728974
article-49029902	computer projects manager	2026-03-02	Terrebonne	QC	48.91	65.91	hourly	2026-03-03 15:59:03.728975
article-49029844	database manager	2026-03-02	Abbotsford	BC	50	55	hourly	2026-03-03 15:59:03.728976
article-49029746	software developer	2026-03-02	Victoria	BC	51.28	51.28	hourly	2026-03-03 15:59:03.728977
article-49029542	computerized information systems manager	2026-03-02	Richmond	BC	72.12	72.12	hourly	2026-03-03 15:59:03.728978
article-49029526	office supervisor	2026-03-02	Mississauga	ON	36	36	hourly	2026-03-03 15:59:03.728979
article-49028849	data analyst - informatics and systems	2026-03-02	Richmond Hill	ON	45	45	hourly	2026-03-03 15:59:03.728979
article-49028594	senior software developer	2026-03-02	Toronto	ON	30	76.92	hourly	2026-03-03 15:59:03.72898
article-49028602	software developer	2026-03-02	Toronto	ON	30	76.92	hourly	2026-03-03 15:59:03.728981
article-49028612	director of technology management	2026-03-02	Toronto	ON	43.75	103.37	hourly	2026-03-03 15:59:03.728982
article-49028614	senior software developer	2026-03-02	Toronto	ON	30	76.92	hourly	2026-03-03 15:59:03.728982
article-49028634	data analyst - informatics and systems	2026-03-02	Toronto	ON	25	61.03	hourly	2026-03-03 15:59:03.728983
article-49028658	senior software developer	2026-03-02	Toronto	ON	30	76.92	hourly	2026-03-03 15:59:03.728984
article-49028677	software developer	2026-03-02	Toronto	ON	30	76.92	hourly	2026-03-03 15:59:03.728984
article-49028683	director of technology management	2026-03-02	Toronto	ON	43.75	103.37	hourly	2026-03-03 15:59:03.728985
article-49028711	data scientist	2026-03-02	Mississauga	ON	30	69.74	hourly	2026-03-03 15:59:03.728986
article-49028712	data processing director	2026-03-02	Toronto	ON	43.75	103.37	hourly	2026-03-03 15:59:03.728987
article-49040348	software developer	2026-03-04	Mattawa	ON	43.5	43.5	hourly	2026-03-04 15:57:31.145187
article-49040143	office supervisor	2026-03-04	Sherbrooke	QC	80063	108323	annually	2026-03-04 15:57:31.145189
article-49039002	software developer	2026-03-04	Toronto	ON	10000	10000	monthly	2026-03-04 15:57:31.14519
article-49037231	artificial intelligence (AI) analyst	2026-03-03	Toronto	ON	30	69.74	hourly	2026-03-04 15:57:31.14519
article-49036748	software developer	2026-03-03	Miller Lake	ON	50	50	hourly	2026-03-04 15:57:31.145191
article-49035273	operations supervisor	2026-03-03	Pointe-aux-Trembles	QC	70000	70000	annually	2026-03-04 15:57:31.145192
article-49035343	data scientist	2026-03-03	Toronto	ON	30	69.74	hourly	2026-03-04 15:57:31.145193
article-49034553	artificial intelligence (AI) consultant	2026-03-03	Mississauga	ON	30	69.74	hourly	2026-03-04 15:57:31.145194
article-49034606	artificial intelligence (AI) consultant	2026-03-03	Toronto	ON	30	69.74	hourly	2026-03-04 15:57:31.145195
article-49034615	manager, computer applications	2026-03-03	Toronto	ON	43.75	103.37	hourly	2026-03-04 15:57:31.145196
article-49034634	manager, computer applications	2026-03-03	Toronto	ON	43.75	103.37	hourly	2026-03-04 15:57:31.145197
article-49034664	manager, computer applications	2026-03-03	Toronto	ON	43.75	103.37	hourly	2026-03-04 15:57:31.145197
article-49034736	director of technology management	2026-03-03	Vancouver	BC	43.75	103.37	hourly	2026-03-04 15:57:31.145198
article-49034771	artificial intelligence (AI) consultant	2026-03-03	Toronto	ON	30	69.74	hourly	2026-03-04 15:57:31.145199
article-49034784	data mining analyst	2026-03-03	Montréal	QC	30	69.74	hourly	2026-03-04 15:57:31.1452
article-49034795	data scientist	2026-03-03	Toronto	ON	30	69.74	hourly	2026-03-04 15:57:31.1452
article-49034805	manager, computer applications	2026-03-03	Toronto	ON	43.75	103.37	hourly	2026-03-04 15:57:31.145201
article-49034818	software developer	2026-03-03	Toronto	ON	30	76.92	hourly	2026-03-04 15:57:31.145202
article-49034844	artificial intelligence (AI) consultant	2026-03-03	Toronto	ON	30	69.74	hourly	2026-03-04 15:57:31.145203
article-49034846	senior software developer	2026-03-03	Calgary	AB	30	76.92	hourly	2026-03-04 15:57:31.145203
article-49034864	artificial intelligence (AI) consultant	2026-03-03	Toronto	ON	30	69.74	hourly	2026-03-04 15:57:31.145204
article-49039171	software developer	2026-03-03	Edmonton	AB	62	80	hourly	2026-03-04 15:57:31.145205
article-49039088	software developer	2026-03-03	Vancouver	BC	120000	135000	annually	2026-03-04 15:57:31.145206
article-49039177	software developer	2026-03-03	Toronto	ON	120000	135000	annually	2026-03-04 15:57:31.145206
article-49039160	software developer	2026-03-03	Grande Prairie	AB	40	40	hourly	2026-03-04 15:57:31.145207
article-49039036	software developer	2026-03-03	Toronto	ON	75000	110000	annually	2026-03-04 15:57:31.145208
article-49028722	software developer	2026-03-02	Toronto	ON	30	76.92	hourly	2026-03-04 15:57:31.145209
article-49028749	data analyst - informatics and systems	2026-03-02	Toronto	ON	25	61.03	hourly	2026-03-04 15:57:31.145209
article-49039058	software developer	2026-03-02	Toronto	ON	101	101	daily	2026-03-04 15:57:31.14521
article-49039067	software developer	2026-03-02	Toronto	ON	101	101	daily	2026-03-04 15:57:31.145211
article-49038964	software developer	2026-03-02	Montréal	QC	82	100	hourly	2026-03-04 15:57:31.145212
article-49038935	software developer	2026-03-02	Montréal	QC	200	200	daily	2026-03-04 15:57:31.145212
article-49038978	software developer	2026-03-02	Edmonton	AB	200	200	daily	2026-03-04 15:57:31.145213
article-49039081	software developer	2026-03-02	Calgary	AB	200	200	daily	2026-03-04 15:57:31.145214
article-49039056	software developer	2026-03-02	Toronto	ON	21.8	21.8	hourly	2026-03-04 15:57:31.145215
article-49039118	software developer	2026-03-02	Montréal	QC	65.52	80	hourly	2026-03-04 15:57:31.145215
article-49039127	software developer	2026-03-02	Pembroke	ON	54000	58000	annually	2026-03-04 15:57:31.145216
article-49023433	software developer	2026-03-01	Mississauga	ON	30	76.92	hourly	2026-03-04 15:57:31.145217
article-49040035	manager, database	2026-03-01	Kitchener	ON	24	58	hourly	2026-03-04 15:57:31.145217
article-49040062	manager, database	2026-03-01	Cambridge	ON	24	58	hourly	2026-03-04 15:57:31.145218
article-49040069	manager, database	2026-03-01	Waterloo	ON	24	58	hourly	2026-03-04 15:57:31.145219
article-49040082	manager, database	2026-03-01	Guelph	ON	24	58	hourly	2026-03-04 15:57:31.14522
article-49045038	software developer	2026-03-05	Toronto	ON	75	93	hourly	2026-03-05 16:01:15.756919
article-49045025	software developer	2026-03-05	Vancouver	BC	35	35	hourly	2026-03-05 16:01:15.75692
article-49044572	operations supervisor	2026-03-05	Hope	BC	36.7	36.7	hourly	2026-03-05 16:01:15.756921
article-49043608	data scientist	2026-03-04	Toronto	ON	30	69.74	hourly	2026-03-05 16:01:15.756922
article-49043725	data scientist	2026-03-04	Toronto	ON	30	69.74	hourly	2026-03-05 16:01:15.756922
article-49040422	director of technology management	2026-03-04	Toronto	ON	43.75	103.37	hourly	2026-03-05 16:01:15.756923
article-49040434	software developer	2026-03-04	Toronto	ON	30	76.92	hourly	2026-03-05 16:01:15.756924
article-49040444	senior software developer	2026-03-04	Toronto	ON	30	76.92	hourly	2026-03-05 16:01:15.756925
article-49040473	data scientist	2026-03-04	Toronto	ON	30	69.74	hourly	2026-03-05 16:01:15.756926
article-49040507	senior software developer	2026-03-04	Toronto	ON	30	76.92	hourly	2026-03-05 16:01:15.756927
article-49040561	data scientist	2026-03-04	Toronto	ON	30	69.74	hourly	2026-03-05 16:01:15.756928
article-49040562	data scientist	2026-03-04	Mississauga	ON	30	69.74	hourly	2026-03-05 16:01:15.756929
article-49040569	manager, computer applications	2026-03-04	Toronto	ON	43.75	103.37	hourly	2026-03-05 16:01:15.756929
article-49044991	software developer	2026-03-04	Toronto	ON	45	45	hourly	2026-03-05 16:01:15.75693
article-49045059	software developer	2026-03-03	Ottawa	ON	23	23	hourly	2026-03-05 16:01:15.756931
article-49039156	software developer	2026-03-03	Ottawa	ON	23	23	hourly	2026-03-05 16:01:15.756932
article-49044927	software developer	2026-03-03	Ottawa	ON	23	23	hourly	2026-03-05 16:01:15.756932
article-49045040	software developer	2026-03-03	London	ON	18.35	18.35	hourly	2026-03-05 16:01:15.756933
article-49045045	software developer	2026-03-03	London	ON	18.35	18.35	hourly	2026-03-05 16:01:15.756934
article-49054762	personnel clerks supervisor	2026-03-06	Dorval	QC	62889	78610	annually	2026-03-06 15:53:04.339203
article-49050911	software developer	2026-03-06	Mississauga	ON	10000	10000	monthly	2026-03-06 15:53:04.339205
article-49050977	software developer	2026-03-06	Toronto	ON	70000	80000	annually	2026-03-06 15:53:04.339207
article-49049338	manager, computer applications	2026-03-05	Toronto	ON	43.75	103.37	hourly	2026-03-06 15:53:04.339208
article-49049379	data scientist	2026-03-05	Toronto	ON	30	69.74	hourly	2026-03-06 15:53:04.339208
article-49049407	manager, computerized information systems	2026-03-05	Toronto	ON	43.75	103.37	hourly	2026-03-06 15:53:04.339209
article-49049035	manager, computer systems development	2026-03-05	Toronto	ON	40	92	hourly	2026-03-06 15:53:04.33921
article-49049052	manager, computer applications	2026-03-05	Burnaby	BC	40	92	hourly	2026-03-06 15:53:04.339212
article-49049069	director of technology management	2026-03-05	Toronto	ON	40	92	hourly	2026-03-06 15:53:04.339213
article-49047958	data architect	2026-03-05	Montréal	QC	80000	80000	annually	2026-03-06 15:53:04.339214
article-49047326	operations supervisor	2026-03-05	Delta	BC	70000	80000	annually	2026-03-06 15:53:04.339215
article-49046231	data scientist	2026-03-05	Toronto	ON	30	69.74	hourly	2026-03-06 15:53:04.339219
article-49046244	manager, data processing and systems analysis	2026-03-05	Toronto	ON	43.75	103.37	hourly	2026-03-06 15:53:04.339221
article-49046248	artificial intelligence (AI) consultant	2026-03-05	Toronto	ON	30	69.74	hourly	2026-03-06 15:53:04.339223
article-49046252	software developer	2026-03-05	Vancouver	BC	30	76.92	hourly	2026-03-06 15:53:04.339225
article-49046255	senior software developer	2026-03-05	Toronto	ON	30	76.92	hourly	2026-03-06 15:53:04.339226
article-49046270	data scientist	2026-03-05	Mississauga	ON	30	69.74	hourly	2026-03-06 15:53:04.339227
article-49046301	manager, computer applications	2026-03-05	Toronto	ON	43.75	103.37	hourly	2026-03-06 15:53:04.339229
article-49046410	manager, computer systems	2026-03-05	Toronto	ON	43.75	103.37	hourly	2026-03-06 15:53:04.339231
article-49046451	manager, IT (information technology) implementation	2026-03-05	Toronto	ON	43.75	103.37	hourly	2026-03-06 15:53:04.339232
article-49046473	data mining analyst	2026-03-05	Toronto	ON	30	69.74	hourly	2026-03-06 15:53:04.339234
article-49046500	software development manager	2026-03-05	Toronto	ON	43.75	103.37	hourly	2026-03-06 15:53:04.339235
article-49046561	software developer	2026-03-05	Toronto	ON	30	76.92	hourly	2026-03-06 15:53:04.339237
article-49046577	software development manager	2026-03-05	Toronto	ON	43.75	103.37	hourly	2026-03-06 15:53:04.339238
article-49046600	manager, computer systems development	2026-03-05	Toronto	ON	43.75	103.37	hourly	2026-03-06 15:53:04.339239
article-49046569	computer department coordinator	2026-03-05	Montréal	QC	80000	100000	annually	2026-03-06 15:53:04.339241
article-49050928	software developer	2026-03-05	Toronto	ON	95000	95000	annually	2026-03-06 15:53:04.339242
article-49051012	software developer	2026-03-05	Vancouver	BC	35	35	hourly	2026-03-06 15:53:04.339244
article-49051082	software developer	2026-03-05	Vaughan	ON	17.6	19.4	hourly	2026-03-06 15:53:04.339245
article-49050782	data processing manager	2026-03-05	Toronto	ON	40	92	hourly	2026-03-06 15:53:04.339247
article-49054523	cloud developer	2026-03-05	Calgary	AB	55000	65000	annually	2026-03-06 15:53:04.339248
article-49054701	operations supervisor	2026-03-05	Edmonton	AB	21	25	hourly	2026-03-06 15:53:04.33925
article-49049311	data scientist	2026-03-04	Montréal	QC	30	69.74	hourly	2026-03-06 15:53:04.339251
article-49053548	software programmer	2026-03-04	Orillia	ON	40000	40000	annually	2026-03-06 15:53:04.339252
article-49051955	cloud developer	2026-03-04	Duncan	BC	27	27	hourly	2026-03-06 15:53:04.339253
article-49060919	data scientist	2026-03-07	London	ON	30	69.74	hourly	2026-03-07 15:36:17.625205
article-49059365	data scientist	2026-03-06	Montréal	QC	30	69.74	hourly	2026-03-07 15:36:17.625302
article-49059193	data mining analyst	2026-03-06	Toronto	ON	30	69.74	hourly	2026-03-07 15:36:17.625345
article-49059260	artificial intelligence (AI) analyst	2026-03-06	Toronto	ON	30	69.74	hourly	2026-03-07 15:36:17.625399
article-49057869	supervisor, clinical receptionists	2026-03-06	Scarborough	ON	32	32	hourly	2026-03-07 15:36:17.625438
article-49056724	information technology (IT) service delivery manager	2026-03-06	Markham	ON	68	70	hourly	2026-03-07 15:36:17.625491
article-49056619	operations supervisor	2026-03-06	Sherwood Park	AB	33.47	40.17	hourly	2026-03-07 15:36:17.625526
article-49055314	manager, computer systems	2026-03-06	Toronto	ON	43.75	103.37	hourly	2026-03-07 15:36:17.62557
article-49055356	senior software developer	2026-03-06	Montréal	QC	30	76.92	hourly	2026-03-07 15:36:17.62562
article-49055372	artificial intelligence (AI) consultant	2026-03-06	Calgary	AB	30	69.74	hourly	2026-03-07 15:36:17.625655
article-49055395	senior software developer	2026-03-06	Calgary	AB	30	76.92	hourly	2026-03-07 15:36:17.625689
article-49055466	manager, computer systems	2026-03-06	Toronto	ON	43.75	103.37	hourly	2026-03-07 15:36:17.625729
article-49055468	data scientist	2026-03-06	Toronto	ON	30	69.74	hourly	2026-03-07 15:36:17.625775
article-49055479	artificial intelligence (AI) consultant	2026-03-06	Toronto	ON	30	69.74	hourly	2026-03-07 15:36:17.62581
article-49055493	software developer	2026-03-06	Montréal	QC	30	76.92	hourly	2026-03-07 15:36:17.625844
article-49055535	data scientist	2026-03-06	Toronto	ON	30	69.74	hourly	2026-03-07 15:36:17.625877
article-49055538	director of technology management	2026-03-06	Toronto	ON	43.75	103.37	hourly	2026-03-07 15:36:17.625911
article-49055571	manager, computer applications	2026-03-06	Toronto	ON	43.75	103.37	hourly	2026-03-07 15:36:17.625944
article-49055583	director of software engineering	2026-03-06	Mississauga	ON	43.75	103.37	hourly	2026-03-07 15:36:17.625977
article-49055596	data mining analyst	2026-03-06	Montréal	QC	30	69.74	hourly	2026-03-07 15:36:17.626014
article-49055636	operations supervisor	2026-03-06	Toronto	ON	22	46	hourly	2026-03-07 15:36:17.626061
article-49055638	director of technology management	2026-03-06	Toronto	ON	43.75	103.37	hourly	2026-03-07 15:36:17.62611
article-49055661	artificial intelligence (AI) consultant	2026-03-06	Toronto	ON	30	69.74	hourly	2026-03-07 15:36:17.626148
article-49055671	manager, computer applications	2026-03-06	Toronto	ON	43.75	103.37	hourly	2026-03-07 15:36:17.62618
article-49055689	data analyst - informatics and systems	2026-03-06	Toronto	ON	25	61.03	hourly	2026-03-07 15:36:17.626211
article-49046480	developer, software	2026-03-05	Montréal	QC	90000	110000	annually	2026-03-07 15:36:17.626247
article-49046452	developer, software	2026-03-05	Brossard	QC	120000	150000	annually	2026-03-07 15:36:17.626281
article-49046313	DBA (database analyst)	2026-03-05	Montréal	QC	85000	110000	annually	2026-03-07 15:36:17.626317
article-49060475	senior software developer	2026-03-05	Toronto	ON	160000	200000	annually	2026-03-07 15:36:17.626352
article-49059461	manager, data processing and systems analysis	2026-03-05	Toronto	ON	40	92	hourly	2026-03-07 15:36:17.626395
article-49060216	director of technology management	2026-03-05	Toronto	ON	40	92	hourly	2026-03-07 15:36:17.62643
article-49059176	analyst, database	2026-03-05	Toronto	ON	24	58	hourly	2026-03-07 15:36:17.626464
article-49060262	director of technology management	2026-03-05	Toronto	ON	40	92	hourly	2026-03-07 15:36:17.626493
article-49071490	artificial intelligence (AI) consultant	2026-03-09	Québec	QC	70000	105000	annually	2026-03-09 16:12:43.513899
article-49071486	artificial intelligence (AI) consultant	2026-03-09	Toronto	ON	30	69.74	hourly	2026-03-09 16:12:43.51394
article-49071584	artificial intelligence (AI) consultant	2026-03-09	Toronto	ON	30	69.74	hourly	2026-03-09 16:12:43.513963
article-49071601	software developer	2026-03-09	Montréal	QC	30	76.92	hourly	2026-03-09 16:12:43.513981
article-49071608	senior software developer	2026-03-09	Toronto	ON	30	76.92	hourly	2026-03-09 16:12:43.513996
article-49071640	data scientist	2026-03-09	Toronto	ON	30	69.74	hourly	2026-03-09 16:12:43.514015
article-49071642	director of technology management	2026-03-09	Toronto	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514031
article-49071685	director of software engineering	2026-03-09	Mississauga	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514052
article-49071702	data scientist	2026-03-09	Toronto	ON	30	69.74	hourly	2026-03-09 16:12:43.514068
article-49071711	manager, computer applications	2026-03-09	Toronto	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514082
article-49071713	software development manager	2026-03-09	Toronto	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514095
article-49071787	senior software developer	2026-03-09	Calgary	AB	30	76.92	hourly	2026-03-09 16:12:43.514107
article-49071830	software development manager	2026-03-09	Toronto	ON	43.75	103.37	hourly	2026-03-09 16:12:43.51412
article-49070319	clerical supervisor	2026-03-09	Montréal	QC	36.06	36.06	hourly	2026-03-09 16:12:43.514133
article-49069904	office supervisor	2026-03-09	Québec	QC	74500	94400	annually	2026-03-09 16:12:43.514161
article-49070014	software engineering manager	2026-03-09	Mississauga	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514176
article-49069398	software developer	2026-03-09	Toronto	ON	85000	85000	annually	2026-03-09 16:12:43.514189
article-49067888	manager, IT (information technology) implementation	2026-03-08	Toronto	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514202
article-49067927	manager, computer applications	2026-03-08	Toronto	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514226
article-49065787	manager, computer applications	2026-03-08	Toronto	ON	43.75	103.37	hourly	2026-03-09 16:12:43.51424
article-49065791	senior software developer	2026-03-08	Calgary	AB	30	76.92	hourly	2026-03-09 16:12:43.514253
article-49065829	senior software developer	2026-03-08	Toronto	ON	30	76.92	hourly	2026-03-09 16:12:43.514276
article-49065160	artificial intelligence (AI) consultant	2026-03-08	Montréal	QC	30	69.74	hourly	2026-03-09 16:12:43.514289
article-49064534	data analyst - informatics and systems	2026-03-08	Toronto	ON	24	58	hourly	2026-03-09 16:12:43.514301
article-49064473	administrative supervisor	2026-03-08	Burnaby	BC	36.6	36.6	hourly	2026-03-09 16:12:43.514313
article-49063456	data mining analyst	2026-03-07	Toronto	ON	30	69.74	hourly	2026-03-09 16:12:43.514325
article-49063430	data scientist	2026-03-07	Toronto	ON	30	69.74	hourly	2026-03-09 16:12:43.514351
article-49063378	data analyst - informatics and systems	2026-03-07	Toronto	ON	25	61.03	hourly	2026-03-09 16:12:43.514365
article-49063389	data scientist	2026-03-07	Toronto	ON	30	69.74	hourly	2026-03-09 16:12:43.514377
article-49063335	artificial intelligence (AI) consultant	2026-03-07	Montréal	QC	30	69.74	hourly	2026-03-09 16:12:43.51439
article-49063311	computer systems manager	2026-03-07	Toronto	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514401
article-49061601	director of technology management	2026-03-07	Vancouver	BC	43.75	103.37	hourly	2026-03-09 16:12:43.514413
article-49061398	artificial intelligence (AI) consultant	2026-03-07	Toronto	ON	30	69.74	hourly	2026-03-09 16:12:43.514438
article-49061701	artificial intelligence (AI) consultant	2026-03-07	Calgary	AB	30	69.74	hourly	2026-03-09 16:12:43.514452
article-49061582	database manager	2026-03-07	Montréal	QC	25	61.03	hourly	2026-03-09 16:12:43.514464
article-49061708	director of technology management	2026-03-07	Toronto	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514487
article-49061401	manager, computer applications	2026-03-07	Toronto	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514499
article-49069624	data modeler	2026-03-07	Toronto	ON	95	95	hourly	2026-03-09 16:12:43.51451
article-49069435	software developer	2026-03-07	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.514521
article-49069479	software developer	2026-03-07	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.514532
article-49069579	software developer	2026-03-06	Vancouver	BC	10000	10000	monthly	2026-03-09 16:12:43.514543
article-49069625	software developer	2026-03-06	Toronto	ON	80	93	hourly	2026-03-09 16:12:43.514555
article-49069580	software developer	2026-03-06	London	ON	20	20	hourly	2026-03-09 16:12:43.514565
article-49049517	data scientist	2026-03-06	London	ON	30	69.74	hourly	2026-03-09 16:12:43.514576
article-49067743	database architect	2026-03-05	Toronto	ON	24	58	hourly	2026-03-09 16:12:43.514587
article-49068160	database administrator (DBA)	2026-03-05	Toronto	ON	24	58	hourly	2026-03-09 16:12:43.514598
article-49064586	manager, computer applications	2026-03-05	Moosonee	ON	34.07	41.7	hourly	2026-03-09 16:12:43.51462
article-49069604	software developer	2026-03-03	London	ON	18.35	18.35	hourly	2026-03-09 16:12:43.514632
article-49053670	big data analyst	2026-03-02	Toronto	ON	85000	100000	annually	2026-03-09 16:12:43.514644
article-49050777	data communications specialist	2026-03-02	Toronto	ON	50000	60000	annually	2026-03-09 16:12:43.514665
article-49051081	software developer	2026-03-02	Mississauga	ON	90000	100000	annually	2026-03-09 16:12:43.514678
article-49054655	cloud developer	2026-03-02	Toronto	ON	75000	95000	annually	2026-03-09 16:12:43.51469
article-49023216	data scientist	2026-03-01	Toronto	ON	30	69.74	hourly	2026-03-09 16:12:43.514702
article-49023434	manager, computer applications	2026-03-01	Mississauga	ON	43.75	103.37	hourly	2026-03-09 16:12:43.514724
article-49068601	software developer	2026-02-28	Vancouver	BC	120000	120000	annually	2026-03-09 16:12:43.514737
article-49068477	software developer	2026-02-28	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.514748
article-49068495	software developer	2026-02-27	Vancouver	BC	120000	150000	annually	2026-03-09 16:12:43.51476
article-49068468	software developer	2026-02-27	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.514771
article-49057013	software developer	2026-02-27	Cambridge	ON	36	46	hourly	2026-03-09 16:12:43.514795
article-49050156	software developer	2026-02-27	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.514807
article-49050012	software developer	2026-02-27	Edmonton	AB	40	40	hourly	2026-03-09 16:12:43.514819
article-49050037	software developer	2026-02-27	Edmonton	AB	4050	4050	monthly	2026-03-09 16:12:43.514831
article-49050015	software developer	2026-02-26	Toronto	ON	6069	6069	monthly	2026-03-09 16:12:43.514842
article-49050038	software developer	2026-02-26	Toronto	ON	60	60	hourly	2026-03-09 16:12:43.514852
article-49068497	software developer	2026-02-25	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.514864
article-49044351	software developer	2026-02-25	Vancouver	BC	115000	115000	annually	2026-03-09 16:12:43.514876
article-49044525	data architect	2026-02-25	Toronto	ON	150000	150000	annually	2026-03-09 16:12:43.514888
article-49050127	software developer	2026-02-25	Toronto	ON	19.75	19.75	hourly	2026-03-09 16:12:43.514899
article-49054045	administrator, database	2026-02-25	Toronto	ON	110000	110000	annually	2026-03-09 16:12:43.514919
article-49068574	software developer	2026-02-24	Vancouver	BC	50000	75000	annually	2026-03-09 16:12:43.514933
article-49068559	software developer	2026-02-24	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.514945
article-49068788	software developer	2026-02-24	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.514956
article-49068753	software developer	2026-02-24	Toronto	ON	90000	110000	annually	2026-03-09 16:12:43.514968
article-49053254	software programmer	2026-02-24	Toronto	ON	21	21	hourly	2026-03-09 16:12:43.514978
article-49038976	software developer	2026-02-23	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.514989
article-49068541	software developer	2026-02-23	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.515009
article-49032740	software developer	2026-02-22	Toronto	ON	21.12	21.12	hourly	2026-03-09 16:12:43.515021
article-49068305	software developer	2026-02-21	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.515033
article-49068270	software developer	2026-02-20	Brampton	ON	10000	10000	monthly	2026-03-09 16:12:43.515053
article-49068812	software developer	2026-02-20	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.515065
article-49063136	supervisor, clinical receptionists	2026-02-19	Toronto	ON	38	38	hourly	2026-03-09 16:12:43.515076
article-49068745	data engineer	2026-02-19	Toronto	ON	80000	130000	annually	2026-03-09 16:12:43.515087
article-49068494	software developer	2026-02-19	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.515109
article-49068775	software developer	2026-02-19	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.51512
article-49068699	software developer	2026-02-19	Toronto	ON	90000	110000	annually	2026-03-09 16:12:43.515131
article-49068531	software developer	2026-02-19	Toronto	ON	90000	90000	annually	2026-03-09 16:12:43.515142
article-49068704	software developer	2026-02-19	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.515153
article-49044900	software developer	2026-02-18	Ottawa	ON	25	63	hourly	2026-03-09 16:12:43.515164
article-49044495	software developer	2026-02-18	Fort McMurray	AB	29	29	hourly	2026-03-09 16:12:43.515175
article-49053909	big data analyst	2026-02-17	Burlington	ON	39940.42	80602.87	annually	2026-03-09 16:12:43.515187
article-49068730	software developer	2026-02-17	Toronto	ON	22	24	hourly	2026-03-09 16:12:43.515198
article-49068737	software developer	2026-02-17	Montréal	QC	76000108544	76000108544	annually	2026-03-09 16:12:43.515221
article-49068116	operations supervisor	2026-02-14	Vancouver	BC	36.75	36.75	hourly	2026-03-09 16:12:43.515234
article-49031248	database analyst (DBA)	2026-02-14	Brampton	ON	45	45	hourly	2026-03-09 16:12:43.515246
article-49068448	data scientist	2026-02-14	Ottawa	ON	100000	100000	annually	2026-03-09 16:12:43.515268
article-49062051	office supervisor	2026-02-13	Burnaby	BC	37	37	hourly	2026-03-09 16:12:43.51528
article-49068544	software developer	2026-02-13	Toronto	ON	100000	220000	annually	2026-03-09 16:12:43.515292
article-49068616	software developer	2026-02-13	Vancouver	BC	140000	165000	annually	2026-03-09 16:12:43.515303
article-49068752	software developer	2026-02-13	Toronto	ON	65	65	hourly	2026-03-09 16:12:43.515314
article-49068720	software developer	2026-02-13	Vancouver	BC	75000	75000	annually	2026-03-09 16:12:43.515325
article-49021961	operations supervisor	2026-02-12	Brampton	ON	36.1	36.1	hourly	2026-03-09 16:12:43.515361
article-49000993	senior software developer	2026-02-12	Waterloo	ON	115000	130000	annually	2026-03-09 16:12:43.515378
article-49068810	software developer	2026-02-11	London	ON	10000	10000	monthly	2026-03-09 16:12:43.51539
article-49068467	software developer	2026-02-11	London	ON	10000	10000	monthly	2026-03-09 16:12:43.515413
article-49068633	software developer	2026-02-11	London	ON	10000	10000	monthly	2026-03-09 16:12:43.515425
article-49068621	software developer	2026-02-11	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.515436
article-49068716	software developer	2026-02-11	London	ON	10000	10000	monthly	2026-03-09 16:12:43.515457
article-49068585	software developer	2026-02-09	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.515469
article-49032716	software developer	2026-02-09	Montréal	QC	77.93	98	hourly	2026-03-09 16:12:43.51549
article-49068705	software developer	2026-02-09	Toronto	ON	10000	10000	monthly	2026-03-09 16:12:43.515504
article-49068624	software developer	2026-02-09	Montréal	QC	58.62	70	hourly	2026-03-09 16:12:43.515517
article-49058476	operations supervisor	2026-02-05	Pitt Meadows	BC	47000	50000	annually	2026-03-09 16:12:43.515529
article-49011498	records office supervisor	2026-02-04	Edmonton	AB	36	36	hourly	2026-03-09 16:12:43.515541
article-49004809	senior software developer	2026-02-03	London	ON	64.48	64.48	hourly	2026-03-09 16:12:43.515563
article-49041226	DBA (database analyst)	2026-02-03	Montréal	QC	35	35	hourly	2026-03-09 16:12:43.515574
article-49046098	software developer	2026-01-28	Calgary	AB	48.08	48.08	hourly	2026-03-09 16:12:43.515594
article-49040274	senior software developer	2026-01-27	Toronto	ON	100000	150000	monthly	2026-03-09 16:12:43.515609
article-49009948	software developer	2026-01-27	Markham	ON	47.6	47.6	hourly	2026-03-09 16:12:43.515621
article-49046864	records office supervisor	2026-01-14	Edmonton	AB	36	36	hourly	2026-03-09 16:12:43.515643
article-49048419	data analyst - informatics and systems	2026-01-14	Surrey	BC	45	45	hourly	2026-03-09 16:12:43.515655
article-48989815	office supervisor	2025-12-24	Nisku	AB	36.5	36.5	hourly	2026-03-09 16:12:43.515668
article-49056072	software developer	2025-12-18	Fergus	ON	49	49	hourly	2026-03-09 16:12:43.51568
article-49035235	administrative supervisor	2025-11-24	Mississauga	ON	37	37	hourly	2026-03-09 16:12:43.515702
article-49034450	operations supervisor	2025-11-21	Québec	QC	55000	57000	annually	2026-03-09 16:12:43.515716
article-48999055	information systems manager	2025-11-18	Pickering	ON	68	68	hourly	2026-03-09 16:12:43.515728
article-49075760	data scientist	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-10 16:12:00.883181
article-49075781	information technology (IT) director	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883253
article-49075801	information technology (IT) director	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883287
article-49075812	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883316
article-49075815	data mining analyst	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-10 16:12:00.883333
article-49075821	information technology (IT) director	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883364
article-49075832	software developer	2026-03-10	Toronto	ON	30	76.92	hourly	2026-03-10 16:12:00.88338
article-49075835	director of technology management	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883412
article-49075866	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883439
article-49075890	software developer	2026-03-10	Toronto	ON	30	76.92	hourly	2026-03-10 16:12:00.883454
article-49075905	manager, data processing and systems analysis	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883478
article-49075914	software developer	2026-03-10	Toronto	ON	30	76.92	hourly	2026-03-10 16:12:00.883492
article-49075916	data mining analyst	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-10 16:12:00.883515
article-49075941	manager, data processing and systems analysis	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883528
article-49075943	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.88355
article-49075948	software developer	2026-03-10	Toronto	ON	30	76.92	hourly	2026-03-10 16:12:00.883562
article-49075950	data analyst - informatics and systems	2026-03-10	Toronto	ON	25	61.03	hourly	2026-03-10 16:12:00.883582
article-49075952	director, data processing	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883595
article-49075984	manager, data processing and systems analysis	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883617
article-49075988	manager, IT (information technology) implementation	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.88363
article-49075990	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883652
article-49076005	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883664
article-49076011	data mining analyst	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-10 16:12:00.883685
article-49075350	manager, IT (information technology) implementation	2026-03-09	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883697
article-49075476	senior software developer	2026-03-09	Toronto	ON	30	76.92	hourly	2026-03-10 16:12:00.883709
article-49075581	artificial intelligence (AI) consultant	2026-03-09	Toronto	ON	30	69.74	hourly	2026-03-10 16:12:00.88373
article-49073192	senior software developer	2026-03-09	Montréal	QC	75000	75000	annually	2026-03-10 16:12:00.883746
article-49072043	information technology (IT) director	2026-03-09	Toronto	ON	43.75	103.37	hourly	2026-03-10 16:12:00.883768
article-49071901	software developer	2026-03-09	Abbotsford	BC	50000	70000	annually	2026-03-10 16:12:00.883782
article-49085921	data administrator	2026-03-11	Etobicoke	ON	24	31.25	hourly	2026-03-11 16:00:54.102067
article-49084963	software developer	2026-03-11	Kelowna	BC	21	21	hourly	2026-03-11 16:00:54.102117
article-49084991	software developer	2026-03-11	Toronto	ON	62	70	hourly	2026-03-11 16:00:54.10215
article-49085038	software developer	2026-03-11	Vancouver	BC	115000	115000	annually	2026-03-11 16:00:54.102179
article-49083740	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-11 16:00:54.102221
article-49082046	database developer	2026-03-10	Montréal	QC	60	62	hourly	2026-03-11 16:00:54.102247
article-49081830	DBA (database administrator)	2026-03-10	Various locations	\N	70	80	hourly	2026-03-11 16:00:54.10228
article-49080497	quantitative analyst	2026-03-10	Surrey	BC	150000	150000	annually	2026-03-11 16:00:54.102313
article-49079587	administrative clerks supervisor	2026-03-10	Richmond	BC	37	37	hourly	2026-03-11 16:00:54.102331
article-49078933	data scientist	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-11 16:00:54.102356
article-49079003	artificial intelligence (AI) consultant	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-11 16:00:54.102371
article-49079007	artificial intelligence (AI) consultant	2026-03-10	Mississauga	ON	30	69.74	hourly	2026-03-11 16:00:54.102385
article-49079026	data scientist	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-11 16:00:54.10241
article-49079047	software engineering manager	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-11 16:00:54.102424
article-49079076	software developer	2026-03-10	Vancouver	BC	30	76.92	hourly	2026-03-11 16:00:54.102447
article-49079160	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-11 16:00:54.102461
article-49079201	data mining analyst	2026-03-10	Mississauga	ON	30	69.74	hourly	2026-03-11 16:00:54.102474
article-49079203	data scientist	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-11 16:00:54.102498
article-49079215	director of technology management	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-11 16:00:54.102512
article-49079217	data scientist	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-11 16:00:54.102535
article-49079226	data scientist	2026-03-10	Mississauga	ON	30	69.74	hourly	2026-03-11 16:00:54.102549
article-49079235	operations supervisor	2026-03-10	Vernon	BC	22	46	hourly	2026-03-11 16:00:54.102562
article-49079242	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-11 16:00:54.102585
article-49079243	senior software developer	2026-03-10	Toronto	ON	30	76.92	hourly	2026-03-11 16:00:54.102599
article-49079247	artificial intelligence (AI) consultant	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-11 16:00:54.102621
article-49079567	director of technology management	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-11 16:00:54.102635
article-49085106	software developer	2026-03-10	Toronto	ON	95	110	hourly	2026-03-11 16:00:54.102657
article-49085046	software developer	2026-03-10	Toronto	ON	10000	10000	monthly	2026-03-11 16:00:54.102672
article-49084968	software developer	2026-03-10	Toronto	ON	80	90	hourly	2026-03-11 16:00:54.102694
article-49084978	software developer	2026-03-09	Toronto	ON	85000	85000	annually	2026-03-11 16:00:54.102709
article-49067551	cloud developer	2026-03-09	Markham	ON	20	23	hourly	2026-03-11 16:00:54.102722
article-49093669	computer application development manager	2026-03-12	New Westminster	BC	125000	125000	annually	2026-03-12 16:12:56.936608
article-49090587	cloud operations manager	2026-03-12	Vancouver	BC	65000	90000	annually	2026-03-12 16:12:56.936651
article-49090238	software quality assurance director	2026-03-11	Toronto	ON	43.75	103.37	hourly	2026-03-12 16:12:56.936673
article-49090243	data mining analyst	2026-03-11	Toronto	ON	30	69.74	hourly	2026-03-12 16:12:56.936691
article-49090381	artificial intelligence (AI) consultant	2026-03-11	Toronto	ON	30	69.74	hourly	2026-03-12 16:12:56.936706
article-49089950	manager, computer applications	2026-03-11	Toronto	ON	43.75	103.37	hourly	2026-03-12 16:12:56.936725
article-49089975	manager, computer applications	2026-03-11	Toronto	ON	43.75	103.37	hourly	2026-03-12 16:12:56.936739
article-49090029	data mining analyst	2026-03-11	Toronto	ON	30	69.74	hourly	2026-03-12 16:12:56.936761
article-49090032	manager, data processing and systems analysis	2026-03-11	Toronto	ON	43.75	103.37	hourly	2026-03-12 16:12:56.936776
article-49089404	telephone service supervisor	2026-03-11	Meaford	ON	17.85	19.49	hourly	2026-03-12 16:12:56.93679
article-49087790	machine learning specialist	2026-03-11	Newmarket	ON	120000	120000	annually	2026-03-12 16:12:56.936804
article-49087787	information technology (IT) implementation manager	2026-03-11	Kingston	ON	68920	84043	annually	2026-03-12 16:12:56.936818
article-49087440	application programmer	2026-03-11	Surrey	BC	50	50	hourly	2026-03-12 16:12:56.936831
article-49087078	software developer	2026-03-11	North Vancouver	BC	48.08	48.08	hourly	2026-03-12 16:12:56.936844
article-49086551	developer, software	2026-03-11	Québec	QC	45	45	hourly	2026-03-12 16:12:56.936858
article-49086536	artificial intelligence (AI) consultant	2026-03-11	Toronto	ON	30	69.74	hourly	2026-03-12 16:12:56.936872
article-49086540	artificial intelligence (AI) consultant	2026-03-11	Mississauga	ON	30	69.74	hourly	2026-03-12 16:12:56.936884
article-49086552	information technology (IT) director	2026-03-11	Toronto	ON	43.75	103.37	hourly	2026-03-12 16:12:56.936897
article-49086717	operations supervisor	2026-03-11	Toronto	ON	22	46	hourly	2026-03-12 16:12:56.93691
article-49086726	manager, database	2026-03-11	Toronto	ON	25	61.03	hourly	2026-03-12 16:12:56.936922
article-49086744	artificial intelligence (AI) consultant	2026-03-11	Toronto	ON	30	69.74	hourly	2026-03-12 16:12:56.936933
article-49086823	software developer	2026-03-11	Toronto	ON	30	76.92	hourly	2026-03-12 16:12:56.936945
article-49086922	director of technology management	2026-03-11	Toronto	ON	43.75	103.37	hourly	2026-03-12 16:12:56.936957
article-49086928	director of technology management	2026-03-11	Vancouver	BC	43.75	103.37	hourly	2026-03-12 16:12:56.936969
article-49086931	data scientist	2026-03-11	Toronto	ON	30	69.74	hourly	2026-03-12 16:12:56.936981
article-49086995	senior software developer	2026-03-11	Calgary	AB	30	76.92	hourly	2026-03-12 16:12:56.936993
article-49086982	software developer	2026-03-11	Toronto	ON	30	76.92	hourly	2026-03-12 16:12:56.937004
article-49086940	manager, computer systems	2026-03-11	Toronto	ON	43.75	103.37	hourly	2026-03-12 16:12:56.937016
article-49086964	manager, computer applications	2026-03-11	Toronto	ON	43.75	103.37	hourly	2026-03-12 16:12:56.937027
article-49079538	data scientist	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-12 16:12:56.937038
article-49079469	data scientist	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-12 16:12:56.937049
article-49079542	software developer	2026-03-10	Toronto	ON	30	76.92	hourly	2026-03-12 16:12:56.93706
article-49079483	data processing director	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-12 16:12:56.937071
article-49079409	data mining analyst	2026-03-10	Toronto	ON	30	69.74	hourly	2026-03-12 16:12:56.937083
article-49090621	director of technology management	2026-03-10	Toronto	ON	40	92	hourly	2026-03-12 16:12:56.937095
article-49100139	computer projects manager	2026-03-13	Sherbrooke	QC	120000	140000	annually	2026-03-13 15:57:30.163626
article-49100499	software developer	2026-03-13	Vancouver	BC	110000	135000	annually	2026-03-13 15:57:30.16367
article-49100626	software developer	2026-03-13	Vancouver	BC	110000	135000	annually	2026-03-13 15:57:30.163693
article-49100496	software developer	2026-03-13	Montréal	QC	75000	75000	annually	2026-03-13 15:57:30.163729
article-49099986	software developer	2026-03-13	Québec	QC	90000	90000	annually	2026-03-13 15:57:30.16375
article-49099657	data scientist	2026-03-13	London	ON	30	69.74	hourly	2026-03-13 15:57:30.163772
article-49099351	data scientist	2026-03-13	Toronto	ON	30	69.74	hourly	2026-03-13 15:57:30.163801
article-49098016	data analyst - informatics and systems	2026-03-13	Etobicoke	ON	43.96	43.96	hourly	2026-03-13 15:57:30.163824
article-49097876	data analyst - informatics and systems	2026-03-13	Mississauga	ON	43.96	43.96	hourly	2026-03-13 15:57:30.163851
article-49097871	data scientist	2026-03-12	Mississauga	ON	98000	150000	annually	2026-03-13 15:57:30.163868
article-49097000	operations supervisor	2026-03-12	Toronto	ON	20	20	hourly	2026-03-13 15:57:30.163881
article-49096891	operations supervisor	2026-03-12	Toronto	ON	21.5	25	hourly	2026-03-13 15:57:30.163905
article-49096675	computer system operations manager	2026-03-12	Ottawa	ON	125500	156880	annually	2026-03-13 15:57:30.163922
article-49096588	PC (personal computer) application developer	2026-03-12	Montréal	QC	100000	110000	annually	2026-03-13 15:57:30.163938
article-49095939	administrative supervisor	2026-03-12	Markham	ON	36	36	hourly	2026-03-13 15:57:30.163961
article-49094467	software developer	2026-03-12	Various locations	\N	20	20	hourly	2026-03-13 15:57:30.16398
article-49093731	director of technology management	2026-03-12	Toronto	ON	43.75	103.37	hourly	2026-03-13 15:57:30.163995
article-49093782	senior software developer	2026-03-12	Montréal	QC	30	76.92	hourly	2026-03-13 15:57:30.16401
article-49093814	manager, computer applications	2026-03-12	Toronto	ON	43.75	103.37	hourly	2026-03-13 15:57:30.164023
article-49093820	senior software developer	2026-03-12	Calgary	AB	30	76.92	hourly	2026-03-13 15:57:30.164049
article-49093824	manager, computer applications	2026-03-12	Toronto	ON	43.75	103.37	hourly	2026-03-13 15:57:30.164063
article-49093858	artificial intelligence (AI) consultant	2026-03-12	Toronto	ON	30	69.74	hourly	2026-03-13 15:57:30.164076
article-49093930	director of technology management	2026-03-12	Toronto	ON	43.75	103.37	hourly	2026-03-13 15:57:30.164089
article-49093967	director of technology management	2026-03-12	Toronto	ON	43.75	103.37	hourly	2026-03-13 15:57:30.164111
article-49093974	operations supervisor	2026-03-12	Vernon	BC	22	46	hourly	2026-03-13 15:57:30.164125
article-49094061	manager, computer systems development	2026-03-12	Toronto	ON	43.75	103.37	hourly	2026-03-13 15:57:30.164137
article-49093995	manager, IT (information technology) implementation	2026-03-12	Toronto	ON	43.75	103.37	hourly	2026-03-13 15:57:30.164156
article-49094053	information technology (IT) implementation manager	2026-03-12	Toronto	ON	43.75	103.37	hourly	2026-03-13 15:57:30.164178
article-49100436	software developer	2026-03-12	Vancouver	BC	155000	155000	annually	2026-03-13 15:57:30.164192
article-49100430	software developer	2026-03-12	Toronto	ON	10000	10000	monthly	2026-03-13 15:57:30.164204
article-49100452	machine learning engineer	2026-03-12	Toronto	ON	10000	10000	monthly	2026-03-13 15:57:30.164227
article-49086977	software development manager	2026-03-11	Toronto	ON	43.75	103.37	hourly	2026-03-13 15:57:30.164241
article-49086999	senior software developer	2026-03-11	Toronto	ON	30	76.92	hourly	2026-03-13 15:57:30.164254
article-49087008	software development manager	2026-03-11	Toronto	ON	43.75	103.37	hourly	2026-03-13 15:57:30.164266
article-49086942	artificial intelligence (AI) consultant	2026-03-11	Mississauga	ON	30	69.74	hourly	2026-03-13 15:57:30.164278
article-49100498	software developer	2026-03-11	Montréal	QC	10000	10000	monthly	2026-03-13 15:57:30.164303
article-49100602	software developer	2026-03-11	Montréal	QC	10000	10000	monthly	2026-03-13 15:57:30.164317
article-49100660	software developer	2026-03-11	Toronto	ON	79	93	hourly	2026-03-13 15:57:30.16433
article-49100547	software developer	2026-03-11	Mississauga	ON	60000	60000	annually	2026-03-13 15:57:30.164342
article-49096950	cloud developer	2026-03-11	St. Catharines	ON	70000	75000	annually	2026-03-13 15:57:30.164355
article-49107349	software development manager	2026-03-14	Sainte-Julie	QC	90000	120000	annually	2026-03-14 15:39:52.541472
article-49106658	data management specialist	2026-03-14	Edmonton	AB	35	50	hourly	2026-03-14 15:39:52.541514
article-49105265	manager, computer applications	2026-03-13	Toronto	ON	43.75	103.37	hourly	2026-03-14 15:39:52.541536
article-49104892	manager, computer systems development	2026-03-13	Toronto	ON	43.75	103.37	hourly	2026-03-14 15:39:52.541553
article-49104938	data mining analyst	2026-03-13	Toronto	ON	30	69.74	hourly	2026-03-14 15:39:52.541569
article-49104974	senior software developer	2026-03-13	Toronto	ON	30	76.92	hourly	2026-03-14 15:39:52.541588
article-49103740	cloud services manager	2026-03-13	Maple	ON	55000	63000	annually	2026-03-14 15:39:52.541604
article-49103174	artificial intelligence (AI) analyst	2026-03-13	Gloucester	ON	22	22	hourly	2026-03-14 15:39:52.541626
article-49101448	artificial intelligence (AI) consultant	2026-03-13	Mississauga	ON	30	69.74	hourly	2026-03-14 15:39:52.541643
article-49101632	director of technology management	2026-03-13	Toronto	ON	43.75	103.37	hourly	2026-03-14 15:39:52.541657
article-49101672	senior software developer	2026-03-13	Toronto	ON	30	76.92	hourly	2026-03-14 15:39:52.541672
article-49101700	software development manager	2026-03-13	Toronto	ON	43.75	103.37	hourly	2026-03-14 15:39:52.541686
article-49101708	data scientist	2026-03-13	Toronto	ON	30	69.74	hourly	2026-03-14 15:39:52.541699
article-49101730	director of technology management	2026-03-13	Toronto	ON	43.75	103.37	hourly	2026-03-14 15:39:52.541712
article-49106159	software developer	2026-03-13	Kelowna	BC	86828.09	142291.2	annually	2026-03-14 15:39:52.541726
article-49094043	software development manager	2026-03-12	Toronto	ON	43.75	103.37	hourly	2026-03-14 15:39:52.541738
article-49093993	artificial intelligence (AI) consultant	2026-03-12	Toronto	ON	30	69.74	hourly	2026-03-14 15:39:52.541751
article-49109527	senior software developer	2026-03-14	Toronto	ON	30	76.92	hourly	2026-03-15 15:41:57.968145
article-49109616	manager, computer applications	2026-03-14	Toronto	ON	43.75	103.37	hourly	2026-03-15 15:41:57.968189
article-49109446	data mining analyst	2026-03-14	Toronto	ON	30	69.74	hourly	2026-03-15 15:41:57.968209
article-49108560	clerical supervisor	2026-03-14	Concord	ON	26	29	hourly	2026-03-15 15:41:57.968224
article-49108114	senior software developer	2026-03-14	Toronto	ON	30	76.92	hourly	2026-03-15 15:41:57.968238
article-49107552	artificial intelligence (AI) consultant	2026-03-14	Toronto	ON	30	69.74	hourly	2026-03-15 15:41:57.968257
article-49107555	manager, computer applications	2026-03-14	Toronto	ON	43.75	103.37	hourly	2026-03-15 15:41:57.968271
article-49107560	senior software developer	2026-03-14	Calgary	AB	30	76.92	hourly	2026-03-15 15:41:57.968292
article-49107567	manager, computer applications	2026-03-14	Toronto	ON	43.75	103.37	hourly	2026-03-15 15:41:57.968306
article-49107606	manager, database	2026-03-14	Toronto	ON	25	61.03	hourly	2026-03-15 15:41:57.968319
article-49107624	artificial intelligence (AI) analyst	2026-03-14	Toronto	ON	30	69.74	hourly	2026-03-15 15:41:57.968331
article-49107637	senior software developer	2026-03-14	Toronto	ON	30	76.92	hourly	2026-03-15 15:41:57.968342
article-49107666	manager, computer systems	2026-03-14	Toronto	ON	43.75	103.37	hourly	2026-03-15 15:41:57.968353
article-49107677	manager, IT (information technology) implementation	2026-03-14	Toronto	ON	43.75	103.37	hourly	2026-03-15 15:41:57.968364
article-49107680	data mining analyst	2026-03-14	Montréal	QC	30	69.74	hourly	2026-03-15 15:41:57.968376
article-49107691	senior software developer	2026-03-14	Toronto	ON	30	76.92	hourly	2026-03-15 15:41:57.968386
article-49107695	senior software developer	2026-03-14	Calgary	AB	30	76.92	hourly	2026-03-15 15:41:57.968397
article-49107802	artificial intelligence (AI) consultant	2026-03-14	Toronto	ON	30	69.74	hourly	2026-03-15 15:41:57.968408
article-49107820	director of technology management	2026-03-14	Toronto	ON	43.75	103.37	hourly	2026-03-15 15:41:57.96842
article-49107927	data analyst - informatics and systems	2026-03-14	Toronto	ON	25	61.03	hourly	2026-03-15 15:41:57.968431
article-49108002	manager, computer systems development	2026-03-14	Toronto	ON	43.75	103.37	hourly	2026-03-15 15:41:57.968442
article-49109742	manager, data processing and systems analysis	2026-03-13	Brampton	ON	40	92	hourly	2026-03-15 15:41:57.968454
article-49116611	artificial intelligence (AI) consultant	2026-03-16	Toronto	ON	30	69.74	hourly	2026-03-16 16:17:38.041196
article-49116613	artificial intelligence (AI) consultant	2026-03-16	Mississauga	ON	30	69.74	hourly	2026-03-16 16:17:38.041246
article-49116636	information technology (IT) director	2026-03-16	Toronto	ON	43.75	103.37	hourly	2026-03-16 16:17:38.04127
article-49116739	senior software developer	2026-03-16	Montréal	QC	30	76.92	hourly	2026-03-16 16:17:38.041291
article-49116778	senior software developer	2026-03-16	Calgary	AB	30	76.92	hourly	2026-03-16 16:17:38.041308
article-49116808	software developer	2026-03-16	Toronto	ON	30	76.92	hourly	2026-03-16 16:17:38.041343
article-49116826	artificial intelligence (AI) consultant	2026-03-16	Toronto	ON	30	69.74	hourly	2026-03-16 16:17:38.04136
article-49116830	artificial intelligence (AI) analyst	2026-03-16	Toronto	ON	30	69.74	hourly	2026-03-16 16:17:38.041395
article-49116855	senior software developer	2026-03-16	Toronto	ON	30	76.92	hourly	2026-03-16 16:17:38.041413
article-49116856	software developer	2026-03-16	Montréal	QC	30	76.92	hourly	2026-03-16 16:17:38.04143
article-49116891	database manager	2026-03-16	Montréal	QC	25	61.03	hourly	2026-03-16 16:17:38.041456
article-49116898	director of technology management	2026-03-16	Vancouver	BC	43.75	103.37	hourly	2026-03-16 16:17:38.041472
article-49116922	artificial intelligence (AI) consultant	2026-03-16	Mississauga	ON	30	69.74	hourly	2026-03-16 16:17:38.041487
article-49116936	manager, IT (information technology) implementation	2026-03-16	Toronto	ON	43.75	103.37	hourly	2026-03-16 16:17:38.041501
article-49116942	data mining analyst	2026-03-16	Montréal	QC	30	69.74	hourly	2026-03-16 16:17:38.041515
article-49116960	senior software developer	2026-03-16	Toronto	ON	30	76.92	hourly	2026-03-16 16:17:38.041528
article-49116961	manager, computer applications	2026-03-16	Toronto	ON	43.75	103.37	hourly	2026-03-16 16:17:38.04154
article-49116964	senior software developer	2026-03-16	Calgary	AB	30	76.92	hourly	2026-03-16 16:17:38.041566
article-49116972	software developer	2026-03-16	Toronto	ON	30	76.92	hourly	2026-03-16 16:17:38.041582
article-49117037	artificial intelligence (AI) consultant	2026-03-16	Toronto	ON	30	69.74	hourly	2026-03-16 16:17:38.041607
article-49117044	artificial intelligence (AI) consultant	2026-03-16	Calgary	AB	30	69.74	hourly	2026-03-16 16:17:38.041621
article-49117057	senior software developer	2026-03-16	Calgary	AB	30	76.92	hourly	2026-03-16 16:17:38.041635
article-49117092	software development manager	2026-03-16	Toronto	ON	43.75	103.37	hourly	2026-03-16 16:17:38.041659
article-49117102	information technology (IT) implementation manager	2026-03-16	Toronto	ON	43.75	103.37	hourly	2026-03-16 16:17:38.041672
article-49117169	manager, computer systems development	2026-03-16	Toronto	ON	43.75	103.37	hourly	2026-03-16 16:17:38.041685
article-49114797	data scientist	2026-03-16	London	ON	30	69.74	hourly	2026-03-16 16:17:38.041698
article-49113326	manager, data processing and systems analysis	2026-03-15	Toronto	ON	43.75	103.37	hourly	2026-03-16 16:17:38.041721
article-49111571	data scientist	2026-03-15	Mississauga	ON	30	69.74	hourly	2026-03-16 16:17:38.041737
article-49111631	data scientist	2026-03-15	Toronto	ON	30	69.74	hourly	2026-03-16 16:17:38.04175
article-49111567	data scientist	2026-03-15	Toronto	ON	30	69.74	hourly	2026-03-16 16:17:38.041764
article-49111530	data scientist	2026-03-15	Toronto	ON	30	69.74	hourly	2026-03-16 16:17:38.041777
article-49111522	artificial intelligence (AI) consultant	2026-03-15	Toronto	ON	30	69.74	hourly	2026-03-16 16:17:38.04179
article-49111565	director of technology management	2026-03-15	Toronto	ON	43.75	103.37	hourly	2026-03-16 16:17:38.041802
article-49111639	director of technology management	2026-03-15	Toronto	ON	43.75	103.37	hourly	2026-03-16 16:17:38.041828
article-49105102	data scientist	2026-03-14	Montréal	QC	30	69.74	hourly	2026-03-16 16:17:38.041843
article-49114983	software developer	2026-03-14	Toronto	ON	10000	10000	monthly	2026-03-16 16:17:38.041857
article-49114810	software developer	2026-03-14	Edmonton	AB	200	200	daily	2026-03-16 16:17:38.041872
article-49114868	software developer	2026-03-14	Ottawa	ON	200	200	daily	2026-03-16 16:17:38.041896
article-49114778	software developer	2026-03-13	Mississauga	ON	10000	10000	monthly	2026-03-16 16:17:38.04191
article-49123671	manager, computer applications	2026-03-17	Toronto	ON	43.75	103.37	hourly	2026-03-17 16:17:52.933896
article-49123674	software developer	2026-03-17	Vancouver	BC	30	76.92	hourly	2026-03-17 16:17:52.93396
article-49123685	manager, computer applications	2026-03-17	Toronto	ON	43.75	103.37	hourly	2026-03-17 16:17:52.933995
article-49123736	manager, database	2026-03-17	Toronto	ON	25	61.03	hourly	2026-03-17 16:17:52.934021
article-49123752	artificial intelligence (AI) consultant	2026-03-17	Toronto	ON	30	69.74	hourly	2026-03-17 16:17:52.934046
article-49123796	data scientist	2026-03-17	Toronto	ON	30	69.74	hourly	2026-03-17 16:17:52.934073
article-49123839	data mining analyst	2026-03-17	Toronto	ON	30	69.74	hourly	2026-03-17 16:17:52.934098
article-49123859	artificial intelligence (AI) consultant	2026-03-17	Toronto	ON	30	69.74	hourly	2026-03-17 16:17:52.934132
article-49123863	director of technology management	2026-03-17	Toronto	ON	43.75	103.37	hourly	2026-03-17 16:17:52.934156
article-49123907	artificial intelligence (AI) consultant	2026-03-17	Toronto	ON	30	69.74	hourly	2026-03-17 16:17:52.934179
article-49122549	developer, software	2026-03-17	Saint-Laurent	QC	65000	90000	annually	2026-03-17 16:17:52.934202
article-49122280	machine learning specialist	2026-03-17	Montréal	QC	90000	90000	annually	2026-03-17 16:17:52.934231
article-49121885	software developer	2026-03-17	Toronto	ON	10000	10000	monthly	2026-03-17 16:17:52.93425
article-49121914	software developer	2026-03-17	Lloydminster	AB	90000	140000	annually	2026-03-17 16:17:52.934273
article-49121116	manager, IT (information technology) implementation	2026-03-17	Vancouver	BC	40	92	hourly	2026-03-17 16:17:52.934293
article-49120866	operations supervisor	2026-03-17	Saguenay	QC	39	43	hourly	2026-03-17 16:17:52.934315
article-49119919	business systems manager	2026-03-16	Fort St. John	BC	40	60	hourly	2026-03-17 16:17:52.934334
article-49119086	Internet systems administrator	2026-03-16	Delta	BC	49.65	49.65	hourly	2026-03-17 16:17:52.934351
article-49118504	data scientist	2026-03-16	Kitchener	ON	53094.34	116898.51	annually	2026-03-17 16:17:52.934374
article-49117929	office supervisor	2026-03-16	Richmond	BC	38	38	hourly	2026-03-17 16:17:52.934391
article-49121639	software developer	2026-03-16	Vancouver	BC	150000	160000	annually	2026-03-17 16:17:52.934411
article-49121840	software developer	2026-03-16	Toronto	ON	100000	220000	annually	2026-03-17 16:17:52.93443
article-49121696	software developer	2026-03-16	Toronto	ON	140000	165000	annually	2026-03-17 16:17:52.934447
article-49121880	software developer	2026-03-16	Vancouver	BC	140000	165000	annually	2026-03-17 16:17:52.934468
article-49121893	software developer	2026-03-16	Calgary	AB	140000	165000	annually	2026-03-17 16:17:52.934486
article-49121845	software developer	2026-03-16	Montréal	QC	65	75	annually	2026-03-17 16:17:52.934509
article-49121905	software developer	2026-03-16	Toronto	ON	74	90	hourly	2026-03-17 16:17:52.934528
article-49121939	software developer	2026-03-16	Toronto	ON	65	65	hourly	2026-03-17 16:17:52.934546
article-49121705	software developer	2026-03-16	Boisbriand	QC	90000	110000	annually	2026-03-17 16:17:52.934568
article-49121667	software developer	2026-03-15	Toronto	ON	21.12	21.12	hourly	2026-03-17 16:17:52.934586
article-49120586	data analyst - informatics and systems	2026-03-15	Toronto	ON	24	58	hourly	2026-03-17 16:17:52.934608
article-49121452	software developer	2026-03-13	Kelowna	BC	86828.09	142291.2	annually	2026-03-17 16:17:52.934627
article-49129618	software developer	2026-03-18	Toronto	ON	10000	10000	monthly	2026-03-18 16:18:22.954878
article-49129278	director of technology	2026-03-18	Vancouver	BC	193900	245200	annually	2026-03-18 16:18:22.954924
article-49126006	cloud developer	2026-03-17	North York	ON	71401.9	125260.32	annually	2026-03-18 16:18:22.954976
article-49125732	big data analyst	2026-03-17	Calgary	AB	17.94	59.39	hourly	2026-03-18 16:18:22.955005
article-49124732	software developer	2026-03-17	Guelph	ON	75000	75000	annually	2026-03-18 16:18:22.955024
article-49129759	operations supervisor	2026-03-17	Coquitlam	BC	86000	86000	annually	2026-03-18 16:18:22.955076
article-49129663	software developer	2026-03-17	Montréal	QC	50	60	hourly	2026-03-18 16:18:22.955122
article-49129481	software developer	2026-03-17	Fort St. John	BC	24.5	24.5	hourly	2026-03-18 16:18:22.955176
article-49129686	software developer	2026-03-17	Prince George	BC	24.5	24.5	hourly	2026-03-18 16:18:22.955201
article-49134894	office supervisor	2026-03-18	Edmonton	AB	36.5	36.5	hourly	2026-03-19 16:06:29.475831
article-49133986	cybersecurity manager	2026-03-18	Montréal	QC	23	23	hourly	2026-03-19 16:06:29.475871
article-49134060	cybersecurity manager	2026-03-18	Saint-Eustache	QC	22	22	hourly	2026-03-19 16:06:29.475891
article-49133188	software developer	2026-03-18	Burnaby	BC	4228.2	4228.2	weekly	2026-03-19 16:06:29.475909
article-49131957	cloud operations manager	2026-03-18	Calgary	AB	70000	90000	annually	2026-03-19 16:06:29.475926
article-49136148	software developer	2026-03-18	Waterloo	ON	80000	110000	annually	2026-03-19 16:06:29.475945
article-49143009	director of technology management	2026-03-20	Sherbrooke	QC	110414	134206	annually	2026-03-20 15:57:04.380185
article-49140026	information technology (IT) implementation manager	2026-03-19	Nelson	BC	99900	99900	annually	2026-03-20 15:57:04.380226
article-49138889	records management supervisor	2026-03-19	Alma	QC	30.7	30.7	hourly	2026-03-20 15:57:04.380248
article-49138445	information technology (IT) implementation manager	2026-03-19	Surrey	BC	55.86	55.86	hourly	2026-03-20 15:57:04.380265
article-49137824	information systems manager	2026-03-19	Pickering	ON	68	68	hourly	2026-03-20 15:57:04.380281
article-49149843	computer manager	2026-03-21	Montréal	QC	150000	175000	annually	2026-03-21 15:38:23.575774
article-49148343	artificial intelligence (AI) consultant	2026-03-21	Québec	QC	60000	800000	annually	2026-03-21 15:38:23.575817
article-49146098	data engineer	2026-03-20	Mississauga	ON	51	51	hourly	2026-03-21 15:38:23.575838
article-49146095	software developer	2026-03-20	Mississauga	ON	50	50	hourly	2026-03-21 15:38:23.575856
article-49145311	business data analyst	2026-03-20	Edmonton	AB	48.1	48.1	hourly	2026-03-21 15:38:23.575871
article-49144423	data analytics specialist	2026-03-20	Cambridge	ON	25	35	hourly	2026-03-21 15:38:23.575892
article-49144221	information technology (IT) implementation manager	2026-03-20	Victoria	BC	90900.08	90900.08	annually	2026-03-21 15:38:23.575908
article-49152030	database administrator (DBA)	2026-03-21	Toronto	ON	25	61.03	hourly	2026-03-22 15:39:08.289364
article-49152078	software developer	2026-03-21	Toronto	ON	30	76.92	hourly	2026-03-22 15:39:08.289406
article-49152167	data analyst - informatics and systems	2026-03-21	Toronto	ON	25	61.03	hourly	2026-03-22 15:39:08.289429
article-49150538	cloud developer	2026-03-21	Oakville	ON	55000	75000	annually	2026-03-22 15:39:08.289449
article-49150387	data analyst - informatics and systems	2026-03-21	Mississauga	ON	25	61.03	hourly	2026-03-22 15:39:08.289465
article-49149949	director of technology management	2026-03-21	Toronto	ON	43.75	103.37	hourly	2026-03-22 15:39:08.289485
article-49149966	artificial intelligence (AI) consultant	2026-03-21	Mississauga	ON	30	69.74	hourly	2026-03-22 15:39:08.289501
article-49149973	senior software developer	2026-03-21	Toronto	ON	30	76.92	hourly	2026-03-22 15:39:08.289523
article-49149974	data scientist	2026-03-21	Toronto	ON	30	69.74	hourly	2026-03-22 15:39:08.289538
article-49149975	artificial intelligence (AI) consultant	2026-03-21	Toronto	ON	30	69.74	hourly	2026-03-22 15:39:08.289553
article-49150003	artificial intelligence (AI) consultant	2026-03-21	Calgary	AB	30	69.74	hourly	2026-03-22 15:39:08.289568
article-49150025	senior software developer	2026-03-21	Toronto	ON	30	76.92	hourly	2026-03-22 15:39:08.289582
article-49150076	senior software developer	2026-03-21	Toronto	ON	30	76.92	hourly	2026-03-22 15:39:08.289595
article-49150109	senior software developer	2026-03-21	Toronto	ON	30	76.92	hourly	2026-03-22 15:39:08.289608
article-49150114	data scientist	2026-03-21	Toronto	ON	30	69.74	hourly	2026-03-22 15:39:08.28962
article-49150122	senior software developer	2026-03-21	Mississauga	ON	30	76.92	hourly	2026-03-22 15:39:08.289632
article-49150127	data processing director	2026-03-21	Toronto	ON	43.75	103.37	hourly	2026-03-22 15:39:08.289644
article-49150156	senior software developer	2026-03-21	Toronto	ON	30	76.92	hourly	2026-03-22 15:39:08.289657
article-49150166	director of technology management	2026-03-21	Toronto	ON	43.75	103.37	hourly	2026-03-22 15:39:08.28967
article-49153053	big data analyst	2026-03-21	Toronto	ON	20	20	hourly	2026-03-22 15:39:08.289681
article-49158798	cloud operations manager	2026-03-23	Caledon Village	ON	55000	66000	annually	2026-03-23 16:10:14.893532
article-49158200	data entry supervisor	2026-03-23	Concord	ON	36	36	hourly	2026-03-23 16:10:14.893587
article-49157194	software developer	2026-03-23	Toronto	ON	80	80	hourly	2026-03-23 16:10:14.893621
article-49157306	software developer	2026-03-23	Toronto	ON	85	85	hourly	2026-03-23 16:10:14.893654
article-49157404	software developer	2026-03-23	Toronto	ON	80	80	hourly	2026-03-23 16:10:14.893688
article-49157491	software developer	2026-03-23	Toronto	ON	95	95	hourly	2026-03-23 16:10:14.893727
article-49157509	software developer	2026-03-23	Toronto	ON	80	80	hourly	2026-03-23 16:10:14.893778
article-49157590	operations supervisor	2026-03-23	Toronto	ON	65	65	hourly	2026-03-23 16:10:14.893823
article-49157702	senior software developer	2026-03-23	Toronto	ON	200	200	daily	2026-03-23 16:10:14.893856
article-49157764	software developer	2026-03-23	Toronto	ON	80	80	hourly	2026-03-23 16:10:14.893887
article-49157780	software developer	2026-03-23	Toronto	ON	80	80	hourly	2026-03-23 16:10:14.893915
article-49157804	software developer	2026-03-23	Toronto	ON	80	80	hourly	2026-03-23 16:10:14.893945
article-49157814	software developer	2026-03-23	Toronto	ON	70	70	hourly	2026-03-23 16:10:14.893972
article-49157652	software developer	2026-03-23	Toronto	ON	55	55	hourly	2026-03-23 16:10:14.894002
article-49156936	business data analyst	2026-03-23	Edmonton	AB	48.1	48.1	hourly	2026-03-23 16:10:14.89403
article-49155831	manager, IT (information technology) implementation	2026-03-22	Toronto	ON	43.75	103.37	hourly	2026-03-23 16:10:14.89406
article-49156076	manager, computer applications	2026-03-22	Toronto	ON	43.75	103.37	hourly	2026-03-23 16:10:14.894088
article-49155098	manager, IT (information technology) implementation	2026-03-22	Mississauga	ON	43.75	103.37	hourly	2026-03-23 16:10:14.894116
article-49154587	developer, software	2026-03-22	Blainville	QC	55000	55000	annually	2026-03-23 16:10:14.894146
article-49154627	data scientist	2026-03-22	Toronto	ON	30	69.74	hourly	2026-03-23 16:10:14.894175
article-49154315	cloud operations manager	2026-03-22	Westlock	AB	90000	110000	annually	2026-03-23 16:10:14.894206
article-49154058	artificial intelligence (AI) consultant	2026-03-22	Toronto	ON	30	69.74	hourly	2026-03-23 16:10:14.894234
article-49154066	software development manager	2026-03-22	Toronto	ON	43.75	103.37	hourly	2026-03-23 16:10:14.894263
article-49154071	manager, computer applications	2026-03-22	Toronto	ON	43.75	103.37	hourly	2026-03-23 16:10:14.894289
article-49154114	director of technology management	2026-03-22	Toronto	ON	43.75	103.37	hourly	2026-03-23 16:10:14.894317
article-49154136	director of technology management	2026-03-22	Toronto	ON	43.75	103.37	hourly	2026-03-23 16:10:14.894344
article-49157426	software developer	2026-03-22	Hamilton	ON	24.05	24.05	hourly	2026-03-23 16:10:14.894371
article-49157629	software developer	2026-03-21	Calgary	AB	10000	10000	monthly	2026-03-23 16:10:14.894399
article-49156822	big data analyst	2026-03-21	Toronto	ON	20	20	hourly	2026-03-23 16:10:14.894427
article-49157723	software developer	2026-03-21	Toronto	ON	10000	10000	monthly	2026-03-23 16:10:14.894454
article-49157448	software developer	2026-03-21	Calgary	AB	10000	10000	monthly	2026-03-23 16:10:14.894484
article-49157205	software developer	2026-03-20	Toronto	ON	130000	160000	annually	2026-03-23 16:10:14.894513
article-49157269	software developer	2026-03-20	Hamilton	ON	28.95	28.95	hourly	2026-03-23 16:10:14.894542
article-49157365	software developer	2026-03-20	Mississauga	ON	41	41	hourly	2026-03-23 16:10:14.894571
article-49157468	software developer	2026-03-19	Vancouver	BC	90000	130000	annually	2026-03-23 16:10:14.8946
article-49157419	software developer	2026-03-19	Oakville	ON	140000	140000	annually	2026-03-23 16:10:14.89463
article-49157229	software developer	2026-03-19	Toronto	ON	85000	85000	annually	2026-03-23 16:10:14.894658
article-49157812	software developer	2026-03-19	Toronto	ON	85000	85000	annually	2026-03-23 16:10:14.894686
article-49157543	software developer	2026-03-19	Toronto	ON	10000	10000	monthly	2026-03-23 16:10:14.894713
article-49157457	software developer	2026-03-19	Toronto	ON	10000	10000	monthly	2026-03-23 16:10:14.894742
article-49157609	software developer	2026-03-19	Toronto	ON	10000	10000	monthly	2026-03-23 16:10:14.8948
article-49157518	software developer	2026-03-19	Vancouver	BC	26	26	hourly	2026-03-23 16:10:14.894831
article-49157618	software developer	2026-03-19	Montréal	QC	85000	125000	annually	2026-03-23 16:10:14.894864
article-49157657	software developer	2026-03-19	Windsor	ON	85000	125000	annually	2026-03-23 16:10:14.894894
article-49157725	software developer	2026-03-19	Toronto	ON	85000	125000	annually	2026-03-23 16:10:14.894923
article-49166942	machine learning specialist	2026-03-24	Toronto	ON	100600	125800	annually	2026-03-24 16:18:32.278862
article-49166472	manager, computer applications	2026-03-24	Toronto	ON	43.75	103.37	hourly	2026-03-24 16:18:32.278921
article-49166484	software developer	2026-03-24	Toronto	ON	30	76.92	hourly	2026-03-24 16:18:32.278958
article-49166498	artificial intelligence (AI) consultant	2026-03-24	Toronto	ON	30	69.74	hourly	2026-03-24 16:18:32.27899
article-49166525	senior software developer	2026-03-24	Montréal	QC	30	76.92	hourly	2026-03-24 16:18:32.27902
article-49166551	software developer	2026-03-24	Montréal	QC	30	76.92	hourly	2026-03-24 16:18:32.279045
article-49166627	manager, IT (information technology) implementation	2026-03-24	Toronto	ON	43.75	103.37	hourly	2026-03-24 16:18:32.279076
article-49166687	data scientist	2026-03-24	Toronto	ON	30	69.74	hourly	2026-03-24 16:18:32.279107
article-49166695	manager, computer systems development	2026-03-24	Toronto	ON	43.75	103.37	hourly	2026-03-24 16:18:32.27913
article-49166291	software developer	2026-03-24	Calgary	AB	48.08	48.08	hourly	2026-03-24 16:18:32.279158
article-49165718	software developer	2026-03-24	Oakville	ON	60000	105000	annually	2026-03-24 16:18:32.279181
article-49165455	operations supervisor	2026-03-24	Québec	QC	55000	57000	annually	2026-03-24 16:18:32.279211
article-49164412	operations supervisor	2026-03-24	North Vancouver	BC	29	33	hourly	2026-03-24 16:18:32.279238
article-49161988	database analyst	2026-03-23	Richmond Hill	ON	45	45	hourly	2026-03-24 16:18:32.279265
article-49161734	application programmer	2026-03-23	Surrey	BC	62	62	hourly	2026-03-24 16:18:32.279286
article-49160177	information technology (IT) director	2026-03-23	Burnaby	BC	180523	180523	annually	2026-03-24 16:18:32.279307
article-49160110	office supervisor	2026-03-23	Brampton	ON	36.5	36.5	hourly	2026-03-24 16:18:32.279333
article-49159430	data architect	2026-03-23	Montréal	QC	80000	80000	annually	2026-03-24 16:18:32.279351
article-49159502	data analyst - informatics and systems	2026-03-23	Mississauga	ON	25	61.03	hourly	2026-03-24 16:18:32.279367
article-49159525	artificial intelligence (AI) consultant	2026-03-23	Calgary	AB	30	69.74	hourly	2026-03-24 16:18:32.27942
article-49159556	artificial intelligence (AI) consultant	2026-03-23	Toronto	ON	30	69.74	hourly	2026-03-24 16:18:32.279444
article-49159667	artificial intelligence (AI) consultant	2026-03-23	Calgary	AB	30	69.74	hourly	2026-03-24 16:18:32.279459
article-49159696	artificial intelligence (AI) consultant	2026-03-23	Toronto	ON	30	69.74	hourly	2026-03-24 16:18:32.279472
article-49159714	manager, computer applications	2026-03-23	Toronto	ON	43.75	103.37	hourly	2026-03-24 16:18:32.279491
article-49159751	data scientist	2026-03-23	Toronto	ON	30	69.74	hourly	2026-03-24 16:18:32.279516
article-49159860	artificial intelligence (AI) consultant	2026-03-23	Calgary	AB	30	69.74	hourly	2026-03-24 16:18:32.279536
article-49159752	artificial intelligence (AI) consultant	2026-03-23	Toronto	ON	30	69.74	hourly	2026-03-24 16:18:32.279549
article-49159868	manager, computer applications	2026-03-23	Toronto	ON	43.75	103.37	hourly	2026-03-24 16:18:32.279562
article-49159879	information technology (IT) implementation manager	2026-03-23	Toronto	ON	43.75	103.37	hourly	2026-03-24 16:18:32.279579
article-49159333	machine learning engineer	2026-03-23	Vancouver	BC	75000	85000	annually	2026-03-24 16:18:32.279608
article-49164415	business data analyst	2026-03-23	Edmonton	AB	48.1	48.1	hourly	2026-03-24 16:18:32.279625
article-49154181	application programmer	2026-03-22	Mississauga	ON	30	76.92	hourly	2026-03-24 16:18:32.279638
article-49164457	big data analyst	2026-03-21	Toronto	ON	20	20	hourly	2026-03-24 16:18:32.279659
article-49164399	cloud developer	2026-03-21	Oakville	ON	55000	75000	annually	2026-03-24 16:18:32.279687
article-49173199	artificial intelligence (AI) consultant	2026-03-25	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.531362
article-49173206	information technology (IT) director	2026-03-25	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.531401
article-49173243	software engineering manager	2026-03-25	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.531422
article-49173251	software development manager	2026-03-25	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.53144
article-49173284	senior software developer	2026-03-25	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.531456
article-49173378	director of technology management	2026-03-25	Vancouver	BC	43.75	103.37	hourly	2026-03-25 16:24:58.531476
article-49173384	software development manager	2026-03-25	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.531492
article-49173473	data scientist	2026-03-25	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.531514
article-49173489	senior software developer	2026-03-25	Mississauga	ON	30	76.92	hourly	2026-03-25 16:24:58.531529
article-49173497	data analyst - informatics and systems	2026-03-25	Toronto	ON	25	61.03	hourly	2026-03-25 16:24:58.531543
article-49173506	senior software developer	2026-03-25	Calgary	AB	30	76.92	hourly	2026-03-25 16:24:58.531556
article-49173517	software development manager	2026-03-25	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.531569
article-49173521	manager, IT (information technology) implementation	2026-03-25	Mississauga	ON	43.75	103.37	hourly	2026-03-25 16:24:58.531583
article-49173524	senior software developer	2026-03-25	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.531596
article-49173369	Java programmer	2026-03-25	Montréal	QC	75000	100000	annually	2026-03-25 16:24:58.531612
article-49171310	data scientist	2026-03-25	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.531625
article-49171242	systems implementation manager - computer systems	2026-03-25	Saint-Georges	QC	35	45	hourly	2026-03-25 16:24:58.531638
article-49170395	director of technology management	2026-03-25	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.531651
article-49170452	artificial intelligence (AI) consultant	2026-03-25	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.531664
article-49170496	manager, computer applications	2026-03-25	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.531675
article-49168208	e-business (electronic business) software developer	2026-03-24	Various locations	\N	90000	100000	annually	2026-03-25 16:24:58.531693
article-49167846	data administrator	2026-03-24	Edmonton	AB	46	46	hourly	2026-03-25 16:24:58.531705
article-49167242	cloud developer	2026-03-24	Markham	ON	60000	72000	annually	2026-03-25 16:24:58.531718
article-49166946	senior software developer	2026-03-24	Etobicoke	ON	113409	113409	annually	2026-03-25 16:24:58.531731
article-49163025	data mining analyst	2026-03-24	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.531743
article-49163142	data scientist	2026-03-24	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.531754
article-49172071	software developer	2026-03-24	Victoria	BC	50	60	hourly	2026-03-25 16:24:58.531766
article-49172013	software developer	2026-03-24	Toronto	ON	80	80	hourly	2026-03-25 16:24:58.531778
article-49172046	software developer	2026-03-24	Toronto	ON	80	80	hourly	2026-03-25 16:24:58.531789
article-49171961	software developer	2026-03-24	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.5318
article-49171889	software developer	2026-03-24	Toronto	ON	70	70	hourly	2026-03-25 16:24:58.531811
article-49172034	software developer	2026-03-24	Toronto	ON	80	80	hourly	2026-03-25 16:24:58.531844
article-49172041	software developer	2026-03-24	Chatham	ON	85000	125000	annually	2026-03-25 16:24:58.531875
article-49171779	software developer	2026-03-24	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.531891
article-49171828	software developer	2026-03-24	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.531905
article-49171994	software developer	2026-03-24	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.531918
article-49172006	software developer	2026-03-24	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.53193
article-49172020	software developer	2026-03-24	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.531941
article-49172052	software developer	2026-03-24	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.531952
article-49171626	software developer	2026-03-24	Brossard	QC	110013.52	110013.52	annually	2026-03-25 16:24:58.531963
article-49163151	artificial intelligence (AI) consultant	2026-03-24	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.531975
article-49159834	software development manager	2026-03-23	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.531987
article-49159844	data processing director	2026-03-23	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.531999
article-49159876	senior software developer	2026-03-23	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.532011
article-49157986	DBA (database architect)	2026-03-23	Trois-Rivières, QC	\N	80000	130000	annually	2026-03-25 16:24:58.532028
article-49155966	software developer	2026-03-23	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.53204
article-49172045	software developer	2026-03-23	Oakville	ON	120000	120000	annually	2026-03-25 16:24:58.532051
article-49171964	software developer	2026-03-23	Toronto	ON	48	48	hourly	2026-03-25 16:24:58.532062
article-49156011	manager, data processing and systems analysis	2026-03-23	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.532074
article-49171481	business data analyst	2026-03-23	Edmonton	AB	48.1	48.1	hourly	2026-03-25 16:24:58.532084
article-49151963	software developer	2026-03-22	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.532096
article-49152132	data analyst - informatics and systems	2026-03-22	Toronto	ON	25	61.03	hourly	2026-03-25 16:24:58.532107
article-49152082	software development manager	2026-03-22	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.532119
article-49151865	manager, data processing and systems analysis	2026-03-22	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.53213
article-49152017	manager, computer applications	2026-03-22	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.532141
article-49171524	big data analyst	2026-03-21	Toronto	ON	20	20	hourly	2026-03-25 16:24:58.532152
article-49143239	data scientist	2026-03-20	London, ON	\N	85000	95000	annually	2026-03-25 16:24:58.532166
article-49135217	cybersecurity manager	2026-03-19	Saint-Laurent	QC	30	30	hourly	2026-03-25 16:24:58.532177
article-49170732	software developer	2026-03-18	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.53219
article-49160203	data communications specialist	2026-03-17	Toronto	ON	65203	111078	annually	2026-03-25 16:24:58.532202
article-49163887	software developer	2026-03-17	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.532214
article-49170561	software developer	2026-03-17	Fort St. John	BC	24.5	24.5	hourly	2026-03-25 16:24:58.532225
article-49170832	software developer	2026-03-17	Prince George	BC	24.5	24.5	hourly	2026-03-25 16:24:58.532236
article-49163928	software developer	2026-03-17	Lloydminster	AB	90000	140000	annually	2026-03-25 16:24:58.532248
article-49170795	software developer	2026-03-17	Montréal	QC	50	60	hourly	2026-03-25 16:24:58.532261
article-49170971	operations supervisor	2026-03-17	Coquitlam	BC	86000	86000	annually	2026-03-25 16:24:58.532273
article-49170957	data engineer	2026-03-16	Toronto	ON	80000	130000	annually	2026-03-25 16:24:58.532286
article-49113318	software developer	2026-03-16	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.532298
article-49113191	software developer	2026-03-16	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.53231
article-49163821	software developer	2026-03-16	Toronto	ON	100000	220000	annually	2026-03-25 16:24:58.532323
article-49113418	senior software developer	2026-03-16	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.532334
article-49127762	data communications specialist	2026-03-16	Québec	QC	30	67	hourly	2026-03-25 16:24:58.532347
article-49163632	software developer	2026-03-16	Toronto	ON	140000	165000	annually	2026-03-25 16:24:58.53236
article-49163882	software developer	2026-03-16	Vancouver	BC	140000	165000	annually	2026-03-25 16:24:58.532372
article-49163899	software developer	2026-03-16	Calgary	AB	140000	165000	annually	2026-03-25 16:24:58.532383
article-49170873	software developer	2026-03-16	Montréal	QC	140000	165000	annually	2026-03-25 16:24:58.532395
article-49170827	software developer	2026-03-16	Vancouver	BC	50000	75000	annually	2026-03-25 16:24:58.532407
article-49163826	software developer	2026-03-16	Montréal	QC	65	75	annually	2026-03-25 16:24:58.53242
article-49163989	data modeler	2026-03-16	Toronto	ON	95	95	hourly	2026-03-25 16:24:58.532431
article-49113417	manager, data processing and systems analysis	2026-03-16	Vancouver	BC	40	92	hourly	2026-03-25 16:24:58.532443
article-49170781	software developer	2026-03-16	Toronto	ON	85000	90000	annually	2026-03-25 16:24:58.532455
article-49170687	software developer	2026-03-16	Toronto	ON	50000	67000	annually	2026-03-25 16:24:58.532467
article-49157645	software developer	2026-03-16	Toronto	ON	90000	95000	annually	2026-03-25 16:24:58.532478
article-49113345	software developer	2026-03-16	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.532489
article-49113446	software developer	2026-03-16	Mississauga	ON	30	76.92	hourly	2026-03-25 16:24:58.5325
article-49163977	software developer	2026-03-16	Toronto	ON	65	65	hourly	2026-03-25 16:24:58.532511
article-49170714	software developer	2026-03-16	Toronto	ON	70000	80000	annually	2026-03-25 16:24:58.532523
article-49170944	software developer	2026-03-16	Calgary	AB	22	22	hourly	2026-03-25 16:24:58.532533
article-49157432	software developer	2026-03-16	Calgary	AB	60000	150000	annually	2026-03-25 16:24:58.532545
article-49170933	software developer	2026-03-16	Vancouver	BC	75000	75000	annually	2026-03-25 16:24:58.532557
article-49170929	software developer	2026-03-16	Toronto	ON	90000	110000	annually	2026-03-25 16:24:58.532568
article-49170774	software developer	2026-03-16	Mississauga	ON	19	20	annually	2026-03-25 16:24:58.532581
article-49163662	software developer	2026-03-16	Boisbriand	QC	90000	110000	annually	2026-03-25 16:24:58.532597
article-49127725	information technology (IT) director	2026-03-16	Toronto	ON	40	92	hourly	2026-03-25 16:24:58.532609
article-49113413	manager, computer applications	2026-03-16	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.532621
article-49109717	manager, data processing and systems analysis	2026-03-15	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.532632
article-49109690	software developer	2026-03-15	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.532644
article-49109817	data analyst - informatics and systems	2026-03-15	Toronto	ON	25	61.03	hourly	2026-03-25 16:24:58.532655
article-49105361	data scientist	2026-03-14	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.532667
article-49157933	software developer	2026-03-14	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.532679
article-49105252	software developer	2026-03-14	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.53269
article-49157890	software developer	2026-03-14	Edmonton	AB	200	200	daily	2026-03-25 16:24:58.532702
article-49157904	software developer	2026-03-14	Ottawa	ON	200	200	daily	2026-03-25 16:24:58.532713
article-49105235	director of technology management	2026-03-14	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.532725
article-49105312	manager, computer applications	2026-03-14	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.532737
article-49105210	database architect	2026-03-14	Toronto	ON	25	61.03	hourly	2026-03-25 16:24:58.532748
article-49105316	manager, computer applications	2026-03-14	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.532759
article-49097870	manager, data processing and systems analysis	2026-03-13	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.53277
article-49157865	software developer	2026-03-13	Mississauga	ON	10000	10000	monthly	2026-03-25 16:24:58.532781
article-49141772	software developer	2026-03-13	Vancouver	BC	35	35	hourly	2026-03-25 16:24:58.532792
article-49141966	software developer	2026-03-13	Vancouver	BC	35	35	hourly	2026-03-25 16:24:58.532803
article-49142021	software developer	2026-03-13	Vancouver	BC	110000	135000	annually	2026-03-25 16:24:58.532816
article-49090464	data scientist	2026-03-12	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.532857
article-49090520	data mining analyst	2026-03-12	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.532874
article-49090469	data scientist	2026-03-12	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.532888
article-49090501	software developer	2026-03-12	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.5329
article-49090302	artificial intelligence (AI) consultant	2026-03-12	Toronto	ON	30	69.74	hourly	2026-03-25 16:24:58.532913
article-49170675	software developer	2026-03-12	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.532925
article-49090467	architect, database	2026-03-12	Toronto	ON	25	61.03	hourly	2026-03-25 16:24:58.532937
article-49170709	machine learning engineer	2026-03-12	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.532949
article-49126358	data engineer	2026-03-11	Markham	ON	60000	70000	annually	2026-03-25 16:24:58.532961
article-49170778	software developer	2026-03-11	Montréal	QC	10000	10000	monthly	2026-03-25 16:24:58.532973
article-49128492	software developer	2026-03-11	Vancouver	BC	115000	115000	annually	2026-03-25 16:24:58.532985
article-49170908	software developer	2026-03-11	Montréal	QC	10000	10000	monthly	2026-03-25 16:24:58.532997
article-49083471	senior software developer	2026-03-11	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.533009
article-49075329	software developer	2026-03-10	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.53302
article-49075605	software developer	2026-03-10	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.533031
article-49163879	software developer	2026-03-10	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.533043
article-49075453	software developer	2026-03-10	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.533055
article-49075722	software developer	2026-03-10	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.533066
article-49075565	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.533077
article-49075252	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.533089
article-49075658	manager, IT (information technology) implementation	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.5331
article-49075375	manager, computer systems	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.533111
article-49075422	manager, IT (information technology) implementation	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.533122
article-49075640	manager, IT (information technology) implementation	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.533134
article-49075675	manager, computer applications	2026-03-10	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.533146
article-49067917	senior software developer	2026-03-09	Toronto	ON	30	76.92	hourly	2026-03-25 16:24:58.533163
article-49067877	manager, IT (information technology) implementation	2026-03-09	Toronto	ON	43.75	103.37	hourly	2026-03-25 16:24:58.533174
article-49063815	manager, IT (information technology) implementation	2026-03-08	Toronto	ON	40	92	hourly	2026-03-25 16:24:58.533185
article-49170638	software developer	2026-03-07	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.533196
article-49170671	software developer	2026-03-07	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.533206
article-49056022	data scientist	2026-03-06	Calgary, AB	\N	46.15	46.15	hourly	2026-03-25 16:24:58.533218
article-49049512	data scientist	2026-03-06	Montréal	QC	30	69.74	hourly	2026-03-25 16:24:58.53323
article-49170843	software developer	2026-03-06	Vancouver	BC	10000	10000	monthly	2026-03-25 16:24:58.533241
article-49163540	software developer	2026-03-06	Mississauga	ON	10000	10000	monthly	2026-03-25 16:24:58.533252
article-49083835	data mining analyst	2026-03-05	Toronto	ON	26	78	hourly	2026-03-25 16:24:58.533264
article-49163585	software developer	2026-03-05	Toronto	ON	95000	95000	annually	2026-03-25 16:24:58.533275
article-49164030	software developer	2026-03-03	Ottawa	ON	23	23	hourly	2026-03-25 16:24:58.533286
article-49163781	software developer	2026-03-03	Ottawa	ON	23	23	hourly	2026-03-25 16:24:58.533297
article-49170738	software developer	2026-03-03	Toronto	ON	75000	110000	annually	2026-03-25 16:24:58.533309
article-49076793	cloud developer	2026-03-03	Calgary	AB	100000	120000	annually	2026-03-25 16:24:58.533321
article-49164208	database manager	2026-03-02	Abbotsford	BC	50	55	hourly	2026-03-25 16:24:58.533332
article-49166161	office supervisor	2026-03-02	Mississauga	ON	36	36	hourly	2026-03-25 16:24:58.533343
article-49076683	big data analyst	2026-03-02	Toronto	ON	85000	100000	annually	2026-03-25 16:24:58.533355
article-49170881	software developer	2026-03-02	Montréal	QC	65.52	80	hourly	2026-03-25 16:24:58.533367
article-49170911	software developer	2026-03-02	Pembroke	ON	54000	58000	annually	2026-03-25 16:24:58.533379
article-49161169	cloud developer	2026-03-02	Toronto	ON	75000	95000	annually	2026-03-25 16:24:58.53339
article-49171775	cloud operations manager	2026-03-02	Calgary	AB	18.06	20	hourly	2026-03-25 16:24:58.533401
article-49170727	software developer	2026-02-27	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.533413
article-49163936	software developer	2026-02-27	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.533424
article-49103490	office supervisor	2026-02-26	Tweed	ON	31	31	hourly	2026-03-25 16:24:58.533435
article-49163813	software developer	2026-02-26	Toronto	ON	60	60	hourly	2026-03-25 16:24:58.533445
article-49170707	software developer	2026-02-26	Toronto	ON	6069	6069	monthly	2026-03-25 16:24:58.533456
article-49170950	software developer	2026-02-26	Hamilton	ON	21	21	hourly	2026-03-25 16:24:58.533467
article-49163792	software developer	2026-02-25	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.533478
article-49170998	data architect	2026-02-25	Toronto	ON	150000	150000	annually	2026-03-25 16:24:58.533489
article-49163838	software developer	2026-02-24	Toronto	ON	10000	10000	monthly	2026-03-25 16:24:58.533499
article-49102057	office supervisor	2026-02-19	Coquitlam	BC	33.5	33.5	hourly	2026-03-25 16:24:58.53351
article-49140795	database designer	2026-02-17	Mississauga	ON	95000	95000	annually	2026-03-25 16:24:58.533521
article-49168340	office supervisor	2026-02-16	Surrey	BC	36.6	36.6	hourly	2026-03-25 16:24:58.533532
article-49119802	database analyst (DBA)	2026-02-14	Brampton	ON	45	45	hourly	2026-03-25 16:24:58.533543
article-49148709	office supervisor	2026-02-13	Burnaby	BC	37	37	hourly	2026-03-25 16:24:58.533553
article-49168351	operations supervisor	2026-02-13	Surrey	BC	36.6	36.6	hourly	2026-03-25 16:24:58.533683
article-49102348	operations supervisor	2026-02-12	Brampton	ON	36.1	36.1	hourly	2026-03-25 16:24:58.533698
article-49144128	operations supervisor	2026-02-05	Pitt Meadows	BC	47000	50000	annually	2026-03-25 16:24:58.533711
article-49094436	records office supervisor	2026-02-04	Edmonton	AB	36	36	hourly	2026-03-25 16:24:58.533723
article-49137677	records office supervisor	2026-01-14	Edmonton	AB	36	36	hourly	2026-03-25 16:24:58.533734
article-49138757	data analyst - informatics and systems	2026-01-14	Surrey	BC	45	45	hourly	2026-03-25 16:24:58.533745
article-49137661	records office supervisor	2026-01-13	Edmonton	AB	36	36	hourly	2026-03-25 16:24:58.533757
article-49113545	records office supervisor	2026-01-08	Edmonton	AB	36	36	hourly	2026-03-25 16:24:58.533769
article-49143779	software developer	2025-12-18	Fergus	ON	49	49	hourly	2026-03-25 16:24:58.53378
article-49178506	director of technology management	2026-03-26	Toronto	ON	43.75	103.37	hourly	2026-03-26 16:21:10.537798
article-49178521	data analyst - informatics and systems	2026-03-26	Mississauga	ON	25	61.03	hourly	2026-03-26 16:21:10.537865
article-49178639	manager, database	2026-03-26	Toronto	ON	25	61.03	hourly	2026-03-26 16:21:10.537909
article-49178723	director of technology management	2026-03-26	Toronto	ON	43.75	103.37	hourly	2026-03-26 16:21:10.537965
article-49178727	artificial intelligence (AI) consultant	2026-03-26	Toronto	ON	30	69.74	hourly	2026-03-26 16:21:10.538003
article-49178740	senior software developer	2026-03-26	Toronto	ON	30	76.92	hourly	2026-03-26 16:21:10.538046
article-49178761	senior software developer	2026-03-26	Toronto	ON	30	76.92	hourly	2026-03-26 16:21:10.538078
article-49178869	data scientist	2026-03-26	Toronto	ON	30	69.74	hourly	2026-03-26 16:21:10.538122
article-49178894	manager, computer applications	2026-03-26	Toronto	ON	43.75	103.37	hourly	2026-03-26 16:21:10.538156
article-49176630	computer programs manager	2026-03-26	Val-d'Or	QC	40.92	53.99	hourly	2026-03-26 16:21:10.538186
article-49175818	business data analyst	2026-03-25	Nepean	ON	3850	3850	weekly	2026-03-26 16:21:10.538217
article-49175250	test engineering manager - software	2026-03-25	Morinville	AB	17.75	21	hourly	2026-03-26 16:21:10.538247
article-49174802	cloud developer	2026-03-25	Calgary	AB	56000	56000	annually	2026-03-26 16:21:10.538278
article-49177036	software developer	2026-03-25	Toronto	ON	62	62	hourly	2026-03-26 16:21:10.538308
article-49176855	big data analyst	2026-03-24	Mississauga	ON	68100	76500	annually	2026-03-26 16:21:10.538339
article-49185138	desktop publishing supervisor	2026-03-27	Vancouver	BC	114465	114465	annually	2026-03-28 15:46:16.988119
article-49184998	information systems manager	2026-03-27	Vancouver	BC	64	99	hourly	2026-03-28 15:46:16.988164
article-49184117	senior software developer	2026-03-27	Toronto	ON	30	76.92	hourly	2026-03-28 15:46:16.988187
article-49184131	director of technology management	2026-03-27	Vancouver	BC	43.75	103.37	hourly	2026-03-28 15:46:16.988206
article-49184180	manager, computer applications	2026-03-27	Toronto	ON	43.75	103.37	hourly	2026-03-28 15:46:16.988224
article-49184184	data scientist	2026-03-27	Toronto	ON	30	69.74	hourly	2026-03-28 15:46:16.988244
article-49184186	director of technology management	2026-03-27	Toronto	ON	43.75	103.37	hourly	2026-03-28 15:46:16.988261
article-49184193	data scientist	2026-03-27	Toronto	ON	30	69.74	hourly	2026-03-28 15:46:16.988283
article-49183706	administrator, data	2026-03-27	Saint-Hyacinthe	QC	100000	140000	annually	2026-03-28 15:46:16.988301
article-49181279	manager, data processing and systems analysis	2026-03-27	Toronto	ON	43.75	103.37	hourly	2026-03-28 15:46:16.988316
article-49181326	senior software developer	2026-03-27	Toronto	ON	30	76.92	hourly	2026-03-28 15:46:16.988331
article-49180828	big data analyst	2026-03-26	Markham	ON	44.47	44.47	hourly	2026-03-28 15:46:16.988344
article-49180245	data analyst - informatics and systems	2026-03-26	Victoria	BC	62.26	62.26	hourly	2026-03-28 15:46:16.988358
article-49179773	office supervisor	2026-03-26	Rocky View	AB	36	36	hourly	2026-03-28 15:46:16.988397
article-49181767	Internet systems administrator	2026-03-26	Montréal	QC	85000	100000	annually	2026-03-28 15:46:16.988415
article-49181802	computer projects manager	2026-03-26	Saint-Eustache	QC	100000	125000	annually	2026-03-28 15:46:16.98843
article-49175572	operations supervisor	2026-03-25	Georgetown	ON	70000	80000	annually	2026-03-28 15:46:16.988444
article-49181167	artificial intelligence (AI) consultant	2026-03-25	Toronto	ON	26	78	hourly	2026-03-28 15:46:16.988457
article-49187439	big data analyst	2026-03-24	Mississauga	ON	68100	76500	annually	2026-03-28 15:46:16.988472
article-49188829	data scientist	2026-03-28	Toronto	ON	30	69.74	hourly	2026-03-29 15:46:26.474833
article-49188464	software development manager	2026-03-28	Toronto	ON	43.75	103.37	hourly	2026-03-29 15:46:26.474902
article-49188492	senior software developer	2026-03-28	Toronto	ON	30	76.92	hourly	2026-03-29 15:46:26.47494
article-49188496	manager, computer applications	2026-03-28	Toronto	ON	43.75	103.37	hourly	2026-03-29 15:46:26.47498
article-49188523	manager, database	2026-03-28	Toronto	ON	25	61.03	hourly	2026-03-29 15:46:26.47501
article-49188536	manager, computer applications	2026-03-28	Toronto	ON	43.75	103.37	hourly	2026-03-29 15:46:26.475042
article-49188591	director of technology management	2026-03-28	Toronto	ON	43.75	103.37	hourly	2026-03-29 15:46:26.475075
article-49188600	software engineering manager	2026-03-28	Toronto	ON	43.75	103.37	hourly	2026-03-29 15:46:26.475101
article-49188601	operations supervisor	2026-03-28	Vernon	BC	22	46	hourly	2026-03-29 15:46:26.475126
article-49188619	manager, IT (information technology) implementation	2026-03-28	Toronto	ON	43.75	103.37	hourly	2026-03-29 15:46:26.475156
article-49188623	data mining analyst	2026-03-28	Montréal	QC	30	69.74	hourly	2026-03-29 15:46:26.475181
article-49188638	software development manager	2026-03-28	Toronto	ON	43.75	103.37	hourly	2026-03-29 15:46:26.475197
article-49188655	artificial intelligence (AI) consultant	2026-03-28	Calgary	AB	30	69.74	hourly	2026-03-29 15:46:26.475211
article-49188669	senior software developer	2026-03-28	Toronto	ON	30	76.92	hourly	2026-03-29 15:46:26.475241
article-49188670	database analyst (DBA)	2026-03-28	Montréal	QC	25	61.03	hourly	2026-03-29 15:46:26.475268
article-49188671	senior software developer	2026-03-28	Mississauga	ON	30	76.92	hourly	2026-03-29 15:46:26.475282
article-49188673	data scientist	2026-03-28	Toronto	ON	30	69.74	hourly	2026-03-29 15:46:26.475303
article-49188677	data analyst - informatics and systems	2026-03-28	Toronto	ON	25	61.03	hourly	2026-03-29 15:46:26.47533
article-49189728	manager, computer applications	2026-03-27	Montréal	QC	40	92	hourly	2026-03-29 15:46:26.475354
article-49193541	developer, software	2026-03-30	Montréal	QC	20	35	hourly	2026-03-30 16:14:46.788507
article-49192895	data mining analyst	2026-03-30	Montréal	QC	30	69.74	hourly	2026-03-30 16:14:46.788548
article-49192416	software developer	2026-03-30	Toronto	ON	30	76.92	hourly	2026-03-30 16:14:46.78857
article-49192424	senior software developer	2026-03-30	Toronto	ON	30	76.92	hourly	2026-03-30 16:14:46.788586
article-49192432	software developer	2026-03-30	Toronto	ON	30	76.92	hourly	2026-03-30 16:14:46.788603
article-49192454	software developer	2026-03-30	Toronto	ON	30	76.92	hourly	2026-03-30 16:14:46.788623
article-49192456	artificial intelligence (AI) consultant	2026-03-30	Toronto	ON	30	69.74	hourly	2026-03-30 16:14:46.788639
article-49192458	manager, data processing and systems analysis	2026-03-30	Toronto	ON	43.75	103.37	hourly	2026-03-30 16:14:46.788661
article-49192521	manager, computer applications	2026-03-30	Toronto	ON	43.75	103.37	hourly	2026-03-30 16:14:46.788677
article-49192532	software engineering manager	2026-03-30	Toronto	ON	43.75	103.37	hourly	2026-03-30 16:14:46.788691
article-49191385	artificial intelligence (AI) analyst	2026-03-29	Toronto	ON	30	69.74	hourly	2026-03-30 16:14:46.788705
article-49191443	data scientist	2026-03-29	Toronto	ON	30	69.74	hourly	2026-03-30 16:14:46.788718
article-49191444	data mining analyst	2026-03-29	Toronto	ON	30	69.74	hourly	2026-03-30 16:14:46.788731
article-49191456	artificial intelligence (AI) consultant	2026-03-29	Toronto	ON	30	69.74	hourly	2026-03-30 16:14:46.788743
article-49191462	manager, computer applications	2026-03-29	Toronto	ON	43.75	103.37	hourly	2026-03-30 16:14:46.788756
article-49191468	director of technology management	2026-03-29	Toronto	ON	43.75	103.37	hourly	2026-03-30 16:14:46.788767
article-49191487	director of technology management	2026-03-29	Toronto	ON	43.75	103.37	hourly	2026-03-30 16:14:46.788779
article-49191500	information technology (IT) implementation manager	2026-03-29	Toronto	ON	43.75	103.37	hourly	2026-03-30 16:14:46.788792
article-49191508	manager, computer systems development	2026-03-29	Toronto	ON	43.75	103.37	hourly	2026-03-30 16:14:46.788804
article-49191509	data analyst - informatics and systems	2026-03-29	Toronto	ON	25	61.03	hourly	2026-03-30 16:14:46.788816
article-49191510	manager, computer applications	2026-03-29	Toronto	ON	43.75	103.37	hourly	2026-03-30 16:14:46.788827
article-49192417	manager, IT (information technology) implementation	2026-03-29	Toronto	ON	43.75	103.37	hourly	2026-03-30 16:14:46.788839
article-49193358	software developer	2026-03-29	Toronto	ON	140000	140000	annually	2026-03-30 16:14:46.788851
article-49193254	software developer	2026-03-28	Toronto	ON	10000	10000	monthly	2026-03-30 16:14:46.788864
article-49193331	software developer	2026-03-28	Toronto	ON	10000	10000	monthly	2026-03-30 16:14:46.788875
article-49193284	software developer	2026-03-28	Toronto	ON	10000	10000	monthly	2026-03-30 16:14:46.788887
article-49193150	software developer	2026-03-28	Toronto	ON	10000	10000	monthly	2026-03-30 16:14:46.788897
article-49193335	software developer	2026-03-27	Vancouver	BC	130	190	annually	2026-03-30 16:14:46.78891
article-49193177	software developer	2026-03-27	Toronto	ON	80	80	hourly	2026-03-30 16:14:46.788921
article-49193233	software developer	2026-03-26	Toronto	ON	5565	5565	monthly	2026-03-30 16:14:46.788933
article-49193303	data engineer	2026-03-25	Oshawa	ON	75.58	92.58	hourly	2026-03-30 16:14:46.788967
article-49193300	software developer	2026-03-25	Markham	ON	47.68	47.68	hourly	2026-03-30 16:14:46.788982
article-49192871	big data analyst	2026-03-24	Mississauga	ON	68100	76500	annually	2026-03-30 16:14:46.788996
article-49193322	software developer	2026-03-24	Kitchener	ON	19.49	19.49	hourly	2026-03-30 16:14:46.789009
article-49193687	software developer	2026-03-23	Vancouver	BC	150000	160000	annually	2026-03-30 16:14:46.789021
article-49194052	software developer	2026-03-23	Toronto	ON	95	110	hourly	2026-03-30 16:14:46.789033
article-49194089	software developer	2026-03-23	Vancouver	BC	110000	135000	annually	2026-03-30 16:14:46.789045
article-49194230	software developer	2026-03-23	Toronto	ON	55	55	hourly	2026-03-30 16:14:46.789056
article-49194098	software developer	2026-03-23	Vancouver	BC	35	35	hourly	2026-03-30 16:14:46.789068
article-49194297	software developer	2026-03-23	Vancouver	BC	110000	135000	annually	2026-03-30 16:14:46.78908
article-49194236	software developer	2026-03-23	Vancouver	BC	35	35	hourly	2026-03-30 16:14:46.789091
article-49176891	business data analyst	2026-03-23	Edmonton	AB	48.1	48.1	hourly	2026-03-30 16:14:46.789102
article-49176939	big data analyst	2026-03-21	Toronto	ON	20	20	hourly	2026-03-30 16:14:46.789112
article-49193834	software developer	2026-03-20	Hamilton	ON	28.95	28.95	hourly	2026-03-30 16:14:46.789123
article-49194054	software developer	2026-03-19	Oakville	ON	140000	140000	annually	2026-03-30 16:14:46.789134
article-49193692	software developer	2026-03-19	Toronto	ON	85000	85000	annually	2026-03-30 16:14:46.789145
article-49194397	software developer	2026-03-19	Toronto	ON	85000	85000	annually	2026-03-30 16:14:46.789157
article-49194105	software developer	2026-03-17	Montréal	QC	50	60	hourly	2026-03-30 16:14:46.78917
article-49193904	software developer	2026-03-16	Toronto	ON	140000	165000	annually	2026-03-30 16:14:46.789182
article-49194183	software developer	2026-03-16	Vancouver	BC	140000	165000	annually	2026-03-30 16:14:46.789194
article-49194115	software developer	2026-03-16	Montréal	QC	65	75	annually	2026-03-30 16:14:46.789207
article-49194304	software developer	2026-03-16	Calgary	AB	22	22	hourly	2026-03-30 16:14:46.789218
article-49194062	software developer	2026-03-16	Calgary	AB	60000	150000	annually	2026-03-30 16:14:46.78923
article-49194285	software developer	2026-03-16	Toronto	ON	90000	110000	annually	2026-03-30 16:14:46.789243
article-49198220	data scientist	2026-03-31	Toronto	ON	30	69.74	hourly	2026-03-31 16:16:08.094574
article-49197561	artificial intelligence (AI) consultant	2026-03-31	Toronto	ON	30	69.74	hourly	2026-03-31 16:16:08.094648
article-49197688	manager, data processing and systems analysis	2026-03-31	Toronto	ON	43.75	103.37	hourly	2026-03-31 16:16:08.094686
article-49197711	software developer	2026-03-30	Toronto	ON	30	76.92	hourly	2026-03-31 16:16:08.094706
article-49197482	data mining analyst	2026-03-30	Toronto	ON	30	69.74	hourly	2026-03-31 16:16:08.094722
article-49196633	software developer	2026-03-30	Saint-Laurent	QC	80000	90000	annually	2026-03-31 16:16:08.094743
article-49196153	cloud developer	2026-03-30	Mississauga	ON	47636.88	130709.76	annually	2026-03-31 16:16:08.094759
article-49195782	video game developer	2026-03-30	Edmonton	AB	50000	60000	annually	2026-03-31 16:16:08.094782
article-49195285	data engineer	2026-03-30	Ottawa	ON	89056	111320	annually	2026-03-31 16:16:08.0948
article-49194430	artificial intelligence (AI) consultant	2026-03-30	Toronto	ON	30	69.74	hourly	2026-03-31 16:16:08.094814
article-49194451	information technology (IT) director	2026-03-30	Toronto	ON	43.75	103.37	hourly	2026-03-31 16:16:08.094828
article-49194593	data scientist	2026-03-30	Toronto	ON	30	69.74	hourly	2026-03-31 16:16:08.094842
article-49194693	manager, IT (information technology) implementation	2026-03-30	Toronto	ON	43.75	103.37	hourly	2026-03-31 16:16:08.094855
article-49194699	director of technology management	2026-03-30	Toronto	ON	43.75	103.37	hourly	2026-03-31 16:16:08.094867
article-49194712	manager, computer systems	2026-03-30	Toronto	ON	43.75	103.37	hourly	2026-03-31 16:16:08.094879
article-49194826	data mining analyst	2026-03-30	Montréal	QC	30	69.74	hourly	2026-03-31 16:16:08.094893
article-49194895	senior software developer	2026-03-30	Calgary	AB	30	76.92	hourly	2026-03-31 16:16:08.094906
article-49194910	application programmer	2026-03-30	Mississauga	ON	30	76.92	hourly	2026-03-31 16:16:08.094918
article-49194919	data scientist	2026-03-30	Toronto	ON	30	69.74	hourly	2026-03-31 16:16:08.09493
article-49194964	data analyst - informatics and systems	2026-03-30	Toronto	ON	25	61.03	hourly	2026-03-31 16:16:08.094942
article-49194879	computer projects manager	2026-03-30	Terrebonne	QC	48.91	65.91	hourly	2026-03-31 16:16:08.094954
article-49194438	data analytics specialist	2026-03-30	Toronto	ON	80000	115000	annually	2026-03-31 16:16:08.094967
article-49203812	database analyst	2026-04-01	Nepean	ON	150000	170000	annually	2026-04-01 16:13:53.989916
article-49203425	quantitative analyst	2026-04-01	Surrey	BC	150000	150000	annually	2026-04-01 16:13:53.990002
article-49203224	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.99008
article-49203238	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.990134
article-49203125	software developer	2026-04-01	Mississauga	ON	10000	10000	monthly	2026-04-01 16:13:53.990184
article-49203137	software developer	2026-04-01	Calgary	AB	10000	10000	monthly	2026-04-01 16:13:53.990239
article-49203140	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.990288
article-49203173	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.990343
article-49203183	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.99039
article-49202877	data mining analyst	2026-04-01	Toronto	ON	30	69.74	hourly	2026-04-01 16:13:53.990436
article-49203091	manager, computer applications	2026-04-01	Toronto	ON	43.75	103.37	hourly	2026-04-01 16:13:53.99048
article-49202754	software developer	2026-04-01	Calgary	AB	10000	10000	monthly	2026-04-01 16:13:53.990513
article-49202918	software developer	2026-04-01	Montréal	QC	10000	10000	monthly	2026-04-01 16:13:53.99056
article-49202926	software developer	2026-04-01	Calgary	AB	10000	10000	monthly	2026-04-01 16:13:53.990604
article-49202932	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.990649
article-49202942	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.990693
article-49202949	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.990724
article-49202955	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.990766
article-49202996	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.990809
article-49203014	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.990838
article-49203072	software developer	2026-04-01	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.990881
article-49202138	manager, IT (information technology) implementation	2026-04-01	Toronto	ON	43.75	103.37	hourly	2026-04-01 16:13:53.990926
article-49202285	software development manager	2026-03-31	Oshawa	ON	65	75	hourly	2026-04-01 16:13:53.99097
article-49202065	senior software developer	2026-03-31	Toronto	ON	30	76.92	hourly	2026-04-01 16:13:53.991035
article-49201957	manager, data processing and systems analysis	2026-03-31	Toronto	ON	43.75	103.37	hourly	2026-04-01 16:13:53.991065
article-49201859	cloud developer	2026-03-31	North York	ON	30.78	89.24	hourly	2026-04-01 16:13:53.991081
article-49201229	data administrator	2026-03-31	Drayton Valley	AB	42	42	hourly	2026-04-01 16:13:53.991121
article-49201203	software engineering manager	2026-03-31	Hamilton	ON	140000	230000	annually	2026-04-01 16:13:53.99116
article-49200645	cloud developer	2026-03-31	Toronto	ON	125000	180000	annually	2026-04-01 16:13:53.99119
article-49200499	systems architecture director	2026-03-31	Mississauga	ON	84.13	84.13	hourly	2026-04-01 16:13:53.99123
article-49200044	database analyst	2026-03-31	Markham	ON	44.47	44.47	hourly	2026-04-01 16:13:53.991271
article-49199682	senior software developer	2026-03-31	Toronto	ON	30	76.92	hourly	2026-04-01 16:13:53.991299
article-49200342	senior software developer	2026-03-31	Thornhill	ON	47	47	hourly	2026-04-01 16:13:53.991338
article-49200391	software developer	2026-03-31	Mississauga	ON	48.08	48.08	hourly	2026-04-01 16:13:53.991381
article-49199244	data analyst - informatics and systems	2026-03-31	Mississauga	ON	25	61.03	hourly	2026-04-01 16:13:53.991411
article-49199280	senior software developer	2026-03-31	Toronto	ON	30	76.92	hourly	2026-04-01 16:13:53.991453
article-49199055	director of technology management	2026-03-31	Toronto	ON	43.75	103.37	hourly	2026-04-01 16:13:53.991493
article-49199500	manager, IT (information technology) implementation	2026-03-31	Toronto	ON	43.75	103.37	hourly	2026-04-01 16:13:53.991521
article-49199301	artificial intelligence (AI) consultant	2026-03-31	Toronto	ON	30	69.74	hourly	2026-04-01 16:13:53.991563
article-49199024	artificial intelligence (AI) analyst	2026-03-31	Montréal	QC	25	25	hourly	2026-04-01 16:13:53.991606
article-49202934	software developer	2026-03-31	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.991648
article-49202889	software developer	2026-03-31	Toronto	ON	85000	85000	annually	2026-04-01 16:13:53.991679
article-49203189	software developer	2026-03-31	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.99172
article-49203905	data scientist	2026-03-31	Montréal	QC	70000	110000	annually	2026-04-01 16:13:53.991765
article-49203092	director of software engineering	2026-03-31	Calgary	AB	160000	160000	annually	2026-04-01 16:13:53.991809
article-49202737	software developer	2026-03-30	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.991852
article-49202744	software developer	2026-03-30	Saint-Laurent	QC	80000	90000	annually	2026-04-01 16:13:53.991884
article-49202264	manager, database	2026-03-30	Toronto	ON	24	58	hourly	2026-04-01 16:13:53.991927
article-49202760	software developer	2026-03-28	Mississauga	ON	10000	10000	monthly	2026-04-01 16:13:53.991971
article-49203083	software developer	2026-03-28	Toronto	ON	10000	10000	monthly	2026-04-01 16:13:53.992036
article-49203166	software developer	2026-03-27	Chatham	ON	85000	125000	annually	2026-04-01 16:13:53.992086
article-49197806	cloud operations manager	2026-03-27	Markham	ON	80000	90000	annually	2026-04-01 16:13:53.992132
article-49209726	manager, computer applications	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.354454
article-49209748	software developer	2026-04-02	Montréal	QC	30	76.92	hourly	2026-04-02 16:11:30.354515
article-49210002	manager, IT (information technology) implementation	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.354553
article-49210012	director of technology management	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.354573
article-49210014	software development manager	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.35459
article-49210074	manager, computer applications	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.354611
article-49210094	director of technology management	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.354626
article-49210105	artificial intelligence (AI) consultant	2026-04-02	Calgary	AB	30	69.74	hourly	2026-04-02 16:11:30.354649
article-49210122	software development manager	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.354665
article-49210124	data scientist	2026-04-02	Toronto	ON	30	69.74	hourly	2026-04-02 16:11:30.354679
article-49210126	manager, IT (information technology) implementation	2026-04-02	Mississauga	ON	43.75	103.37	hourly	2026-04-02 16:11:30.354693
article-49210129	senior software developer	2026-04-02	Toronto	ON	30	76.92	hourly	2026-04-02 16:11:30.354723
article-49209989	computer systems manager	2026-04-02	Vancouver	BC	40.87	40.87	hourly	2026-04-02 16:11:30.354754
article-49207886	senior software developer	2026-04-02	Toronto	ON	30	76.92	hourly	2026-04-02 16:11:30.354772
article-49207900	Java programmer	2026-04-02	Toronto	ON	30	76.92	hourly	2026-04-02 16:11:30.354787
article-49207901	data scientist	2026-04-02	Toronto	ON	30	69.74	hourly	2026-04-02 16:11:30.35483
article-49207904	data mining analyst	2026-04-02	Toronto	ON	30	69.74	hourly	2026-04-02 16:11:30.354847
article-49207641	data mining analyst	2026-04-02	Toronto	ON	30	69.74	hourly	2026-04-02 16:11:30.35486
article-49207642	software developer	2026-04-02	Toronto	ON	30	76.92	hourly	2026-04-02 16:11:30.354874
article-49207687	senior software developer	2026-04-02	Toronto	ON	30	76.92	hourly	2026-04-02 16:11:30.354888
article-49207794	manager, computer applications	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.3549
article-49207834	information technology (IT) director	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.354912
article-49207846	software developer	2026-04-02	Toronto	ON	30	76.92	hourly	2026-04-02 16:11:30.354925
article-49207850	software development manager	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.354937
article-49207058	computer projects manager	2026-04-01	Boisbriand	QC	88000	110000	annually	2026-04-02 16:11:30.35495
article-49206431	business systems manager	2026-04-01	Québec	QC	72709	92911	annually	2026-04-02 16:11:30.354966
article-49204647	artificial intelligence (AI) consultant	2026-04-01	Toronto	ON	30	69.74	hourly	2026-04-02 16:11:30.35498
article-49204658	data scientist	2026-04-01	Toronto	ON	30	69.74	hourly	2026-04-02 16:11:30.354993
article-49204787	senior software developer	2026-04-01	Mississauga	ON	30	76.92	hourly	2026-04-02 16:11:30.355049
article-49204755	artificial intelligence (AI) consultant	2026-04-01	Toronto	ON	30	69.74	hourly	2026-04-02 16:11:30.355076
article-49204629	artificial intelligence (AI) consultant	2026-04-01	Calgary	AB	30	69.74	hourly	2026-04-02 16:11:30.355092
article-49204509	software engineering manager	2026-04-01	Toronto	ON	43.75	103.37	hourly	2026-04-02 16:11:30.355105
article-49208164	software developer	2026-04-01	Toronto	ON	97.25	97.25	hourly	2026-04-02 16:11:30.355117
article-49207917	director, data processing	2026-04-01	Toronto	ON	40	92	hourly	2026-04-02 16:11:30.355131
article-49207956	cloud developer	2026-03-31	North York	ON	30.78	89.24	hourly	2026-04-02 16:11:30.355143
article-49214787	computer projects manager	2026-04-03	Québec	QC	85000	100000	annually	2026-04-03 15:53:15.221592
article-49214306	data scientist	2026-04-03	Montréal	QC	26	78	hourly	2026-04-03 15:53:15.221639
article-49213837	data mining analyst	2026-04-03	Toronto	ON	30	69.74	hourly	2026-04-03 15:53:15.221663
article-49213845	artificial intelligence (AI) consultant	2026-04-03	Toronto	ON	30	69.74	hourly	2026-04-03 15:53:15.221682
article-49213544	data analyst - informatics and systems	2026-04-02	Toronto	ON	25	61.03	hourly	2026-04-03 15:53:15.221698
article-49213695	database analyst	2026-04-02	Toronto	ON	25	61.03	hourly	2026-04-03 15:53:15.221718
article-49212522	administrator, database	2026-04-02	Ottawa	ON	77120	90780	hourly	2026-04-03 15:53:15.221735
article-49212998	administrator, database	2026-04-02	Ottawa	ON	77120	90780	annually	2026-04-03 15:53:15.221758
article-49212705	cloud developer	2026-04-02	Mississauga	ON	100000	120000	annually	2026-04-03 15:53:15.221775
article-49212369	software developer	2026-04-02	Edmonton	AB	30	35	hourly	2026-04-03 15:53:15.221791
article-49212095	data warehouse analyst	2026-04-02	Concord	ON	70000	81000	annually	2026-04-03 15:53:15.221806
article-49212122	records office supervisor	2026-04-02	Brampton	ON	36	36	hourly	2026-04-03 15:53:15.22182
article-49210850	software development manager	2026-04-02	Toronto	ON	43.75	103.37	hourly	2026-04-03 15:53:15.221835
article-49210262	artificial intelligence (AI) consultant	2026-04-02	Toronto	ON	30	69.74	hourly	2026-04-03 15:53:15.221849
article-49210347	senior software developer	2026-04-02	Etobicoke	ON	113409	113409	annually	2026-04-03 15:53:15.221862
article-49214637	manager, data processing and systems analysis	2026-04-02	Kitchener	ON	40	92	hourly	2026-04-03 15:53:15.221874
article-49223254	cloud operations manager	2026-04-05	Kanata	ON	130000	150000	annually	2026-04-05 15:47:34.187918
article-49221671	data analyst - informatics and systems	2026-04-04	Montréal	QC	25	61.03	hourly	2026-04-05 15:47:34.187966
article-49220173	information technology (IT) director	2026-04-04	Toronto	ON	43.75	103.37	hourly	2026-04-05 15:47:34.187999
article-49220183	artificial intelligence (AI) consultant	2026-04-04	Toronto	ON	30	69.74	hourly	2026-04-05 15:47:34.18802
article-49220241	manager, IT (information technology) implementation	2026-04-04	Toronto	ON	43.75	103.37	hourly	2026-04-05 15:47:34.188037
article-49220276	operations supervisor	2026-04-04	Vernon	BC	22	46	hourly	2026-04-05 15:47:34.188058
article-49220319	data scientist	2026-04-04	Toronto	ON	30	69.74	hourly	2026-04-05 15:47:34.188086
article-49220322	senior software developer	2026-04-04	Toronto	ON	30	76.92	hourly	2026-04-05 15:47:34.188108
article-49220368	director of technology management	2026-04-04	Toronto	ON	43.75	103.37	hourly	2026-04-05 15:47:34.188125
article-49220434	information technology (IT) implementation manager	2026-04-04	Toronto	ON	43.75	103.37	hourly	2026-04-05 15:47:34.188139
article-49220442	director of software engineering	2026-04-04	Toronto	ON	43.75	103.37	hourly	2026-04-05 15:47:34.188152
article-49220443	data analyst - informatics and systems	2026-04-04	Toronto	ON	25	61.03	hourly	2026-04-05 15:47:34.188166
article-49215940	office supervisor	2026-04-03	Montréal	QC	35	38	hourly	2026-04-05 15:47:34.188181
article-49215912	director of technology management	2026-04-03	Toronto	ON	43.75	103.37	hourly	2026-04-05 15:47:34.188194
article-49215967	software developer	2026-04-03	Toronto	ON	30	76.92	hourly	2026-04-05 15:47:34.188206
article-49215970	data analyst - informatics and systems	2026-04-03	Mississauga	ON	25	61.03	hourly	2026-04-05 15:47:34.188218
article-49216022	senior software developer	2026-04-03	Toronto	ON	30	76.92	hourly	2026-04-05 15:47:34.18823
article-49216055	artificial intelligence (AI) consultant	2026-04-03	Toronto	ON	30	69.74	hourly	2026-04-05 15:47:34.188249
article-49216058	manager, computer applications	2026-04-03	Toronto	ON	43.75	103.37	hourly	2026-04-05 15:47:34.188262
article-49216096	director, data processing	2026-04-03	Toronto	ON	43.75	103.37	hourly	2026-04-05 15:47:34.188274
article-49216125	artificial intelligence (AI) consultant	2026-04-03	Toronto	ON	30	69.74	hourly	2026-04-05 15:47:34.188286
article-49216126	manager, computer applications	2026-04-03	Toronto	ON	43.75	103.37	hourly	2026-04-05 15:47:34.188297
article-49216211	database analyst (DBA)	2026-04-03	Montréal	QC	25	61.03	hourly	2026-04-05 15:47:34.18831
article-49216219	manager, computer applications	2026-04-03	Toronto	ON	43.75	103.37	hourly	2026-04-05 15:47:34.188322
article-49216232	data analyst - informatics and systems	2026-04-03	Toronto	ON	25	61.03	hourly	2026-04-05 15:47:34.188334
article-49225442	software developer	2026-04-06	Toronto	ON	69882.56	119278.21	annually	2026-04-06 16:00:20.29634
article-49224842	manager, IT (information technology) implementation	2026-04-05	Toronto	ON	43.75	103.37	hourly	2026-04-06 16:00:20.296382
article-49223475	senior software developer	2026-04-05	Calgary	AB	30	76.92	hourly	2026-04-06 16:00:20.296404
article-49223478	software developer	2026-04-05	Montréal	QC	30	76.92	hourly	2026-04-06 16:00:20.296423
article-49223500	senior software developer	2026-04-05	Toronto	ON	30	76.92	hourly	2026-04-06 16:00:20.296439
article-49223501	artificial intelligence (AI) consultant	2026-04-05	Calgary	AB	30	69.74	hourly	2026-04-06 16:00:20.29646
article-49223504	artificial intelligence (AI) consultant	2026-04-05	Toronto	ON	30	69.74	hourly	2026-04-06 16:00:20.296475
article-49223530	manager, IT (information technology) implementation	2026-04-05	Toronto	ON	43.75	103.37	hourly	2026-04-06 16:00:20.296497
article-49223536	software development manager	2026-04-05	Toronto	ON	43.75	103.37	hourly	2026-04-06 16:00:20.296513
article-49223576	data scientist	2026-04-05	Toronto	ON	30	69.74	hourly	2026-04-06 16:00:20.296527
article-49223623	manager, IT (information technology) implementation	2026-04-05	Mississauga	ON	43.75	103.37	hourly	2026-04-06 16:00:20.296541
article-49223631	senior software developer	2026-04-05	Toronto	ON	30	76.92	hourly	2026-04-06 16:00:20.296554
article-49216270	senior software developer	2026-04-03	Toronto	ON	30	76.92	hourly	2026-04-06 16:00:20.296567
article-49232581	artificial intelligence (AI) consultant	2026-04-07	Toronto	ON	30	69.74	hourly	2026-04-07 16:18:35.03097
article-49232623	manager, computer applications	2026-04-07	Toronto	ON	43.75	103.37	hourly	2026-04-07 16:18:35.031011
article-49232760	manager, IT (information technology) implementation	2026-04-07	Mississauga	ON	43.75	103.37	hourly	2026-04-07 16:18:35.031032
article-49232761	software development manager	2026-04-07	Toronto	ON	43.75	103.37	hourly	2026-04-07 16:18:35.031049
article-49232769	manager, computer systems	2026-04-07	Toronto	ON	43.75	103.37	hourly	2026-04-07 16:18:35.031064
article-49232772	senior software developer	2026-04-07	Toronto	ON	30	76.92	hourly	2026-04-07 16:18:35.031083
article-49232788	senior software developer	2026-04-07	Toronto	ON	30	76.92	hourly	2026-04-07 16:18:35.031099
article-49232790	software development manager	2026-04-07	Toronto	ON	43.75	103.37	hourly	2026-04-07 16:18:35.031121
article-49232821	artificial intelligence (AI) consultant	2026-04-07	Calgary	AB	30	69.74	hourly	2026-04-07 16:18:35.031136
article-49232887	data scientist	2026-04-07	Toronto	ON	30	69.74	hourly	2026-04-07 16:18:35.031151
article-49232091	information technology (IT) implementation managerThis job posting is posted by a recruitment agency on behalf of the employer.	2026-04-07	St. Albert	AB	120000	130000	annually	2026-04-07 16:18:35.031167
article-49230115	software developer	2026-04-07	Montréal	QC	10000	10000	monthly	2026-04-07 16:18:35.031183
article-49229369	database architect	2026-04-07	Toronto	ON	25	61.03	hourly	2026-04-07 16:18:35.031237
article-49228972	manager, IT (information technology) implementation	2026-04-06	Toronto	ON	43.75	103.37	hourly	2026-04-07 16:18:35.031254
article-49228694	operations supervisor	2026-04-06	Victoria	BC	24	24	hourly	2026-04-07 16:18:35.031268
article-49227956	office supervisor	2026-04-06	Rocky View	AB	36	36	hourly	2026-04-07 16:18:35.03128
article-49226963	data analyst - informatics and systems	2026-04-06	Mississauga	ON	25	61.03	hourly	2026-04-07 16:18:35.031292
article-49226964	software engineering manager	2026-04-06	Toronto	ON	43.75	103.37	hourly	2026-04-07 16:18:35.031304
article-49227015	software development manager	2026-04-06	Toronto	ON	43.75	103.37	hourly	2026-04-07 16:18:35.031316
article-49227032	data scientist	2026-04-06	Toronto	ON	30	69.74	hourly	2026-04-07 16:18:35.031329
article-49227083	manager, IT (information technology) implementation	2026-04-06	Toronto	ON	43.75	103.37	hourly	2026-04-07 16:18:35.03134
article-49227116	artificial intelligence (AI) consultant	2026-04-06	Toronto	ON	30	69.74	hourly	2026-04-07 16:18:35.031353
article-49227130	manager, computer applications	2026-04-06	Toronto	ON	43.75	103.37	hourly	2026-04-07 16:18:35.031365
article-49227142	data analyst - informatics and systems	2026-04-06	Toronto	ON	25	61.03	hourly	2026-04-07 16:18:35.031377
article-49227152	senior software developer	2026-04-06	Calgary	AB	30	76.92	hourly	2026-04-07 16:18:35.031389
article-49229657	software developer	2026-04-06	Drayton Valley	AB	45	45	hourly	2026-04-07 16:18:35.031401
article-49229692	software developer	2026-04-06	Toronto	ON	69882.56	119278.21	annually	2026-04-07 16:18:35.031413
article-49230190	software developer	2026-04-06	LaSalle	ON	50000	50000	annually	2026-04-07 16:18:35.031425
article-49230158	software developer	2026-04-06	Edmonton	AB	80	80	hourly	2026-04-07 16:18:35.031437
article-49230223	software developer	2026-04-06	Edmonton	AB	80	88	hourly	2026-04-07 16:18:35.031449
article-49229995	software developer	2026-04-06	Waterloo	ON	55	55	hourly	2026-04-07 16:18:35.03146
article-49230113	software developer	2026-04-06	Toronto	ON	55	55	hourly	2026-04-07 16:18:35.031471
article-49230070	software developer	2026-04-06	Montréal	QC	38	38	hourly	2026-04-07 16:18:35.031482
article-49230181	software developer	2026-04-06	Laval	QC	38	38	hourly	2026-04-07 16:18:35.031494
article-49229195	manager, computer system operations	2026-04-05	Brampton	ON	40	92	hourly	2026-04-07 16:18:35.031506
article-49216235	data scientist	2026-04-03	Toronto	ON	30	69.74	hourly	2026-04-07 16:18:35.031518
article-49230083	software developer	2026-04-03	Toronto	ON	10000	10000	monthly	2026-04-07 16:18:35.03153
article-49230021	software developer	2026-04-03	Toronto	ON	10000	10000	monthly	2026-04-07 16:18:35.031541
article-49230205	software developer	2026-04-03	Toronto	ON	10000	10000	monthly	2026-04-07 16:18:35.031553
article-49230137	software developer	2026-04-03	Toronto	ON	10000	10000	monthly	2026-04-07 16:18:35.031564
article-49230077	data architect	2026-04-02	Montréal	QC	90000	120000	hourly	2026-04-07 16:18:35.031577
article-49230045	software developer	2026-04-02	Mississauga	ON	100000	125000	annually	2026-04-07 16:18:35.03159
article-49229662	software developer	2026-04-02	Toronto	ON	80	80	hourly	2026-04-07 16:18:35.031601
article-49230052	software developer	2026-04-02	Mississauga	ON	100000	125000	annually	2026-04-07 16:18:35.031613
article-49230048	senior software developer	2026-04-02	Edmonton	AB	120000	120000	annually	2026-04-07 16:18:35.031624
article-49229730	software developer	2026-04-02	Vancouver	BC	155000	155000	annually	2026-04-07 16:18:35.031635
article-49230147	software developer	2026-04-02	Toronto	ON	10000	10000	monthly	2026-04-07 16:18:35.031646
article-49230148	software developer	2026-04-02	Campbell River	BC	39520	43680	annually	2026-04-07 16:18:35.031659
article-49230104	software developer	2026-04-02	Montréal	QC	38	40	hourly	2026-04-07 16:18:35.031671
article-49230057	software developer	2026-04-01	Markham	ON	30	34	hourly	2026-04-07 16:18:35.031682
article-49238004	application programmer	2026-04-08	Chilliwack	BC	52.5	52.5	hourly	2026-04-08 16:21:54.853997
article-49238024	business process manager	2026-04-08	Nepean	ON	160000	180000	annually	2026-04-08 16:21:54.854058
article-49237668	data engineer	2026-04-08	Toronto	ON	98000	98000	annually	2026-04-08 16:21:54.854089
article-49236218	office supervisor	2026-04-08	Québec	QC	74500	94400	annually	2026-04-08 16:21:54.854119
article-49235818	director, data processing	2026-04-08	Toronto	ON	40	92	hourly	2026-04-08 16:21:54.854141
article-49235801	manager, IT (information technology) implementation	2026-04-08	Toronto	ON	43.75	103.37	hourly	2026-04-08 16:21:54.85417
article-49234825	co-ordinator, word processing service	2026-04-07	Drummondville	QC	58700	67400	annually	2026-04-08 16:21:54.85419
article-49234421	co-ordinator, word processing service	2026-04-07	Sherbrooke	QC	58700	67400	annually	2026-04-08 16:21:54.854225
article-49234613	co-ordinator, word processing service	2026-04-07	Saint-Jérôme	QC	58700	67400	annually	2026-04-08 16:21:54.854248
article-49234499	operations supervisor	2026-04-07	Delta	BC	70000	80000	annually	2026-04-08 16:21:54.85427
article-49234652	receptionists supervisor	2026-04-07	Edmonton	AB	24	30	hourly	2026-04-08 16:21:54.85429
article-49233670	cloud operations manager	2026-04-07	Fort Saskatchewan	AB	120000	160000	annually	2026-04-08 16:21:54.854313
article-49233309	developer, software	2026-04-07	Saint-Laurent	QC	110000	110000	annually	2026-04-08 16:21:54.854327
article-49233541	developer, software	2026-04-07	Saint-Laurent	QC	90000	90000	annually	2026-04-08 16:21:54.854348
article-49233558	software developer	2026-04-07	Surrey	BC	44	44	hourly	2026-04-08 16:21:54.854365
article-49233521	software developerThis job posting is posted by a recruitment agency on behalf of the employer.	2026-04-07	Rockcliffe	ON	51	51	hourly	2026-04-08 16:21:54.854376
article-49236649	data administrator	2026-04-07	Etobicoke	ON	20	20	hourly	2026-04-08 16:21:54.854396
article-49236703	software developer	2026-04-07	Innisfail	AB	45	45	hourly	2026-04-08 16:21:54.854412
article-49236362	cloud developer	2026-04-07	Penticton	BC	53056	55470	annually	2026-04-08 16:21:54.854431
article-49235740	cloud developer	2026-04-07	Toronto	ON	100000	110000	annually	2026-04-08 16:21:54.854451
article-49227162	software development manager	2026-04-06	Toronto	ON	43.75	103.37	hourly	2026-04-08 16:21:54.854465
article-49227163	data analyst - informatics and systems	2026-04-06	Toronto	ON	25	61.03	hourly	2026-04-08 16:21:54.854484
article-49227159	database analyst (DBA)	2026-04-06	Montréal	QC	25	61.03	hourly	2026-04-08 16:21:54.854503
article-49236670	software developer	2026-04-06	Drayton Valley	AB	45	45	hourly	2026-04-08 16:21:54.854519
article-49236735	software developer	2026-04-06	Toronto	ON	69882.56	119278.21	annually	2026-04-08 16:21:54.854538
article-49245656	artificial intelligence (AI) consultant	2026-04-09	Toronto	ON	30	69.74	hourly	2026-04-09 16:26:44.613764
article-49245963	artificial intelligence (AI) consultant	2026-04-09	Calgary	AB	30	69.74	hourly	2026-04-09 16:26:44.613804
article-49245979	manager, computer applications	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.613826
article-49245981	senior software developer	2026-04-09	Mississauga	ON	30	76.92	hourly	2026-04-09 16:26:44.613839
article-49245984	data analyst - informatics and systems	2026-04-09	Toronto	ON	25	61.03	hourly	2026-04-09 16:26:44.613851
article-49245794	cloud developer	2026-04-09	Toronto	ON	75000	95000	annually	2026-04-09 16:26:44.613867
article-49244950	machine learning specialist	2026-04-09	Toronto	ON	125800	157300	annually	2026-04-09 16:26:44.613879
article-49244488	office supervisor	2026-04-09	New Richmond	QC	31.59	31.59	hourly	2026-04-09 16:26:44.613918
article-49244443	computer development division head	2026-04-09	Shawinigan	QC	95111	95111	annually	2026-04-09 16:26:44.613937
article-49243783	computer projects manager	2026-04-09	Québec	QC	85000	90000	annually	2026-04-09 16:26:44.61395
article-49243275	manager, computer applications	2026-04-09	Montréal	QC	43.75	103.37	hourly	2026-04-09 16:26:44.613961
article-49242301	supervisor, clinical receptionists	2026-04-09	Toronto	ON	38	38	hourly	2026-04-09 16:26:44.613971
article-49241911	information technology (IT) director	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.613982
article-49241946	senior software developer	2026-04-09	Toronto	ON	30	76.92	hourly	2026-04-09 16:26:44.613992
article-49241950	information technology (IT) director	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.614001
article-49241991	manager, computer systems	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.61401
article-49242001	software engineering manager	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.61402
article-49242025	database architect	2026-04-09	Toronto	ON	25	61.03	hourly	2026-04-09 16:26:44.614035
article-49242064	manager, computer applications	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.61405
article-49242084	manager, computer applications	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.614059
article-49242089	manager, computer applications	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.614068
article-49242091	data analyst - informatics and systems	2026-04-09	Toronto	ON	25	61.03	hourly	2026-04-09 16:26:44.614077
article-49242109	software developer	2026-04-09	Toronto	ON	30	76.92	hourly	2026-04-09 16:26:44.614085
article-49242112	director, data processing	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.614094
article-49242127	senior software developer	2026-04-09	Toronto	ON	30	76.92	hourly	2026-04-09 16:26:44.614103
article-49242173	manager, computer applications	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.614111
article-49242149	manager, IT (information technology) implementation	2026-04-09	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.61412
article-49242055	software developer	2026-04-08	Vancouver	BC	30	76.92	hourly	2026-04-09 16:26:44.614129
article-49241958	software developer	2026-04-08	Toronto	ON	30	76.92	hourly	2026-04-09 16:26:44.614144
article-49242019	manager, IT (information technology) implementation	2026-04-08	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.614157
article-49241922	manager, computer applications	2026-04-08	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.614165
article-49242142	manager, IT (information technology) implementation	2026-04-08	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.614174
article-49240644	office supervisor	2026-04-08	Kelowna	BC	94500	94500	annually	2026-04-09 16:26:44.614183
article-49240901	computer programs manager	2026-04-08	Québec	QC	95111	116916	annually	2026-04-09 16:26:44.614194
article-49240958	computer programs manager	2026-04-08	Montréal	QC	95111	116916	annually	2026-04-09 16:26:44.614203
article-49240725	computer game programmer	2026-04-08	Scarborough	ON	48.08	48.08	hourly	2026-04-09 16:26:44.614212
article-49240835	clerical supervisor	2026-04-08	Kamloops	BC	35.59	35.59	hourly	2026-04-09 16:26:44.61422
article-49240615	chief data officer	2026-04-08	Vancouver	BC	160000	160000	annually	2026-04-09 16:26:44.614229
article-49239777	senior software developer	2026-04-08	Vancouver	BC	100000	176612.31	annually	2026-04-09 16:26:44.614242
article-49239871	computer department coordinator	2026-04-08	Sherbrooke	QC	64173	104013	annually	2026-04-09 16:26:44.614257
article-49239910	information technology (it) system administrator	2026-04-08	Ottawa	ON	50	60	hourly	2026-04-09 16:26:44.614269
article-49239508	computer projects manager	2026-04-08	Montréal	QC	36.65	62.01	hourly	2026-04-09 16:26:44.614279
article-49239525	computer projects manager	2026-04-08	Québec	QC	36.65	62.01	hourly	2026-04-09 16:26:44.614287
article-49239073	data scientist	2026-04-08	Toronto	ON	30	69.74	hourly	2026-04-09 16:26:44.614301
article-49239119	senior software developer	2026-04-08	Montréal	QC	30	76.92	hourly	2026-04-09 16:26:44.614313
article-49239013	artificial intelligence (AI) consultant	2026-04-08	Toronto	ON	30	69.74	hourly	2026-04-09 16:26:44.614326
article-49239144	senior software developer	2026-04-08	Toronto	ON	30	76.92	hourly	2026-04-09 16:26:44.614338
article-49239125	manager, IT (information technology) implementation	2026-04-08	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.61435
article-49239299	information technology (IT) director	2026-04-08	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.614363
article-49239229	operations supervisor	2026-04-08	Vernon	BC	22	46	hourly	2026-04-09 16:26:44.614374
article-49239280	director of technology management	2026-04-08	Toronto	ON	43.75	103.37	hourly	2026-04-09 16:26:44.614386
article-49239041	cybersecurity manager	2026-04-08	Saint-Canut	QC	38500	38500	annually	2026-04-09 16:26:44.614398
article-49243067	software developer	2026-04-08	Toronto	ON	10000	10000	monthly	2026-04-09 16:26:44.61441
article-49242968	software developer	2026-04-08	Toronto	ON	10000	10000	monthly	2026-04-09 16:26:44.614422
article-49242969	software developer	2026-04-08	Markham	ON	10000	10000	monthly	2026-04-09 16:26:44.614434
article-49243100	software developer	2026-04-08	Markham	ON	10000	10000	monthly	2026-04-09 16:26:44.614445
article-49242779	software developer	2026-04-07	Innisfail	AB	45	45	hourly	2026-04-09 16:26:44.614457
article-49243115	software developer	2026-04-07	Edmonton	AB	80	100	hourly	2026-04-09 16:26:44.614469
article-49243011	software developer	2026-04-07	Toronto	ON	10000	10000	monthly	2026-04-09 16:26:44.61448
article-49255577	software developer	2026-04-10	Toronto	ON	90000	90000	annually	2026-04-10 16:05:43.869247
article-49253030	cloud operations manager	2026-04-10	Calgary	AB	50514.12	123413.37	annually	2026-04-10 16:05:43.8693
article-49251468	software developer	2026-04-10	Toronto	ON	30	76.92	hourly	2026-04-10 16:05:43.869323
article-49251898	manager, data processing and systems analysis	2026-04-10	Toronto	ON	43.75	103.37	hourly	2026-04-10 16:05:43.869341
article-49252019	manager, computer applications	2026-04-10	Toronto	ON	43.75	103.37	hourly	2026-04-10 16:05:43.869356
article-49252083	data mining analyst	2026-04-10	Toronto	ON	30	69.74	hourly	2026-04-10 16:05:43.869376
article-49252111	software engineering manager	2026-04-10	Toronto	ON	43.75	103.37	hourly	2026-04-10 16:05:43.869392
article-49249916	manager, computer systems	2026-04-09	Abbotsford	BC	67.34	67.34	hourly	2026-04-10 16:05:43.869423
article-49249987	office supervisor	2026-04-09	Tweed	ON	36	36	hourly	2026-04-10 16:05:43.86944
article-49248458	operations supervisor	2026-04-09	Mississauga	ON	38	38	hourly	2026-04-10 16:05:43.869454
article-49247913	data engineer	2026-04-09	Toronto	ON	75000	75000	annually	2026-04-10 16:05:43.86947
article-49247878	User interface (UI) designer	2026-04-09	Sudbury	ON	25	25	hourly	2026-04-10 16:05:43.869491
article-49242147	data analyst - informatics and systems	2026-04-09	Toronto	ON	25	61.03	hourly	2026-04-10 16:05:43.869505
article-49255626	software developer	2026-04-09	Toronto	ON	60	60	hourly	2026-04-10 16:05:43.869517
article-49255624	software developer	2026-04-09	Calgary	AB	10000	10000	monthly	2026-04-10 16:05:43.869535
article-49242256	software developer	2026-04-09	Toronto	ON	30	76.92	hourly	2026-04-10 16:05:43.869552
article-49293126	computer projects manager	2026-04-12	Sherbrooke	QC	115000	135000	annually	2026-04-12 15:51:07.557539
article-49292671	data scientist	2026-04-12	Toronto	ON	30	69.74	hourly	2026-04-12 15:51:07.557596
article-49292679	database analyst	2026-04-12	Toronto	ON	25	61.03	hourly	2026-04-12 15:51:07.557617
article-49292725	manager, IT (information technology) implementation	2026-04-12	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.557643
article-49292719	software developer	2026-04-11	Toronto	ON	30	76.92	hourly	2026-04-12 15:51:07.557665
article-49292448	artificial intelligence (AI) consultant	2026-04-11	Toronto	ON	30	69.74	hourly	2026-04-12 15:51:07.557684
article-49290783	manager, computer applications	2026-04-11	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.557707
article-49290789	artificial intelligence (AI) consultant	2026-04-11	Toronto	ON	30	69.74	hourly	2026-04-12 15:51:07.557736
article-49290808	senior software developer	2026-04-11	Toronto	ON	30	76.92	hourly	2026-04-12 15:51:07.557751
article-49290860	artificial intelligence (AI) consultant	2026-04-11	Calgary	AB	30	69.74	hourly	2026-04-12 15:51:07.557796
article-49290946	data scientist	2026-04-11	Mississauga	ON	30	69.74	hourly	2026-04-12 15:51:07.55781
article-49290961	manager, computer applications	2026-04-11	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.55783
article-49290989	manager, IT (information technology) implementation	2026-04-11	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.557842
article-49290990	software development manager	2026-04-11	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.557862
article-49290995	manager, computer applications	2026-04-11	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.557875
article-49291000	data scientist	2026-04-11	Toronto	ON	30	69.74	hourly	2026-04-12 15:51:07.557895
article-49289573	PC (personal computer) application developer	2026-04-11	Montréal	QC	100000	110000	annually	2026-04-12 15:51:07.557911
article-49270702	manager, IT (information technology) implementation	2026-04-11	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.55793
article-49270740	software developer	2026-04-11	Toronto	ON	30	76.92	hourly	2026-04-12 15:51:07.557942
article-49270769	artificial intelligence (AI) consultant	2026-04-11	Toronto	ON	30	69.74	hourly	2026-04-12 15:51:07.557962
article-49270790	manager, IT (information technology) implementation	2026-04-11	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.557973
article-49270807	software developer	2026-04-11	Toronto	ON	30	76.92	hourly	2026-04-12 15:51:07.557992
article-49270949	data scientist	2026-04-11	Toronto	ON	30	69.74	hourly	2026-04-12 15:51:07.558003
article-49270951	architect, database	2026-04-11	Toronto	ON	25	61.03	hourly	2026-04-12 15:51:07.558022
article-49270964	software developer	2026-04-11	Toronto	ON	30	76.92	hourly	2026-04-12 15:51:07.558033
article-49264660	office supervisor	2026-04-10	Brampton	ON	36.1	36.1	hourly	2026-04-12 15:51:07.558043
article-49264730	office supervisor	2026-04-10	Brampton	ON	36	37	hourly	2026-04-12 15:51:07.558062
article-49260900	information technology (IT) director	2026-04-10	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.558073
article-49260939	senior software developer	2026-04-10	Toronto	ON	30	76.92	hourly	2026-04-12 15:51:07.558091
article-49261356	software development manager	2026-04-10	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.558101
article-49261335	software developer	2026-04-10	Toronto	ON	30	76.92	hourly	2026-04-12 15:51:07.558113
article-49261141	software development manager	2026-04-10	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.558134
article-49261338	senior software developer	2026-04-10	Calgary	AB	30	76.92	hourly	2026-04-12 15:51:07.558146
article-49261366	data analyst - informatics and systems	2026-04-10	Toronto	ON	25	61.03	hourly	2026-04-12 15:51:07.558165
article-49261333	data mining analyst	2026-04-10	Toronto	ON	30	69.74	hourly	2026-04-12 15:51:07.558176
article-49261246	manager, IT (information technology) implementation	2026-04-10	Mississauga	ON	43.75	103.37	hourly	2026-04-12 15:51:07.558195
article-49261358	information technology (IT) implementation manager	2026-04-10	Toronto	ON	43.75	103.37	hourly	2026-04-12 15:51:07.558206
article-49260910	telephone service supervisor	2026-04-10	Meaford	ON	18.39	20.07	hourly	2026-04-12 15:51:07.558216
article-49299290	operations supervisor	2026-04-13	Val-David	QC	26.1	27.65	hourly	2026-04-13 16:23:08.093508
article-49299248	software developer	2026-04-13	Toronto	ON	30	76.92	hourly	2026-04-13 16:23:08.093553
article-49299312	senior software developer	2026-04-13	Toronto	ON	30	76.92	hourly	2026-04-13 16:23:08.093574
article-49299336	artificial intelligence (AI) consultant	2026-04-13	Toronto	ON	30	69.74	hourly	2026-04-13 16:23:08.09359
article-49299350	artificial intelligence (AI) consultant	2026-04-13	Toronto	ON	30	69.74	hourly	2026-04-13 16:23:08.093603
article-49299415	director, data processing	2026-04-13	Toronto	ON	43.75	103.37	hourly	2026-04-13 16:23:08.093622
article-49299448	artificial intelligence (AI) consultant	2026-04-13	Toronto	ON	30	69.74	hourly	2026-04-13 16:23:08.093636
article-49299450	artificial intelligence (AI) consultant	2026-04-13	Toronto	ON	30	69.74	hourly	2026-04-13 16:23:08.093659
article-49299649	artificial intelligence (AI) consultant	2026-04-13	Calgary	AB	30	69.74	hourly	2026-04-13 16:23:08.093674
article-49298794	help desk manager - information technology (IT)	2026-04-13	Coniston	ON	50000	70000	annually	2026-04-13 16:23:08.093689
article-49299035	software development manager	2026-04-13	Sainte-Julie	QC	90000	120000	annually	2026-04-13 16:23:08.093704
article-49298204	operations supervisor	2026-04-13	Saguenay	QC	39	42	hourly	2026-04-13 16:23:08.093718
article-49296586	manager, IT (information technology) implementation	2026-04-13	Coquitlam	BC	29	69	hourly	2026-04-13 16:23:08.093731
article-49296626	manager, IT (information technology) implementation	2026-04-13	Alert Bay	BC	29	69	hourly	2026-04-13 16:23:08.093743
article-49296210	director of technology management	2026-04-13	Toronto	ON	43.75	103.37	hourly	2026-04-13 16:23:08.093756
article-49296220	data mining analyst	2026-04-13	Toronto	ON	30	69.74	hourly	2026-04-13 16:23:08.093767
article-49296226	manager, computer applications	2026-04-13	Toronto	ON	43.75	103.37	hourly	2026-04-13 16:23:08.093779
article-49295681	cloud operations manager	2026-04-12	Canmore	AB	60000	60000	annually	2026-04-13 16:23:08.093791
article-49294593	senior software developer	2026-04-12	Toronto	ON	30	76.92	hourly	2026-04-13 16:23:08.093802
article-49294600	data scientist	2026-04-12	Toronto	ON	30	69.74	hourly	2026-04-13 16:23:08.093813
article-49294642	software developer	2026-04-12	Toronto	ON	30	76.92	hourly	2026-04-13 16:23:08.093824
article-49294647	senior software developer	2026-04-12	Toronto	ON	30	76.92	hourly	2026-04-13 16:23:08.093835
article-49294719	application programmer	2026-04-12	Mississauga	ON	30	76.92	hourly	2026-04-13 16:23:08.093846
article-49294720	database analyst (DBA)	2026-04-12	Montréal	QC	25	61.03	hourly	2026-04-13 16:23:08.09386
article-49294724	data scientist	2026-04-12	Toronto	ON	30	69.74	hourly	2026-04-13 16:23:08.093872
article-49270970	data mining analyst	2026-04-11	Toronto	ON	30	69.74	hourly	2026-04-13 16:23:08.093883
article-49297178	software developer	2026-04-11	Calgary	AB	10000	10000	monthly	2026-04-13 16:23:08.093895
article-49297229	software developer	2026-04-11	Vernon	BC	72950	84820	annually	2026-04-13 16:23:08.093907
article-49297242	software developer	2026-04-10	Toronto	ON	10000	10000	monthly	2026-04-13 16:23:08.093918
article-49296933	software developer	2026-04-10	Mississauga	ON	80000	100000	annually	2026-04-13 16:23:08.09393
article-49297124	software developer	2026-04-10	Toronto	ON	80	93	hourly	2026-04-13 16:23:08.093941
article-49297198	software developer	2026-04-10	Toronto	ON	45	45	hourly	2026-04-13 16:23:08.093952
article-49326167	data scientist	2026-04-14	Toronto	ON	30	69.74	hourly	2026-04-14 16:20:17.828921
article-49326263	senior software developer	2026-04-14	Toronto	ON	30	76.92	hourly	2026-04-14 16:20:17.828976
article-49326291	software developer	2026-04-14	Montréal	QC	30	76.92	hourly	2026-04-14 16:20:17.82901
article-49326312	data scientist	2026-04-14	Toronto	ON	30	69.74	hourly	2026-04-14 16:20:17.829035
article-49326488	manager, IT (information technology) implementation	2026-04-14	Toronto	ON	43.75	103.37	hourly	2026-04-14 16:20:17.829056
article-49326592	senior software developer	2026-04-14	Calgary	AB	30	76.92	hourly	2026-04-14 16:20:17.829083
article-49326636	data analyst - informatics and systems	2026-04-14	Toronto	ON	25	61.03	hourly	2026-04-14 16:20:17.829104
article-49326642	manager, IT (information technology) implementation	2026-04-14	Mississauga	ON	43.75	103.37	hourly	2026-04-14 16:20:17.829134
article-49305295	manager, IT (information technology) implementation	2026-04-13	Toronto	ON	43.75	103.37	hourly	2026-04-14 16:20:17.829155
article-49302477	cloud operations manager	2026-04-13	Ottawa	ON	65000	77500	annually	2026-04-14 16:20:17.829176
article-49302081	information systems manager	2026-04-13	Calgary	AB	36	36	hourly	2026-04-14 16:20:17.829195
article-49339667	data centre manager	2026-04-15	Sherbrooke	QC	114000	127000	annually	2026-04-15 16:14:19.668391
article-49337618	office supervisor	2026-04-15	Sherbrooke	QC	80063	108323	hourly	2026-04-15 16:14:19.668496
article-49335825	data analyst - informatics and systems	2026-04-15	Toronto	ON	25	61.03	hourly	2026-04-15 16:14:19.668572
article-49335831	senior software developer	2026-04-15	Toronto	ON	30	76.92	hourly	2026-04-15 16:14:19.668626
article-49335839	software developer	2026-04-15	Toronto	ON	30	76.92	hourly	2026-04-15 16:14:19.668662
article-49335849	manager, data processing and systems analysis	2026-04-15	Toronto	ON	43.75	103.37	hourly	2026-04-15 16:14:19.668733
article-49335875	data mining analyst	2026-04-15	Toronto	ON	30	69.74	hourly	2026-04-15 16:14:19.668769
article-49335914	manager, computer applications	2026-04-15	Toronto	ON	43.75	103.37	hourly	2026-04-15 16:14:19.668842
article-49335931	manager, IT (information technology) implementation	2026-04-15	Toronto	ON	43.75	103.37	hourly	2026-04-15 16:14:19.668876
article-49335750	operations supervisor	2026-04-15	Burnaby	BC	25	40	hourly	2026-04-15 16:14:19.668924
article-49335723	information technology (IT) director	2026-04-14	Toronto	ON	43.75	103.37	hourly	2026-04-15 16:14:19.668979
article-49335845	data scientist	2026-04-14	Toronto	ON	30	69.74	hourly	2026-04-15 16:14:19.669027
article-49335861	manager, IT (information technology) implementation	2026-04-14	Toronto	ON	43.75	103.37	hourly	2026-04-15 16:14:19.669055
article-49335621	operations supervisor	2026-04-14	Brampton	ON	60000	100000	annually	2026-04-15 16:14:19.669072
article-49333906	cybersecurity manager	2026-04-14	Montréal	QC	23	23	hourly	2026-04-15 16:14:19.669088
article-49333990	operations supervisor	2026-04-14	Thunder Bay	ON	26.42	26.42	hourly	2026-04-15 16:14:19.669131
article-49333287	cloud operations manager	2026-04-14	Cambridge	ON	46000	54000	annually	2026-04-15 16:14:19.669153
article-49332027	cybersecurity manager	2026-04-14	Dollard-des-Ormeaux	QC	26	31	hourly	2026-04-15 16:14:19.669197
article-49331913	software developer	2026-04-14	Scarborough	ON	40000	40000	annually	2026-04-15 16:14:19.669222
article-49331999	computer systems manager	2026-04-14	Toronto	ON	46	46	hourly	2026-04-15 16:14:19.669266
article-49330977	manager, IT (information technology) implementation	2026-04-14	Toronto	ON	43.75	103.37	hourly	2026-04-15 16:14:19.669304
article-49331293	database analyst	2026-04-14	Toronto	ON	25	61.03	hourly	2026-04-15 16:14:19.669335
article-49307314	data analyst - informatics and systems	2026-04-13	Vancouver	BC	55.42	55.42	hourly	2026-04-15 16:14:19.669378
article-49346955	information technology (IT) service delivery manager	2026-04-16	Thunder Bay	ON	98941.44	116401.69	annually	2026-04-16 16:48:49.267274
article-49347120	cloud solutions architect manager	2026-04-16	Toronto	ON	140795	140795	annually	2026-04-16 16:48:49.267338
article-49346066	software developer	2026-04-16	Toronto	ON	10000	10000	monthly	2026-04-16 16:48:49.267371
article-49346225	software developer	2026-04-16	Kelowna	BC	22	22	hourly	2026-04-16 16:48:49.2674
article-49346316	software developer	2026-04-16	Toronto	ON	10000	10000	monthly	2026-04-16 16:48:49.26742
article-49345491	software developer	2026-04-16	Toronto	ON	10000	10000	monthly	2026-04-16 16:48:49.267452
article-49344641	operations supervisor	2026-04-16	Saguenay	QC	39	43	hourly	2026-04-16 16:48:49.267513
article-49344477	software developer	2026-04-16	Calgary	AB	36	36	hourly	2026-04-16 16:48:49.267575
article-49344203	manager, computer applications	2026-04-15	Toronto	ON	43.75	103.37	hourly	2026-04-16 16:48:49.267597
article-49344233	data mining analyst	2026-04-15	Toronto	ON	30	69.74	hourly	2026-04-16 16:48:49.267625
article-49343912	database architect (DBA)	2026-04-15	Toronto	ON	70	70	hourly	2026-04-16 16:48:49.26765
article-49343921	senior software developer	2026-04-15	Toronto	ON	70	80	hourly	2026-04-16 16:48:49.267667
article-49343275	administrative supervisor	2026-04-15	Burnaby	BC	36.6	36.6	hourly	2026-04-16 16:48:49.26769
article-49343380	manager, IT (information technology) implementation	2026-04-15	Toronto	ON	43.75	103.37	hourly	2026-04-16 16:48:49.267706
article-49342699	software developerThis job posting is posted by a recruitment agency on behalf of the employer.	2026-04-15	Mississauga	ON	85000	95000	annually	2026-04-16 16:48:49.267731
article-49342204	software developer	2026-04-15	Nepean	ON	80000	110000	annually	2026-04-16 16:48:49.267746
article-49341085	manager, IT (information technology) implementation	2026-04-15	Toronto	ON	43.75	103.37	hourly	2026-04-16 16:48:49.267771
article-49340870	cloud developer	2026-04-15	Calgary	AB	30	31	hourly	2026-04-16 16:48:49.267793
article-49340070	artificial intelligence (AI) consultant	2026-04-15	Toronto	ON	30	69.74	hourly	2026-04-16 16:48:49.267808
article-49340137	artificial intelligence (AI) consultant	2026-04-15	Toronto	ON	30	69.74	hourly	2026-04-16 16:48:49.267829
article-49340185	data scientist	2026-04-15	Mississauga	ON	30	69.74	hourly	2026-04-16 16:48:49.267843
article-49340205	artificial intelligence (AI) consultant	2026-04-15	Toronto	ON	30	69.74	hourly	2026-04-16 16:48:49.267855
article-49340214	data scientist	2026-04-15	Toronto	ON	30	69.74	hourly	2026-04-16 16:48:49.267878
article-49340218	data scientist	2026-04-15	Toronto	ON	30	69.74	hourly	2026-04-16 16:48:49.26789
article-49340259	manager, computer applications	2026-04-15	Toronto	ON	43.75	103.37	hourly	2026-04-16 16:48:49.267912
article-49340311	manager, computer systems development	2026-04-15	Toronto	ON	43.75	103.37	hourly	2026-04-16 16:48:49.267924
article-49340269	manager, IT (information technology) implementation	2026-04-15	Toronto	ON	43.75	103.37	hourly	2026-04-16 16:48:49.267946
article-49340293	information technology (IT) implementation manager	2026-04-15	Toronto	ON	43.75	103.37	hourly	2026-04-16 16:48:49.267959
article-49345680	software developer	2026-04-15	Montréal	QC	10000	10000	monthly	2026-04-16 16:48:49.267984
article-49345106	cloud developer	2026-04-15	Toronto	ON	75000	95000	annually	2026-04-16 16:48:49.267999
article-49345657	machine learning engineer	2026-04-15	Toronto	ON	10000	10000	monthly	2026-04-16 16:48:49.268023
article-49345265	information technology (IT) director	2026-04-15	Toronto	ON	40	92	hourly	2026-04-16 16:48:49.268036
article-49345971	data engineer	2026-04-14	Toronto	ON	86	86	hourly	2026-04-16 16:48:49.268057
article-49346321	software developer	2026-04-14	Toronto	ON	90000	90000	annually	2026-04-16 16:48:49.268071
article-49345521	software developer	2026-04-14	Oakville	ON	20	20	hourly	2026-04-16 16:48:49.268092
article-49345960	software developer	2026-04-14	Mississauga	ON	10000	10000	monthly	2026-04-16 16:48:49.268106
article-49346020	software developer	2026-04-14	Toronto	ON	88933	88933	annually	2026-04-16 16:48:49.268127
article-49346350	cloud developer	2026-04-14	Toronto	ON	101	101	daily	2026-04-16 16:48:49.268141
article-49344366	director of technology management	2026-04-14	Brampton	ON	40	92	hourly	2026-04-16 16:48:49.268153
article-49346510	software developer	2026-04-13	Ajax	ON	120000	120000	annually	2026-04-16 16:48:49.268177
article-49352749	manager, management information system (MIS)	2026-04-17	Oakville	ON	150000	170000	annually	2026-04-17 16:12:45.537244
article-49352202	manager, computer applications	2026-04-17	Toronto	ON	60000	75000	annually	2026-04-17 16:12:45.537308
article-49351211	manager, computer applications	2026-04-16	Toronto	ON	43.75	103.37	hourly	2026-04-17 16:12:45.537334
article-49350124	software developer	2026-04-16	Vancouver	BC	31.25	84.13	hourly	2026-04-17 16:12:45.537364
article-49349985	office supervisor	2026-04-16	Calgary	AB	36.5	36.5	hourly	2026-04-17 16:12:45.537392
article-49349655	big data analyst	2026-04-16	Brossard	QC	80000	100000	annually	2026-04-17 16:12:45.537424
article-49349879	cloud operations manager	2026-04-16	Markham	ON	50507.69	80000	annually	2026-04-17 16:12:45.537451
article-49349838	cloud developer	2026-04-16	Mississauga	ON	94437.84	118046.88	annually	2026-04-17 16:12:45.537476
article-49349853	cloud developer	2026-04-16	Burnaby	BC	50000	60000	annually	2026-04-17 16:12:45.537504
article-49349263	developer, software	2026-04-16	Sherbrooke	QC	114500	167500	annually	2026-04-17 16:12:45.537531
article-49349237	developer, software	2026-04-16	Various locations	\N	114500	167500	annually	2026-04-17 16:12:45.537552
article-49349138	manager, IT (information technology) implementation	2026-04-16	Toronto	ON	43.75	103.37	hourly	2026-04-17 16:12:45.537567
article-49348349	artificial intelligence (AI) designer	2026-04-16	Montréal	QC	100900	100900	annually	2026-04-17 16:12:45.537595
article-49347966	information technology (IT) director	2026-04-16	Toronto	ON	43.75	103.37	hourly	2026-04-17 16:12:45.537611
article-49348062	manager, computer applications	2026-04-16	Toronto	ON	43.75	103.37	hourly	2026-04-17 16:12:45.537624
article-49348093	artificial intelligence (AI) consultant	2026-04-16	Toronto	ON	30	69.74	hourly	2026-04-17 16:12:45.537647
article-49348111	artificial intelligence (AI) consultant	2026-04-16	Toronto	ON	30	69.74	hourly	2026-04-17 16:12:45.537662
article-49348169	senior software developer	2026-04-16	Toronto	ON	30	76.92	hourly	2026-04-17 16:12:45.537674
article-49348186	artificial intelligence (AI) consultant	2026-04-16	Toronto	ON	30	69.74	hourly	2026-04-17 16:12:45.537698
article-49348284	software development manager	2026-04-16	Toronto	ON	43.75	103.37	hourly	2026-04-17 16:12:45.537711
article-49348330	senior software developer	2026-04-16	Toronto	ON	30	76.92	hourly	2026-04-17 16:12:45.537733
article-49348343	software developer	2026-04-16	Vancouver	BC	30	76.92	hourly	2026-04-17 16:12:45.537746
article-49348394	artificial intelligence (AI) consultant	2026-04-16	Toronto	ON	30	69.74	hourly	2026-04-17 16:12:45.537768
article-49348405	manager, IT (information technology) implementation	2026-04-16	Mississauga	ON	43.75	103.37	hourly	2026-04-17 16:12:45.537781
article-49348451	data mining analyst	2026-04-16	Toronto	ON	30	69.74	hourly	2026-04-17 16:12:45.537803
article-49348601	information technology (IT) director	2026-04-16	Toronto	ON	43.75	103.37	hourly	2026-04-17 16:12:45.537816
article-49348534	information technology (IT) director	2026-04-16	Toronto	ON	43.75	103.37	hourly	2026-04-17 16:12:45.537837
article-49348627	manager, IT (information technology) implementation	2026-04-16	Mississauga	ON	43.75	103.37	hourly	2026-04-17 16:12:45.53785
article-49348112	operations supervisor	2026-04-16	Toronto	ON	20	20	hourly	2026-04-17 16:12:45.537871
article-49352253	software developer	2026-04-16	Montréal	QC	25	63	hourly	2026-04-17 16:12:45.537884
article-49352297	data scientist	2026-04-16	Toronto	ON	90000	120000	annually	2026-04-17 16:12:45.537906
article-49352137	cloud developer	2026-04-15	Toronto	ON	75000	95000	annually	2026-04-17 16:12:45.537918
article-49356259	telephone service supervisor	2026-04-17	Saint-Jean-sur-Richelieu	QC	19.85	23.41	hourly	2026-04-18 15:52:20.95395
article-49355199	data management specialist	2026-04-17	Laval	QC	28.75	34.75	hourly	2026-04-18 15:52:20.953996
article-49354914	cloud operations manager	2026-04-17	Palmer Rapids	ON	55000	65000	annually	2026-04-18 15:52:20.954022
article-49355045	administrative clerks supervisor	2026-04-17	Waterloo	ON	28.5	28.5	hourly	2026-04-18 15:52:20.954041
article-49354368	computer projects manager	2026-04-17	Montréal	QC	55000	80000	annually	2026-04-18 15:52:20.954061
article-49353174	senior software developer	2026-04-17	Toronto	ON	30	76.92	hourly	2026-04-18 15:52:20.954082
article-49353228	data scientist	2026-04-17	Toronto	ON	30	69.74	hourly	2026-04-18 15:52:20.954098
article-49353235	senior software developer	2026-04-17	Toronto	ON	30	76.92	hourly	2026-04-18 15:52:20.95412
article-49353253	data scientist	2026-04-17	Toronto	ON	30	69.74	hourly	2026-04-18 15:52:20.954137
article-49353362	manager, data processing planning	2026-04-17	Toronto	ON	43.75	103.37	hourly	2026-04-18 15:52:20.954153
article-49353731	manager, IT (information technology) implementation	2026-04-17	Toronto	ON	43.75	103.37	hourly	2026-04-18 15:52:20.954167
article-49353744	data scientist	2026-04-17	Mississauga	ON	30	69.74	hourly	2026-04-18 15:52:20.954181
article-49353751	data mining analyst	2026-04-17	Toronto	ON	30	69.74	hourly	2026-04-18 15:52:20.954195
article-49353844	artificial intelligence (AI) consultant	2026-04-17	Calgary	AB	30	69.74	hourly	2026-04-18 15:52:20.954209
article-49353848	data mining analyst	2026-04-17	Toronto	ON	30	69.74	hourly	2026-04-18 15:52:20.954259
article-49353908	artificial intelligence (AI) consultant	2026-04-17	Toronto	ON	30	69.74	hourly	2026-04-18 15:52:20.954281
article-49353910	software development manager	2026-04-17	Toronto	ON	43.75	103.37	hourly	2026-04-18 15:52:20.954296
article-49353928	data analyst - informatics and systems	2026-04-17	Toronto	ON	25	61.03	hourly	2026-04-18 15:52:20.95431
article-49353933	information technology (IT) implementation manager	2026-04-17	Toronto	ON	43.75	103.37	hourly	2026-04-18 15:52:20.954323
article-49353358	software development programmer	2026-04-17	Calgary	AB	48.08	48.08	hourly	2026-04-18 15:52:20.954335
article-49348624	data scientist	2026-04-16	Toronto	ON	30	69.74	hourly	2026-04-18 15:52:20.954348
article-49348458	software developer	2026-04-16	Toronto	ON	30	76.92	hourly	2026-04-18 15:52:20.95436
article-49348595	software developer	2026-04-16	Toronto	ON	30	76.92	hourly	2026-04-18 15:52:20.954372
article-49348603	senior software developer	2026-04-16	Calgary	AB	30	76.92	hourly	2026-04-18 15:52:20.954384
article-49348636	data analyst - informatics and systems	2026-04-16	Toronto	ON	25	61.03	hourly	2026-04-18 15:52:20.954395
article-49360139	manager, computer applications	2026-04-19	Toronto	ON	43.75	103.37	hourly	2026-04-19 15:52:42.568326
article-49360330	data scientist	2026-04-19	Toronto	ON	30	69.74	hourly	2026-04-19 15:52:42.568371
article-49358889	artificial intelligence (AI) consultant	2026-04-18	Toronto	ON	30	69.74	hourly	2026-04-19 15:52:42.568392
article-49358937	software development manager	2026-04-18	Toronto	ON	43.75	103.37	hourly	2026-04-19 15:52:42.568409
article-49358956	data scientist	2026-04-18	Toronto	ON	30	69.74	hourly	2026-04-19 15:52:42.568424
article-49358986	data mining analyst	2026-04-18	Toronto	ON	30	69.74	hourly	2026-04-19 15:52:42.568443
article-49358907	software developer	2026-04-18	Fergus	ON	49	49	hourly	2026-04-19 15:52:42.568456
article-49358331	software developer	2026-04-18	Toronto	ON	30	76.92	hourly	2026-04-19 15:52:42.568477
article-49358333	artificial intelligence (AI) consultant	2026-04-18	Toronto	ON	30	69.74	hourly	2026-04-19 15:52:42.568493
article-49358363	manager, computer applications	2026-04-18	Toronto	ON	43.75	103.37	hourly	2026-04-19 15:52:42.568506
article-49358384	senior software developer	2026-04-18	Toronto	ON	30	76.92	hourly	2026-04-19 15:52:42.568537
article-49358427	senior software developer	2026-04-18	Toronto	ON	30	76.92	hourly	2026-04-19 15:52:42.56855
article-49358441	software developer	2026-04-18	Vancouver	BC	30	76.92	hourly	2026-04-19 15:52:42.568563
article-49358473	software developer	2026-04-18	Toronto	ON	30	76.92	hourly	2026-04-19 15:52:42.568574
article-49358485	senior software developer	2026-04-18	Toronto	ON	30	76.92	hourly	2026-04-19 15:52:42.568585
article-49358514	senior software developer	2026-04-18	Toronto	ON	30	76.92	hourly	2026-04-19 15:52:42.568596
article-49358520	artificial intelligence (AI) consultant	2026-04-18	Toronto	ON	30	69.74	hourly	2026-04-19 15:52:42.568607
article-49358535	manager, IT (information technology) implementation	2026-04-18	Toronto	ON	43.75	103.37	hourly	2026-04-19 15:52:42.568619
article-49358565	manager, computer applications	2026-04-18	Toronto	ON	43.75	103.37	hourly	2026-04-19 15:52:42.568631
article-49358573	manager, IT (information technology) implementation	2026-04-18	Toronto	ON	43.75	103.37	hourly	2026-04-19 15:52:42.568642
article-49358579	application programmer	2026-04-18	Mississauga	ON	30	76.92	hourly	2026-04-19 15:52:42.568653
article-49358580	analyst, electronic data processing (EDP) systems	2026-04-18	Toronto	ON	25	61.03	hourly	2026-04-19 15:52:42.568664
article-49358585	senior software developer	2026-04-18	Toronto	ON	30	76.92	hourly	2026-04-19 15:52:42.568675
article-49358590	manager, computer applications	2026-04-18	Toronto	ON	43.75	103.37	hourly	2026-04-19 15:52:42.568686
article-49366008	artificial intelligence (AI) consultant	2026-04-20	Toronto	ON	30	69.74	hourly	2026-04-20 16:21:19.503952
article-49366196	senior software developer	2026-04-20	Toronto	ON	30	76.92	hourly	2026-04-20 16:21:19.50403
article-49366207	manager, data processing planning	2026-04-20	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504076
article-49366289	manager, IT (information technology) implementation	2026-04-20	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504113
article-49366299	software development manager	2026-04-20	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504151
article-49366335	director of technology management	2026-04-20	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504194
article-49366398	data scientist	2026-04-20	Montréal	QC	30	69.74	hourly	2026-04-20 16:21:19.504235
article-49366429	data scientist	2026-04-20	Toronto	ON	30	69.74	hourly	2026-04-20 16:21:19.504282
article-49366451	data analyst - informatics and systems	2026-04-20	Toronto	ON	25	61.03	hourly	2026-04-20 16:21:19.504319
article-49365611	data analytics manager	2026-04-20	Toronto	ON	99056	132074	annually	2026-04-20 16:21:19.504355
article-49365715	software developer	2026-04-20	Mississauga	ON	48.5	48.5	hourly	2026-04-20 16:21:19.504388
article-49364986	cloud operations manager	2026-04-20	Blue Mountains	ON	100000	125000	annually	2026-04-20 16:21:19.504422
article-49364621	database developer	2026-04-20	Trois-Rivières	QC	19.5	19.5	hourly	2026-04-20 16:21:19.504454
article-49364523	Data Analytics Specialist	2026-04-20	Ottawa	ON	94193	94193	annually	2026-04-20 16:21:19.504487
article-49363247	information technology (IT) director	2026-04-20	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504518
article-49363268	information technology (IT) director	2026-04-20	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504547
article-49363297	data scientist	2026-04-20	Toronto	ON	30	69.74	hourly	2026-04-20 16:21:19.504577
article-49363343	manager, IT (information technology) implementation	2026-04-20	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504605
article-49363348	Java programmer	2026-04-20	Toronto	ON	30	76.92	hourly	2026-04-20 16:21:19.504638
article-49363349	data scientist	2026-04-20	Toronto	ON	30	69.74	hourly	2026-04-20 16:21:19.50467
article-49361665	information technology (IT) director	2026-04-19	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504698
article-49361669	data scientist	2026-04-19	Toronto	ON	30	69.74	hourly	2026-04-20 16:21:19.504729
article-49361671	manager, computer applications	2026-04-19	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504757
article-49361686	software engineering manager	2026-04-19	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504788
article-49361693	senior software developer	2026-04-19	Toronto	ON	30	76.92	hourly	2026-04-20 16:21:19.504819
article-49361842	software developer	2026-04-19	Toronto	ON	30	76.92	hourly	2026-04-20 16:21:19.504871
article-49361714	software development manager	2026-04-19	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.504906
article-49361840	artificial intelligence (AI) consultant	2026-04-19	Calgary	AB	30	69.74	hourly	2026-04-20 16:21:19.50494
article-49361823	data scientist	2026-04-19	Montréal	QC	30	69.74	hourly	2026-04-20 16:21:19.504973
article-49361871	data analyst - informatics and systems	2026-04-19	Toronto	ON	25	61.03	hourly	2026-04-20 16:21:19.505001
article-49361809	data mining analyst	2026-04-19	Toronto	ON	30	69.74	hourly	2026-04-20 16:21:19.505031
article-49361708	artificial intelligence (AI) consultant	2026-04-19	Toronto	ON	30	69.74	hourly	2026-04-20 16:21:19.505059
article-49361852	artificial intelligence (AI) consultant	2026-04-19	Toronto	ON	30	69.74	hourly	2026-04-20 16:21:19.505087
article-49361834	manager, computer applications	2026-04-19	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.505114
article-49361815	manager, computer applications	2026-04-19	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.505143
article-49361698	artificial intelligence (AI) consultant	2026-04-19	Toronto	ON	30	69.74	hourly	2026-04-20 16:21:19.505169
article-49361793	manager, IT (information technology) implementation	2026-04-19	Toronto	ON	43.75	103.37	hourly	2026-04-20 16:21:19.505199
article-49373548	manager, computer applications	2026-04-21	Toronto	ON	43.75	103.37	hourly	2026-04-21 16:20:48.302368
article-49373773	software developer	2026-04-21	Vancouver	BC	30	76.92	hourly	2026-04-21 16:20:48.30243
article-49373779	artificial intelligence (AI) consultant	2026-04-21	Toronto	ON	30	69.74	hourly	2026-04-21 16:20:48.30247
article-49373781	manager, IT (information technology) implementation	2026-04-21	Toronto	ON	43.75	103.37	hourly	2026-04-21 16:20:48.30251
article-49373792	data scientist	2026-04-21	Toronto	ON	30	69.74	hourly	2026-04-21 16:20:48.302544
article-49373793	software development manager	2026-04-21	Toronto	ON	43.75	103.37	hourly	2026-04-21 16:20:48.302585
article-49373796	manager, data processing and systems analysis	2026-04-21	Toronto	ON	43.75	103.37	hourly	2026-04-21 16:20:48.302618
article-49373810	manager, computer applications	2026-04-21	Toronto	ON	43.75	103.37	hourly	2026-04-21 16:20:48.302662
article-49373813	senior software developer	2026-04-21	Calgary	AB	30	76.92	hourly	2026-04-21 16:20:48.302694
article-49373820	application programmer	2026-04-21	Mississauga	ON	30	76.92	hourly	2026-04-21 16:20:48.302721
article-49373821	analyst, electronic data processing (EDP) systems	2026-04-21	Toronto	ON	25	61.03	hourly	2026-04-21 16:20:48.302752
article-49373822	senior software developer	2026-04-21	Toronto	ON	30	76.92	hourly	2026-04-21 16:20:48.302777
article-49373830	manager, IT (information technology) implementation	2026-04-21	Mississauga	ON	43.75	103.37	hourly	2026-04-21 16:20:48.302811
article-49373842	manager, computer systems development	2026-04-21	Toronto	ON	43.75	103.37	hourly	2026-04-21 16:20:48.302864
article-49372846	telephone service supervisor	2026-04-21	Meaford	ON	18.39	20.07	hourly	2026-04-21 16:20:48.302897
article-49372942	software developer	2026-04-21	Etobicoke	ON	50	50	hourly	2026-04-21 16:20:48.302928
article-49372440	network design manager	2026-04-21	Laval	QC	120000	150000	annually	2026-04-21 16:20:48.302957
article-49372665	computer manager	2026-04-21	Saguenay	QC	115000	153000	annually	2026-04-21 16:20:48.302988
article-49371932	developer, software	2026-04-21	Montréal	QC	110000	135000	annually	2026-04-21 16:20:48.303019
article-49371880	information systems manager	2026-04-21	Vancouver	BC	64	99	hourly	2026-04-21 16:20:48.303047
article-49369895	manager, computer applications	2026-04-21	Toronto	ON	43.75	103.37	hourly	2026-04-21 16:20:48.303075
article-49369953	artificial intelligence (AI) consultant	2026-04-21	Toronto	ON	30	69.74	hourly	2026-04-21 16:20:48.303098
article-49368302	information systems manager	2026-04-20	Orangeville	ON	150000	150000	annually	2026-04-21 16:20:48.303129
article-49368040	software engineering manager	2026-04-20	Concord	ON	68	68	hourly	2026-04-21 16:20:48.30315
article-49367553	database developer	2026-04-20	Toronto	ON	18.6	18.6	hourly	2026-04-21 16:20:48.303179
article-49367809	office supervisor	2026-04-20	Thornhill	BC	37	38	hourly	2026-04-21 16:20:48.303204
article-49367082	operations supervisor	2026-04-20	Mission	BC	36.6	36.6	hourly	2026-04-21 16:20:48.30323
article-49370739	data engineer	2026-04-20	Toronto	ON	10000	10000	monthly	2026-04-21 16:20:48.303251
article-49371309	data engineer	2026-04-20	Toronto	ON	10000	10000	monthly	2026-04-21 16:20:48.303281
article-49371447	data engineer	2026-04-20	Toronto	ON	10000	10000	monthly	2026-04-21 16:20:48.303303
article-49371239	software developer	2026-04-20	Toronto	ON	101	101	daily	2026-04-21 16:20:48.303332
article-49370754	software developer	2026-04-20	Toronto	ON	10000	10000	monthly	2026-04-21 16:20:48.303354
article-49370010	data analyst - informatics and systems	2026-04-20	Toronto	ON	25	61.03	hourly	2026-04-21 16:20:48.303383
article-49371822	software developer	2026-04-20	Toronto	ON	10000	10000	monthly	2026-04-21 16:20:48.303409
article-49370978	software developer	2026-04-20	Toronto	ON	10000	10000	monthly	2026-04-21 16:20:48.303435
article-49371229	software developer	2026-04-20	Toronto	ON	10000	10000	monthly	2026-04-21 16:20:48.303456
article-49371572	software developer	2026-04-20	Calgary	AB	10000	10000	monthly	2026-04-21 16:20:48.303484
article-49370641	software developer	2026-04-20	Toronto	ON	10000	10000	monthly	2026-04-21 16:20:48.303508
article-49371292	software developer	2026-04-20	Mirabel	QC	100	150000	hourly	2026-04-21 16:20:48.303534
article-49370546	cloud developer	2026-04-20	Toronto	ON	10000	10000	monthly	2026-04-21 16:20:48.303559
article-49370908	quantitative analyst	2026-04-20	Toronto	ON	25	25	hourly	2026-04-21 16:20:48.303583
article-49361703	data scientist	2026-04-19	Toronto	ON	30	69.74	hourly	2026-04-21 16:20:48.30361
article-49361805	artificial intelligence (AI) consultant	2026-04-19	Toronto	ON	30	69.74	hourly	2026-04-21 16:20:48.303624
article-49379811	software development manager	2026-04-22	Toronto	ON	43.75	103.37	hourly	2026-04-22 16:19:25.074712
article-49379812	data scientist	2026-04-22	Toronto	ON	30	69.74	hourly	2026-04-22 16:19:25.07477
article-49379851	software developer	2026-04-22	Toronto	ON	30	76.92	hourly	2026-04-22 16:19:25.074793
article-49379913	artificial intelligence (AI) consultant	2026-04-22	Calgary	AB	30	69.74	hourly	2026-04-22 16:19:25.074809
article-49379925	senior software developer	2026-04-22	Toronto	ON	30	76.92	hourly	2026-04-22 16:19:25.07484
article-49379942	artificial intelligence (AI) consultant	2026-04-22	Toronto	ON	30	69.74	hourly	2026-04-22 16:19:25.074861
article-49379953	manager, computer applications	2026-04-22	Toronto	ON	43.75	103.37	hourly	2026-04-22 16:19:25.074879
article-49379979	data scientist	2026-04-22	Toronto	ON	30	69.74	hourly	2026-04-22 16:19:25.074915
article-49379993	data scientist	2026-04-22	Toronto	ON	30	69.74	hourly	2026-04-22 16:19:25.07493
article-49380004	senior software developer	2026-04-22	Toronto	ON	30	76.92	hourly	2026-04-22 16:19:25.074951
article-49380008	artificial intelligence (AI) consultant	2026-04-22	Toronto	ON	30	69.74	hourly	2026-04-22 16:19:25.074965
article-49380011	artificial intelligence (AI) consultant	2026-04-22	Toronto	ON	30	69.74	hourly	2026-04-22 16:19:25.074977
article-49380056	artificial intelligence (AI) consultant	2026-04-22	Toronto	ON	30	69.74	hourly	2026-04-22 16:19:25.074989
article-49380118	data mining analyst	2026-04-22	Montréal	QC	30	69.74	hourly	2026-04-22 16:19:25.075002
article-49380151	software development manager	2026-04-22	Toronto	ON	43.75	103.37	hourly	2026-04-22 16:19:25.075014
article-49380156	data scientist	2026-04-22	Toronto	ON	30	69.74	hourly	2026-04-22 16:19:25.075026
article-49380178	artificial intelligence (AI) consultant	2026-04-22	Calgary	AB	30	69.74	hourly	2026-04-22 16:19:25.075048
article-49380214	database analyst (DBA)	2026-04-22	Montréal	QC	25	61.03	hourly	2026-04-22 16:19:25.075061
article-49380228	manager, IT (information technology) implementation	2026-04-22	Toronto	ON	43.75	103.37	hourly	2026-04-22 16:19:25.075073
article-49378712	computer networks manager	2026-04-22	Montréal	QC	150000	150000	annually	2026-04-22 16:19:25.075086
article-49378705	software developer	2026-04-22	Montréal	QC	46.15	46.15	hourly	2026-04-22 16:19:25.075097
article-49377428	data mining analyst	2026-04-22	Toronto	ON	30	69.74	hourly	2026-04-22 16:19:25.075109
article-49377489	manager, computer applications	2026-04-22	Toronto	ON	43.75	103.37	hourly	2026-04-22 16:19:25.07512
article-49376766	cybersecurity manager	2026-04-21	Montréal	QC	50000	50000	annually	2026-04-22 16:19:25.075132
article-49375480	data analyst - informatics and systems	2026-04-21	Burnaby	BC	3577.88	3577.88	weekly	2026-04-22 16:19:25.075152
article-49374383	mobile applications developer	2026-04-21	Calgary	AB	48	50	hourly	2026-04-22 16:19:25.075167
article-49377381	software developer	2026-04-21	Toronto	ON	30	76.92	hourly	2026-04-22 16:19:25.075178
article-49377926	big data analyst	2026-04-21	Toronto	ON	55000	55000	annually	2026-04-22 16:19:25.075189
article-49378094	information technology (IT) director	2026-04-21	Calgary	AB	40	92	hourly	2026-04-22 16:19:25.075208
article-49378098	information technology (IT) director	2026-04-21	Vancouver	BC	110000	140000	annually	2026-04-22 16:19:25.07523
article-49377273	cloud developer	2026-04-21	Toronto	ON	18	19	hourly	2026-04-22 16:19:25.075241
article-49386534	senior software developer	2026-04-23	Toronto	ON	30	76.92	hourly	2026-04-23 16:52:48.258795
article-49386545	artificial intelligence (AI) consultant	2026-04-23	Toronto	ON	30	69.74	hourly	2026-04-23 16:52:48.258876
article-49386736	software development manager	2026-04-23	Toronto	ON	43.75	103.37	hourly	2026-04-23 16:52:48.258906
article-49386741	manager, IT (information technology) implementation	2026-04-23	Toronto	ON	43.75	103.37	hourly	2026-04-23 16:52:48.258936
article-49386759	data scientist	2026-04-23	Mississauga	ON	30	69.74	hourly	2026-04-23 16:52:48.258954
article-49386794	manager, computer applications	2026-04-23	Toronto	ON	43.75	103.37	hourly	2026-04-23 16:52:48.258975
article-49386813	software development manager	2026-04-23	Toronto	ON	43.75	103.37	hourly	2026-04-23 16:52:48.259004
article-49386818	application programmer	2026-04-23	Mississauga	ON	30	76.92	hourly	2026-04-23 16:52:48.259034
article-49386820	analyst, electronic data processing (EDP) systems	2026-04-23	Toronto	ON	25	61.03	hourly	2026-04-23 16:52:48.259058
article-49386862	senior software developer	2026-04-23	Toronto	ON	30	76.92	hourly	2026-04-23 16:52:48.259079
article-49385332	cybersecurity manager	2026-04-23	Montréal	QC	65000	75000	annually	2026-04-23 16:52:48.259104
article-49385299	computer projects manager	2026-04-23	Montréal	QC	90000	110000	annually	2026-04-23 16:52:48.259131
article-49385658	manager, systems - computer systems	2026-04-23	Longueuil	QC	140504	155000	annually	2026-04-23 16:52:48.259151
article-49385645	software developer	2026-04-23	Thunder Bay, ON	\N	80000	105000	annually	2026-04-23 16:52:48.259182
article-49384846	software developer	2026-04-23	Burnaby	BC	10000	10000	monthly	2026-04-23 16:52:48.259198
article-49384952	database developer	2026-04-23	Toronto	ON	10000	10000	monthly	2026-04-23 16:52:48.259223
article-49384793	software developer	2026-04-23	Toronto	ON	10000	10000	monthly	2026-04-23 16:52:48.259237
article-49383241	software developer	2026-04-23	Toronto	ON	30	76.92	hourly	2026-04-23 16:52:48.259259
article-49383306	data mining analyst	2026-04-23	Toronto	ON	30	69.74	hourly	2026-04-23 16:52:48.259276
article-49383362	artificial intelligence (AI) consultant	2026-04-23	Toronto	ON	30	69.74	hourly	2026-04-23 16:52:48.259294
article-49383418	manager, IT (information technology) implementation	2026-04-23	Toronto	ON	43.75	103.37	hourly	2026-04-23 16:52:48.259314
article-49382822	computer projects manager	2026-04-22	Québec	QC	75000	95000	annually	2026-04-23 16:52:48.259336
article-49382447	data centre operator	2026-04-22	Montréal	QC	90000	110000	annually	2026-04-23 16:52:48.259357
article-49382295	data scientist	2026-04-22	Burnaby	BC	48.1	48.1	hourly	2026-04-23 16:52:48.259376
article-49382242	administrative supervisor	2026-04-22	Westbank	BC	37	39	hourly	2026-04-23 16:52:48.259397
article-49381335	computer manager	2026-04-22	Vancouver	BC	41	41	hourly	2026-04-23 16:52:48.25941
article-49381165	operations supervisor	2026-04-22	Nestleton Station	ON	22	24	hourly	2026-04-23 16:52:48.259434
article-49380330	IT (information technology) development manager	2026-04-22	Coquitlam	BC	142820	142820	annually	2026-04-23 16:52:48.259448
article-49383395	senior software developer	2026-04-22	Toronto	ON	30	76.92	hourly	2026-04-23 16:52:48.25947
article-49385061	software developer	2026-04-22	Montréal	QC	10000	10000	monthly	2026-04-23 16:52:48.259486
article-49384990	software developer	2026-04-22	Calgary	AB	10000	10000	monthly	2026-04-23 16:52:48.259502
article-49384911	software developer	2026-04-22	Toronto	ON	10000	10000	monthly	2026-04-23 16:52:48.259523
article-49385116	software developer	2026-04-22	Toronto	ON	10000	10000	monthly	2026-04-23 16:52:48.259535
article-49384654	software engineering manager	2026-04-22	Surrey	BC	142750	142750	annually	2026-04-23 16:52:48.259557
article-49384810	quantitative analyst	2026-04-22	Toronto	ON	25	25	hourly	2026-04-23 16:52:48.259572
article-49384615	data engineer	2026-04-21	Toronto	ON	10000	10000	monthly	2026-04-23 16:52:48.259589
article-49384515	big data analyst	2026-04-21	Toronto	ON	55000	55000	annually	2026-04-23 16:52:48.25961
article-49385059	software developer	2026-04-21	Toronto	ON	100000	120000	annually	2026-04-23 16:52:48.259623
article-49384913	software developer	2026-04-21	Montréal	QC	38	38	hourly	2026-04-23 16:52:48.259646
article-49384986	software developer	2026-04-21	Montréal	QC	38	40	hourly	2026-04-23 16:52:48.259661
article-49385120	software developer	2026-04-21	Laval	QC	38	38	hourly	2026-04-23 16:52:48.259677
article-49383455	manager, data processing and systems analysis	2026-04-21	Mississauga	ON	40	92	hourly	2026-04-23 16:52:48.259697
article-49392308	technical program manager - information technology (IT)	2026-04-24	Nepean	ON	165000	185000	annually	2026-04-24 16:12:39.315247
article-49391285	data engineer	2026-04-24	Toronto	ON	10000	10000	monthly	2026-04-24 16:12:39.315298
article-49391308	software developer	2026-04-24	Toronto	ON	10000	10000	monthly	2026-04-24 16:12:39.315319
article-49390780	data engineer	2026-04-24	Toronto	ON	10000	10000	monthly	2026-04-24 16:12:39.315342
article-49390466	software developer	2026-04-24	Toronto	ON	25	63	hourly	2026-04-24 16:12:39.315361
article-49390085	software development manager	2026-04-24	Toronto	ON	43.75	103.37	hourly	2026-04-24 16:12:39.31538
article-49390230	senior software developer	2026-04-24	Toronto	ON	30	76.92	hourly	2026-04-24 16:12:39.315394
article-49390276	data scientist	2026-04-24	Toronto	ON	30	69.74	hourly	2026-04-24 16:12:39.315423
article-49390289	manager, computer applications	2026-04-24	Toronto	ON	43.75	103.37	hourly	2026-04-24 16:12:39.315439
article-49390317	manager, computer applications	2026-04-24	Toronto	ON	43.75	103.37	hourly	2026-04-24 16:12:39.315452
article-49390209	senior software developer	2026-04-23	Toronto	ON	30	76.92	hourly	2026-04-24 16:12:39.315464
article-49389729	IT (information technology) development manager	2026-04-23	Saanich	BC	98340	98340	annually	2026-04-24 16:12:39.315484
article-49388938	software development programmer	2026-04-23	Vancouver	BC	40	40	hourly	2026-04-24 16:12:39.315499
article-49388932	business data analyst	2026-04-23	Burnaby	BC	43	43	hourly	2026-04-24 16:12:39.315537
article-49388467	operations supervisor	2026-04-23	Toronto	ON	55000	75000	annually	2026-04-24 16:12:39.315556
article-49388098	computer projects manager	2026-04-23	Sherbrooke	QC	110414	134206	annually	2026-04-24 16:12:39.315577
article-49387890	computer application development manager	2026-04-23	Longueuil	QC	140504	140504	annually	2026-04-24 16:12:39.31559
article-49387304	cybersecurity manager	2026-04-23	Alma	QC	16.6	16.6	hourly	2026-04-24 16:12:39.315601
article-49387250	big data analyst	2026-04-23	Sault Ste. Marie	ON	20.34	26	hourly	2026-04-24 16:12:39.315623
article-49390887	data engineer	2026-04-23	Toronto	ON	110000	110000	annually	2026-04-24 16:12:39.315635
article-49390791	software developer	2026-04-23	Toronto	ON	70	70	hourly	2026-04-24 16:12:39.315646
article-49391105	software developer	2026-04-23	Calgary	AB	10000	10000	monthly	2026-04-24 16:12:39.315658
article-49390408	operations supervisor	2026-04-23	Richmond Hill	ON	85000	105000	annually	2026-04-24 16:12:39.315678
article-49391197	data engineer	2026-04-22	Montréal-Est	QC	10000	10000	monthly	2026-04-24 16:12:39.315691
article-49390708	big data analyst	2026-04-21	Toronto	ON	55000	55000	annually	2026-04-24 16:12:39.315703
article-49399686	application programmer	2026-04-26	Laval	QC	40	40	hourly	2026-04-26 15:55:34.763251
article-49399687	application programmer	2026-04-26	Laval	QC	40	40	hourly	2026-04-26 15:55:34.76331
article-49399405	data scientist	2026-04-25	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.763353
article-49398893	manager, computer applications	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.763383
article-49398901	director, data processing	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.763415
article-49398070	data scientist	2026-04-25	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.763451
article-49397941	software development manager	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.763478
article-49397948	software development manager	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.763544
article-49397949	data scientist	2026-04-25	Montréal	QC	30	69.74	hourly	2026-04-26 15:55:34.763581
article-49397957	artificial intelligence (AI) consultant	2026-04-25	Calgary	AB	30	69.74	hourly	2026-04-26 15:55:34.763607
article-49397971	senior software developer	2026-04-25	Toronto	ON	30	76.92	hourly	2026-04-26 15:55:34.763639
article-49397972	data mining analyst	2026-04-25	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.763666
article-49397977	artificial intelligence (AI) consultant	2026-04-25	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.763696
article-49397983	manager, IT (information technology) implementation	2026-04-25	Mississauga	ON	43.75	103.37	hourly	2026-04-26 15:55:34.763721
article-49397984	operations supervisor	2026-04-25	Toronto	ON	22	46	hourly	2026-04-26 15:55:34.763748
article-49397991	data analyst - informatics and systems	2026-04-25	Toronto	ON	25	61.03	hourly	2026-04-26 15:55:34.763772
article-49397751	senior software developer	2026-04-25	Toronto	ON	30	76.92	hourly	2026-04-26 15:55:34.763798
article-49397760	artificial intelligence (AI) consultant	2026-04-25	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.763819
article-49397768	software engineering manager	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.763849
article-49397776	manager, computer applications	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.76387
article-49397791	senior software developer	2026-04-25	Toronto	ON	30	76.92	hourly	2026-04-26 15:55:34.763897
article-49397802	data scientist	2026-04-25	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.763921
article-49397837	artificial intelligence (AI) consultant	2026-04-25	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.763946
article-49397840	data scientist	2026-04-25	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.76397
article-49397849	software development manager	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.763993
article-49397868	manager, IT (information technology) implementation	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.76402
article-49397904	manager, IT (information technology) implementation	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.764044
article-49397923	artificial intelligence (AI) consultant	2026-04-25	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.764071
article-49397900	director of technology management	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.764094
article-49397511	computer projects manager	2026-04-25	Saint-Eustache	QC	100000	125000	annually	2026-04-26 15:55:34.764123
article-49397490	Internet systems administrator	2026-04-25	Montréal	QC	85000	100000	annually	2026-04-26 15:55:34.764149
article-49396546	artificial intelligence (AI) consultant	2026-04-25	Toronto	ON	26	78	hourly	2026-04-26 15:55:34.764176
article-49396515	computer programs manager	2026-04-25	Val-d'Or	QC	40.92	53.99	hourly	2026-04-26 15:55:34.7642
article-49396306	software developer	2026-04-25	Toronto	ON	30	76.92	hourly	2026-04-26 15:55:34.764227
article-49396183	software developer	2026-04-25	Toronto	ON	30	76.92	hourly	2026-04-26 15:55:34.764248
article-49396249	senior software developer	2026-04-25	Toronto	ON	30	76.92	hourly	2026-04-26 15:55:34.764277
article-49396281	database analyst	2026-04-25	Toronto	ON	25	61.03	hourly	2026-04-26 15:55:34.7643
article-49395402	senior software developer	2026-04-24	Toronto	ON	30	76.92	hourly	2026-04-26 15:55:34.764328
article-49395397	artificial intelligence (AI) consultant	2026-04-24	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.764351
article-49395146	office supervisor	2026-04-24	Nisku	AB	36.5	36.5	hourly	2026-04-26 15:55:34.764376
article-49395263	software development programmer	2026-04-24	North York	ON	48.25	48.25	hourly	2026-04-26 15:55:34.764401
article-49395139	software developer	2026-04-24	Mississauga	ON	50	50	hourly	2026-04-26 15:55:34.764422
article-49395212	senior software developer	2026-04-24	Toronto	ON	130000	130000	annually	2026-04-26 15:55:34.764448
article-49395213	data analyst - informatics and systems	2026-04-24	Oshawa	ON	20	20	hourly	2026-04-26 15:55:34.764467
article-49394301	machine learning engineer	2026-04-24	North Vancouver	BC	100000	150000	annually	2026-04-26 15:55:34.764522
article-49393502	IT (information technology) development manager	2026-04-24	Vancouver	BC	117909	117909	annually	2026-04-26 15:55:34.76455
article-49393111	data scientist	2026-04-24	Mississauga	ON	30	69.74	hourly	2026-04-26 15:55:34.764577
article-49393347	software developer	2026-04-24	Toronto	ON	30	76.92	hourly	2026-04-26 15:55:34.764598
article-49393201	data mining analyst	2026-04-24	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.764626
article-49392981	artificial intelligence (AI) consultant	2026-04-24	Calgary	AB	30	69.74	hourly	2026-04-26 15:55:34.764649
article-49392788	senior software developer	2026-04-24	Toronto	ON	30	76.92	hourly	2026-04-26 15:55:34.764662
article-49392955	data scientist	2026-04-24	Toronto	ON	30	69.74	hourly	2026-04-26 15:55:34.764689
article-49393221	help desk manager - information technology (IT)	2026-04-24	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.764713
article-49393205	manager, IT (information technology) implementation	2026-04-24	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.764735
article-49392870	software developer	2026-04-24	Oakville	ON	60000	105000	annually	2026-04-26 15:55:34.764763
article-49396257	director, data processing	2026-04-24	Toronto	ON	43.75	103.37	hourly	2026-04-26 15:55:34.764787
article-49402373	data mining analyst	2026-04-27	Toronto	ON	30	69.74	hourly	2026-04-27 16:54:30.595356
article-49402449	manager, data processing and systems analysis	2026-04-27	Toronto	ON	43.75	103.37	hourly	2026-04-27 16:54:30.59542
article-49402454	software developer	2026-04-27	Toronto	ON	30	76.92	hourly	2026-04-27 16:54:30.595463
article-49402495	manager, data processing and systems analysis	2026-04-27	Toronto	ON	43.75	103.37	hourly	2026-04-27 16:54:30.595498
article-49402583	software developer	2026-04-27	Toronto	ON	30	76.92	hourly	2026-04-27 16:54:30.595531
article-49402607	senior software developer	2026-04-27	Toronto	ON	30	76.92	hourly	2026-04-27 16:54:30.595567
article-49401198	data scientist	2026-04-26	Toronto	ON	30	69.74	hourly	2026-04-27 16:54:30.595602
article-49400735	software developer	2026-04-26	Toronto	ON	30	76.92	hourly	2026-04-27 16:54:30.595642
article-49400744	artificial intelligence (AI) consultant	2026-04-26	Toronto	ON	30	69.74	hourly	2026-04-27 16:54:30.59567
article-49400805	senior software developer	2026-04-26	Toronto	ON	30	76.92	hourly	2026-04-27 16:54:30.595702
article-49400808	data scientist	2026-04-26	Toronto	ON	30	69.74	hourly	2026-04-27 16:54:30.595723
article-49400820	manager, IT (information technology) implementation	2026-04-26	Toronto	ON	43.75	103.37	hourly	2026-04-27 16:54:30.595753
article-49400822	artificial intelligence (AI) consultant	2026-04-26	Calgary	AB	30	69.74	hourly	2026-04-27 16:54:30.595776
article-49400824	artificial intelligence (AI) consultant	2026-04-26	Toronto	ON	30	69.74	hourly	2026-04-27 16:54:30.595807
article-49400829	senior software developer	2026-04-26	Toronto	ON	30	76.92	hourly	2026-04-27 16:54:30.595833
article-49400834	data mining analyst	2026-04-26	Toronto	ON	30	69.74	hourly	2026-04-27 16:54:30.595861
article-49400841	manager, computer applications	2026-04-26	Toronto	ON	43.75	103.37	hourly	2026-04-27 16:54:30.595886
article-49400843	senior software developer	2026-04-26	Toronto	ON	30	76.92	hourly	2026-04-27 16:54:30.595913
article-49400865	software development manager	2026-04-26	Toronto	ON	43.75	103.37	hourly	2026-04-27 16:54:30.59594
article-49400937	data scientist	2026-04-26	Toronto	ON	30	69.74	hourly	2026-04-27 16:54:30.595964
article-49400943	director of technology management	2026-04-26	Toronto	ON	43.75	103.37	hourly	2026-04-27 16:54:30.595992
article-49400960	data scientist	2026-04-26	Vancouver	BC	30	69.74	hourly	2026-04-27 16:54:30.596014
article-49400968	data scientist	2026-04-26	Mississauga	ON	30	69.74	hourly	2026-04-27 16:54:30.596042
article-49401018	manager, computer applications	2026-04-26	Toronto	ON	43.75	103.37	hourly	2026-04-27 16:54:30.596063
article-49401044	data scientist	2026-04-26	Montréal	QC	30	69.74	hourly	2026-04-27 16:54:30.596094
article-49401138	data mining analyst	2026-04-26	Toronto	ON	30	69.74	hourly	2026-04-27 16:54:30.596119
article-49401143	information technology (IT) director	2026-04-26	Toronto	ON	43.75	103.37	hourly	2026-04-27 16:54:30.596147
article-49401173	manager, IT (information technology) implementation	2026-04-26	Toronto	ON	43.75	103.37	hourly	2026-04-27 16:54:30.596171
article-49403612	software developer	2026-04-26	Toronto	ON	55	55	hourly	2026-04-27 16:54:30.596198
article-49403517	software developer	2026-04-26	Vancouver	BC	35	35	hourly	2026-04-27 16:54:30.596219
article-49403617	software developer	2026-04-26	Vancouver	BC	35	35	hourly	2026-04-27 16:54:30.596273
article-49403712	software developer	2026-04-26	Toronto	ON	60	80	hourly	2026-04-27 16:54:30.596301
article-49403664	quantitative analyst	2026-04-26	Toronto	ON	125	125	daily	2026-04-27 16:54:30.59633
article-49397882	director, data processing	2026-04-25	Toronto	ON	43.75	103.37	hourly	2026-04-27 16:54:30.596358
article-49397872	senior software developer	2026-04-25	Toronto	ON	30	76.92	hourly	2026-04-27 16:54:30.596384
article-49403428	software developer	2026-04-25	Vancouver	BC	80000	87000	annually	2026-04-27 16:54:30.59641
article-49403650	software developer	2026-04-25	Toronto	ON	80000	87000	annually	2026-04-27 16:54:30.596437
article-49403343	data engineer	2026-04-24	Toronto	ON	10000	10000	monthly	2026-04-27 16:54:30.596463
article-49403568	data engineer	2026-04-24	Toronto	ON	86000	86000	annually	2026-04-27 16:54:30.596488
article-49403653	software developer	2026-04-24	Montréal	QC	65.52	80	hourly	2026-04-27 16:54:30.596515
article-49403674	software developer	2026-04-24	Toronto	ON	85000	125000	annually	2026-04-27 16:54:30.59654
article-49403419	data steward	2026-04-24	Toronto	ON	60	60	hourly	2026-04-27 16:54:30.596565
article-49403622	DBA (database analyst)	2026-04-24	Calgary	AB	10000	10000	monthly	2026-04-27 16:54:30.596588
article-49413350	software developer	2026-04-28	Toronto	ON	30	76.92	hourly	2026-04-28 17:02:52.01251
article-49413383	data scientist	2026-04-28	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.012579
article-49413401	software engineering manager	2026-04-28	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.012627
article-49413508	senior software developer	2026-04-28	Toronto	ON	30	76.92	hourly	2026-04-28 17:02:52.012654
article-49413514	software development manager	2026-04-28	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.012671
article-49413519	data scientist	2026-04-28	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.012691
article-49413546	data scientist	2026-04-28	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.012705
article-49413557	senior software developer	2026-04-28	Toronto	ON	30	76.92	hourly	2026-04-28 17:02:52.012726
article-49413598	manager, computer applications	2026-04-28	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.012741
article-49413602	software developer	2026-04-28	Vancouver	BC	30	76.92	hourly	2026-04-28 17:02:52.012755
article-49413625	data mining analyst	2026-04-28	Calgary	AB	30	69.74	hourly	2026-04-28 17:02:52.012767
article-49413631	artificial intelligence (AI) consultant	2026-04-28	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.012782
article-49413648	senior software developer	2026-04-28	Toronto	ON	30	76.92	hourly	2026-04-28 17:02:52.012795
article-49413656	manager, IT (information technology) implementation	2026-04-28	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.012807
article-49413657	data scientist	2026-04-28	Vancouver	BC	30	69.74	hourly	2026-04-28 17:02:52.01282
article-49413658	artificial intelligence (AI) consultant	2026-04-28	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.012832
article-49413661	artificial intelligence (AI) consultant	2026-04-28	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.012844
article-49413668	senior software developer	2026-04-28	Toronto	ON	30	76.92	hourly	2026-04-28 17:02:52.012856
article-49413673	data scientist	2026-04-28	Montréal	QC	30	69.74	hourly	2026-04-28 17:02:52.01287
article-49413675	manager, IT (information technology) implementation	2026-04-28	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.012909
article-49413677	director, data processing	2026-04-28	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.012928
article-49413686	software developer	2026-04-28	Toronto	ON	30	76.92	hourly	2026-04-28 17:02:52.012941
article-49413693	director of technology management	2026-04-28	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.012953
article-49413700	data mining analyst	2026-04-28	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.012964
article-49413714	manager, IT (information technology) implementation	2026-04-28	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.012996
article-49412645	operations supervisor	2026-04-28	Nestleton Station	ON	22	24	hourly	2026-04-28 17:02:52.013021
article-49410951	software developer	2026-04-28	Vancouver	BC	20	30	hourly	2026-04-28 17:02:52.013049
article-49411054	software developer	2026-04-28	Vancouver	BC	20	30	hourly	2026-04-28 17:02:52.013076
article-49411239	software developer	2026-04-28	Toronto	ON	40	40	hourly	2026-04-28 17:02:52.013091
article-49410911	software engineering manager	2026-04-28	Calgary	AB	150000	150000	annually	2026-04-28 17:02:52.013128
article-49408068	director of technology management	2026-04-27	Québec	QC	50000	120000	hourly	2026-04-28 17:02:52.013149
article-49407650	business data analyst	2026-04-27	St. Thomas	ON	41.5	41.5	hourly	2026-04-28 17:02:52.013161
article-49407043	software developer	2026-04-27	Toronto	ON	48.37	48.37	hourly	2026-04-28 17:02:52.01319
article-49406272	application programmer	2026-04-27	Surrey	BC	62	62	hourly	2026-04-28 17:02:52.013215
article-49405868	data scientist	2026-04-27	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.013229
article-49405542	software development manager	2026-04-27	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.013264
article-49405894	software development manager	2026-04-27	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.013283
article-49405853	data mining analyst	2026-04-27	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.013295
article-49405663	data scientist	2026-04-27	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.013307
article-49405902	data analyst - informatics and systems	2026-04-27	Toronto	ON	25	61.03	hourly	2026-04-28 17:02:52.013319
article-49405939	senior software developer	2026-04-27	Toronto	ON	30	76.92	hourly	2026-04-28 17:02:52.013331
article-49405831	software development manager	2026-04-27	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.013343
article-49405687	senior software developer	2026-04-27	Toronto	ON	30	76.92	hourly	2026-04-28 17:02:52.013406
article-49405693	artificial intelligence (AI) consultant	2026-04-27	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.013442
article-49405727	data scientist	2026-04-27	Montréal	QC	30	69.74	hourly	2026-04-28 17:02:52.013466
article-49405858	data mining analyst	2026-04-27	Montréal	QC	30	69.74	hourly	2026-04-28 17:02:52.01348
article-49405944	analyst, electronic data processing (EDP) systems	2026-04-27	Toronto	ON	25	61.03	hourly	2026-04-28 17:02:52.013492
article-49405568	database analyst (DBA)	2026-04-27	Toronto	ON	25	61.03	hourly	2026-04-28 17:02:52.013504
article-49405941	application programmer	2026-04-27	Mississauga	ON	30	76.92	hourly	2026-04-28 17:02:52.013515
article-49405836	manager, IT (information technology) implementation	2026-04-27	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.013528
article-49405909	manager, computer applications	2026-04-27	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.013539
article-49405819	artificial intelligence (AI) consultant	2026-04-27	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.01355
article-49405884	information technology (IT) director	2026-04-27	Toronto	ON	43.75	103.37	hourly	2026-04-28 17:02:52.01359
article-49401085	data scientist	2026-04-26	Toronto	ON	30	69.74	hourly	2026-04-28 17:02:52.013606
article-49401120	data analyst - informatics and systems	2026-04-26	Toronto	ON	25	61.03	hourly	2026-04-28 17:02:52.013636
article-49401145	senior software developer	2026-04-26	Calgary	AB	30	76.92	hourly	2026-04-28 17:02:52.013659
article-49401165	data analyst - informatics and systems	2026-04-26	Toronto	ON	25	61.03	hourly	2026-04-28 17:02:52.013694
article-49420364	office supervisor	2026-04-29	Hamilton	ON	36.5	36.5	hourly	2026-04-29 16:52:49.515452
article-49420073	manager, data processing and systems analysis	2026-04-29	Toronto	ON	43.75	103.37	hourly	2026-04-29 16:52:49.515519
article-49420191	manager, computer applications	2026-04-29	Toronto	ON	43.75	103.37	hourly	2026-04-29 16:52:49.515563
article-49420253	data mining analyst	2026-04-29	Toronto	ON	30	69.74	hourly	2026-04-29 16:52:49.515603
article-49420285	software development manager	2026-04-29	Toronto	ON	43.75	103.37	hourly	2026-04-29 16:52:49.515636
article-49420320	director of technology management	2026-04-29	Toronto	ON	43.75	103.37	hourly	2026-04-29 16:52:49.515678
article-49420353	software developer	2026-04-29	Toronto	ON	30	76.92	hourly	2026-04-29 16:52:49.515716
article-49420355	artificial intelligence (AI) consultant	2026-04-29	Toronto	ON	30	69.74	hourly	2026-04-29 16:52:49.51576
article-49420369	manager, IT (information technology) implementation	2026-04-29	Toronto	ON	43.75	103.37	hourly	2026-04-29 16:52:49.515794
article-49420400	help desk manager - information technology (IT)	2026-04-29	Toronto	ON	43.75	103.37	hourly	2026-04-29 16:52:49.515828
article-49420412	data scientist	2026-04-29	Mississauga	ON	30	69.74	hourly	2026-04-29 16:52:49.515863
article-49420421	software development manager	2026-04-29	Toronto	ON	43.75	103.37	hourly	2026-04-29 16:52:49.515894
article-49420439	data scientist	2026-04-29	Toronto	ON	30	69.74	hourly	2026-04-29 16:52:49.515926
article-49420447	manager, IT (information technology) implementation	2026-04-29	Toronto	ON	43.75	103.37	hourly	2026-04-29 16:52:49.515955
article-49420451	senior software developer	2026-04-29	Toronto	ON	30	76.92	hourly	2026-04-29 16:52:49.515986
article-49420456	database analyst (DBA)	2026-04-29	Montréal	QC	25	61.03	hourly	2026-04-29 16:52:49.51602
article-49420461	manager, computer applications	2026-04-29	Toronto	ON	43.75	103.37	hourly	2026-04-29 16:52:49.516076
article-49420496	senior software developer	2026-04-29	Toronto	ON	30	76.92	hourly	2026-04-29 16:52:49.516109
article-49417263	software developer	2026-04-29	Toronto	ON	30	76.92	hourly	2026-04-29 16:52:49.516139
article-49415625	business systems manager	2026-04-28	Orangeville	ON	140000	160000	annually	2026-04-29 16:52:49.51617
article-49415021	administrative supervisor	2026-04-28	Coquitlam	BC	37	37	hourly	2026-04-29 16:52:49.5162
article-49414475	software development programmer	2026-04-28	Vancouver	BC	52.4	52.4	hourly	2026-04-29 16:52:49.516227
article-49417837	artificial intelligence (AI) consultant	2026-04-28	Toronto	ON	135000	155000	annually	2026-04-29 16:52:49.51626
article-49417855	operations supervisor	2026-04-28	Vancouver	BC	50000	60000	annually	2026-04-29 16:52:49.516288
article-49425476	software developer	2026-04-30	Toronto	ON	80000	80000	annually	2026-04-30 16:46:06.373991
article-49425493	software developer	2026-04-30	Calgary	AB	120000	155000	annually	2026-04-30 16:46:06.374031
article-49422699	data analyst - informatics and systems	2026-04-29	Calgary	AB	44.5	44.5	hourly	2026-04-30 16:46:06.37405
article-49422405	EDP (electronic data processing) specialist	2026-04-29	Rouyn-Noranda	QC	30	30	hourly	2026-04-30 16:46:06.374069
article-49422224	software developer	2026-04-29	Surrey	BC	37.1	37.1	hourly	2026-04-30 16:46:06.374083
article-49421664	software developer	2026-04-29	Toronto	ON	120000	120000	annually	2026-04-30 16:46:06.374099
article-49421575	artificial intelligence (AI) consultant	2026-04-29	Toronto	ON	30	69.74	hourly	2026-04-30 16:46:06.37411
article-49421316	data administrator	2026-04-29	Etobicoke	ON	24	31.25	hourly	2026-04-30 16:46:06.374126
article-49431822	data centre operator	2026-05-01	Various locations	\N	28.84	36.05	hourly	2026-05-01 16:07:32.847177
article-49431821	data centre manager	2026-05-01	Balzac	AB	95000	120000	annually	2026-05-01 16:07:32.847237
article-49430235	data scientist	2026-05-01	Toronto	ON	30	69.74	hourly	2026-05-01 16:07:32.847259
article-49429227	software engineering manager	2026-05-01	Toronto	ON	43.75	103.37	hourly	2026-05-01 16:07:32.847283
article-49428579	PC (personal computer) application developer	2026-04-30	Montréal	QC	65000	90000	annually	2026-05-01 16:07:32.847306
article-49428587	data centre operator	2026-04-30	Victoriaville	QC	65000	100000	annually	2026-05-01 16:07:32.847326
article-49428631	data centre operator	2026-04-30	Boucherville	QC	65000	100000	annually	2026-05-01 16:07:32.847349
article-49428917	data centre manager	2026-04-30	Burnaby	BC	95000	120000	annually	2026-05-01 16:07:32.847378
article-49428899	computer systems manager	2026-04-30	Ottawa	ON	106400	132800	annually	2026-05-01 16:07:32.847393
article-49427434	developer, software	2026-04-30	Blainville	QC	55000	55000	annually	2026-05-01 16:07:32.847414
article-49427233	manager, data processing and systems analysis	2026-04-30	Toronto	ON	43.75	103.37	hourly	2026-05-01 16:07:32.847427
article-49427268	artificial intelligence (AI) consultant	2026-04-30	Toronto	ON	30	69.74	hourly	2026-05-01 16:07:32.847446
article-49427363	data scientist	2026-04-30	Toronto	ON	30	69.74	hourly	2026-05-01 16:07:32.847459
article-49427378	data scientist	2026-04-30	Montréal	QC	30	69.74	hourly	2026-05-01 16:07:32.84747
article-49427446	senior software developer	2026-04-30	Toronto	ON	30	76.92	hourly	2026-05-01 16:07:32.847489
article-49427539	artificial intelligence (AI) consultant	2026-04-30	Toronto	ON	30	69.74	hourly	2026-05-01 16:07:32.8475
article-49427618	data mining analyst	2026-04-30	Calgary	AB	30	69.74	hourly	2026-05-01 16:07:32.847519
article-49427679	manager, IT (information technology) implementation	2026-04-30	Toronto	ON	43.75	103.37	hourly	2026-05-01 16:07:32.84753
article-49427696	software engineering manager	2026-04-30	Toronto	ON	43.75	103.37	hourly	2026-05-01 16:07:32.847541
article-49427781	data scientist	2026-04-30	Vancouver	BC	30	69.74	hourly	2026-05-01 16:07:32.84756
article-49427807	data scientist	2026-04-30	Toronto	ON	30	69.74	hourly	2026-05-01 16:07:32.847571
article-49427829	manager, computer applications	2026-04-30	Toronto	ON	43.75	103.37	hourly	2026-05-01 16:07:32.847589
article-49427837	senior software developer	2026-04-30	Toronto	ON	30	76.92	hourly	2026-05-01 16:07:32.847599
article-49427840	data scientist	2026-04-30	Toronto	ON	30	69.74	hourly	2026-05-01 16:07:32.847609
article-49427851	artificial intelligence (AI) consultant	2026-04-30	Toronto	ON	30	69.74	hourly	2026-05-01 16:07:32.847627
article-49437690	operations supervisor	2026-05-02	Edmonton	AB	35000	35000	annually	2026-05-02 15:59:31.638749
article-49436930	manager, computer applications	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.638792
article-49436974	information technology (IT) director	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.638814
article-49436980	data analyst - informatics and systems	2026-05-02	Toronto	ON	25	61.03	hourly	2026-05-02 15:59:31.638833
article-49436986	software development manager	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.63885
article-49437028	manager, computer applications	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.638869
article-49436825	manager, IT (information technology) implementation	2026-05-01	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.638885
article-49435932	cloud developer	2026-05-01	Toronto	ON	29.95	29.95	hourly	2026-05-02 15:59:31.638907
article-49435874	director of data science	2026-05-01	Montréal	QC	80700	110000	annually	2026-05-02 15:59:31.638926
article-49435451	cloud developer	2026-05-01	Brampton	ON	70	90	hourly	2026-05-02 15:59:31.638942
article-49434675	data quality analyst	2026-05-01	Maple	ON	44.5	44.5	hourly	2026-05-02 15:59:31.638956
article-49433049	systems architecture director	2026-05-01	Calgary	AB	84.13	84.13	hourly	2026-05-02 15:59:31.63897
article-49432025	artificial intelligence (AI) consultant	2026-05-01	Toronto	ON	30	69.74	hourly	2026-05-02 15:59:31.638984
article-49432043	data scientist	2026-05-01	Toronto	ON	30	69.74	hourly	2026-05-02 15:59:31.638998
article-49432066	manager, data processing and systems analysis	2026-05-01	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.639012
article-49432159	database analyst (DBA)	2026-05-01	Toronto	ON	25	61.03	hourly	2026-05-02 15:59:31.639025
article-49432172	data scientist	2026-05-01	Toronto	ON	30	69.74	hourly	2026-05-02 15:59:31.639038
article-49432205	software developer	2026-05-01	Toronto	ON	30	76.92	hourly	2026-05-02 15:59:31.639051
article-49432240	manager, computer applications	2026-05-01	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.639064
article-49432321	data scientist	2026-05-01	Toronto	ON	30	69.74	hourly	2026-05-02 15:59:31.639077
article-49432417	manager, data processing and systems analysis	2026-05-01	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.639089
article-49432421	data scientist	2026-05-01	Toronto	ON	30	69.74	hourly	2026-05-02 15:59:31.639108
article-49432432	data mining analyst	2026-05-01	Toronto	ON	30	69.74	hourly	2026-05-02 15:59:31.639121
article-49432461	senior software developer	2026-05-01	Toronto	ON	30	76.92	hourly	2026-05-02 15:59:31.639133
article-49432519	data analyst - informatics and systems	2026-05-01	Toronto	ON	25	61.03	hourly	2026-05-02 15:59:31.639144
article-49432783	manager, database	2026-05-01	Toronto	ON	25	61.03	hourly	2026-05-02 15:59:31.639158
article-49432779	data scientist	2026-05-01	Montréal	QC	30	69.74	hourly	2026-05-02 15:59:31.639176
article-49432800	artificial intelligence (AI) consultant	2026-05-01	Toronto	ON	30	69.74	hourly	2026-05-02 15:59:31.639189
article-49432679	artificial intelligence (AI) consultant	2026-05-01	Toronto	ON	30	69.74	hourly	2026-05-02 15:59:31.639202
article-49432831	information technology (IT) director	2026-05-01	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.639241
article-49432577	director of technology management	2026-05-01	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.639262
article-49432756	director of technology management	2026-05-01	Toronto	ON	43.75	103.37	hourly	2026-05-02 15:59:31.639276
article-49432859	computer projects manager	2026-05-01	Boisbriand	QC	88000	110000	annually	2026-05-02 15:59:31.63929
article-49437901	software developer	2026-05-01	Mississauga	ON	122202.54	122202.54	annually	2026-05-02 15:59:31.639304
article-49428050	data scientist	2026-04-30	Toronto	ON	30	69.74	hourly	2026-05-02 15:59:31.639318
article-49440747	software developer	2026-05-03	Toronto	ON	30	76.92	hourly	2026-05-03 16:00:18.643258
article-49440903	manager, computer applications	2026-05-03	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643293
article-49440721	operations supervisor	2026-05-03	Edmonton	AB	35000	35000	annually	2026-05-03 16:00:18.643313
article-49438986	artificial intelligence (AI) consultant	2026-05-02	Toronto	ON	30	69.74	hourly	2026-05-03 16:00:18.643333
article-49439019	software development manager	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643346
article-49439041	manager, data processing planning	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643361
article-49439057	senior software developer	2026-05-02	Toronto	ON	30	76.92	hourly	2026-05-03 16:00:18.643371
article-49439058	artificial intelligence (AI) consultant	2026-05-02	Calgary	AB	30	69.74	hourly	2026-05-03 16:00:18.643388
article-49439060	senior software developer	2026-05-02	Vancouver	BC	30	76.92	hourly	2026-05-03 16:00:18.643399
article-49439076	data scientist	2026-05-02	Toronto	ON	30	69.74	hourly	2026-05-03 16:00:18.643409
article-49439080	senior software developer	2026-05-02	Toronto	ON	30	76.92	hourly	2026-05-03 16:00:18.643418
article-49439084	artificial intelligence (AI) consultant	2026-05-02	Toronto	ON	30	69.74	hourly	2026-05-03 16:00:18.643427
article-49439128	software engineering manager	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643437
article-49439136	senior software developer	2026-05-02	Toronto	ON	30	76.92	hourly	2026-05-03 16:00:18.643452
article-49439138	senior software developer	2026-05-02	Mississauga	ON	30	76.92	hourly	2026-05-03 16:00:18.643465
article-49439180	artificial intelligence (AI) consultant	2026-05-02	Toronto	ON	30	69.74	hourly	2026-05-03 16:00:18.643477
article-49439184	manager, computer applications	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643486
article-49439187	information technology (IT) director	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643495
article-49439189	senior software developer	2026-05-02	Toronto	ON	30	76.92	hourly	2026-05-03 16:00:18.643503
article-49439195	software development manager	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643511
article-49439205	manager, computer applications	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.64352
article-49439212	artificial intelligence (AI) consultant	2026-05-02	Calgary	AB	30	69.74	hourly	2026-05-03 16:00:18.643528
article-49439221	director of technology management	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643537
article-49439228	artificial intelligence (AI) consultant	2026-05-02	Toronto	ON	30	69.74	hourly	2026-05-03 16:00:18.643545
article-49439244	senior software developer	2026-05-02	Calgary	AB	30	76.92	hourly	2026-05-03 16:00:18.643554
article-49439341	manager, IT (information technology) implementation	2026-05-02	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643562
article-49432808	data scientist	2026-05-01	Toronto	ON	30	69.74	hourly	2026-05-03 16:00:18.64357
article-49432424	data engineer	2026-05-01	London	ON	70790.55	70790.55	annually	2026-05-03 16:00:18.643583
article-49432711	data processing director	2026-05-01	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643596
article-49432745	software development manager	2026-05-01	Toronto	ON	43.75	103.37	hourly	2026-05-03 16:00:18.643607
article-49449214	artificial intelligence (AI) consultant	2026-05-04	Calgary	AB	30	69.74	hourly	2026-05-04 16:59:32.997123
article-49449260	data processing director	2026-05-04	Toronto	ON	43.75	103.37	hourly	2026-05-04 16:59:32.997177
article-49449267	manager, computer applications	2026-05-04	Toronto	ON	43.75	103.37	hourly	2026-05-04 16:59:32.997202
article-49449292	data scientist	2026-05-04	Toronto	ON	30	69.74	hourly	2026-05-04 16:59:32.997225
article-49449318	senior software developer	2026-05-04	Toronto	ON	30	76.92	hourly	2026-05-04 16:59:32.997241
article-49449329	artificial intelligence (AI) consultant	2026-05-04	Toronto	ON	30	69.74	hourly	2026-05-04 16:59:32.997265
article-49449352	data scientist	2026-05-04	Toronto	ON	30	69.74	hourly	2026-05-04 16:59:32.997283
article-49449373	manager, IT (information technology) implementation	2026-05-04	Toronto	ON	43.75	103.37	hourly	2026-05-04 16:59:32.99731
article-49449374	software developer	2026-05-04	Toronto	ON	30	76.92	hourly	2026-05-04 16:59:32.997327
article-49449394	manager, IT (information technology) implementation	2026-05-04	Toronto	ON	43.75	103.37	hourly	2026-05-04 16:59:32.997341
article-49449396	data mining analyst	2026-05-04	Montréal	QC	30	69.74	hourly	2026-05-04 16:59:32.997363
article-49449412	senior software developer	2026-05-04	Toronto	ON	30	76.92	hourly	2026-05-04 16:59:32.997376
article-49449434	software developer	2026-05-04	Toronto	ON	30	76.92	hourly	2026-05-04 16:59:32.997397
article-49446770	software developer	2026-05-04	Toronto	ON	55	55	hourly	2026-05-04 16:59:32.997409
article-49442596	data scientist	2026-05-03	Toronto	ON	30	69.74	hourly	2026-05-04 16:59:32.997426
article-49442632	manager, data processing and systems analysis	2026-05-03	Toronto	ON	43.75	103.37	hourly	2026-05-04 16:59:32.997442
article-49442656	data scientist	2026-05-03	Toronto	ON	30	69.74	hourly	2026-05-04 16:59:32.997454
article-49442676	software development manager	2026-05-03	Toronto	ON	43.75	103.37	hourly	2026-05-04 16:59:32.997473
article-49442703	data scientist	2026-05-03	Mississauga	ON	30	69.74	hourly	2026-05-04 16:59:32.997485
article-49442721	manager, IT (information technology) implementation	2026-05-03	Toronto	ON	43.75	103.37	hourly	2026-05-04 16:59:32.997497
article-49442758	senior software developer	2026-05-03	Toronto	ON	30	76.92	hourly	2026-05-04 16:59:32.997516
article-49442760	data scientist	2026-05-03	Toronto	ON	30	69.74	hourly	2026-05-04 16:59:32.997527
article-49442762	software developer	2026-05-03	Toronto	ON	30	76.92	hourly	2026-05-04 16:59:32.997538
article-49442774	data mining analyst	2026-05-03	Toronto	ON	30	69.74	hourly	2026-05-04 16:59:32.997558
article-49442781	information technology (IT) director	2026-05-03	Toronto	ON	43.75	103.37	hourly	2026-05-04 16:59:32.997569
article-49446803	data engineer	2026-05-03	Toronto	ON	50	50	hourly	2026-05-04 16:59:32.99758
article-49439265	senior software developer	2026-05-02	Vancouver	BC	30	76.92	hourly	2026-05-04 16:59:32.997599
article-49458048	data scientist	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.015292
article-49458054	artificial intelligence (AI) consultant	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.015386
article-49458058	data scientist	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.015434
article-49458173	data analyst - informatics and systems	2026-05-05	Toronto	ON	25	61.03	hourly	2026-05-05 16:56:25.015481
article-49458183	data mining analyst	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.015514
article-49458207	data scientist	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.015555
article-49458208	data scientist	2026-05-05	Montréal	QC	30	69.74	hourly	2026-05-05 16:56:25.015593
article-49458238	senior software developer	2026-05-05	Toronto	ON	30	76.92	hourly	2026-05-05 16:56:25.015636
article-49458257	manager, computer applications	2026-05-05	Toronto	ON	43.75	103.37	hourly	2026-05-05 16:56:25.015667
article-49458258	director, data processing	2026-05-05	Toronto	ON	43.75	103.37	hourly	2026-05-05 16:56:25.0157
article-49458261	artificial intelligence (AI) consultant	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.015731
article-49458275	data analyst - informatics and systems	2026-05-05	Toronto	ON	25	61.03	hourly	2026-05-05 16:56:25.015761
article-49458288	artificial intelligence (AI) consultant	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.015792
article-49458304	artificial intelligence (AI) consultant	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.015823
article-49458306	artificial intelligence (AI) consultant	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.015851
article-49458312	senior software developer	2026-05-05	Mississauga	ON	30	76.92	hourly	2026-05-05 16:56:25.015883
article-49458326	data scientist	2026-05-05	Vancouver	BC	30	69.74	hourly	2026-05-05 16:56:25.015912
article-49458336	help desk manager - information technology (IT)	2026-05-05	Toronto	ON	43.75	103.37	hourly	2026-05-05 16:56:25.015941
article-49458340	data processing director	2026-05-05	Toronto	ON	43.75	103.37	hourly	2026-05-05 16:56:25.015969
article-49458352	artificial intelligence (AI) consultant	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.015996
article-49458356	artificial intelligence (AI) consultant	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.016023
article-49458358	software development manager	2026-05-05	Toronto	ON	43.75	103.37	hourly	2026-05-05 16:56:25.016052
article-49458379	data scientist	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.016077
article-49458383	data scientist	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.016106
article-49458395	artificial intelligence (AI) consultant	2026-05-05	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.016134
article-49458408	manager, IT (information technology) implementation	2026-05-05	Mississauga	ON	43.75	103.37	hourly	2026-05-05 16:56:25.016161
article-49457347	data administrator	2026-05-05	Mont-Royal	QC	42000	55000	annually	2026-05-05 16:56:25.0162
article-49456803	software development programmer	2026-05-05	LaSalle	QC	95000	120000	annually	2026-05-05 16:56:25.016228
article-49456445	operations supervisor	2026-05-05	Montréal	QC	35.45	35.45	hourly	2026-05-05 16:56:25.01626
article-49455809	software developer	2026-05-05	Toronto	ON	65600	98400	annually	2026-05-05 16:56:25.016293
article-49453685	artificial intelligence (AI) consultant	2026-05-04	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.016321
article-49453094	operations supervisor	2026-05-04	Surrey	BC	36.85	36.85	hourly	2026-05-05 16:56:25.016379
article-49452951	cybersecurity manager	2026-05-04	Varennes	QC	27.5	27.5	hourly	2026-05-05 16:56:25.016412
article-49452296	information technology (IT) director	2026-05-04	Victoria	BC	126100.02	126100.02	annually	2026-05-05 16:56:25.016439
article-49451480	software developer	2026-05-04	Kamloops	BC	49.64	49.64	hourly	2026-05-05 16:56:25.016469
article-49450793	software developer	2026-05-04	Etobicoke	ON	48.08	50	hourly	2026-05-05 16:56:25.016495
article-49450375	data mining analyst	2026-05-04	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.016522
article-49450019	software developer	2026-05-04	Mississauga	ON	56977.48	100000	annually	2026-05-05 16:56:25.016548
article-49449920	data mining analyst	2026-05-04	Toronto	ON	30	69.74	hourly	2026-05-05 16:56:25.016576
article-49455816	software developer	2026-05-04	Hamilton	ON	29.75	34.3	hourly	2026-05-05 16:56:25.016601
article-49455558	manager, computer system operations	2026-05-04	Caledon	ON	85000	95000	annually	2026-05-05 16:56:25.016629
article-49442846	data analyst - informatics and systems	2026-05-03	Toronto	ON	25	61.03	hourly	2026-05-05 16:56:25.016655
article-49453403	director, data processing	2026-05-02	Toronto	ON	40	92	hourly	2026-05-05 16:56:25.016684
article-49446496	software developer	2026-05-01	Toronto	ON	90	90	hourly	2026-05-05 16:56:25.016708
article-49446720	software developer	2026-05-01	Toronto	ON	85000	85000	annually	2026-05-05 16:56:25.016736
article-49446495	software developer	2026-04-30	Montréal	QC	120000	155000	annually	2026-05-05 16:56:25.016765
article-49446742	software developer	2026-04-30	Vancouver	BC	120000	155000	annually	2026-05-05 16:56:25.016794
article-49446821	software developer	2026-04-30	Toronto	ON	120000	155000	annually	2026-05-05 16:56:25.016822
article-49446820	software developer	2026-04-30	Toronto	ON	120000	180000	annually	2026-05-05 16:56:25.016849
article-49425615	software developer	2026-04-29	Toronto	ON	45	45	hourly	2026-05-05 16:56:25.016874
article-49425554	software developer	2026-04-28	Vancouver	BC	80000	100000	annually	2026-05-05 16:56:25.016904
article-49454426	software engineering manager	2026-04-28	Calgary	AB	150000	150000	annually	2026-05-05 16:56:25.01693
article-49445431	data engineer	2026-04-26	Toronto	ON	110000	140000	annually	2026-05-05 16:56:25.016959
article-49444937	software developer	2026-04-26	Vancouver	BC	150000	160000	annually	2026-05-05 16:56:25.016987
article-49446189	software developer	2026-04-26	Vancouver	BC	110000	140000	annually	2026-05-05 16:56:25.017026
article-49446072	software developer	2026-04-26	Toronto	ON	110000	140000	annually	2026-05-05 16:56:25.017053
article-49431320	software developer	2026-04-26	Vancouver	BC	110000	135000	annually	2026-05-05 16:56:25.017082
article-49445430	software developer	2026-04-26	Vancouver	BC	35	35	hourly	2026-05-05 16:56:25.017106
article-49445146	software developer	2026-04-26	Toronto	ON	150000	180000	annually	2026-05-05 16:56:25.017141
article-49445814	software developer	2026-04-26	Vancouver	BC	35	35	hourly	2026-05-05 16:56:25.017175
article-49446181	software developer	2026-04-26	Toronto	ON	60	80	hourly	2026-05-05 16:56:25.017205
article-49445990	quantitative analyst	2026-04-26	Toronto	ON	125	125	daily	2026-05-05 16:56:25.017237
article-49445633	data engineer	2026-04-24	Toronto	ON	86000	86000	annually	2026-05-05 16:56:25.017264
article-49446757	software developer	2026-04-24	Toronto	ON	100000	120000	annually	2026-05-05 16:56:25.017295
article-49445931	software developer	2026-04-24	Montréal	QC	65.52	80	hourly	2026-05-05 16:56:25.017323
article-49446681	software developer	2026-04-24	Montréal	QC	85000	125000	annually	2026-05-05 16:56:25.017393
article-49445803	software developer	2026-04-24	Windsor	ON	85000	125000	annually	2026-05-05 16:56:25.017426
article-49445904	software developer	2026-04-24	Chatham	ON	85000	125000	annually	2026-05-05 16:56:25.017454
article-49446006	software developer	2026-04-24	Toronto	ON	85000	125000	annually	2026-05-05 16:56:25.017484
article-49445150	data steward	2026-04-24	Toronto	ON	60	60	hourly	2026-05-05 16:56:25.01751
article-49431204	data engineer	2026-04-23	Toronto	ON	110000	110000	annually	2026-05-05 16:56:25.017538
article-49404521	Internet systems administrator	2026-04-22	Vancouver	BC	68392.5	68392.5	annually	2026-05-05 16:56:25.017565
article-49445527	software developer	2026-04-21	Montréal	QC	65.52	80	hourly	2026-05-05 16:56:25.017596
article-49445585	data architect	2026-04-20	Montréal	QC	90000	120000	hourly	2026-05-05 16:56:25.01763
article-49446067	cloud developer	2026-04-20	Toronto	ON	101	101	daily	2026-05-05 16:56:25.017656
article-49446192	data engineer	2026-04-17	Toronto	ON	80000	120000	annually	2026-05-05 16:56:25.017686
article-49446091	software developer	2026-04-17	Ajax	ON	80	80	hourly	2026-05-05 16:56:25.017716
article-49446088	software developer	2026-04-17	Toronto	ON	140000	140000	annually	2026-05-05 16:56:25.017744
article-49445421	software developer	2026-04-17	Vancouver	BC	90000	130000	annually	2026-05-05 16:56:25.017774
article-49445463	software developer	2026-04-17	Toronto	ON	100000	220000	annually	2026-05-05 16:56:25.017805
article-49454833	software developer	2026-04-17	Vancouver	BC	50000	75000	annually	2026-05-05 16:56:25.017834
article-49445046	software developer	2026-04-17	Toronto	ON	120000	150000	annually	2026-05-05 16:56:25.017866
article-49444947	software developer	2026-04-17	Mississauga	ON	80000	100000	annually	2026-05-05 16:56:25.017898
article-49445473	software developer	2026-04-17	Mississauga	ON	100000	125000	annually	2026-05-05 16:56:25.017929
article-49425581	software developer	2026-04-17	Markham	ON	64201	64201	annually	2026-05-05 16:56:25.017955
article-49454347	data engineer	2026-04-16	Montréal	QC	65	70	hourly	2026-05-05 16:56:25.017986
article-49454972	data engineer	2026-04-16	Windsor	ON	36.8	38.11	hourly	2026-05-05 16:56:25.018013
article-49445580	data engineer	2026-04-16	Toronto	ON	86	86	hourly	2026-05-05 16:56:25.018041
article-49445508	software developer	2026-04-16	Markham	ON	30	34	hourly	2026-05-05 16:56:25.018071
article-49377467	computer systems development manager	2026-04-15	Vancouver	BC	40	92	hourly	2026-05-05 16:56:25.018098
article-49454846	software developer	2026-04-14	Toronto	ON	102000	102000	annually	2026-05-05 16:56:25.018127
article-49446214	software developer	2026-04-13	Ajax	ON	120000	120000	annually	2026-05-05 16:56:25.018157
article-49446084	software developer	2026-04-11	Vernon	BC	72950	84820	annually	2026-05-05 16:56:25.018186
article-49307376	data analyst - informatics and systems	2026-04-10	Oshawa	ON	36.02	36.02	hourly	2026-05-05 16:56:25.018216
article-49307481	data analyst - informatics and systems	2026-04-10	Markham	ON	36.02	36.02	hourly	2026-05-05 16:56:25.018247
article-49363099	data communications specialist	2026-04-10	Vancouver	BC	30	67	hourly	2026-05-05 16:56:25.018273
article-49381023	cloud operations manager	2026-04-10	Calgary	AB	83200	83200	annually	2026-05-05 16:56:25.018303
article-49434556	office supervisor	2026-04-09	Tweed	ON	36	36	hourly	2026-05-05 16:56:25.018329
article-49447189	data engineer	2026-04-09	Toronto	ON	75000	75000	annually	2026-05-05 16:56:25.018383
article-49436668	supervisor, clinical receptionists	2026-04-09	Toronto	ON	38	38	hourly	2026-05-05 16:56:25.018415
article-49433569	clerical supervisor	2026-04-08	Kamloops	BC	35.59	35.59	hourly	2026-05-05 16:56:25.018446
article-49253419	senior software developer	2026-04-08	Vancouver	BC	100000	176612.31	annually	2026-05-05 16:56:25.018475
article-49428690	quantitative analyst	2026-04-01	Surrey	BC	150000	150000	annually	2026-05-05 16:56:25.018504
article-49440512	software development manager	2026-03-31	Oshawa	ON	65	75	hourly	2026-05-05 16:56:25.018531
article-49435447	office supervisor	2026-03-26	Rocky View	AB	36	36	hourly	2026-05-05 16:56:25.01856
article-49458750	database analyst	2026-03-23	Richmond Hill	ON	45	45	hourly	2026-05-05 16:56:25.018589
article-49410827	business data analyst	2026-03-20	Edmonton	AB	48.1	48.1	hourly	2026-05-05 16:56:25.018615
article-49456431	administrative supervisor	2026-03-12	Markham	ON	36	36	hourly	2026-05-05 16:56:25.018642
article-49447424	computer manager	2026-03-02	Vancouver	BC	200000	253650	annually	2026-05-05 16:56:25.018671
article-49408630	database analyst (DBA)	2026-02-14	Brampton	ON	45	45	hourly	2026-05-05 16:56:25.018701
article-49438497	software developer	2026-02-12	Ottawa	ON	51	51	hourly	2026-05-05 16:56:25.018731
article-49426570	records office supervisor	2026-01-14	Edmonton	AB	36	36	hourly	2026-05-05 16:56:25.018758
article-49434796	data analyst - informatics and systems	2026-01-14	Surrey	BC	45	45	hourly	2026-05-05 16:56:25.018786
article-49426541	records office supervisor	2026-01-13	Edmonton	AB	36	36	hourly	2026-05-05 16:56:25.018815
article-49465821	PC (personal computer) application developer	2026-05-06	Laval	QC	80000	110000	annually	2026-05-06 16:52:56.546837
article-49461551	administrator, database	2026-05-05	Calgary	AB	44.06	44.06	hourly	2026-05-06 16:52:56.54689
article-49461140	technical program manager - information technology (IT)	2026-05-05	Ottawa	ON	66.7	66.7	hourly	2026-05-06 16:52:56.546911
article-49459443	administrator, data	2026-05-05	Montréal	QC	30.27	53.64	hourly	2026-05-06 16:52:56.546967
article-49458825	software developer	2026-05-05	Toronto	ON	90000	105000	annually	2026-05-06 16:52:56.546983
article-49458407	data analyst - informatics and systems	2026-05-05	Toronto	ON	25	61.03	hourly	2026-05-06 16:52:56.547003
article-49458421	manager, computer systems development	2026-05-05	Toronto	ON	43.75	103.37	hourly	2026-05-06 16:52:56.547017
article-49958878	artificial intelligence (AI) consultant	2026-07-25	Montréal	QC	30	69.74	hourly	2026-07-26 22:33:11.124332
article-49958728	artificial intelligence (AI) consultant	2026-07-25	Montréal	QC	30	69.74	hourly	2026-07-26 22:33:11.124374
article-49957319	office supervisor	2026-07-24	Rocky View	AB	37.5	37.5	hourly	2026-07-26 22:33:11.124398
article-49955842	DBA (database analyst)	2026-07-24	Lachine	QC	36	36	hourly	2026-07-26 22:33:11.124416
article-49955003	software developer	2026-07-24	Montréal	QC	70	70	hourly	2026-07-26 22:33:11.124435
article-49955102	software developer	2026-07-24	Toronto	ON	88.54	88.54	hourly	2026-07-26 22:33:11.124452
article-49955178	software developer	2026-07-24	Toronto	ON	88.54	88.54	hourly	2026-07-26 22:33:11.12447
article-49955199	software developer	2026-07-24	Toronto	ON	88.54	88.54	hourly	2026-07-26 22:33:11.124486
article-49954870	information technology (IT) director	2026-07-24	Montréal	QC	43.75	103.37	hourly	2026-07-26 22:33:11.124507
article-49954020	software engineering manager	2026-07-23	North Vancouver	BC	64	64	hourly	2026-07-26 22:33:11.124523
article-49952041	developer, software	2026-07-23	Montréal	QC	75000	75000	annually	2026-07-26 22:33:11.12454
article-49954638	data analyst - informatics and systems	2026-07-23	Saint-Laurent	QC	64.71	64.71	hourly	2026-07-26 22:33:11.124558
article-49957346	software developer	2026-07-23	Cambridge	ON	60.52	60.52	hourly	2026-07-26 22:33:11.124575
article-49955191	data engineer	2026-07-23	Kitchener	ON	10000	10000	monthly	2026-07-26 22:33:11.124591
article-49955192	software developer	2026-07-23	Montréal	QC	65.52	80	hourly	2026-07-26 22:33:11.124608
article-49955043	software developer	2026-07-23	Montréal	QC	70	70	hourly	2026-07-26 22:33:11.124625
article-49955046	software developer	2026-07-23	Markham	ON	95000	95000	hourly	2026-07-26 22:33:11.124642
article-49954908	software developer	2026-07-23	Cambridge	ON	110000	130000	annually	2026-07-26 22:33:11.12466
article-49954916	software developer	2026-07-23	Kitchener	ON	110000	130000	annually	2026-07-26 22:33:11.124678
article-49955021	software developer	2026-07-23	Kitchener	ON	110000	110000	annually	2026-07-26 22:33:11.124694
article-49955080	software developer	2026-07-23	Guelph	ON	110000	130000	annually	2026-07-26 22:33:11.124711
article-49955105	software developer	2026-07-23	Cambridge	ON	110000	110000	annually	2026-07-26 22:33:11.124733
article-49955121	software developer	2026-07-23	Guelph	ON	110000	110000	annually	2026-07-26 22:33:11.124755
article-49955094	software developer	2026-07-23	Mississauga	ON	25	25	hourly	2026-07-26 22:33:11.124772
article-49955188	software developer	2026-07-23	Toronto	ON	200	300	hourly	2026-07-26 22:33:11.124788
article-49948940	big data analyst	2026-07-22	Orillia	ON	65000	75000	annually	2026-07-26 22:33:11.124805
article-49948922	software developer	2026-07-22	Vaughan	ON	60000	70000	annually	2026-07-26 22:33:11.124828
article-49948477	senior software developer	2026-07-22	Toronto	ON	110000	130000	annually	2026-07-26 22:33:11.124845
article-49948226	IT (information technology) development manager	2026-07-22	Victoria	BC	62	68	hourly	2026-07-26 22:33:11.124867
article-49947583	manager, IT (information technology) implementation	2026-07-22	Toronto	ON	43.75	103.37	hourly	2026-07-26 22:33:11.124884
article-49947462	information systems manager	2026-07-22	Vancouver	BC	64	99	hourly	2026-07-26 22:33:11.124907
article-49947287	cybersecurity manager	2026-07-22	Thetford Mines	QC	30	35	hourly	2026-07-26 22:33:11.124925
article-49946656	data engineer	2026-07-22	Edmonton	AB	75	75	hourly	2026-07-26 22:33:11.124942
article-49946428	artificial intelligence (AI) consultant	2026-07-22	Edmonton	AB	30	69.74	hourly	2026-07-26 22:33:11.124958
article-49946410	manager, computer applications	2026-07-22	Toronto	ON	43.75	103.37	hourly	2026-07-26 22:33:11.124976
article-49954895	data engineer	2026-07-22	Toronto	ON	100000	130000	annually	2026-07-26 22:33:11.124995
article-49955009	software developer	2026-07-22	Markham	ON	60000	70000	annually	2026-07-26 22:33:11.125013
article-49945239	software development programmer	2026-07-21	Nepean	ON	54	54	hourly	2026-07-26 22:33:11.125035
article-49944647	operations supervisor	2026-07-21	Etobicoke	ON	37.75	37.75	hourly	2026-07-26 22:33:11.125052
article-49944455	software developer	2026-07-21	Toronto	ON	80500	100600	annually	2026-07-26 22:33:11.125073
article-49944283	cloud operations manager	2026-07-21	Edmonton	AB	19	19	hourly	2026-07-26 22:33:11.125091
article-49944119	database manager	2026-07-21	West Vancouver	BC	88500	93500	annually	2026-07-26 22:33:11.125112
article-49944034	big data analyst	2026-07-21	Concord	ON	45000	55000	annually	2026-07-26 22:33:11.125131
article-49943575	data custodian	2026-07-21	Concord	ON	37.5	42.5	hourly	2026-07-26 22:33:11.125151
article-49942322	developer, software	2026-07-21	Saint-Laurent	QC	110000	110000	annually	2026-07-26 22:33:11.12517
article-49941926	senior software developer	2026-07-21	Montréal	QC	30	76.92	hourly	2026-07-26 22:33:11.125188
article-49955078	data modeler	2026-07-21	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.125205
article-49946583	software developer	2026-07-21	Vancouver	BC	120000	180000	annually	2026-07-26 22:33:11.125229
article-49946731	software developer	2026-07-21	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.125244
article-49946462	software developer	2026-07-21	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.12526
article-49946669	DBA (database analyst)	2026-07-21	Calgary	AB	10000	10000	monthly	2026-07-26 22:33:11.125276
article-49947168	operations supervisor	2026-07-21	Guelph	ON	22.5	22.5	hourly	2026-07-26 22:33:11.125291
article-49947050	operations supervisor	2026-07-21	High River	AB	24.55	24.55	hourly	2026-07-26 22:33:11.125306
article-49938479	software developer	2026-07-20	Toronto	ON	102700	137000	annually	2026-07-26 22:33:11.125322
article-49938415	software developer	2026-07-20	Toronto	ON	146200	195000	annually	2026-07-26 22:33:11.125338
article-49938576	software developer	2026-07-20	Toronto	ON	67200	89600	annually	2026-07-26 22:33:11.125355
article-49937938	administrator, database	2026-07-20	London	ON	86000	95000	annually	2026-07-26 22:33:11.12537
article-49937923	office supervisor	2026-07-20	Brampton	ON	36.5	36.5	hourly	2026-07-26 22:33:11.125386
article-49937540	data engineer	2026-07-20	London	ON	70790.55	70790.55	annually	2026-07-26 22:33:11.125401
article-49936682	developer, software	2026-07-20	Blainville	QC	55000	55000	annually	2026-07-26 22:33:11.125415
article-49946570	software developer	2026-07-20	Hamilton	ON	65000	85000	annually	2026-07-26 22:33:11.125431
article-49946518	software developer	2026-07-20	Toronto	ON	105000	125000	annually	2026-07-26 22:33:11.125447
article-49946454	software developer	2026-07-20	Montréal	QC	65.52	80	hourly	2026-07-26 22:33:11.125466
article-49933043	director of technology management	2026-07-20	Toronto	ON	40	92	hourly	2026-07-26 22:33:11.125482
article-49943988	cloud operations manager	2026-07-20	Nanaimo	BC	30	35	hourly	2026-07-26 22:33:11.125498
article-49946728	operations supervisor	2026-07-20	Mississauga	ON	50000	50000	annually	2026-07-26 22:33:11.125514
article-49929592	software developer	2026-07-18	Guelph	ON	90000	90000	annually	2026-07-26 22:33:11.125529
article-49927085	data scientist	2026-07-18	Montréal	QC	30	69.74	hourly	2026-07-26 22:33:11.125547
article-49927083	data scientist	2026-07-18	Edmonton	AB	30	69.74	hourly	2026-07-26 22:33:11.125562
article-49927105	information technology (IT) implementation manager	2026-07-18	Montréal	QC	43.75	103.37	hourly	2026-07-26 22:33:11.125579
article-49935812	software developer	2026-07-18	Toronto	ON	87.38	87.38	hourly	2026-07-26 22:33:11.125595
article-49925275	operations supervisor	2026-07-17	Toronto	ON	81600	108900	annually	2026-07-26 22:33:11.125613
article-49925227	computer manager	2026-07-17	Montréal	QC	140000	170000	annually	2026-07-26 22:33:11.125633
article-49923485	DBA (database administrator)	2026-07-17	London	ON	86000	95000	annually	2026-07-26 22:33:11.125651
article-49922430	operations supervisor	2026-07-17	Thunder Bay	ON	26.42	26.42	hourly	2026-07-26 22:33:11.125668
article-49922282	administrative supervisor	2026-07-17	Vancouver	BC	40	40	hourly	2026-07-26 22:33:11.125684
article-49922281	operations supervisor	2026-07-17	Brantford	ON	37	37	hourly	2026-07-26 22:33:11.1257
article-49921993	big data analyst	2026-07-17	Montréal	QC	70000	70000	annually	2026-07-26 22:33:11.125718
article-49921954	operations supervisor	2026-07-17	Mississauga	ON	37	37	hourly	2026-07-26 22:33:11.125736
article-49935807	data engineer	2026-07-17	Oshawa	ON	80	92.58	hourly	2026-07-26 22:33:11.125755
article-49935858	data engineer	2026-07-17	Oshawa	ON	80	80	hourly	2026-07-26 22:33:11.125772
article-49935585	data analytics manager	2026-07-17	Ottawa	ON	106000	118000	annually	2026-07-26 22:33:11.12579
article-49935786	software developer	2026-07-17	Toronto	ON	30	30	hourly	2026-07-26 22:33:11.125807
article-49935877	software developer	2026-07-17	Toronto	ON	30	37	hourly	2026-07-26 22:33:11.125823
article-49935838	software developer	2026-07-17	Waterloo	ON	110000	110000	annually	2026-07-26 22:33:11.125841
article-49935707	software developer	2026-07-17	Waterloo	ON	110000	130000	annually	2026-07-26 22:33:11.125862
article-49935501	software developer	2026-07-17	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.12588
article-49935664	software developer	2026-07-17	Calgary	AB	85	100	annually	2026-07-26 22:33:11.125899
article-49935685	software developer	2026-07-17	Mississauga	ON	10000	10000	monthly	2026-07-26 22:33:11.125916
article-49935614	software developer	2026-07-17	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.125932
article-49935872	database developer	2026-07-17	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.125948
article-49918668	operations supervisor	2026-07-16	Nelson	BC	96397.34	96397.34	annually	2026-07-26 22:33:11.125967
article-49918299	data management specialist	2026-07-16	Markham	ON	45	45	hourly	2026-07-26 22:33:11.125982
article-49916755	data quality analyst	2026-07-16	Val-d'Or	QC	33.79	33.79	hourly	2026-07-26 22:33:11.125999
article-49915565	lead data scientist	2026-07-16	Toronto	ON	50	55	hourly	2026-07-26 22:33:11.126016
article-49915549	office supervisor	2026-07-16	Coquitlam	BC	37.32	37.32	hourly	2026-07-26 22:33:11.126032
article-49915530	software developer	2026-07-16	Montréal	QC	37.5	37.5	hourly	2026-07-26 22:33:11.126049
article-49914361	data analytics specialist	2026-07-16	Laval	QC	60000	60000	annually	2026-07-26 22:33:11.126065
article-49913444	software development manager	2026-07-16	Richmond Hill	ON	90000	120000	annually	2026-07-26 22:33:11.126082
article-49913322	information technology (IT) implementation manager	2026-07-16	Montréal	QC	43.75	103.37	hourly	2026-07-26 22:33:11.126098
article-49913489	artificial intelligence (AI) consultant	2026-07-16	Montréal	QC	30	69.74	hourly	2026-07-26 22:33:11.126115
article-49913469	artificial intelligence (AI) consultant	2026-07-16	Edmonton	AB	30	69.74	hourly	2026-07-26 22:33:11.126131
article-49913447	artificial intelligence (AI) consultant	2026-07-16	Calgary	AB	30	69.74	hourly	2026-07-26 22:33:11.126148
article-49935706	data modeler	2026-07-16	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.126164
article-49909602	senior software developer	2026-07-15	Calgary	AB	110000	150000	annually	2026-07-26 22:33:11.126181
article-49909516	office supervisor	2026-07-15	Burnaby	BC	38.4	38.4	hourly	2026-07-26 22:33:11.126198
article-49909261	data engineer	2026-07-15	Mississauga	ON	51	51	hourly	2026-07-26 22:33:11.126214
article-49909258	software developer	2026-07-15	Mississauga	ON	50	50	hourly	2026-07-26 22:33:11.126231
article-49908675	cybersecurity manager	2026-07-15	Saint-Canut	QC	38500	38500	annually	2026-07-26 22:33:11.126248
article-49907034	software engineering manager	2026-07-15	Toronto	ON	125000	165000	annually	2026-07-26 22:33:11.126268
article-49906446	manager, IT (information technology) implementation	2026-07-15	Montréal	QC	43.75	103.37	hourly	2026-07-26 22:33:11.126285
article-49905266	developer, software	2026-07-15	Sherbrooke	QC	114500	167500	annually	2026-07-26 22:33:11.126301
article-49905190	developer, software	2026-07-15	Sherbrooke	QC	166000	205000	annually	2026-07-26 22:33:11.126319
article-49951073	software developer	2026-07-15	Ottawa	ON	78936	78936	annually	2026-07-26 22:33:11.126334
article-49950680	data analytics manager	2026-07-15	Montréal	QC	100	100	hourly	2026-07-26 22:33:11.12635
article-49935966	software developer	2026-07-15	Victoria	BC	140000	140000	annually	2026-07-26 22:33:11.126365
article-49946075	operations supervisor	2026-07-15	Arthur	ON	70000	70000	annually	2026-07-26 22:33:11.12638
article-49946070	operations supervisor	2026-07-15	Arthur	ON	20000	20000	annually	2026-07-26 22:33:11.126395
article-49902616	big data analyst	2026-07-14	Burnaby	BC	60000	70000	annually	2026-07-26 22:33:11.126411
article-49899456	software development manager	2026-07-14	Montréal	QC	43.75	103.37	hourly	2026-07-26 22:33:11.126427
article-49899491	manager, IT (information technology) implementation	2026-07-14	Toronto	ON	43.75	103.37	hourly	2026-07-26 22:33:11.126444
article-49899302	data scientist	2026-07-14	Montréal	QC	30	69.74	hourly	2026-07-26 22:33:11.126466
article-49946204	data architect	2026-07-14	Toronto	ON	80	80	hourly	2026-07-26 22:33:11.126482
article-49946279	software developer	2026-07-14	Mississauga	ON	10000	10000	monthly	2026-07-26 22:33:11.126497
article-49945510	software developer	2026-07-14	Calgary	AB	200	200	daily	2026-07-26 22:33:11.126513
article-49945933	software developer	2026-07-14	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.126528
article-49945606	software developer	2026-07-14	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.126543
article-49945747	software developer	2026-07-14	Calgary	AB	10000	10000	monthly	2026-07-26 22:33:11.126559
article-49946066	software developer	2026-07-14	Toronto	ON	50	50	hourly	2026-07-26 22:33:11.126574
article-49946260	software developer	2026-07-14	Victoria	BC	200	200	daily	2026-07-26 22:33:11.126591
article-49946301	software developer	2026-07-14	Toronto	ON	160000	160000	annually	2026-07-26 22:33:11.126611
article-49896540	cloud developer	2026-07-13	Mississauga	ON	100000	110000	annually	2026-07-26 22:33:11.126628
article-49895829	software development programmer	2026-07-13	Vancouver	BC	55	55	hourly	2026-07-26 22:33:11.126643
article-49895097	DBA (database administrator)	2026-07-13	Montréal	QC	65000	65000	annually	2026-07-26 22:33:11.12666
article-49894711	data analyst - informatics and systems	2026-07-13	Montréal	QC	65000	65000	annually	2026-07-26 22:33:11.126677
article-49894386	software developer	2026-07-13	Oakville	ON	105000	115000	annually	2026-07-26 22:33:11.126694
article-49894148	clerical supervisor	2026-07-13	Sorel	QC	35	35	hourly	2026-07-26 22:33:11.126709
article-49893595	clerical supervisor	2026-07-13	Trois-Rivières	QC	35	35	hourly	2026-07-26 22:33:11.126725
article-49890712	computer projects manager	2026-07-13	Sherbrooke	QC	102500	120000	annually	2026-07-26 22:33:11.126742
article-49945803	data scientist	2026-07-13	Ottawa	ON	80000	80000	annually	2026-07-26 22:33:11.126776
article-49889322	clerical supervisor	2026-07-12	Trois-Rivières	QC	35	35	hourly	2026-07-26 22:33:11.126794
article-49883377	Internet systems administrator	2026-07-11	Sherbrooke	QC	167000	190000	annually	2026-07-26 22:33:11.126812
article-49935602	data engineer	2026-07-11	Toronto	ON	70000	80000	annually	2026-07-26 22:33:11.126827
article-49951451	data engineer	2026-07-11	Toronto	ON	100000	125000	annually	2026-07-26 22:33:11.126843
article-49950491	data engineer	2026-07-11	Montréal	QC	120000	120000	annually	2026-07-26 22:33:11.126859
article-49945908	software developer	2026-07-11	Vancouver	BC	83000	135000	annually	2026-07-26 22:33:11.126875
article-49934520	software developer	2026-07-11	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.12689
article-49934175	software developer	2026-07-11	Toronto	ON	88.54	88.54	hourly	2026-07-26 22:33:11.126905
article-49951265	software developer	2026-07-11	Montréal	QC	65000	115000	annually	2026-07-26 22:33:11.126922
article-49950506	software developer	2026-07-11	Vancouver	BC	60000	100000	annually	2026-07-26 22:33:11.12694
article-49933817	software developer	2026-07-11	Vancouver	BC	70000	90000	annually	2026-07-26 22:33:11.126958
article-49950368	software developer	2026-07-11	Toronto	ON	100000	150000	annually	2026-07-26 22:33:11.126975
article-49935715	software developer	2026-07-11	Mississauga	ON	86129	86129	annually	2026-07-26 22:33:11.126995
article-49945508	software developer	2026-07-11	Ottawa	ON	84698	112931	annually	2026-07-26 22:33:11.127012
article-49951093	software developer	2026-07-11	Laval	QC	60000	60000	annually	2026-07-26 22:33:11.127028
article-49951448	data scientist	2026-07-11	Montréal	QC	120000	120000	annually	2026-07-26 22:33:11.127043
article-49950295	software developer	2026-07-11	Montréal	QC	120000	120000	annually	2026-07-26 22:33:11.127059
article-49960105	office supervisor	2026-07-11	Montréal	QC	36	36	hourly	2026-07-26 22:33:11.127081
article-49881653	manager, IT (information technology) integration	2026-07-10	Surrey	BC	67.31	67.31	hourly	2026-07-26 22:33:11.127099
article-49881388	data entry supervisor	2026-07-10	London	ON	36	38	hourly	2026-07-26 22:33:11.127115
article-49881020	Data Engineer	2026-07-10	Calgary	AB	103798	103798	annually	2026-07-26 22:33:11.127131
article-49880326	systems manager - computer systems	2026-07-10	Hamilton	ON	37	38	hourly	2026-07-26 22:33:11.127149
article-49878767	senior software developer	2026-07-10	London	ON	65000	65000	annually	2026-07-26 22:33:11.127165
article-49878717	data entry supervisor	2026-07-10	London	ON	36.92	36.92	hourly	2026-07-26 22:33:11.127183
article-49878693	data analyst - informatics and systems	2026-07-10	Mississauga	ON	45	45	hourly	2026-07-26 22:33:11.1272
article-49876934	data scientist	2026-07-10	Montréal	QC	30	69.74	hourly	2026-07-26 22:33:11.127217
article-49935833	data engineer	2026-07-10	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.127238
article-49934336	data architect	2026-07-10	Toronto	ON	95.3	95.3	hourly	2026-07-26 22:33:11.127259
article-49951263	software developer	2026-07-10	Montréal	QC	40	44	hourly	2026-07-26 22:33:11.127278
article-49951299	software developer	2026-07-10	Montréal	QC	40	40	hourly	2026-07-26 22:33:11.127294
article-49951509	software developer	2026-07-10	Laval	QC	40	40	hourly	2026-07-26 22:33:11.127311
article-49950913	software developer	2026-07-10	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.127327
article-49950747	software developer	2026-07-10	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.127343
article-49875004	software developer	2026-07-09	Vancouver	BC	96000	100000	annually	2026-07-26 22:33:11.127362
article-49874494	big data analyst	2026-07-09	Toronto	ON	55000	55000	annually	2026-07-26 22:33:11.127379
article-49874310	software programmer	2026-07-09	Vancouver	BC	70000	90000	annually	2026-07-26 22:33:11.127396
article-49872350	computer manager	2026-07-09	Saint-Hyacinthe	QC	129027	151797	annually	2026-07-26 22:33:11.127414
article-49950511	data engineer	2026-07-09	Toronto	ON	110000	110000	annually	2026-07-26 22:33:11.127431
article-49951158	data engineer	2026-07-09	Vancouver	BC	110000	110000	annually	2026-07-26 22:33:11.127448
article-49951515	data engineer	2026-07-09	Toronto	ON	86	86	hourly	2026-07-26 22:33:11.127464
article-49950540	software developer	2026-07-09	Ottawa	ON	80000	80000	annually	2026-07-26 22:33:11.12748
article-49934533	software developer	2026-07-09	Toronto	ON	88.52	88.52	hourly	2026-07-26 22:33:11.127496
article-49933846	software developer	2026-07-09	Toronto	ON	88.54	88.54	hourly	2026-07-26 22:33:11.127511
article-49950724	senior software developer	2026-07-09	Ottawa	ON	100000	100000	annually	2026-07-26 22:33:11.127531
article-49950513	software developer	2026-07-09	Toronto	ON	110000	110000	annually	2026-07-26 22:33:11.127547
article-49951436	software developer	2026-07-09	Victoria	BC	100000	100000	annually	2026-07-26 22:33:11.127564
article-49950708	software developer	2026-07-09	Mississauga	ON	60000	60000	annually	2026-07-26 22:33:11.127582
article-49951129	software developer	2026-07-09	Montréal	QC	77.93	97	hourly	2026-07-26 22:33:11.127599
article-49948565	data analytics manager	2026-07-09	Vancouver	BC	75000	85000	annually	2026-07-26 22:33:11.127616
article-49945949	data scientist	2026-07-09	Toronto	ON	96000	96000	annually	2026-07-26 22:33:11.127634
article-49951269	software developer	2026-07-09	Toronto	ON	130000	130000	annually	2026-07-26 22:33:11.127652
article-49951090	software developer	2026-07-09	Toronto	ON	97000	97000	annually	2026-07-26 22:33:11.127668
article-49945885	data scientist	2026-07-09	Toronto	ON	96000	96000	annually	2026-07-26 22:33:11.127685
article-49951365	software developer	2026-07-09	Surrey	BC	89910	89910	annually	2026-07-26 22:33:11.127702
article-49951154	software developer	2026-07-09	Surrey	BC	119000	119000	annually	2026-07-26 22:33:11.127719
article-49950779	software developer	2026-07-09	Vancouver	BC	75000	75000	annually	2026-07-26 22:33:11.127736
article-49946156	software developer	2026-07-09	Toronto	ON	70000	70000	annually	2026-07-26 22:33:11.127753
article-49950105	software developer	2026-07-09	Montréal	QC	77.93	97	hourly	2026-07-26 22:33:11.12777
article-49951033	software developer	2026-07-09	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.127788
article-49950199	software developer	2026-07-09	Montréal	QC	77.93	97	hourly	2026-07-26 22:33:11.127806
article-49951234	software developer	2026-07-09	Montréal	QC	38.46	38.46	hourly	2026-07-26 22:33:11.127822
article-49935947	software developer	2026-07-09	Toronto	ON	110000	110000	annually	2026-07-26 22:33:11.127846
article-49950609	software developer	2026-07-09	Toronto	ON	90000	90000	annually	2026-07-26 22:33:11.127863
article-49951298	data scientist	2026-07-09	Toronto	ON	120000	120000	annually	2026-07-26 22:33:11.127882
article-49949992	data scientist	2026-07-09	Edmonton	AB	30	69.74	hourly	2026-07-26 22:33:11.127903
article-49867209	office supervisor	2026-07-08	Mississauga	ON	37	37	hourly	2026-07-26 22:33:11.127926
article-49865621	office supervisor	2026-07-08	West Vancouver	BC	38.4	38.4	hourly	2026-07-26 22:33:11.127942
article-49864200	operations supervisor	2026-07-08	Calgary	AB	21.3	21.3	hourly	2026-07-26 22:33:11.127959
article-49863634	data analyst - informatics and systems	2026-07-08	Longueuil	QC	80000	85000	annually	2026-07-26 22:33:11.127977
article-49951521	software developer	2026-07-08	Montréal	QC	10000	10000	monthly	2026-07-26 22:33:11.127994
article-49860536	office supervisor	2026-07-07	Montréal	QC	36	36	hourly	2026-07-26 22:33:11.128011
article-49859521	software developer	2026-07-07	Waterloo	ON	48.35	48.35	hourly	2026-07-26 22:33:11.128028
article-49858710	operations supervisor	2026-07-07	Kitchener	ON	37	37	hourly	2026-07-26 22:33:11.128044
article-49857381	cloud developer	2026-07-07	Mississauga	ON	120000	130000	annually	2026-07-26 22:33:11.128061
article-49857632	information technology (IT) development manager	2026-07-07	North York	ON	100000	100000	\N	2026-07-26 22:33:11.128079
article-49856388	data analyst - informatics and systems	2026-07-07	Stoneham-et-Tewkesbury	QC	40	40	hourly	2026-07-26 22:33:11.128095
article-49934546	software developer	2026-06-29	Toronto	ON	88.54	88.54	hourly	2026-07-26 22:33:11.128116
article-49855476	information technology (IT) director	2026-07-07	Montréal	QC	43.75	103.37	hourly	2026-07-26 22:33:11.128134
article-49935264	software developer	2026-07-07	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.128152
article-49933848	software developer	2026-07-07	Toronto	ON	88.54	88.54	hourly	2026-07-26 22:33:11.12817
article-49853307	information technology (IT) implementation manager	2026-07-06	Victoria	BC	90900.08	90900.08	annually	2026-07-26 22:33:11.128186
article-49853259	director of software engineering	2026-07-06	Edmonton	AB	150000	180000	annually	2026-07-26 22:33:11.128204
article-49852041	information technology (IT) implementation manager	2026-07-06	Delta	BC	43.21	43.21	hourly	2026-07-26 22:33:11.12822
article-49851680	artificial intelligence (AI) consultant	2026-07-06	Québec	QC	60000	800000	annually	2026-07-26 22:33:11.128238
article-49851309	artificial intelligence (AI) consultant	2026-07-06	Sherbrooke	QC	64173	104013	annually	2026-07-26 22:33:11.128257
article-49851145	information technology (IT) service delivery manager	2026-07-06	Markham	ON	68	70	hourly	2026-07-26 22:33:11.128275
article-49933342	software developer	2026-07-06	Toronto	ON	86.9	86.9	hourly	2026-07-26 22:33:11.128291
article-49934748	software developer	2026-07-06	Toronto	ON	88.54	88.54	hourly	2026-07-26 22:33:11.128307
article-49934261	software developer	2026-07-06	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.128323
article-49950484	software developer	2026-07-06	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.128339
article-49950834	software developer	2026-07-06	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.128356
article-49950349	software developer	2026-07-06	Vancouver	BC	103000	103000	annually	2026-07-26 22:33:11.128372
article-49950681	software developer	2026-07-06	St. Marys	ON	55000	95000	annually	2026-07-26 22:33:11.128389
article-49934665	artificial intelligence designer	2026-07-06	Toronto	ON	126.5	126.5	daily	2026-07-26 22:33:11.128407
article-49950449	DBA (database analyst)	2026-07-06	Toronto	ON	10000	10000	monthly	2026-07-26 22:33:11.128423
article-49945777	data engineer	2026-07-04	Toronto	ON	120000	120000	annually	2026-07-26 22:33:11.128439
article-49951300	data scientist	2026-07-04	Toronto	ON	120000	120000	annually	2026-07-26 22:33:11.128461
article-49837194	software development manager	2026-07-03	Vancouver	BC	67.31	67.31	hourly	2026-07-26 22:33:11.128477
article-49836345	records office supervisor	2026-07-03	Edmonton	AB	37.5	37.5	hourly	2026-07-26 22:33:11.1285
article-49835378	database analyst	2026-07-03	Markham	ON	44.47	44.47	hourly	2026-07-26 22:33:11.128516
article-49834193	technical delivery manager - information technology (IT)	2026-07-03	Toronto	ON	200000	210000	annually	2026-07-26 22:33:11.128535
article-49834224	data engineer	2026-07-03	Toronto	ON	140000	190000	annually	2026-07-26 22:33:11.128554
article-49832267	computer projects manager	2026-07-03	Victoriaville	QC	23	29	hourly	2026-07-26 22:33:11.128571
article-49951272	software developer	2026-07-03	Montréal	QC	10000	10000	monthly	2026-07-26 22:33:11.128587
article-49828120	software developer	2026-07-02	Mississauga	ON	53	53	hourly	2026-07-26 22:33:11.128604
article-49827857	computer programs manager	2026-07-02	Montréal	QC	45000	50000	annually	2026-07-26 22:33:11.128626
article-49827015	operations supervisor	2026-07-02	Coaldale	AB	81600	108900	annually	2026-07-26 22:33:11.12865
article-49826051	developer, software	2026-07-02	Sherbrooke	QC	143500	166500	annually	2026-07-26 22:33:11.12867
article-49826050	software development manager	2026-07-02	Sherbrooke	QC	200000	245000	annually	2026-07-26 22:33:11.128687
article-49826048	developer, software	2026-07-02	Sherbrooke	QC	143500	166500	annually	2026-07-26 22:33:11.12871
article-49825866	developer, software	2026-07-02	Sherbrooke	QC	167000	195000	annually	2026-07-26 22:33:11.128728
article-49935939	software developer	2026-07-02	Edmonton	AB	80	90	hourly	2026-07-26 22:33:11.128752
article-49912027	artificial intelligence (AI) consultant	2026-07-02	Calgary	AB	30	69.74	hourly	2026-07-26 22:33:11.128783
article-49911995	manager, IT (information technology) implementation	2026-07-02	Toronto	ON	43.75	103.37	hourly	2026-07-26 22:33:11.128803
article-49911778	manager, IT (information technology) implementation	2026-07-02	Toronto	ON	75000	120000	annually	2026-07-26 22:33:11.12882
article-49824962	developer, software	2026-07-01	Brossard	QC	60000	60000	annually	2026-07-26 22:33:11.128836
article-49953321	data engineer	2026-07-01	Mississauga	ON	60	70	hourly	2026-07-26 22:33:11.128853
article-49826833	operations supervisor	2026-07-01	Ingersoll	ON	26.5	26.5	hourly	2026-07-26 22:33:11.12887
article-49826884	operations supervisor	2026-07-01	London	ON	26.5	26.5	hourly	2026-07-26 22:33:11.128887
article-49827026	operations supervisor	2026-07-01	London	ON	26.5	26.5	hourly	2026-07-26 22:33:11.128903
article-49819457	software developer	2026-06-30	Fergus	ON	49	49	hourly	2026-07-26 22:33:11.128919
article-49816658	director of technology management	2026-06-30	Sherbrooke	QC	110414	134206	annually	2026-07-26 22:33:11.128938
article-49935747	software developer	2026-06-30	Mirabel	QC	105	125000	daily	2026-07-26 22:33:11.128955
article-49814039	administrative supervisor	2026-06-29	Vancouver	BC	40	40	hourly	2026-07-26 22:33:11.128971
article-49813385	computerized information systems manager	2026-06-29	Richmond	BC	72.12	72.12	hourly	2026-07-26 22:33:11.128988
article-49813311	records office supervisor	2026-06-29	Calgary	AB	37.5	37.5	hourly	2026-07-26 22:33:11.129004
article-49811017	data engineer	2026-06-29	Richmond Hill	ON	95000	120000	annually	2026-07-26 22:33:11.129021
article-49809587	computer game developer	2026-06-29	Montréal	QC	46.1	46.1	hourly	2026-07-26 22:33:11.129038
article-49934474	data engineer	2026-06-29	Toronto	ON	80	80	hourly	2026-07-26 22:33:11.129054
article-49934981	data engineer	2026-06-29	Toronto	ON	85.35	85.35	hourly	2026-07-26 22:33:11.129075
article-49935093	software developer	2026-06-29	Toronto	ON	88.52	88.52	hourly	2026-07-26 22:33:11.129091
article-49934561	software developer	2026-06-29	Toronto	ON	88.52	88.52	hourly	2026-07-26 22:33:11.129106
article-49934498	software developer	2026-06-29	Toronto	ON	74.34	74.34	hourly	2026-07-26 22:33:11.129122
article-49935244	software developer	2026-06-29	Toronto	ON	88.54	88.54	hourly	2026-07-26 22:33:11.129138
article-49934925	software developer	2026-06-29	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.129154
article-49934756	software developer	2026-06-29	Toronto	ON	86.9	86.9	hourly	2026-07-26 22:33:11.129168
article-49933935	software developer	2026-06-29	Toronto	ON	86.9	86.9	hourly	2026-07-26 22:33:11.129183
article-49933811	software developer	2026-06-29	Toronto	ON	87.38	87.38	hourly	2026-07-26 22:33:11.129198
article-49934357	software developer	2026-06-29	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.129214
article-49933687	software developer	2026-06-29	Toronto	ON	87.38	87.38	hourly	2026-07-26 22:33:11.129229
article-49934313	software developer	2026-06-29	Toronto	ON	87.38	87.38	hourly	2026-07-26 22:33:11.129245
article-49934386	software developer	2026-06-29	Toronto	ON	87.38	87.38	hourly	2026-07-26 22:33:11.12926
article-49935029	software developer	2026-06-29	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.129276
article-49934426	software developer	2026-06-29	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.129291
article-49934225	software developer	2026-06-29	Toronto	ON	88.63	88.63	hourly	2026-07-26 22:33:11.129307
article-49934421	software developer	2026-06-29	Toronto	ON	73.5	73.5	hourly	2026-07-26 22:33:11.129323
article-49934161	software developer	2026-06-29	Toronto	ON	73.86	73.86	hourly	2026-07-26 22:33:11.12934
article-49934079	software developer	2026-06-29	Toronto	ON	88.54	88.54	hourly	2026-07-26 22:33:11.129355
article-49934959	software developer	2026-06-29	Toronto	ON	59.09	59.09	hourly	2026-07-26 22:33:11.129371
article-49934212	software developer	2026-06-29	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.129387
article-49935066	software developer	2026-06-29	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.129403
article-49934681	software developer	2026-06-29	Toronto	ON	82.07	82.07	hourly	2026-07-26 22:33:11.129418
article-49933911	software developer	2026-06-29	Toronto	ON	73.86	73.86	hourly	2026-07-26 22:33:11.129433
article-49933921	software developer	2026-06-29	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.129448
article-49934860	software developer	2026-06-29	Toronto	ON	90.18	90.18	hourly	2026-07-26 22:33:11.129468
article-49950847	data scientist	2026-06-29	Toronto	ON	100000	115000	hourly	2026-07-26 22:33:11.129484
article-49951444	data scientist	2026-06-29	Toronto	ON	100000	100000	annually	2026-07-26 22:33:11.129501
article-49934935	software developer	2026-06-29	Toronto	ON	80	80	hourly	2026-07-26 22:33:11.129517
article-49934625	software developer	2026-06-29	Toronto	ON	80	80	hourly	2026-07-26 22:33:11.129533
article-49934403	software developer	2026-06-29	Toronto	ON	85	85	hourly	2026-07-26 22:33:11.129549
article-49935187	software developer	2026-06-29	Toronto	ON	39.49	39.49	hourly	2026-07-26 22:33:11.129572
article-49798926	office supervisor	2026-06-26	Richmond	BC	38	38	hourly	2026-07-26 22:33:11.129587
article-49789183	office clerks supervisor	2026-06-25	Montréal	QC	38	38	hourly	2026-07-26 22:33:11.129603
article-49786048	operations supervisor	2026-06-24	Brampton	ON	38	38	hourly	2026-07-26 22:33:11.129618
article-49774401	artificial intelligence programmer	2026-06-23	Montréal	QC	90000	90000	annually	2026-07-26 22:33:11.129636
article-49770987	software developer	2026-06-22	Edmonton	AB	40.87	40.87	hourly	2026-07-26 22:33:11.129651
article-49768822	business data analyst	2026-06-22	North York	ON	80000	80000	annually	2026-07-26 22:33:11.129667
article-49751271	data management specialist	2026-06-19	Laval	QC	28.75	36	hourly	2026-07-26 22:33:11.129684
article-49746009	office supervisor	2026-06-18	Brampton	ON	37	37	hourly	2026-07-26 22:33:11.1297
article-49745041	operations supervisor	2026-06-18	Scarborough	ON	37	37	hourly	2026-07-26 22:33:11.129716
article-49737372	software developer	2026-06-17	Edmonton	AB	41	41	hourly	2026-07-26 22:33:11.129731
article-49736034	data analyst - informatics and systems	2026-06-17	Vancouver, BC	\N	62500	62500	annually	2026-07-26 22:33:11.129749
article-49728035	business systems manager	2026-06-16	Brampton	ON	70	70	hourly	2026-07-26 22:33:11.129765
article-49722257	senior software developer	2026-06-15	Langley	BC	52.5	52.5	hourly	2026-07-26 22:33:11.129781
article-49703954	mobile applications developer	2026-06-12	Montréal	QC	89840	145990	annually	2026-07-26 22:33:11.129798
article-49698717	operations supervisor	2026-06-11	Mission	BC	36.6	36.6	hourly	2026-07-26 22:33:11.129812
article-49682303	supervisor, clinical receptionists	2026-06-09	Toronto	ON	38	38	hourly	2026-07-26 22:33:11.129827
article-49654259	administrative supervisor	2026-06-04	Markham	ON	36	36	hourly	2026-07-26 22:33:11.129843
article-49653450	clerical supervisor	2026-06-04	Kamloops	BC	35.59	35.59	hourly	2026-07-26 22:33:11.129857
article-49651062	office services supervisor	2026-06-04	Saint-Laurent	QC	66600	66600	annually	2026-07-26 22:33:11.129872
article-49641503	clerical supervisor	2026-06-03	Saint-Léonard	QC	36.06	36.06	hourly	2026-07-26 22:33:11.129888
article-49637471	business data analyst	2026-06-02	North York	ON	82810	82810	annually	2026-07-26 22:33:11.129907
article-49625017	software developer	2026-06-01	Montréal	QC	46.15	46.15	hourly	2026-07-26 22:33:11.129923
article-49605027	administrative supervisor	2026-05-28	Edmonton	AB	38	38	hourly	2026-07-26 22:33:11.129937
article-49603935	administrative supervisor	2026-05-28	Montréal	QC	35.88	35.88	hourly	2026-07-26 22:33:11.129952
article-49597789	software developer	2026-05-27	Markham	ON	47.6	47.6	hourly	2026-07-26 22:33:11.129966
article-49589823	administrative supervisor	2026-05-26	Surrey	BC	36	36	hourly	2026-07-26 22:33:11.129979
article-49588804	operations supervisor	2026-05-26	North Bay	ON	31.5	31.5	hourly	2026-07-26 22:33:11.129993
article-49584538	information technology (IT) service delivery manager	2026-05-25	Mississauga	ON	175000	175000	annually	2026-07-26 22:33:11.130013
article-49581094	database analyst	2026-05-25	Aurora	ON	45	47	hourly	2026-07-26 22:33:11.130029
article-49552190	operations supervisor	2026-05-20	Mississauga	ON	36	36	hourly	2026-07-26 22:33:11.130042
article-49553114	business data analyst	2026-05-20	Edmonton	AB	48.1	48.1	hourly	2026-07-26 22:33:11.130058
article-49549988	developer, software	2026-05-20	Montréal	QC	100000	120000	annually	2026-07-26 22:33:11.130075
article-49542885	database analyst	2026-05-19	Edmonton	AB	45.8	45.8	hourly	2026-07-26 22:33:11.130089
article-49541388	data analyst - informatics and systems	2026-05-19	Various locations	\N	135000	140000	annually	2026-07-26 22:33:11.130108
article-49523531	application development director - information technology (IT)	2026-05-15	Calgary	AB	250000	250000	annually	2026-07-26 22:33:11.130125
article-49522430	data analyst - informatics and systems	2026-05-15	Surrey	BC	45	45	hourly	2026-07-26 22:33:11.130138
article-49522399	software developer	2026-05-15	Richmond Hill	ON	48.08	48.08	hourly	2026-07-26 22:33:11.130152
article-49521672	records office supervisor	2026-05-15	Edmonton	AB	36	36	hourly	2026-07-26 22:33:11.13017
article-49513262	data administrator	2026-05-14	Edmonton	AB	46	46	hourly	2026-07-26 22:33:11.130184
article-49507421	operations supervisor	2026-05-13	Vancouver	BC	36.75	36.75	hourly	2026-07-26 22:33:11.130198
article-49505982	office supervisor	2026-05-13	Abbotsford	BC	38	38	hourly	2026-07-26 22:33:11.130212
article-49503496	database analyst (DBA)	2026-05-13	Mississauga	ON	100000	100000	annually	2026-07-26 22:33:11.130229
article-49499475	office supervisor	2026-05-12	Etobicoke	ON	36.25	40	hourly	2026-07-26 22:33:11.130246
article-49498988	software developer	2026-05-12	Thunder Bay, ON	\N	80000	105000	annually	2026-07-26 22:33:11.130264
article-49496632	developer, software	2026-05-12	Various locations	\N	114500	167500	annually	2026-07-26 22:33:11.130283
article-49493571	developer, software	2026-05-12	Montréal	QC	70000	80000	annually	2026-07-26 22:33:11.1303
article-49494807	operations supervisor	2026-05-11	Pitt Meadows	BC	47000	50000	annually	2026-07-26 22:33:11.130315
article-49493822	data administrator	2026-05-11	Mississauga	ON	45	45	hourly	2026-07-26 22:33:11.130331
article-49494186	mobile applications developer	2026-05-09	Mississauga	ON	48.5	48.5	hourly	2026-07-26 22:33:11.130346
article-49478029	data administrator	2026-05-07	Edmonton	AB	46	46	hourly	2026-07-26 22:33:11.130361
article-49477713	data engineer	2026-05-07	Mississauga	ON	77000	77000	annually	2026-07-26 22:33:11.130376
article-49587209	software developer	2026-05-04	Etobicoke	ON	48.08	50	hourly	2026-07-26 22:33:11.130395
article-49405461	software developer	2026-04-27	Toronto	ON	50	50	hourly	2026-07-26 22:33:11.130415
\.


--
-- Name: jobs_cleaned jobs_cleaned_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jobs_cleaned
    ADD CONSTRAINT jobs_cleaned_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict cZMLeP4uYlnnH279zY8obHntCVoiLh6mJim0m5HkCV408SMwZGLc7Z0YPvMyxRQ

