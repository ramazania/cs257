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
-- Name: awards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.awards (
    tournament_id text,
    award_id text,
    award_name text,
    shared integer,
    player_id text,
    last_name text,
    first_name text,
    team_id text
);


--
-- Name: group_standings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.group_standings (
    tournament_id text,
    stage_name text,
    team_name text,
    group_name text,
    "position" integer,
    played integer,
    wins integer,
    draws integer,
    losses integer,
    goals_for integer,
    goals_against integer,
    goal_difference integer,
    points integer
);


--
-- Name: matches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.matches (
    id integer,
    tournament_id text,
    match_name text,
    stage_name text,
    stadium_name text,
    city_name text,
    home_team_name text,
    away_team_name text,
    score text,
    home_team_score text,
    away_team_score text
);


--
-- Name: players; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.players (
    id text,
    firstname text,
    lastname text,
    count_tournaments integer,
    list_tournaments text,
    player_fullname text
);


--
-- Name: qualified_teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.qualified_teams (
    tournament_id text,
    team_id text,
    team_name text
);


--
-- Name: teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teams (
    id text,
    team_name text,
    team_code text
);


--
-- Name: tournament_standings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tournament_standings (
    tournament_id text,
    team_name text,
    tournament_name text,
    "position" integer
);


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
-- Data for Name: awards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.awards (tournament_id, award_id, award_name, shared, player_id, last_name, first_name, team_id) FROM stdin;
WC-1930	A-4	Golden Boot	0	P-04418	Stábile	Guillermo	T-03
WC-1930	A-5	Silver Boot	0	P-00724	Cea	Pedro	T-80
WC-1930	A-6	Bronze Boot	0	P-09215	Patenaude	Bert	T-79
WC-1934	A-4	Golden Boot	0	P-05627	Nejedlý	Oldřich	T-20
WC-1934	A-5	Silver Boot	1	P-03649	Conen	Edmund	T-29
WC-1934	A-5	Silver Boot	1	P-02250	Schiavio	Angelo	T-39
WC-1938	A-4	Golden Boot	0	P-03023	Leônidas	not applicable	T-09
WC-1938	A-5	Silver Boot	1	P-08824	Piola	Silvio	T-39
WC-1938	A-5	Silver Boot	1	P-02366	Sárosi	György	T-34
WC-1938	A-5	Silver Boot	1	P-04466	Zsengellér	Gyula	T-34
WC-1950	A-4	Golden Boot	0	P-04188	Ademir	not applicable	T-09
WC-1950	A-5	Silver Boot	0	P-06216	Míguez	Oscar	T-80
WC-1950	A-6	Bronze Boot	1	P-08187	Basora	Estanislau	T-70
WC-1950	A-6	Bronze Boot	1	P-02577	Chico	not applicable	T-09
WC-1950	A-6	Bronze Boot	1	P-03281	Zarra	Telmo	T-70
WC-1954	A-4	Golden Boot	0	P-07498	Kocsis	Sándor	T-34
WC-1954	A-5	Silver Boot	1	P-05476	Hügi	Josef	T-72
WC-1954	A-5	Silver Boot	1	P-01070	Morlock	Max	T-82
WC-1954	A-5	Silver Boot	1	P-01943	Probst	Erich	T-05
WC-1958	A-4	Golden Boot	0	P-00643	Fontaine	Just	T-28
WC-1958	A-5	Silver Boot	1	P-03795	Pelé	not applicable	T-09
WC-1958	A-5	Silver Boot	1	P-08148	Rahn	Helmut	T-82
WC-1958	A-8	Best Young Player	0	P-03795	Pelé	not applicable	T-09
WC-1962	A-4	Golden Boot	1	P-05509	Albert	Flórián	T-34
WC-1962	A-4	Golden Boot	1	P-04025	Garrincha	not applicable	T-09
WC-1962	A-4	Golden Boot	1	P-03508	Ivanov	Valentin	T-69
WC-1962	A-4	Golden Boot	1	P-00009	Jerković	Dražan	T-83
WC-1962	A-4	Golden Boot	1	P-06737	Sánchez	Leonel	T-13
WC-1962	A-4	Golden Boot	1	P-01219	Vavá	not applicable	T-09
WC-1962	A-8	Best Young Player	0	P-05509	Albert	Flórián	T-34
WC-1966	A-4	Golden Boot	0	P-01633	Eusébio	not applicable	T-56
WC-1966	A-5	Silver Boot	0	P-08039	Haller	Helmut	T-82
WC-1966	A-6	Bronze Boot	1	P-04356	Beckenbauer	Franz	T-82
WC-1966	A-6	Bronze Boot	1	P-02995	Bene	Ferenc	T-34
WC-1966	A-6	Bronze Boot	1	P-03234	Hurst	Geoff	T-27
WC-1966	A-6	Bronze Boot	1	P-06927	Porkujan	Valeriy	T-69
WC-1966	A-8	Best Young Player	0	P-04356	Beckenbauer	Franz	T-82
WC-1970	A-4	Golden Boot	0	P-02483	Müller	Gerd	T-82
WC-1970	A-5	Silver Boot	0	P-07877	Jairzinho	not applicable	T-09
WC-1970	A-6	Bronze Boot	0	P-01348	Cubillas	Teófilo	T-54
WC-1970	A-8	Best Young Player	0	P-01348	Cubillas	Teófilo	T-54
WC-1974	A-4	Golden Boot	0	P-07200	Lato	Grzegorz	T-55
WC-1974	A-5	Silver Boot	1	P-07695	Neeskens	Johan	T-46
WC-1974	A-5	Silver Boot	1	P-00830	Szarmach	Andrzej	T-55
WC-1974	A-8	Best Young Player	0	P-02284	Żmuda	Władysław	T-55
WC-1978	A-1	Golden Ball	0	P-07202	Kempes	Mario	T-03
WC-1978	A-2	Silver Ball	0	P-08703	Rossi	Paolo	T-39
WC-1978	A-3	Bronze Ball	0	P-02014	Dirceu	not applicable	T-09
WC-1978	A-4	Golden Boot	0	P-07202	Kempes	Mario	T-03
WC-1978	A-5	Silver Boot	0	P-01348	Cubillas	Teófilo	T-54
WC-1978	A-6	Bronze Boot	0	P-07325	Rensenbrink	Rob	T-46
WC-1978	A-8	Best Young Player	0	P-05548	Cabrini	Antonio	T-39
WC-1982	A-1	Golden Ball	0	P-08703	Rossi	Paolo	T-39
WC-1982	A-2	Silver Ball	0	P-05820	Falcão	not applicable	T-09
WC-1982	A-3	Bronze Ball	0	P-08975	Rummenigge	Karl-Heinz	T-82
WC-1982	A-4	Golden Boot	0	P-08703	Rossi	Paolo	T-39
WC-1982	A-5	Silver Boot	0	P-08975	Rummenigge	Karl-Heinz	T-82
WC-1982	A-6	Bronze Boot	0	P-03653	Zico	not applicable	T-09
WC-1982	A-8	Best Young Player	0	P-09137	Amoros	Manuel	T-28
WC-1986	A-1	Golden Ball	0	P-06516	Maradona	Diego	T-03
WC-1986	A-2	Silver Ball	0	P-03585	Schumacher	Harald	T-82
WC-1986	A-3	Bronze Ball	0	P-06503	Elkjær	Preben	T-21
WC-1986	A-4	Golden Boot	0	P-02777	Lineker	Gary	T-27
WC-1986	A-5	Silver Boot	1	P-07608	Butragueño	Emilio	T-70
WC-1986	A-5	Silver Boot	1	P-08699	Careca	not applicable	T-09
WC-1986	A-5	Silver Boot	1	P-06516	Maradona	Diego	T-03
WC-1986	A-8	Best Young Player	0	P-00872	Scifo	Enzo	T-06
WC-1990	A-1	Golden Ball	0	P-04373	Schillaci	Salvatore	T-39
WC-1990	A-2	Silver Ball	0	P-01993	Matthäus	Lothar	T-82
WC-1990	A-3	Bronze Ball	0	P-06516	Maradona	Diego	T-03
WC-1990	A-4	Golden Boot	0	P-04373	Schillaci	Salvatore	T-39
WC-1990	A-5	Silver Boot	0	P-03413	Skuhravý	Tomáš	T-20
WC-1990	A-6	Bronze Boot	1	P-02777	Lineker	Gary	T-27
WC-1990	A-6	Bronze Boot	1	P-00994	Milla	Roger	T-11
WC-1990	A-8	Best Young Player	0	P-07639	Prosinečki	Robert	T-83
WC-1994	A-1	Golden Ball	0	P-07489	Romário	not applicable	T-09
WC-1994	A-2	Silver Ball	0	P-09078	Baggio	Roberto	T-39
WC-1994	A-3	Bronze Ball	0	P-06855	Stoichkov	Hristo	T-10
WC-1994	A-4	Golden Boot	1	P-07023	Salenko	Oleg	T-59
WC-1994	A-4	Golden Boot	1	P-06855	Stoichkov	Hristo	T-10
WC-1994	A-6	Bronze Boot	1	P-08602	Andersson	Kennet	T-71
WC-1994	A-6	Bronze Boot	1	P-07489	Romário	not applicable	T-09
WC-1994	A-7	Golden Glove	0	P-09628	Preud'homme	Michel	T-06
WC-1994	A-8	Best Young Player	0	P-08704	Overmars	Marc	T-46
WC-1998	A-1	Golden Ball	0	P-04601	Ronaldo	not applicable	T-09
WC-1998	A-2	Silver Ball	0	P-04705	Šuker	Davor	T-17
WC-1998	A-3	Bronze Ball	0	P-01770	Thuram	Lilian	T-28
WC-1998	A-4	Golden Boot	0	P-04705	Šuker	Davor	T-17
WC-1998	A-5	Silver Boot	1	P-05392	Batistuta	Gabriel	T-03
WC-1998	A-5	Silver Boot	1	P-04765	Vieri	Christian	T-39
WC-1998	A-7	Golden Glove	0	P-06099	Barthez	Fabien	T-28
WC-1998	A-8	Best Young Player	0	P-07705	Owen	Michael	T-27
WC-2002	A-1	Golden Ball	0	P-04412	Kahn	Oliver	T-29
WC-2002	A-2	Silver Ball	0	P-04601	Ronaldo	not applicable	T-09
WC-2002	A-3	Bronze Ball	0	P-04298	Hong	Myung-bo	T-68
WC-2002	A-4	Golden Boot	0	P-04601	Ronaldo	not applicable	T-09
WC-2002	A-5	Silver Boot	1	P-05239	Klose	Miroslav	T-29
WC-2002	A-5	Silver Boot	1	P-00008	Rivaldo	not applicable	T-09
WC-2002	A-7	Golden Glove	0	P-04412	Kahn	Oliver	T-29
WC-2002	A-8	Best Young Player	0	P-06818	Donovan	Landon	T-79
WC-2006	A-1	Golden Ball	0	P-03582	Zidane	Zinedine	T-28
WC-2006	A-2	Silver Ball	0	P-08617	Cannavaro	Fabio	T-39
WC-2006	A-3	Bronze Ball	0	P-09247	Pirlo	Andrea	T-39
WC-2006	A-4	Golden Boot	0	P-05239	Klose	Miroslav	T-29
WC-2006	A-5	Silver Boot	0	P-07013	Crespo	Hernán	T-03
WC-2006	A-6	Bronze Boot	0	P-04601	Ronaldo	not applicable	T-09
WC-2006	A-7	Golden Glove	0	P-00132	Buffon	Gianluigi	T-39
WC-2006	A-8	Best Young Player	0	P-07597	Podolski	Lukas	T-29
WC-2010	A-1	Golden Ball	0	P-01628	Forlán	Diego	T-80
WC-2010	A-2	Silver Ball	0	P-06373	Sneijder	Wesley	T-46
WC-2010	A-3	Bronze Ball	0	P-04291	Villa	David	T-70
WC-2010	A-4	Golden Boot	0	P-00904	Müller	Thomas	T-29
WC-2010	A-5	Silver Boot	0	P-04291	Villa	David	T-70
WC-2010	A-6	Bronze Boot	0	P-06373	Sneijder	Wesley	T-46
WC-2010	A-7	Golden Glove	0	P-06875	Casillas	Iker	T-70
WC-2010	A-8	Best Young Player	0	P-00904	Müller	Thomas	T-29
WC-2014	A-1	Golden Ball	0	P-06410	Messi	Lionel	T-03
WC-2014	A-2	Silver Ball	0	P-00904	Müller	Thomas	T-29
WC-2014	A-3	Bronze Ball	0	P-06098	Robben	Arjen	T-46
WC-2014	A-4	Golden Boot	0	P-03676	Rodríguez	James	T-15
WC-2014	A-5	Silver Boot	0	P-00904	Müller	Thomas	T-29
WC-2014	A-6	Bronze Boot	0	P-01576	Neymar	not applicable	T-09
WC-2014	A-7	Golden Glove	0	P-06554	Neuer	Manuel	T-29
WC-2014	A-8	Best Young Player	0	P-06083	Pogba	Paul	T-28
WC-2018	A-1	Golden Ball	0	P-03056	Modrić	Luka	T-17
WC-2018	A-2	Silver Ball	0	P-04214	Hazard	Eden	T-06
WC-2018	A-3	Bronze Ball	0	P-06140	Griezmann	Antoine	T-28
WC-2018	A-4	Golden Boot	0	P-08448	Kane	Harry	T-27
WC-2018	A-5	Silver Boot	0	P-06140	Griezmann	Antoine	T-28
WC-2018	A-6	Bronze Boot	0	P-02175	Lukaku	Romelu	T-06
WC-2018	A-7	Golden Glove	0	P-05665	Courtois	Thibaut	T-06
WC-2018	A-8	Best Young Player	0	P-02842	Mbappé	Kylian	T-28
\.


--
-- Data for Name: group_standings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.group_standings (tournament_id, stage_name, team_name, group_name, "position", played, wins, draws, losses, goals_for, goals_against, goal_difference, points) FROM stdin;
WC-1930	group stage	Argentina	Group 1	1	3	3	0	0	10	4	6	6
WC-1930	group stage	Chile	Group 1	2	3	2	0	1	5	3	2	4
WC-1930	group stage	France	Group 1	3	3	1	0	2	4	3	1	2
WC-1930	group stage	Mexico	Group 1	4	3	0	0	3	4	13	-9	0
WC-1930	group stage	Yugoslavia	Group 2	1	2	2	0	0	6	1	5	4
WC-1930	group stage	Brazil	Group 2	2	2	1	0	1	5	2	3	2
WC-1930	group stage	Bolivia	Group 2	3	2	0	0	2	0	8	-8	0
WC-1930	group stage	Uruguay	Group 3	1	2	2	0	0	5	0	5	4
WC-1930	group stage	Romania	Group 3	2	2	1	0	1	3	5	-2	2
WC-1930	group stage	Peru	Group 3	3	2	0	0	2	1	4	-3	0
WC-1930	group stage	United States	Group 4	1	2	2	0	0	6	0	6	4
WC-1930	group stage	Paraguay	Group 4	2	2	1	0	1	1	3	-2	2
WC-1930	group stage	Belgium	Group 4	3	2	0	0	2	0	4	-4	0
WC-1950	first round	Brazil	Group 1	1	3	2	1	0	8	2	6	5
WC-1950	first round	Yugoslavia	Group 1	2	3	2	0	1	7	3	4	4
WC-1950	first round	Switzerland	Group 1	3	3	1	1	1	4	6	-2	3
WC-1950	first round	Mexico	Group 1	4	3	0	0	3	2	10	-8	0
WC-1950	first round	Spain	Group 2	1	3	3	0	0	6	1	5	6
WC-1950	first round	England	Group 2	2	3	1	0	2	2	2	0	2
WC-1950	first round	Chile	Group 2	3	3	1	0	2	5	6	-1	2
WC-1950	first round	United States	Group 2	4	3	1	0	2	4	8	-4	2
WC-1950	first round	Sweden	Group 3	1	2	1	1	0	5	4	1	3
WC-1950	first round	Italy	Group 3	2	2	1	0	1	4	3	1	2
WC-1950	first round	Paraguay	Group 3	3	2	0	1	1	2	4	-2	1
WC-1950	first round	Uruguay	Group 4	1	1	1	0	0	8	0	8	2
WC-1950	first round	Bolivia	Group 4	2	1	0	0	1	0	8	-8	0
WC-1950	final round	Uruguay	Group 1	1	3	2	1	0	7	5	2	5
WC-1950	final round	Brazil	Group 1	2	3	2	0	1	14	4	10	4
WC-1950	final round	Sweden	Group 1	3	3	1	0	2	6	11	-5	2
WC-1950	final round	Spain	Group 1	4	3	0	1	2	4	11	-7	1
WC-1954	group stage	Brazil	Group 1	1	2	1	1	0	6	1	5	3
WC-1954	group stage	Yugoslavia	Group 1	2	2	1	1	0	2	1	1	3
WC-1954	group stage	France	Group 1	3	2	1	0	1	3	3	0	2
WC-1954	group stage	Mexico	Group 1	4	2	0	0	2	2	8	-6	0
WC-1954	group stage	Hungary	Group 2	1	2	2	0	0	17	3	14	4
WC-1954	group stage	West Germany	Group 2	2	2	1	0	1	7	9	-2	2
WC-1954	group stage	Turkey	Group 2	3	2	1	0	1	8	4	4	2
WC-1954	group stage	South Korea	Group 2	4	2	0	0	2	0	16	-16	0
WC-1954	group stage	Uruguay	Group 3	1	2	2	0	0	9	0	9	4
WC-1954	group stage	Austria	Group 3	2	2	2	0	0	6	0	6	4
WC-1954	group stage	Czechoslovakia	Group 3	3	2	0	0	2	0	7	-7	0
WC-1954	group stage	Scotland	Group 3	4	2	0	0	2	0	8	-8	0
WC-1954	group stage	England	Group 4	1	2	1	1	0	6	4	2	3
WC-1954	group stage	Switzerland	Group 4	2	2	1	0	1	2	3	-1	2
WC-1954	group stage	Italy	Group 4	3	2	1	0	1	5	3	2	2
WC-1954	group stage	Belgium	Group 4	4	2	0	1	1	5	8	-3	1
WC-1958	group stage	West Germany	Group 1	1	3	1	2	0	7	5	2	4
WC-1958	group stage	Northern Ireland	Group 1	2	3	1	1	1	4	5	-1	3
WC-1958	group stage	Czechoslovakia	Group 1	3	3	1	1	1	8	4	4	3
WC-1958	group stage	Argentina	Group 1	4	3	1	0	2	5	10	-5	2
WC-1958	group stage	France	Group 2	1	3	2	0	1	11	7	4	4
WC-1958	group stage	Yugoslavia	Group 2	2	3	1	2	0	7	6	1	4
WC-1958	group stage	Paraguay	Group 2	3	3	1	1	1	9	12	-3	3
WC-1958	group stage	Scotland	Group 2	4	3	0	1	2	4	6	-2	1
WC-1958	group stage	Sweden	Group 3	1	3	2	1	0	5	1	4	5
WC-1958	group stage	Wales	Group 3	2	3	0	3	0	2	2	0	3
WC-1958	group stage	Hungary	Group 3	3	3	1	1	1	6	3	3	3
WC-1958	group stage	Mexico	Group 3	4	3	0	1	2	1	8	-7	1
WC-1958	group stage	Brazil	Group 4	1	3	2	1	0	5	0	5	5
WC-1958	group stage	Soviet Union	Group 4	2	3	1	1	1	4	4	0	3
WC-1958	group stage	England	Group 4	3	3	0	3	0	4	4	0	3
WC-1958	group stage	Austria	Group 4	4	3	0	1	2	2	7	-5	1
WC-1962	group stage	Soviet Union	Group 1	1	3	2	1	0	8	5	3	5
WC-1962	group stage	Yugoslavia	Group 1	2	3	2	0	1	8	3	5	4
WC-1962	group stage	Uruguay	Group 1	3	3	1	0	2	4	6	-2	2
WC-1962	group stage	Colombia	Group 1	4	3	0	1	2	5	11	-6	1
WC-1962	group stage	West Germany	Group 2	1	3	2	1	0	4	1	3	5
WC-1962	group stage	Chile	Group 2	2	3	2	0	1	5	3	2	4
WC-1962	group stage	Italy	Group 2	3	3	1	1	1	3	2	1	3
WC-1962	group stage	Switzerland	Group 2	4	3	0	0	3	2	8	-6	0
WC-1962	group stage	Brazil	Group 3	1	3	2	1	0	4	1	3	5
WC-1962	group stage	Czechoslovakia	Group 3	2	3	1	1	1	2	3	-1	3
WC-1962	group stage	Mexico	Group 3	3	3	1	0	2	3	4	-1	2
WC-1962	group stage	Spain	Group 3	4	3	1	0	2	2	3	-1	2
WC-1962	group stage	Hungary	Group 4	1	3	2	1	0	8	2	6	5
WC-1962	group stage	England	Group 4	2	3	1	1	1	4	3	1	3
WC-1962	group stage	Argentina	Group 4	3	3	1	1	1	2	3	-1	3
WC-1962	group stage	Bulgaria	Group 4	4	3	0	1	2	1	7	-6	1
WC-1966	group stage	England	Group 1	1	3	2	1	0	4	0	4	5
WC-1966	group stage	Uruguay	Group 1	2	3	1	2	0	2	1	1	4
WC-1966	group stage	Mexico	Group 1	3	3	0	2	1	1	3	-2	2
WC-1966	group stage	France	Group 1	4	3	0	1	2	2	5	-3	1
WC-1966	group stage	West Germany	Group 2	1	3	2	1	0	7	1	6	5
WC-1966	group stage	Argentina	Group 2	2	3	2	1	0	4	1	3	5
WC-1966	group stage	Spain	Group 2	3	3	1	0	2	4	5	-1	2
WC-1966	group stage	Switzerland	Group 2	4	3	0	0	3	1	9	-8	0
WC-1966	group stage	Portugal	Group 3	1	3	3	0	0	9	2	7	6
WC-1966	group stage	Hungary	Group 3	2	3	2	0	1	7	5	2	4
WC-1966	group stage	Brazil	Group 3	3	3	1	0	2	4	6	-2	2
WC-1966	group stage	Bulgaria	Group 3	4	3	0	0	3	1	8	-7	0
WC-1966	group stage	Soviet Union	Group 4	1	3	3	0	0	6	1	5	6
WC-1966	group stage	North Korea	Group 4	2	3	1	1	1	2	4	-2	3
WC-1966	group stage	Italy	Group 4	3	3	1	0	2	2	2	0	2
WC-1966	group stage	Chile	Group 4	4	3	0	1	2	2	5	-3	1
WC-1970	group stage	Soviet Union	Group 1	1	3	2	1	0	6	1	5	5
WC-1970	group stage	Mexico	Group 1	2	3	2	1	0	5	0	5	5
WC-1970	group stage	Belgium	Group 1	3	3	1	0	2	4	5	-1	2
WC-1970	group stage	El Salvador	Group 1	4	3	0	0	3	0	9	-9	0
WC-1970	group stage	Italy	Group 2	1	3	1	2	0	1	0	1	4
WC-1970	group stage	Uruguay	Group 2	2	3	1	1	1	2	1	1	3
WC-1970	group stage	Sweden	Group 2	3	3	1	1	1	2	2	0	3
WC-1970	group stage	Israel	Group 2	4	3	0	2	1	1	3	-2	2
WC-1970	group stage	Brazil	Group 3	1	3	3	0	0	8	3	5	6
WC-1970	group stage	England	Group 3	2	3	2	0	1	2	1	1	4
WC-1970	group stage	Romania	Group 3	3	3	1	0	2	4	5	-1	2
WC-1970	group stage	Czechoslovakia	Group 3	4	3	0	0	3	2	7	-5	0
WC-1970	group stage	West Germany	Group 4	1	3	3	0	0	10	4	6	6
WC-1970	group stage	Peru	Group 4	2	3	2	0	1	7	5	2	4
WC-1970	group stage	Bulgaria	Group 4	3	3	0	1	2	5	9	-4	1
WC-1970	group stage	Morocco	Group 4	4	3	0	1	2	2	6	-4	1
WC-1974	first group stage	East Germany	Group 1	1	3	2	1	0	4	1	3	5
WC-1974	first group stage	West Germany	Group 1	2	3	2	0	1	4	1	3	4
WC-1974	first group stage	Chile	Group 1	3	3	0	2	1	1	2	-1	2
WC-1974	first group stage	Australia	Group 1	4	3	0	1	2	0	5	-5	1
WC-1974	first group stage	Yugoslavia	Group 2	1	3	1	2	0	10	1	9	4
WC-1974	first group stage	Brazil	Group 2	2	3	1	2	0	3	0	3	4
WC-1974	first group stage	Scotland	Group 2	3	3	1	2	0	3	1	2	4
WC-1974	first group stage	Zaire	Group 2	4	3	0	0	3	0	14	-14	0
WC-1974	first group stage	Netherlands	Group 3	1	3	2	1	0	6	1	5	5
WC-1974	first group stage	Sweden	Group 3	2	3	1	2	0	3	0	3	4
WC-1974	first group stage	Bulgaria	Group 3	3	3	0	2	1	2	5	-3	2
WC-1974	first group stage	Uruguay	Group 3	4	3	0	1	2	1	6	-5	1
WC-1974	first group stage	Poland	Group 4	1	3	3	0	0	12	3	9	6
WC-1974	first group stage	Argentina	Group 4	2	3	1	1	1	7	5	2	3
WC-1974	first group stage	Italy	Group 4	3	3	1	1	1	5	4	1	3
WC-1974	first group stage	Haiti	Group 4	4	3	0	0	3	2	14	-12	0
WC-1974	second group stage	Netherlands	Group A	1	3	3	0	0	8	0	8	6
WC-1974	second group stage	Brazil	Group A	2	3	2	0	1	3	3	0	4
WC-1974	second group stage	East Germany	Group A	3	3	0	1	2	1	4	-3	1
WC-1974	second group stage	Argentina	Group A	4	3	0	1	2	2	7	-5	1
WC-1974	second group stage	West Germany	Group B	1	3	3	0	0	7	2	5	6
WC-1974	second group stage	Poland	Group B	2	3	2	0	1	3	2	1	4
WC-1974	second group stage	Sweden	Group B	3	3	1	0	2	4	6	-2	2
WC-1974	second group stage	Yugoslavia	Group B	4	3	0	0	3	2	6	-4	0
WC-1978	first group stage	Italy	Group 1	1	3	3	0	0	6	2	4	6
WC-1978	first group stage	Argentina	Group 1	2	3	2	0	1	4	3	1	4
WC-1978	first group stage	France	Group 1	3	3	1	0	2	5	5	0	2
WC-1978	first group stage	Hungary	Group 1	4	3	0	0	3	3	8	-5	0
WC-1978	first group stage	Poland	Group 2	1	3	2	1	0	4	1	3	5
WC-1978	first group stage	West Germany	Group 2	2	3	1	2	0	6	0	6	4
WC-1978	first group stage	Tunisia	Group 2	3	3	1	1	1	3	2	1	3
WC-1978	first group stage	Mexico	Group 2	4	3	0	0	3	2	12	-10	0
WC-1978	first group stage	Austria	Group 3	1	3	2	0	1	3	2	1	4
WC-1978	first group stage	Brazil	Group 3	2	3	1	2	0	2	1	1	4
WC-1978	first group stage	Spain	Group 3	3	3	1	1	1	2	2	0	3
WC-1978	first group stage	Sweden	Group 3	4	3	0	1	2	1	3	-2	1
WC-1978	first group stage	Peru	Group 4	1	3	2	1	0	7	2	5	5
WC-1978	first group stage	Netherlands	Group 4	2	3	1	1	1	5	3	2	3
WC-1978	first group stage	Scotland	Group 4	3	3	1	1	1	5	6	-1	3
WC-1978	first group stage	Iran	Group 4	4	3	0	1	2	2	8	-6	1
WC-1978	second group stage	Netherlands	Group A	1	3	2	1	0	9	4	5	5
WC-1978	second group stage	Italy	Group A	2	3	1	1	1	2	2	0	3
WC-1978	second group stage	West Germany	Group A	3	3	0	2	1	4	5	-1	2
WC-1978	second group stage	Austria	Group A	4	3	1	0	2	4	8	-4	2
WC-1978	second group stage	Argentina	Group B	1	3	2	1	0	8	0	8	5
WC-1978	second group stage	Brazil	Group B	2	3	2	1	0	6	1	5	5
WC-1978	second group stage	Poland	Group B	3	3	1	0	2	2	5	-3	2
WC-1978	second group stage	Peru	Group B	4	3	0	0	3	0	10	-10	0
WC-1982	first group stage	Poland	Group 1	1	3	1	2	0	5	1	4	4
WC-1982	first group stage	Italy	Group 1	2	3	0	3	0	2	2	0	3
WC-1982	first group stage	Cameroon	Group 1	3	3	0	3	0	1	1	0	3
WC-1982	first group stage	Peru	Group 1	4	3	0	2	1	2	6	-4	2
WC-1982	first group stage	West Germany	Group 2	1	3	2	0	1	6	3	3	4
WC-1982	first group stage	Austria	Group 2	2	3	2	0	1	3	1	2	4
WC-1982	first group stage	Algeria	Group 2	3	3	2	0	1	5	5	0	4
WC-1982	first group stage	Chile	Group 2	4	3	0	0	3	3	8	-5	0
WC-1982	first group stage	Belgium	Group 3	1	3	2	1	0	3	1	2	5
WC-1982	first group stage	Argentina	Group 3	2	3	2	0	1	6	2	4	4
WC-1982	first group stage	Hungary	Group 3	3	3	1	1	1	12	6	6	3
WC-1982	first group stage	El Salvador	Group 3	4	3	0	0	3	1	13	-12	0
WC-1982	first group stage	England	Group 4	1	3	3	0	0	6	1	5	6
WC-1982	first group stage	France	Group 4	2	3	1	1	1	6	5	1	3
WC-1982	first group stage	Czechoslovakia	Group 4	3	3	0	2	1	2	4	-2	2
WC-1982	first group stage	Kuwait	Group 4	4	3	0	1	2	2	6	-4	1
WC-1982	first group stage	Northern Ireland	Group 5	1	3	1	2	0	2	1	1	4
WC-1982	first group stage	Spain	Group 5	2	3	1	1	1	3	3	0	3
WC-1982	first group stage	Yugoslavia	Group 5	3	3	1	1	1	2	2	0	3
WC-1982	first group stage	Honduras	Group 5	4	3	0	2	1	2	3	-1	2
WC-1982	first group stage	Brazil	Group 6	1	3	3	0	0	10	2	8	6
WC-1982	first group stage	Soviet Union	Group 6	2	3	1	1	1	6	4	2	3
WC-1982	first group stage	Scotland	Group 6	3	3	1	1	1	8	8	0	3
WC-1982	first group stage	New Zealand	Group 6	4	3	0	0	3	2	12	-10	0
WC-1982	second group stage	Poland	Group A	1	2	1	1	0	3	0	3	3
WC-1982	second group stage	Soviet Union	Group A	2	2	1	1	0	1	0	1	3
WC-1982	second group stage	Belgium	Group A	3	2	0	0	2	0	4	-4	0
WC-1982	second group stage	West Germany	Group B	1	2	1	1	0	2	1	1	3
WC-1982	second group stage	England	Group B	2	2	0	2	0	0	0	0	2
WC-1982	second group stage	Spain	Group B	3	2	0	1	1	1	2	-1	1
WC-1982	second group stage	Italy	Group C	1	2	2	0	0	5	3	2	4
WC-1982	second group stage	Brazil	Group C	2	2	1	0	1	5	4	1	2
WC-1982	second group stage	Argentina	Group C	3	2	0	0	2	2	5	-3	0
WC-1982	second group stage	France	Group D	1	2	2	0	0	5	1	4	4
WC-1982	second group stage	Austria	Group D	2	2	0	1	1	2	3	-1	1
WC-1982	second group stage	Northern Ireland	Group D	3	2	0	1	1	3	6	-3	1
WC-1986	group stage	Argentina	Group A	1	3	2	1	0	6	2	4	5
WC-1986	group stage	Italy	Group A	2	3	1	2	0	5	4	1	4
WC-1986	group stage	Bulgaria	Group A	3	3	0	2	1	2	4	-2	2
WC-1986	group stage	South Korea	Group A	4	3	0	1	2	4	7	-3	1
WC-1986	group stage	Mexico	Group B	1	3	2	1	0	4	2	2	5
WC-1986	group stage	Paraguay	Group B	2	3	1	2	0	4	3	1	4
WC-1986	group stage	Belgium	Group B	3	3	1	1	1	5	5	0	3
WC-1986	group stage	Iraq	Group B	4	3	0	0	3	1	4	-3	0
WC-1986	group stage	Soviet Union	Group C	1	3	2	1	0	9	1	8	5
WC-1986	group stage	France	Group C	2	3	2	1	0	5	1	4	5
WC-1986	group stage	Hungary	Group C	3	3	1	0	2	2	9	-7	2
WC-1986	group stage	Canada	Group C	4	3	0	0	3	0	5	-5	0
WC-1986	group stage	Brazil	Group D	1	3	3	0	0	5	0	5	6
WC-1986	group stage	Spain	Group D	2	3	2	0	1	5	2	3	4
WC-1986	group stage	Northern Ireland	Group D	3	3	0	1	2	2	6	-4	1
WC-1986	group stage	Algeria	Group D	4	3	0	1	2	1	5	-4	1
WC-1986	group stage	Denmark	Group E	1	3	3	0	0	9	1	8	6
WC-1986	group stage	West Germany	Group E	2	3	1	1	1	3	4	-1	3
WC-1986	group stage	Uruguay	Group E	3	3	0	2	1	2	7	-5	2
WC-1986	group stage	Scotland	Group E	4	3	0	1	2	1	3	-2	1
WC-1986	group stage	Morocco	Group F	1	3	1	2	0	3	1	2	4
WC-1986	group stage	England	Group F	2	3	1	1	1	3	1	2	3
WC-1986	group stage	Poland	Group F	3	3	1	1	1	1	3	-2	3
WC-1986	group stage	Portugal	Group F	4	3	1	0	2	2	4	-2	2
WC-1990	group stage	Italy	Group A	1	3	3	0	0	4	0	4	6
WC-1990	group stage	Czechoslovakia	Group A	2	3	2	0	1	6	3	3	4
WC-1990	group stage	Austria	Group A	3	3	1	0	2	2	3	-1	2
WC-1990	group stage	United States	Group A	4	3	0	0	3	2	8	-6	0
WC-1990	group stage	Cameroon	Group B	1	3	2	0	1	3	5	-2	4
WC-1990	group stage	Romania	Group B	2	3	1	1	1	4	3	1	3
WC-1990	group stage	Argentina	Group B	3	3	1	1	1	3	2	1	3
WC-1990	group stage	Soviet Union	Group B	4	3	1	0	2	4	4	0	2
WC-1990	group stage	Brazil	Group C	1	3	3	0	0	4	1	3	6
WC-1990	group stage	Costa Rica	Group C	2	3	2	0	1	3	2	1	4
WC-1990	group stage	Scotland	Group C	3	3	1	0	2	2	3	-1	2
WC-1990	group stage	Sweden	Group C	4	3	0	0	3	3	6	-3	0
WC-1990	group stage	West Germany	Group D	1	3	2	1	0	10	3	7	5
WC-1990	group stage	Yugoslavia	Group D	2	3	2	0	1	6	5	1	4
WC-1990	group stage	Colombia	Group D	3	3	1	1	1	3	2	1	3
WC-1990	group stage	United Arab Emirates	Group D	4	3	0	0	3	2	11	-9	0
WC-1990	group stage	Spain	Group E	1	3	2	1	0	5	2	3	5
WC-1990	group stage	Belgium	Group E	2	3	2	0	1	6	3	3	4
WC-1990	group stage	Uruguay	Group E	3	3	1	1	1	2	3	-1	3
WC-1990	group stage	South Korea	Group E	4	3	0	0	3	1	6	-5	0
WC-1990	group stage	England	Group F	1	3	1	2	0	2	1	1	4
WC-1990	group stage	Republic of Ireland	Group F	2	3	0	3	0	2	2	0	3
WC-1990	group stage	Netherlands	Group F	3	3	0	3	0	2	2	0	3
WC-1990	group stage	Egypt	Group F	4	3	0	2	1	1	2	-1	2
WC-1994	group stage	Romania	Group A	1	3	2	0	1	5	5	0	6
WC-1994	group stage	Switzerland	Group A	2	3	1	1	1	5	4	1	4
WC-1994	group stage	United States	Group A	3	3	1	1	1	3	3	0	4
WC-1994	group stage	Colombia	Group A	4	3	1	0	2	4	5	-1	3
WC-1994	group stage	Brazil	Group B	1	3	2	1	0	6	1	5	7
WC-1994	group stage	Sweden	Group B	2	3	1	2	0	6	4	2	5
WC-1994	group stage	Russia	Group B	3	3	1	0	2	7	6	1	3
WC-1994	group stage	Cameroon	Group B	4	3	0	1	2	3	11	-8	1
WC-1994	group stage	Germany	Group C	1	3	2	1	0	5	3	2	7
WC-1994	group stage	Spain	Group C	2	3	1	2	0	6	4	2	5
WC-1994	group stage	South Korea	Group C	3	3	0	2	1	4	5	-1	2
WC-1994	group stage	Bolivia	Group C	4	3	0	1	2	1	4	-3	1
WC-1994	group stage	Nigeria	Group D	1	3	2	0	1	6	2	4	6
WC-1994	group stage	Bulgaria	Group D	2	3	2	0	1	6	3	3	6
WC-1994	group stage	Argentina	Group D	3	3	2	0	1	6	3	3	6
WC-1994	group stage	Greece	Group D	4	3	0	0	3	0	10	-10	0
WC-1994	group stage	Mexico	Group E	1	3	1	1	1	3	3	0	4
WC-1994	group stage	Republic of Ireland	Group E	2	3	1	1	1	2	2	0	4
WC-1994	group stage	Italy	Group E	3	3	1	1	1	2	2	0	4
WC-1994	group stage	Norway	Group E	4	3	1	1	1	1	1	0	4
WC-1994	group stage	Netherlands	Group F	1	3	2	0	1	4	3	1	6
WC-1994	group stage	Saudi Arabia	Group F	2	3	2	0	1	4	3	1	6
WC-1994	group stage	Belgium	Group F	3	3	2	0	1	2	1	1	6
WC-1994	group stage	Morocco	Group F	4	3	0	0	3	2	5	-3	0
WC-1998	group stage	Brazil	Group A	1	3	2	0	1	6	3	3	6
WC-1998	group stage	Norway	Group A	2	3	1	2	0	5	4	1	5
WC-1998	group stage	Morocco	Group A	3	3	1	1	1	5	5	0	4
WC-1998	group stage	Scotland	Group A	4	3	0	1	2	2	6	-4	1
WC-1998	group stage	Italy	Group B	1	3	2	1	0	7	3	4	7
WC-1998	group stage	Chile	Group B	2	3	0	3	0	4	4	0	3
WC-1998	group stage	Austria	Group B	3	3	0	2	1	3	4	-1	2
WC-1998	group stage	Cameroon	Group B	4	3	0	2	1	2	5	-3	2
WC-1998	group stage	France	Group C	1	3	3	0	0	9	1	8	9
WC-1998	group stage	Denmark	Group C	2	3	1	1	1	3	3	0	4
WC-1998	group stage	South Africa	Group C	3	3	0	2	1	3	6	-3	2
WC-1998	group stage	Saudi Arabia	Group C	4	3	0	1	2	2	7	-5	1
WC-1998	group stage	Nigeria	Group D	1	3	2	0	1	5	5	0	6
WC-1998	group stage	Paraguay	Group D	2	3	1	2	0	3	1	2	5
WC-1998	group stage	Spain	Group D	3	3	1	1	1	8	4	4	4
WC-1998	group stage	Bulgaria	Group D	4	3	0	1	2	1	7	-6	1
WC-1998	group stage	Netherlands	Group E	1	3	1	2	0	7	2	5	5
WC-1998	group stage	Mexico	Group E	2	3	1	2	0	7	5	2	5
WC-1998	group stage	Belgium	Group E	3	3	0	3	0	3	3	0	3
WC-1998	group stage	South Korea	Group E	4	3	0	1	2	2	9	-7	1
WC-1998	group stage	Germany	Group F	1	3	2	1	0	6	2	4	7
WC-1998	group stage	Yugoslavia	Group F	2	3	2	1	0	4	2	2	7
WC-1998	group stage	Iran	Group F	3	3	1	0	2	2	4	-2	3
WC-1998	group stage	United States	Group F	4	3	0	0	3	1	5	-4	0
WC-1998	group stage	Romania	Group G	1	3	2	1	0	4	2	2	7
WC-1998	group stage	England	Group G	2	3	2	0	1	5	2	3	6
WC-1998	group stage	Colombia	Group G	3	3	1	0	2	1	3	-2	3
WC-1998	group stage	Tunisia	Group G	4	3	0	1	2	1	4	-3	1
WC-1998	group stage	Argentina	Group H	1	3	3	0	0	7	0	7	9
WC-1998	group stage	Croatia	Group H	2	3	2	0	1	4	2	2	6
WC-1998	group stage	Jamaica	Group H	3	3	1	0	2	3	9	-6	3
WC-1998	group stage	Japan	Group H	4	3	0	0	3	1	4	-3	0
WC-2002	group stage	Denmark	Group A	1	3	2	1	0	5	2	3	7
WC-2002	group stage	Senegal	Group A	2	3	1	2	0	5	4	1	5
WC-2002	group stage	Uruguay	Group A	3	3	0	2	1	4	5	-1	2
WC-2002	group stage	France	Group A	4	3	0	1	2	0	3	-3	1
WC-2002	group stage	Spain	Group B	1	3	3	0	0	9	4	5	9
WC-2002	group stage	Paraguay	Group B	2	3	1	1	1	6	6	0	4
WC-2002	group stage	South Africa	Group B	3	3	1	1	1	5	5	0	4
WC-2002	group stage	Slovenia	Group B	4	3	0	0	3	2	7	-5	0
WC-2002	group stage	Brazil	Group C	1	3	3	0	0	11	3	8	9
WC-2002	group stage	Turkey	Group C	2	3	1	1	1	5	3	2	4
WC-2002	group stage	Costa Rica	Group C	3	3	1	1	1	5	6	-1	4
WC-2002	group stage	China	Group C	4	3	0	0	3	0	9	-9	0
WC-2002	group stage	South Korea	Group D	1	3	2	1	0	4	1	3	7
WC-2002	group stage	United States	Group D	2	3	1	1	1	5	6	-1	4
WC-2002	group stage	Portugal	Group D	3	3	1	0	2	6	4	2	3
WC-2002	group stage	Poland	Group D	4	3	1	0	2	3	7	-4	3
WC-2002	group stage	Germany	Group E	1	3	2	1	0	11	1	10	7
WC-2002	group stage	Republic of Ireland	Group E	2	3	1	2	0	5	2	3	5
WC-2002	group stage	Cameroon	Group E	3	3	1	1	1	2	3	-1	4
WC-2002	group stage	Saudi Arabia	Group E	4	3	0	0	3	0	12	-12	0
WC-2002	group stage	Sweden	Group F	1	3	1	2	0	4	3	1	5
WC-2002	group stage	England	Group F	2	3	1	2	0	2	1	1	5
WC-2002	group stage	Argentina	Group F	3	3	1	1	1	2	2	0	4
WC-2002	group stage	Nigeria	Group F	4	3	0	1	2	1	3	-2	1
WC-2002	group stage	Mexico	Group G	1	3	2	1	0	4	2	2	7
WC-2002	group stage	Italy	Group G	2	3	1	1	1	4	3	1	4
WC-2002	group stage	Croatia	Group G	3	3	1	0	2	2	3	-1	3
WC-2002	group stage	Ecuador	Group G	4	3	1	0	2	2	4	-2	3
WC-2002	group stage	Japan	Group H	1	3	2	1	0	5	2	3	7
WC-2002	group stage	Belgium	Group H	2	3	1	2	0	6	5	1	5
WC-2002	group stage	Russia	Group H	3	3	1	0	2	4	4	0	3
WC-2002	group stage	Tunisia	Group H	4	3	0	1	2	1	5	-4	1
WC-2006	group stage	Germany	Group A	1	3	3	0	0	8	2	6	9
WC-2006	group stage	Ecuador	Group A	2	3	2	0	1	5	3	2	6
WC-2006	group stage	Poland	Group A	3	3	1	0	2	2	4	-2	3
WC-2006	group stage	Costa Rica	Group A	4	3	0	0	3	3	9	-6	0
WC-2006	group stage	England	Group B	1	3	2	1	0	5	2	3	7
WC-2006	group stage	Sweden	Group B	2	3	1	2	0	3	2	1	5
WC-2006	group stage	Paraguay	Group B	3	3	1	0	2	2	2	0	3
WC-2006	group stage	Trinidad and Tobago	Group B	4	3	0	1	2	0	4	-4	1
WC-2006	group stage	Argentina	Group C	1	3	2	1	0	8	1	7	7
WC-2006	group stage	Netherlands	Group C	2	3	2	1	0	3	1	2	7
WC-2006	group stage	Ivory Coast	Group C	3	3	1	0	2	5	6	-1	3
WC-2006	group stage	Serbia and Montenegro	Group C	4	3	0	0	3	2	10	-8	0
WC-2006	group stage	Portugal	Group D	1	3	3	0	0	5	1	4	9
WC-2006	group stage	Mexico	Group D	2	3	1	1	1	4	3	1	4
WC-2006	group stage	Angola	Group D	3	3	0	2	1	1	2	-1	2
WC-2006	group stage	Iran	Group D	4	3	0	1	2	2	6	-4	1
WC-2006	group stage	Italy	Group E	1	3	2	1	0	5	1	4	7
WC-2006	group stage	Ghana	Group E	2	3	2	0	1	4	3	1	6
WC-2006	group stage	Czech Republic	Group E	3	3	1	0	2	3	4	-1	3
WC-2006	group stage	United States	Group E	4	3	0	1	2	2	6	-4	1
WC-2006	group stage	Brazil	Group F	1	3	3	0	0	7	1	6	9
WC-2006	group stage	Australia	Group F	2	3	1	1	1	5	5	0	4
WC-2006	group stage	Croatia	Group F	3	3	0	2	1	2	3	-1	2
WC-2006	group stage	Japan	Group F	4	3	0	1	2	2	7	-5	1
WC-2006	group stage	Switzerland	Group G	1	3	2	1	0	4	0	4	7
WC-2006	group stage	France	Group G	2	3	1	2	0	3	1	2	5
WC-2006	group stage	South Korea	Group G	3	3	1	1	1	3	4	-1	4
WC-2006	group stage	Togo	Group G	4	3	0	0	3	1	6	-5	0
WC-2006	group stage	Spain	Group H	1	3	3	0	0	8	1	7	9
WC-2006	group stage	Ukraine	Group H	2	3	2	0	1	5	4	1	6
WC-2006	group stage	Tunisia	Group H	3	3	0	1	2	3	6	-3	1
WC-2006	group stage	Saudi Arabia	Group H	4	3	0	1	2	2	7	-5	1
WC-2010	group stage	Uruguay	Group A	1	3	2	1	0	4	0	4	7
WC-2010	group stage	Mexico	Group A	2	3	1	1	1	3	2	1	4
WC-2010	group stage	South Africa	Group A	3	3	1	1	1	3	5	-2	4
WC-2010	group stage	France	Group A	4	3	0	1	2	1	4	-3	1
WC-2010	group stage	Argentina	Group B	1	3	3	0	0	7	1	6	9
WC-2010	group stage	South Korea	Group B	2	3	1	1	1	5	6	-1	4
WC-2010	group stage	Greece	Group B	3	3	1	0	2	2	5	-3	3
WC-2010	group stage	Nigeria	Group B	4	3	0	1	2	3	5	-2	1
WC-2010	group stage	United States	Group C	1	3	1	2	0	4	3	1	5
WC-2010	group stage	England	Group C	2	3	1	2	0	2	1	1	5
WC-2010	group stage	Slovenia	Group C	3	3	1	1	1	3	3	0	4
WC-2010	group stage	Algeria	Group C	4	3	0	1	2	0	2	-2	1
WC-2010	group stage	Germany	Group D	1	3	2	0	1	5	1	4	6
WC-2010	group stage	Ghana	Group D	2	3	1	1	1	2	2	0	4
WC-2010	group stage	Australia	Group D	3	3	1	1	1	3	6	-3	4
WC-2010	group stage	Serbia	Group D	4	3	1	0	2	2	3	-1	3
WC-2010	group stage	Netherlands	Group E	1	3	3	0	0	5	1	4	9
WC-2010	group stage	Japan	Group E	2	3	2	0	1	4	2	2	6
WC-2010	group stage	Denmark	Group E	3	3	1	0	2	3	6	-3	3
WC-2010	group stage	Cameroon	Group E	4	3	0	0	3	2	5	-3	0
WC-2010	group stage	Paraguay	Group F	1	3	1	2	0	3	1	2	5
WC-2010	group stage	Slovakia	Group F	2	3	1	1	1	4	5	-1	4
WC-2010	group stage	New Zealand	Group F	3	3	0	3	0	2	2	0	3
WC-2010	group stage	Italy	Group F	4	3	0	2	1	4	5	-1	2
WC-2010	group stage	Brazil	Group G	1	3	2	1	0	5	2	3	7
WC-2010	group stage	Portugal	Group G	2	3	1	2	0	7	0	7	5
WC-2010	group stage	Ivory Coast	Group G	3	3	1	1	1	4	3	1	4
WC-2010	group stage	North Korea	Group G	4	3	0	0	3	1	12	-11	0
WC-2010	group stage	Spain	Group H	1	3	2	0	1	4	2	2	6
WC-2010	group stage	Chile	Group H	2	3	2	0	1	3	2	1	6
WC-2010	group stage	Switzerland	Group H	3	3	1	1	1	1	1	0	4
WC-2010	group stage	Honduras	Group H	4	3	0	1	2	0	3	-3	1
WC-2014	group stage	Brazil	Group A	1	3	2	1	0	7	2	5	7
WC-2014	group stage	Mexico	Group A	2	3	2	1	0	4	1	3	7
WC-2014	group stage	Croatia	Group A	3	3	1	0	2	6	6	0	3
WC-2014	group stage	Cameroon	Group A	4	3	0	0	3	1	9	-8	0
WC-2014	group stage	Netherlands	Group B	1	3	3	0	0	10	3	7	9
WC-2014	group stage	Chile	Group B	2	3	2	0	1	5	3	2	6
WC-2014	group stage	Spain	Group B	3	3	1	0	2	4	7	-3	3
WC-2014	group stage	Australia	Group B	4	3	0	0	3	3	9	-6	0
WC-2014	group stage	Colombia	Group C	1	3	3	0	0	9	2	7	9
WC-2014	group stage	Greece	Group C	2	3	1	1	1	2	4	-2	4
WC-2014	group stage	Ivory Coast	Group C	3	3	1	0	2	4	5	-1	3
WC-2014	group stage	Japan	Group C	4	3	0	1	2	2	6	-4	1
WC-2014	group stage	Costa Rica	Group D	1	3	2	1	0	4	1	3	7
WC-2014	group stage	Uruguay	Group D	2	3	2	0	1	4	4	0	6
WC-2014	group stage	Italy	Group D	3	3	1	0	2	2	3	-1	3
WC-2014	group stage	England	Group D	4	3	0	1	2	2	4	-2	1
WC-2014	group stage	France	Group E	1	3	2	1	0	8	2	6	7
WC-2014	group stage	Switzerland	Group E	2	3	2	0	1	7	6	1	6
WC-2014	group stage	Ecuador	Group E	3	3	1	1	1	3	3	0	4
WC-2014	group stage	Honduras	Group E	4	3	0	0	3	1	8	-7	0
WC-2014	group stage	Argentina	Group F	1	3	3	0	0	6	3	3	9
WC-2014	group stage	Nigeria	Group F	2	3	1	1	1	3	3	0	4
WC-2014	group stage	Bosnia and Herzegovina	Group F	3	3	1	0	2	4	4	0	3
WC-2014	group stage	Iran	Group F	4	3	0	1	2	1	4	-3	1
WC-2014	group stage	Germany	Group G	1	3	2	1	0	7	2	5	7
WC-2014	group stage	United States	Group G	2	3	1	1	1	4	4	0	4
WC-2014	group stage	Portugal	Group G	3	3	1	1	1	4	7	-3	4
WC-2014	group stage	Ghana	Group G	4	3	0	1	2	4	6	-2	1
WC-2014	group stage	Belgium	Group H	1	3	3	0	0	4	1	3	9
WC-2014	group stage	Algeria	Group H	2	3	1	1	1	6	5	1	4
WC-2014	group stage	Russia	Group H	3	3	0	2	1	2	3	-1	2
WC-2014	group stage	South Korea	Group H	4	3	0	1	2	3	6	-3	1
WC-2018	group stage	Uruguay	Group A	1	3	3	0	0	5	0	5	9
WC-2018	group stage	Russia	Group A	2	3	2	0	1	8	4	4	6
WC-2018	group stage	Saudi Arabia	Group A	3	3	1	0	2	2	7	-5	3
WC-2018	group stage	Egypt	Group A	4	3	0	0	3	2	6	-4	0
WC-2018	group stage	Spain	Group B	1	3	1	2	0	6	5	1	5
WC-2018	group stage	Portugal	Group B	2	3	1	2	0	5	4	1	5
WC-2018	group stage	Iran	Group B	3	3	1	1	1	2	2	0	4
WC-2018	group stage	Morocco	Group B	4	3	0	1	2	2	4	-2	1
WC-2018	group stage	France	Group C	1	3	2	1	0	3	1	2	7
WC-2018	group stage	Denmark	Group C	2	3	1	2	0	2	1	1	5
WC-2018	group stage	Peru	Group C	3	3	1	0	2	2	2	0	3
WC-2018	group stage	Australia	Group C	4	3	0	1	2	2	5	-3	1
WC-2018	group stage	Croatia	Group D	1	3	3	0	0	7	1	6	9
WC-2018	group stage	Argentina	Group D	2	3	1	1	1	3	5	-2	4
WC-2018	group stage	Nigeria	Group D	3	3	1	0	2	3	4	-1	3
WC-2018	group stage	Iceland	Group D	4	3	0	1	2	2	5	-3	1
WC-2018	group stage	Brazil	Group E	1	3	2	1	0	5	1	4	7
WC-2018	group stage	Switzerland	Group E	2	3	1	2	0	5	4	1	5
WC-2018	group stage	Serbia	Group E	3	3	1	0	2	2	4	-2	3
WC-2018	group stage	Costa Rica	Group E	4	3	0	1	2	2	5	-3	1
WC-2018	group stage	Sweden	Group F	1	3	2	0	1	5	2	3	6
WC-2018	group stage	Mexico	Group F	2	3	2	0	1	3	4	-1	6
WC-2018	group stage	South Korea	Group F	3	3	1	0	2	3	3	0	3
WC-2018	group stage	Germany	Group F	4	3	1	0	2	2	4	-2	3
WC-2018	group stage	Belgium	Group G	1	3	3	0	0	9	2	7	9
WC-2018	group stage	England	Group G	2	3	2	0	1	8	3	5	6
WC-2018	group stage	Tunisia	Group G	3	3	1	0	2	5	8	-3	3
WC-2018	group stage	Panama	Group G	4	3	0	0	3	2	11	-9	0
WC-2018	group stage	Colombia	Group H	1	3	2	0	1	5	2	3	6
WC-2018	group stage	Japan	Group H	2	3	1	1	1	4	4	0	4
WC-2018	group stage	Senegal	Group H	3	3	1	1	1	4	4	0	4
WC-2018	group stage	Poland	Group H	4	3	1	0	2	2	5	-3	3
\.


--
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.matches (id, tournament_id, match_name, stage_name, stadium_name, city_name, home_team_name, away_team_name, score, home_team_score, away_team_score) FROM stdin;
1	WC-1930	France v Mexico	group stage	Estadio Pocitos	Montevideo	France	T-44	MEX	4–1	4
2	WC-1930	United States v Belgium	group stage	Estadio Gran Parque Central	Montevideo	United States	T-06	BEL	3–0	3
3	WC-1930	Yugoslavia v Brazil	group stage	Estadio Gran Parque Central	Montevideo	Yugoslavia	T-09	BRA	2–1	2
4	WC-1930	Romania v Peru	group stage	Estadio Pocitos	Montevideo	Romania	T-54	PER	3–1	3
5	WC-1930	Argentina v France	group stage	Estadio Gran Parque Central	Montevideo	Argentina	T-28	FRA	1–0	1
6	WC-1930	Chile v Mexico	group stage	Estadio Gran Parque Central	Montevideo	Chile	T-44	MEX	3–0	3
7	WC-1930	Yugoslavia v Bolivia	group stage	Estadio Gran Parque Central	Montevideo	Yugoslavia	T-07	BOL	4–0	4
8	WC-1930	United States v Paraguay	group stage	Estadio Gran Parque Central	Montevideo	United States	T-53	PRY	3–0	3
9	WC-1930	Uruguay v Peru	group stage	Estadio Centenario	Montevideo	Uruguay	T-54	PER	1–0	1
10	WC-1930	Chile v France	group stage	Estadio Centenario	Montevideo	Chile	T-28	FRA	1–0	1
11	WC-1930	Argentina v Mexico	group stage	Estadio Centenario	Montevideo	Argentina	T-44	MEX	6–3	6
12	WC-1930	Brazil v Bolivia	group stage	Estadio Centenario	Montevideo	Brazil	T-07	BOL	4–0	4
13	WC-1930	Paraguay v Belgium	group stage	Estadio Centenario	Montevideo	Paraguay	T-06	BEL	1–0	1
14	WC-1930	Uruguay v Romania	group stage	Estadio Centenario	Montevideo	Uruguay	T-58	ROU	4–0	4
15	WC-1930	Argentina v Chile	group stage	Estadio Centenario	Montevideo	Argentina	T-13	CHL	3–1	3
16	WC-1930	Argentina v United States	semi-finals	Estadio Centenario	Montevideo	Argentina	T-79	USA	6–1	6
17	WC-1930	Uruguay v Yugoslavia	semi-finals	Estadio Centenario	Montevideo	Uruguay	T-83	YUG	6–1	6
18	WC-1930	Uruguay v Argentina	final	Estadio Centenario	Montevideo	Uruguay	T-03	ARG	4–2	4
19	WC-1934	Austria v France	round of 16	Stadio Benito Mussolini	Turin	Austria	T-28	FRA	3–2	3
20	WC-1934	Czechoslovakia v Romania	round of 16	Stadio Littorio	Trieste	Czechoslovakia	T-58	ROU	2–1	2
21	WC-1934	Germany v Belgium	round of 16	Stadio Giovanni Berta	Florence	Germany	T-06	BEL	5–2	5
22	WC-1934	Hungary v Egypt	round of 16	Stadio Giorgio Ascarelli	Naples	Hungary	T-25	EGY	4–2	4
23	WC-1934	Italy v United States	round of 16	Stadio Nazionale PNF	Rome	Italy	T-79	USA	7–1	7
24	WC-1934	Spain v Brazil	round of 16	Stadio Luigi Ferraris	Genoa	Spain	T-09	BRA	3–1	3
25	WC-1934	Sweden v Argentina	round of 16	Stadio Renato Dall'Ara	Bologna	Sweden	T-03	ARG	3–2	3
26	WC-1934	Switzerland v Netherlands	round of 16	San Siro	Milan	Switzerland	T-46	NLD	3–2	3
27	WC-1934	Austria v Hungary	quarter-finals	Stadio Renato Dall'Ara	Bologna	Austria	T-34	HUN	2–1	2
28	WC-1934	Czechoslovakia v Switzerland	quarter-finals	Stadio Benito Mussolini	Turin	Czechoslovakia	T-72	CHE	3–2	3
29	WC-1934	Germany v Sweden	quarter-finals	San Siro	Milan	Germany	T-71	SWE	2–1	2
30	WC-1934	Italy v Spain	quarter-finals	Stadio Giovanni Berta	Florence	Italy	T-70	ESP	1–1	1
31	WC-1934	Italy v Spain	quarter-finals	Stadio Giovanni Berta	Florence	Italy	T-70	ESP	1–0	1
32	WC-1934	Czechoslovakia v Germany	semi-finals	Stadio Nazionale PNF	Rome	Czechoslovakia	T-29	DEU	3–1	3
33	WC-1934	Italy v Austria	semi-finals	San Siro	Milan	Italy	T-05	AUT	1–0	1
34	WC-1934	Germany v Austria	third-place match	Stadio Giorgio Ascarelli	Naples	Germany	T-05	AUT	3–2	3
35	WC-1934	Italy v Czechoslovakia	final	Stadio Nazionale PNF	Rome	Italy	T-20	CSK	2–1	2
36	WC-1938	Switzerland v Germany	round of 16	Parc des Princes	Paris	Switzerland	T-29	DEU	1–1	1
37	WC-1938	Cuba v Romania	round of 16	Stade du T.O.E.C.	Toulouse	Cuba	T-58	ROU	3–3	3
38	WC-1938	France v Belgium	round of 16	Stade Olympique de Colombes	Paris	France	T-06	BEL	3–1	3
39	WC-1938	Hungary v Dutch East Indies	round of 16	Vélodrome Municipal	Reims	Hungary	T-22	IDN	6–0	6
40	WC-1938	Italy v Norway	round of 16	Stade Vélodrome	Marseille	Italy	T-51	NOR	2–1	2
41	WC-1938	Brazil v Poland	round of 16	Stade de la Meinau	Strasbourg	Brazil	T-55	POL	6–5	6
42	WC-1938	Czechoslovakia v Netherlands	round of 16	Stade Jules Deschaseaux	Le Havre	Czechoslovakia	T-46	NLD	3–0	3
43	WC-1938	Cuba v Romania	round of 16	Stade du T.O.E.C.	Toulouse	Cuba	T-58	ROU	2–1	2
44	WC-1938	Switzerland v Germany	round of 16	Parc des Princes	Paris	Switzerland	T-29	DEU	4–2	4
45	WC-1938	Brazil v Czechoslovakia	quarter-finals	Stade du Parc Lescure	Bordeaux	Brazil	T-20	CSK	1–1	1
46	WC-1938	Hungary v Switzerland	quarter-finals	Stade Victor Boucquey	Lille	Hungary	T-72	CHE	2–0	2
47	WC-1938	Italy v France	quarter-finals	Stade Olympique de Colombes	Paris	Italy	T-28	FRA	3–1	3
48	WC-1938	Sweden v Cuba	quarter-finals	Stade du Fort Carré	Antibes	Sweden	T-18	CUB	8–0	8
49	WC-1938	Brazil v Czechoslovakia	quarter-finals	Stade du Parc Lescure	Bordeaux	Brazil	T-20	CSK	2–1	2
50	WC-1938	Hungary v Sweden	semi-finals	Parc des Princes	Paris	Hungary	T-71	SWE	5–1	5
51	WC-1938	Italy v Brazil	semi-finals	Stade Vélodrome	Marseille	Italy	T-09	BRA	2–1	2
52	WC-1938	Brazil v Sweden	third-place match	Stade du Parc Lescure	Bordeaux	Brazil	T-71	SWE	4–2	4
53	WC-1938	Italy v Hungary	final	Stade Olympique de Colombes	Paris	Italy	T-34	HUN	4–2	4
54	WC-1950	Brazil v Mexico	group stage	Estádio do Maracanã	Rio de Janeiro	Brazil	T-44	MEX	4–0	4
55	WC-1950	Yugoslavia v Switzerland	group stage	Estádio Independência	Belo Horizonte	Yugoslavia	T-72	CHE	3–0	3
56	WC-1950	England v Chile	group stage	Estádio do Maracanã	Rio de Janeiro	England	T-13	CHL	2–0	2
57	WC-1950	Spain v United States	group stage	Estádio Vila Capanema	Curitiba	Spain	T-79	USA	3–1	3
58	WC-1950	Sweden v Italy	group stage	Estádio do Pacaembu	São Paulo	Sweden	T-39	ITA	3–2	3
59	WC-1950	Brazil v Switzerland	group stage	Estádio do Pacaembu	São Paulo	Brazil	T-72	CHE	2–2	2
60	WC-1950	Yugoslavia v Mexico	group stage	Estádio dos Eucaliptos	Porto Alegre	Yugoslavia	T-44	MEX	4–1	4
61	WC-1950	Spain v Chile	group stage	Estádio do Maracanã	Rio de Janeiro	Spain	T-13	CHL	2–0	2
62	WC-1950	United States v England	group stage	Estádio Independência	Belo Horizonte	United States	T-27	ENG	1–0	1
63	WC-1950	Sweden v Paraguay	group stage	Estádio Vila Capanema	Curitiba	Sweden	T-53	PRY	2–2	2
64	WC-1950	Brazil v Yugoslavia	group stage	Estádio do Maracanã	Rio de Janeiro	Brazil	T-83	YUG	2–0	2
65	WC-1950	Chile v United States	group stage	Estádio Ilha do Retiro	Recife	Chile	T-79	USA	5–2	5
66	WC-1950	Spain v England	group stage	Estádio do Maracanã	Rio de Janeiro	Spain	T-27	ENG	1–0	1
67	WC-1950	Italy v Paraguay	group stage	Estádio do Pacaembu	São Paulo	Italy	T-53	PRY	2–0	2
68	WC-1950	Uruguay v Bolivia	group stage	Estádio Independência	Belo Horizonte	Uruguay	T-07	BOL	8–0	8
69	WC-1950	Switzerland v Mexico	group stage	Estádio dos Eucaliptos	Porto Alegre	Switzerland	T-44	MEX	2–1	2
70	WC-1950	Brazil v Sweden	final round	Estádio do Maracanã	Rio de Janeiro	Brazil	T-71	SWE	7–1	7
71	WC-1950	Uruguay v Spain	final round	Estádio do Pacaembu	São Paulo	Uruguay	T-70	ESP	2–2	2
72	WC-1950	Brazil v Spain	final round	Estádio do Maracanã	Rio de Janeiro	Brazil	T-70	ESP	6–1	6
73	WC-1950	Uruguay v Sweden	final round	Estádio do Pacaembu	São Paulo	Uruguay	T-71	SWE	3–2	3
74	WC-1950	Sweden v Spain	final round	Estádio do Pacaembu	São Paulo	Sweden	T-70	ESP	3–1	3
75	WC-1950	Uruguay v Brazil	final round	Estádio do Maracanã	Rio de Janeiro	Uruguay	T-09	BRA	2–1	2
76	WC-1954	Brazil v Mexico	group stage	Charmilles Stadium	Geneva	Brazil	T-44	MEX	5–0	5
77	WC-1954	Yugoslavia v France	group stage	Stade Olympique de la Pontaise	Lausanne	Yugoslavia	T-28	FRA	1–0	1
78	WC-1954	Austria v Scotland	group stage	Hardturm Stadium	Zürich	Austria	T-61	SCO	1–0	1
79	WC-1954	Uruguay v Czechoslovakia	group stage	Wankdorf Stadium	Bern	Uruguay	T-20	CSK	2–0	2
80	WC-1954	Switzerland v Italy	group stage	Stade Olympique de la Pontaise	Lausanne	Switzerland	T-39	ITA	2–1	2
81	WC-1954	Hungary v South Korea	group stage	Hardturm Stadium	Zürich	Hungary	T-68	KOR	9–0	9
82	WC-1954	West Germany v Turkey	group stage	Wankdorf Stadium	Bern	West Germany	T-76	TUR	4–1	4
83	WC-1954	England v Belgium	group stage	St. Jakob Stadium	Basel	England	T-06	BEL	4–4	4
84	WC-1954	Uruguay v Scotland	group stage	St. Jakob Stadium	Basel	Uruguay	T-61	SCO	7–0	7
85	WC-1954	Brazil v Yugoslavia	group stage	Stade Olympique de la Pontaise	Lausanne	Brazil	T-83	YUG	1–1	1
86	WC-1954	Austria v Czechoslovakia	group stage	Hardturm Stadium	Zürich	Austria	T-20	CSK	5–0	5
87	WC-1954	France v Mexico	group stage	Charmilles Stadium	Geneva	France	T-44	MEX	3–2	3
88	WC-1954	Hungary v West Germany	group stage	St. Jakob Stadium	Basel	Hungary	T-82	DEU	8–3	8
89	WC-1954	Turkey v South Korea	group stage	Charmilles Stadium	Geneva	Turkey	T-68	KOR	7–0	7
90	WC-1954	Italy v Belgium	group stage	Cornaredo Stadium	Lugano	Italy	T-06	BEL	4–1	4
91	WC-1954	England v Switzerland	group stage	Wankdorf Stadium	Bern	England	T-72	CHE	2–0	2
92	WC-1954	West Germany v Turkey	group stage	Hardturm Stadium	Zürich	West Germany	T-76	TUR	7–2	7
93	WC-1954	Switzerland v Italy	group stage	St. Jakob Stadium	Basel	Switzerland	T-39	ITA	4–1	4
94	WC-1954	Austria v Switzerland	quarter-finals	Stade Olympique de la Pontaise	Lausanne	Austria	T-72	CHE	7–5	7
95	WC-1954	Uruguay v England	quarter-finals	St. Jakob Stadium	Basel	Uruguay	T-27	ENG	4–2	4
96	WC-1954	Hungary v Brazil	quarter-finals	Wankdorf Stadium	Bern	Hungary	T-09	BRA	4–2	4
97	WC-1954	West Germany v Yugoslavia	quarter-finals	Charmilles Stadium	Geneva	West Germany	T-83	YUG	2–0	2
98	WC-1954	Hungary v Uruguay	semi-finals	Stade Olympique de la Pontaise	Lausanne	Hungary	T-80	URY	4–2	4
99	WC-1954	West Germany v Austria	semi-finals	St. Jakob Stadium	Basel	West Germany	T-05	AUT	6–1	6
100	WC-1954	Austria v Uruguay	third-place match	Hardturm Stadium	Zürich	Austria	T-80	URY	3–1	3
101	WC-1954	West Germany v Hungary	final	Wankdorf Stadium	Bern	West Germany	T-34	HUN	3–2	3
102	WC-1958	Sweden v Mexico	group stage	Råsunda Stadium	Solna	Sweden	T-44	MEX	3–0	3
103	WC-1958	Argentina v West Germany	group stage	Malmö Stadion	Malmö	Argentina	T-82	DEU	1–3	1
104	WC-1958	Northern Ireland v Czechoslovakia	group stage	Örjans Vall	Halmstad	Northern Ireland	T-20	CSK	1–0	1
105	WC-1958	France v Paraguay	group stage	Idrottsparken	Norrköping	France	T-53	PRY	7–3	7
106	WC-1958	Yugoslavia v Scotland	group stage	Arosvallen	Västerås	Yugoslavia	T-61	SCO	1–1	1
107	WC-1958	Hungary v Wales	group stage	Jernvallen	Sandviken	Hungary	T-81	WAL	1–1	1
108	WC-1958	Brazil v Austria	group stage	Rimnersvallen	Uddevalla	Brazil	T-05	AUT	3–0	3
109	WC-1958	Soviet Union v England	group stage	Ullevi	Gothenburg	Soviet Union	T-27	ENG	2–2	2
110	WC-1958	Argentina v Northern Ireland	group stage	Örjans Vall	Halmstad	Argentina	T-50	NIR	3–1	3
111	WC-1958	West Germany v Czechoslovakia	group stage	Olympia	Helsingborg	West Germany	T-20	CSK	2–2	2
112	WC-1958	Paraguay v Scotland	group stage	Idrottsparken	Norrköping	Paraguay	T-61	SCO	3–2	3
113	WC-1958	Yugoslavia v France	group stage	Arosvallen	Västerås	Yugoslavia	T-28	FRA	3–2	3
114	WC-1958	Mexico v Wales	group stage	Råsunda Stadium	Solna	Mexico	T-81	WAL	1–1	1
115	WC-1958	Brazil v England	group stage	Ullevi	Gothenburg	Brazil	T-27	ENG	0–0	0
116	WC-1958	Soviet Union v Austria	group stage	Ryavallen	Borås	Soviet Union	T-05	AUT	2–0	2
117	WC-1958	Sweden v Hungary	group stage	Råsunda Stadium	Solna	Sweden	T-34	HUN	2–1	2
118	WC-1958	Sweden v Wales	group stage	Råsunda Stadium	Solna	Sweden	T-81	WAL	0–0	0
119	WC-1958	Czechoslovakia v Argentina	group stage	Olympia	Helsingborg	Czechoslovakia	T-03	ARG	6–1	6
120	WC-1958	West Germany v Northern Ireland	group stage	Malmö Stadion	Malmö	West Germany	T-50	NIR	2–2	2
121	WC-1958	France v Scotland	group stage	Eyravallen	Örebro	France	T-61	SCO	2–1	2
122	WC-1958	Paraguay v Yugoslavia	group stage	Tunavallen	Eskilstuna	Paraguay	T-83	YUG	3–3	3
123	WC-1958	Hungary v Mexico	group stage	Jernvallen	Sandviken	Hungary	T-44	MEX	4–0	4
124	WC-1958	Brazil v Soviet Union	group stage	Ullevi	Gothenburg	Brazil	T-69	SUN	2–0	2
125	WC-1958	England v Austria	group stage	Ryavallen	Borås	England	T-05	AUT	2–2	2
126	WC-1958	Northern Ireland v Czechoslovakia	group stage	Malmö Stadion	Malmö	Northern Ireland	T-20	CSK	2–1	2
127	WC-1958	Wales v Hungary	group stage	Råsunda Stadium	Solna	Wales	T-34	HUN	2–1	2
128	WC-1958	Soviet Union v England	group stage	Ullevi	Gothenburg	Soviet Union	T-27	ENG	1–0	1
129	WC-1958	Brazil v Wales	quarter-finals	Ullevi	Gothenburg	Brazil	T-81	WAL	1–0	1
130	WC-1958	France v Northern Ireland	quarter-finals	Idrottsparken	Norrköping	France	T-50	NIR	4–0	4
131	WC-1958	Sweden v Soviet Union	quarter-finals	Råsunda Stadium	Solna	Sweden	T-69	SUN	2–0	2
132	WC-1958	West Germany v Yugoslavia	quarter-finals	Malmö Stadion	Malmö	West Germany	T-83	YUG	1–0	1
133	WC-1958	Brazil v France	semi-finals	Råsunda Stadium	Solna	Brazil	T-28	FRA	5–2	5
134	WC-1958	Sweden v West Germany	semi-finals	Ullevi	Gothenburg	Sweden	T-82	DEU	3–1	3
135	WC-1958	France v West Germany	third-place match	Ullevi	Gothenburg	France	T-82	DEU	6–3	6
136	WC-1958	Brazil v Sweden	final	Råsunda Stadium	Solna	Brazil	T-71	SWE	5–2	5
137	WC-1962	Uruguay v Colombia	group stage	Estadio Carlos Dittborn	Arica	Uruguay	T-15	COL	2–1	2
138	WC-1962	Chile v Switzerland	group stage	Estadio Nacional	Santiago	Chile	T-72	CHE	3–1	3
139	WC-1962	Brazil v Mexico	group stage	Estadio Sausalito	Viña del Mar	Brazil	T-44	MEX	2–0	2
140	WC-1962	Argentina v Bulgaria	group stage	Estadio El Teniente	Rancagua	Argentina	T-10	BGR	1–0	1
141	WC-1962	Soviet Union v Yugoslavia	group stage	Estadio Carlos Dittborn	Arica	Soviet Union	T-83	YUG	2–0	2
142	WC-1962	West Germany v Italy	group stage	Estadio Nacional	Santiago	West Germany	T-39	ITA	0–0	0
143	WC-1962	Czechoslovakia v Spain	group stage	Estadio Sausalito	Viña del Mar	Czechoslovakia	T-70	ESP	1–0	1
144	WC-1962	Hungary v England	group stage	Estadio El Teniente	Rancagua	Hungary	T-27	ENG	2–1	2
145	WC-1962	Yugoslavia v Uruguay	group stage	Estadio Carlos Dittborn	Arica	Yugoslavia	T-80	URY	3–1	3
146	WC-1962	Chile v Italy	group stage	Estadio Nacional	Santiago	Chile	T-39	ITA	2–0	2
147	WC-1962	Brazil v Czechoslovakia	group stage	Estadio Sausalito	Viña del Mar	Brazil	T-20	CSK	0–0	0
148	WC-1962	England v Argentina	group stage	Estadio El Teniente	Rancagua	England	T-03	ARG	3–1	3
149	WC-1962	Soviet Union v Colombia	group stage	Estadio Carlos Dittborn	Arica	Soviet Union	T-15	COL	4–4	4
150	WC-1962	West Germany v Switzerland	group stage	Estadio Nacional	Santiago	West Germany	T-72	CHE	2–1	2
151	WC-1962	Spain v Mexico	group stage	Estadio Sausalito	Viña del Mar	Spain	T-44	MEX	1–0	1
152	WC-1962	Hungary v Bulgaria	group stage	Estadio El Teniente	Rancagua	Hungary	T-10	BGR	6–1	6
153	WC-1962	Soviet Union v Uruguay	group stage	Estadio Carlos Dittborn	Arica	Soviet Union	T-80	URY	2–1	2
154	WC-1962	West Germany v Chile	group stage	Estadio Nacional	Santiago	West Germany	T-13	CHL	2–0	2
155	WC-1962	Brazil v Spain	group stage	Estadio Sausalito	Viña del Mar	Brazil	T-70	ESP	2–1	2
156	WC-1962	Hungary v Argentina	group stage	Estadio El Teniente	Rancagua	Hungary	T-03	ARG	0–0	0
157	WC-1962	Yugoslavia v Colombia	group stage	Estadio Carlos Dittborn	Arica	Yugoslavia	T-15	COL	5–0	5
158	WC-1962	Italy v Switzerland	group stage	Estadio Nacional	Santiago	Italy	T-72	CHE	3–0	3
159	WC-1962	Mexico v Czechoslovakia	group stage	Estadio Sausalito	Viña del Mar	Mexico	T-20	CSK	3–1	3
160	WC-1962	England v Bulgaria	group stage	Estadio El Teniente	Rancagua	England	T-10	BGR	0–0	0
161	WC-1962	Brazil v England	quarter-finals	Estadio Sausalito	Viña del Mar	Brazil	T-27	ENG	3–1	3
162	WC-1962	Chile v Soviet Union	quarter-finals	Estadio Carlos Dittborn	Arica	Chile	T-69	SUN	2–1	2
163	WC-1962	Czechoslovakia v Hungary	quarter-finals	Estadio El Teniente	Rancagua	Czechoslovakia	T-34	HUN	1–0	1
164	WC-1962	Yugoslavia v West Germany	quarter-finals	Estadio Nacional	Santiago	Yugoslavia	T-82	DEU	1–0	1
165	WC-1962	Brazil v Chile	semi-finals	Estadio Nacional	Santiago	Brazil	T-13	CHL	4–2	4
166	WC-1962	Czechoslovakia v Yugoslavia	semi-finals	Estadio Sausalito	Viña del Mar	Czechoslovakia	T-83	YUG	3–1	3
167	WC-1962	Chile v Yugoslavia	third-place match	Estadio Nacional	Santiago	Chile	T-83	YUG	1–0	1
168	WC-1962	Brazil v Czechoslovakia	final	Estadio Nacional	Santiago	Brazil	T-20	CSK	3–1	3
169	WC-1966	England v Uruguay	group stage	Wembley Stadium	London	England	T-80	URY	0–0	0
170	WC-1966	West Germany v Switzerland	group stage	Hillsborough Stadium	Sheffield	West Germany	T-72	CHE	5–0	5
171	WC-1966	Brazil v Bulgaria	group stage	Goodison Park	Liverpool	Brazil	T-10	BGR	2–0	2
172	WC-1966	Soviet Union v North Korea	group stage	Ayresome Park	Middlesbrough	Soviet Union	T-49	PRK	3–0	3
173	WC-1966	France v Mexico	group stage	Wembley Stadium	London	France	T-44	MEX	1–1	1
174	WC-1966	Argentina v Spain	group stage	Villa Park	Birmingham	Argentina	T-70	ESP	2–1	2
175	WC-1966	Portugal v Hungary	group stage	Old Trafford	Manchester	Portugal	T-34	HUN	3–1	3
176	WC-1966	Italy v Chile	group stage	Roker Park	Sunderland	Italy	T-13	CHL	2–0	2
177	WC-1966	Uruguay v France	group stage	White City Stadium	London	Uruguay	T-28	FRA	2–1	2
178	WC-1966	Spain v Switzerland	group stage	Hillsborough Stadium	Sheffield	Spain	T-72	CHE	2–1	2
179	WC-1966	Hungary v Brazil	group stage	Goodison Park	Liverpool	Hungary	T-09	BRA	3–1	3
180	WC-1966	Chile v North Korea	group stage	Ayresome Park	Middlesbrough	Chile	T-49	PRK	1–1	1
181	WC-1966	Argentina v West Germany	group stage	Villa Park	Birmingham	Argentina	T-82	DEU	0–0	0
182	WC-1966	Portugal v Bulgaria	group stage	Old Trafford	Manchester	Portugal	T-10	BGR	3–0	3
183	WC-1966	Soviet Union v Italy	group stage	Roker Park	Sunderland	Soviet Union	T-39	ITA	1–0	1
184	WC-1966	England v Mexico	group stage	Wembley Stadium	London	England	T-44	MEX	2–0	2
185	WC-1966	Mexico v Uruguay	group stage	Wembley Stadium	London	Mexico	T-80	URY	0–0	0
186	WC-1966	Argentina v Switzerland	group stage	Hillsborough Stadium	Sheffield	Argentina	T-72	CHE	2–0	2
187	WC-1966	Portugal v Brazil	group stage	Goodison Park	Liverpool	Portugal	T-09	BRA	3–1	3
188	WC-1966	North Korea v Italy	group stage	Ayresome Park	Middlesbrough	North Korea	T-39	ITA	1–0	1
189	WC-1966	England v France	group stage	Wembley Stadium	London	England	T-28	FRA	2–0	2
190	WC-1966	West Germany v Spain	group stage	Villa Park	Birmingham	West Germany	T-70	ESP	2–1	2
191	WC-1966	Hungary v Bulgaria	group stage	Old Trafford	Manchester	Hungary	T-10	BGR	3–1	3
192	WC-1966	Soviet Union v Chile	group stage	Roker Park	Sunderland	Soviet Union	T-13	CHL	2–1	2
193	WC-1966	England v Argentina	quarter-finals	Wembley Stadium	London	England	T-03	ARG	1–0	1
194	WC-1966	Portugal v North Korea	quarter-finals	Goodison Park	Liverpool	Portugal	T-49	PRK	5–3	5
195	WC-1966	Soviet Union v Hungary	quarter-finals	Roker Park	Sunderland	Soviet Union	T-34	HUN	2–1	2
196	WC-1966	West Germany v Uruguay	quarter-finals	Hillsborough Stadium	Sheffield	West Germany	T-80	URY	4–0	4
197	WC-1966	West Germany v Soviet Union	semi-finals	Goodison Park	Liverpool	West Germany	T-69	SUN	2–1	2
198	WC-1966	England v Portugal	semi-finals	Wembley Stadium	London	England	T-56	PRT	2–1	2
199	WC-1966	Portugal v Soviet Union	third-place match	Wembley Stadium	London	Portugal	T-69	SUN	2–1	2
200	WC-1966	England v West Germany	final	Wembley Stadium	London	England	T-82	DEU	4–2	4
201	WC-1970	Mexico v Soviet Union	group stage	Estadio Azteca	Mexico City	Mexico	T-69	SUN	0–0	0
202	WC-1970	Uruguay v Israel	group stage	Estadio Cuauhtémoc	Puebla	Uruguay	T-38	ISR	2–0	2
203	WC-1970	England v Romania	group stage	Estadio Jalisco	Guadalajara	England	T-58	ROU	1–0	1
204	WC-1970	Peru v Bulgaria	group stage	Estadio Nou Camp	León	Peru	T-10	BGR	3–2	3
205	WC-1970	Belgium v El Salvador	group stage	Estadio Azteca	Mexico City	Belgium	T-26	SLV	3–0	3
206	WC-1970	Italy v Sweden	group stage	La Bombonera	Toluca	Italy	T-71	SWE	1–0	1
207	WC-1970	Brazil v Czechoslovakia	group stage	Estadio Jalisco	Guadalajara	Brazil	T-20	CSK	4–1	4
208	WC-1970	West Germany v Morocco	group stage	Estadio Nou Camp	León	West Germany	T-45	MAR	2–1	2
209	WC-1970	Soviet Union v Belgium	group stage	Estadio Azteca	Mexico City	Soviet Union	T-06	BEL	4–1	4
210	WC-1970	Uruguay v Italy	group stage	Estadio Cuauhtémoc	Puebla	Uruguay	T-39	ITA	0–0	0
211	WC-1970	Romania v Czechoslovakia	group stage	Estadio Jalisco	Guadalajara	Romania	T-20	CSK	2–1	2
212	WC-1970	Peru v Morocco	group stage	Estadio Nou Camp	León	Peru	T-45	MAR	3–0	3
213	WC-1970	Mexico v El Salvador	group stage	Estadio Azteca	Mexico City	Mexico	T-26	SLV	4–0	4
214	WC-1970	Sweden v Israel	group stage	La Bombonera	Toluca	Sweden	T-38	ISR	1–1	1
215	WC-1970	Brazil v England	group stage	Estadio Jalisco	Guadalajara	Brazil	T-27	ENG	1–0	1
216	WC-1970	West Germany v Bulgaria	group stage	Estadio Nou Camp	León	West Germany	T-10	BGR	5–2	5
217	WC-1970	Soviet Union v El Salvador	group stage	Estadio Azteca	Mexico City	Soviet Union	T-26	SLV	2–0	2
218	WC-1970	Sweden v Uruguay	group stage	Estadio Cuauhtémoc	Puebla	Sweden	T-80	URY	1-0	1
219	WC-1970	Brazil v Romania	group stage	Estadio Jalisco	Guadalajara	Brazil	T-58	ROU	3–2	3
220	WC-1970	West Germany v Peru	group stage	Estadio Nou Camp	León	West Germany	T-54	PER	3–1	3
221	WC-1970	Mexico v Belgium	group stage	Estadio Azteca	Mexico City	Mexico	T-06	BEL	1–0	1
222	WC-1970	Italy v Israel	group stage	La Bombonera	Toluca	Italy	T-38	ISR	0–0	0
223	WC-1970	England v Czechoslovakia	group stage	Estadio Jalisco	Guadalajara	England	T-20	CSK	1–0	1
224	WC-1970	Bulgaria v Morocco	group stage	Estadio Nou Camp	León	Bulgaria	T-45	MAR	1–1	1
225	WC-1970	Brazil v Peru	quarter-finals	Estadio Jalisco	Guadalajara	Brazil	T-54	PER	4–2	4
226	WC-1970	Italy v Mexico	quarter-finals	La Bombonera	Toluca	Italy	T-44	MEX	4–1	4
227	WC-1970	Soviet Union v Uruguay	quarter-finals	Estadio Azteca	Mexico City	Soviet Union	T-80	URY	0–1	0
228	WC-1970	West Germany v England	quarter-finals	Estadio Nou Camp	León	West Germany	T-27	ENG	3–2	3
229	WC-1970	Brazil v Uruguay	semi-finals	Estadio Jalisco	Guadalajara	Brazil	T-80	URY	3–1	3
230	WC-1970	Italy v West Germany	semi-finals	Estadio Azteca	Mexico City	Italy	T-82	DEU	4–3	4
231	WC-1970	West Germany v Uruguay	third-place match	Estadio Azteca	Mexico City	West Germany	T-80	URY	1–0	1
232	WC-1970	Brazil v Italy	final	Estadio Azteca	Mexico City	Brazil	T-39	ITA	4–1	4
233	WC-1974	Brazil v Yugoslavia	group stage	Waldstadion	Frankfurt	Brazil	T-83	YUG	0–0	0
234	WC-1974	West Germany v Chile	group stage	Olympiastadion	Berlin	West Germany	T-13	CHL	1–0	1
235	WC-1974	East Germany v Australia	group stage	Volksparkstadion	Hamburg	East Germany	T-04	AUS	2–0	2
236	WC-1974	Zaire v Scotland	group stage	Westfalenstadion	Dortmund	Zaire	T-61	SCO	0–2	0
237	WC-1974	Sweden v Bulgaria	group stage	Rheinstadion	Düsseldorf	Sweden	T-10	BGR	0–0	0
238	WC-1974	Uruguay v Netherlands	group stage	Niedersachsenstadion	Hanover	Uruguay	T-46	NLD	0–2	0
239	WC-1974	Italy v Haiti	group stage	Olympiastadion	Munich	Italy	T-32	HTI	3–1	3
240	WC-1974	Poland v Argentina	group stage	Neckarstadion	Stuttgart	Poland	T-03	ARG	3–2	3
241	WC-1974	Australia v West Germany	group stage	Volksparkstadion	Hamburg	Australia	T-82	DEU	0–3	0
242	WC-1974	Chile v East Germany	group stage	Olympiastadion	Berlin	Chile	T-23	DDR	1–1	1
243	WC-1974	Scotland v Brazil	group stage	Waldstadion	Frankfurt	Scotland	T-09	BRA	0–0	0
244	WC-1974	Yugoslavia v Zaire	group stage	Parkstadion	Gelsenkirchen	Yugoslavia	T-84	COD	9–0	9
245	WC-1974	Bulgaria v Uruguay	group stage	Niedersachsenstadion	Hanover	Bulgaria	T-80	URY	1–1	1
246	WC-1974	Netherlands v Sweden	group stage	Westfalenstadion	Dortmund	Netherlands	T-71	SWE	0–0	0
247	WC-1974	Argentina v Italy	group stage	Neckarstadion	Stuttgart	Argentina	T-39	ITA	1–1	1
248	WC-1974	Haiti v Poland	group stage	Olympiastadion	Munich	Haiti	T-55	POL	0–7	0
249	WC-1974	Australia v Chile	group stage	Olympiastadion	Berlin	Australia	T-13	CHL	0–0	0
250	WC-1974	Scotland v Yugoslavia	group stage	Waldstadion	Frankfurt	Scotland	T-83	YUG	1–1	1
251	WC-1974	Zaire v Brazil	group stage	Parkstadion	Gelsenkirchen	Zaire	T-09	BRA	0–3	0
252	WC-1974	East Germany v West Germany	group stage	Volksparkstadion	Hamburg	East Germany	T-82	DEU	1–0	1
253	WC-1974	Bulgaria v Netherlands	group stage	Westfalenstadion	Dortmund	Bulgaria	T-46	NLD	1–4	1
254	WC-1974	Sweden v Uruguay	group stage	Rheinstadion	Düsseldorf	Sweden	T-80	URY	3–0	3
255	WC-1974	Argentina v Haiti	group stage	Olympiastadion	Munich	Argentina	T-32	HTI	4–1	4
256	WC-1974	Poland v Italy	group stage	Neckarstadion	Stuttgart	Poland	T-39	ITA	2–1	2
257	WC-1974	Yugoslavia v West Germany	second group stage	Rheinstadion	Düsseldorf	Yugoslavia	T-82	DEU	0–2	0
258	WC-1974	Brazil v East Germany	second group stage	Niedersachsenstadion	Hanover	Brazil	T-23	DDR	1–0	1
259	WC-1974	Netherlands v Argentina	second group stage	Parkstadion	Gelsenkirchen	Netherlands	T-03	ARG	4–0	4
260	WC-1974	Sweden v Poland	second group stage	Neckarstadion	Stuttgart	Sweden	T-55	POL	0–1	0
261	WC-1974	Argentina v Brazil	second group stage	Niedersachsenstadion	Hanover	Argentina	T-09	BRA	1–2	1
262	WC-1974	East Germany v Netherlands	second group stage	Parkstadion	Gelsenkirchen	East Germany	T-46	NLD	0–2	0
263	WC-1974	Poland v Yugoslavia	second group stage	Waldstadion	Frankfurt	Poland	T-83	YUG	2–1	2
264	WC-1974	West Germany v Sweden	second group stage	Rheinstadion	Düsseldorf	West Germany	T-71	SWE	4–2	4
265	WC-1974	Poland v West Germany	second group stage	Waldstadion	Frankfurt	Poland	T-82	DEU	0–1	0
266	WC-1974	Argentina v East Germany	second group stage	Parkstadion	Gelsenkirchen	Argentina	T-23	DDR	1–1	1
267	WC-1974	Netherlands v Brazil	second group stage	Westfalenstadion	Dortmund	Netherlands	T-09	BRA	2–0	2
268	WC-1974	Sweden v Yugoslavia	second group stage	Rheinstadion	Düsseldorf	Sweden	T-83	YUG	2–1	2
269	WC-1974	Brazil v Poland	third-place match	Olympiastadion	Munich	Brazil	T-55	POL	0–1	0
270	WC-1974	Netherlands v West Germany	final	Olympiastadion	Munich	Netherlands	T-82	DEU	1–2	1
271	WC-1978	West Germany v Poland	group stage	Estadio Monumental	Buenos Aires	West Germany	T-55	POL	0–0	0
272	WC-1978	Italy v France	group stage	Estadio José María Minella	Mar del Plata	Italy	T-28	FRA	2–1	2
273	WC-1978	Tunisia v Mexico	group stage	Estadio Gigante de Arroyito	Rosario	Tunisia	T-44	MEX	3–1	3
274	WC-1978	Argentina v Hungary	group stage	Estadio Monumental	Buenos Aires	Argentina	T-34	HUN	2–1	2
275	WC-1978	Austria v Spain	group stage	Estadio José Amalfitani	Buenos Aires	Austria	T-70	ESP	2–1	2
276	WC-1978	Brazil v Sweden	group stage	Estadio José María Minella	Mar del Plata	Brazil	T-71	SWE	1–1	1
277	WC-1978	Netherlands v Iran	group stage	Estadio Ciudad de Mendoza	Mendoza	Netherlands	T-36	IRN	3–0	3
278	WC-1978	Peru v Scotland	group stage	Estadio Chateau Carreras	Córdoba	Peru	T-61	SCO	3–1	3
279	WC-1978	Italy v Hungary	group stage	Estadio José María Minella	Mar del Plata	Italy	T-34	HUN	3–1	3
280	WC-1978	Poland v Tunisia	group stage	Estadio Gigante de Arroyito	Rosario	Poland	T-75	TUN	1–0	1
281	WC-1978	West Germany v Mexico	group stage	Estadio Chateau Carreras	Córdoba	West Germany	T-44	MEX	6–0	6
282	WC-1978	Argentina v France	group stage	Estadio Monumental	Buenos Aires	Argentina	T-28	FRA	2–1	2
283	WC-1978	Austria v Sweden	group stage	Estadio José Amalfitani	Buenos Aires	Austria	T-71	SWE	1–0	1
284	WC-1978	Brazil v Spain	group stage	Estadio José María Minella	Mar del Plata	Brazil	T-70	ESP	0–0	0
285	WC-1978	Netherlands v Peru	group stage	Estadio Ciudad de Mendoza	Mendoza	Netherlands	T-54	PER	0–0	0
286	WC-1978	Scotland v Iran	group stage	Estadio Chateau Carreras	Córdoba	Scotland	T-36	IRN	1–1	1
287	WC-1978	France v Hungary	group stage	Estadio José María Minella	Mar del Plata	France	T-34	HUN	3–1	3
288	WC-1978	Poland v Mexico	group stage	Estadio Gigante de Arroyito	Rosario	Poland	T-44	MEX	3–1	3
289	WC-1978	West Germany v Tunisia	group stage	Estadio Chateau Carreras	Córdoba	West Germany	T-75	TUN	0–0	0
290	WC-1978	Argentina v Italy	group stage	Estadio Monumental	Buenos Aires	Argentina	T-39	ITA	0–1	0
291	WC-1978	Brazil v Austria	group stage	Estadio José María Minella	Mar del Plata	Brazil	T-05	AUT	1–0	1
292	WC-1978	Spain v Sweden	group stage	Estadio José Amalfitani	Buenos Aires	Spain	T-71	SWE	1–0	1
293	WC-1978	Peru v Iran	group stage	Estadio Chateau Carreras	Córdoba	Peru	T-36	IRN	4–1	4
294	WC-1978	Scotland v Netherlands	group stage	Estadio Ciudad de Mendoza	Mendoza	Scotland	T-46	NLD	3–2	3
295	WC-1978	Austria v Netherlands	second group stage	Estadio Chateau Carreras	Córdoba	Austria	T-46	NLD	1–5	1
296	WC-1978	Italy v West Germany	second group stage	Estadio Monumental	Buenos Aires	Italy	T-82	DEU	0–0	0
297	WC-1978	Brazil v Peru	second group stage	Estadio Ciudad de Mendoza	Mendoza	Brazil	T-54	PER	3–0	3
298	WC-1978	Argentina v Poland	second group stage	Estadio Gigante de Arroyito	Rosario	Argentina	T-55	POL	2–0	2
299	WC-1978	Peru v Poland	second group stage	Estadio Ciudad de Mendoza	Mendoza	Peru	T-55	POL	0–1	0
300	WC-1978	Italy v Austria	second group stage	Estadio Monumental	Buenos Aires	Italy	T-05	AUT	1–0	1
301	WC-1978	Netherlands v West Germany	second group stage	Estadio Chateau Carreras	Córdoba	Netherlands	T-82	DEU	2–2	2
302	WC-1978	Argentina v Brazil	second group stage	Estadio Gigante de Arroyito	Rosario	Argentina	T-09	BRA	0–0	0
303	WC-1978	Austria v West Germany	second group stage	Estadio Chateau Carreras	Córdoba	Austria	T-82	DEU	3–2	3
304	WC-1978	Italy v Netherlands	second group stage	Estadio Monumental	Buenos Aires	Italy	T-46	NLD	1–2	1
305	WC-1978	Brazil v Poland	second group stage	Estadio Ciudad de Mendoza	Mendoza	Brazil	T-55	POL	3–1	3
306	WC-1978	Argentina v Peru	second group stage	Estadio Gigante de Arroyito	Rosario	Argentina	T-54	PER	6–0	6
307	WC-1978	Brazil v Italy	third-place match	Estadio Monumental	Buenos Aires	Brazil	T-39	ITA	2–1	2
308	WC-1978	Argentina v Netherlands	final	Estadio Monumental	Buenos Aires	Argentina	T-46	NLD	3–1	3
309	WC-1982	Argentina v Belgium	group stage	Camp Nou	Barcelona	Argentina	T-06	BEL	0–1	0
310	WC-1982	Italy v Poland	group stage	Balaídos	Vigo	Italy	T-55	POL	0–0	0
311	WC-1982	Brazil v Soviet Union	group stage	Estadio Ramón Sánchez Pizjuán	Seville	Brazil	T-69	SUN	2–1	2
312	WC-1982	Peru v Cameroon	group stage	Estadio Riazor	A Coruña	Peru	T-11	CMR	0–0	0
313	WC-1982	Hungary v El Salvador	group stage	Nuevo Estadio	Elche	Hungary	T-26	SLV	10–1	10
314	WC-1982	Scotland v New Zealand	group stage	Estadio La Rosaleda	Málaga	Scotland	T-47	NZL	5–2	5
315	WC-1982	West Germany v Algeria	group stage	Estadio El Molinón	Gijón	West Germany	T-01	DZA	1–2	1
316	WC-1982	England v France	group stage	Estadio San Mamés	Bilbao	England	T-28	FRA	3–1	3
317	WC-1982	Spain v Honduras	group stage	Estadio Luis Casanova	Valencia	Spain	T-33	HND	1–1	1
318	WC-1982	Chile v Austria	group stage	Estadio Carlos Tartiere	Oviedo	Chile	T-05	AUT	0–1	0
319	WC-1982	Czechoslovakia v Kuwait	group stage	Estadio José Zorrilla	Valladolid	Czechoslovakia	T-43	KWT	1–1	1
320	WC-1982	Yugoslavia v Northern Ireland	group stage	Estadio La Romareda	Zaragoza	Yugoslavia	T-50	NIR	0–0	0
321	WC-1982	Italy v Peru	group stage	Balaídos	Vigo	Italy	T-54	PER	1–1	1
322	WC-1982	Argentina v Hungary	group stage	Estadio José Rico Pérez	Alicante	Argentina	T-34	HUN	4–1	4
323	WC-1982	Brazil v Scotland	group stage	Estadio Benito Villamarín	Seville	Brazil	T-61	SCO	4–1	4
324	WC-1982	Poland v Cameroon	group stage	Estadio Riazor	A Coruña	Poland	T-11	CMR	0–0	0
325	WC-1982	Belgium v El Salvador	group stage	Nuevo Estadio	Elche	Belgium	T-26	SLV	1–0	1
326	WC-1982	Soviet Union v New Zealand	group stage	Estadio La Rosaleda	Málaga	Soviet Union	T-47	NZL	3–0	3
327	WC-1982	West Germany v Chile	group stage	Estadio El Molinón	Gijón	West Germany	T-13	CHL	4–1	4
328	WC-1982	England v Czechoslovakia	group stage	Estadio San Mamés	Bilbao	England	T-20	CSK	2–0	2
329	WC-1982	Spain v Yugoslavia	group stage	Estadio Luis Casanova	Valencia	Spain	T-83	YUG	2–1	2
330	WC-1982	Algeria v Austria	group stage	Estadio Carlos Tartiere	Oviedo	Algeria	T-05	AUT	0–2	0
331	WC-1982	France v Kuwait	group stage	Estadio José Zorrilla	Valladolid	France	T-43	KWT	4–1	4
332	WC-1982	Honduras v Northern Ireland	group stage	Estadio La Romareda	Zaragoza	Honduras	T-50	NIR	1–1	1
333	WC-1982	Poland v Peru	group stage	Estadio Riazor	A Coruña	Poland	T-54	PER	5–1	5
334	WC-1982	Belgium v Hungary	group stage	Nuevo Estadio	Elche	Belgium	T-34	HUN	1–1	1
335	WC-1982	Soviet Union v Scotland	group stage	Estadio La Rosaleda	Málaga	Soviet Union	T-61	SCO	2–2	2
336	WC-1982	Italy v Cameroon	group stage	Balaídos	Vigo	Italy	T-11	CMR	1–1	1
337	WC-1982	Argentina v El Salvador	group stage	Estadio José Rico Pérez	Alicante	Argentina	T-26	SLV	2–0	2
338	WC-1982	Brazil v New Zealand	group stage	Estadio Benito Villamarín	Seville	Brazil	T-47	NZL	4–0	4
339	WC-1982	Algeria v Chile	group stage	Estadio Carlos Tartiere	Oviedo	Algeria	T-13	CHL	3–2	3
340	WC-1982	France v Czechoslovakia	group stage	Estadio José Zorrilla	Valladolid	France	T-20	CSK	1–1	1
341	WC-1982	Honduras v Yugoslavia	group stage	Estadio La Romareda	Zaragoza	Honduras	T-83	YUG	0–1	0
342	WC-1982	West Germany v Austria	group stage	Estadio El Molinón	Gijón	West Germany	T-05	AUT	1–0	1
343	WC-1982	England v Kuwait	group stage	Estadio San Mamés	Bilbao	England	T-43	KWT	1–0	1
344	WC-1982	Spain v Northern Ireland	group stage	Estadio Luis Casanova	Valencia	Spain	T-50	NIR	0–1	0
345	WC-1982	Austria v France	second group stage	Vicente Calderón	Madrid	Austria	T-28	FRA	0–1	0
346	WC-1982	Poland v Belgium	second group stage	Camp Nou	Barcelona	Poland	T-06	BEL	3–0	3
347	WC-1982	Italy v Argentina	second group stage	Estadi de Sarrià	Barcelona	Italy	T-03	ARG	2–1	2
348	WC-1982	West Germany v England	second group stage	Estadio Santiago Bernabéu	Madrid	West Germany	T-27	ENG	0–0	0
349	WC-1982	Austria v Northern Ireland	second group stage	Vicente Calderón	Madrid	Austria	T-50	NIR	2–2	2
350	WC-1982	Belgium v Soviet Union	second group stage	Camp Nou	Barcelona	Belgium	T-69	SUN	0–1	0
351	WC-1982	Argentina v Brazil	second group stage	Estadi de Sarrià	Barcelona	Argentina	T-09	BRA	1–3	1
352	WC-1982	West Germany v Spain	second group stage	Estadio Santiago Bernabéu	Madrid	West Germany	T-70	ESP	2–1	2
353	WC-1982	France v Northern Ireland	second group stage	Vicente Calderón	Madrid	France	T-50	NIR	4–1	4
354	WC-1982	Soviet Union v Poland	second group stage	Camp Nou	Barcelona	Soviet Union	T-55	POL	0–0	0
355	WC-1982	Italy v Brazil	second group stage	Estadi de Sarrià	Barcelona	Italy	T-09	BRA	3–2	3
356	WC-1982	Spain v England	second group stage	Estadio Santiago Bernabéu	Madrid	Spain	T-27	ENG	0–0	0
357	WC-1982	Poland v Italy	semi-finals	Camp Nou	Barcelona	Poland	T-39	ITA	0–2	0
358	WC-1982	West Germany v France	semi-finals	Estadio Ramón Sánchez Pizjuán	Seville	West Germany	T-28	FRA	3–3	3
359	WC-1982	Poland v France	third-place match	Estadio José Rico Pérez	Alicante	Poland	T-28	FRA	3–2	3
360	WC-1982	Italy v West Germany	final	Estadio Santiago Bernabéu	Madrid	Italy	T-82	DEU	3–1	3
361	WC-1986	Bulgaria v Italy	group stage	Estadio Azteca	Mexico City	Bulgaria	T-39	ITA	1–1	1
362	WC-1986	Spain v Brazil	group stage	Estadio Jalisco	Guadalajara	Spain	T-09	BRA	0–1	0
363	WC-1986	Canada v France	group stage	Estadio Nou Camp	León	Canada	T-28	FRA	0–1	0
364	WC-1986	Argentina v South Korea	group stage	Estadio Olímpico Universitario	Mexico City	Argentina	T-68	KOR	3–1	3
365	WC-1986	Soviet Union v Hungary	group stage	Estadio Sergio León Chavez	Irapuato	Soviet Union	T-34	HUN	6–0	6
366	WC-1986	Morocco v Poland	group stage	Estadio Universitario	Monterrey	Morocco	T-55	POL	0–0	0
367	WC-1986	Belgium v Mexico	group stage	Estadio Azteca	Mexico City	Belgium	T-44	MEX	1–2	1
368	WC-1986	Algeria v Northern Ireland	group stage	Estadio Tres de Marzo	Guadalajara	Algeria	T-50	NIR	1–1	1
369	WC-1986	Portugal v England	group stage	Estadio Tecnológico	Monterrey	Portugal	T-27	ENG	1–0	1
370	WC-1986	Paraguay v Iraq	group stage	La Bombonera	Toluca	Paraguay	T-37	IRQ	1–0	1
371	WC-1986	Uruguay v West Germany	group stage	Estadio La Corregidora	Querétaro	Uruguay	T-82	DEU	1–1	1
372	WC-1986	Scotland v Denmark	group stage	Estadio Neza 86	Nezahualcóyotl	Scotland	T-21	DNK	0–1	0
373	WC-1986	Italy v Argentina	group stage	Estadio Cuauhtémoc	Puebla	Italy	T-03	ARG	1–1	1
374	WC-1986	France v Soviet Union	group stage	Estadio Nou Camp	León	France	T-69	SUN	1–1	1
375	WC-1986	South Korea v Bulgaria	group stage	Estadio Olímpico Universitario	Mexico City	South Korea	T-10	BGR	1–1	1
376	WC-1986	Hungary v Canada	group stage	Estadio Sergio León Chavez	Irapuato	Hungary	T-12	CAN	2–0	2
377	WC-1986	Brazil v Algeria	group stage	Estadio Jalisco	Guadalajara	Brazil	T-01	DZA	1–0	1
378	WC-1986	England v Morocco	group stage	Estadio Tecnológico	Monterrey	England	T-45	MAR	0–0	0
379	WC-1986	Mexico v Paraguay	group stage	Estadio Azteca	Mexico City	Mexico	T-53	PRY	1–1	1
380	WC-1986	Northern Ireland v Spain	group stage	Estadio Tres de Marzo	Guadalajara	Northern Ireland	T-70	ESP	1–2	1
381	WC-1986	Poland v Portugal	group stage	Estadio Universitario	Monterrey	Poland	T-56	PRT	1–0	1
382	WC-1986	Iraq v Belgium	group stage	La Bombonera	Toluca	Iraq	T-06	BEL	1–2	1
383	WC-1986	West Germany v Scotland	group stage	Estadio La Corregidora	Querétaro	West Germany	T-61	SCO	2–1	2
384	WC-1986	Denmark v Uruguay	group stage	Estadio Neza 86	Nezahualcóyotl	Denmark	T-80	URY	6–1	6
385	WC-1986	Hungary v France	group stage	Estadio Nou Camp	León	Hungary	T-28	FRA	0–3	0
386	WC-1986	Soviet Union v Canada	group stage	Estadio Sergio León Chavez	Irapuato	Soviet Union	T-12	CAN	2–0	2
387	WC-1986	Argentina v Bulgaria	group stage	Estadio Olímpico Universitario	Mexico City	Argentina	T-10	BGR	2–0	2
388	WC-1986	South Korea v Italy	group stage	Estadio Cuauhtémoc	Puebla	South Korea	T-39	ITA	2–3	2
389	WC-1986	Iraq v Mexico	group stage	Estadio Azteca	Mexico City	Iraq	T-44	MEX	0–1	0
390	WC-1986	Paraguay v Belgium	group stage	La Bombonera	Toluca	Paraguay	T-06	BEL	2–2	2
391	WC-1986	England v Poland	group stage	Estadio Universitario	Monterrey	England	T-55	POL	3–0	3
392	WC-1986	Portugal v Morocco	group stage	Estadio Tres de Marzo	Guadalajara	Portugal	T-45	MAR	1–3	1
393	WC-1986	Algeria v Spain	group stage	Estadio Tecnológico	Monterrey	Algeria	T-70	ESP	0–3	0
394	WC-1986	Northern Ireland v Brazil	group stage	Estadio Jalisco	Guadalajara	Northern Ireland	T-09	BRA	0–3	0
395	WC-1986	Denmark v West Germany	group stage	Estadio La Corregidora	Querétaro	Denmark	T-82	DEU	2–0	2
396	WC-1986	Scotland v Uruguay	group stage	Estadio Neza 86	Nezahualcóyotl	Scotland	T-80	URY	0–0	0
397	WC-1986	Mexico v Bulgaria	round of 16	Estadio Azteca	Mexico City	Mexico	T-10	BGR	2–0	2
398	WC-1986	Soviet Union v Belgium	round of 16	Estadio Nou Camp	León	Soviet Union	T-06	BEL	3–4	3
399	WC-1986	Brazil v Poland	round of 16	Estadio Jalisco	Guadalajara	Brazil	T-55	POL	4–0	4
400	WC-1986	Argentina v Uruguay	round of 16	Estadio Cuauhtémoc	Puebla	Argentina	T-80	URY	1–0	1
401	WC-1986	Italy v France	round of 16	Estadio Olímpico Universitario	Mexico City	Italy	T-28	FRA	0–2	0
402	WC-1986	Morocco v West Germany	round of 16	Estadio Universitario	Monterrey	Morocco	T-82	DEU	0–1	0
403	WC-1986	England v Paraguay	round of 16	Estadio Azteca	Mexico City	England	T-53	PRY	3–0	3
404	WC-1986	Denmark v Spain	round of 16	Estadio La Corregidora	Querétaro	Denmark	T-70	ESP	1–5	1
405	WC-1986	Brazil v France	quarter-finals	Estadio Jalisco	Guadalajara	Brazil	T-28	FRA	1–1	1
406	WC-1986	West Germany v Mexico	quarter-finals	Estadio Universitario	Monterrey	West Germany	T-44	MEX	0–0	0
407	WC-1986	Argentina v England	quarter-finals	Estadio Azteca	Mexico City	Argentina	T-27	ENG	2–1	2
408	WC-1986	Spain v Belgium	quarter-finals	Estadio Cuauhtémoc	Puebla	Spain	T-06	BEL	1–1	1
409	WC-1986	France v West Germany	semi-finals	Estadio Jalisco	Guadalajara	France	T-82	DEU	0–2	0
410	WC-1986	Argentina v Belgium	semi-finals	Estadio Azteca	Mexico City	Argentina	T-06	BEL	2–0	2
411	WC-1986	Belgium v France	third-place match	Estadio Cuauhtémoc	Puebla	Belgium	T-28	FRA	2–4	2
412	WC-1986	Argentina v West Germany	final	Estadio Azteca	Mexico City	Argentina	T-82	DEU	3–2	3
413	WC-1990	Argentina v Cameroon	group stage	San Siro	Milan	Argentina	T-11	CMR	0–1	0
414	WC-1990	Soviet Union v Romania	group stage	Stadio San Nicola	Bari	Soviet Union	T-58	ROU	0–2	0
415	WC-1990	United Arab Emirates v Colombia	group stage	Stadio Renato Dall'Ara	Bologna	United Arab Emirates	T-15	COL	0–2	0
416	WC-1990	Italy v Austria	group stage	Stadio Olimpico	Rome	Italy	T-05	AUT	1–0	1
417	WC-1990	United States v Czechoslovakia	group stage	Stadio Comunale	Florence	United States	T-20	CSK	1–5	1
418	WC-1990	Brazil v Sweden	group stage	Stadio delle Alpi	Turin	Brazil	T-71	SWE	2–1	2
419	WC-1990	West Germany v Yugoslavia	group stage	San Siro	Milan	West Germany	T-83	YUG	4–1	4
420	WC-1990	Costa Rica v Scotland	group stage	Stadio Luigi Ferraris	Genoa	Costa Rica	T-61	SCO	1–0	1
421	WC-1990	England v Republic of Ireland	group stage	Stadio Sant'Elia	Cagliari	England	T-57	IRL	1–1	1
422	WC-1990	Belgium v South Korea	group stage	Stadio Marc'Antonio Bentegodi	Verona	Belgium	T-68	KOR	2–0	2
423	WC-1990	Netherlands v Egypt	group stage	Stadio La Favorita	Palermo	Netherlands	T-25	EGY	1–1	1
424	WC-1990	Uruguay v Spain	group stage	Stadio Friuli	Udine	Uruguay	T-70	ESP	0–0	0
425	WC-1990	Argentina v Soviet Union	group stage	Stadio San Paolo	Naples	Argentina	T-69	SUN	2–0	2
426	WC-1990	Cameroon v Romania	group stage	Stadio San Nicola	Bari	Cameroon	T-58	ROU	2–1	2
427	WC-1990	Yugoslavia v Colombia	group stage	Stadio Renato Dall'Ara	Bologna	Yugoslavia	T-15	COL	1–0	1
428	WC-1990	Italy v United States	group stage	Stadio Olimpico	Rome	Italy	T-79	USA	1–0	1
429	WC-1990	Austria v Czechoslovakia	group stage	Stadio Comunale	Florence	Austria	T-20	CSK	0–1	0
430	WC-1990	West Germany v United Arab Emirates	group stage	San Siro	Milan	West Germany	T-78	ARE	5–1	5
431	WC-1990	Brazil v Costa Rica	group stage	Stadio delle Alpi	Turin	Brazil	T-16	CRI	1–0	1
432	WC-1990	Sweden v Scotland	group stage	Stadio Luigi Ferraris	Genoa	Sweden	T-61	SCO	1–2	1
433	WC-1990	England v Netherlands	group stage	Stadio Sant'Elia	Cagliari	England	T-46	NLD	0–0	0
434	WC-1990	Republic of Ireland v Egypt	group stage	Stadio La Favorita	Palermo	Republic of Ireland	T-25	EGY	0–0	0
435	WC-1990	Belgium v Uruguay	group stage	Stadio Marc'Antonio Bentegodi	Verona	Belgium	T-80	URY	3–1	3
436	WC-1990	South Korea v Spain	group stage	Stadio Friuli	Udine	South Korea	T-70	ESP	1–3	1
437	WC-1990	Argentina v Romania	group stage	Stadio San Paolo	Naples	Argentina	T-58	ROU	1–1	1
438	WC-1990	Cameroon v Soviet Union	group stage	Stadio San Nicola	Bari	Cameroon	T-69	SUN	0–4	0
439	WC-1990	West Germany v Colombia	group stage	San Siro	Milan	West Germany	T-15	COL	1–1	1
440	WC-1990	Yugoslavia v United Arab Emirates	group stage	Stadio Renato Dall'Ara	Bologna	Yugoslavia	T-78	ARE	4–1	4
441	WC-1990	Austria v United States	group stage	Stadio Comunale	Florence	Austria	T-79	USA	2–1	2
442	WC-1990	Italy v Czechoslovakia	group stage	Stadio Olimpico	Rome	Italy	T-20	CSK	2–0	2
443	WC-1990	Brazil v Scotland	group stage	Stadio delle Alpi	Turin	Brazil	T-61	SCO	1–0	1
444	WC-1990	Sweden v Costa Rica	group stage	Stadio Luigi Ferraris	Genoa	Sweden	T-16	CRI	1–2	1
445	WC-1990	Belgium v Spain	group stage	Stadio Marc'Antonio Bentegodi	Verona	Belgium	T-70	ESP	1–2	1
446	WC-1990	South Korea v Uruguay	group stage	Stadio Friuli	Udine	South Korea	T-80	URY	0–1	0
447	WC-1990	England v Egypt	group stage	Stadio Sant'Elia	Cagliari	England	T-25	EGY	1–0	1
448	WC-1990	Republic of Ireland v Netherlands	group stage	Stadio La Favorita	Palermo	Republic of Ireland	T-46	NLD	1–1	1
449	WC-1990	Cameroon v Colombia	round of 16	Stadio San Paolo	Naples	Cameroon	T-15	COL	2–1	2
450	WC-1990	Czechoslovakia v Costa Rica	round of 16	Stadio San Nicola	Bari	Czechoslovakia	T-16	CRI	4–1	4
451	WC-1990	Brazil v Argentina	round of 16	Stadio delle Alpi	Turin	Brazil	T-03	ARG	0–1	0
452	WC-1990	West Germany v Netherlands	round of 16	San Siro	Milan	West Germany	T-46	NLD	2–1	2
453	WC-1990	Republic of Ireland v Romania	round of 16	Stadio Luigi Ferraris	Genoa	Republic of Ireland	T-58	ROU	0–0	0
454	WC-1990	Italy v Uruguay	round of 16	Stadio Olimpico	Rome	Italy	T-80	URY	2–0	2
455	WC-1990	Spain v Yugoslavia	round of 16	Stadio Marc'Antonio Bentegodi	Verona	Spain	T-83	YUG	1–2	1
456	WC-1990	England v Belgium	round of 16	Stadio Renato Dall'Ara	Bologna	England	T-06	BEL	1–0	1
457	WC-1990	Argentina v Yugoslavia	quarter-finals	Stadio Comunale	Florence	Argentina	T-83	YUG	0–0	0
458	WC-1990	Republic of Ireland v Italy	quarter-finals	Stadio Olimpico	Rome	Republic of Ireland	T-39	ITA	0–1	0
459	WC-1990	Czechoslovakia v West Germany	quarter-finals	San Siro	Milan	Czechoslovakia	T-82	DEU	0–1	0
460	WC-1990	Cameroon v England	quarter-finals	Stadio San Paolo	Naples	Cameroon	T-27	ENG	2–3	2
461	WC-1990	Argentina v Italy	semi-finals	Stadio San Paolo	Naples	Argentina	T-39	ITA	1–1	1
462	WC-1990	West Germany v England	semi-finals	Stadio delle Alpi	Turin	West Germany	T-27	ENG	1–1	1
463	WC-1990	Italy v England	third-place match	Stadio San Nicola	Bari	Italy	T-27	ENG	2–1	2
464	WC-1990	West Germany v Argentina	final	Stadio Olimpico	Rome	West Germany	T-03	ARG	1–0	1
465	WC-1994	Germany v Bolivia	group stage	Soldier Field	Chicago	Germany	T-07	BOL	1–0	1
466	WC-1994	Spain v South Korea	group stage	Cotton Bowl	Dallas	Spain	T-68	KOR	2–2	2
467	WC-1994	United States v Switzerland	group stage	Pontiac Silverdome	Pontiac	United States	T-72	CHE	1–1	1
468	WC-1994	Italy v Republic of Ireland	group stage	Giants Stadium	East Rutherford	Italy	T-57	IRL	0–1	0
469	WC-1994	Colombia v Romania	group stage	Rose Bowl	Pasadena	Colombia	T-58	ROU	1–3	1
470	WC-1994	Belgium v Morocco	group stage	Citrus Bowl	Orlando	Belgium	T-45	MAR	1–0	1
471	WC-1994	Norway v Mexico	group stage	RFK Stadium	Washington, D.C.	Norway	T-44	MEX	1–0	1
472	WC-1994	Cameroon v Sweden	group stage	Rose Bowl	Pasadena	Cameroon	T-71	SWE	2–2	2
473	WC-1994	Brazil v Russia	group stage	Stanford Stadium	Stanford	Brazil	T-59	RUS	2–0	2
474	WC-1994	Netherlands v Saudi Arabia	group stage	RFK Stadium	Washington, D.C.	Netherlands	T-60	SAU	2–1	2
475	WC-1994	Argentina v Greece	group stage	Foxboro Stadium	Foxborough	Argentina	T-31	GRC	4–0	4
476	WC-1994	Germany v Spain	group stage	Soldier Field	Chicago	Germany	T-70	ESP	1–1	1
477	WC-1994	Nigeria v Bulgaria	group stage	Cotton Bowl	Dallas	Nigeria	T-10	BGR	3–0	3
478	WC-1994	Romania v Switzerland	group stage	Pontiac Silverdome	Pontiac	Romania	T-72	CHE	1–4	1
479	WC-1994	United States v Colombia	group stage	Rose Bowl	Pasadena	United States	T-15	COL	2–1	2
480	WC-1994	Italy v Norway	group stage	Giants Stadium	East Rutherford	Italy	T-51	NOR	1–0	1
481	WC-1994	South Korea v Bolivia	group stage	Foxboro Stadium	Foxborough	South Korea	T-07	BOL	0–0	0
482	WC-1994	Mexico v Republic of Ireland	group stage	Citrus Bowl	Orlando	Mexico	T-57	IRL	2–1	2
483	WC-1994	Brazil v Cameroon	group stage	Stanford Stadium	Stanford	Brazil	T-11	CMR	3–0	3
484	WC-1994	Sweden v Russia	group stage	Pontiac Silverdome	Pontiac	Sweden	T-59	RUS	3–1	3
485	WC-1994	Belgium v Netherlands	group stage	Citrus Bowl	Orlando	Belgium	T-46	NLD	1–0	1
486	WC-1994	Saudi Arabia v Morocco	group stage	Giants Stadium	East Rutherford	Saudi Arabia	T-45	MAR	2–1	2
487	WC-1994	Argentina v Nigeria	group stage	Foxboro Stadium	Foxborough	Argentina	T-48	NGA	2–1	2
488	WC-1994	Bulgaria v Greece	group stage	Soldier Field	Chicago	Bulgaria	T-31	GRC	4–0	4
489	WC-1994	Switzerland v Colombia	group stage	Stanford Stadium	Stanford	Switzerland	T-15	COL	0–2	0
490	WC-1994	United States v Romania	group stage	Rose Bowl	Pasadena	United States	T-58	ROU	0–1	0
491	WC-1994	Bolivia v Spain	group stage	Soldier Field	Chicago	Bolivia	T-70	ESP	1–3	1
492	WC-1994	Germany v South Korea	group stage	Cotton Bowl	Dallas	Germany	T-68	KOR	3–2	3
493	WC-1994	Italy v Mexico	group stage	RFK Stadium	Washington, D.C.	Italy	T-44	MEX	1–1	1
494	WC-1994	Republic of Ireland v Norway	group stage	Giants Stadium	East Rutherford	Republic of Ireland	T-51	NOR	0–0	0
495	WC-1994	Russia v Cameroon	group stage	Stanford Stadium	Stanford	Russia	T-11	CMR	6–1	6
496	WC-1994	Brazil v Sweden	group stage	Pontiac Silverdome	Pontiac	Brazil	T-71	SWE	1–1	1
497	WC-1994	Belgium v Saudi Arabia	group stage	RFK Stadium	Washington, D.C.	Belgium	T-60	SAU	0–1	0
498	WC-1994	Morocco v Netherlands	group stage	Citrus Bowl	Orlando	Morocco	T-46	NLD	1–2	1
499	WC-1994	Argentina v Bulgaria	group stage	Cotton Bowl	Dallas	Argentina	T-10	BGR	0–2	0
500	WC-1994	Greece v Nigeria	group stage	Foxboro Stadium	Foxborough	Greece	T-48	NGA	0–2	0
501	WC-1994	Germany v Belgium	round of 16	Soldier Field	Chicago	Germany	T-06	BEL	3–2	3
502	WC-1994	Spain v Switzerland	round of 16	RFK Stadium	Washington, D.C.	Spain	T-72	CHE	3–0	3
503	WC-1994	Saudi Arabia v Sweden	round of 16	Cotton Bowl	Dallas	Saudi Arabia	T-71	SWE	1–3	1
504	WC-1994	Romania v Argentina	round of 16	Rose Bowl	Pasadena	Romania	T-03	ARG	3–2	3
505	WC-1994	Netherlands v Republic of Ireland	round of 16	Citrus Bowl	Orlando	Netherlands	T-57	IRL	2–0	2
506	WC-1994	Brazil v United States	round of 16	Stanford Stadium	Stanford	Brazil	T-79	USA	1–0	1
507	WC-1994	Nigeria v Italy	round of 16	Foxboro Stadium	Foxborough	Nigeria	T-39	ITA	1–2	1
508	WC-1994	Mexico v Bulgaria	round of 16	Giants Stadium	East Rutherford	Mexico	T-10	BGR	1–1	1
509	WC-1994	Italy v Spain	quarter-finals	Foxboro Stadium	Foxborough	Italy	T-70	ESP	2–1	2
510	WC-1994	Netherlands v Brazil	quarter-finals	Cotton Bowl	Dallas	Netherlands	T-09	BRA	2–3	2
511	WC-1994	Bulgaria v Germany	quarter-finals	Giants Stadium	East Rutherford	Bulgaria	T-29	DEU	2–1	2
512	WC-1994	Romania v Sweden	quarter-finals	Stanford Stadium	Stanford	Romania	T-71	SWE	2–2	2
513	WC-1994	Bulgaria v Italy	semi-finals	Giants Stadium	East Rutherford	Bulgaria	T-39	ITA	1–2	1
514	WC-1994	Sweden v Brazil	semi-finals	Rose Bowl	Pasadena	Sweden	T-09	BRA	0–1	0
515	WC-1994	Sweden v Bulgaria	third-place match	Rose Bowl	Pasadena	Sweden	T-10	BGR	4–0	4
516	WC-1994	Brazil v Italy	final	Rose Bowl	Pasadena	Brazil	T-39	ITA	0–0	0
517	WC-1998	Brazil v Scotland	group stage	Stade de France	Saint-Denis	Brazil	T-61	SCO	2–1	2
518	WC-1998	Morocco v Norway	group stage	Stade de la Mosson	Montpellier	Morocco	T-51	NOR	2–2	2
519	WC-1998	Italy v Chile	group stage	Stade du Parc Lescure	Bordeaux	Italy	T-13	CHL	2–2	2
520	WC-1998	Cameroon v Austria	group stage	Stade de Toulouse	Toulouse	Cameroon	T-05	AUT	1–1	1
521	WC-1998	Paraguay v Bulgaria	group stage	Stade de la Mosson	Montpellier	Paraguay	T-10	BGR	0–0	0
522	WC-1998	Saudi Arabia v Denmark	group stage	Stade Félix-Bollaert	Lens	Saudi Arabia	T-21	DNK	0–1	0
523	WC-1998	France v South Africa	group stage	Stade Vélodrome	Marseille	France	T-67	ZAF	3–0	3
524	WC-1998	Spain v Nigeria	group stage	Stade de la Beaujoire	Nantes	Spain	T-48	NGA	2–3	2
525	WC-1998	South Korea v Mexico	group stage	Stade de Gerland	Lyon	South Korea	T-44	MEX	1–3	1
526	WC-1998	Netherlands v Belgium	group stage	Stade de France	Saint-Denis	Netherlands	T-06	BEL	0–0	0
527	WC-1998	Argentina v Japan	group stage	Stade de Toulouse	Toulouse	Argentina	T-42	JPN	1–0	1
528	WC-1998	Yugoslavia v Iran	group stage	Stade Geoffroy-Guichard	Saint-Étienne	Yugoslavia	T-36	IRN	1–0	1
529	WC-1998	Jamaica v Croatia	group stage	Stade Félix-Bollaert	Lens	Jamaica	T-17	HRV	1–3	1
530	WC-1998	England v Tunisia	group stage	Stade Vélodrome	Marseille	England	T-75	TUN	2–0	2
531	WC-1998	Romania v Colombia	group stage	Stade de Gerland	Lyon	Romania	T-15	COL	1–0	1
532	WC-1998	Germany v United States	group stage	Parc des Princes	Paris	Germany	T-79	USA	2–0	2
533	WC-1998	Scotland v Norway	group stage	Stade du Parc Lescure	Bordeaux	Scotland	T-51	NOR	1–1	1
534	WC-1998	Brazil v Morocco	group stage	Stade de la Beaujoire	Nantes	Brazil	T-45	MAR	3–0	3
535	WC-1998	Chile v Austria	group stage	Stade Geoffroy-Guichard	Saint-Étienne	Chile	T-05	AUT	1–1	1
536	WC-1998	Italy v Cameroon	group stage	Stade de la Mosson	Montpellier	Italy	T-11	CMR	3–0	3
537	WC-1998	South Africa v Denmark	group stage	Stade de Toulouse	Toulouse	South Africa	T-21	DNK	1–1	1
538	WC-1998	France v Saudi Arabia	group stage	Stade de France	Saint-Denis	France	T-60	SAU	4–0	4
539	WC-1998	Nigeria v Bulgaria	group stage	Parc des Princes	Paris	Nigeria	T-10	BGR	1–0	1
540	WC-1998	Spain v Paraguay	group stage	Stade Geoffroy-Guichard	Saint-Étienne	Spain	T-53	PRY	0–0	0
541	WC-1998	Japan v Croatia	group stage	Stade de la Beaujoire	Nantes	Japan	T-17	HRV	0–1	0
542	WC-1998	Belgium v Mexico	group stage	Stade du Parc Lescure	Bordeaux	Belgium	T-44	MEX	2–2	2
543	WC-1998	Netherlands v South Korea	group stage	Stade Vélodrome	Marseille	Netherlands	T-68	KOR	5–0	5
544	WC-1998	Germany v Yugoslavia	group stage	Stade Félix-Bollaert	Lens	Germany	T-83	YUG	2–2	2
545	WC-1998	Argentina v Jamaica	group stage	Parc des Princes	Paris	Argentina	T-41	JAM	5–0	5
546	WC-1998	United States v Iran	group stage	Stade de Gerland	Lyon	United States	T-36	IRN	1–2	1
547	WC-1998	Colombia v Tunisia	group stage	Stade de la Mosson	Montpellier	Colombia	T-75	TUN	1–0	1
548	WC-1998	Romania v England	group stage	Stade de Toulouse	Toulouse	Romania	T-27	ENG	2–1	2
549	WC-1998	Chile v Cameroon	group stage	Stade de la Beaujoire	Nantes	Chile	T-11	CMR	1–1	1
550	WC-1998	Italy v Austria	group stage	Stade de France	Saint-Denis	Italy	T-05	AUT	2–1	2
551	WC-1998	Brazil v Norway	group stage	Stade Vélodrome	Marseille	Brazil	T-51	NOR	1–2	1
552	WC-1998	Scotland v Morocco	group stage	Stade Geoffroy-Guichard	Saint-Étienne	Scotland	T-45	MAR	0–3	0
553	WC-1998	France v Denmark	group stage	Stade de Gerland	Lyon	France	T-21	DNK	2–1	2
554	WC-1998	South Africa v Saudi Arabia	group stage	Stade du Parc Lescure	Bordeaux	South Africa	T-60	SAU	2–2	2
555	WC-1998	Nigeria v Paraguay	group stage	Stade de Toulouse	Toulouse	Nigeria	T-53	PRY	1–3	1
556	WC-1998	Spain v Bulgaria	group stage	Stade Félix-Bollaert	Lens	Spain	T-10	BGR	6–1	6
557	WC-1998	Belgium v South Korea	group stage	Parc des Princes	Paris	Belgium	T-68	KOR	1–1	1
558	WC-1998	Netherlands v Mexico	group stage	Stade Geoffroy-Guichard	Saint-Étienne	Netherlands	T-44	MEX	2–2	2
559	WC-1998	Germany v Iran	group stage	Stade de la Mosson	Montpellier	Germany	T-36	IRN	2–0	2
560	WC-1998	United States v Yugoslavia	group stage	Stade de la Beaujoire	Nantes	United States	T-83	YUG	0–1	0
561	WC-1998	Argentina v Croatia	group stage	Stade du Parc Lescure	Bordeaux	Argentina	T-17	HRV	1–0	1
562	WC-1998	Japan v Jamaica	group stage	Stade de Gerland	Lyon	Japan	T-41	JAM	1–2	1
563	WC-1998	Colombia v England	group stage	Stade Félix-Bollaert	Lens	Colombia	T-27	ENG	0–2	0
564	WC-1998	Romania v Tunisia	group stage	Stade de France	Saint-Denis	Romania	T-75	TUN	1–1	1
565	WC-1998	Italy v Norway	round of 16	Stade Vélodrome	Marseille	Italy	T-51	NOR	1–0	1
566	WC-1998	Brazil v Chile	round of 16	Parc des Princes	Paris	Brazil	T-13	CHL	4–1	4
567	WC-1998	France v Paraguay	round of 16	Stade Félix-Bollaert	Lens	France	T-53	PRY	1–0	1
568	WC-1998	Nigeria v Denmark	round of 16	Stade de France	Saint-Denis	Nigeria	T-21	DNK	1–4	1
569	WC-1998	Germany v Mexico	round of 16	Stade de la Mosson	Montpellier	Germany	T-44	MEX	2–1	2
570	WC-1998	Netherlands v Yugoslavia	round of 16	Stade de Toulouse	Toulouse	Netherlands	T-83	YUG	2–1	2
571	WC-1998	Romania v Croatia	round of 16	Stade du Parc Lescure	Bordeaux	Romania	T-17	HRV	0–1	0
572	WC-1998	Argentina v England	round of 16	Stade Geoffroy-Guichard	Saint-Étienne	Argentina	T-27	ENG	2–2	2
573	WC-1998	Italy v France	quarter-finals	Stade de France	Saint-Denis	Italy	T-28	FRA	0–0	0
574	WC-1998	Brazil v Denmark	quarter-finals	Stade de la Beaujoire	Nantes	Brazil	T-21	DNK	3–2	3
575	WC-1998	Netherlands v Argentina	quarter-finals	Stade Vélodrome	Marseille	Netherlands	T-03	ARG	2–1	2
576	WC-1998	Germany v Croatia	quarter-finals	Stade de Gerland	Lyon	Germany	T-17	HRV	0–3	0
577	WC-1998	Brazil v Netherlands	semi-finals	Stade Vélodrome	Marseille	Brazil	T-46	NLD	1–1	1
578	WC-1998	France v Croatia	semi-finals	Stade de France	Saint-Denis	France	T-17	HRV	2–1	2
579	WC-1998	Netherlands v Croatia	third-place match	Parc des Princes	Paris	Netherlands	T-17	HRV	1–2	1
580	WC-1998	Brazil v France	final	Stade de France	Saint-Denis	Brazil	T-28	FRA	0–3	0
581	WC-2002	France v Senegal	group stage	Seoul World Cup Stadium	Seoul	France	T-62	SEN	0–1	0
582	WC-2002	Republic of Ireland v Cameroon	group stage	Niigata Stadium	Niigata	Republic of Ireland	T-11	CMR	1–1	1
583	WC-2002	Uruguay v Denmark	group stage	Ulsan Munsu Football Stadium	Ulsan	Uruguay	T-21	DNK	1–2	1
584	WC-2002	Germany v Saudi Arabia	group stage	Sapporo Dome	Sapporo	Germany	T-60	SAU	8–0	8
585	WC-2002	Argentina v Nigeria	group stage	Kashima Stadium	Ibaraki	Argentina	T-48	NGA	1–0	1
586	WC-2002	Paraguay v South Africa	group stage	Busan Asiad Stadium	Busan	Paraguay	T-67	ZAF	2–2	2
587	WC-2002	England v Sweden	group stage	Saitama Stadium	Saitama	England	T-71	SWE	1–1	1
588	WC-2002	Spain v Slovenia	group stage	Gwangju World Cup Stadium	Gwangju	Spain	T-66	SVN	3–1	3
589	WC-2002	Croatia v Mexico	group stage	Niigata Stadium	Niigata	Croatia	T-44	MEX	0–1	0
590	WC-2002	Brazil v Turkey	group stage	Ulsan Munsu Football Stadium	Ulsan	Brazil	T-76	TUR	2–1	2
591	WC-2002	Italy v Ecuador	group stage	Sapporo Dome	Sapporo	Italy	T-24	ECU	2–0	2
592	WC-2002	China v Costa Rica	group stage	Gwangju World Cup Stadium	Gwangju	China	T-16	CRI	0–2	0
593	WC-2002	Japan v Belgium	group stage	Saitama Stadium	Saitama	Japan	T-06	BEL	2–2	2
594	WC-2002	South Korea v Poland	group stage	Busan Asiad Stadium	Busan	South Korea	T-55	POL	2–0	2
595	WC-2002	Russia v Tunisia	group stage	Kobe Wing Stadium	Kobe	Russia	T-75	TUN	2–0	2
596	WC-2002	United States v Portugal	group stage	Suwon World Cup Stadium	Suwon	United States	T-56	PRT	3–2	3
597	WC-2002	Germany v Republic of Ireland	group stage	Kashima Stadium	Ibaraki	Germany	T-57	IRL	1–1	1
598	WC-2002	Denmark v Senegal	group stage	Daegu World Cup Stadium	Daegu	Denmark	T-62	SEN	1–1	1
599	WC-2002	Cameroon v Saudi Arabia	group stage	Saitama Stadium	Saitama	Cameroon	T-60	SAU	1–0	1
600	WC-2002	France v Uruguay	group stage	Busan Asiad Stadium	Busan	France	T-80	URY	0–0	0
601	WC-2002	Sweden v Nigeria	group stage	Kobe Wing Stadium	Kobe	Sweden	T-48	NGA	2–1	2
602	WC-2002	Spain v Paraguay	group stage	Jeonju World Cup Stadium	Jeonju	Spain	T-53	PRY	3–1	3
603	WC-2002	Argentina v England	group stage	Sapporo Dome	Sapporo	Argentina	T-27	ENG	0–1	0
604	WC-2002	South Africa v Slovenia	group stage	Daegu World Cup Stadium	Daegu	South Africa	T-66	SVN	1–0	1
605	WC-2002	Italy v Croatia	group stage	Kashima Stadium	Ibaraki	Italy	T-17	HRV	1–2	1
606	WC-2002	Brazil v China	group stage	Jeju World Cup Stadium	Seogwipo	Brazil	T-14	CHN	4–0	4
607	WC-2002	Mexico v Ecuador	group stage	Miyagi Stadium	Miyagi	Mexico	T-24	ECU	2–1	2
608	WC-2002	Costa Rica v Turkey	group stage	Incheon Munhak Stadium	Incheon	Costa Rica	T-76	TUR	1–1	1
609	WC-2002	Japan v Russia	group stage	International Stadium Yokohama	Yokohama	Japan	T-59	RUS	1–0	1
610	WC-2002	South Korea v United States	group stage	Daegu World Cup Stadium	Daegu	South Korea	T-79	USA	1–1	1
611	WC-2002	Tunisia v Belgium	group stage	Ōita Stadium	Ōita	Tunisia	T-06	BEL	1–1	1
612	WC-2002	Portugal v Poland	group stage	Jeonju World Cup Stadium	Jeonju	Portugal	T-55	POL	4–0	4
613	WC-2002	Denmark v France	group stage	Incheon Munhak Stadium	Incheon	Denmark	T-28	FRA	2–0	2
614	WC-2002	Senegal v Uruguay	group stage	Suwon World Cup Stadium	Suwon	Senegal	T-80	URY	3–3	3
615	WC-2002	Cameroon v Germany	group stage	Shizuoka Stadium ECOPA	Shizuoka	Cameroon	T-29	DEU	0–2	0
616	WC-2002	Saudi Arabia v Republic of Ireland	group stage	International Stadium Yokohama	Yokohama	Saudi Arabia	T-57	IRL	0–3	0
617	WC-2002	Nigeria v England	group stage	Nagai Stadium	Osaka	Nigeria	T-27	ENG	0–0	0
618	WC-2002	Sweden v Argentina	group stage	Miyagi Stadium	Miyagi	Sweden	T-03	ARG	1–1	1
619	WC-2002	Slovenia v Paraguay	group stage	Jeju World Cup Stadium	Seogwipo	Slovenia	T-53	PRY	1–3	1
620	WC-2002	South Africa v Spain	group stage	Daejeon World Cup Stadium	Daejeon	South Africa	T-70	ESP	2–3	2
621	WC-2002	Costa Rica v Brazil	group stage	Suwon World Cup Stadium	Suwon	Costa Rica	T-09	BRA	2–5	2
622	WC-2002	Turkey v China	group stage	Seoul World Cup Stadium	Seoul	Turkey	T-14	CHN	3–0	3
623	WC-2002	Ecuador v Croatia	group stage	International Stadium Yokohama	Yokohama	Ecuador	T-17	HRV	1–0	1
624	WC-2002	Mexico v Italy	group stage	Ōita Stadium	Ōita	Mexico	T-39	ITA	1–1	1
625	WC-2002	Belgium v Russia	group stage	Shizuoka Stadium ECOPA	Shizuoka	Belgium	T-59	RUS	3–2	3
626	WC-2002	Tunisia v Japan	group stage	Nagai Stadium	Osaka	Tunisia	T-42	JPN	0–2	0
627	WC-2002	Poland v United States	group stage	Daejeon World Cup Stadium	Daejeon	Poland	T-79	USA	3–1	3
628	WC-2002	Portugal v South Korea	group stage	Incheon Munhak Stadium	Incheon	Portugal	T-68	KOR	0–1	0
629	WC-2002	Germany v Paraguay	round of 16	Jeju World Cup Stadium	Seogwipo	Germany	T-53	PRY	1–0	1
630	WC-2002	Denmark v England	round of 16	Niigata Stadium	Niigata	Denmark	T-27	ENG	0–3	0
631	WC-2002	Sweden v Senegal	round of 16	Ōita Stadium	Ōita	Sweden	T-62	SEN	1–2	1
632	WC-2002	Spain v Republic of Ireland	round of 16	Suwon World Cup Stadium	Suwon	Spain	T-57	IRL	1–1	1
633	WC-2002	Mexico v United States	round of 16	Jeonju World Cup Stadium	Jeonju	Mexico	T-79	USA	0–2	0
634	WC-2002	Brazil v Belgium	round of 16	Kobe Wing Stadium	Kobe	Brazil	T-06	BEL	2–0	2
635	WC-2002	Japan v Turkey	round of 16	Miyagi Stadium	Miyagi	Japan	T-76	TUR	0–1	0
636	WC-2002	South Korea v Italy	round of 16	Daejeon World Cup Stadium	Daejeon	South Korea	T-39	ITA	2–1	2
637	WC-2002	England v Brazil	quarter-finals	Shizuoka Stadium ECOPA	Shizuoka	England	T-09	BRA	1–2	1
638	WC-2002	Germany v United States	quarter-finals	Ulsan Munsu Football Stadium	Ulsan	Germany	T-79	USA	1–0	1
639	WC-2002	Spain v South Korea	quarter-finals	Gwangju World Cup Stadium	Gwangju	Spain	T-68	KOR	0–0	0
640	WC-2002	Senegal v Turkey	quarter-finals	Nagai Stadium	Osaka	Senegal	T-76	TUR	0–1	0
641	WC-2002	Germany v South Korea	semi-finals	Seoul World Cup Stadium	Seoul	Germany	T-68	KOR	1–0	1
642	WC-2002	Brazil v Turkey	semi-finals	Saitama Stadium	Saitama	Brazil	T-76	TUR	1–0	1
643	WC-2002	South Korea v Turkey	third-place match	Daegu World Cup Stadium	Daegu	South Korea	T-76	TUR	2–3	2
644	WC-2002	Germany v Brazil	final	International Stadium Yokohama	Yokohama	Germany	T-09	BRA	0–2	0
645	WC-2006	Germany v Costa Rica	group stage	Allianz Arena	Munich	Germany	T-16	CRI	4–2	4
646	WC-2006	Poland v Ecuador	group stage	Arena AufShalke	Gelsenkirchen	Poland	T-24	ECU	0–2	0
647	WC-2006	England v Paraguay	group stage	Waldstadion	Frankfurt	England	T-53	PRY	1–0	1
648	WC-2006	Trinidad and Tobago v Sweden	group stage	Westfalenstadion	Dortmund	Trinidad and Tobago	T-71	SWE	0–0	0
649	WC-2006	Argentina v Ivory Coast	group stage	Volksparkstadion	Hamburg	Argentina	T-40	CIV	2–1	2
650	WC-2006	Serbia and Montenegro v Netherlands	group stage	Zentralstadion	Leipzig	Serbia and Montenegro	T-46	NLD	0–1	0
651	WC-2006	Mexico v Iran	group stage	Frankenstadion	Nuremberg	Mexico	T-36	IRN	3–1	3
652	WC-2006	Angola v Portugal	group stage	RheinEnergieStadion	Cologne	Angola	T-56	PRT	0–1	0
653	WC-2006	Australia v Japan	group stage	Fritz-Walter-Stadion	Kaiserslautern	Australia	T-42	JPN	3–1	3
654	WC-2006	United States v Czech Republic	group stage	Arena AufShalke	Gelsenkirchen	United States	T-19	CZE	0–3	0
655	WC-2006	Italy v Ghana	group stage	Niedersachsenstadion	Hanover	Italy	T-30	GHA	2–0	2
656	WC-2006	South Korea v Togo	group stage	Waldstadion	Frankfurt	South Korea	T-73	TGO	2–1	2
657	WC-2006	France v Switzerland	group stage	Neckarstadion	Stuttgart	France	T-72	CHE	0–0	0
658	WC-2006	Brazil v Croatia	group stage	Olympiastadion	Berlin	Brazil	T-17	HRV	1–0	1
659	WC-2006	Spain v Ukraine	group stage	Zentralstadion	Leipzig	Spain	T-77	UKR	4–0	4
660	WC-2006	Tunisia v Saudi Arabia	group stage	Allianz Arena	Munich	Tunisia	T-60	SAU	2–2	2
661	WC-2006	Germany v Poland	group stage	Westfalenstadion	Dortmund	Germany	T-55	POL	1–0	1
662	WC-2006	Ecuador v Costa Rica	group stage	Volksparkstadion	Hamburg	Ecuador	T-16	CRI	3–0	3
663	WC-2006	England v Trinidad and Tobago	group stage	Frankenstadion	Nuremberg	England	T-74	TTO	2–0	2
664	WC-2006	Sweden v Paraguay	group stage	Olympiastadion	Berlin	Sweden	T-53	PRY	1–0	1
665	WC-2006	Argentina v Serbia and Montenegro	group stage	Arena AufShalke	Gelsenkirchen	Argentina	T-64	SCG	6–0	6
666	WC-2006	Netherlands v Ivory Coast	group stage	Neckarstadion	Stuttgart	Netherlands	T-40	CIV	2–1	2
667	WC-2006	Mexico v Angola	group stage	Niedersachsenstadion	Hanover	Mexico	T-02	AGO	0–0	0
668	WC-2006	Portugal v Iran	group stage	Waldstadion	Frankfurt	Portugal	T-36	IRN	2–0	2
669	WC-2006	Czech Republic v Ghana	group stage	RheinEnergieStadion	Cologne	Czech Republic	T-30	GHA	0–2	0
670	WC-2006	Italy v United States	group stage	Fritz-Walter-Stadion	Kaiserslautern	Italy	T-79	USA	1–1	1
671	WC-2006	Japan v Croatia	group stage	Frankenstadion	Nuremberg	Japan	T-17	HRV	0–0	0
672	WC-2006	Brazil v Australia	group stage	Allianz Arena	Munich	Brazil	T-04	AUS	2–0	2
673	WC-2006	France v South Korea	group stage	Zentralstadion	Leipzig	France	T-68	KOR	1–1	1
674	WC-2006	Togo v Switzerland	group stage	Westfalenstadion	Dortmund	Togo	T-72	CHE	0–2	0
675	WC-2006	Saudi Arabia v Ukraine	group stage	Volksparkstadion	Hamburg	Saudi Arabia	T-77	UKR	0–4	0
676	WC-2006	Spain v Tunisia	group stage	Neckarstadion	Stuttgart	Spain	T-75	TUN	3–1	3
677	WC-2006	Costa Rica v Poland	group stage	Niedersachsenstadion	Hanover	Costa Rica	T-55	POL	1–2	1
678	WC-2006	Ecuador v Germany	group stage	Olympiastadion	Berlin	Ecuador	T-29	DEU	0–3	0
679	WC-2006	Paraguay v Trinidad and Tobago	group stage	Fritz-Walter-Stadion	Kaiserslautern	Paraguay	T-74	TTO	2–0	2
680	WC-2006	Sweden v England	group stage	RheinEnergieStadion	Cologne	Sweden	T-27	ENG	2–2	2
681	WC-2006	Iran v Angola	group stage	Zentralstadion	Leipzig	Iran	T-02	AGO	1–1	1
682	WC-2006	Portugal v Mexico	group stage	Arena AufShalke	Gelsenkirchen	Portugal	T-44	MEX	2–1	2
683	WC-2006	Ivory Coast v Serbia and Montenegro	group stage	Allianz Arena	Munich	Ivory Coast	T-64	SCG	3–2	3
684	WC-2006	Netherlands v Argentina	group stage	Waldstadion	Frankfurt	Netherlands	T-03	ARG	0–0	0
685	WC-2006	Czech Republic v Italy	group stage	Volksparkstadion	Hamburg	Czech Republic	T-39	ITA	0–2	0
686	WC-2006	Ghana v United States	group stage	Frankenstadion	Nuremberg	Ghana	T-79	USA	2–1	2
687	WC-2006	Croatia v Australia	group stage	Neckarstadion	Stuttgart	Croatia	T-04	AUS	2–2	2
688	WC-2006	Japan v Brazil	group stage	Westfalenstadion	Dortmund	Japan	T-09	BRA	1–4	1
689	WC-2006	Saudi Arabia v Spain	group stage	Fritz-Walter-Stadion	Kaiserslautern	Saudi Arabia	T-70	ESP	0–1	0
690	WC-2006	Ukraine v Tunisia	group stage	Olympiastadion	Berlin	Ukraine	T-75	TUN	1–0	1
691	WC-2006	Switzerland v South Korea	group stage	Niedersachsenstadion	Hanover	Switzerland	T-68	KOR	2–0	2
692	WC-2006	Togo v France	group stage	RheinEnergieStadion	Cologne	Togo	T-28	FRA	0–2	0
693	WC-2006	Germany v Sweden	round of 16	Allianz Arena	Munich	Germany	T-71	SWE	2–0	2
694	WC-2006	Argentina v Mexico	round of 16	Zentralstadion	Leipzig	Argentina	T-44	MEX	2–1	2
695	WC-2006	England v Ecuador	round of 16	Neckarstadion	Stuttgart	England	T-24	ECU	1–0	1
696	WC-2006	Portugal v Netherlands	round of 16	Frankenstadion	Nuremberg	Portugal	T-46	NLD	1–0	1
697	WC-2006	Italy v Australia	round of 16	Fritz-Walter-Stadion	Kaiserslautern	Italy	T-04	AUS	1–0	1
698	WC-2006	Switzerland v Ukraine	round of 16	RheinEnergieStadion	Cologne	Switzerland	T-77	UKR	0–0	0
699	WC-2006	Brazil v Ghana	round of 16	Westfalenstadion	Dortmund	Brazil	T-30	GHA	3–0	3
700	WC-2006	Spain v France	round of 16	Niedersachsenstadion	Hanover	Spain	T-28	FRA	1–3	1
701	WC-2006	Germany v Argentina	quarter-finals	Olympiastadion	Berlin	Germany	T-03	ARG	1–1	1
702	WC-2006	Italy v Ukraine	quarter-finals	Volksparkstadion	Hamburg	Italy	T-77	UKR	3–0	3
703	WC-2006	England v Portugal	quarter-finals	Arena AufShalke	Gelsenkirchen	England	T-56	PRT	0–0	0
704	WC-2006	Brazil v France	quarter-finals	Waldstadion	Frankfurt	Brazil	T-28	FRA	0–1	0
705	WC-2006	Germany v Italy	semi-finals	Westfalenstadion	Dortmund	Germany	T-39	ITA	0–2	0
706	WC-2006	Portugal v France	semi-finals	Allianz Arena	Munich	Portugal	T-28	FRA	0–1	0
707	WC-2006	Germany v Portugal	third-place match	Neckarstadion	Stuttgart	Germany	T-56	PRT	3–1	3
708	WC-2006	Italy v France	final	Olympiastadion	Berlin	Italy	T-28	FRA	1–1	1
709	WC-2010	South Africa v Mexico	group stage	Soccer City	Johannesburg	South Africa	T-44	MEX	1–1	1
710	WC-2010	Uruguay v France	group stage	Cape Town Stadium	Cape Town	Uruguay	T-28	FRA	0–0	0
711	WC-2010	South Korea v Greece	group stage	Nelson Mandela Bay Stadium	Port Elizabeth	South Korea	T-31	GRC	2–0	2
712	WC-2010	Argentina v Nigeria	group stage	Ellis Park Stadium	Johannesburg	Argentina	T-48	NGA	1–0	1
713	WC-2010	England v United States	group stage	Royal Bafokeng Stadium	Rustenburg	England	T-79	USA	1–1	1
714	WC-2010	Algeria v Slovenia	group stage	Peter Mokaba Stadium	Polokwane	Algeria	T-66	SVN	0–1	0
715	WC-2010	Serbia v Ghana	group stage	Loftus Versfeld Stadium	Pretoria	Serbia	T-30	GHA	0–1	0
716	WC-2010	Germany v Australia	group stage	Moses Mabhida Stadium	Durban	Germany	T-04	AUS	4–0	4
717	WC-2010	Netherlands v Denmark	group stage	Soccer City	Johannesburg	Netherlands	T-21	DNK	2–0	2
718	WC-2010	Japan v Cameroon	group stage	Free State Stadium	Bloemfontein	Japan	T-11	CMR	1–0	1
719	WC-2010	Italy v Paraguay	group stage	Cape Town Stadium	Cape Town	Italy	T-53	PRY	1–1	1
720	WC-2010	New Zealand v Slovakia	group stage	Royal Bafokeng Stadium	Rustenburg	New Zealand	T-65	SVK	1–1	1
721	WC-2010	Ivory Coast v Portugal	group stage	Nelson Mandela Bay Stadium	Port Elizabeth	Ivory Coast	T-56	PRT	0–0	0
722	WC-2010	Brazil v North Korea	group stage	Ellis Park Stadium	Johannesburg	Brazil	T-49	PRK	2–1	2
723	WC-2010	Honduras v Chile	group stage	Mbombela Stadium	Nelspruit	Honduras	T-13	CHL	0–1	0
724	WC-2010	Spain v Switzerland	group stage	Moses Mabhida Stadium	Durban	Spain	T-72	CHE	0–1	0
725	WC-2010	South Africa v Uruguay	group stage	Loftus Versfeld Stadium	Pretoria	South Africa	T-80	URY	0–3	0
726	WC-2010	Argentina v South Korea	group stage	Soccer City	Johannesburg	Argentina	T-68	KOR	4–1	4
727	WC-2010	Greece v Nigeria	group stage	Free State Stadium	Bloemfontein	Greece	T-48	NGA	2–1	2
728	WC-2010	France v Mexico	group stage	Peter Mokaba Stadium	Polokwane	France	T-44	MEX	0–2	0
729	WC-2010	Germany v Serbia	group stage	Nelson Mandela Bay Stadium	Port Elizabeth	Germany	T-63	SRB	0–1	0
730	WC-2010	Slovenia v United States	group stage	Ellis Park Stadium	Johannesburg	Slovenia	T-79	USA	2–2	2
731	WC-2010	England v Algeria	group stage	Cape Town Stadium	Cape Town	England	T-01	DZA	0–0	0
732	WC-2010	Netherlands v Japan	group stage	Moses Mabhida Stadium	Durban	Netherlands	T-42	JPN	1–0	1
733	WC-2010	Ghana v Australia	group stage	Royal Bafokeng Stadium	Rustenburg	Ghana	T-04	AUS	1–1	1
734	WC-2010	Cameroon v Denmark	group stage	Loftus Versfeld Stadium	Pretoria	Cameroon	T-21	DNK	1–2	1
735	WC-2010	Slovakia v Paraguay	group stage	Free State Stadium	Bloemfontein	Slovakia	T-53	PRY	0–2	0
736	WC-2010	Italy v New Zealand	group stage	Mbombela Stadium	Nelspruit	Italy	T-47	NZL	1–1	1
737	WC-2010	Brazil v Ivory Coast	group stage	Soccer City	Johannesburg	Brazil	T-40	CIV	3–1	3
738	WC-2010	Portugal v North Korea	group stage	Cape Town Stadium	Cape Town	Portugal	T-49	PRK	7–0	7
739	WC-2010	Chile v Switzerland	group stage	Nelson Mandela Bay Stadium	Port Elizabeth	Chile	T-72	CHE	1–0	1
740	WC-2010	Spain v Honduras	group stage	Ellis Park Stadium	Johannesburg	Spain	T-33	HND	2–0	2
741	WC-2010	France v South Africa	group stage	Free State Stadium	Bloemfontein	France	T-67	ZAF	1–2	1
742	WC-2010	Mexico v Uruguay	group stage	Royal Bafokeng Stadium	Rustenburg	Mexico	T-80	URY	0–1	0
743	WC-2010	Greece v Argentina	group stage	Peter Mokaba Stadium	Polokwane	Greece	T-03	ARG	0–2	0
744	WC-2010	Nigeria v South Korea	group stage	Moses Mabhida Stadium	Durban	Nigeria	T-68	KOR	2–2	2
745	WC-2010	Slovenia v England	group stage	Nelson Mandela Bay Stadium	Port Elizabeth	Slovenia	T-27	ENG	0–1	0
746	WC-2010	United States v Algeria	group stage	Loftus Versfeld Stadium	Pretoria	United States	T-01	DZA	1–0	1
747	WC-2010	Australia v Serbia	group stage	Mbombela Stadium	Nelspruit	Australia	T-63	SRB	2–1	2
748	WC-2010	Ghana v Germany	group stage	Soccer City	Johannesburg	Ghana	T-29	DEU	0–1	0
749	WC-2010	Paraguay v New Zealand	group stage	Peter Mokaba Stadium	Polokwane	Paraguay	T-47	NZL	0–0	0
750	WC-2010	Slovakia v Italy	group stage	Ellis Park Stadium	Johannesburg	Slovakia	T-39	ITA	3–2	3
751	WC-2010	Cameroon v Netherlands	group stage	Cape Town Stadium	Cape Town	Cameroon	T-46	NLD	1–2	1
752	WC-2010	Denmark v Japan	group stage	Royal Bafokeng Stadium	Rustenburg	Denmark	T-42	JPN	1–3	1
753	WC-2010	North Korea v Ivory Coast	group stage	Mbombela Stadium	Nelspruit	North Korea	T-40	CIV	0–3	0
754	WC-2010	Portugal v Brazil	group stage	Moses Mabhida Stadium	Durban	Portugal	T-09	BRA	0–0	0
755	WC-2010	Chile v Spain	group stage	Loftus Versfeld Stadium	Pretoria	Chile	T-70	ESP	1–2	1
756	WC-2010	Switzerland v Honduras	group stage	Free State Stadium	Bloemfontein	Switzerland	T-33	HND	0–0	0
757	WC-2010	Uruguay v South Korea	round of 16	Nelson Mandela Bay Stadium	Port Elizabeth	Uruguay	T-68	KOR	2–1	2
758	WC-2010	United States v Ghana	round of 16	Royal Bafokeng Stadium	Rustenburg	United States	T-30	GHA	1–2	1
759	WC-2010	Germany v England	round of 16	Free State Stadium	Bloemfontein	Germany	T-27	ENG	4–1	4
760	WC-2010	Argentina v Mexico	round of 16	Soccer City	Johannesburg	Argentina	T-44	MEX	3–1	3
761	WC-2010	Netherlands v Slovakia	round of 16	Moses Mabhida Stadium	Durban	Netherlands	T-65	SVK	2–1	2
762	WC-2010	Brazil v Chile	round of 16	Ellis Park Stadium	Johannesburg	Brazil	T-13	CHL	3–0	3
763	WC-2010	Paraguay v Japan	round of 16	Loftus Versfeld Stadium	Pretoria	Paraguay	T-42	JPN	0–0	0
764	WC-2010	Spain v Portugal	round of 16	Cape Town Stadium	Cape Town	Spain	T-56	PRT	1–0	1
765	WC-2010	Netherlands v Brazil	quarter-finals	Nelson Mandela Bay Stadium	Port Elizabeth	Netherlands	T-09	BRA	2–1	2
766	WC-2010	Uruguay v Ghana	quarter-finals	Soccer City	Johannesburg	Uruguay	T-30	GHA	1–1	1
767	WC-2010	Argentina v Germany	quarter-finals	Cape Town Stadium	Cape Town	Argentina	T-29	DEU	0–4	0
768	WC-2010	Paraguay v Spain	quarter-finals	Ellis Park Stadium	Johannesburg	Paraguay	T-70	ESP	0–1	0
769	WC-2010	Uruguay v Netherlands	semi-finals	Cape Town Stadium	Cape Town	Uruguay	T-46	NLD	2–3	2
770	WC-2010	Germany v Spain	semi-finals	Moses Mabhida Stadium	Durban	Germany	T-70	ESP	0–1	0
771	WC-2010	Uruguay v Germany	third-place match	Nelson Mandela Bay Stadium	Port Elizabeth	Uruguay	T-29	DEU	2–3	2
772	WC-2010	Netherlands v Spain	final	Soccer City	Johannesburg	Netherlands	T-70	ESP	0–1	0
773	WC-2014	Brazil v Croatia	group stage	Arena Corinthians	São Paulo	Brazil	T-17	HRV	3–1	3
774	WC-2014	Mexico v Cameroon	group stage	Arena das Dunas	Natal	Mexico	T-11	CMR	1–0	1
775	WC-2014	Spain v Netherlands	group stage	Arena Fonte Nova	Salvador	Spain	T-46	NLD	1–5	1
776	WC-2014	Chile v Australia	group stage	Arena Pantanal	Cuiabá	Chile	T-04	AUS	3–1	3
777	WC-2014	Colombia v Greece	group stage	Estádio Mineirão	Belo Horizonte	Colombia	T-31	GRC	3–0	3
778	WC-2014	Uruguay v Costa Rica	group stage	Estádio Castelão	Fortaleza	Uruguay	T-16	CRI	1–3	1
779	WC-2014	England v Italy	group stage	Arena da Amazônia	Manaus	England	T-39	ITA	1–2	1
780	WC-2014	Ivory Coast v Japan	group stage	Arena Pernambuco	Recife	Ivory Coast	T-42	JPN	2–1	2
781	WC-2014	Switzerland v Ecuador	group stage	Estádio Nacional	Brasília	Switzerland	T-24	ECU	2–1	2
782	WC-2014	France v Honduras	group stage	Estádio Beira-Rio	Porto Alegre	France	T-33	HND	3–0	3
783	WC-2014	Argentina v Bosnia and Herzegovina	group stage	Estádio do Maracanã	Rio de Janeiro	Argentina	T-08	BIH	2–1	2
784	WC-2014	Germany v Portugal	group stage	Arena Fonte Nova	Salvador	Germany	T-56	PRT	4–0	4
785	WC-2014	Iran v Nigeria	group stage	Arena da Baixada	Curitiba	Iran	T-48	NGA	0–0	0
786	WC-2014	Ghana v United States	group stage	Arena das Dunas	Natal	Ghana	T-79	USA	1–2	1
787	WC-2014	Belgium v Algeria	group stage	Estádio Mineirão	Belo Horizonte	Belgium	T-01	DZA	2–1	2
788	WC-2014	Brazil v Mexico	group stage	Estádio Castelão	Fortaleza	Brazil	T-44	MEX	0–0	0
789	WC-2014	Russia v South Korea	group stage	Arena Pantanal	Cuiabá	Russia	T-68	KOR	1–1	1
790	WC-2014	Australia v Netherlands	group stage	Estádio Beira-Rio	Porto Alegre	Australia	T-46	NLD	2–3	2
791	WC-2014	Spain v Chile	group stage	Estádio do Maracanã	Rio de Janeiro	Spain	T-13	CHL	0–2	0
792	WC-2014	Cameroon v Croatia	group stage	Arena da Amazônia	Manaus	Cameroon	T-17	HRV	0–4	0
793	WC-2014	Colombia v Ivory Coast	group stage	Estádio Nacional	Brasília	Colombia	T-40	CIV	2–1	2
794	WC-2014	Uruguay v England	group stage	Arena Corinthians	São Paulo	Uruguay	T-27	ENG	2–1	2
795	WC-2014	Japan v Greece	group stage	Arena das Dunas	Natal	Japan	T-31	GRC	0–0	0
796	WC-2014	Italy v Costa Rica	group stage	Arena Pernambuco	Recife	Italy	T-16	CRI	0–1	0
797	WC-2014	Switzerland v France	group stage	Arena Fonte Nova	Salvador	Switzerland	T-28	FRA	2–5	2
798	WC-2014	Honduras v Ecuador	group stage	Arena da Baixada	Curitiba	Honduras	T-24	ECU	1–2	1
799	WC-2014	Argentina v Iran	group stage	Estádio Mineirão	Belo Horizonte	Argentina	T-36	IRN	1–0	1
800	WC-2014	Germany v Ghana	group stage	Estádio Castelão	Fortaleza	Germany	T-30	GHA	2–2	2
801	WC-2014	Nigeria v Bosnia and Herzegovina	group stage	Arena Pantanal	Cuiabá	Nigeria	T-08	BIH	1–0	1
802	WC-2014	Belgium v Russia	group stage	Estádio do Maracanã	Rio de Janeiro	Belgium	T-59	RUS	1–0	1
803	WC-2014	South Korea v Algeria	group stage	Estádio Beira-Rio	Porto Alegre	South Korea	T-01	DZA	2–4	2
804	WC-2014	United States v Portugal	group stage	Arena da Amazônia	Manaus	United States	T-56	PRT	2–2	2
805	WC-2014	Australia v Spain	group stage	Arena da Baixada	Curitiba	Australia	T-70	ESP	0–3	0
806	WC-2014	Netherlands v Chile	group stage	Arena Corinthians	São Paulo	Netherlands	T-13	CHL	2–0	2
807	WC-2014	Cameroon v Brazil	group stage	Estádio Nacional	Brasília	Cameroon	T-09	BRA	1–4	1
808	WC-2014	Croatia v Mexico	group stage	Arena Pernambuco	Recife	Croatia	T-44	MEX	1–3	1
809	WC-2014	Costa Rica v England	group stage	Estádio Mineirão	Belo Horizonte	Costa Rica	T-27	ENG	0–0	0
810	WC-2014	Italy v Uruguay	group stage	Arena das Dunas	Natal	Italy	T-80	URY	0–1	0
811	WC-2014	Japan v Colombia	group stage	Arena Pantanal	Cuiabá	Japan	T-15	COL	1–4	1
812	WC-2014	Greece v Ivory Coast	group stage	Estádio Castelão	Fortaleza	Greece	T-40	CIV	2–1	2
813	WC-2014	Bosnia and Herzegovina v Iran	group stage	Arena Fonte Nova	Salvador	Bosnia and Herzegovina	T-36	IRN	3–1	3
814	WC-2014	Nigeria v Argentina	group stage	Estádio Beira-Rio	Porto Alegre	Nigeria	T-03	ARG	2–3	2
815	WC-2014	Honduras v Switzerland	group stage	Arena da Amazônia	Manaus	Honduras	T-72	CHE	0–3	0
816	WC-2014	Ecuador v France	group stage	Estádio do Maracanã	Rio de Janeiro	Ecuador	T-28	FRA	0–0	0
817	WC-2014	Portugal v Ghana	group stage	Estádio Nacional	Brasília	Portugal	T-30	GHA	2–1	2
818	WC-2014	United States v Germany	group stage	Arena Pernambuco	Recife	United States	T-29	DEU	0–1	0
819	WC-2014	Algeria v Russia	group stage	Arena da Baixada	Curitiba	Algeria	T-59	RUS	1–1	1
820	WC-2014	South Korea v Belgium	group stage	Arena Corinthians	São Paulo	South Korea	T-06	BEL	0–1	0
821	WC-2014	Brazil v Chile	round of 16	Estádio Mineirão	Belo Horizonte	Brazil	T-13	CHL	1–1	1
822	WC-2014	Colombia v Uruguay	round of 16	Estádio do Maracanã	Rio de Janeiro	Colombia	T-80	URY	2–0	2
823	WC-2014	Netherlands v Mexico	round of 16	Estádio Castelão	Fortaleza	Netherlands	T-44	MEX	2–1	2
824	WC-2014	Costa Rica v Greece	round of 16	Arena Pernambuco	Recife	Costa Rica	T-31	GRC	1–1	1
825	WC-2014	France v Nigeria	round of 16	Estádio Nacional	Brasília	France	T-48	NGA	2–0	2
826	WC-2014	Germany v Algeria	round of 16	Estádio Beira-Rio	Porto Alegre	Germany	T-01	DZA	2–1	2
827	WC-2014	Argentina v Switzerland	round of 16	Arena Corinthians	São Paulo	Argentina	T-72	CHE	1–0	1
828	WC-2014	Belgium v United States	round of 16	Arena Fonte Nova	Salvador	Belgium	T-79	USA	2–1	2
829	WC-2014	France v Germany	quarter-finals	Estádio do Maracanã	Rio de Janeiro	France	T-29	DEU	0–1	0
830	WC-2014	Brazil v Colombia	quarter-finals	Estádio Castelão	Fortaleza	Brazil	T-15	COL	2–1	2
831	WC-2014	Argentina v Belgium	quarter-finals	Estádio Nacional	Brasília	Argentina	T-06	BEL	1–0	1
832	WC-2014	Netherlands v Costa Rica	quarter-finals	Arena Fonte Nova	Salvador	Netherlands	T-16	CRI	0–0	0
833	WC-2014	Brazil v Germany	semi-finals	Estádio Mineirão	Belo Horizonte	Brazil	T-29	DEU	1–7	1
834	WC-2014	Netherlands v Argentina	semi-finals	Arena Corinthians	São Paulo	Netherlands	T-03	ARG	0–0	0
835	WC-2014	Brazil v Netherlands	third-place match	Estádio Nacional	Brasília	Brazil	T-46	NLD	0–3	0
836	WC-2014	Germany v Argentina	final	Estádio do Maracanã	Rio de Janeiro	Germany	T-03	ARG	1–0	1
837	WC-2018	Russia v Saudi Arabia	group stage	Luzhniki Stadium	Moscow	Russia	T-60	SAU	5–0	5
838	WC-2018	Egypt v Uruguay	group stage	Central Stadium	Yekaterinburg	Egypt	T-80	URY	0–1	0
839	WC-2018	Morocco v Iran	group stage	Krestovsky Stadium	Saint Petersburg	Morocco	T-36	IRN	0–1	0
840	WC-2018	Portugal v Spain	group stage	Fisht Olympic Stadium	Sochi	Portugal	T-70	ESP	3–3	3
841	WC-2018	France v Australia	group stage	Kazan Arena	Kazan	France	T-04	AUS	2–1	2
842	WC-2018	Argentina v Iceland	group stage	Otkritie Arena	Moscow	Argentina	T-35	ISL	1–1	1
843	WC-2018	Peru v Denmark	group stage	Mordovia Arena	Saransk	Peru	T-21	DNK	0–1	0
844	WC-2018	Croatia v Nigeria	group stage	Kaliningrad Stadium	Kaliningrad	Croatia	T-48	NGA	2–0	2
845	WC-2018	Costa Rica v Serbia	group stage	Samara Arena	Samara	Costa Rica	T-63	SRB	0–1	0
846	WC-2018	Germany v Mexico	group stage	Luzhniki Stadium	Moscow	Germany	T-44	MEX	0–1	0
847	WC-2018	Brazil v Switzerland	group stage	Rostov Arena	Rostov-on-Don	Brazil	T-72	CHE	1–1	1
848	WC-2018	Sweden v South Korea	group stage	Nizhny Novgorod Stadium	Nizhny Novgorod	Sweden	T-68	KOR	1–0	1
849	WC-2018	Belgium v Panama	group stage	Fisht Olympic Stadium	Sochi	Belgium	T-52	PAN	3–0	3
850	WC-2018	Tunisia v England	group stage	Volgograd Arena	Volgograd	Tunisia	T-27	ENG	1–2	1
851	WC-2018	Colombia v Japan	group stage	Mordovia Arena	Saransk	Colombia	T-42	JPN	1–2	1
852	WC-2018	Poland v Senegal	group stage	Otkritie Arena	Moscow	Poland	T-62	SEN	1–2	1
853	WC-2018	Russia v Egypt	group stage	Krestovsky Stadium	Saint Petersburg	Russia	T-25	EGY	3–1	3
854	WC-2018	Portugal v Morocco	group stage	Luzhniki Stadium	Moscow	Portugal	T-45	MAR	1–0	1
855	WC-2018	Uruguay v Saudi Arabia	group stage	Rostov Arena	Rostov-on-Don	Uruguay	T-60	SAU	1–0	1
856	WC-2018	Iran v Spain	group stage	Kazan Arena	Kazan	Iran	T-70	ESP	0–1	0
857	WC-2018	Denmark v Australia	group stage	Samara Arena	Samara	Denmark	T-04	AUS	1–1	1
858	WC-2018	France v Peru	group stage	Central Stadium	Yekaterinburg	France	T-54	PER	1–0	1
859	WC-2018	Argentina v Croatia	group stage	Nizhny Novgorod Stadium	Nizhny Novgorod	Argentina	T-17	HRV	0–3	0
860	WC-2018	Brazil v Costa Rica	group stage	Krestovsky Stadium	Saint Petersburg	Brazil	T-16	CRI	2–0	2
861	WC-2018	Nigeria v Iceland	group stage	Volgograd Arena	Volgograd	Nigeria	T-35	ISL	2–0	2
862	WC-2018	Serbia v Switzerland	group stage	Kaliningrad Stadium	Kaliningrad	Serbia	T-72	CHE	1–2	1
863	WC-2018	Belgium v Tunisia	group stage	Otkritie Arena	Moscow	Belgium	T-75	TUN	5–2	5
864	WC-2018	South Korea v Mexico	group stage	Rostov Arena	Rostov-on-Don	South Korea	T-44	MEX	1–2	1
865	WC-2018	Germany v Sweden	group stage	Fisht Olympic Stadium	Sochi	Germany	T-71	SWE	2–1	2
866	WC-2018	England v Panama	group stage	Nizhny Novgorod Stadium	Nizhny Novgorod	England	T-52	PAN	6–1	6
867	WC-2018	Japan v Senegal	group stage	Central Stadium	Yekaterinburg	Japan	T-62	SEN	2–2	2
868	WC-2018	Poland v Colombia	group stage	Kazan Arena	Kazan	Poland	T-15	COL	0–3	0
869	WC-2018	Saudi Arabia v Egypt	group stage	Volgograd Arena	Volgograd	Saudi Arabia	T-25	EGY	2–1	2
870	WC-2018	Uruguay v Russia	group stage	Samara Arena	Samara	Uruguay	T-59	RUS	3–0	3
871	WC-2018	Spain v Morocco	group stage	Kaliningrad Stadium	Kaliningrad	Spain	T-45	MAR	2–2	2
872	WC-2018	Iran v Portugal	group stage	Mordovia Arena	Saransk	Iran	T-56	PRT	1–1	1
873	WC-2018	Australia v Peru	group stage	Fisht Olympic Stadium	Sochi	Australia	T-54	PER	0–2	0
874	WC-2018	Denmark v France	group stage	Luzhniki Stadium	Moscow	Denmark	T-28	FRA	0–0	0
875	WC-2018	Iceland v Croatia	group stage	Rostov Arena	Rostov-on-Don	Iceland	T-17	HRV	1–2	1
876	WC-2018	Nigeria v Argentina	group stage	Krestovsky Stadium	Saint Petersburg	Nigeria	T-03	ARG	1–2	1
877	WC-2018	South Korea v Germany	group stage	Kazan Arena	Kazan	South Korea	T-29	DEU	2–0	2
878	WC-2018	Mexico v Sweden	group stage	Central Stadium	Yekaterinburg	Mexico	T-71	SWE	0–3	0
879	WC-2018	Serbia v Brazil	group stage	Otkritie Arena	Moscow	Serbia	T-09	BRA	0–2	0
880	WC-2018	Switzerland v Costa Rica	group stage	Nizhny Novgorod Stadium	Nizhny Novgorod	Switzerland	T-16	CRI	2–2	2
881	WC-2018	Japan v Poland	group stage	Volgograd Arena	Volgograd	Japan	T-55	POL	0–1	0
882	WC-2018	Senegal v Colombia	group stage	Samara Arena	Samara	Senegal	T-15	COL	0–1	0
883	WC-2018	England v Belgium	group stage	Kaliningrad Stadium	Kaliningrad	England	T-06	BEL	0–1	0
884	WC-2018	Panama v Tunisia	group stage	Mordovia Arena	Saransk	Panama	T-75	TUN	1–2	1
885	WC-2018	France v Argentina	round of 16	Kazan Arena	Kazan	France	T-03	ARG	4–3	4
886	WC-2018	Uruguay v Portugal	round of 16	Fisht Olympic Stadium	Sochi	Uruguay	T-56	PRT	2–1	2
887	WC-2018	Spain v Russia	round of 16	Luzhniki Stadium	Moscow	Spain	T-59	RUS	1–1	1
888	WC-2018	Croatia v Denmark	round of 16	Nizhny Novgorod Stadium	Nizhny Novgorod	Croatia	T-21	DNK	1–1	1
889	WC-2018	Brazil v Mexico	round of 16	Samara Arena	Samara	Brazil	T-44	MEX	2–0	2
890	WC-2018	Belgium v Japan	round of 16	Rostov Arena	Rostov-on-Don	Belgium	T-42	JPN	3–2	3
891	WC-2018	Sweden v Switzerland	round of 16	Krestovsky Stadium	Saint Petersburg	Sweden	T-72	CHE	1–0	1
892	WC-2018	Colombia v England	round of 16	Otkritie Arena	Moscow	Colombia	T-27	ENG	1–1	1
893	WC-2018	Uruguay v France	quarter-finals	Nizhny Novgorod Stadium	Nizhny Novgorod	Uruguay	T-28	FRA	0–2	0
894	WC-2018	Brazil v Belgium	quarter-finals	Kazan Arena	Kazan	Brazil	T-06	BEL	1–2	1
895	WC-2018	Sweden v England	quarter-finals	Samara Arena	Samara	Sweden	T-27	ENG	0–2	0
896	WC-2018	Russia v Croatia	quarter-finals	Fisht Olympic Stadium	Sochi	Russia	T-17	HRV	2–2	2
897	WC-2018	France v Belgium	semi-finals	Krestovsky Stadium	Saint Petersburg	France	T-06	BEL	1–0	1
898	WC-2018	Croatia v England	semi-finals	Luzhniki Stadium	Moscow	Croatia	T-27	ENG	2–1	2
899	WC-2018	Belgium v England	third-place match	Krestovsky Stadium	Saint Petersburg	Belgium	T-27	ENG	2–0	2
900	WC-2018	France v Croatia	final	Luzhniki Stadium	Moscow	France	T-17	HRV	4–2	4
\.


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.players (id, firstname, lastname, count_tournaments, list_tournaments, player_fullname) FROM stdin;
P-05074	Alan	A'Court	1	1958	Alan A'Court
P-00942	Stefan	Abadzhiev	1	1966	Stefan Abadzhiev
P-03051	Jean-Paul	Abalo	1	2006	Jean-Paul Abalo
P-03371	Patrice	Abanda	1	1998	Patrice Abanda
P-04977	Ignazio	Abate	1	2014	Ignazio Abate
P-06675	Julio	Abbadie	1	1954	Julio Abbadie
P-02825	Claude	Abbes	2	1954, 1958	Claude Abbes
P-06214	Christian	Abbiati	1	2002	Christian Abbiati
P-05883	Roberto	Abbondanzieri	1	2006	Roberto Abbondanzieri
P-06019	Mohamed	Abd Al-Jawad	1	1994	Mohamed Abd Al-Jawad
P-06687	Adel	Abdel Rahman	1	1990	Adel Abdel Rahman
P-08319	Mohamed	Abdel Shafy	1	2018	Mohamed Abdel Shafy
P-00067	Gamal	Abdel-Hamid	1	1990	Gamal Abdel-Hamid
P-02311	Magdi	Abdelghani	1	1990	Magdi Abdelghani
P-09113	Nacer	Abdellah	1	1994	Nacer Abdellah
P-01763	Nasrollah	Abdollahi	1	1978	Nasrollah Abdollahi
P-02876	Djamel	Abdoun	1	2010	Djamel Abdoun
P-04573	Hussein	Abdulghani	2	2002, 2006	Hussein Abdulghani
P-04135	Hussein	Abdulghani	1	1998	Hussein Abdulghani
P-01597	Majed	Abdullah	1	1994	Majed Abdullah
P-08180	Shehu	Abdullahi	1	2018	Shehu Abdullahi
P-00800	Fahad	Abdulrahman	1	1990	Fahad Abdulrahman
P-05270	Yuki	Abe	1	2010	Yuki Abe
P-08280	Ahmad Reza	Abedzadeh	1	1998	Ahmad Reza Abedzadeh
P-04364	Amir	Abedzadeh	1	2018	Amir Abedzadeh
P-09062	Théophile	Abega	1	1982	Théophile Abega
P-05367	André	Abegglen	2	1934, 1938	André Abegglen
P-01401		Abel	1	1978	 Abel
P-08746		Abelardo	2	1994, 1998	 Abelardo
P-08688	Ramón	Abeledo	1	1962	Ramón Abeledo
P-01155	Anad	Abid	1	1986	Anad Abid
P-01210	Eric	Abidal	2	2006, 2010	Eric Abidal
P-06418	Juan Carlos	Ablanedo	2	1986, 1990	Juan Carlos Ablanedo
P-03781	Attila	Abonyi	1	1974	Attila Abonyi
P-00061	Vincent	Aboubakar	2	2010, 2014	Vincent Aboubakar
P-05726	Taher	Abouzeid	1	1990	Taher Abouzeid
P-03821	Henock	Abrahamsson	1	1938	Henock Abrahamsson
P-03561	Rüdiger	Abramczik	1	1978	Rüdiger Abramczik
P-07032	Lahcen	Abrami	1	1998	Lahcen Abrami
P-01284	Marco	Abreu	1	2006	Marco Abreu
P-09248	Sebastián	Abreu	2	2002, 2010	Sebastián Abreu
P-02948		Acácio	1	1990	 Acácio
P-08293	Eusebio	Acasuzo	1	1982	Eusebio Acasuzo
P-03927	Germán	Aceros	1	1962	Germán Aceros
P-00687	Danilo	Aceval	1	1998	Danilo Aceval
P-04924	David	Acevedo	1	1958	David Acevedo
P-08292	Eduardo Mario	Acevedo	1	1986	Eduardo Mario Acevedo
P-00615	Elmer	Acevedo	1	1970	Elmer Acevedo
P-00263	Alberto	Achá	1	1950	Alberto Achá
P-04368	Gabriel	Achilier	1	2014	Gabriel Achilier
P-04394	Ignacio	Achúcarro	1	1958	Ignacio Achúcarro
P-09405	Jovan	Aćimović	1	1974	Jovan Aćimović
P-00419	Milenko	Ačimovič	1	2002	Milenko Ačimovič
P-01630	Jhonny	Acosta	2	2014, 2018	Jhonny Acosta
P-07165	Afriyie	Acquah	1	2014	Afriyie Acquah
P-07169	Clarence	Acuña	1	1998	Clarence Acuña
P-00912	Juan	Acuña	1	1950	Juan Acuña
P-05355	Marcos	Acuña	1	2018	Marcos Acuña
P-07815	Roberto	Acuña	3	1998, 2002, 2006	Roberto Acuña
P-05203	Glen	Adam	1	1982	Glen Adam
P-00659	Stere	Adamache	1	1970	Stere Adamache
P-03688	Jozef	Adamec	2	1962, 1970	Jozef Adamec
P-08988	Ferdinand	Adams	1	1930	Ferdinand Adams
P-06941	Stephen	Adams	1	2014	Stephen Adams
P-08896	Tony	Adams	1	1998	Tony Adams
P-07835	Jimmy	Adamson	1	1962	Jimmy Adamson
P-03870		Adãozinho	1	1950	 Adãozinho
P-00163	Eric	Addo	1	2006	Eric Addo
P-09971	Otto	Addo	1	2006	Otto Addo
P-08496	Lee	Addy	1	2010	Lee Addy
P-05661	Emmanuel	Adebayor	1	2006	Emmanuel Adebayor
P-06220		Adelardo	2	1962, 1966	 Adelardo
P-08351	Dele	Adeleye	1	2010	Dele Adeleye
P-04188		Ademir	1	1950	 Ademir
P-07662	Mutiu	Adepoju	3	1994, 1998, 2002	Mutiu Adepoju
P-00088	Dominic	Adiyiah	1	2010	Dominic Adiyiah
P-07070	Sammy	Adjei	1	2006	Sammy Adjei
P-02968		Ado	1	1970	 Ado
P-05758	Albert	Adomah	1	2014	Albert Adomah
P-08367		Adriano	1	2006	 Adriano
P-08418	Luis	Advíncula	1	2018	Luis Advíncula
P-09079	Georges	Aeby	1	1938	Georges Aeby
P-00906	Paul	Aeby	1	1938	Paul Aeby
P-02560	Ibrahim	Afellay	1	2010	Ibrahim Afellay
P-07574	Harrison	Afful	1	2014	Harrison Afful
P-02686	Rabiu	Afolabi	2	2002, 2010	Rabiu Afolabi
P-05721	Valentin	Afonin	2	1966, 1970	Valentin Afonin
P-08254		Afonsinho	1	1938	 Afonsinho
P-05991	Kossi	Agassa	1	2006	Kossi Agassa
P-09211	Chigozie	Agbim	1	2014	Chigozie Agbim
P-07029	Hans	Agbo	1	1994	Hans Agbo
P-07762	Kuami	Agboh	1	2006	Kuami Agboh
P-05233	Wilfred	Agbonavbare	1	1994	Wilfred Agbonavbare
P-08906	Daniel	Agger	1	2010	Daniel Agger
P-04240	Julius	Aghahowa	1	2002	Julius Aghahowa
P-07349	Jeff	Agoos	2	1998, 2002	Jeff Agoos
P-03564	Hamadi	Agrebi	1	1978	Hamadi Agrebi
P-03208	Alloysius	Agu	1	1994	Alloysius Agu
P-00354	Rui	Águas	1	1986	Rui Águas
P-09997	Juan Bautista	Agüero	1	1958	Juan Bautista Agüero
P-01157	Sergio	Agüero	3	2010, 2014, 2018	Sergio Agüero
P-09009	Abel	Aguilar	2	2014, 2018	Abel Aguilar
P-08992	Paul	Aguilar	2	2010, 2014	Paul Aguilar
P-07137	Samuel	Aguilar	1	1958	Samuel Aguilar
P-07757	Carlos	Aguilera	2	1986, 1990	Carlos Aguilera
P-09611	Carlos	Aguilera	1	1998	Carlos Aguilera
P-05744	Edgar	Aguilera	1	1998	Edgar Aguilera
P-00815	Juan	Aguilera	1	1930	Juan Aguilera
P-08649	Oscar	Aguilera	1	1958	Oscar Aguilera
P-05308	Álex	Aguinaga	1	2002	Álex Aguinaga
P-00053	Francisco	Aguirre	1	1930	Francisco Aguirre
P-05703	Javier	Aguirre	1	1986	Javier Aguirre
P-03329	Daniel	Agyei	1	2010	Daniel Agyei
P-04018	Emmanuel	Agyemang-Badu	1	2014	Emmanuel Agyemang-Badu
P-00513	Thomas	Ahlström	1	1974	Thomas Ahlström
P-04700	Olle	Åhlund	1	1950	Olle Åhlund
P-04020	Rahman	Ahmadi	1	2014	Rahman Ahmadi
P-00980	Ronald	Åhman	1	1978	Ronald Åhman
P-02885	Issah	Ahmed	1	2006	Issah Ahmed
P-07103	Jung-hwan	Ahn	3	2002, 2006, 2010	Jung-hwan Ahn
P-04538	Stephen	Ahorlu	1	2010	Stephen Ahorlu
P-01444	Sergio	Ahumada	1	1974	Sergio Ahumada
P-05481	Ernst	Aigner	1	1990	Ernst Aigner
P-08308	Pablo	Aimar	2	2002, 2006	Pablo Aimar
P-00834	Jock	Aird	1	1954	Jock Aird
P-00577	Marco	Airosa	1	2006	Marco Airosa
P-01832	Youssef	Aït Bennasser	1	2018	Youssef Aït Bennasser
P-04735	Roy	Aitken	2	1986, 1990	Roy Aitken
P-04960	Dele	Aiyenugba	1	2010	Dele Aiyenugba
P-04983	Kanga	Akalé	1	2006	Kanga Akalé
P-07871	Manuel	Akanji	1	2018	Manuel Akanji
P-01613	Kaçmaz	Akgün	1	1954	Kaçmaz Akgün
P-04144	Mohamed	Akid	1	1978	Mohamed Akid
P-09250	Igor	Akinfeev	2	2014, 2018	Igor Akinfeev
P-03016	Yutaka	Akita	2	1998, 2002	Yutaka Akita
P-00505	Eric	Akoto	1	2006	Eric Akoto
P-05826	Jean-Daniel	Akpa Akpro	1	2014	Jean-Daniel Akpa Akpro
P-04202	Daniel	Akpeyi	1	2018	Daniel Akpeyi
P-01221		Akwá	1	2006	 Akwá
P-09578	Benedict	Akwuegbu	1	2002	Benedict Akwuegbu
P-04956	Fatih	Akyel	1	2002	Fatih Akyel
P-05015	Awad	Al-Anazi	1	1994	Awad Al-Anazi
P-00675	Abdulaziz	Al-Anberi	1	1982	Abdulaziz Al-Anberi
P-03161	Tisir	Al-Antaif	1	1998	Tisir Al-Antaif
P-02263	Ahmed	Al-Bahri	1	2006	Ahmed Al-Bahri
P-09175	Fahad	Al-Bishi	1	1994	Fahad Al-Bishi
P-09501	Mohamed	Al-Bishi	1	2006	Mohamed Al-Bishi
P-08579	Mohammed	Al-Breik	1	2018	Mohammed Al-Breik
P-05231	Ali	Al-Bulaihi	1	2018	Ali Al-Bulaihi
P-09837	Abdulaziz	Al-Buloushi	1	1982	Abdulaziz Al-Buloushi
P-01258	Abdullah	Al-Buloushi	1	1982	Abdullah Al-Buloushi
P-06167	Faisal	Al-Dakhil	1	1982	Faisal Al-Dakhil
P-06282	Saleh	Al-Dawod	1	1994	Saleh Al-Dawod
P-03366	Salem	Al-Dawsari	1	2018	Salem Al-Dawsari
P-04050	Mohamed	Al-Deayea	4	1994, 1998, 2002, 2006	Mohamed Al-Deayea
P-05688	Ahmed	Al-Dokhi	3	1998, 2002, 2006	Ahmed Al-Dokhi
P-09471	Abdullah	Al-Dosari	1	1994	Abdullah Al-Dosari
P-03206	Khamis	Al-Dosari	2	1998, 2002	Khamis Al-Dosari
P-09549	Obeid	Al-Dosari	2	1998, 2002	Obeid Al-Dosari
P-09480	Salman	Al-Faraj	1	2018	Salman Al-Faraj
P-08320	Omar	Al-Ghamdi	2	2002, 2006	Omar Al-Ghamdi
P-07084	Nassir	Al-Ghanim	1	1982	Nassir Al-Ghanim
P-03557	Fahad	Al-Ghesheyan	1	1994	Fahad Al-Ghesheyan
P-02915	Abdulrahman	Al-Haddad	1	1990	Abdulrahman Al-Haddad
P-07593	Muayad	Al-Haddad	1	1982	Muayad Al-Haddad
P-00025	Ibrahim	Al-Harbi	1	1998	Ibrahim Al-Harbi
P-04969	Mansoor	Al-Harbi	1	2018	Mansoor Al-Harbi
P-09391	Mohsin	Al-Harthi	1	2002	Mohsin Al-Harthi
P-09727	Saad	Al-Harthi	1	2006	Saad Al-Harthi
P-02626	Sami	Al-Hashash	1	1982	Sami Al-Hashash
P-05225	Ibrahim	Al-Helwah	1	1994	Ibrahim Al-Helwah
P-03274	Saad	Al-Houti	1	1982	Saad Al-Houti
P-06162	Sami	Al-Jaber	4	1994, 1998, 2002, 2006	Sami Al-Jaber
P-04801	Mohammed	Al-Jahani	2	1998, 2002	Mohammed Al-Jahani
P-07894	Abdulaziz	Al-Janoubi	1	1998	Abdulaziz Al-Janoubi
P-05558	Waleed	Al-Jasem	1	1982	Waleed Al-Jasem
P-00541	Taisir	Al-Jassim	1	2018	Taisir Al-Jassim
P-03607	Abdullah	Al-Jumaan	1	2002	Abdullah Al-Jumaan
P-04959	Abdullah	Al-Khaibari	1	2018	Abdullah Al-Khaibari
P-06268	Abdulmalek	Al-Khaibri	1	2018	Abdulmalek Al-Khaibri
P-00947	Abdulaziz	Al-Khathran	2	2002, 2006	Abdulaziz Al-Khathran
P-04851	Mohammed	Al-Khilaiwi	2	1994, 1998	Mohammed Al-Khilaiwi
P-06195	Mohammed	Al-Khojali	1	2002	Mohammed Al-Khojali
P-00154	Abdullah	Al-Mayouf	1	2018	Abdullah Al-Mayouf
P-00948	Fahad	Al-Mehallel	2	1994, 1998	Fahad Al-Mehallel
P-03533	Housain	Al-Mogahwi	1	2018	Housain Al-Mogahwi
P-00596	Hamad	Al-Montashari	1	2006	Hamad Al-Montashari
P-05438	Yasser	Al-Mosailem	1	2018	Yasser Al-Mosailem
P-07552	Fahad	Al-Muwallad	1	2018	Fahad Al-Muwallad
P-01912	Khalid	Al-Muwallid	2	1994, 1998	Khalid Al-Muwallid
P-03228	Saeed	Al-Owairan	2	1994, 1998	Saeed Al-Owairan
P-07471	Mohammed	Al-Owais	1	2018	Mohammed Al-Owais
P-01126	Jamal	Al-Qabendi	1	1982	Jamal Al-Qabendi
P-00776	Naif	Al-Qadi	1	2006	Naif Al-Qadi
P-05687	Yasser	Al-Qahtani	1	2006	Yasser Al-Qahtani
P-00001	Hussein	Al-Sadiq	2	1994, 1998	Hussein Al-Sadiq
P-07744	Mohammad	Al-Sahlawi	1	2018	Mohammad Al-Sahlawi
P-00320	Ibrahim	Al-Shahrani	2	1998, 2002	Ibrahim Al-Shahrani
P-00932	Yasser	Al-Shahrani	1	2018	Yasser Al-Shahrani
P-08574	Paul	Hall	1	1998	Paul Hall
P-08380	Mohammad	Al-Shalhoub	2	2002, 2006	Mohammad Al-Shalhoub
P-00883	Fouzi	Al-Shehri	1	2002	Fouzi Al-Shehri
P-05463	Yahya	Al-Shehri	1	2018	Yahya Al-Shehri
P-03780	Hamoud	Al-Shemmari	1	1982	Hamoud Al-Shemmari
P-00586	Yussef	Al-Suwayed	1	1982	Yussef Al-Suwayed
P-08801	Yassir	Al-Taifi	1	1994	Yassir Al-Taifi
P-08459	Adnan	Al-Talyani	1	1990	Adnan Al-Talyani
P-02666	Ahmed	Al-Tarabulsi	1	1982	Ahmed Al-Tarabulsi
P-06058	Nawaf	Al-Temyat	3	1998, 2002, 2006	Nawaf Al-Temyat
P-03419	Mansour	Al-Thagafi	1	2002	Mansour Al-Thagafi
P-04962	Yousuf	Al-Thunayan	1	1998	Yousuf Al-Thunayan
P-03511	Abdullah	Al-Waked	1	2002	Abdullah Al-Waked
P-03991	Al Hasan	Al-Yami	1	2002	Al Hasan Al-Yami
P-07911	Stefan	Aladzhov	2	1970, 1974	Stefan Aladzhov
P-08079	Ahmed	Alaoui	1	1970	Ahmed Alaoui
P-09475	Zakaria	Alaoui	1	1994	Zakaria Alaoui
P-09468	Jordi	Alba	2	2014, 2018	Jordi Alba
P-00209	Ernesto	Albarracín	1	1934	Ernesto Albarracín
P-00196	David	Albelda	2	2002, 2006	David Albelda
P-05509	Flórián	Albert	2	1962, 1966	Flórián Albert
P-01953	Philippe	Albert	2	1990, 1994	Philippe Albert
P-05084	Demetrio	Albertini	2	1994, 1998	Demetrio Albertini
P-02917	Carlos	Alberto	1	1970	Carlos Alberto
P-07794	Julio	Alberto	1	1986	Julio Alberto
P-01240	Enrico	Albertosi	4	1962, 1966, 1970, 1974	Enrico Albertosi
P-04315	Raúl	Albiol	2	2010, 2014	Raúl Albiol
P-08926	Arthur	Albiston	1	1986	Arthur Albiston
P-09121	Miiko	Albornoz	1	2014	Miiko Albornoz
P-05855	Mario	Alborta	1	1930	Mario Alborta
P-01132	Ernst	Albrecht	1	1934	Ernst Albrecht
P-00944	Milan	Albrecht	1	1970	Milan Albrecht
P-01364	Rafael	Albrecht	2	1962, 1966	Rafael Albrecht
P-07922	Chris	Albright	1	2006	Chris Albright
P-00959	Gheorghe	Albu	1	1934	Gheorghe Albu
P-01056	Antolín	Alcaraz	1	2010	Antolín Alcaraz
P-01349	Francisco	Alcaraz	1	1986	Francisco Alcaraz
P-05612	Joseph	Alcazar	1	1934	Joseph Alcazar
P-01678		Alcindo	1	1966	 Alcindo
P-01321		Aldair	3	1990, 1994, 1998	 Aldair
P-04363	Toby	Alderweireld	2	2014, 2018	Toby Alderweireld
P-01301	John	Aldridge	2	1990, 1994	John Aldridge
P-01983	Sergei	Aleinikov	2	1986, 1990	Sergei Aleinikov
P-02429	Juan Manuel	Alejandrez	1	1970	Juan Manuel Alejandrez
P-07919	Petar	Aleksandrov	1	1994	Petar Aleksandrov
P-00941		Alemão	2	1986, 1990	 Alemão
P-08561	Ahmad	Alenemeh	1	2014	Ahmad Alenemeh
P-06382	Dmitri	Alenichev	1	2002	Dmitri Alenichev
P-06236	Trent	Alexander-Arnold	1	2018	Trent Alexander-Arnold
P-06807	Niclas	Alexandersson	2	2002, 2006	Niclas Alexandersson
P-02484	Alexis	Alexandris	1	1994	Alexis Alexandris
P-02799	José Ramón	Alexanko	1	1982	José Ramón Alexanko
P-01134	Alexis	Alexiou	1	1994	Alexis Alexiou
P-08058	Alexis	Alexoudis	1	1994	Alexis Alexoudis
P-02274	Mauricio	Alfaro	1	1982	Mauricio Alfaro
P-07159	Wardy	Alfaro	1	2006	Wardy Alfaro
P-04450		Alfonso	1	1998	 Alfonso
P-00257		Alfredo	1	1950	 Alfredo
P-05229		Alfredo	1	1954	 Alfredo
P-04621		Alfredo	1	1974	 Alfredo
P-05881	Víctor Celestino	Algarañaz	1	1950	Víctor Celestino Algarañaz
P-00090	Jamal	Ali	1	1986	Jamal Ali
P-08466		Alisson	1	2018	 Alisson
P-08532	Rafael	Alkorta	3	1990, 1994, 1998	Rafael Alkorta
P-04181	Javad	Allahverdi	1	1978	Javad Allahverdi
P-02965	Thomson	Allan	1	1974	Thomson Allan
P-05595	Karim	Allawi	1	1986	Karim Allawi
P-01903	Khalil	Allawi	1	1986	Khalil Allawi
P-06184	Marcus	Allbäck	2	2002, 2006	Marcus Allbäck
P-06738	Ivor	Allchurch	1	1958	Ivor Allchurch
P-05114	Len	Allchurch	1	1958	Len Allchurch
P-05439	Luigi	Allemandi	1	1934	Luigi Allemandi
P-02852	Anton	Allemann	1	1962	Anton Allemann
P-08370	Willy	Allemann	1	1966	Willy Allemann
P-05297	Karl	Allgöwer	1	1986	Karl Allgöwer
P-02492	Dele	Alli	1	2018	Dele Alli
P-03310	Klaus	Allofs	1	1986	Klaus Allofs
P-07235	Thomas	Allofs	1	1982	Thomas Allofs
P-00433	André	Almeida	1	2014	André Almeida
P-09658	Hugo	Almeida	2	2010, 2014	Hugo Almeida
P-09134		Almeida	1	1934	 Almeida
P-07930	Matías	Almeyda	2	1998, 2002	Matías Almeyda
P-03388	Erik	Almgren	1	1938	Erik Almgren
P-08669	Sergio	Almirón	1	1986	Sergio Almirón
P-05010	Bobby	Almond	1	1982	Bobby Almond
P-02913	Nicolas	Alnoudji	1	2002	Nicolas Alnoudji
P-04807	John	Aloisi	1	2006	John Aloisi
P-02549	Faustino	Alonso	1	1986	Faustino Alonso
P-05058	Gabriel	Alonso	1	1950	Gabriel Alonso
P-01175	Norberto	Alonso	1	1978	Norberto Alonso
P-02567	Periko	Alonso	1	1982	Periko Alonso
P-03244	Xabi	Alonso	3	2006, 2010, 2014	Xabi Alonso
P-00917	Juan	Alonzo	1	1938	Juan Alonzo
P-09345	Adrian	Alston	1	1974	Adrian Alston
P-04236	José	Altafini	2	1958, 1962	José Altafini
P-09882		Altair	2	1962, 1966	 Altair
P-05559	Jozy	Altidore	2	2010, 2014	Jozy Altidore
P-09627	Alessandro	Altobelli	2	1982, 1986	Alessandro Altobelli
P-08653	Guido	Alvarenga	1	2002	Guido Alvarenga
P-01897	Édgar	Álvarez	1	2010	Édgar Álvarez
P-02421	Edson	Álvarez	1	2018	Edson Álvarez
P-09305	Eliseo	Álvarez	2	1962, 1966	Eliseo Álvarez
P-09170	Emilio	Álvarez	2	1962, 1966	Emilio Álvarez
P-00193	Leonel	Álvarez	2	1990, 1994	Leonel Álvarez
P-09380	Ricky	Álvarez	1	2014	Ricky Álvarez
P-01493	Éder	Álvarez Balanta	1	2014	Éder Álvarez Balanta
P-04844	Manuel	Álvarez Jiménez	1	1950	Manuel Álvarez Jiménez
P-00739		Álvaro	1	1986	 Álvaro
P-06420	John	Alvbåge	1	2006	John Alvbåge
P-03645	Bruno	Alves	3	2010, 2014, 2018	Bruno Alves
P-01485	Dani	Alves	2	2010, 2014	Dani Alves
P-02498	Fernando	Álvez	2	1986, 1990	Fernando Álvez
P-08656	Antonio	Alzamendi	2	1986, 1990	Antonio Alzamendi
P-08772	Aníbal	Alzate	1	1962	Aníbal Alzate
P-08366	Amedeo	Amadei	1	1950	Amedeo Amadei
P-00911	Lauro	Amadò	1	1938	Lauro Amadò
P-08951	Rafael	Amador	1	1986	Rafael Amador
P-05397	Azzedine	Amanallah	1	1986	Azzedine Amanallah
P-07526		Amancio	1	1966	 Amancio
P-09598	Mourad	Amara	2	1982, 1986	Mourad Amara
P-04351		Amaral	1	1978	 Amaral
P-09951		Amarildo	1	1962	 Amarildo
P-07891	Florencio	Amarilla	1	1958	Florencio Amarilla
P-07825	Ignacio	Ambríz	1	1994	Ignacio Ambríz
P-01170	Javier	Ambrois	1	1954	Javier Ambrois
P-07583	Efe	Ambrose	1	2014	Efe Ambrose
P-06476	Paúl	Ambrosi	1	2006	Paúl Ambrosi
P-01360	Mohammed	Ameen	1	2006	Mohammed Ameen
P-01317	Marco	Amelia	1	2006	Marco Amelia
P-02877	Shola	Ameobi	1	2014	Shola Ameobi
P-03524	Martin	Amerhauser	1	1998	Martin Amerhauser
P-01241		Américo	1	1966	 Américo
P-04448	Efraín	Amézcua	1	1930	Efraín Amézcua
P-06309	Vahid	Amiri	1	2018	Vahid Amiri
P-02087	Matthew	Amoah	2	2006, 2010	Matthew Amoah
P-09026	Daniel	Amokachi	2	1994, 1998	Daniel Amokachi
P-09312	Guillermo	Amor	1	1998	Guillermo Amor
P-01772	Rúben	Amorim	2	2010, 2014	Rúben Amorim
P-09137	Manuel	Amoros	2	1982, 1986	Manuel Amoros
P-05620	Nordin	Amrabat	1	2018	Nordin Amrabat
P-00460	Sofyan	Amrabat	1	2018	Sofyan Amrabat
P-06569	Tom	Amrhein	1	1934	Tom Amrhein
P-01128	Roald	Amundsen	1	1938	Roald Amundsen
P-06735	Emmanuel	Amunike	1	1994	Emmanuel Amunike
P-02972	Gharib	Amzine	1	1998	Gharib Amzine
P-07196	Chol-hyok	An	1	2010	Chol-hyok An
P-04396	Ik-soo	An	1	1994	Ik-soo An
P-04100	Qi	An	1	2002	Qi An
P-09301	Se-bok	An	1	1966	Se-bok An
P-07604	Yong-hak	An	1	2010	Yong-hak An
P-03727	Pietro	Anastasi	1	1974	Pietro Anastasi
P-09972	Carlo	Ancelotti	2	1986, 1990	Carlo Ancelotti
P-00471	Atilio	Ancheta	1	1970	Atilio Ancheta
P-00042	William	Andem	1	1998	William Andem
P-05769	Wim	Anderiesen	2	1934, 1938	Wim Anderiesen
P-07817	Henrik	Andersen	1	1986	Henrik Andersen
P-08849	Oddmund	Andersen	1	1938	Oddmund Andersen
P-02325	Stephan	Andersen	1	2010	Stephan Andersen
P-07896	John	Anderson	1	1954	John Anderson
P-01264	Stan	Anderson	1	1962	Stan Anderson
P-06092	Viv	Anderson	2	1982, 1986	Viv Anderson
P-02720	Åke	Andersson	1	1938	Åke Andersson
P-07850	Andreas	Andersson	1	2002	Andreas Andersson
P-04857	Björn	Andersson	1	1974	Björn Andersson
P-00789	Daniel	Andersson	2	2002, 2006	Daniel Andersson
P-02904	Ernst	Andersson	1	1934	Ernst Andersson
P-02236	Harry	Andersson	1	1938	Harry Andersson
P-08602	Kennet	Andersson	1	1994	Kennet Andersson
P-09403	Magnus	Andersson	1	1978	Magnus Andersson
P-02072	Otto	Andersson	1	1934	Otto Andersson
P-08108	Patrik	Andersson	2	1994, 2002	Patrik Andersson
P-00066	Roland	Andersson	1	1978	Roland Andersson
P-09257	Roy	Andersson	1	1978	Roy Andersson
P-06904	Sune	Andersson	1	1950	Sune Andersson
P-03392	Sven	Andersson	1	1934	Sven Andersson
P-01306	Sven	Andersson	1	1990	Sven Andersson
P-05508	Darren	Anderton	1	1998	Darren Anderton
P-08276	Numa	Andoire	1	1930	Numa Andoire
P-08775	Ioan	Andone	1	1990	Ioan Andone
P-05101	Ivaylo	Andonov	1	1994	Ivaylo Andonov
P-03817	Jorge	Andrade	1	2002	Jorge Andrade
P-01536	José Leandro	Andrade	1	1930	José Leandro Andrade
P-04460	António	André	1	1986	António André
P-01434	Fritz	André	1	1974	Fritz André
P-05963	Gunnar	Andreassen	1	1938	Gunnar Andreassen
P-09615	Michele	Andreolo	1	1938	Michele Andreolo
P-07737	Hjalmar	Andresen	1	1938	Hjalmar Andresen
P-02858	Marvin	Andrews	1	2006	Marvin Andrews
P-06617	Sergey	Andreyev	1	1982	Sergey Andreyev
P-04665	Genar	Andrinúa	1	1990	Genar Andrinúa
P-00540	József	Andrusch	1	1986	József Andrusch
P-09090	Mariano	Andújar	2	2010, 2014	Mariano Andújar
P-08486	Nicolas	Anelka	1	2010	Nicolas Anelka
P-03819	Miguel	Ángel	2	1978, 1982	Miguel Ángel
P-05126	Didier	Angibeaud	1	1998	Didier Angibeaud
P-01884	Benjamin	Angoua	1	2010	Benjamin Angoua
P-06501	Andrija	Anković	1	1962	Andrija Anković
P-06707	Anthony	Annan	1	2010	Anthony Annan
P-06628	Robert	Annis	1	1950	Robert Annis
P-02276	Carlo	Annovazzi	1	1950	Carlo Annovazzi
P-08269	Léopold	Anoul	1	1954	Léopold Anoul
P-04222	Cristian	Ansaldi	1	2018	Cristian Ansaldi
P-02640	Karim	Ansarifard	2	2014, 2018	Karim Ansarifard
P-08997	Peregrino	Anselmo	1	1930	Peregrino Anselmo
P-09805	Charles	Antenen	3	1950, 1954, 1962	Charles Antenen
P-05903	Giancarlo	Antognoni	2	1978, 1982	Giancarlo Antognoni
P-09223	Eddy	Antoine	1	1974	Eddy Antoine
P-02139	Tomas	Antonelius	1	2002	Tomas Antonelius
P-03259	José	António	1	1986	José António
P-01214	Marco	Antônio	2	1970, 1974	Marco Antônio
P-04277	Francisco	Antúnez	1	1950	Francisco Antúnez
P-00361	Fuad	Anwar	2	1994, 1998	Fuad Anwar
P-03121	Sutan	Anwar	1	1938	Sutan Anwar
P-05128	Roberto	Anzolin	1	1966	Roberto Anzolin
P-00192	Dennis	Aogo	1	2010	Dennis Aogo
P-09303	Ibrahim	Aoudou	1	1982	Ibrahim Aoudou
P-06589	Toshihiro	Aoyama	1	2014	Toshihiro Aoyama
P-02792	Alberto	Aparicio	1	1950	Alberto Aparicio
P-09672	Ernesto	Aparicio	1	1970	Ernesto Aparicio
P-02246	Luigi	Apolloni	1	1994	Luigi Apolloni
P-07368	Carlos	Aponte	1	1962	Carlos Aponte
P-06896	Stratos	Apostolakis	1	1994	Stratos Apostolakis
P-09911	Vidin	Apostolov	1	1966	Vidin Apostolov
P-04406	Stephen	Appiah	2	2006, 2010	Stephen Appiah
P-00802	German	Apukhtin	1	1958	German Apukhtin
P-04685	Alberto	Aquilani	1	2014	Alberto Aquilani
P-04748	Javier	Aquino	2	2014, 2018	Javier Aquino
P-05121	Pedro	Aquino	1	2018	Pedro Aquino
P-07645	Silvio	Aquino	1	1982	Silvio Aquino
P-05796	Nikolay	Arabov	1	1986	Nikolay Arabov
P-01450		Araken	1	1930	 Araken
P-01784	Charles	Aránguiz	1	2014	Charles Aránguiz
P-02266	Agustín	Aranzábal	1	1998	Agustín Aranzábal
P-04893	Duberty	Aráoz	1	1950	Duberty Aráoz
P-02469	José	Araquistáin	1	1962	José Araquistáin
P-08118	Miguel	Araujo	1	2018	Miguel Araujo
P-00375	Pedro	Araya	1	1966	Pedro Araya
P-09705	Álvaro	Arbeloa	1	2010	Álvaro Arbeloa
P-03976	Pietro	Arcari	1	1934	Pietro Arcari
P-06905	Francisco	Arce	2	1998, 2002	Francisco Arce
P-06886	Steve	Archibald	2	1982, 1986	Steve Archibald
P-08221	Luis	Arconada	2	1978, 1982	Luis Arconada
P-06578	Osvaldo	Ardiles	2	1978, 1982	Osvaldo Ardiles
P-09068	Guillermo	Arellano	1	1930	Guillermo Arellano
P-08251	Jesús	Arellano	3	1998, 2002, 2006	Jesús Arellano
P-02382	Raúl	Arellano	1	1954	Raúl Arellano
P-07480	Andre	Arendse	1	2002	Andre Arendse
P-06190	Alphonse	Areola	1	2018	Alphonse Areola
P-07625	Edelmiro	Arévalo	1	1958	Edelmiro Arévalo
P-07722	Egidio	Arévalo Ríos	2	2010, 2014	Egidio Arévalo Ríos
P-05230		Argemiro	1	1938	 Argemiro
P-08381	Juan	Argote	1	1930	Juan Argote
P-09464	Antonio	Arias	1	1974	Antonio Arias
P-08907	Jairo	Arias	1	1962	Jairo Arias
P-08711	Joaquín	Arias	1	1938	Joaquín Arias
P-05920	Santiago	Arias	2	2014, 2018	Santiago Arias
P-06277		Ariel	1	1934	 Ariel
P-01694	Víctor	Aristizábal	2	1994, 1998	Víctor Aristizábal
P-01553	Oscar	Arizaga	1	1982	Oscar Arizaga
P-02526		Armandinho	1	1934	 Armandinho
P-04586	Franco	Armani	1	2018	Franco Armani
P-00507	Kurt	Armbruster	1	1966	Kurt Armbruster
P-02817	Pablo	Armero	1	2014	Pablo Armero
P-03452	Jimmy	Armfield	2	1962, 1966	Jimmy Armfield
P-06841	Desmond	Armstrong	1	1990	Desmond Armstrong
P-01384	Gerry	Armstrong	2	1982, 1986	Gerry Armstrong
P-09779	Ken	Armstrong	1	1954	Ken Armstrong
P-04793	Kári	Árnason	1	2018	Kári Árnason
P-05669	Frank	Arnesen	1	1986	Frank Arnesen
P-01960	Mauricio	Aros	1	1998	Mauricio Aros
P-07829	Vicente	Arraya	1	1950	Vicente Arraya
P-03581	Juan	Arricio	1	1950	Juan Arricio
P-06754	Kepa	Arrizabalaga	1	2018	Kepa Arrizabalaga
P-06577	Abdiel	Arroyo	1	2018	Abdiel Arroyo
P-03900	Michael	Arroyo	1	2014	Michael Arroyo
P-02220	Milorad	Arsenijević	1	1930	Milorad Arsenijević
P-08750	Marcel	Artelesa	1	1966	Marcel Artelesa
P-04225	Luis	Artime	1	1966	Luis Artime
P-00968	Peter	Artner	1	1990	Peter Artner
P-01161	Daniel	Arzani	1	2018	Daniel Arzani
P-05615	Julio César	Arzú	1	1982	Julio César Arzú
P-02987	Gerald	Asamoah	2	2002, 2006	Gerald Asamoah
P-01229	Kwadwo	Asamoah	2	2010, 2014	Kwadwo Asamoah
P-06770	Aljoša	Asanović	1	1998	Aljoša Asanović
P-07448	Kakhi	Asatiani	1	1970	Kakhi Asatiani
P-03972	Nicolás	Asencio	1	2002	Nicolás Asencio
P-02795	Juan Manuel	Asensi	1	1978	Juan Manuel Asensi
P-07007	Vicente	Asensi	1	1950	Vicente Asensi
P-02781	Marco	Asensio	1	2018	Marco Asensio
P-02319	Ayman	Ashraf	1	2018	Ayman Ashraf
P-09742	Emre	Aşık	1	2002	Emre Aşık
P-01501	Sanny	Åslund	1	1978	Sanny Åslund
P-06361	Georgi	Asparuhov	3	1962, 1966, 1970	Georgi Asparuhov
P-08847	Iago	Aspas	1	2018	Iago Aspas
P-02590	Faustino	Asprilla	2	1994, 1998	Faustino Asprilla
P-04611	Salah	Assad	2	1982, 1986	Salah Assad
P-04791	Ludovic	Assemoassa	1	2006	Ludovic Assemoassa
P-07087	Muhannad	Assiri	1	2018	Muhannad Assiri
P-02538	Benoît	Assou-Ekotto	2	2010, 2014	Benoît Assou-Ekotto
P-08033	Eduardo	Astengo	1	1930	Eduardo Astengo
P-01100	Jeff	Astle	1	1970	Jeff Astle
P-01648	Alfred	Aston	2	1934, 1938	Alfred Aston
P-06407	John	Aston	1	1950	John Aston
P-03277	Manuel	Astorga	1	1962	Manuel Astorga
P-08644	Leonardo	Astrada	1	1998	Leonardo Astrada
P-04994	Ramón	Astudillo	1	1934	Ramón Astudillo
P-04411	Aleksandar	Atanacković	1	1950	Aleksandar Atanacković
P-09828	Elias	Atmatsidis	1	1994	Elias Atmatsidis
P-06441	Franck	Atsou	1	2006	Franck Atsou
P-01158	Christian	Atsu	1	2014	Christian Atsu
P-05147		Áttila	1	1934	 Áttila
P-03229	Marcel	Aubour	1	1966	Marcel Aubour
P-02986	Klaus	Augenthaler	2	1986, 1990	Klaus Augenthaler
P-09425	Arsène	Auguste	1	1974	Arsène Auguste
P-03858	Brendan	Augustine	1	1998	Brendan Augustine
P-03603	Ludwig	Augustinsson	1	2018	Ludwig Augustinsson
P-04280	José	Augusto	1	1966	José Augusto
P-05238		Augusto	1	1950	 Augusto
P-08163	Renato	Augusto	1	2018	Renato Augusto
P-09800	Jörgen	Augustsson	1	1974	Jörgen Augustsson
P-03079	Andy	Auld	1	1930	Andy Auld
P-00479	Raimond	Aumann	1	1990	Raimond Aumann
P-00120	Serge	Aurier	1	2014	Serge Aurier
P-08383	Raymond	Ausloos	1	1954	Raymond Ausloos
P-06878	Jean-Herbert	Austin	1	1974	Jean-Herbert Austin
P-09160	Enrique	Avalos	1	1950	Enrique Avalos
P-07588	Marcial	Avalos	1	1950	Marcial Avalos
P-01316	Rafael	Ávalos	1	1954	Rafael Ávalos
P-05027	István	Avar	1	1934	István Avar
P-09728	Asmir	Avdukić	1	2014	Asmir Avdukić
P-04336	José Raúl	Aveiro	1	1958	José Raúl Aveiro
P-01040	Ricardo	Ávila	1	2018	Ricardo Ávila
P-02403	Ludovico	Avio	1	1958	Ludovico Avio
P-00439	Chidozie	Awaziem	1	2018	Chidozie Awaziem
P-04993	Sven	Axbom	1	1958	Sven Axbom
P-02221	Kurt	Axelsson	1	1970	Kurt Axelsson
P-06051	Nils	Axelsson	1	1934	Nils Axelsson
P-08859	William	Ayache	1	1986	William Ayache
P-06151	Celso	Ayala	2	1998, 2002	Celso Ayala
P-03759	Hugo	Ayala	1	2018	Hugo Ayala
P-09897	Roberto	Ayala	3	1998, 2002, 2006	Roberto Ayala
P-03494	Rubén	Ayala	1	1974	Rubén Ayala
P-00268	Anis	Ayari	1	2006	Anis Ayari
P-02485	André	Ayew	2	2010, 2014	André Ayew
P-08301	Ibrahim	Ayew	1	2010	Ibrahim Ayew
P-06325	Jordan	Ayew	1	2014	Jordan Ayew
P-01514	Jaime	Ayoví	1	2014	Jaime Ayoví
P-06089	Marlon	Ayoví	2	2002, 2006	Marlon Ayoví
P-07550	Walter	Ayoví	2	2002, 2014	Walter Ayoví
P-05521	Juan	Ayra	1	1938	Juan Ayra
P-00544	Kadri	Aytaç	1	1954	Kadri Aytaç
P-05786	Ramon	Azeez	1	2014	Ramon Azeez
P-01080	Yao	Aziawonou	1	2006	Yao Aziawonou
P-02853	Khaled	Aziz	1	2006	Khaled Aziz
P-06308	Khodadad	Azizi	1	1998	Khodadad Azizi
P-02194	Khalil	Azmi	1	1994	Khalil Azmi
P-07107	Sardar	Azmoun	1	2018	Sardar Azmoun
P-07912	Randall	Azofeifa	2	2006, 2018	Randall Azofeifa
P-00556	César	Azpilicueta	2	2014, 2018	César Azpilicueta
P-05403	Rachid	Azzouzi	2	1994, 1998	Rachid Azzouzi
P-02689	Espen	Baardsen	1	1998	Espen Baardsen
P-07547	Tijani	Babangida	1	1998	Tijani Babangida
P-00230	Michael	Babatunde	1	2014	Michael Babatunde
P-08993	Celestine	Babayaro	2	1998, 2002	Celestine Babayaro
P-00915	Phil	Babb	1	1994	Phil Babb
P-03486	Markus	Babbel	1	1998	Markus Babbel
P-03643	Ryan	Babel	2	2006, 2010	Ryan Babel
P-09691	Marko	Babić	1	2006	Marko Babić
P-04660	Carlos	Babington	1	1974	Carlos Babington
P-00831	Kabasu	Babo	1	1974	Kabasu Babo
P-04730	Carlos	Bacca	2	2014, 2018	Carlos Bacca
P-00946	Georgi	Bachev	1	1998	Georgi Bachev
P-02420	Jo	Backaert	1	1954	Jo Backaert
P-09692	Milan	Badelj	2	2014, 2018	Milan Badelj
P-01810	René	Bader	1	1950	René Bader
P-01843	Gabriel	Badilla	1	2006	Gabriel Badilla
P-04809	Arnold	Badjou	3	1930, 1934, 1938	Arnold Badjou
P-01994	Khaled	Badra	2	1998, 2002	Khaled Badra
P-06632	Anice	Badri	1	2018	Anice Badri
P-00771	Holger	Badstuber	1	2010	Holger Badstuber
P-07889	Marc	Baecke	1	1982	Marc Baecke
P-02017	Ji-hoon	Baek	1	2006	Ji-hoon Baek
P-08010	Melanio	Baez	1	1950	Melanio Baez
P-02933	Richart	Báez	1	2002	Richart Báez
P-01996	Alberto	Baeza	1	1962	Alberto Baeza
P-00737	Dino	Baggio	2	1994, 1998	Dino Baggio
P-09078	Roberto	Baggio	3	1990, 1994, 1998	Roberto Baggio
P-01796	Karim	Bagheri	1	1998	Karim Bagheri
P-09144	Salvatore	Bagni	1	1986	Salvatore Bagni
P-00293	Óscar	Bagüí	1	2014	Óscar Bagüí
P-08484	Hattan	Bahebri	1	2018	Hattan Bahebri
P-02130	Ahmed	Bahja	1	1994	Ahmed Bahja
P-09679	Jasem	Bahman	1	1982	Jasem Bahman
P-03542	Paul	Bahoken	1	1982	Paul Bahoken
P-01683	Walter	Bahr	1	1950	Walter Bahr
P-08120	Vítor	Baía	1	2002	Vítor Baía
P-02328	Júnior	Baiano	1	1998	Júnior Baiano
P-01283	Gary	Bailey	1	1986	Gary Bailey
P-05779	Roberto	Bailey	1	1982	Roberto Bailey
P-00598	Eddie	Baily	1	1950	Eddie Baily
P-05861	Leighton	Baines	1	2014	Leighton Baines
P-03076	Sammy	Baird	1	1958	Sammy Baird
P-09420	Dušan	Bajević	1	1974	Dušan Bajević
P-09461	Arkadiusz	Bąk	1	2002	Arkadiusz Bąk
P-09784	Jacek	Bąk	2	2002, 2006	Jacek Bąk
P-07360	Colin	Baker	1	1958	Colin Baker
P-06912	George	Baker	1	1958	George Baker
P-07562	José María	Bakero	2	1990, 1994	José María Bakero
P-00965	Mohammed	Bakhati	1	1934	Mohammed Bakhati
P-00857	Zuhair	Bakheet	1	1990	Zuhair Bakheet
P-07555	Sohrab	Bakhtiarizadeh	1	2006	Sohrab Bakhtiarizadeh
P-05268	Beb	Bakhuys	1	1934	Beb Bakhuys
P-03268	Andriy	Bal	2	1982, 1986	Andriy Bal
P-06658	Boško	Balaban	2	2002, 2006	Boško Balaban
P-00004	Krasimir	Balakov	2	1994, 1998	Krasimir Balakov
P-07491	Abel	Balbo	3	1990, 1994, 1998	Abel Balbo
P-03599	Marcelo	Balboa	3	1990, 1994, 1998	Marcelo Balboa
P-09594	Agustín	Balbuena	1	1974	Agustín Balbuena
P-04833	Tomás	Balcázar	1	1954	Tomás Balcázar
P-03958	Keita	Baldé	1	2018	Keita Baldé
P-07105	Julio César	Baldivieso	1	1994	Julio César Baldivieso
P-01066		Baldocchi	1	1970	 Baldocchi
P-05917	Héctor	Baley	2	1978, 1982	Héctor Baley
P-06996	Gabi	Balint	1	1990	Gabi Balint
P-01985	László	Bálint	2	1978, 1982	László Bálint
P-02580	Mirsad	Baljić	1	1990	Mirsad Baljić
P-05909	Alan	Ball	2	1966, 1970	Alan Ball
P-09114	Erwin	Ballabio	1	1938	Erwin Ballabio
P-05827	Michael	Ballack	2	2002, 2006	Michael Ballack
P-01567	Robert	Ballaman	1	1954	Robert Ballaman
P-01714	Enrique	Ballesteros	1	1930	Enrique Ballesteros
P-07531	István	Balogh	1	1938	István Balogh
P-06772	Leon	Balogun	1	2018	Leon Balogun
P-04874	Mario	Balotelli	1	2014	Mario Balotelli
P-02470	Felipe	Baloy	1	2018	Felipe Baloy
P-02793	Brian	Baloyi	1	1998	Brian Baloyi
P-03384	Sergei	Baltacha	1	1982	Sergei Baltacha
P-02090		Baltazar	2	1950, 1954	 Baltazar
P-02377	Sol	Bamba	2	2010, 2014	Sol Bamba
P-01511	Driss	Bamous	1	1970	Driss Bamous
P-04422	Fernando	Bandeirinha	1	1986	Fernando Bandeirinha
P-00801	Éver	Banega	1	2018	Éver Banega
P-04855	Máximo	Banguera	1	2014	Máximo Banguera
P-03327	Heinz	Bäni	1	1966	Heinz Bäni
P-08234	Anatoliy	Banishevskiy	1	1966	Anatoliy Banishevskiy
P-09652	Gordon	Banks	2	1966, 1970	Gordon Banks
P-04403	Jimmy	Banks	1	1990	Jimmy Banks
P-05629	Tommy	Banks	1	1958	Tommy Banks
P-05134	James	Bannatyne	1	2010	James Bannatyne
P-08046	Viktor	Bannikov	1	1966	Viktor Bannikov
P-01198	Eamonn	Bannon	1	1986	Eamonn Bannon
P-03491	Alexandre	Baptista	1	1966	Alexandre Baptista
P-01291	Júlio	Baptista	1	2010	Júlio Baptista
P-03139	Shraga	Bar	1	1970	Shraga Bar
P-08430	Edmond	Baraffe	1	1966	Edmond Baraffe
P-09188	Rubén	Baraja	1	2002	Rubén Baraja
P-06165	Stanisław	Baran	1	1938	Stanisław Baran
P-02142	Dominique	Baratelli	2	1978, 1982	Dominique Baratelli
P-01365	Iuliu	Baratky	2	1934, 1938	Iuliu Baratky
P-00647	Gerónimo	Barbadillo	1	1982	Gerónimo Barbadillo
P-09117	Juan	Barbas	1	1982	Juan Barbas
P-00211		Barbosa	1	1950	 Barbosa
P-01314	Pedro	Barbosa	1	2002	Pedro Barbosa
P-01121	Ştefan	Barbu	1	1930	Ştefan Barbu
P-08051	Andrei	Bărbulescu	1	1938	Andrei Bărbulescu
P-01805	Édgar	Bárcenas	1	2018	Édgar Bárcenas
P-02362	Rúben	Bareño	1	1970	Rúben Bareño
P-02761	Franco	Baresi	3	1982, 1990, 1994	Franco Baresi
P-01515	Giuseppe	Baresi	1	1986	Giuseppe Baresi
P-01096	Ángel	Bargas	1	1974	Ángel Bargas
P-04647	Paolo	Barison	1	1966	Paolo Barison
P-06874	Ross	Barkley	1	2014	Ross Barkley
P-04963	Jozef	Barmoš	1	1982	Jozef Barmoš
P-01791	John	Barnes	2	1986, 1990	John Barnes
P-00432	Tranquillo	Barnetta	3	2006, 2010, 2014	Tranquillo Barnetta
P-00559	Simone	Barone	1	2006	Simone Barone
P-07166	Milan	Baroš	1	2006	Milan Baroš
P-09378	Jacinto	Barquín	1	1938	Jacinto Barquín
P-06711	Hermidio	Barrantes	1	1990	Hermidio Barrantes
P-00880	Michael	Barrantes	1	2014	Michael Barrantes
P-06812	Pablo	Barrera	1	2010	Pablo Barrera
P-09449	Rodrigo	Barrera	1	1998	Rodrigo Barrera
P-05329	Diego	Barreto	1	2010	Diego Barreto
P-08840	Édgar	Barreto	2	2006, 2010	Édgar Barreto
P-04886	Warren	Barrett	1	1998	Warren Barrett
P-01244	Jorge	Barrios	1	1986	Jorge Barrios
P-09556	Lucas	Barrios	1	2010	Lucas Barrios
P-03631	Wilmar	Barrios	1	2018	Wilmar Barrios
P-03871	Andy	Barron	1	2010	Andy Barron
P-00975	Boubacar	Barry	3	2006, 2010, 2014	Boubacar Barry
P-05437	Gareth	Barry	1	2010	Gareth Barry
P-08115	Leopold	Barschandt	2	1954, 1958	Leopold Barschandt
P-09226	Claude	Barthélemy	1	1974	Claude Barthélemy
P-06099	Fabien	Barthez	3	1998, 2002, 2006	Fabien Barthez
P-05596	Shaun	Bartlett	1	1998	Shaun Bartlett
P-05701	Jan	Bartram	1	1986	Jan Bartram
P-00346	Abiodun	Baruwa	1	1998	Abiodun Baruwa
P-03776	Andrea	Barzagli	2	2006, 2014	Andrea Barzagli
P-06644	Juan Ignacio	Basaguren	1	1970	Juan Ignacio Basaguren
P-02446	José María	Basanta	1	2014	José María Basanta
P-09240	Mario	Basler	1	1994	Mario Basler
P-08187	Estanislau	Basora	1	1950	Estanislau Basora
P-06079	Salaheddine	Bassir	1	1998	Salaheddine Bassir
P-06239	Sébastien	Bassong	1	2010	Sébastien Bassong
P-02834	Dušan	Basta	1	2006	Dušan Basta
P-00176	Jean	Bastien	1	1938	Jean Bastien
P-04737	Michel	Bastos	1	2010	Michel Bastos
P-02040	Yıldıray	Baştürk	1	2002	Yıldıray Baştürk
P-00453	José	Basualdo	2	1990, 1994	José Basualdo
P-07020	Marcin	Baszczyński	1	2006	Marcin Baszczyński
P-09381		Batatais	1	1938	 Batatais
P-06280	Dominique	Bathenay	1	1978	Dominique Bathenay
P-07079	José	Batista	1	1986	José Batista
P-03483		Batista	2	1978, 1982	 Batista
P-07030	Sergio	Batista	2	1986, 1990	Sergio Batista
P-05392	Gabriel	Batistuta	3	1994, 1998, 2002	Gabriel Batistuta
P-02122	Joël	Bats	1	1986	Joël Bats
P-05828	Michy	Batshuayi	1	2018	Michy Batshuayi
P-05556	Jorge	Battaglia	1	1986	Jorge Battaglia
P-07765	Patrick	Battiston	3	1978, 1982, 1986	Patrick Battiston
P-09865	David	Batty	1	1998	David Batty
P-07117	Hans	Bauer	1	1954	Hans Bauer
P-04726		Bauer	2	1950, 1954	 Bauer
P-09853	Frank	Baumann	1	2002	Frank Baumann
P-00856	Ernst	Baumeister	2	1978, 1982	Ernst Baumeister
P-00021	Hubert	Baumgartner	1	1978	Hubert Baumgartner
P-04527	Michael	Baur	1	1990	Michael Baur
P-00267	Adolfo	Bautista	1	2010	Adolfo Bautista
P-07774	Edgardo	Bauza	1	1990	Edgardo Bauza
P-00421	Zoubeir	Baya	2	1998, 2002	Zoubeir Baya
P-05550	Julio	Baylón	1	1970	Julio Baylón
P-08122	Pierre	Bayonne	1	1974	Pierre Bayonne
P-00735	Vladimir	Beara	3	1950, 1954, 1958	Vladimir Beara
P-09395	Peter	Beardsley	2	1986, 1990	Peter Beardsley
P-05014	DaMarcus	Beasley	4	2002, 2006, 2010, 2014	DaMarcus Beasley
P-02514	Michael	Beauchamp	2	2006, 2010	Michael Beauchamp
P-02828	Georges	Beaucourt	1	1934	Georges Beaucourt
P-07780	Jean	Beausejour	2	2010, 2014	Jean Beausejour
P-05954		Bebeto	3	1990, 1994, 1998	 Bebeto
P-06965	Brayan	Beckeles	1	2014	Brayan Beckeles
P-04356	Franz	Beckenbauer	3	1966, 1970, 1974	Franz Beckenbauer
P-05151	Kyle	Beckerman	1	2014	Kyle Beckerman
P-00614	David	Beckham	3	1998, 2002, 2006	David Beckham
P-03655	Mikkel	Beckmann	1	2010	Mikkel Beckmann
P-03619	Henri	Bedimo	1	2014	Henri Bedimo
P-01200	Jan	Bednarek	1	2018	Jan Bednarek
P-07246	Rami	Bedoui	1	2018	Rami Bedoui
P-01339	Alejandro	Bedoya	1	2014	Alejandro Bedoya
P-02093	Dick	Been	1	1938	Dick Been
P-07518	Erich	Beer	1	1978	Erich Beer
P-03000	Walter	Beerli	1	1950	Walter Beerli
P-09287	Txiki	Begiristain	1	1994	Txiki Begiristain
P-09015	Asmir	Begović	1	2014	Asmir Begović
P-03998	Aziz	Behich	1	2018	Aziz Behich
P-01705	Valon	Behrami	4	2006, 2010, 2014, 2018	Valon Behrami
P-03864	Hashem	Beikzadeh	1	2014	Hashem Beikzadeh
P-04182	Uwe	Bein	1	1990	Uwe Bein
P-04218	Alireza	Beiranvand	1	2018	Alireza Beiranvand
P-05094	Steven	Beitashour	1	2014	Steven Beitashour
P-03191	Hassen	Bejaoui	1	2002	Hassen Bejaoui
P-06435	Ivan	Bek	1	1930	Ivan Bek
P-09401	Ihor	Belanov	1	1986	Ihor Belanov
P-00213	Raúl	Belén	1	1962	Raúl Belén
P-04467	Nadir	Belhadj	1	2010	Nadir Belhadj
P-07061	Younès	Belhanda	1	2018	Younès Belhanda
P-06223	Bruno	Belin	1	1954	Bruno Belin
P-09883	Ernesto	Belis	1	1934	Ernesto Belis
P-09021	Essaïd	Belkalem	1	2014	Essaïd Belkalem
P-03256	Colin	Bell	1	1970	Colin Bell
P-02715	Joseph-Antoine	Bell	3	1982, 1990, 1994	Joseph-Antoine Bell
P-07208	Habib	Bellaïd	1	2010	Habib Bellaïd
P-07689	Juliano	Belletti	1	2002	Juliano Belletti
P-07138	Hilderaldo	Bellini	3	1958, 1962, 1966	Hilderaldo Bellini
P-08850	Menachem	Bello	1	1970	Menachem Bello
P-05885	Bruno	Bellone	2	1982, 1986	Bruno Bellone
P-08077	Raymond	Bellot	1	1958	Raymond Bellot
P-06826	Lakhdar	Belloumi	2	1982, 1986	Lakhdar Belloumi
P-02416	Mauro	Bellugi	2	1974, 1978	Mauro Bellugi
P-04263	Jaime	Belmonte	1	1958	Jaime Belmonte
P-01552	Miodrag	Belodedici	1	1994	Miodrag Belodedici
P-09162	Emre	Belözoğlu	1	2002	Emre Belözoğlu
P-08687	Vladimir	Belyayev	1	1958	Vladimir Belyayev
P-08810	Faysal	Ben Ahmed	1	1998	Faysal Ben Ahmed
P-08201	Mohamed Amine	Ben Amor	1	2018	Mohamed Amine Ben Amor
P-00570	Abderraouf	Ben Aziza	1	1978	Abderraouf Ben Aziza
P-00684	Lamine	Ben Aziza	1	1978	Lamine Ben Aziza
P-00393	Abdelkader	Ben Bouali	1	1938	Abdelkader Ben Bouali
P-05214	Allal	Ben Kassou	1	1970	Allal Ben Kassou
P-02223	Mohamed	Ben Mouza	1	1978	Mohamed Ben Mouza
P-09229	Farouk	Ben Mustapha	1	2018	Farouk Ben Mustapha
P-03122	Eli	Ben Rimoz	1	1970	Eli Ben Rimoz
P-07348	Chaouki	Ben Saada	1	2006	Chaouki Ben Saada
P-00197	Mehdi	Ben Slimane	1	1998	Mehdi Ben Slimane
P-09254	Abdelaziz	Ben Tifour	1	1954	Abdelaziz Ben Tifour
P-04898	Imed	Ben Younes	1	1998	Imed Ben Younes
P-03253	Fakhreddine	Ben Youssef	1	2018	Fakhreddine Ben Youssef
P-07615	Syam	Ben Youssef	1	2018	Syam Ben Youssef
P-06425	Selim	Benachour	1	2002	Selim Benachour
P-00312	Diego	Benaglio	3	2006, 2010, 2014	Diego Benaglio
P-09624	Yohan	Benalouane	1	2018	Yohan Benalouane
P-02578	Antonio	Benarrivo	1	1994	Antonio Benarrivo
P-07288	Medhi	Benatia	1	2018	Medhi Benatia
P-07406	Ali	Bencheikh	1	1982	Ali Bencheikh
P-06412	József	Bencsics	1	1958	József Bencsics
P-09094	Jakob	Bender	1	1934	Jakob Bender
P-01764	Nicklas	Bendtner	1	2010	Nicklas Bendtner
P-02995	Ferenc	Bene	1	1966	Ferenc Bene
P-03390		Benedicto	1	1930	 Benedicto
P-04602	Michal	Benedikovič	1	1954	Michal Benedikovič
P-08612	Romeo	Benetti	2	1974, 1978	Romeo Benetti
P-03953	Pablo	Bengoechea	1	1990	Pablo Bengoechea
P-03283	Jerry	Bengtson	1	2014	Jerry Bengtson
P-04207	Christian	Benítez	1	2006	Christian Benítez
P-05485	Édgar	Benítez	1	2010	Édgar Benítez
P-09815	Miguel Ángel	Benítez	1	1998	Miguel Ángel Benítez
P-06873	Pedro	Benítez	1	1930	Pedro Benítez
P-02979	Santiago	Benítez	1	1930	Santiago Benítez
P-07741	Delfín	Benítez Cáceres	1	1930	Delfín Benítez Cáceres
P-09355	Fawzi	Benkhalidi	1	1986	Fawzi Benkhalidi
P-09093	Boujemaa	Benkhrif	1	1970	Boujemaa Benkhrif
P-05649	Halim	Benmabrouk	1	1986	Halim Benmabrouk
P-07075	Tedj	Bensaoula	2	1982, 1986	Tedj Bensaoula
P-01692	Yacine	Bentalaa	1	1982	Yacine Bentalaa
P-07250	Nabil	Bentaleb	1	2014	Nabil Bentaleb
P-09966	Rodrigo	Bentancur	1	2018	Rodrigo Bentancur
P-07481	Roy	Bentley	1	1950	Roy Bentley
P-08841	Manuel	Bento	1	1986	Manuel Bento
P-02698	Paulo	Bento	1	2002	Paulo Bento
P-09265		Benvenuto	1	1930	 Benvenuto
P-02405	Driss	Benzekri	1	1998	Driss Benzekri
P-00798	Karim	Benzema	1	2014	Karim Benzema
P-00609	Ali	Beratlıgil	1	1954	Ali Beratlıgil
P-07675	Marc	Berdoll	1	1978	Marc Berdoll
P-04385	Pál	Berendy	1	1958	Pál Berendy
P-09451	Bartosz	Bereszyński	1	2018	Bartosz Bereszyński
P-01487	Vasili	Berezutski	1	2014	Vasili Berezutski
P-09154	Henning	Berg	2	1994, 1998	Henning Berg
P-06226	Marcus	Berg	1	2018	Marcus Berg
P-09534	Mario	Bergara	1	1962	Mario Bergara
P-06533	Jan	Berger	1	1982	Jan Berger
P-07579	Philippe	Bergeroo	1	1986	Philippe Bergeroo
P-03395	Pedro	Bergés	1	1938	Pedro Bergés
P-00661	Klaus	Berggreen	1	1986	Klaus Berggreen
P-03525	Dennis	Bergkamp	2	1994, 1998	Dennis Bergkamp
P-02452	Sverre	Berglie	1	1938	Sverre Berglie
P-03571	Orvar	Bergmark	1	1958	Orvar Bergmark
P-04483	Giuseppe	Bergomi	4	1982, 1986, 1990, 1998	Giuseppe Bergomi
P-06174	Curt	Bergsten	1	1938	Curt Bergsten
P-00489	Gregg	Berhalter	2	2002, 2006	Gregg Berhalter
P-06433	Hugo	Berly	1	1966	Hugo Berly
P-05656	Ahmet	Berman	1	1954	Ahmet Berman
P-02442	Jesús	Bermúdez	1	1930	Jesús Bermúdez
P-03298	Jorge	Bermúdez	1	1998	Jorge Bermúdez
P-05495	Marcelino	Bernal	2	1994, 1998	Marcelino Bernal
P-06926	Günter	Bernard	1	1966	Günter Bernard
P-05792	Kurt	Bernard	1	2006	Kurt Bernard
P-06605		Bernard	1	2014	 Bernard
P-09981	Víctor	Bernárdez	2	2010, 2014	Víctor Bernárdez
P-09580	Bengt	Berndtsson	1	1958	Bengt Berndtsson
P-05475	Ángel	Berni	1	1950	Ángel Berni
P-08095	Jens Jørn	Bertelsen	1	1986	Jens Jørn Bertelsen
P-07393	Thomas	Berthold	3	1986, 1990, 1994	Thomas Berthold
P-09801	Nicola	Berti	2	1990, 1994	Nicola Berti
P-08146	Sergio	Berti	1	1998	Sergio Berti
P-08094	Mario	Bertini	1	1970	Mario Bertini
P-01232	Luigi	Bertolini	1	1934	Luigi Bertolini
P-05050	Daniel	Bertoni	2	1978, 1982	Daniel Bertoni
P-06390	Sergio	Bertoni	1	1938	Sergio Bertoni
P-05189	Leo	Bertos	1	2010	Leo Bertos
P-05447	Jean-Paul	Bertrand-Demanes	1	1978	Jean-Paul Bertrand-Demanes
P-02105	Vladimir	Beschastnykh	2	1994, 2002	Vladimir Beschastnykh
P-07852	Muhamed	Bešić	1	2014	Muhamed Bešić
P-04295	Matt	Besler	1	2014	Matt Besler
P-07470	Antonio	Betancort	1	1966	Antonio Betancort
P-06665	Armando	Betancourt	1	1982	Armando Betancourt
P-09821		Beto	1	2002	 Beto
P-07388		Beto	3	2010, 2014, 2018	 Beto
P-04686	Jim	Bett	2	1986, 1990	Jim Bett
P-02699	Roberto	Bettega	1	1978	Roberto Bettega
P-03837	Jacques	Beurlet	1	1970	Jacques Beurlet
P-02721	Habib	Beye	1	2002	Habib Beye
P-02703	Volodymyr	Bezsonov	3	1982, 1986, 1990	Volodymyr Bezsonov
P-06822	Bartosz	Białkowski	1	2018	Bartosz Białkowski
P-01621	Amedeo	Biavati	1	1938	Amedeo Biavati
P-02947	Michel	Bibard	1	1986	Michel Bibard
P-05263	Ermin	Bičakčić	1	2014	Ermin Bičakčić
P-03565	Josef	Bican	1	1934	Josef Bican
P-01417	Alfred	Bickel	2	1938, 1950	Alfred Bickel
P-07256	Thomas	Bickel	1	1994	Thomas Bickel
P-04258	Přemysl	Bičovský	1	1982	Přemysl Bičovský
P-04668	Abdellah	Bidane	1	1986	Abdellah Bidane
P-02732	Guillaume	Bieganski	1	1954	Guillaume Bieganski
P-05736	Július	Bielik	1	1990	Július Bielik
P-02379	Oliver	Bierhoff	2	1998, 2002	Oliver Bierhoff
P-08805	Ulrich	Biesinger	1	1954	Ulrich Biesinger
P-04723	Heinz	Bigler	1	1954	Heinz Bigler
P-00087	Lucas	Biglia	2	2014, 2018	Lucas Biglia
P-07839		Bigode	1	1950	 Bigode
P-08666	Vladimir	Bigorra	1	1982	Vladimir Bigorra
P-01478	Michal	Bílek	1	1990	Michal Bílek
P-03659	Slaven	Bilić	1	1998	Slaven Bilić
P-05831	Silviu	Bindea	2	1934, 1938	Silviu Bindea
P-04017	Billy	Bingham	1	1958	Billy Bingham
P-02375	Jimmy	Binning	1	1954	Jimmy Binning
P-09602	Antonio	Biosca	1	1978	Antonio Biosca
P-01572	Chris	Birchall	1	2006	Chris Birchall
P-06546	Mihály	Bíró	1	1938	Mihály Bíró
P-07298	Sándor	Bíró	2	1934, 1938	Sándor Bíró
P-04713	Valter	Birsa	1	2010	Valter Birsa
P-03980	Majid	Bishkar	1	1978	Majid Bishkar
P-06531		Bismarck	1	1990	 Bismarck
P-05119	Joe	Bizera	1	2002	Joe Bizera
P-02182	Renato	Bizzozero	2	1934, 1938	Renato Bizzozero
P-07863	Birkir	Bjarnason	1	2018	Birkir Bjarnason
P-07213	Joachim	Björklund	1	1994	Joachim Björklund
P-07381	Stig Inge	Bjørnebye	2	1994, 1998	Stig Inge Bjørnebye
P-02784	John	Blackley	1	1974	John Blackley
P-02125	Laurent	Blanc	1	1998	Laurent Blanc
P-02404	Danny	Blanchflower	1	1958	Danny Blanchflower
P-07563	Carlos	Blanco	2	1954, 1958	Carlos Blanco
P-00729	Cuauhtémoc	Blanco	3	1998, 2002, 2010	Cuauhtémoc Blanco
P-06731	Ivano	Blason	1	1950	Ivano Blason
P-07042	Jakub	Błaszczykowski	1	2018	Jakub Błaszczykowski
P-01660	Jaromír	Blažek	1	2006	Jaromír Blažek
P-04511	Daley	Blind	1	2014	Daley Blind
P-03537	Danny	Blind	2	1990, 1994	Danny Blind
P-00179	Brian	Bliss	1	1990	Brian Bliss
P-05783	Wolfgang	Blochwitz	1	1974	Wolfgang Blochwitz
P-01271	Oleh	Blokhin	2	1982, 1986	Oleh Blokhin
P-02152	Jesper	Blomqvist	1	1994	Jesper Blomqvist
P-03116	Jim	Blyth	1	1978	Jim Blyth
P-01010	Luís	Boa Morte	1	2006	Luís Boa Morte
P-07606	Derek	Boateng	2	2006, 2010	Derek Boateng
P-00766	Jérôme	Boateng	3	2010, 2014, 2018	Jérôme Boateng
P-00259	Kevin-Prince	Boateng	2	2010, 2014	Kevin-Prince Boateng
P-08820	Allan	Boath	1	1982	Allan Boath
P-08414	Lobilo	Boba	1	1974	Lobilo Boba
P-02535	Aldo	Bobadilla	2	2006, 2010	Aldo Bobadilla
P-07809	Zvonimir	Boban	1	1998	Zvonimir Boban
P-04917	Stjepan	Bobek	2	1950, 1954	Stjepan Bobek
P-08212	Carlos	Bocanegra	2	2006, 2010	Carlos Bocanegra
P-03969	Salvatore	Bocchetti	1	2010	Salvatore Bocchetti
P-00549	Ricardo	Bochini	1	1986	Ricardo Bochini
P-00160	Roger	Bocquet	2	1950, 1954	Roger Bocquet
P-01142	Gilbert	Bodart	2	1986, 1990	Gilbert Bodart
P-03200	Marco	Bode	1	2002	Marco Bode
P-08678	Iuliu	Bodola	2	1934, 1938	Iuliu Bodola
P-08813	Béla	Bodonyi	1	1982	Béla Bodonyi
P-02119	László	Bödör	1	1962	László Bödör
P-01211	Jón Daði	Böðvarsson	1	2018	Jón Daði Böðvarsson
P-06749	Danny	Boffin	3	1994, 1998, 2002	Danny Boffin
P-07212	Winston	Bogarde	1	1998	Winston Bogarde
P-01212	Ion	Bogdan	1	1938	Ion Bogdan
P-01011	Kasper	Bøgelund	1	2002	Kasper Bøgelund
P-05557	Norberto	Boggio	1	1958	Norberto Boggio
P-02196	Alain	Boghossian	2	1998, 2002	Alain Boghossian
P-00654	Vladislav	Bogićević	1	1974	Vladislav Bogićević
P-05616	György	Bognár	1	1986	György Bognár
P-06757	Lars	Bohinen	1	1994	Lars Bohinen
P-04834	Jörg	Böhme	1	2002	Jörg Böhme
P-03593	Arthur	Boka	3	2006, 2010, 2014	Arthur Boka
P-02309	Alen	Bokšić	2	1990, 2002	Alen Bokšić
P-00492	Jorge	Bolaño	1	1998	Jorge Bolaño
P-09965	Christian	Bolaños	3	2006, 2014, 2018	Christian Bolaños
P-08150	Rıdvan	Bolatlı	1	1954	Rıdvan Bolatlı
P-09502	Mario	Bolatti	1	2010	Mario Bolatti
P-08670	Mathis	Bolly	1	2014	Mathis Bolly
P-08524	Jozef	Bomba	1	1962	Jozef Bomba
P-07048	Roberto	Bonano	1	2002	Roberto Bonano
P-08114	Adrián	Bone	1	2014	Adrián Bone
P-05940	Carlos	Bonet	3	2002, 2006, 2010	Carlos Bonet
P-08638	Peter	Bonetti	2	1966, 1970	Peter Bonetti
P-02078	Hristo	Bonev	2	1970, 1974	Hristo Bonev
P-08760	Oscar	Bonfiglio	1	1930	Oscar Bonfiglio
P-00468	Gaëtan	Bong	1	2010	Gaëtan Bong
P-05466	Rainer	Bonhof	2	1974, 1978	Rainer Bonhof
P-05351	Zbigniew	Boniek	3	1978, 1982, 1986	Zbigniew Boniek
P-08646	Roberto	Boninsegna	2	1970, 1974	Roberto Boninsegna
P-09693	Giampiero	Boniperti	2	1950, 1954	Giampiero Boniperti
P-01377	Joseph	Bonnel	1	1966	Joseph Bonnel
P-06511	Pat	Bonner	2	1990, 1994	Pat Bonner
P-01248	Leonardo	Bonucci	2	2010, 2014	Leonardo Bonucci
P-03326	Eduardo	Bonvallet	1	1982	Eduardo Bonvallet
P-04997	Wilfried	Bony	1	2014	Wilfried Bony
P-06512	Mike	Bookie	1	1930	Mike Bookie
P-00079	Matthew	Booth	1	2010	Matthew Booth
P-07497	Scott	Booth	1	1998	Scott Booth
P-07190	George	Borba	1	1970	George Borba
P-04120	José Luis	Borbolla	1	1950	José Luis Borbolla
P-04597	Ivano	Bordon	2	1978, 1982	Ivano Bordon
P-09437	Felice	Borel	1	1934	Felice Borel
P-09485	Jorge	Borelli	1	1994	Jorge Borelli
P-05300	Hasse	Borg	1	1978	Hasse Borg
P-02079	Carlos	Borges	1	1954	Carlos Borges
P-02773	Celso	Borges	2	2014, 2018	Celso Borges
P-09320	Jared	Borgetti	2	2002, 2006	Jared Borgetti
P-05080	Claudio	Borghi	1	1986	Claudio Borghi
P-01932	Frank	Borghi	1	1950	Frank Borghi
P-00116	Arash	Borhani	1	2006	Arash Borhani
P-02203	Daniel	Borimirov	2	1994, 1998	Daniel Borimirov
P-05775	Krasimir	Borisov	1	1974	Krasimir Borisov
P-02664	Carlos	Borja	1	1994	Carlos Borja
P-08563	Enrique	Borja	2	1966, 1970	Enrique Borja
P-03463	Félix	Borja	1	2006	Félix Borja
P-07826	Miguel	Borja	1	2018	Miguel Borja
P-08153	Reino	Börjesson	1	1958	Reino Börjesson
P-02816	Vital	Borkelmans	2	1994, 1998	Vital Borkelmans
P-01239	Jonathan	Bornstein	1	2010	Jonathan Bornstein
P-06023	Aleksandr	Borodyuk	2	1990, 1994	Aleksandr Borodyuk
P-02849	Parviz	Boroumand	1	1998	Parviz Boroumand
P-09038	Jaroslav	Borovička	2	1958, 1962	Jaroslav Borovička
P-04416	Sergei	Borovsky	1	1982	Sergei Borovsky
P-08473	Tim	Borowski	1	2006	Tim Borowski
P-00730	Artur	Boruc	1	2006	Artur Boruc
P-04761	Bartosz	Bosacki	1	2006	Bartosz Bosacki
P-05092	Crisant	Bosch	1	1934	Crisant Bosch
P-05719	Sander	Boschker	1	2010	Sander Boschker
P-06039	Johan	Boskamp	1	1978	Johan Boskamp
P-00426	Vujadin	Boškov	2	1954, 1958	Vujadin Boškov
P-06976	John	Bosman	1	1994	John Bosman
P-03876	Ivan	Bošnjak	1	2006	Ivan Bošnjak
P-00595	Bernard	Bosquier	1	1966	Bernard Bosquier
P-07376	Joseph	Bossi	1	1934	Joseph Bossi
P-01578	Ángel	Bossio	1	1930	Ángel Bossio
P-04567	Miguel	Bossio	1	1986	Miguel Bossio
P-05135	Maxime	Bossis	3	1978, 1982, 1986	Maxime Bossis
P-02899	Sammy	Bossut	1	2014	Sammy Bossut
P-02109	Juan	Botasso	1	1930	Juan Botasso
P-04744	Riadh	Bouazizi	3	1998, 2002, 2006	Riadh Bouazizi
P-09575	Jaroslav	Bouček	2	1934, 1938	Jaroslav Bouček
P-02326	Ryad	Boudebouz	1	2010	Ryad Boudebouz
P-09049	Aziz	Bouderbala	1	1986	Aziz Bouderbala
P-02184	Madjid	Bougherra	2	2010, 2014	Madjid Bougherra
P-08853	Aziz	Bouhaddouz	1	2018	Aziz Bouhaddouz
P-08998	Mounir	Boukadida	1	1998	Mounir Boukadida
P-01653	Alioum	Boukar	2	1998, 2002	Alioum Boukar
P-09822	Khalid	Boulahrouz	2	2006, 2010	Khalid Boulahrouz
P-04322	Ali	Boumnijel	3	1998, 2002, 2006	Ali Boumnijel
P-08658	Jean-Alain	Boumsong	1	2006	Jean-Alain Boumsong
P-00958	Yassine	Bounou	1	2018	Yassine Bounou
P-01110	François	Bourbotte	1	1938	François Bourbotte
P-02848	Abdelmajid	Bourebbou	1	1982	Abdelmajid Bourebbou
P-05271	Désiré	Bourgeois	1	1934	Désiré Bourgeois
P-03439	Mbark	Boussoufa	1	2018	Mbark Boussoufa
P-07925	Khalid	Boutaïb	1	2018	Khalid Boutaïb
P-08546	Noureddine	Bouyahyaoui	1	1986	Noureddine Bouyahyaoui
P-03609	Abdelmajid	Bouyboud	1	1994	Abdelmajid Bouyboud
P-00691	Raouf	Bouzaiene	1	2002	Raouf Bouzaiene
P-00043	Dave	Bowen	1	1958	Dave Bowen
P-02457	Tomás	Boy	1	1986	Tomás Boy
P-08782	Dedryck	Boyata	1	2018	Dedryck Boyata
P-04230	Tom	Boyd	1	1998	Tom Boyd
P-09696	Walter	Boyd	1	1998	Walter Boyd
P-05148	John	Boye	1	2014	John Boye
P-03941	Andrew	Boyens	1	2010	Andrew Boyens
P-04954	Oliver	Bozanic	1	2014	Oliver Bozanic
P-00610	József	Bozsik	2	1954, 1958	József Bozsik
P-01410	Edson	Braafheid	1	2010	Edson Braafheid
P-06830	Peter	Brabrook	1	1958	Peter Brabrook
P-05009	François	Bracci	1	1978	François Bracci
P-04510	Vojtěch	Bradáč	1	1938	Vojtěch Bradáč
P-05910	Filip	Bradarić	1	2018	Filip Bradarić
P-06235	Michael	Bradley	2	2010, 2014	Michael Bradley
P-07676	Robert	Braet	1	1938	Robert Braet
P-02558	Yacine	Brahimi	1	2014	Yacine Brahimi
P-07947	Pierre	Braine	1	1930	Pierre Braine
P-00109	Raymond	Braine	1	1938	Raymond Braine
P-06346	Martin	Braithwaite	1	2018	Martin Braithwaite
P-02338		Branco	3	1986, 1990, 1994	 Branco
P-05293	Gheorghe	Brandabura	1	1938	Gheorghe Brandabura
P-00162		Brandão	1	1938	 Brandão
P-05335		Brandãozinho	1	1954	 Brandãozinho
P-05832	Julian	Brandt	1	2018	Julian Brandt
P-03043	Ernie	Brandts	1	1978	Ernie Brandts
P-08259	Bernd	Bransch	1	1974	Bernd Bransch
P-01124	Rune	Bratseth	1	1994	Rune Bratseth
P-05651	Georg	Braun	1	1934	Georg Braun
P-07651	Coloman	Braun-Bogdan	1	1938	Coloman Braun-Bogdan
P-02927	Claudio	Bravo	2	2010, 2014	Claudio Bravo
P-05224	Omar	Bravo	1	2006	Omar Bravo
P-05804	Sergio	Bravo	1	1954	Sergio Bravo
P-07558	Alan	Brazil	1	1982	Alan Brazil
P-01801	Mišo	Brečko	1	2010	Mišo Brečko
P-09101	Gary	Breen	1	2002	Gary Breen
P-07528	Georges	Bregy	1	1994	Georges Bregy
P-07217	Andreas	Brehme	3	1986, 1990, 1994	Andreas Brehme
P-05020	Gerhard	Breitenberger	1	1978	Gerhard Breitenberger
P-02216	Paul	Breitner	2	1974, 1982	Paul Breitner
P-03085	Billy	Bremner	1	1974	Billy Bremner
P-03195	Randall	Brenes	1	2014	Randall Brenes
P-08995	Mark	Bresciano	3	2006, 2010, 2014	Mark Bresciano
P-01892	Jean	Brichaut	1	1934	Jean Brichaut
P-00465	Ian	Bridge	1	1986	Ian Bridge
P-05021	Wayne	Bridge	2	2002, 2006	Wayne Bridge
P-09857	Hans-Peter	Briegel	2	1982, 1986	Hans-Peter Briegel
P-07745	Dave	Bright	1	1982	Dave Bright
P-01970		Brilhante	1	1930	 Brilhante
P-04193	Miguel Ángel	Brindisi	1	1974	Miguel Ángel Brindisi
P-05500	Miguel	Brito	1	1930	Miguel Brito
P-09985		Brito	2	1966, 1970	 Brito
P-04341	Julio César	Britos	1	1950	Julio César Britos
P-01406		Britto	1	1938	 Britto
P-05028	Hugo	Brizuela	1	1998	Hugo Brizuela
P-03215	Isaác	Brizuela	1	2014	Isaác Brizuela
P-07751	Branko	Brnović	1	1998	Branko Brnović
P-02978	Dick	Keith	1	1958	Dick Keith
P-03979	Dragoljub	Brnović	1	1990	Dragoljub Brnović
P-04996	Peter	Broadbent	1	1958	Peter Broadbent
P-08640	Ivor	Broadis	1	1954	Ivor Broadis
P-07014	Jeremy	Brockie	1	2010	Jeremy Brockie
P-09978	René	Brodmann	1	1966	René Brodmann
P-04137	Božo	Broketa	1	1950	Božo Broketa
P-08571	Tomas	Brolin	2	1990, 1994	Tomas Brolin
P-07333	Walter	Brom	1	1938	Walter Brom
P-08302	Dylan	Bronn	1	2018	Dylan Bronn
P-03990	Trevor	Brooking	1	1982	Trevor Brooking
P-09091	John	Brooks	1	2014	John Brooks
P-09131	Hugo	Broos	1	1986	Hugo Broos
P-01137	Valeri	Broshin	1	1990	Valeri Broshin
P-03962	Noel	Brotherston	1	1982	Noel Brotherston
P-07760	Allan	Brown	1	1954	Allan Brown
P-06566	Bill	Brown	1	1958	Bill Brown
P-02468	Durrant	Brown	1	1998	Durrant Brown
P-05896	Jim	Brown	1	1930	Jim Brown
P-07908	José Luis	Brown	1	1986	José Luis Brown
P-07413	Melvin	Brown	1	2002	Melvin Brown
P-07062	Tim	Brown	1	2010	Tim Brown
P-07712	Víctor	Brown	1	1950	Víctor Brown
P-02238	Wes	Brown	1	2002	Wes Brown
P-00289	Paweł	Brożek	1	2006	Paweł Brożek
P-08439	Marcelo	Brozović	2	2014, 2018	Marcelo Brozović
P-02481	Stéphane	Bruey	1	1958	Stéphane Bruey
P-00943	Albert	Brülls	2	1962, 1966	Albert Brülls
P-09001	Martin	Brunner	1	1994	Martin Brunner
P-02683	Michel	Brusseaux	1	1938	Michel Brusseaux
P-00254	Arne	Brustad	1	1938	Arne Brustad
P-03796	Steven	Bryce	1	2002	Steven Bryce
P-04153	Knut	Brynildsen	1	1938	Knut Brynildsen
P-05234	Titus	Buberník	2	1958, 1962	Titus Buberník
P-02049	Aleksandr	Bubnov	1	1986	Aleksandr Bubnov
P-06143	Valentin	Bubukin	1	1958	Valentin Bubukin
P-08774	Luca	Bucci	1	1994	Luca Bucci
P-00547	Martin	Buchan	2	1974, 1978	Martin Buchan
P-08296	Albert	Büche	1	1934	Albert Büche
P-05582	Fritz	Buchloh	2	1934, 1938	Fritz Buchloh
P-07255	Guido	Buchwald	2	1990, 1994	Guido Buchwald
P-07431	Delron	Buckley	2	1998, 2002	Delron Buckley
P-01207	László	Budai	2	1954, 1958	László Budai
P-05728	Edson	Buddle	1	2010	Edson Buddle
P-03350	Robert	Budzynski	1	1966	Robert Budzynski
P-06771	Titi	Buengo	1	2006	Titi Buengo
P-03142	David	Buezo	1	1982	David Buezo
P-00132	Gianluigi	Buffon	5	1998, 2002, 2006, 2010, 2014	Gianluigi Buffon
P-00550	Lorenzo	Buffon	1	1962	Lorenzo Buffon
P-07252	Feridun	Buğeker	1	1954	Feridun Buğeker
P-03910	Otto	Bühler	1	1934	Otto Bühler
P-00787	Spasoje	Bulajič	1	2002	Spasoje Bulajič
P-08245	Giacomo	Bulgarelli	2	1962, 1966	Giacomo Bulgarelli
P-00612	Ivan	Buljan	1	1974	Ivan Buljan
P-03335	Branko	Buljevic	1	1974	Branko Buljevic
P-05245	Steve	Bull	1	1990	Steve Bull
P-02743	Fernando	Bulnes	1	1982	Fernando Bulnes
P-07512	Mirosław	Bulzacki	1	1974	Mirosław Bulzacki
P-06717	Andrzej	Buncol	2	1982, 1986	Andrzej Buncol
P-00597	Dezső	Bundzsák	1	1958	Dezső Bundzsák
P-02962	Albert	Bunjaku	1	2010	Albert Bunjaku
P-08434	Lennart	Bunke	2	1934, 1938	Lennart Bunke
P-05451	Juan Carlos	Burbano	1	2002	Juan Carlos Burbano
P-04369	Győző	Burcsa	1	1986	Győző Burcsa
P-04075	Dieter	Burdenski	1	1978	Dieter Burdenski
P-06872	Nicolás	Burdisso	2	2006, 2010	Nicolás Burdisso
P-01959	Rudolf	Bürger	3	1930, 1934, 1938	Rudolf Bürger
P-07051	Ted	Burgin	1	1954	Ted Burgin
P-00130	Tarcisio	Burgnich	3	1966, 1970, 1974	Tarcisio Burgnich
P-00112	Germán	Burgos	2	1998, 2002	Germán Burgos
P-01925	Jaroslav	Burgr	2	1934, 1938	Jaroslav Burgr
P-03799	Juan	Burgueño	1	1950	Juan Burgueño
P-07527	Karel	Burkert	1	1938	Karel Burkert
P-05992	Roman	Bürki	2	2014, 2018	Roman Bürki
P-05042	Craig	Burley	1	1998	Craig Burley
P-09686	George	Burley	1	1982	George Burley
P-08798	Kenny	Burns	1	1978	Kenny Burns
P-01193	Mike	Burns	2	1994, 1998	Mike Burns
P-02255	Jorge	Burruchaga	2	1986, 1990	Jorge Burruchaga
P-00930	Deon	Burton	1	1998	Deon Burton
P-05927	Okan	Buruk	1	2002	Okan Buruk
P-03543	Leonid	Buryak	1	1982	Leonid Buryak
P-06388	Willy	Busch	1	1934	Willy Busch
P-03037	Søren	Busk	1	1986	Søren Busk
P-06306	Miguel	Busquets	1	1950	Miguel Busquets
P-06100	Sergio	Busquets	3	2010, 2014, 2018	Sergio Busquets
P-00618	José	Bustamante	1	1930	José Bustamante
P-03792	José	Bustamante	1	1950	José Bustamante
P-04039	Terry	Butcher	3	1982, 1986, 1990	Terry Butcher
P-00305	Tomislav	Butina	2	2002, 2006	Tomislav Butina
P-08939	Jack	Butland	1	2018	Jack Butland
P-07608	Emilio	Butragueño	2	1986, 1990	Emilio Butragueño
P-05983	Hans-Jörg	Butt	2	2002, 2010	Hans-Jörg Butt
P-07854	Nicky	Butt	1	2002	Nicky Butt
P-08766	Fernand	Buyle	1	1938	Fernand Buyle
P-09186	Jenő	Buzánszky	1	1954	Jenő Buzánszky
P-06969	Hans	Buzek	1	1958	Hans Buzek
P-02069	Ola	By Rise	1	1994	Ola By Rise
P-08845	Oleksiy	Byelik	1	2006	Oleksiy Byelik
P-04015	Gerry	Byrne	1	1966	Gerry Byrne
P-07276	John	Byrne	1	1990	John Byrne
P-09220	Roger	Byrne	1	1954	Roger Byrne
P-07069	Anatoliy	Byshovets	1	1970	Anatoliy Byshovets
P-07301	Byung-joo	Byun	2	1986, 1990	Byung-joo Byun
P-00779	Carlos	Caballero	1	1982	Carlos Caballero
P-08300	Gabriel	Caballero	1	2002	Gabriel Caballero
P-00351	Luis	Caballero	1	1986	Luis Caballero
P-02897	Willy	Caballero	1	2018	Willy Caballero
P-00929	Ricardo	Cabanas	1	2006	Ricardo Cabanas
P-05454	Roberto	Cabañas	1	1986	Roberto Cabañas
P-08360	Salvador	Cabañas	1	2006	Salvador Cabañas
P-03724	Yohan	Cabaye	1	2014	Yohan Cabaye
P-09135		Cabeção	1	1954	 Cabeção
P-05839	Rémy	Cabella	1	2014	Rémy Cabella
P-05251	Salvador	Cabezas	1	1970	Salvador Cabezas
P-02753	Eufemio	Cabral	1	1986	Eufemio Cabral
P-09550	Ángel	Cabrera	1	1962	Ángel Cabrera
P-00808	Antonio	Cabrera	1	1950	Antonio Cabrera
P-03472	David	Cabrera	1	1970	David Cabrera
P-08588	René	Cabrera	1	1950	René Cabrera
P-05038	Wilmar	Cabrera	1	1986	Wilmar Cabrera
P-08791	Wílmer	Cabrera	2	1990, 1998	Wílmer Cabrera
P-05548	Antonio	Cabrini	3	1978, 1982, 1986	Antonio Cabrini
P-09199		Cacau	1	2010	 Cacau
P-07916	Carlos	Cáceda	1	2018	Carlos Cáceda
P-09022	Fernando	Cáceres	1	1994	Fernando Cáceres
P-03297	Juan	Cáceres	1	1978	Juan Cáceres
P-08854	Julio César	Cáceres	3	2002, 2006, 2010	Julio César Cáceres
P-06884	Martín	Cáceres	3	2010, 2014, 2018	Martín Cáceres
P-01196	Víctor	Cáceres	1	2010	Víctor Cáceres
P-06009	Virginio	Cáceres	1	1986	Virginio Cáceres
P-05176	Liassine	Cadamuro-Bentaïba	1	2014	Liassine Cadamuro-Bentaïba
P-02159	Jiří	Čadek	1	1958	Jiří Čadek
P-08047	Omar	Caetano	2	1966, 1970	Omar Caetano
P-08404		Cafu	4	1994, 1998, 2002, 2006	 Cafu
P-03550	Gary	Cahill	2	2014, 2018	Gary Cahill
P-09745	Tim	Cahill	4	2006, 2010, 2014, 2018	Tim Cahill
P-03500	Felipe	Caicedo	1	2014	Felipe Caicedo
P-06963	Željko	Čajkovski	1	1950	Željko Čajkovski
P-06701	Zlatko	Čajkovski	2	1950, 1954	Zlatko Čajkovski
P-08311		Caju	2	1970, 1974	 Caju
P-02102	Bertus	Caldenhove	1	1938	Bertus Caldenhove
P-00147	Ramón	Calderé	1	1986	Ramón Calderé
P-05386	Gabriel	Calderón	2	1982, 1990	Gabriel Calderón
P-02951	Ignacio	Calderón	2	1966, 1970	Ignacio Calderón
P-07560	José	Calderón	1	2018	José Calderón
P-08420	Carlos	Calderón de la Barca	1	1958	Carlos Calderón de la Barca
P-07777	Colin	Calderwood	1	1998	Colin Calderwood
P-03222	Eric	Caldow	1	1958	Eric Caldow
P-01991	Miguel	Calero	1	1998	Miguel Calero
P-09512	Duje	Ćaleta-Car	1	2018	Duje Ćaleta-Car
P-04772	Oscar	Calics	1	1966	Oscar Calics
P-07763	Umberto	Caligaris	1	1934	Umberto Caligaris
P-09775	Paul	Caligiuri	2	1990, 1994	Paul Caligiuri
P-00376	Ian	Callaghan	1	1966	Ian Callaghan
P-02129	Ignacio	Calle	1	1962	Ignacio Calle
P-04628	Lorenzo	Calonga	1	1950	Lorenzo Calonga
P-01571	Diego	Calvo	1	2014	Diego Calvo
P-05064	Francisco	Calvo	1	2018	Francisco Calvo
P-03169	Juan Carlos	Calvo	1	1930	Juan Carlos Calvo
P-08557	José Antonio	Camacho	2	1982, 1986	José Antonio Camacho
P-07542	Manuel	Camacho	1	1958	Manuel Camacho
P-06850	Henri	Camara	1	2002	Henri Camara
P-01665	Souleymane	Camara	1	2002	Souleymane Camara
P-08804	Paco	Camarasa	1	1994	Paco Camarasa
P-00825	Rodion	Cămătaru	1	1990	Rodion Cămătaru
P-09582	Štefan	Čambal	1	1934	Štefan Čambal
P-08770	Esteban	Cambiasso	1	2006	Esteban Cambiasso
P-09495	Daniel	Cambronero	1	2014	Daniel Cambronero
P-06073	Francisco	Cámera	1	1970	Francisco Cámera
P-07357	Geoff	Cameron	1	2014	Geoff Cameron
P-03530	José Luis	Caminero	1	1994	José Luis Caminero
P-06639	Mauro	Camoranesi	2	2006, 2010	Mauro Camoranesi
P-08501	Hugo	Campagnaro	1	2014	Hugo Campagnaro
P-04724	Martín	Campaña	1	2018	Martín Campaña
P-09053	Aldo	Campatelli	1	1950	Aldo Campatelli
P-02454	Bobby	Campbell	1	1982	Bobby Campbell
P-07232	David	Campbell	1	1986	David Campbell
P-08543	Ernie	Campbell	1	1974	Ernie Campbell
P-04407	Joel	Campbell	2	2014, 2018	Joel Campbell
P-06823	Sol	Campbell	3	1998, 2002, 2006	Sol Campbell
P-08512	Iván	Campo	1	1998	Iván Campo
P-09498	Carlos	Campos	2	1962, 1966	Carlos Campos
P-09034	Eloy	Campos	1	1970	Eloy Campos
P-02489	Fernando	Campos	1	1950	Fernando Campos
P-09357	Jorge	Campos	3	1994, 1998, 2002	Jorge Campos
P-03065	Jorge Luis	Campos	2	1998, 2002	Jorge Luis Campos
P-09796	Ricardo	Canales	1	2010	Ricardo Canales
P-08631		Canalli	1	1934	 Canalli
P-03328	Fabián	Cancelarich	1	1990	Fabián Cancelarich
P-02473	Vincent	Candela	2	1998, 2002	Vincent Candela
P-04985	Antonio	Candreva	1	2014	Antonio Candreva
P-07886	Marco	Caneira	2	2002, 2006	Marco Caneira
P-06397	Adolfino	Cañete	1	1986	Adolfino Cañete
P-03702	Juan	Cañete	1	1950	Juan Cañete
P-00913	Claudio	Caniggia	3	1990, 1994, 2002	Claudio Caniggia
P-02028	Denis	Caniza	4	1998, 2002, 2006, 2010	Denis Caniza
P-00136	Santiago	Cañizares	3	1994, 1998, 2006	Santiago Cañizares
P-08617	Fabio	Cannavaro	4	1998, 2002, 2006, 2010	Fabio Cannavaro
P-03916	Rubén	Cano	1	1978	Rubén Cano
P-06661	Castor	Cantero	1	1950	Castor Cantero
P-09318	Vladislao	Cap	1	1962	Vladislao Cap
P-04836	Joan	Capdevila	1	2010	Joan Capdevila
P-01864	Jean	Capelle	2	1934, 1938	Jean Capelle
P-05869	Marcel	Capelle	1	1930	Marcel Capelle
P-07878	Fabio	Capello	1	1974	Fabio Capello
P-03212	Ján	Čapkovič	1	1970	Ján Čapkovič
P-06669	Roberto	Capparelli	1	1950	Roberto Capparelli
P-04421	Gino	Cappello	2	1950, 1954	Gino Cappello
P-06741	Emilio	Caprile	1	1950	Emilio Caprile
P-05825	Miguel	Capuccini	1	1930	Miguel Capuccini
P-02634		Capucho	1	2002	 Capucho
P-08248	Riccardo	Carapellese	1	1950	Riccardo Carapellese
P-00727	Antonio	Carbajal	5	1950, 1954, 1958, 1962, 1966	Antonio Carbajal
P-03572	Néstor	Carballo	1	1954	Néstor Carballo
P-01933	Carlos	Carbonero	1	2014	Carlos Carbonero
P-00261	Mehdi	Carcela	1	2018	Mehdi Carcela
P-02265	Alberto	Cardaccio	1	1974	Alberto Cardaccio
P-09567	Javier	Cárdenas	1	1978	Javier Cárdenas
P-05812	Raúl	Cárdenas	3	1954, 1958, 1962	Raúl Cárdenas
P-01512	Julio	Cardeñosa	1	1978	Julio Cardeñosa
P-08075	José	Cardozo	2	1998, 2002	José Cardozo
P-06706	Óscar	Cardozo	1	2010	Óscar Cardozo
P-08699		Careca	2	1986, 1990	 Careca
P-03272	Peter	Cargill	1	1998	Peter Cargill
P-02588	Fabián	Carini	1	2002	Fabián Carini
P-02413	José	Carlos	1	1966	José Carlos
P-09143		Carlos	3	1978, 1982, 1986	 Carlos
P-06808	Roberto	Carlos	3	1998, 2002, 2006	Roberto Carlos
P-02318	Rune	Carlsson	1	1934	Rune Carlsson
P-06304	Victor	Carlund	1	1934	Victor Carlund
P-07370		Carmelo	1	1962	 Carmelo
P-00620	Carlos	Carmona	2	2010, 2014	Carlos Carmona
P-05606	Salvador	Carmona	2	1998, 2002	Salvador Carmona
P-02596	Bradley	Carnell	1	2002	Bradley Carnell
P-03397	Andrea	Carnevale	1	1990	Andrea Carnevale
P-07522	Daniel	Carnevali	1	1974	Daniel Carnevali
P-09600	David	Carney	1	2010	David Carney
P-07322	Georges	Carnus	1	1966	Georges Carnus
P-06831		Carpegiani	1	1974	 Carpegiani
P-06311	Jamie	Carragher	2	2006, 2010	Jamie Carragher
P-05202	Francisco José	Carrasco	1	1986	Francisco José Carrasco
P-07317	Yannick	Carrasco	1	2018	Yannick Carrasco
P-07248	Jorge	Carrascosa	1	1974	Jorge Carrascosa
P-09210	Cédric	Carrasso	1	2010	Cédric Carrasso
P-07841	Louis	Carré	1	1954	Louis Carré
P-03952	Juan	Carreño	1	1930	Juan Carreño
P-01868	Saguier	Carreras	1	1930	Saguier Carreras
P-01496	Michael	Carrick	2	2006, 2010	Michael Carrick
P-07257	André	Carrillo	1	2018	André Carrillo
P-07984	Amadeo	Carrizo	1	1958	Amadeo Carrizo
P-09595	Lee	Carsley	1	2002	Lee Carsley
P-08868	Scott	Carson	1	2006	Scott Carson
P-05482	Wilder	Cartagena	1	2018	Wilder Cartagena
P-04786	Pierre	Carteus	1	1970	Pierre Carteus
P-04970	Carlos	Carus	1	1954	Carlos Carus
P-04933	Dani	Carvajal	1	2018	Dani Carvajal
P-09888	Benito	Carvajales	1	1938	Benito Carvajales
P-00835	Joaquim	Carvalho	1	1966	Joaquim Carvalho
P-00937	Ricardo	Carvalho	2	2006, 2010	Ricardo Carvalho
P-05943	William	Carvalho	2	2014, 2018	William Carvalho
P-01818	Hernán	Carvallo	1	1950	Hernán Carvallo
P-06260	José	Carvallo	1	2018	José Carvallo
P-06317		Casagrande	1	1986	 Casagrande
P-04982	Charles	Casali	1	1954	Charles Casali
P-04840	Giuseppe	Casari	1	1950	Giuseppe Casari
P-06574	Horacio	Casarín	1	1950	Horacio Casarín
P-09348	Tony	Cascarino	2	1990, 1994	Tony Cascarino
P-01852		Casemiro	1	2018	 Casemiro
P-03197	Tommy	Casey	1	1958	Tommy Casey
P-06875	Iker	Casillas	4	2002, 2006, 2010, 2014	Iker Casillas
P-05327	Pierluigi	Casiraghi	1	1994	Pierluigi Casiraghi
P-09037	Antonio	Cassano	1	2014	Antonio Cassano
P-04350	Geovanis	Cassiani	1	1990	Geovanis Cassiani
P-01393	Tommy	Cassidy	1	1982	Tommy Cassidy
P-08376		Cássio	1	2018	 Cássio
P-04179	Jean	Castaneda	1	1982	Jean Castaneda
P-02780	Cristián	Castañeda	1	1998	Cristián Castañeda
P-03455	Koen	Casteels	1	2018	Koen Casteels
P-05200	Armando	Castellazzi	1	1934	Armando Castellazzi
P-06230	Luciano	Castellini	1	1974	Luciano Castellini
P-05320	Carlos José	Castilho	4	1950, 1954, 1958, 1962	Carlos José Castilho
P-01528	Juan	Castillo	1	2010	Juan Castillo
P-04831	Mario	Castillo	1	1982	Mario Castillo
P-08449	Ramiro	Castillo	1	1994	Ramiro Castillo
P-00953	Segundo	Castillo	1	2006	Segundo Castillo
P-03398	Francisco	Castrejón	1	1970	Francisco Castrejón
P-03536	Carlos	Castro	1	2002	Carlos Castro
P-03444	Guillermo	Castro	1	1970	Guillermo Castro
P-00826	Héctor	Castro	1	1930	Héctor Castro
P-04546	Israel	Castro	1	2010	Israel Castro
P-04682	Jesús	Castro	1	1930	Jesús Castro
P-03686	José Antonio	Castro	1	2006	José Antonio Castro
P-01847	Luis	Castro	1	1954	Luis Castro
P-09541	Osvaldo	Castro	1	1974	Osvaldo Castro
P-02054	William	Castro	1	1990	William Castro
P-07970	Carlos	Caszely	2	1974, 1982	Carlos Caszely
P-04581	Ömer	Çatkıç	1	2002	Ömer Çatkıç
P-01554	Mark	Caughey	1	1986	Mark Caughey
P-01918	Franco	Causio	3	1974, 1978, 1982	Franco Causio
P-08325		Renato	1	1974	 Renato
P-09499	Pablo	Cavallero	2	1998, 2002	Pablo Cavallero
P-00985	Edinson	Cavani	3	2010, 2014, 2018	Edinson Cavani
P-08794	Giuseppe	Cavanna	1	1934	Giuseppe Cavanna
P-02592	Juan	Cayasso	1	1990	Juan Cayasso
P-04323	Hector	Cazenave	1	1938	Hector Cazenave
P-08403	Santi	Cazorla	1	2014	Santi Cazorla
P-00724	Pedro	Cea	1	1930	Pedro Cea
P-03073	Ewald	Cebula	1	1938	Ewald Cebula
P-04716	Marek	Čech	1	2010	Marek Čech
P-09329	Petr	Čech	1	2006	Petr Čech
P-07813		Cédric	1	2018	 Cédric
P-02217	Aleš	Čeh	1	2002	Aleš Čeh
P-03008	Nastja	Čeh	1	2002	Nastja Čeh
P-02905	Albert	Celades	1	1998	Albert Celades
P-07890	Rogério	Ceni	2	2002, 2006	Rogério Ceni
P-08142	Walter	Centeno	2	2002, 2006	Walter Centeno
P-08306	Pablo	Centurión	1	1950	Pablo Centurión
P-06612	Pierluigi	Cera	1	1970	Pierluigi Cera
P-09478	Mehdi	Cerbah	1	1982	Mehdi Cerbah
P-05886	Alessio	Cerci	1	2014	Alessio Cerci
P-09207	Carlo	Ceresoli	1	1938	Carlo Ceresoli
P-05400	Toninho	Cerezo	2	1978, 1982	Toninho Cerezo
P-01108	Harald	Cerny	1	1998	Harald Cerny
P-05394	Karel	Černý	1	1938	Karel Černý
P-06936	Sergio	Cervato	1	1954	Sergio Cervato
P-04929	Boštjan	Cesar	1	2010	Boštjan Cesar
P-04381	Júlio	César	1	1986	Júlio César
P-08555	Júlio	César	3	2006, 2010, 2014	Júlio César
P-06667		César	1	1950	 César
P-05563		César	1	1974	 César
P-07982	Casiano	Céspedes	1	1950	Casiano Céspedes
P-05336	Arthur	Ceuleers	1	1938	Arthur Ceuleers
P-06479	Jan	Ceulemans	3	1982, 1986, 1990	Jan Ceulemans
P-08044	José Francisco	Cevallos	1	2002	José Francisco Cevallos
P-08878	Bum-kun	Cha	1	1986	Bum-kun Cha
P-00816	Du-ri	Cha	2	2002, 2010	Du-ri Cha
P-03625	Jong-hyok	Cha	1	2010	Jong-hyok Cha
P-04177	Ghailene	Chaalali	1	2018	Ghailene Chaalali
P-08789		Chacho	1	1934	 Chacho
P-01785	Mustapha	Chadili	1	1998	Mustapha Chadili
P-06292	Nacer	Chadli	2	2014, 2018	Nacer Chadli
P-07534	Marinho	Chagas	1	1974	Marinho Chagas
P-01741	Mohammed	Chaib	1	1986	Mohammed Chaib
P-00889	Arturo	Chaires	2	1962, 1966	Arturo Chaires
P-08375	Cléber	Chalá	1	2002	Cléber Chalá
P-09027	Mario	Chaldú	1	1966	Mario Chaldú
P-03210	Kostas	Chalkias	1	2010	Kostas Chalkias
P-05315	Roberto	Challe	1	1970	Roberto Challe
P-07537	Pavel	Chaloupka	1	1982	Pavel Chaloupka
P-02697	Eustacio	Chamorro	1	1930	Eustacio Chamorro
P-08577	José	Chamot	3	1994, 1998, 2002	José Chamot
P-06040	Timothy	Chandler	1	2014	Timothy Chandler
P-03026	Viktor	Chanov	3	1982, 1986, 1990	Viktor Chanov
P-09890	Vyacheslav	Chanov	1	1982	Vyacheslav Chanov
P-06745	Alexis	Chantraine	1	1930	Alexis Chantraine
P-08263	Augustin	Chantrel	1	1930	Augustin Chantrel
P-00950	Mohammed	Chaouch	1	1994	Mohammed Chaouch
P-06463	Faouzi	Chaouchi	1	2010	Faouzi Chaouchi
P-02300	Ernesto	Chaparro	1	1930	Ernesto Chaparro
P-00525	Sammy	Chapman	1	1958	Sammy Chapman
P-02168	Stéphane	Chapuisat	1	1994	Stéphane Chapuisat
P-07484	Lionel	Charbonnier	1	1998	Lionel Charbonnier
P-08368	Angelos	Charisteas	1	2010	Angelos Charisteas
P-09031	David Atiba	Charles	1	2006	David Atiba Charles
P-04850	John	Charles	1	1958	John Charles
P-00594	Mel	Charles	1	1958	Mel Charles
P-00227	Bobby	Charlton	4	1958, 1962, 1966, 1970	Bobby Charlton
P-08025	Jack	Charlton	2	1966, 1970	Jack Charlton
P-02076	Casiano	Chavarría	1	1930	Casiano Chavarría
P-03445	Germán	Chavarría	1	1990	Germán Chavarría
P-04405	José Carlos	Chaves	1	1990	José Carlos Chaves
P-00873	Adrián	Chávez	1	1994	Adrián Chávez
P-05626	Juan Carlos	Chávez	1	1994	Juan Carlos Chávez
P-00761	Marvin	Chávez	1	2014	Marvin Chávez
P-00967	Osman	Chávez	2	2010, 2014	Osman Chávez
P-02384	Enrique	Chazarreta	1	1974	Enrique Chazarreta
P-03811	Yechezekel	Chazom	1	1970	Yechezekel Chazom
P-07438	Fathi	Chebal	1	1986	Fathi Chebal
P-08056	Kamel	Chebli	1	1978	Kamel Chebli
P-00080	Aurélien	Chedjou	2	2010, 2014	Aurélien Chedjou
P-02280	Adel	Chedli	1	2006	Adel Chedli
P-06176	Ohman	Chehaibi	1	1978	Ohman Chehaibi
P-02944		Chendo	2	1986, 1990	 Chendo
P-00634	Stanislav	Cherchesov	2	1994, 2002	Stanislav Cherchesov
P-06974	Roberto	Cherro	1	1930	Roberto Cherro
P-00874	Steve	Cherundolo	3	2002, 2006, 2010	Steve Cherundolo
P-03235	Denis	Cheryshev	1	2018	Denis Cheryshev
P-03106	Rouzbeh	Cheshmi	1	2018	Rouzbeh Cheshmi
P-09685	Bernard	Chiarelli	1	1958	Bernard Chiarelli
P-00562	Saïd	Chiba	1	1998	Saïd Chiba
P-02148		Chicão	1	1978	 Chicão
P-02577		Chico	1	1950	 Chico
P-09736	Giorgio	Chiellini	2	2010, 2014	Giorgio Chiellini
P-07458	Enrico	Chiesa	1	1998	Enrico Chiesa
P-07269	Sirajeddine	Chihi	1	1998	Sirajeddine Chihi
P-04629	Yassine	Chikhaoui	1	2006	Yassine Chikhaoui
P-08567	José Luis	Chilavert	2	1998, 2002	José Luis Chilavert
P-02126	Rolando	Chilavert	1	1986	Rolando Chilavert
P-06952	Allenby	Chilton	1	1954	Allenby Chilton
P-03606	Pascal	Chimbonda	1	2006	Pascal Chimbonda
P-04354	Enrique	Chimento	1	1934	Enrique Chimento
P-09017	Giorgio	Chinaglia	1	1974	Giorgio Chinaglia
P-03273	Pablo	Chinchilla	1	2002	Pablo Chinchilla
P-04324	Brian	Ching	1	2006	Brian Ching
P-08106	Scott	Chipperfield	2	2006, 2010	Scott Chipperfield
P-04646	Youssef	Chippo	1	1998	Youssef Chippo
P-02361	Iulian	Chiriță	1	1994	Iulian Chiriță
P-04220	Vasile	Chiroiu	1	1938	Vasile Chiroiu
P-04699	Igor	Chislenko	2	1962, 1966	Igor Chislenko
P-07281	Aleksandr	Chivadze	2	1982, 1986	Aleksandr Chivadze
P-07975	Alberto	Chividini	1	1930	Alberto Chividini
P-03130	Bruno	Chizzo	1	1938	Bruno Chizzo
P-06829	Byung-deuk	Cho	1	1986	Byung-deuk Cho
P-00396	Jae-jin	Cho	1	2006	Jae-jin Cho
P-00910	Jin-ho	Cho	1	1994	Jin-ho Cho
P-05109	Kwang-rae	Cho	1	1986	Kwang-rae Cho
P-07535	Min-kook	Cho	2	1986, 1990	Min-kook Cho
P-00506	Won-hee	Cho	1	2006	Won-hee Cho
P-00534	Yong-hyung	Cho	1	2010	Yong-hyung Cho
P-01841	Young-jeung	Cho	1	1986	Young-jeung Cho
P-07580	Kum-chol	Choe	1	2010	Kum-chol Choe
P-03250	Chung-min	Choi	1	1954	Chung-min Choi
P-05748	Dae-shik	Choi	1	1994	Dae-shik Choi
P-05417	Eun-sung	Choi	1	2002	Eun-sung Choi
P-04681	In-young	Choi	2	1990, 1994	In-young Choi
P-08437	Jin-cheul	Choi	2	2002, 2006	Jin-cheul Choi
P-03040	Kang-hee	Choi	1	1990	Kang-hee Choi
P-00981	Moon-sik	Choi	1	1994	Moon-sik Choi
P-09860	Soon-ho	Choi	2	1986, 1990	Soon-ho Choi
P-07203	Sung-yong	Choi	2	1998, 2002	Sung-yong Choi
P-04348	Tae-uk	Choi	1	2002	Tae-uk Choi
P-02127	Yong-soo	Choi	2	1998, 2002	Yong-soo Choi
P-07650	Young-il	Choi	2	1994, 1998	Young-il Choi
P-08073	Yung-keun	Choi	1	1954	Yung-keun Choi
P-05840	Givi	Chokheli	1	1962	Givi Chokheli
P-08903	André	Chorda	1	1966	André Chorda
P-02301	Manuel	Chorens	1	1938	Manuel Chorens
P-05501	Ferid	Chouchane	1	1998	Ferid Chouchane
P-00919	Moustapha	Choukri	1	1970	Moustapha Choukri
P-01234	Eric Maxim	Choupo-Moting	2	2010, 2014	Eric Maxim Choupo-Moting
P-04201	Jozef	Chovanec	1	1990	Jozef Chovanec
P-09364	Philippe	Christanval	1	2002	Philippe Christanval
P-06159	Andreas	Christensen	1	2018	Andreas Christensen
P-00747	Flemming	Christensen	1	1986	Flemming Christensen
P-04303	Jesper	Christiansen	2	2002, 2010	Jesper Christiansen
P-04238	Jeremy	Christie	1	2010	Jeremy Christie
P-02370	Lazaros	Christodoulopoulos	1	2014	Lazaros Christodoulopoulos
P-08219	Justice	Christopher	1	2002	Justice Christopher
P-02734	Yung-kwang	Chu	1	1954	Yung-kwang Chu
P-08397	Igor	Chugainov	1	2002	Igor Chugainov
P-08318	Héctor	Chumpitaz	2	1970, 1978	Héctor Chumpitaz
P-05331	Hae-won	Chung	1	1990	Hae-won Chung
P-05636	Jong-son	Chung	1	1994	Jong-son Chung
P-04551	Jong-soo	Chung	2	1986, 1990	Jong-soo Chung
P-09892	Kook-chin	Chung	1	1954	Kook-chin Chung
P-03601	Kyung-ho	Chung	1	2006	Kyung-ho Chung
P-05902	Nam-sik	Chung	1	1954	Nam-sik Chung
P-01737	Yong-hwan	Chung	2	1986, 1990	Yong-hwan Chung
P-01738	Dmytro	Chyhrynskyi	1	2006	Dmytro Chyhrynskyi
P-01723		Cicinho	1	2006	 Cicinho
P-08089	Hans	Cieslarczyk	1	1958	Hans Cieslarczyk
P-07417	Leonardo	Cilaurren	1	1934	Leonardo Cilaurren
P-06255	Jasper	Cillessen	1	2014	Jasper Cillessen
P-09029	Carlos	Cillóniz	1	1930	Carlos Cillóniz
P-05461	Laurent	Ciman	1	2014	Laurent Ciman
P-04235	Sebastjan	Cimirotič	1	2002	Sebastjan Cimirotič
P-02496	Liviu	Ciobotariu	1	1998	Liviu Ciobotariu
P-06411	Gheorghe	Ciolac	1	1934	Gheorghe Ciolac
P-08965	Włodzimierz	Ciołek	1	1982	Włodzimierz Ciołek
P-07121	Thiago	Cionek	1	2018	Thiago Cionek
P-06752		Ciriaco	1	1934	 Ciriaco
P-06924	Franz	Cisar	1	1934	Franz Cisar
P-09717	Ernesto	Cisneros	1	1966	Ernesto Cisneros
P-01163	Rigoberto	Cisneros	1	1978	Rigoberto Cisneros
P-09386	Aliou	Cissé	1	2002	Aliou Cissé
P-04800	Djibril	Cissé	2	2002, 2010	Djibril Cissé
P-01350	Kalidou	Cissokho	1	2002	Kalidou Cissokho
P-03746	Nico	Claesen	2	1986, 1990	Nico Claesen
P-02586	Jean	Claessens	1	1934	Jean Claessens
P-04714	Viktor	Claesson	1	2018	Viktor Claesson
P-05893	Eddie	Clamp	1	1958	Eddie Clamp
P-08243	Aaron	Clapham	1	2010	Aaron Clapham
P-08443	Bobby	Clark	1	1978	Bobby Clark
P-05867	Ricardo	Clark	1	2010	Ricardo Clark
P-03656	Allan	Clarke	1	1970	Allan Clarke
P-04501	Colin	Clarke	1	1986	Colin Clarke
P-02244	Jorge	Claros	1	2014	Jorge Claros
P-05299	Jordy	Clasie	1	2014	Jordy Clasie
P-07523	Néstor	Clausen	1	1986	Néstor Clausen
P-08393	Fernando	Clavijo	1	1994	Fernando Clavijo
P-01101	José	Clayton	2	1998, 2002	José Clayton
P-05876	Ronnie	Clayton	1	1958	Ronnie Clayton
P-06537	Jim	Cleary	1	1982	Jim Cleary
P-07543	Ray	Clemence	1	1982	Ray Clemence
P-07286	Philippe	Clement	1	1998	Philippe Clement
P-03083	Gaël	Clichy	1	2010	Gaël Clichy
P-04743	Leo	Clijsters	2	1986, 1990	Leo Clijsters
P-04805		Clodoaldo	1	1970	 Clodoaldo
P-06108	Lesław	Ćmikiewicz	1	1974	Lesław Ćmikiewicz
P-08080	Sebastián	Coates	2	2014, 2018	Sebastián Coates
P-00752	Henry	Cockburn	1	1950	Henry Cockburn
P-02521	Francesco	Coco	1	2002	Francesco Coco
P-03185	Phillip	Cocu	2	1998, 2006	Phillip Cocu
P-07628	Arturo	Coddou	1	1930	Arturo Coddou
P-03217	Dan	Coe	1	1970	Dan Coe
P-07546	Ludo	Coeck	1	1982	Ludo Coeck
P-05823	Fábio	Coentrão	2	2010, 2014	Fábio Coentrão
P-09264	George	Cohen	1	1966	George Cohen
P-05044	Sandro	Cois	1	1998	Sandro Cois
P-03238	Gino	Colaussi	1	1938	Gino Colaussi
P-02520	Søren	Colding	1	1998	Søren Colding
P-02804	Ashley	Cole	3	2002, 2006, 2010	Ashley Cole
P-03261	Duncan	Cole	1	1982	Duncan Cole
P-00931	Joe	Cole	3	2002, 2006, 2010	Joe Cole
P-04518	Ratko	Čolić	1	1950	Ratko Čolić
P-06696	Daniel	Colindres	1	2018	Daniel Colindres
P-09847	Marcos	Coll	1	1962	Marcos Coll
P-07452	Enrique	Collar	1	1962	Enrique Collar
P-09698	Bobby	Collins	1	1958	Bobby Collins
P-05404	John	Collins	2	1990, 1998	John Collins
P-03698	Fulvio	Collovati	2	1982, 1986	Fulvio Collovati
P-01347	Fabricio	Coloccini	1	2006	Fabricio Coloccini
P-09862	Charlie	Colombo	1	1950	Charlie Colombo
P-01174	Dominique	Colonna	1	1958	Dominique Colonna
P-09159	Fabio	Coltorti	1	2006	Fabio Coltorti
P-01605	Mário	Coluna	1	1966	Mário Coluna
P-00829	Ferdinand	Coly	1	2002	Ferdinand Coly
P-09768	Bobby	Combe	1	1954	Bobby Combe
P-01889	Gianpiero	Combi	1	1934	Gianpiero Combi
P-09590	Nestor	Combin	1	1966	Nestor Combin
P-09340	Sérgio	Conceição	1	2002	Sérgio Conceição
P-09849	Luis Gabelo	Conejo	1	1990	Luis Gabelo Conejo
P-03649	Edmund	Conen	1	1934	Edmund Conen
P-04212	John	Connelly	2	1962, 1966	John Connelly
P-07848	David	Connolly	1	2002	David Connolly
P-03180	Jimmy	Conrad	1	2006	Jimmy Conrad
P-03205	Antonio	Conte	1	1994	Antonio Conte
P-00500	Bruno	Conti	2	1982, 1986	Bruno Conti
P-08725	Paolo	Conti	1	1978	Paolo Conti
P-04979	Carlos	Contreras	1	1962	Carlos Contreras
P-06932	Pablo	Contreras	1	2010	Pablo Contreras
P-08568	Pedro	Contreras	1	2002	Pedro Contreras
P-09850	Bobby	Convey	1	2006	Bobby Convey
P-00495	Geoff	Coombes	1	1950	Geoff Coombes
P-00059	Armando	Cooper	1	2018	Armando Cooper
P-01604	Davie	Cooper	1	1986	Davie Cooper
P-01992	Terry	Cooper	1	1970	Terry Cooper
P-05888	Ernie	Copland	1	1954	Ernie Copland
P-05191	Steve	Coppell	1	1982	Steve Coppell
P-00146	Henri	Coppens	1	1954	Henri Coppens
P-00334	Oreste	Corbatta	1	1958	Oreste Corbatta
P-01539	Rubén	Corbo	1	1974	Rubén Corbo
P-06790	Walter	Corbo	1	1970	Walter Corbo
P-07058	Rodrigo	Cordero	1	2002	Rodrigo Cordero
P-03690	Iván	Córdoba	1	1998	Iván Córdoba
P-03087	Óscar	Córdoba	2	1994, 1998	Óscar Córdoba
P-03623	Raúl	Córdoba	1	1950	Raúl Córdoba
P-08018	Vedran	Ćorluka	2	2014, 2018	Vedran Ćorluka
P-06835	Peter	Cormack	1	1974	Peter Cormack
P-06626	Fernando	Cornejo	1	1998	Fernando Cornejo
P-03867	Andreas	Cornelius	1	2018	Andreas Cornelius
P-07655	Marco	Cornez	1	1982	Marco Cornez
P-04099	Jesús Manuel	Corona	1	2018	Jesús Manuel Corona
P-04022	Julián	Coronel	1	1986	Julián Coronel
P-04337	Gabriel	Correa	1	1990	Gabriel Correa
P-03081	Rubén	Correa	1	1970	Rubén Correa
P-03794	Joe	Corrigan	1	1982	Joe Corrigan
P-03304	Eugen	Corrodi	1	1950	Eugen Corrodi
P-08635	Julio César	Cortés	3	1962, 1966, 1970	Julio César Cortés
P-07633	Óscar	Cortés	1	1994	Óscar Cortés
P-09535	Ranulfo	Cortés	1	1954	Ranulfo Cortés
P-08983	Roberto	Cortés	1	1930	Roberto Cortés
P-01469	Santiago	Cortés	1	1970	Santiago Cortés
P-08028	Aldo	Corzo	1	2018	Aldo Corzo
P-05916	Vintilă	Cossini	1	1938	Vintilă Cossini
P-05908	Diego	Costa	2	2014, 2018	Diego Costa
P-03905	Douglas	Costa	1	2018	Douglas Costa
P-04027	Jorge	Costa	1	2002	Jorge Costa
P-06273	Ricardo	Costa	3	2006, 2010, 2014	Ricardo Costa
P-06526	Rui	Costa	1	2002	Rui Costa
P-09447	Alessandro	Costacurta	2	1994, 1998	Alessandro Costacurta
P-02057	Leonardo	Costagliola	1	1954	Leonardo Costagliola
P-00113		Costinha	1	2006	 Costinha
P-01337	Anthony	Costly	1	1982	Anthony Costly
P-02503	Carlo	Costly	1	2014	Carlo Costly
P-06391	Didier	Couécou	1	1966	Didier Couécou
P-03190	Grégory	Coupet	2	2002, 2006	Grégory Coupet
P-04252	Alain	Couriol	1	1982	Alain Couriol
P-01005	Roger	Courtois	2	1934, 1938	Roger Courtois
P-05665	Thibaut	Courtois	2	2014, 2018	Thibaut Courtois
P-07892		Coutinho	1	1962	 Coutinho
P-07487	Philippe	Coutinho	1	2018	Philippe Coutinho
P-09216	Fernando	Couto	1	2002	Fernando Couto
P-02007	Ante	Covic	1	2006	Ante Covic
P-06686	Neil	Covone	1	1990	Neil Covone
P-09832	Doug	Cowie	2	1954, 1958	Doug Cowie
P-03573	Ian	Cox	1	2006	Ian Cox
P-04496	Fay	Coyle	1	1958	Fay Coyle
P-03507	John	Coyle	1	1958	John Coyle
P-08582	Tommy	Coyne	1	1994	Tommy Coyne
P-08355	Robert	Craddock	1	1950	Robert Craddock
P-06864	Gheorghe	Craioveanu	1	1998	Gheorghe Craioveanu
P-00321		Renato	1	1982	 Renato
P-04941	Bertrand	Crasson	1	1998	Bertrand Crasson
P-07187	Atilio	Cremaschi	1	1950	Atilio Cremaschi
P-07013	Hernán	Crespo	3	1998, 2002, 2006	Hernán Crespo
P-04279	Kenny	Cresswell	1	1982	Kenny Cresswell
P-05089		Cris	1	2006	 Cris
P-01739	Domenico	Criscito	1	2010	Domenico Criscito
P-08751	Luis	Cristaldo	1	1994	Luis Cristaldo
P-08495	Tomislav	Crnković	2	1954, 1958	Tomislav Crnković
P-07601	Claes	Cronqvist	2	1970, 1974	Claes Cronqvist
P-09504	Peter	Crouch	2	2006, 2010	Peter Crouch
P-07026	Vic	Crowe	1	1958	Vic Crowe
P-08427	Jürgen	Croy	1	1974	Jürgen Croy
P-04432	Johan	Cruyff	1	1974	Johan Cruyff
P-09750	André	Cruz	1	1998	André Cruz
P-02163	Felix	Cruz	1	1986	Felix Cruz
P-09442	Fernando	Cruz	1	1966	Fernando Cruz
P-05228	Francisco Javier	Cruz	1	1986	Francisco Javier Cruz
P-08910	Humberto	Cruz	2	1962, 1966	Humberto Cruz
P-02924	Juan	Cruz	1	1982	Juan Cruz
P-07493	Julio	Cruz	1	2006	Julio Cruz
P-03966	Luis	Cruz	1	1954	Luis Cruz
P-00191	Luis	Cruz	1	1982	Luis Cruz
P-03286	Osvaldo	Cruz	1	1958	Osvaldo Cruz
P-09274	Luis	Cruzado	1	1970	Luis Cruzado
P-08066	Károly	Csapó	2	1978, 1982	Károly Csapó
P-05356	László	Cseh	1	1938	László Cseh
P-06816	Ferenc	Csongrádi	1	1982	Ferenc Csongrádi
P-06604	Lajos	Csordás	1	1954	Lajos Csordás
P-01330	József	Csuhay	2	1982, 1986	József Csuhay
P-09547	Josef	Čtyřoký	1	1934	Josef Čtyřoký
P-07515	José Fernando	Cuadrado	1	2018	José Fernando Cuadrado
P-05374	Juan	Cuadrado	2	2014, 2018	Juan Cuadrado
P-04205	José Miguel	Cubero	1	2014	José Miguel Cubero
P-05958	Luis	Cubilla	3	1962, 1970, 1974	Luis Cubilla
P-00664	Pedro	Cubilla	1	1962	Pedro Cubilla
P-01348	Teófilo	Cubillas	3	1970, 1978, 1982	Teófilo Cubillas
P-09181	Samuel	Cuburu	1	1950	Samuel Cuburu
P-00318	Antonello	Cuccureddu	1	1978	Antonello Cuccureddu
P-06054	José Luis	Cuciuffo	1	1986	José Luis Cuciuffo
P-07798	Alexandru	Cuedan	1	1934	Alexandru Cuedan
P-06607	Leonardo	Cuéllar	1	1978	Leonardo Cuéllar
P-07344	César	Cueto	2	1978, 1982	César Cueto
P-01590	Christian	Cueva	1	2018	Christian Cueva
P-02234	Nelson	Cuevas	2	2002, 2006	Nelson Cuevas
P-08964	Leandro	Cufré	1	2006	Leandro Cufré
P-03554	Antoine	Cuissard	1	1954	Antoine Cuissard
P-03951	Jason	Culina	2	2006, 2010	Jason Culina
P-05060	Bernhard	Cullmann	2	1974, 1978	Bernhard Cullmann
P-00243	Harold	Cummings	1	2018	Harold Cummings
P-07053	Kenny	Cunningham	1	2002	Kenny Cunningham
P-02447	Willie	Cunningham	1	1954	Willie Cunningham
P-07149	Willie	Cunningham	1	1958	Willie Cunningham
P-01029	Colin	Curran	1	1974	Colin Curran
P-03481	Wilbur	Cush	1	1958	Wilbur Cush
P-05362	Theo	Custers	1	1982	Theo Custers
P-05925	Iosif	Czako	1	1930	Iosif Czako
P-07677	Ed	Czerkiewicz	1	1934	Ed Czerkiewicz
P-04832	Alexandre	Czerniatynski	2	1982, 1994	Alexandre Czerniatynski
P-00157	Zoltán	Czibor	1	1954	Zoltán Czibor
P-07806	Jair	da Costa	1	1962	Jair da Costa
P-02100	Manuel	da Costa	1	2018	Manuel da Costa
P-08548	Ademir	da Guia	1	1974	Ademir da Guia
P-08100	Domingos	da Guia	1	1938	Domingos da Guia
P-08529	Jorge	da Silva	1	1986	Jorge da Silva
P-02055	Paulo	da Silva	2	2006, 2010	Paulo da Silva
P-03226	Mladen	Dabanovič	1	2002	Mladen Dabanovič
P-06296	Ali	Daei	2	1998, 2006	Ali Daei
P-05529	Jos	Daerden	1	1982	Jos Daerden
P-00796	Omar	Daf	1	2002	Omar Daf
P-04346	Hadi	Dahane	1	1970	Hadi Dahane
P-01069	Mustapha	Dahleb	1	1982	Mustapha Dahleb
P-08681	Martin	Dahlin	1	1994	Martin Dahlin
P-05079	Christian	Dailly	1	1998	Christian Dailly
P-06115	Predrag	Đajić	1	1950	Predrag Đajić
P-02708	László	Dajka	1	1986	László Dajka
P-08707	Pierre	Dalem	1	1938	Pierre Dalem
P-05683	Christian	Dalger	1	1978	Christian Dalger
P-04509	Kenny	Dalglish	3	1974, 1978, 1982	Kenny Dalglish
P-01156	Henrik	Dalsgaard	1	2018	Henrik Dalsgaard
P-05061	Vítor	Damas	1	1986	Vítor Damas
P-02042	Iraj	Danaeifard	1	1978	Iraj Danaeifard
P-08401		Dani	1	1978	 Dani
P-01169		Danilo	1	1950	 Danilo
P-08157		Danilo	1	2018	 Danilo
P-04725	Vasiliy	Danilov	1	1966	Vasiliy Danilov
P-05072		Danny	1	2010	 Danny
P-06241		Dante	1	2014	 Dante
P-03036	Rachid	Daoudi	1	1994	Rachid Daoudi
P-04701	Vitaly	Daraselia	1	1982	Vitaly Daraselia
P-08233		Dario	1	1970	 Dario
P-00674	Matteo	Darmian	1	2014	Matteo Darmian
P-08508	Julien	Darui	1	1938	Julien Darui
P-09476	Rinat	Dasayev	3	1982, 1986, 1990	Rinat Dasayev
P-02282	Ferdinand	Daučík	2	1934, 1938	Ferdinand Daučík
P-00294	Fatau	Dauda	1	2014	Fatau Dauda
P-01361	Ümit	Davala	1	2002	Ümit Davala
P-05648	Daniel	Davari	1	2014	Daniel Davari
P-07299	Mario	David	1	1962	Mario David
P-09268	Mircea	David	1	1938	Mircea David
P-08049	Ivan	Davidov	2	1966, 1970	Ivan Davidov
P-04071	Edgar	Davids	1	1998	Edgar Davids
P-06028	Lance	Davids	1	2010	Lance Davids
P-08082	Jason	Davidson	1	2014	Jason Davidson
P-09665	Jimmy	Davidson	1	1954	Jimmy Davidson
P-00639	Duilio	Davino	1	1998	Duilio Davino
P-03111	Brad	Davis	1	2014	Brad Davis
P-07933	Erick	Davis	1	2018	Erick Davis
P-03365	Miguel	Davis	1	1990	Miguel Davis
P-04175	Mirto	Davoine	1	1954	Mirto Davoine
P-06787	Chris	Dawes	1	1998	Chris Dawes
P-07885	Michael	Dawson	1	2010	Michael Dawson
P-05035	Vyacheslav	Dayev	1	2002	Vyacheslav Dayev
P-06114	Luigi	De Agostini	1	1990	Luigi De Agostini
P-02157	Giorgian	De Arrascaeta	1	2018	Giorgian De Arrascaeta
P-03993	Antony	de Ávila	2	1994, 1998	Antony de Ávila
P-03739	Jean	De Bie	1	1930	Jean De Bie
P-06203	Glen	De Boeck	2	1998, 2002	Glen De Boeck
P-01520	Frank	de Boer	2	1994, 1998	Frank de Boer
P-01404	Piet	de Boer	1	1938	Piet de Boer
P-02207	Ronald	de Boer	2	1994, 1998	Ronald de Boer
P-02009	Héctor	De Bourgoing	1	1966	Héctor De Bourgoing
P-06858	Waldemar	de Brito	1	1934	Waldemar de Brito
P-09445	Kevin	De Bruyne	2	2014, 2018	Kevin De Bruyne
P-08776	Tim	de Cler	1	2006	Tim de Cler
P-00045	Jean	De Clercq	1	1930	Jean De Clercq
P-07467	Henri	De Deken	1	1930	Henri De Deken
P-03347	Juan	de Dios Ramírez Perales	1	1994	Juan de Dios Ramírez Perales
P-06409	David	de Gea	2	2014, 2018	David de Gea
P-08462	Ed	de Goey	2	1994, 1998	Ed de Goey
P-05005	Jonathan	de Guzmán	1	2014	Jonathan de Guzmán
P-03339	Bertus	de Harder	1	1938	Bertus de Harder
P-01072	José	de Jesús Corona	3	2006, 2014, 2018	José de Jesús Corona
P-06600	Nigel	de Jong	2	2010, 2014	Nigel de Jong
P-01173	Theo	de Jong	1	1974	Theo de Jong
P-00034	Antonio	de la Cruz	1	1978	Antonio de la Cruz
P-09694	Ulises	de la Cruz	2	2002, 2006	Ulises de la Cruz
P-04506	Antonio	de la Torre	1	1978	Antonio de la Torre
P-01044	Orlando	de la Torre	1	1970	Orlando de la Torre
P-03249	Mario	de las Casas	1	1930	Mario de las Casas
P-00262	Hugo	de León	1	1990	Hugo de León
P-08613	Carlos	de los Cobos	1	1986	Carlos de los Cobos
P-00878	Gonzalo	de los Santos	1	2002	Gonzalo de los Santos
P-05589	Pasquale	De Luca	1	1986	Pasquale De Luca
P-09272	Gabriel	De Michele	1	1966	Gabriel De Michele
P-09332	Fernando	De Napoli	2	1986, 1990	Fernando De Napoli
P-09214	Javier	de Pedro	1	2002	Javier de Pedro
P-04810	Daniele	De Rossi	3	2006, 2010, 2014	Daniele De Rossi
P-01544	Morgan	De Sanctis	1	2010	Morgan De Sanctis
P-09177	Jean-François	De Sart	1	1990	Jean-François De Sart
P-04676	Maurits	De Schrijver	1	1982	Maurits De Schrijver
P-06718	Mattia	De Sciglio	1	2014	Mattia De Sciglio
P-03348	Gustavo	de Simone	1	1974	Gustavo de Simone
P-04530	Giancarlo	De Sisti	1	1970	Giancarlo De Sisti
P-04630	Geert	De Vlieger	1	2002	Geert De Vlieger
P-06774	Stefan	de Vrij	1	2014	Stefan de Vrij
P-09396	Filip	De Wilde	3	1990, 1994, 1998	Filip De Wilde
P-00616	Arie	de Winter	1	1938	Arie de Winter
P-05664	Alfons	De Winter	1	1938	Alfons De Winter
P-09507	John	de Wolf	1	1994	John de Wolf
P-06910	Michel	De Wolf	3	1986, 1990, 1994	Michel De Wolf
P-04333	Demy	de Zeeuw	1	2010	Demy de Zeeuw
P-07449	Mathieu	Debuchy	1	2014	Mathieu Debuchy
P-03802		Deco	2	2006, 2010	 Deco
P-01716	Zlatko	Dedić	1	2010	Zlatko Dedić
P-07556	Chad	Deering	1	1998	Chad Deering
P-04564	Éric	Deflandre	2	1998, 2002	Éric Deflandre
P-00781	Jermain	Defoe	1	2010	Jermain Defoe
P-01466	Robert	Défossé	1	1934	Robert Défossé
P-09084	Steven	Defour	1	2014	Steven Defour
P-08190	David	Degen	1	2006	David Degen
P-01254	Philipp	Degen	1	2006	Philipp Degen
P-08227	Miloš	Degenek	1	2018	Miloš Degenek
P-01839	Josef	Degeorgi	1	1982	Josef Degeorgi
P-08937	Marc	Degryse	2	1990, 1994	Marc Degryse
P-08511	Vasile	Deheleanu	1	1934	Vasile Deheleanu
P-07060	Ashkan	Dejagah	2	2014, 2018	Ashkan Dejagah
P-08837	Alfredo	del Águila	1	1962	Alfredo del Águila
P-08536	José	del Castillo	1	1970	José del Castillo
P-05564	Jesús	del Muro	3	1958, 1962, 1966	Jesús del Muro
P-07211	Joaquín	del Olmo	1	1994	Joaquín del Olmo
P-09417	Alessandro	Del Piero	3	1998, 2002, 2006	Alessandro Del Piero
P-06783	Luis	del Sol	2	1962, 1966	Luis del Sol
P-02226	Thomas	Delaney	1	2018	Thomas Delaney
P-08242	Gérard	Delbeke	1	1930	Gérard Delbeke
P-03974	Augustin	Deleanu	1	1970	Augustin Deleanu
P-02254	Edmond	Delfour	3	1930, 1934, 1938	Edmond Delfour
P-06431	Agustín	Delgado	2	2002, 2006	Agustín Delgado
P-06256	Edder	Delgado	1	2014	Edder Delgado
P-05706	José Ramón	Delgado	2	1958, 1962	José Ramón Delgado
P-03427	Marcelo	Delgado	1	1998	Marcelo Delgado
P-03896		Delgado	1	2006	 Delgado
P-00187	Rogelio	Delgado	1	1986	Rogelio Delgado
P-06464	José	Della Torre	1	1930	José Della Torre
P-04984	Pedro	Dellacha	1	1958	Pedro Dellacha
P-09494	Célestin	Delmer	2	1930, 1934	Célestin Delmer
P-04531	Fabian	Delph	1	2018	Fabian Delph
P-03699	Marco	Delvecchio	1	2002	Marco Delvecchio
P-07083	Attilio	Demaría	2	1930, 1934	Attilio Demaría
P-06575	Mousa	Dembélé	2	2014, 2018	Mousa Dembélé
P-02718	Ousmane	Dembélé	1	2018	Ousmane Dembélé
P-09452	Emerich	Dembrovschi	1	1970	Emerich Dembrovschi
P-04600	Guy	Demel	2	2006, 2010	Guy Demel
P-03433	Jay	DeMerit	1	2010	Jay DeMerit
P-07699	Martín	Demichelis	2	2010, 2014	Martín Demichelis
P-04095	Stéphane	Demol	2	1986, 1990	Stéphane Demol
P-04433	Clint	Dempsey	3	2006, 2010, 2014	Clint Dempsey
P-03119	Anatoliy	Demyanenko	3	1982, 1986, 1990	Anatoliy Demyanenko
P-02863	Leander	Dendoncker	1	2018	Leander Dendoncker
P-09558	Alberto	Denegri	1	1930	Alberto Denegri
P-09752	Georgi	Denev	1	1974	Georgi Denev
P-01039		Denílson	1	1966	 Denílson
P-05599		Denílson	2	1998, 2002	 Denílson
P-05445	Modesto	Denis	1	1930	Modesto Denis
P-03435	Igor	Denisov	1	2014	Igor Denisov
P-01083	Memphis	Depay	1	2014	Memphis Depay
P-08554		Dequinha	1	1954	 Dequinha
P-01457	Eren	Derdiyok	1	2010	Eren Derdiyok
P-08623	René	Dereuddre	1	1954	René Dereuddre
P-03135	Dinko	Dermendzhiev	3	1962, 1966, 1970	Dinko Dermendzhiev
P-07128	Marcel	Desailly	2	1998, 2002	Marcel Desailly
P-09283	Didier	Deschamps	1	1998	Didier Deschamps
P-03831	Jean-Claude	Désir	1	1974	Jean-Claude Désir
P-06132	Philippe	Desmet	1	1986	Philippe Desmet
P-00978	Adalbert	Deşu	1	1930	Adalbert Deşu
P-08277	Lajos	Détári	1	1986	Lajos Détári
P-07572	Stjepan	Deverić	1	1982	Stjepan Deverić
P-06945	Alfredo	Devincenzi	1	1934	Alfredo Devincenzi
P-07305	François	Devries	1	1934	François Devries
P-06209	Johan	Devrindt	1	1970	Johan Devrindt
P-08103	Nicolas	Dewalque	1	1970	Nicolas Dewalque
P-04580	Ivan	Deyanov	1	1966	Ivan Deyanov
P-08763	Kazimierz	Deyna	2	1974, 1978	Kazimierz Deyna
P-01800	Gustavo	Dezotti	1	1990	Gustavo Dezotti
P-07690	Said	Dghay	1	1994	Said Dghay
P-08632	Tarak	Dhiab	1	1978	Tarak Dhiab
P-00686	Vikash	Dhorasoo	1	2006	Vikash Dhorasoo
P-03642	Mokhtar	Dhouib	1	1978	Mokhtar Dhouib
P-07465	Luigi	Di Biagio	2	1998, 2002	Luigi Di Biagio
P-03668	Antonio	Di Gennaro	1	1986	Antonio Di Gennaro
P-01436	Angelo	Di Livio	2	1998, 2002	Angelo Di Livio
P-02412	Laurent	Di Lorto	1	1938	Laurent Di Lorto
P-04158	Ángel	Di María	3	2010, 2014, 2018	Ángel Di María
P-05673	Roberto	Di Matteo	1	1998	Roberto Di Matteo
P-08291	Antonio	Di Natale	1	2010	Antonio Di Natale
P-00999	Alfredo	Di Stéfano	1	1962	Alfredo Di Stéfano
P-08503	Abou	Diaby	1	2010	Abou Diaby
P-03265	Raoul	Diagne	1	1938	Raoul Diagne
P-00363	Abdoulaye	Diallo	1	2018	Abdoulaye Diallo
P-05062	Omar	Diallo	1	2002	Omar Diallo
P-00542		Diamantino	1	1986	 Diamantino
P-04383	Salif	Diao	1	2002	Salif Diao
P-01955	Alou	Diarra	2	2006, 2010	Alou Diarra
P-07293	Rúben	Dias	1	2018	Rúben Dias
P-02537	Lamine	Diatta	1	2002	Lamine Diatta
P-01854	Eusebio	Díaz	1	1930	Eusebio Díaz
P-06843	Farid	Díaz	1	2018	Farid Díaz
P-02173	Guillermo	Díaz	1	1950	Guillermo Díaz
P-08654	Hernán	Díaz	1	1994	Hernán Díaz
P-02774	Isidoro	Díaz	3	1962, 1966, 1970	Isidoro Díaz
P-06760	Ismael	Díaz	1	2018	Ismael Díaz
P-08134	Júnior	Díaz	1	2014	Júnior Díaz
P-04299	Marcelo	Díaz	1	2014	Marcelo Díaz
P-08313	Miguel Ángel	Díaz	1	1982	Miguel Ángel Díaz
P-08342	Nelson	Díaz	1	1966	Nelson Díaz
P-01117	Ramón	Díaz	1	1982	Ramón Díaz
P-09739	Rubén Toribio	Díaz	2	1978, 1982	Rubén Toribio Díaz
P-09344	Walter	Dick	1	1934	Walter Dick
P-06077	Jimmy	Dickinson	2	1950, 1954	Jimmy Dickinson
P-07008		Dida	1	1958	 Dida
P-07724		Dida	3	1998, 2002, 2006	 Dida
P-07686	Jan	Diddens	1	1930	Jan Diddens
P-09343		Didi	3	1954, 1958, 1962	 Didi
P-05321	Joey	Didulica	1	2006	Joey Didulica
P-09439	Serey	Dié	1	2014	Serey Dié
P-01549	Franz	Dienert	1	1934	Franz Dienert
P-09516	Robert	Dienst	2	1954, 1958	Robert Dienst
P-04130	Eric	Dier	1	2018	Eric Dier
P-07787	Peter	Dietrich	1	1970	Peter Dietrich
P-00631	Bernard	Dietz	1	1978	Bernard Dietz
P-09536	Todor	Diev	1	1962	Todor Diev
P-03853	Lucas	Digne	1	2014	Lucas Digne
P-02741	Johann	Dihanich	1	1982	Johann Dihanich
P-06492	Kagisho	Dikgacoi	1	2010	Kagisho Dikgacoi
P-01559	Vasilis	Dimitriadis	1	1994	Vasilis Dimitriadis
P-06215	Georgi	Dimitrov	1	1986	Georgi Dimitrov
P-04461	Ivan	Dimitrov	2	1962, 1970	Ivan Dimitrov
P-01220	Panteley	Dimitrov	1	1962	Panteley Dimitrov
P-09925	Dimitar	Dimov	1	1962	Dimitar Dimov
P-06608	Roberto	Dinamite	2	1978, 1982	Roberto Dinamite
P-02991	Mehmet	Dinçer	1	1954	Mehmet Dinçer
P-07422	Aruna	Dindane	2	2006, 2010	Aruna Dindane
P-05341	Sirous	Dinmohammadi	1	1998	Sirous Dinmohammadi
P-05960	Cornel	Dinu	1	1970	Cornel Dinu
P-04720	Víctor	Diogo	1	1986	Víctor Diogo
P-02542	Ismaël	Diomandé	1	2014	Ismaël Diomandé
P-06128	Bernard	Diomède	1	1998	Bernard Diomède
P-04667	Papa Bouba	Diop	1	2002	Papa Bouba Diop
P-05199	Nicholas	DiOrio	1	1950	Nicholas DiOrio
P-06645	El Hadji	Diouf	1	2002	El Hadji Diouf
P-06944	Mame Biram	Diouf	1	2018	Mame Biram Diouf
P-00339	Nabil	Dirar	1	2018	Nabil Dirar
P-02014		Dirceu	3	1974, 1978, 1982	 Dirceu
P-05741	Henri	Dirickx	1	1954	Henri Dirickx
P-04740	Basri	Dirimlili	1	1954	Basri Dirimlili
P-02765	Mix	Diskerud	1	2014	Mix Diskerud
P-03849	László	Disztl	1	1986	László Disztl
P-06950	Péter	Disztl	1	1986	Péter Disztl
P-03240	Ted	Ditchburn	1	1950	Ted Ditchburn
P-03485	Kerry	Dixon	1	1986	Kerry Dixon
P-06935	Linval	Dixon	1	1998	Linval Dixon
P-04262	Abdelmoumene	Djabou	1	2014	Abdelmoumene Djabou
P-00391	Constant	Djakpa	1	2014	Constant Djakpa
P-02797	Rafik	Djebbour	1	2010	Rafik Djebbour
P-06640	Eric	Djemba-Djemba	1	2002	Eric Djemba-Djemba
P-09909	Cédric	Djeugoué	1	2014	Cédric Djeugoué
P-01700	Bonaventure	Djonkep	1	1990	Bonaventure Djonkep
P-06627	Jean	Djorkaeff	1	1966	Jean Djorkaeff
P-01626	Youri	Djorkaeff	2	1998, 2002	Youri Djorkaeff
P-00429	Johan	Djourou	3	2006, 2014, 2018	Johan Djourou
P-07266	Marko	Dmitrović	1	2018	Marko Dmitrović
P-08716	Ștefan	Dobay	2	1934, 1938	Ștefan Dobay
P-06395	Karol	Dobiaš	1	1970	Karol Dobiaš
P-05835	Anton	Doboș	1	1998	Anton Doboș
P-09309	Nicolae	Dobrin	1	1970	Nicolae Dobrin
P-02461	Igor	Dobrovolski	1	1990	Igor Dobrovolski
P-06321		Doca	1	1930	 Doca
P-09876	Tommy	Docherty	2	1954, 1958	Tommy Docherty
P-06938	Jean	Dockx	1	1970	Jean Dockx
P-05029	Glenn	Dods	1	1982	Glenn Dods
P-04183	Pim	Doesburg	1	1978	Pim Doesburg
P-02651	Yoichi	Doi	1	2006	Yoichi Doi
P-00824	Kiril	Dojčinovski	1	1974	Kiril Dojčinovski
P-02466	Momčilo	Đokić	1	1930	Momčilo Đokić
P-00129	Paul	Dolan	1	1986	Paul Dolan
P-04751	Kasper	Dolberg	1	2018	Kasper Dolberg
P-05407	Břetislav	Dolejší	1	1958	Břetislav Dolejší
P-08228	Abdelmajid	Dolmy	1	1986	Abdelmajid Dolmy
P-01757	Tadeusz	Dolny	1	1982	Tadeusz Dolny
P-01907	Jan	Domarski	1	1974	Jan Domarski
P-01538	Angelo	Domenghini	1	1970	Angelo Domenghini
P-08352	Flavius	Domide	1	1970	Flavius Domide
P-09962	Alejandro	Domínguez	1	1986	Alejandro Domínguez
P-08083	Alexander	Domínguez	1	2014	Alexander Domínguez
P-04276	Alfonso	Domínguez	1	1990	Alfonso Domínguez
P-09358	Diógenes	Domínguez	1	1930	Diógenes Domínguez
P-04502	Rogelio	Domínguez	1	1962	Rogelio Domínguez
P-04525	Cyril	Domoraud	1	2006	Cyril Domoraud
P-01523	Willie	Donachie	2	1974, 1978	Willie Donachie
P-02229	Roberto	Donadoni	2	1990, 1994	Roberto Donadoni
P-05597	Mal	Donaghy	2	1982, 1986	Mal Donaghy
P-05859	Aldo	Donati	1	1938	Aldo Donati
P-01139	Aldo	Donelli	1	1934	Aldo Donelli
P-08102	Cristiano	Doni	1	2002	Cristiano Doni
P-02369		Doni	1	2010	 Doni
P-07903	Simon	Donnelly	1	1998	Simon Donnelly
P-00973	Humberto	Donoso	1	1966	Humberto Donoso
P-06818	Landon	Donovan	3	2002, 2006, 2010	Landon Donovan
P-08168	Thomas	Dooley	2	1994, 1998	Thomas Dooley
P-00275	Pablo	Dorado	1	1930	Pablo Dorado
P-01612	Nenad	Đorđević	1	2006	Nenad Đorđević
P-01183	Predrag	Đorđević	1	2006	Predrag Đorđević
P-06679	Tony	Dorigo	1	1990	Tony Dorigo
P-04345		Doriva	1	1998	 Doriva
P-09632	Goran	Đorović	1	1998	Goran Đorović
P-01909		Dorst	1	1938	 Dorst
P-07818	Giovani	dos Santos	3	2010, 2014, 2018	Giovani dos Santos
P-01014	Jonathan	dos Santos	1	2018	Jonathan dos Santos
P-07437	Julio	dos Santos	1	2006	Julio dos Santos
P-07451	Giuseppe	Dossena	1	1982	Giuseppe Dossena
P-09682	Thomas	Dossevi	1	2006	Thomas Dossevi
P-00757	Derek	Dougan	1	1958	Derek Dougan
P-04641	Bryan	Douglas	2	1958, 1962	Bryan Douglas
P-02140	Jimmy	Douglas	1	1930	Jimmy Douglas
P-00529	Yvon	Douis	1	1958	Yvon Douis
P-05605	Seydou	Doumbia	1	2010	Seydou Doumbia
P-05142	Stewart	Downing	1	2006	Stewart Downing
P-00836	John	Doyle	1	1990	John Doyle
P-04654	Vasil	Dragolov	1	1986	Vasil Dragolov
P-05372	Ivica	Dragutinović	1	2006	Ivica Dragutinović
P-08900	Haminu	Draman	1	2006	Haminu Draman
P-05866	Julian	Draxler	2	2014, 2018	Julian Draxler
P-03999	Wolfgang	Dremmler	1	1982	Wolfgang Dremmler
P-05507	Nacerdine	Drid	1	1986	Nacerdine Drid
P-05063	Marcel	Dries	1	1954	Marcel Dries
P-00218	Josip	Drmić	2	2014, 2018	Josip Drmić
P-08969	Didier	Drogba	3	2006, 2010, 2014	Didier Drogba
P-06705	Daaf	Drok	1	1938	Daaf Drok
P-03342	Dominique	Dropsy	1	1978	Dominique Dropsy
P-03825	Ljubinko	Drulović	1	1998	Ljubinko Drulović
P-03038	Domingo	Drummond	1	1982	Domingo Drummond
P-07700	Jervis	Drummond	2	2002, 2006	Jervis Drummond
P-01437	Wei	Du	1	2002	Wei Du
P-06689	Jaime	Duarte	2	1978, 1982	Jaime Duarte
P-02615	Manuel	Duarte	1	1966	Manuel Duarte
P-04533	Óscar	Duarte	2	2014, 2018	Óscar Duarte
P-03823	Eduard	Dubinski	1	1962	Eduard Dubinski
P-07036	Rodolfo	Dubó	1	1982	Rodolfo Dubó
P-04332	Peter	Ducke	1	1974	Peter Ducke
P-09440	Serge	Ducosté	1	1974	Serge Ducosté
P-02084		Duda	1	2010	 Duda
P-05552	János	Dudás	2	1934, 1938	János Dudás
P-06862	Jerzy	Dudek	1	2002	Jerzy Dudek
P-07802	Milan	Dudić	1	2006	Milan Dudić
P-05592	Dariusz	Dudka	1	2006	Dariusz Dudka
P-09973	Damien	Duff	1	2002	Damien Duff
P-02083	Christophe	Dugarry	2	1998, 2002	Christophe Dugarry
P-06543	Miroslav	Đukić	1	1998	Miroslav Đukić
P-03673	Cristian	Dulca	1	1998	Cristian Dulca
P-07473	Igor	Duljaj	1	2006	Igor Duljaj
P-04515	Florea	Dumitrache	1	1970	Florea Dumitrache
P-01078	Ilie	Dumitrescu	3	1990, 1994, 1998	Ilie Dumitrescu
P-07538	Ion	Dumitru	1	1970	Ion Dumitru
P-00148		Dunga	3	1990, 1994, 1998	 Dunga
P-01236	Gösta	Dunker	1	1934	Gösta Dunker
P-05928	George	Dunlop	1	1982	George Dunlop
P-03919	Richard	Dunne	1	2002	Richard Dunne
P-03730	Jacques	Duquesne	1	1970	Jacques Duquesne
P-05471	Segundo	Durandal	1	1930	Segundo Durandal
P-06559	Ján	Ďurica	1	2010	Ján Ďurica
P-03635	Anđelko	Đuričić	1	2010	Anđelko Đuričić
P-05974	Gordon	Durie	2	1990, 1998	Gordon Durie
P-04897	Vladimir	Durković	1	1962	Vladimir Durković
P-03314	Erik	Durm	1	2014	Erik Durm
P-02011	Jimmy	Durmaz	1	2018	Jimmy Durmaz
P-08668	Richard	Dürr	2	1962, 1966	Richard Dürr
P-03577	Milan	Dvořák	1	1958	Milan Dvořák
P-07418	Dionizije	Dvornić	1	1954	Dionizije Dvornić
P-03788	Iliya	Dyakov	1	1986	Iliya Dyakov
P-09313	Paulo	Dybala	1	2018	Paulo Dybala
P-06149	Kieron	Dyer	1	2002	Kieron Dyer
P-09487	Ewald	Dytko	1	1938	Ewald Dytko
P-08682	Alan	Dzagoev	2	2014, 2018	Alan Dzagoev
P-04417	Dragan	Džajić	1	1974	Dragan Džajić
P-01282	Edin	Džeko	1	2014	Edin Džeko
P-03892	Blerim	Džemaili	3	2006, 2014, 2018	Blerim Džemaili
P-02486	Dariusz	Dziekanowski	1	1986	Dariusz Dziekanowski
P-03496	Elvedin	Džinić	1	2010	Elvedin Džinić
P-03429	Marek	Dziuba	1	1982	Marek Dziuba
P-04639	Revaz	Dzodzuashvili	1	1970	Revaz Dzodzuashvili
P-02333	Artem	Dzyuba	1	2018	Artem Dzyuba
P-07335	Robbie	Earle	1	1998	Robbie Earle
P-07981	George	Eastham	2	1962, 1966	George Eastham
P-05870	Ernest	Ebongué	1	1982	Ernest Ebongué
P-04753	Emmanuel	Eboué	2	2006, 2010	Emmanuel Eboué
P-08702	Omid	Ebrahimi	1	2018	Omid Ebrahimi
P-00977	Tyronne	Ebuehi	1	2018	Tyronne Ebuehi
P-06834	Bertin	Ebwellé	1	1990	Bertin Ebwellé
P-02940	Eligio	Echagüe	1	1958	Eligio Echagüe
P-09519	Luis María	Echeberría	1	1962	Luis María Echeberría
P-09202	Héctor	Echeverry	1	1962	Héctor Echeverry
P-03684	Elderson	Echiéjilé	2	2010, 2018	Elderson Echiéjilé
P-04824	Horst	Eckel	2	1954, 1958	Horst Eckel
P-04926	Bill	Eckersley	1	1950	Bill Eckersley
P-08592	Norbert	Eder	1	1986	Norbert Eder
P-05008		Eder	1	2014	 Eder
P-05515		Éder	1	1982	 Éder
P-05667		Ederson	1	2018	 Ederson
P-01857		Edevaldo	1	1982	 Edevaldo
P-03330		Edílson	1	2002	 Edílson
P-06803		Edinho	3	1978, 1982, 1986	 Edinho
P-04588		Edivaldo	1	1986	 Edivaldo
P-00401	Erik	Edman	2	2002, 2006	Erik Edman
P-01775		Edmílson	1	2002	 Edmílson
P-01102		Edmundo	1	1998	 Edmundo
P-01231		Édson	1	1986	 Édson
P-05385	Ralf	Edström	2	1974, 1978	Ralf Edström
P-09510	Maurice	Edu	1	2010	Maurice Edu
P-02293		Edu	3	1966, 1970, 1974	 Edu
P-02269		Eduardo	2	2010, 2014	 Eduardo
P-09770		Eduardo	1	2014	 Eduardo
P-08589	Carlos	Edwards	1	2006	Carlos Edwards
P-04879	Federico	Edwards	1	1958	Federico Edwards
P-03148	Trevor	Edwards	1	1958	Trevor Edwards
P-01058	Stefan	Effenberg	1	1994	Stefan Effenberg
P-00814	Dan	Eggen	2	1994, 1998	Dan Eggen
P-06915	Mario	Eggimann	1	2010	Mario Eggimann
P-02771	Oliver	Eggimann	2	1950, 1954	Oliver Eggimann
P-01744	André	Egli	1	1994	André Egli
P-05702	Augustine	Eguavoen	2	1994, 1998	Augustine Eguavoen
P-07045	Sebastián	Eguren	1	2010	Sebastián Eguren
P-00180	Azubuike	Egwuekwe	1	2014	Azubuike Egwuekwe
P-06182	Walter	Eich	1	1954	Walter Eich
P-04820	Eric	Eichmann	1	1990	Eric Eichmann
P-05911	Léo	Eichmann	1	1966	Léo Eichmann
P-03352	Saber	Eid	1	1990	Saber Eid
P-05520	Alfred	Eisenbeisser	1	1930	Alfred Eisenbeisser
P-01849	Ignacio	Eizaguirre	1	1950	Ignacio Eizaguirre
P-03323	Inge	Ejderstedt	2	1970, 1974	Inge Ejderstedt
P-07094	Austin	Ejide	3	2002, 2010, 2014	Austin Ejide
P-08701	Eric	Ejiofor	1	2002	Eric Ejiofor
P-05144	Albin	Ekdal	1	2018	Albin Ekdal
P-08130	Eugène	Ekéké	1	1990	Eugène Ekéké
P-07750	Samuel	Ekemé	1	1994	Samuel Ekemé
P-07178	Bülent	Eken	1	1954	Bülent Eken
P-08193	Mbungu	Ekofa	1	1974	Mbungu Ekofa
P-02745	Efan	Ekoku	1	1994	Efan Ekoku
P-05617	Sherif	Ekramy	1	2018	Sherif Ekramy
P-00626	Johnny	Ekström	1	1990	Johnny Ekström
P-06548	Karim	El Ahmadi	1	2018	Karim El Ahmadi
P-07088	Mustafa	El Biyaz	1	1986	Mustafa El Biyaz
P-07872	Abdelkader	El Brazi	1	1998	Abdelkader El Brazi
P-01962	Mohammed	El Filali	1	1970	Mohammed El Filali
P-01642	Essam	El Hadary	1	2018	Essam El Hadary
P-09206	Mouncif	El Haddaoui	1	1986	Mouncif El Haddaoui
P-02378	Mustafa	El Haddaoui	2	1986, 1994	Mustafa El Haddaoui
P-02426	Larbi	El Hadi	1	1986	Larbi El Hadi
P-01524	Abdelkrim	El Hadrioui	2	1994, 1998	Abdelkrim El Hadrioui
P-07998	Ayoub	El Kaabi	1	2018	Ayoub El Kaabi
P-06365	Tahar	El Khalej	2	1994, 1998	Tahar El Khalej
P-07316	Abdelkader	El Khiati	1	1970	Abdelkader El Khiati
P-08016	Ridha	El Louze	1	1978	Ridha El Louze
P-05086	Chokri	El Ouaer	1	1998	Chokri El Ouaer
P-09986	Abdallah	El Said	1	2018	Abdallah El Said
P-05174	Mohamed	El Shenawy	1	2018	Mohamed El Shenawy
P-04195	Thabet	El-Batal	1	1990	Thabet El-Batal
P-05523	Hassan	El-Far	1	1934	Hassan El-Far
P-09977	Ahmed	El-Jaouachi	1	2002	Ahmed El-Jaouachi
P-00404	Ali	El-Kaf	1	1934	Ali El-Kaf
P-08286	Ahmed	El-Kass	1	1990	Ahmed El-Kass
P-00347	Mahmoud	El-Nigero	1	1934	Mahmoud El-Nigero
P-00327	Yacout	El-Soury	1	1934	Yacout El-Soury
P-01711		Eladio	1	1966	 Eladio
P-02218	Joseph	Elanga	1	1998	Joseph Elanga
P-08273		Elano	1	2010	 Elano
P-06189	Federico	Elduayen	1	2002	Federico Elduayen
P-08972	Humberto	Elgueta	1	1930	Humberto Elgueta
P-09681	Eljero	Elia	1	2010	Eljero Elia
P-00945	Ali	Elkhattabi	1	1998	Ali Elkhattabi
P-06503	Preben	Elkjær	1	1986	Preben Elkjær
P-07993	Matt	Elliott	1	1998	Matt Elliott
P-09709	Simon	Elliott	1	2010	Simon Elliott
P-01998	Johan	Elmander	1	2006	Johan Elmander
P-06267	Ahmed	Elmohamady	1	2018	Ahmed Elmohamady
P-00751	Mohamed	Elneny	1	2018	Mohamed Elneny
P-06389		Eloy	1	1986	 Eloy
P-01019	Adrian	Elrick	1	1982	Adrian Elrick
P-07056	Karl	Elsener	2	1962, 1966	Karl Elsener
P-07425	John	Elsworthy	1	1958	John Elsworthy
P-01603	Nico	Elvedi	1	2018	Nico Elvedi
P-00837		Ely	2	1950, 1954	 Ely
P-09123		Elzo	1	1986	 Elzo
P-05764	Achille	Emaná	1	2010	Achille Emaná
P-04400	David	Embé	1	1994	David Embé
P-02230	Breel	Embolo	1	2018	Breel Embolo
P-00212	Michael	Emenalo	1	1994	Michael Emenalo
P-05976	Emmanuel	Emenike	1	2014	Emmanuel Emenike
P-09873		Emerson	2	1998, 2006	 Emerson
P-07978	Brett	Emerton	2	2006, 2010	Brett Emerton
P-00058	Lothar	Emmerich	1	1966	Lothar Emmerich
P-07876	Marc	Emmers	2	1990, 1994	Marc Emmers
P-01351	Youssef	En-Nesyri	1	2018	Youssef En-Nesyri
P-09953	Joseph	Enanga	1	1982	Joseph Enanga
P-04688	Reza	Enayati	1	2006	Reza Enayati
P-02174	Julio César	Enciso	1	1998	Julio César Enciso
P-09052	Wataru	Endo	1	2018	Wataru Endo
P-00514	Yasuhito	Endō	3	2006, 2010, 2014	Yasuhito Endō
P-09563	Thomas	Enevoldsen	1	2010	Thomas Enevoldsen
P-09314	Bruno	Engelmeier	1	1958	Bruno Engelmeier
P-01315	Stephan	Engels	1	1982	Stephan Engels
P-04650	Gaëtan	Englebert	1	2002	Gaëtan Englebert
P-03589	Leif	Engqvist	1	1990	Leif Engqvist
P-02769	Eyong	Enoh	2	2010, 2014	Eyong Enoh
P-02302	Edmond	Enoka	1	1982	Edmond Enoka
P-03309	Héctor	Enrique	1	1986	Héctor Enrique
P-00381	Luis	Enrique	3	1994, 1998, 2002	Luis Enrique
P-03426	Vincent	Enyeama	3	2002, 2010, 2014	Vincent Enyeama
P-03278	Joël	Epalle	1	2002	Joël Epalle
P-02288	Affo	Erassa	1	2006	Affo Erassa
P-05423	Frickson	Erazo	1	2014	Frickson Erazo
P-03975	Abdullah	Ercan	1	2002	Abdullah Ercan
P-03220	Arif	Erdem	1	2002	Arif Erdem
P-05256	Naci	Erdem	1	1954	Naci Erdem
P-07899	Ivan	Ergić	1	2006	Ivan Ergić
P-09102	Herbert	Erhardt	3	1954, 1958, 1962	Herbert Erhardt
P-03262	Christian	Eriksen	2	2010, 2018	Christian Eriksen
P-08203	John	Eriksen	1	1986	John Eriksen
P-03170	Nils	Eriksen	1	1938	Nils Eriksen
P-00106	Ivar	Eriksson	1	1938	Ivar Eriksson
P-08041	Jan	Eriksson	1	1990	Jan Eriksson
P-09182	Lars	Eriksson	2	1990, 1994	Lars Eriksson
P-09780	Leif	Eriksson	1	1970	Leif Eriksson
P-03477	Ingemar	Erlandsson	1	1978	Ingemar Erlandsson
P-09726	Magnus	Erlingmark	1	1994	Magnus Erlingmark
P-08862	Şükrü	Ersoy	1	1954	Şükrü Ersoy
P-01846	Mustafa	Ertan	1	1954	Mustafa Ertan
P-03164	Rober	Eryol	1	1954	Rober Eryol
P-09545	Guillermo	Escalada	1	1962	Guillermo Escalada
P-09881	Norbert	Eschmann	2	1954, 1962	Norbert Eschmann
P-07844	Andrés	Escobar	2	1990, 1994	Andrés Escobar
P-07312	Enzo	Escobar	1	1982	Enzo Escobar
P-00624	Eusebio	Escobar	1	1962	Eusebio Escobar
P-07868	Fidel	Escobar	1	2018	Fidel Escobar
P-02323	Donis	Escober	2	2010, 2014	Donis Escober
P-08892	Misael	Escuti	1	1962	Misael Escuti
P-07254	Andranik	Eskandarian	1	1978	Andranik Eskandarian
P-00168	Miguel	España	1	1986	Miguel España
P-06766	Víctor	Espárrago	3	1966, 1970, 1974	Víctor Espárrago
P-02706	César	Espinoza	1	1930	César Espinoza
P-01421	Giovanny	Espinoza	2	2002, 2006	Giovanny Espinoza
P-08812	Missael	Espinoza	1	1994	Missael Espinoza
P-06921	Roger	Espinoza	2	2010, 2014	Roger Espinoza
P-05527	Karim	Essediri	1	2006	Karim Essediri
P-00530	Michael	Essien	2	2006, 2014	Michael Essien
P-04644	Fabián	Estay	1	1998	Fabián Estay
P-09617	Márton	Esterházy	1	1986	Márton Esterházy
P-02808	Hamid	Estili	1	1998	Hamid Estili
P-06429	Andrés	Estrada	1	1998	Andrés Estrada
P-01850	Carlos	Estrada	1	1990	Carlos Estrada
P-00717	Marco	Estrada	1	2010	Marco Estrada
P-07770	Marco	Etcheverry	1	1994	Marco Etcheverry
P-09526	Romildo	Etcheverry	1	1930	Romildo Etcheverry
P-02645	Peter	Etebo	1	2018	Peter Etebo
P-00030	Kakoko	Etepe	1	1974	Kakoko Etepe
P-03935	Samuel	Eto'o	4	1998, 2002, 2010, 2014	Samuel Eto'o
P-05535	Jean-Luc	Ettori	1	1982	Jean-Luc Ettori
P-07394	Dickson	Etuhu	1	2010	Dickson Etuhu
P-03061	Joseba	Etxeberria	1	1998	Joseba Etxeberria
P-01633		Eusébio	1	1966	 Eusébio
P-05193	Alberigo	Evani	1	1994	Alberigo Evani
P-07766	Allan	Evans	1	1982	Allan Evans
P-09949	Bobby	Evans	2	1954, 1958	Bobby Evans
P-04860	Paul	Evans	1	1998	Paul Evans
P-00754	Juan	Evaristo	1	1930	Juan Evaristo
P-06416	Mario	Evaristo	1	1930	Mario Evaristo
P-05868		Everaldo	1	1970	 Everaldo
P-00046	Patrice	Evra	2	2010, 2014	Patrice Evra
P-08573	Hólmar Örn	Eyjólfsson	1	2018	Hólmar Örn Eyjólfsson
P-04353	Oscar	Eyobo	1	1982	Oscar Eyobo
P-06240	Luis	Eyzaguirre	2	1962, 1966	Luis Eyzaguirre
P-04243	Saeid	Ezatolahi	1	2018	Saeid Ezatolahi
P-01899	Ikechukwu	Ezenwa	1	2018	Ikechukwu Ezenwa
P-03467	Emeka	Ezeugo	1	1994	Emeka Ezeugo
P-07991	Néstor	Fabbri	1	1990	Néstor Fabbri
P-03922	Marco	Fabián	2	2014, 2018	Marco Fabián
P-06981	Luís	Fabiano	1	2010	Luís Fabiano
P-01502	Łukasz	Fabiański	2	2006, 2018	Łukasz Fabiański
P-03059	Cesc	Fàbregas	3	2006, 2010, 2014	Cesc Fàbregas
P-08952	Giacinto	Facchetti	3	1966, 1970, 1974	Giacinto Facchetti
P-01171	Héctor	Facundo	1	1962	Héctor Facundo
P-06879	Khalilou	Fadiga	1	2002	Khalilou Fadiga
P-06868	Jalili	Fadili	1	1970	Jalili Fadili
P-01581	Emerse	Faé	1	2006	Emerse Faé
P-01503		Fagner	1	2018	 Fagner
P-07404	Ramón	Fagoaga	1	1982	Ramón Fagoaga
P-09025	Aziz	Fahmy	1	1934	Aziz Fahmy
P-02813	Wolfgang	Fahrian	1	1962	Wolfgang Fahrian
P-05845	Luis	Fajardo	1	1990	Luis Fajardo
P-09032	Fayçal	Fajr	1	2018	Fayçal Fajr
P-03402	Radamel	Falcao	1	2018	Radamel Falcao
P-05820		Falcão	2	1982, 1986	 Falcão
P-01767	Yuri	Falin	1	1958	Yuri Falin
P-07279	Rory	Fallon	1	2010	Rory Fallon
P-05258	Zhiyi	Fan	1	2002	Zhiyi Fan
P-01887	Hossein	Faraki	1	1978	Hossein Faraki
P-01105	Ahmed	Faras	1	1970	Ahmed Faras
P-07315	Jefferson	Farfán	1	2018	Jefferson Farfán
P-03766	Salvador	Farfán	1	1962	Salvador Farfán
P-09817	Arturo	Farías	1	1950	Arturo Farías
P-01223	Rogelio	Farías	1	1974	Rogelio Farías
P-09059	Behtash	Fariba	1	1978	Behtash Fariba
P-06508	János	Farkas	2	1962, 1966	János Farkas
P-04936	Pontus	Farnerud	1	2002	Pontus Farnerud
P-07592	Ahmed	Fathy	1	2018	Ahmed Fathy
P-08600	Jacques	Fatton	2	1950, 1954	Jacques Fatton
P-00853	Osvaldo	Fattori	1	1950	Osvaldo Fattori
P-07974	Gerrit	Faulhaber	1	1938	Gerrit Faulhaber
P-04503		Fausto	1	1930	 Fausto
P-07685	Abdulrahman	Fawzi	1	1934	Abdulrahman Fawzi
P-05111	Amdy	Faye	1	2002	Amdy Faye
P-07290	Viktor	Fayzulin	1	2014	Viktor Fayzulin
P-07494	László	Fazekas	2	1978, 1982	László Fazekas
P-09406	Federico	Fazio	1	2018	Federico Fazio
P-03868		Fede	1	1934	 Fede
P-01591	Adam	Federici	1	2010	Adam Federici
P-07976	Genrich	Fedosov	1	1958	Genrich Fedosov
P-09126	Sofiane	Feghouli	1	2014	Sofiane Feghouli
P-09187	Wolfgang	Feiersinger	1	1998	Wolfgang Feiersinger
P-03770	Yehoshua	Feigenbaum	1	1970	Yehoshua Feigenbaum
P-01882	Benny	Feilhaber	1	2010	Benny Feilhaber
P-05919	Jasmin	Fejzić	1	2014	Jasmin Fejzić
P-02762	Nabil	Fekir	1	2018	Nabil Fekir
P-04065	Iacob	Felecan	1	1938	Iacob Felecan
P-03232		Félix	1	1970	 Félix
P-00718	Marouane	Fellaini	2	2014, 2018	Marouane Fellaini
P-06263	Terry	Fenwick	1	1986	Terry Fenwick
P-00159	Máté	Fenyvesi	3	1958, 1962, 1966	Máté Fenyvesi
P-03709	Leroy	Fer	1	2014	Leroy Fer
P-00383	Les	Ferdinand	1	1998	Les Ferdinand
P-06624	Rio	Ferdinand	3	1998, 2002, 2006	Rio Ferdinand
P-01382	Ali	Fergani	1	1982	Ali Fergani
P-06838	Bruno	Fernandes	1	2018	Bruno Fernandes
P-04444	Daniel	Fernandes	1	2010	Daniel Fernandes
P-01302	Gélson	Fernandes	3	2010, 2014, 2018	Gélson Fernandes
P-06947	Manuel	Fernandes	1	2018	Manuel Fernandes
P-00156	Mário	Fernandes	1	2018	Mário Fernandes
P-06785	Álvaro	Fernández	1	2010	Álvaro Fernández
P-05921	Ángel	Fernández	1	2002	Ángel Fernández
P-09943	Arturo	Fernández	1	1930	Arturo Fernández
P-05805	Augusto	Fernández	1	2014	Augusto Fernández
P-04453	Federico	Fernández	1	2014	Federico Fernández
P-03167	Félix	Fernández	1	1994	Félix Fernández
P-01939	Gualberto	Fernández	1	1970	Gualberto Fernández
P-02180	Gustavo	Fernández	1	1974	Gustavo Fernández
P-01703	José	Fernández	1	1970	José Fernández
P-04382	Lorenzo	Fernández	1	1930	Lorenzo Fernández
P-07435	Luis	Fernández	1	1986	Luis Fernández
P-01052	Matías	Fernández	1	2010	Matías Fernández
P-01830	René	Fernández	1	1930	René Fernández
P-03223	Roberto	Fernández	1	1986	Roberto Fernández
P-05754	Sebastián	Fernández	1	2010	Sebastián Fernández
P-01184	Tomás	Fernández	1	1938	Tomás Fernández
P-07790		Fernandinho	2	2014, 2018	 Fernandinho
P-04545		Fernando	1	1930	 Fernando
P-09718		Fernando	1	1990	 Fernando
P-04078	Willie	Fernie	2	1954, 1958	Willie Fernie
P-00870	Ugo	Ferrante	1	1970	Ugo Ferrante
P-01159	Ciro	Ferrara	1	1990	Ciro Ferrara
P-06750	Giovanni	Ferrari	2	1934, 1938	Giovanni Ferrari
P-04747	Rino	Ferrario	1	1954	Rino Ferrario
P-01640	Attilio	Ferraris	1	1934	Attilio Ferraris
P-00963	Pietro	Ferraris	1	1938	Pietro Ferraris
P-07544	Buenaventura	Ferreira	1	1986	Buenaventura Ferreira
P-05678	Manuel	Ferreira	1	1930	Manuel Ferreira
P-00358	Paulo	Ferreira	2	2006, 2010	Paulo Ferreira
P-00256	Roberto	Ferreiro	1	1966	Roberto Ferreiro
P-06171	Leonardo	Ferrel	1	1950	Leonardo Ferrel
P-00229	Albert	Ferrer	2	1994, 1998	Albert Ferrer
P-02872	Pedro	Ferrer	1	1938	Pedro Ferrer
P-00076	Jean-Marc	Ferreri	1	1986	Jean-Marc Ferreri
P-00214	Riccardo	Ferri	1	1990	Riccardo Ferri
P-01050	Giorgio	Ferrini	1	1962	Giorgio Ferrini
P-04219	Gilbert	Fesselet	1	1954	Gilbert Fesselet
P-09915	Alberto	Festa	1	1966	Alberto Festa
P-04149	Giannis	Fetfatzidis	1	2014	Giannis Fetfatzidis
P-01934	Loïc	Feudjou	1	2014	Loïc Feudjou
P-00884	Jiří	Feureisl	1	1958	Jiří Feureisl
P-07391	Herbert	Feurer	1	1982	Herbert Feurer
P-08598	Roger	Feutmba	1	1990	Roger Feutmba
P-04976	Jan	Fiala	1	1982	Jan Fiala
P-07148	Jean-Pierre	Fiala	1	1994	Jean-Pierre Fiala
P-01307	Klaus	Fichtel	1	1970	Klaus Fichtel
P-08967		Fidélis	1	1966	 Fidélis
P-01024	Peter	Fieber	1	1990	Peter Fieber
P-03803	Bill	Fiedler	1	1934	Bill Fiedler
P-01715	Gonzalo	Fierro	1	2010	Gonzalo Fierro
P-03848	Jean	Fievez	1	1938	Jean Fievez
P-06677	Luís	Figo	2	2002, 2006	Luís Figo
P-07247	Ernesto	Figueiredo	1	1966	Ernesto Figueiredo
P-04550	Paulo	Figueiredo	1	2006	Paulo Figueiredo
P-06093	Elías	Figueroa	3	1966, 1974, 1982	Elías Figueroa
P-07812	Maynor	Figueroa	2	2010, 2014	Maynor Figueroa
P-08924	Roberto	Figueroa	1	1982	Roberto Figueroa
P-03432	Suad	Fileković	1	2010	Suad Fileković
P-04335	Aleksandr	Filimonov	1	2002	Aleksandr Filimonov
P-09772	Iulian	Filipescu	1	1998	Iulian Filipescu
P-02665	Ubaldo	Fillol	3	1974, 1978, 1982	Ubaldo Fillol
P-09006	Robbie	Findley	1	2010	Robbie Findley
P-00207	Steve	Finnan	1	2002	Steve Finnan
P-01866	Alfreð	Finnbogason	1	2018	Alfreð Finnbogason
P-03077	Tom	Finney	3	1950, 1954, 1958	Tom Finney
P-04817	Tommy	Finney	1	1982	Tommy Finney
P-08137	Vladimir	Firm	1	1950	Vladimir Firm
P-01940	Roberto	Firmino	1	2018	Roberto Firmino
P-06020	Andrzej	Fischer	1	1974	Andrzej Fischer
P-01085	Klaus	Fischer	2	1978, 1982	Klaus Fischer
P-00770	Viktor	Fischer	1	2018	Viktor Fischer
P-04232	Mark	Fish	1	1998	Mark Fish
P-06653	Jan Åge	Fjørtoft	1	1994	Jan Åge Fjørtoft
P-06810		Flávio	1	2006	 Flávio
P-07589	Robert	Fleck	1	1990	Robert Fleck
P-04213	Anton	Flešár	1	1970	Anton Flešár
P-09842	Håvard	Flo	1	1998	Håvard Flo
P-00636	Jostein	Flo	2	1994, 1998	Jostein Flo
P-07402	Tore André	Flo	1	1998	Tore André Flo
P-02716	Heinz	Flohe	2	1974, 1978	Heinz Flohe
P-04328	Diego	Florentín	1	1930	Diego Florentín
P-01766	Antonio	Flores	1	1950	Antonio Flores
P-03422	Edison	Flores	1	2018	Edison Flores
P-03387	Francisco	Flores	1	1958	Francisco Flores
P-09790	Luis	Flores	1	1986	Luis Flores
P-00425	Miguel	Flores	1	1950	Miguel Flores
P-05083	Róger	Flores	1	1990	Róger Flores
P-08310	Salvador	Flores	1	1930	Salvador Flores
P-02116	Ignacio	Flores Ocaranza	1	1978	Ignacio Flores Ocaranza
P-06672	Tom	Florie	2	1930, 1934	Tom Florie
P-07658	Ron	Flowers	2	1962, 1966	Ron Flowers
P-02672	Tim	Flowers	1	1998	Tim Flowers
P-02544	Marcel	Flückiger	1	1954	Marcel Flückiger
P-08432	Marc-Vivien	Foé	2	1994, 2002	Marc-Vivien Foé
P-00413	Romano	Fogli	1	1966	Romano Fogli
P-09141	Sergei	Fokin	1	1990	Sergei Fokin
P-08777	Alfredo	Foni	1	1938	Alfredo Foni
P-04782	Daniel	Fonseca	1	1990	Daniel Fonseca
P-00821	Danny	Fonseca	1	2006	Danny Fonseca
P-00845	Francisco	Fonseca	1	2006	Francisco Fonseca
P-09424	Rolando	Fonseca	1	2002	Rolando Fonseca
P-00643	Just	Fontaine	1	1958	Just Fontaine
P-09912		Fontana	1	1970	 Fontana
P-07486	José	Fonte	1	2018	José Fonte
P-01582	Dagoberto	Fontes	1	1970	Dagoberto Fontes
P-03349	Donald	Ford	1	1974	Donald Ford
P-01628	Diego	Forlán	3	2002, 2010, 2014	Diego Forlán
P-05387	Pablo	Forlán	2	1966, 1974	Pablo Forlán
P-06565	Emil	Forsberg	1	2018	Emil Forsberg
P-04752	Richmond	Forson	1	2006	Richmond Forson
P-00384	Fraser	Forster	1	2014	Fraser Forster
P-02822	Bernd	Förster	1	1982	Bernd Förster
P-01182	Karlheinz	Förster	2	1982, 1986	Karlheinz Förster
P-07834	Tom	Forsyth	1	1978	Tom Forsyth
P-08477		Fortes	1	1930	 Fortes
P-07915	Quinton	Fortune	2	1998, 2002	Quinton Fortune
P-03407	Ben	Foster	1	2014	Ben Foster
P-04399	Steve	Foster	1	1982	Steve Foster
P-04000	Alberto	Fouilloux	2	1962, 1966	Alberto Fouilloux
P-03462	Sébastien	Fournier	1	1994	Sébastien Fournier
P-02146	Robbie	Fowler	1	2002	Robbie Fowler
P-04083	Javier	Fragoso	2	1966, 1970	Javier Fragoso
P-05131	Enzo	Francescoli	2	1986, 1990	Enzo Francescoli
P-02967	Henri	Françillon	1	1974	Henri Françillon
P-01938	Trevor	Francis	1	1982	Trevor Francis
P-03902	Waylon	Francis	1	2014	Waylon Francis
P-05590		Francisco	1	1986	 Francisco
P-04486	Guillermo	Franco	2	2006, 2010	Guillermo Franco
P-06637	Juan Carlos	Franco	1	2002	Juan Carlos Franco
P-07152	Leo	Franco	1	2006	Leo Franco
P-09385	Guy	François	1	1974	Guy François
P-01947	Per	Frandsen	1	1998	Per Frandsen
P-02183	Ivan	Franjic	1	2014	Ivan Franjic
P-04939	Bernd	Franke	1	1982	Bernd Franke
P-04326	Odd	Frantzen	1	1938	Odd Frantzen
P-04156	Friederich	Franzl	1	1934	Friederich Franzl
P-01062	Henk	Fraser	1	1990	Henk Fraser
P-00606	Nuno	Frechaut	1	2002	Nuno Frechaut
P-09130		Fred	2	2006, 2014	 Fred
P-02688		Fred	1	2018	 Fred
P-02990		Frederico	1	1986	 Frederico
P-02320	Alexander	Frei	2	2006, 2010	Alexander Frei
P-07135	Héctor	Freschi	1	1934	Héctor Freschi
P-04742	César López	Fretes	1	1950	César López Fretes
P-09324	Remo	Freuler	1	2018	Remo Freuler
P-01623	Steffen	Freund	1	1998	Steffen Freund
P-00745		Friaça	1	1950	 Friaça
P-05194	Ernst	Frick	1	1934	Ernst Frick
P-06330	Samúel	Friðjónsson	1	2018	Samúel Friðjónsson
P-08936	Brad	Friedel	3	1994, 1998, 2002	Brad Friedel
P-04247	Hans-Peter	Friedländer	1	1950	Hans-Peter Friedländer
P-01296	Zoltán	Friedmanszky	1	1958	Zoltán Friedmanszky
P-06104	Arne	Friedrich	2	2006, 2010	Arne Friedrich
P-02516	Werner	Friese	1	1974	Werner Friese
P-07620	Alessandro	Frigerio	1	1938	Alessandro Frigerio
P-05860	Roberto	Frigerio	1	1962	Roberto Frigerio
P-09426	Amleto	Frignani	1	1954	Amleto Frignani
P-02620	Per	Frimann	1	1986	Per Frimann
P-02737	Torsten	Frings	2	2002, 2006	Torsten Frings
P-00266	Joachim	Fritsche	1	1974	Joachim Fritsche
P-07078	Ivo	Frosio	1	1954	Ivo Frosio
P-03997	Erwin	Fuchsbichler	1	1978	Erwin Fuchsbichler
P-08757	Jorge	Fucile	2	2010, 2014	Jorge Fucile
P-06338	Ismael	Fuentes	1	2010	Ismael Fuentes
P-07616	Nicolás	Fuentes	1	1970	Nicolás Fuentes
P-04292	Ronald	Fuentes	1	1998	Ronald Fuentes
P-04624	José Pablo	Fuenzalida	1	2014	José Pablo Fuenzalida
P-02713	Hansruedi	Führer	1	1966	Hansruedi Führer
P-08441	Takashi	Fukunishi	2	2002, 2006	Takashi Fukunishi
P-00126	Ferenc	Fülöp	1	1978	Ferenc Fülöp
P-09311	Zeffiro	Furiassi	1	1950	Zeffiro Furiassi
P-02277	Giuseppe	Furino	1	1970	Giuseppe Furino
P-02931	Jan	Furtok	1	1986	Jan Furtok
P-08506	Josep Maria	Fusté	1	1966	Josep Maria Fusté
P-07635	Gyula	Futó	1	1934	Gyula Futó
P-01946	Paulo	Futre	1	1986	Paulo Futre
P-03538	Omar	Gaber	1	2018	Omar Gaber
P-04892	Ali	Gabr	1	2018	Ali Gabr
P-05756	Reuben	Gabriel	1	2014	Reuben Gabriel
P-00551	Francisco	Gabriel de Anda	1	2002	Francisco Gabriel de Anda
P-03239	Louis	Gabrillargues	1	1934	Louis Gabrillargues
P-06333	Hassen	Gabsi	1	2002	Hassen Gabsi
P-02624	Vladimir	Gabulov	1	2018	Vladimir Gabulov
P-00554	Robert	Gadocha	1	1974	Robert Gadocha
P-00852	Joe	Gaetjens	1	1950	Joe Gaetjens
P-09920	Boris	Gaganelov	2	1966, 1970	Boris Gaganelov
P-01484	Fernando	Gago	1	2014	Fernando Gago
P-03720	Agustín	Gaínza	1	1950	Agustín Gaínza
P-03634	Kazimír	Gajdoš	2	1954, 1958	Kazimír Gajdoš
P-02316	Saša	Gajser	1	2002	Saša Gajser
P-04991	Tomáš	Galásek	1	2006	Tomáš Galásek
P-03717	Alberto	Galateo	1	1934	Alberto Galateo
P-09721	Constantin	Gâlcă	2	1994, 1998	Constantin Gâlcă
P-06940	Giuseppe	Galderisi	1	1986	Giuseppe Galderisi
P-02531	Antoni	Gałecki	1	1938	Antoni Gałecki
P-05686	Eugene	Galekovic	2	2010, 2014	Eugene Galekovic
P-08207	Dmitri	Galiamin	1	1994	Dmitri Galiamin
P-01407	Milan	Galić	1	1962	Milan Galić
P-03160	Marinko	Galič	1	2002	Marinko Galič
P-04504	Benjamín	Galindo	1	1994	Benjamín Galindo
P-05180	Mario	Galindo	2	1974, 1982	Mario Galindo
P-03501	Plácido	Galindo	1	1930	Plácido Galindo
P-06920	Kevin	Gallacher	1	1998	Kevin Gallacher
P-09481	Jimmy	Gallagher	2	1930, 1934	Jimmy Gallagher
P-02248	Alberto	Gallardo	1	1970	Alberto Gallardo
P-08156	Jesús	Gallardo	1	2018	Jesús Gallardo
P-08547	Marcelo	Gallardo	2	1998, 2002	Marcelo Gallardo
P-06188	William	Gallas	2	2006, 2010	William Gallas
P-01908	Américo	Gallego	2	1978, 1982	Américo Gallego
P-09166		Gallego	1	1966	 Gallego
P-07194	Ricardo	Gallego	2	1982, 1986	Ricardo Gallego
P-01026	Pedro	Gallese	1	2018	Pedro Gallese
P-05857	Carlo	Galli	1	1954	Carlo Galli
P-03301	Ivo	Rudic	1	1974	Ivo Rudic
P-07329	Giovanni	Galli	2	1982, 1986	Giovanni Galli
P-00040	Luis	Galván	2	1978, 1982	Luis Galván
P-04822	Rubén	Galván	1	1978	Rubén Galván
P-08525	Mauro	Galvão	2	1986, 1990	Mauro Galvão
P-03869	Carlos	Gamarra	3	1998, 2002, 2006	Carlos Gamarra
P-08977	Rodolfo	Gamarra	1	2010	Rodolfo Gamarra
P-08978	Schubert	Gambetta	1	1950	Schubert Gambetta
P-09077	Cristian	Gamboa	2	2014, 2018	Cristian Gamboa
P-04310	Delio	Gamboa	1	1962	Delio Gamboa
P-03381	Miguel Ángel	Gamboa	1	1982	Miguel Ángel Gamboa
P-02128	Seweryn	Gancarczyk	1	2006	Seweryn Gancarczyk
P-07034	Yao	Gao	1	2002	Yao Gao
P-06570	Lounès	Gaouaoui	1	2010	Lounès Gaouaoui
P-01834	Imre	Garaba	2	1982, 1986	Imre Garaba
P-03484	Ezequiel	Garay	1	2014	Ezequiel Garay
P-07902	Jesús	Garay	1	1962	Jesús Garay
P-09763	Ariel	Garcé	1	2010	Ariel Garcé
P-06611	Tranquilino	Garcete	1	1930	Tranquilino Garcete
P-08540	Richard	Garcia	1	2010	Richard Garcia
P-04110	Boniek	García	2	2010, 2014	Boniek García
P-00563	Domingo	García	1	1930	Domingo García
P-06550	Juan Carlos	García	1	2014	Juan Carlos García
P-06579	Luis	García	1	2006	Luis García
P-03420	Pablo	García	1	2002	Pablo García
P-02261	Rafael	García	2	2002, 2006	Rafael García
P-06811	Rolando	García	1	1974	Rolando García
P-07220	Alberto	García Aspe	3	1994, 1998, 2002	Alberto García Aspe
P-05169	Luis	García Postigo	2	1994, 1998	Luis García Postigo
P-07158	Ingvar	Gärd	1	1950	Ingvar Gärd
P-02796	Gino	Gardassanich	1	1950	Gino Gardassanich
P-06712	Ricardo	Gardner	1	1998	Ricardo Gardner
P-00748	Walter	Gargano	2	2010, 2014	Walter Gargano
P-06436	Luis	Garisto	1	1974	Luis Garisto
P-06685	Oscar	Garré	1	1986	Oscar Garré
P-03389	Lizardo	Garrido	1	1982	Lizardo Garrido
P-00987	Luis	Garrido	1	2014	Luis Garrido
P-04025		Garrincha	3	1958, 1962, 1966	 Garrincha
P-00249	Francisco	Garza Gutiérrez	1	1930	Francisco Garza Gutiérrez
P-07181	Rafael	Garza Gutiérrez	1	1930	Rafael Garza Gutiérrez
P-09647	Paul	Gascoigne	1	1990	Paul Gascoigne
P-06245	Khaled	Gasmi	1	1978	Khaled Gasmi
P-07865	Lamine	Gassama	1	2018	Lamine Gassama
P-07634	Hugo	Gastulo	1	1982	Hugo Gastulo
P-05525	Hugo	Gatti	1	1966	Hugo Gatti
P-05642	Gennaro	Gattuso	3	2002, 2006, 2010	Gennaro Gattuso
P-01368	Josef	Gauchel	1	1938	Josef Gauchel
P-05591	Renato	Gaúcho	1	1990	Renato Gaúcho
P-08374	Maurizio	Gaudino	1	1994	Maurizio Gaudino
P-06045	Diego	Gavilán	2	2002, 2006	Diego Gavilán
P-04469	Manuel	Gavilán	1	1950	Manuel Gavilán
P-02397	Hermán	Gaviria	1	1994	Hermán Gaviria
P-09111	Goran	Gavrančić	1	2006	Goran Gavrančić
P-05274	Mario	Gavranović	2	2014, 2018	Mario Gavranović
P-02943	Yuri	Gavrilov	1	1982	Yuri Gavrilov
P-06180	Siboniso	Gaxa	1	2010	Siboniso Gaxa
P-06923	Milko	Gaydarski	1	1970	Milko Gaydarski
P-08762	Marcus	Gayle	1	1998	Marcus Gayle
P-04746	Roberto	Gayón	1	1930	Roberto Gayón
P-04916	Yury	Gazinsky	1	2018	Yury Gazinsky
P-06187	Sylvain	Gbohouo	1	2014	Sylvain Gbohouo
P-07319	István	Géczi	1	1966	István Géczi
P-09996	Ruud	Geels	1	1974	Ruud Geels
P-06024	Charles	Geerts	1	1954	Charles Geerts
P-03615	Alain	Geiger	1	1994	Alain Geiger
P-02068	Theofanis	Gekas	2	2010, 2014	Theofanis Gekas
P-04873	József	Gelei	1	1966	József Gelei
P-04244	Sándor	Gellér	1	1954	Sándor Gellér
P-04446	Rudolf	Gellesch	1	1938	Rudolf Gellesch
P-04060	Archie	Gemmill	1	1978	Archie Gemmill
P-09823	Scot	Gemmill	1	1998	Scot Gemmill
P-03159	Boncho	Genchev	1	1994	Boncho Genchev
P-08166	Bernard	Genghini	2	1982, 1986	Bernard Genghini
P-06496	Mario	Genta	1	1938	Mario Genta
P-02669	Claudio	Gentile	2	1978, 1982	Claudio Gentile
P-03532	James	Gentle	1	1930	James Gentle
P-08029	Francisco	Gento	2	1962, 1966	Francisco Gento
P-09840	Finidi	George	2	1994, 1998	Finidi George
P-09448	Georgi	Georgiev	1	1994	Georgi Georgiev
P-05604		Geremi	2	2002, 2010	 Geremi
P-03957	Eric	Gerets	3	1982, 1986, 1990	Eric Gerets
P-03692	Vasile	Gergely	1	1970	Vasile Gergely
P-09979	Carlos	Germano	1	1998	Carlos Germano
P-08184		Germano	1	1934	 Germano
P-08834		Germano	1	1966	 Germano
P-07660	Léopold	Gernaey	1	1954	Léopold Gernaey
P-07214	Pedro	Geromel	1	2018	Pedro Geromel
P-07513	Steven	Gerrard	3	2006, 2010, 2014	Steven Gerrard
P-03612		Gérson	2	1966, 1970	 Gérson
P-01756		Gervinho	2	2010, 2014	 Gervinho
P-01989	Álvaro	Gestido	1	1930	Álvaro Gestido
P-02315	Viktor	Getmanov	1	1966	Viktor Getmanov
P-06964	Plamen	Getov	1	1986	Plamen Getov
P-02206	Said	Ghandi	1	1970	Said Ghandi
P-01059	Khalil	Ghanim	1	1990	Khalil Ghanim
P-08690	Mubarak	Ghanim	1	1990	Mubarak Ghanim
P-02926	Ebrahim	Ghasempour	1	1978	Ebrahim Ghasempour
P-09904	Maouhoub	Ghazouani	1	1970	Maouhoub Ghazouani
P-08949	Ali Reza	Ghesghayan	1	1978	Ali Reza Ghesghayan
P-07786	Abdelkader	Ghezzal	1	2010	Abdelkader Ghezzal
P-05936	Giorgio	Ghezzi	1	1954	Giorgio Ghezzi
P-02673	Alcides	Ghiggia	1	1950	Alcides Ghiggia
P-04168	Nabil	Ghilas	1	2014	Nabil Ghilas
P-01610	Saman	Ghoddos	1	2018	Saman Ghoddos
P-06668	Kaies	Ghodhbane	3	1998, 2002, 2006	Kaies Ghodhbane
P-02826	Néjib	Ghommidh	1	1978	Néjib Ghommidh
P-09098	Reza	Ghoochannejhad	2	2014, 2018	Reza Ghoochannejhad
P-04393	Faouzi	Ghoulam	1	2014	Faouzi Ghoulam
P-00666	Hussain	Ghuloum	1	1990	Hussain Ghuloum
P-03627	Giovanni	Giacomazzi	1	1954	Giovanni Giacomazzi
P-04439	Lazare	Gianessi	1	1954	Lazare Gianessi
P-00342	Giuseppe	Giannini	1	1990	Giuseppe Giannini
P-01522	Edmund	Giemsa	1	1938	Edmund Giemsa
P-08064	Willi	Giesemann	1	1962	Willi Giesemann
P-08741	Karl	Giesser	1	1954	Karl Giesser
P-05479	André-Pierre	Gignac	1	2010	André-Pierre Gignac
P-04067		Gil	1	1978	 Gil
P-07752	Alberto	Gilardino	2	2006, 2010	Alberto Gilardino
P-08461		Gilberto	2	2006, 2010	 Gilberto
P-08337	Gary	Gillespie	1	1990	Gary Gillespie
P-07702	Hans	Gillhaus	1	1990	Hans Gillhaus
P-04950		Gilmar	3	1958, 1962, 1966	 Gilmar
P-05093	José	Giménez	2	2014, 2018	José Giménez
P-08885	Gosho	Ginchev	1	1998	Gosho Ginchev
P-08737	Luis	Gini	1	1958	Luis Gini
P-04316	Matthias	Ginter	2	2014, 2018	Matthias Ginter
P-06017		Giovanni	1	1998	 Giovanni
P-01326	Attilio	Giovannini	1	1950	Attilio Giovannini
P-01783	René	Girard	1	1982	René Girard
P-01018	Alain	Giresse	2	1982, 1986	Alain Giresse
P-09623	Olivier	Giroud	2	2014, 2018	Olivier Giroud
P-01580	Rúrik	Gíslason	1	2018	Rúrik Gíslason
P-01038	Ricardo	Giusti	2	1986, 1990	Ricardo Giusti
P-09568	Shay	Given	1	2002	Shay Given
P-04579	Gaël	Givet	1	2006	Gaël Givet
P-01319	Piotr	Giza	1	2006	Piotr Giza
P-06815	Rubén	Glaria	1	1974	Rubén Glaria
P-03921	Jesús	Glaría	1	1966	Jesús Glaría
P-09129	Gerald	Glatzmayer	1	1990	Gerald Glatzmayer
P-05024	Cornell	Glen	1	2006	Cornell Glen
P-09864	Kamil	Glik	1	2018	Kamil Glik
P-08175	Léon	Glovacki	1	1954	Léon Glovacki
P-05364	Arkadiusz	Głowacki	1	2002	Arkadiusz Głowacki
P-01224	Denis	Glushakov	1	2014	Denis Glushakov
P-03633	Panagiotis	Glykos	1	2014	Panagiotis Glykos
P-07697	Gérard	Gnanhouan	1	2006	Gérard Gnanhouan
P-01446	Yo-han	Go	1	2018	Yo-han Go
P-02984	Louis	Gobet	1	1934	Louis Gobet
P-05457	Diego	Godín	3	2010, 2014, 2018	Diego Godín
P-05051	Adán	Godoy	2	1962, 1966	Adán Godoy
P-05096	Aníbal	Godoy	1	2018	Aníbal Godoy
P-05019	Benedicto	Godoy Véizaga	1	1950	Benedicto Godoy Véizaga
P-04375	Steve	Gohouri	1	2010	Steve Gohouri
P-00057	Andoni	Goikoetxea	1	1986	Andoni Goikoetxea
P-02351	Andoni	Goikoetxea	1	1994	Andoni Goikoetxea
P-07738	Bjarne	Goldbæk	1	1998	Bjarne Goldbæk
P-03231	Ludwig	Goldbrunner	1	1938	Ludwig Goldbrunner
P-01408	Yahya	Golmohammadi	1	2006	Yahya Golmohammadi
P-09666	Aleksandr	Golovin	1	2018	Aleksandr Golovin
P-02630	Fernando	Gomes	1	1986	Fernando Gomes
P-01754	Heurelho	Gomes	1	2010	Heurelho Gomes
P-07384	Nuno	Gomes	2	2002, 2006	Nuno Gomes
P-02012	Ricardo	Gomes	1	1990	Ricardo Gomes
P-03021	Herculez	Gomez	1	2010	Herculez Gomez
P-02104	Alberto	Gómez	1	1970	Alberto Gómez
P-06080	Carlos	Gómez	1	1978	Carlos Gómez
P-04781	Derlis	Gómez	1	2006	Derlis Gómez
P-02639	Gabriel	Gómez	2	1990, 1994	Gabriel Gómez
P-00723	Gabriel	Gómez	1	2018	Gabriel Gómez
P-08191	Gildardo	Gómez	1	1990	Gildardo Gómez
P-01021	Gregorio	Gómez	1	1950	Gregorio Gómez
P-00118	Gumercindo	Gómez	1	1930	Gumercindo Gómez
P-07492	Jaime	Gómez	2	1958, 1962	Jaime Gómez
P-04517	José	Gómez	1	1974	José Gómez
P-04223	Juan	Gómez	1	1954	Juan Gómez
P-01579	Luis	Gómez	1	2002	Luis Gómez
P-00428	Mario	Gómez	2	2010, 2018	Mario Gómez
P-06725	Maxi	Gómez	1	2018	Maxi Gómez
P-03178	Róger	Gómez	1	1990	Róger Gómez
P-06595	Rónald	Gómez	2	2002, 2006	Rónald Gómez
P-05684	Alfred	Gomis	1	2018	Alfred Gomis
P-00071	Frans	Gommers	1	1938	Frans Gommers
P-03162	Néstor	Gonçalves	2	1962, 1966	Néstor Gonçalves
P-05236		Gonçalves	1	1998	 Gonçalves
P-05853	Shūichi	Gonda	1	2014	Shūichi Gonda
P-09612	Philippe	Gondet	1	1966	Philippe Gondet
P-09089	Jorge	Góngora	1	1930	Jorge Góngora
P-03512	Billy	Gonsalves	2	1930, 1934	Billy Gonsalves
P-04689	Joseph	Gonzales	1	1934	Joseph Gonzales
P-09297	Omar	Gonzalez	1	2014	Omar Gonzalez
P-02471	Alberto	González	2	1962, 1966	Alberto González
P-06842	Alberto	González	1	1950	Alberto González
P-02290	Álvaro	González	1	2014	Álvaro González
P-03333	Armando	González	1	1950	Armando González
P-08958	Aurelio	González	1	1930	Aurelio González
P-01550	Carlos	González	1	1958	Carlos González
P-06404	Edgardo	González	1	1962	Edgardo González
P-07960	Giancarlo	González	2	2014, 2018	Giancarlo González
P-09051	Héctor	González	1	1962	Héctor González
P-01804	Ignacio	González	1	2010	Ignacio González
P-03252	Jaime	González	1	1962	Jaime González
P-02141	Javier	González	1	1970	Javier González
P-05685	Jorge	González	1	1982	Jorge González
P-05652	José	González	1	1982	José González
P-00763	José Luis	González	2	1966, 1970	José Luis González
P-04821	Juan Carlos	González	1	1950	Juan Carlos González
P-09427	Kily	González	1	2002	Kily González
P-06655	Leonardo	González	1	2006	Leonardo González
P-09230	Lucho	González	1	2006	Lucho González
P-00206	Mario	González	1	1974	Mario González
P-00224	Mark	González	1	2010	Mark González
P-09645	Matías	González	1	1950	Matías González
P-02648	Pedro	González	1	1970	Pedro González
P-06657	Rafael	González	1	1974	Rafael González
P-08872	Rubén	González	1	1962	Rubén González
P-09278	Rónald	González Brenes	1	1990	Rónald González Brenes
P-05898	Josep	Gonzalvo	1	1950	Josep Gonzalvo
P-08928	Marià	Gonzalvo	1	1950	Marià Gonzalvo
P-09868	Ian	Goodison	1	1998	Ian Goodison
P-07338	Clarence	Goodson	1	2010	Clarence Goodson
P-04576	Bart	Goor	1	2002	Bart Goor
P-01300	Simon	Gopane	1	1998	Simon Gopane
P-08861	Wilhelm	Góra	1	1938	Wilhelm Góra
P-07477	Jacek	Góralski	1	2018	Jacek Góralski
P-03893	Andy	Goram	2	1986, 1990	Andy Goram
P-05472	Rumyancho	Goranov	1	1974	Rumyancho Goranov
P-00437	Rafael	Gordillo	2	1982, 1986	Rafael Gordillo
P-05198	Leon	Goretzka	1	2018	Leon Goretzka
P-06247	Basil	Gorgis	1	1986	Basil Gorgis
P-02273	Jerzy	Gorgoń	2	1974, 1978	Jerzy Gorgoń
P-06744	Sergio	Gori	1	1970	Sergio Gori
P-08435	Sergei	Gorlukovich	2	1990, 1994	Sergei Gorlukovich
P-05436	Gheorghe	Gornea	1	1970	Gheorghe Gornea
P-03513	János	Göröcs	1	1962	János Göröcs
P-06293	Guillermo	Gorostiza	1	1934	Guillermo Gorostiza
P-01644	Raúl	Gorriti	1	1978	Raúl Gorriti
P-03446	Alberto	Górriz	1	1990	Alberto Górriz
P-07364	Zhivko	Gospodinov	1	1986	Zhivko Gospodinov
P-09782	Jean-Jacques	Gosso	1	2010	Jean-Jacques Gosso
P-09869	Vittore	Gottardi	1	1966	Vittore Gottardi
P-02208	Mario	Götze	1	2014	Mario Götze
P-02151	Richard	Gough	2	1986, 1990	Richard Gough
P-01707	Jonathan	Gould	1	1998	Jonathan Gould
P-07146	Yoann	Gourcuff	1	2010	Yoann Gourcuff
P-04808	Dejan	Govedarica	1	1998	Dejan Govedarica
P-05066	Sidney	Govou	2	2006, 2010	Sidney Govou
P-09998	Sergio	Goycochea	2	1990, 1994	Sergio Goycochea
P-01702	Jesus	Goyzueta	1	1970	Jesus Goyzueta
P-08599	Jan	Graafland	1	1934	Jan Graafland
P-05887	Jürgen	Grabowski	3	1966, 1970, 1974	Jürgen Grabowski
P-01009	Jaime	Graça	1	1966	Jaime Graça
P-02576	Sígfrid	Gràcia	1	1962	Sígfrid Gràcia
P-03973	Max	Gradel	1	2014	Max Gradel
P-02583		Grafite	1	2010	 Grafite
P-01759	Len	Graham	1	1958	Len Graham
P-07059	Karl-Erik	Grahn	1	1938	Karl-Erik Grahn
P-00726	Ove	Grahn	2	1970, 1974	Ove Grahn
P-01873	Rudolf	Gramlich	1	1934	Rudolf Gramlich
P-08698	Óscar	Granados	1	2014	Óscar Granados
P-04253	Vladimir	Granat	2	2014, 2018	Vladimir Granat
P-04618	Erik	Granath	1	1934	Erik Granath
P-04441	Andreas	Granqvist	1	2018	Andreas Granqvist
P-01974	Marco	Grassi	1	1994	Marco Grassi
P-04257	Tullio	Grassi	1	1938	Tullio Grassi
P-08659	Guido	Gratton	1	1954	Guido Gratton
P-08237	Thomas	Gravesen	1	2002	Thomas Gravesen
P-00599	Cyd	Gray	1	2006	Cyd Gray
P-06266	Frank	Gray	1	1982	Frank Gray
P-00537	Gerry	Gray	1	1986	Gerry Gray
P-01606	Francesco	Graziani	2	1978, 1982	Francesco Graziani
P-00423	Jimmy	Greaves	2	1962, 1966	Jimmy Greaves
P-04288	Antonio	Greco	1	1950	Antonio Greco
P-06110	Julian	Green	1	2014	Julian Green
P-04583	Ken	Green	1	1954	Ken Green
P-08008	Robert	Green	1	2010	Robert Green
P-08856	Harry	Gregg	1	1958	Harry Gregg
P-02685	Vince	Grella	2	2006, 2010	Vince Grella
P-01255	Gunnar	Gren	1	1958	Gunnar Gren
P-00181	Mats	Gren	1	1990	Mats Gren
P-05105	Stéphane	Grichting	2	2006, 2010	Stéphane Grichting
P-06140	Antoine	Griezmann	2	2014, 2018	Antoine Griezmann
P-05361	Stanislav	Griga	1	1990	Stanislav Griga
P-02165	Bozhidar	Grigorov	2	1970, 1974	Bozhidar Grigorov
P-05622	Laurent	Grimmonprez	1	1934	Laurent Grimmonprez
P-05580	Jacques	Grimonpon	1	1954	Jacques Grimonpon
P-00172	Roland	Grip	2	1970, 1974	Roland Grip
P-08026	Ángel	Grippa	1	1934	Ángel Grippa
P-03454	André	Grobéty	2	1962, 1966	André Grobéty
P-03203	Frode	Grodås	2	1994, 1998	Frode Grodås
P-04420	Jesper	Grønkjær	2	2002, 2010	Jesper Grønkjær
P-09913	Kamil	Grosicki	1	2018	Kamil Grosicki
P-07898	Gyula	Grosics	3	1954, 1958, 1962	Gyula Grosics
P-09212	Kevin	Großkreutz	1	2014	Kevin Großkreutz
P-08133	Fabio	Grosso	1	2006	Fabio Grosso
P-05635	Carlos	Gruezo	1	2014	Carlos Gruezo
P-01798	Marko	Grujić	1	2018	Marko Grujić
P-04248	Georges	Grün	3	1986, 1990, 1994	Georges Grün
P-00474	Zdeněk	Grygera	1	2006	Zdeněk Grygera
P-07641	Sang-bum	Gu	2	1990, 1994	Sang-bum Gu
P-03552	Jorge	Guagua	2	2006, 2014	Jorge Guagua
P-04599	Enrique	Guaita	1	1934	Enrique Guaita
P-05170	Andrés	Guardado	4	2006, 2010, 2014, 2018	Andrés Guardado
P-01265	Josep	Guardiola	1	1994	Josep Guardiola
P-00708	Fredy	Guarín	1	2014	Fredy Guarín
P-09614	Anfilogino	Guarisi	1	1934	Anfilogino Guarisi
P-02563	Aristide	Guarneri	1	1966	Aristide Guarneri
P-04408	Jorge	Guasch	1	1986	Jorge Guasch
P-04224	Ivan	Gudelj	1	1982	Ivan Gudelj
P-08021	Albert	Guðmundsson	1	2018	Albert Guðmundsson
P-05560	Jóhann Berg	Guðmundsson	1	2018	Jóhann Berg Guðmundsson
P-07792	Gonçalo	Guedes	1	2018	Gonçalo Guedes
P-09557	Adlène	Guedioura	1	2010	Adlène Guedioura
P-05415	Haykel	Guemamdia	1	2006	Haykel Guemamdia
P-05526	Mahmoud	Guendouz	2	1982, 1986	Mahmoud Guendouz
P-01561	Juan	Guerra	1	1950	Juan Guerra
P-02185	Raphaël	Guerreiro	1	2018	Raphaël Guerreiro
P-09496	Julen	Guerrero	2	1994, 1998	Julen Guerrero
P-00656	Miguel	Guerrero	1	1990	Miguel Guerrero
P-04404	Paolo	Guerrero	1	2018	Paolo Guerrero
P-09530	Raúl	Guerrón	1	2002	Raúl Guerrón
P-08020	Amado	Guevara	1	2010	Amado Guevara
P-08011	Carlos	Guevara	1	1950	Carlos Guevara
P-06560	Luis	Guevara Mora	1	1982	Luis Guevara Mora
P-04885	Idrissa	Gueye	1	2018	Idrissa Gueye
P-08675	John	Guidetti	1	2018	John Guidetti
P-00510	Gianni	Guigou	1	2002	Gianni Guigou
P-02327	Jean-Marc	Guillou	1	1978	Jean-Marc Guillou
P-03903	Alexandre	Guimarães	1	1990	Alexandre Guimarães
P-08891	Albert	Guinchard	2	1934, 1938	Albert Guinchard
P-07098	Celso	Güity	1	1982	Celso Güity
P-09786	Stéphane	Guivarc'h	1	1998	Stéphane Guivarc'h
P-08730	Sándor	Gujdár	1	1978	Sándor Gujdár
P-01963	Ruud	Gullit	1	1990	Ruud Gullit
P-01419	Géza	Gulyás	1	1954	Géza Gulyás
P-03325	Nedim	Günar	1	1954	Nedim Günar
P-08030	İlkay	Gündoğan	1	2018	İlkay Gündoğan
P-00343	Bryan	Gunn	1	1990	Bryan Gunn
P-00032	Aron	Gunnarsson	1	2018	Aron Gunnarsson
P-07510	Gennadi	Gusarov	2	1958, 1962	Gennadi Gusarov
P-04410	Luiz	Gustavo	1	2014	Luiz Gustavo
P-06211	Bengt	Gustavsson	1	1958	Bengt Gustavsson
P-03182	Ragnar	Gustavsson	1	1934	Ragnar Gustavsson
P-04978	Zbigniew	Gut	1	1974	Zbigniew Gut
P-05087	Benigno	Gutiérrez	1	1950	Benigno Gutiérrez
P-07308	Crescencio	Gutiérrez	1	1958	Crescencio Gutiérrez
P-00847	Eduardo	Gutiérrez	1	1950	Eduardo Gutiérrez
P-02918	Efraín	Gutiérrez	1	1982	Efraín Gutiérrez
P-00680	Érick	Gutiérrez	1	2018	Érick Gutiérrez
P-02662	Felipe	Gutiérrez	1	2014	Felipe Gutiérrez
P-06802	Jonás	Gutiérrez	1	2010	Jonás Gutiérrez
P-07600	Kenner	Gutiérrez	1	2018	Kenner Gutiérrez
P-03448	Manuel	Gutiérrez	1	1950	Manuel Gutiérrez
P-01033	Miguel	Gutiérrez	1	1958	Miguel Gutiérrez
P-02335	Miguel	Gutiérrez	1	1982	Miguel Gutiérrez
P-08229	Nelson	Gutiérrez	2	1986, 1990	Nelson Gutiérrez
P-03723	Raúl	Gutiérrez	1	1994	Raúl Gutiérrez
P-04355	Teófilo	Gutiérrez	1	2014	Teófilo Gutiérrez
P-03598	Brad	Guzan	2	2010, 2014	Brad Guzan
P-09587	Antonio	Guzmán	1	1978	Antonio Guzmán
P-03355	David	Guzmán	1	2018	David Guzmán
P-01353	Javier	Guzmán	1	1970	Javier Guzmán
P-00864	Nahuel	Guzmán	1	2018	Nahuel Guzmán
P-07680	Asamoah	Gyan	3	2006, 2010, 2014	Asamoah Gyan
P-04034	Daniel	Gygax	1	2006	Daniel Gygax
P-00228	Rudolf	Gyger	1	1950	Rudolf Gyger
P-07296	Dae-sung	Ha	1	2014	Dae-sung Ha
P-02764	Jung-won	Ha	1	1966	Jung-won Ha
P-00989	Seok-ju	Ha	2	1994, 1998	Seok-ju Ha
P-09366	Arie	Haan	2	1974, 1978	Arie Haan
P-07525	Mario	Haas	1	1998	Mario Haas
P-00024	El Arbi Hababi	Hababi	1	1994	El Arbi Hababi Hababi
P-00241	Sven	Habermann	1	1986	Sven Habermann
P-01865	Bolesław	Habowski	1	1938	Bolesław Habowski
P-00743	József	Háda	2	1934, 1938	József Háda
P-02819	Abdeljalil	Hadda	1	1998	Abdeljalil Hadda
P-06636	Oussama	Haddadi	1	2018	Oussama Haddadi
P-00438	Ghasem	Haddadifar	1	2014	Ghasem Haddadifar
P-07603	Harry	Haddock	1	1958	Harry Haddock
P-02981	Mustapha	Hadji	2	1994, 1998	Mustapha Hadji
P-07776	Enver	Hadžiabdić	1	1974	Enver Hadžiabdić
P-01375	Faruk	Hadžibegić	1	1990	Faruk Hadžibegić
P-01103	Anel	Hadžić	1	2014	Anel Hadžić
P-01168	Vladimír	Hagara	1	1970	Vladimír Hagara
P-00665	Göran	Hagberg	2	1974, 1978	Göran Hagberg
P-05653	Karim	Haggui	1	2006	Karim Haggui
P-05232	Alireza	Haghighi	1	2014	Alireza Haghighi
P-07980	Reza	Haghighi	1	2014	Reza Haghighi
P-09707	Gheorghe	Hagi	3	1990, 1994, 1998	Gheorghe Hagi
P-01835	Max	Hagmayr	1	1982	Max Hagmayr
P-06037	Marcus	Hahnemann	2	2006, 2010	Marcus Hahnemann
P-04109	Wilhelm	Hahnemann	1	1938	Wilhelm Hahnemann
P-09107	Izet	Hajrović	1	2014	Izet Hajrović
P-02201	Ehsan	Hajsafi	2	2014, 2018	Ehsan Hajsafi
P-08279	Gyula	Hajszán	1	1986	Gyula Hajszán
P-00353	Tomasz	Hajto	1	2002	Tomasz Hajto
P-06369	Olle	Håkansson	1	1958	Olle Håkansson
P-03897	Achraf	Hakimi	1	2018	Achraf Hakimi
P-00512	Alf-Inge	Håland	1	1994	Alf-Inge Håland
P-07652	István	Halász	1	1978	István Halász
P-08385	Vahid	Halilhodžić	1	1982	Vahid Halilhodžić
P-04964	Ahmed	Halim Ibrahim	1	1934	Ahmed Halim Ibrahim
P-07950	Paul	Halla	2	1954, 1958	Paul Halla
P-02603	Hannes Þór	Halldórsson	1	2018	Hannes Þór Halldórsson
P-06262	Gunnar	Halle	2	1994, 1998	Gunnar Halle
P-01468	Leo	Halle	1	1934	Leo Halle
P-08039	Helmut	Haller	3	1962, 1966, 1970	Helmut Haller
P-02985	Emil	Hallfreðsson	1	2018	Emil Hallfreðsson
P-03640	Rafik	Halliche	2	2010, 2014	Rafik Halliche
P-01036	Ben	Halloran	1	2014	Ben Halloran
P-06133	Heung-chul	Ham	1	1954	Heung-chul Ham
P-05607	Dietmar	Hamann	2	1998, 2002	Dietmar Hamann
P-02270	Erich	Hamann	1	1974	Erich Hamann
P-03955	Mahmoud	Hamdy	1	2018	Mahmoud Hamdy
P-09802	Tarek	Hamed	1	2018	Tarek Hamed
P-00488	Sattar	Hamedani	1	1998	Sattar Hamedani
P-07711	Rahim	Hameed	1	1986	Rahim Hameed
P-01675	Yechiel	Hameiri	1	1970	Yechiel Hameiri
P-09436	Josef	Hamerl	1	1958	Josef Hamerl
P-02778	Souleymanou	Hamidou	1	2010	Souleymanou Hamidou
P-09110		Hamidu	1	1934	 Hamidu
P-03493	Tommy	Hamill	1	1958	Tommy Hamill
P-07495	Billy	Hamilton	2	1982, 1986	Billy Hamilton
P-06594	George	Hamilton	1	1954	George Hamilton
P-01272	Raad	Hammoudi	1	1986	Raad Hammoudi
P-06276	Kurt	Hamrin	1	1958	Kurt Hamrin
P-08450	Marek	Hamšík	1	2010	Marek Hamšík
P-09008	Bong-zin	Han	1	1966	Bong-zin Han
P-05680	Chang-wha	Han	1	1954	Chang-wha Han
P-04749	Kook-young	Han	1	2014	Kook-young Han
P-00402	Gerhard	Hanappi	2	1954, 1958	Gerhard Hanappi
P-01427	Jasmin	Handanović	1	2010	Jasmin Handanović
P-05821	Samir	Handanović	1	2010	Samir Handanović
P-04798	Mike	Hanke	1	2006	Mike Hanke
P-00673	Wilfried	Hannes	1	1982	Wilfried Hannes
P-06465	Péter	Hannich	1	1986	Péter Hannich
P-01771	Alan	Hansen	1	1982	Alan Hansen
P-09967	Sigurd	Hansen	1	1938	Sigurd Hansen
P-00622	Knut	Hansson	1	1938	Knut Hansson
P-07746	Petter	Hansson	1	2006	Petter Hansson
P-00961	Minas	Hantzidis	1	1994	Minas Hantzidis
P-07692	Haidong	Hao	1	2002	Haidong Hao
P-02616	Ernst	Happel	2	1954, 1958	Ernst Happel
P-04949	Günther	Happich	1	1978	Günther Happich
P-03878	Genki	Haraguchi	1	2018	Genki Haraguchi
P-03151	Ingemar	Haraldsson	1	1958	Ingemar Haraldsson
P-09626	Dave	Harding	1	1974	Dave Harding
P-08119	Owen	Hargreaves	2	2002, 2006	Owen Hargreaves
P-09599	Sigmund	Haringer	1	1934	Sigmund Haringer
P-01116	Amine	Harit	1	2018	Amine Harit
P-05349	Al	Harker	1	1934	Al Harker
P-00125	John	Harkes	2	1990, 1994	John Harkes
P-03913	Rachid	Harkouk	1	1986	Rachid Harkouk
P-01674	Joe	Harper	1	1978	Joe Harper
P-03628	Joe	Hart	2	2010, 2014	Joe Hart
P-04670	Ian	Harte	1	2002	Ian Harte
P-04739	Asa	Hartford	2	1978, 1982	Asa Hartford
P-03196	Jan	Harting	1	1938	Jan Harting
P-00190	Lukman	Haruna	1	2010	Lukman Haruna
P-01543	David	Harvey	1	1974	David Harvey
P-08170	Makoto	Hasebe	3	2010, 2014, 2018	Makoto Hasebe
P-00477	Ivan	Hašek	1	1990	Ivan Hašek
P-07285	Vahid	Hashemian	1	2006	Vahid Hashemian
P-08564	Natiq	Hashim	1	1986	Natiq Hashim
P-03338	Mokhtar	Hasni	1	1978	Mokhtar Hasni
P-09688	Abdulqadir	Hassan	1	1990	Abdulqadir Hassan
P-02262	Hossam	Hassan	1	1990	Hossam Hassan
P-04802	Ibrahim	Hassan	1	1990	Ibrahim Hassan
P-09433	Mohammed	Hassan	1	1934	Mohammed Hassan
P-08717	Jimmy Floyd	Hasselbaink	1	1998	Jimmy Floyd Hasselbaink
P-06697	Mouez	Hassen	1	2018	Mouez Hassen
P-08408	Thomas	Häßler	3	1990, 1994, 1998	Thomas Häßler
P-01443	Josef	Hassmann	1	1934	Josef Hassmann
P-00288	Mark	Hateley	1	1986	Mark Hateley
P-08863	Roland	Hattenberger	2	1978, 1982	Roland Hattenberger
P-03007	Toshihiro	Hattori	2	1998, 2002	Toshihiro Hattori
P-04229	Walter	Haummer	1	1954	Walter Haummer
P-06762	Gérard	Hausser	1	1966	Gérard Hausser
P-09798	Tayfur	Havutçu	1	2002	Tayfur Havutçu
P-03566	Motaz	Hawsawi	1	2018	Motaz Hawsawi
P-00504	Omar	Hawsawi	1	2018	Omar Hawsawi
P-08453	Osama	Hawsawi	1	2018	Osama Hawsawi
P-03114	David	Hay	1	1974	David Hay
P-06181	Johnny	Haynes	3	1954, 1958, 1962	Johnny Haynes
P-04214	Eden	Hazard	2	2014, 2018	Eden Hazard
P-04784	Thorgan	Hazard	1	2018	Thorgan Hazard
P-09132	Mohammed	Hazzaz	1	1970	Mohammed Hazzaz
P-04524	Felix	Healy	1	1982	Felix Healy
P-09438	Jonas	Hector	1	2018	Jonas Hector
P-08889	Magnus	Hedman	2	1994, 2002	Magnus Hedman
P-04035	Ahmed	Hegazi	1	2018	Ahmed Hegazi
P-07949	Vegard	Heggem	1	1998	Vegard Heggem
P-03488	Matthias	Heidemann	1	1934	Matthias Heidemann
P-04250	Jörg	Heinrich	1	1998	Jörg Heinrich
P-00170	Jan	Heintze	2	1998, 2002	Jan Heintze
P-01303	Marek	Heinz	1	2006	Marek Heinz
P-06528	Gabriel	Heinze	2	2006, 2010	Gabriel Heinze
P-01176	Oscar	Heisserer	1	1938	Oscar Heisserer
P-01531	John	Heitinga	2	2006, 2010	John Heitinga
P-09813	Nasser	Hejazi	1	1978	Nasser Hejazi
P-09814	Frankie	Hejduk	2	1998, 2002	Frankie Hejduk
P-07072	Filip	Helander	1	2018	Filip Helander
P-00407	Sigfried	Held	2	1966, 1970	Sigfried Held
P-05208	Iván	Helguera	1	2002	Iván Helguera
P-07499	August	Hellemans	2	1930, 1934	August Hellemans
P-02953	Ronnie	Hellström	3	1970, 1974, 1978	Ronnie Hellström
P-00142	Thomas	Helmer	2	1994, 1998	Thomas Helmer
P-03299	Thomas	Helveg	2	1998, 2002	Thomas Helveg
P-00462	Otto	Hemele	1	1954	Otto Hemele
P-07025	Chris	Henderson	1	1990	Chris Henderson
P-05572	Jackie	Henderson	1	1954	Jackie Henderson
P-05632	Jordan	Henderson	2	2014, 2018	Jordan Henderson
P-02364	Colin	Hendry	1	1998	Colin Hendry
P-00858	Kristian	Henriksen	1	1938	Kristian Henriksen
P-09922	René	Henriksen	2	1998, 2002	René Henriksen
P-01177		Henrique	1	2014	 Henrique
P-03729	Paulo	Henrique	1	1966	Paulo Henrique
P-05153	Paul	Henry	1	1938	Paul Henry
P-06999	Thierry	Henry	4	1998, 2002, 2006, 2010	Thierry Henry
P-07227	Andreas	Heraf	1	1998	Andreas Heraf
P-07066	Ricki	Herbert	1	1982	Ricki Herbert
P-03983	Yves	Herbet	1	1966	Yves Herbet
P-09758	Robert	Herbin	1	1966	Robert Herbin
P-02880		Hércules	1	1938	 Hércules
P-01122	Olaf	Heredia	1	1986	Olaf Heredia
P-08315	Ramón	Heredia	1	1974	Ramón Heredia
P-05583	Albert	Heremans	1	1934	Albert Heremans
P-08657	Matthias	Herget	1	1986	Matthias Herget
P-08996	Fritz	Herkenrath	1	1958	Fritz Herkenrath
P-08196	Günter	Hermann	1	1990	Günter Hermann
P-04154		Hermógenes	1	1930	 Hermógenes
P-08815	Carlos	Hermosillo	2	1986, 1994	Carlos Hermosillo
P-09409	Lucas	Hernandez	1	2018	Lucas Hernandez
P-00074	Abel	Hernández	1	2014	Abel Hernández
P-08819	Alfredo	Hernández	2	1958, 1962	Alfredo Hernández
P-03144	Carlos	Hernández	1	2006	Carlos Hernández
P-09269	Eduardo	Hernández	1	1982	Eduardo Hernández
P-02691	Ever	Hernández	1	1982	Ever Hernández
P-03263	Francisco	Hernández	1	1950	Francisco Hernández
P-04709	Guillermo	Hernández	2	1966, 1970	Guillermo Hernández
P-07709	Héctor	Hernández	1	1962	Héctor Hernández
P-07004	Javier	Hernández	1	1986	Javier Hernández
P-07104	Javier	Hernández	3	2010, 2014, 2018	Javier Hernández
P-07147	Luis	Hernández	2	1998, 2002	Luis Hernández
P-00202	Patricio	Hernández	1	1982	Patricio Hernández
P-00282	Rosendo	Hernández	1	1950	Rosendo Hernández
P-03841	Rubén Darío	Hernández	1	1990	Rubén Darío Hernández
P-04773		Hernanes	1	2014	 Hernanes
P-09884	Frédéric	Herpoel	1	2002	Frédéric Herpoel
P-08240	Dominique	Herr	1	1994	Dominique Herr
P-07156	Héctor	Herrera	2	2014, 2018	Héctor Herrera
P-06847	Johnny	Herrera	1	2014	Johnny Herrera
P-07311	José Oscar	Herrera	1	1990	José Oscar Herrera
P-05574	Luis Fernando	Herrera	2	1990, 1994	Luis Fernando Herrera
P-07990	Günther	Herrmann	1	1962	Günther Herrmann
P-02291	Richard	Herrmann	1	1954	Richard Herrmann
P-09075	Jan	Hertl	2	1954, 1958	Jan Hertl
P-05545	Andi	Herzog	2	1990, 1998	Andi Herzog
P-08022	Dieter	Herzog	1	1974	Dieter Herzog
P-02832	Emile	Heskey	2	2002, 2010	Emile Heskey
P-06599	Ruud	Hesp	1	1998	Ruud Hesp
P-02390	John	Hewie	1	1958	John Hewie
P-00281	Ron	Hewitt	1	1958	Ron Hewitt
P-06895	Khosro	Heydari	1	2014	Khosro Heydari
P-00773	Georges	Heylens	1	1970	Georges Heylens
P-06270	Jupp	Heynckes	1	1974	Jupp Heynckes
P-04649	Josef	Hickersberger	1	1978	Josef Hickersberger
P-07237	Ramón	Hicks	1	1986	Ramón Hicks
P-09699	Nándor	Hidegkuti	2	1954, 1958	Nándor Hidegkuti
P-00897	Martin	Hiden	1	1998	Martin Hiden
P-00585	Joop	Hiele	1	1990	Joop Hiele
P-02281	Holger	Hieronymus	1	1982	Holger Hieronymus
P-01968	Fernando	Hierro	4	1990, 1994, 1998, 2002	Fernando Hierro
P-00632	Masaaki	Higashiguchi	1	2018	Masaaki Higashiguchi
P-00300	Gonzalo	Higuaín	3	2010, 2014, 2018	Gonzalo Higuaín
P-00580	René	Higuita	1	1990	René Higuita
P-00078		Hilario	1	1934	 Hilario
P-01735		Hilário	1	1966	 Hilário
P-06982	Timo	Hildebrand	1	2006	Timo Hildebrand
P-06992	Oscar	Hiljemark	1	2018	Oscar Hiljemark
P-00851	John	Hill	1	1982	John Hill
P-03157	Reinhold	Hintermaier	1	1982	Reinhold Hintermaier
P-07585	Mário	Hipólito	1	2006	Mário Hipólito
P-07611	Takashi	Hirano	1	1998	Takashi Hirano
P-02929	Shaka	Hislop	1	2006	Shaka Hislop
P-00121	Gerry	Hitchens	1	1962	Gerry Hitchens
P-04101	Thomas	Hitzlsperger	1	2006	Thomas Hitzlsperger
P-02267	Julius	Hjulian	1	1934	Julius Hjulian
P-01826	Ladislav	Hlaváček	1	1954	Ladislav Hlaváček
P-08523	Jiří	Hledík	1	1954	Jiří Hledík
P-04776	Salahdine	Hmied	1	1986	Salahdine Hmied
P-08389	Kazimir	Hnatow	1	1958	Kazimir Hnatow
P-06551	Erwin	Hochsträsser	1	1934	Erwin Hochsträsser
P-01104	Glenn	Hoddle	2	1982, 1986	Glenn Hoddle
P-00827	Roberto	Hodge	1	1966	Roberto Hodge
P-06975	Steve	Hodge	2	1986, 1990	Steve Hodge
P-05618	Alan	Hodgkinson	2	1958, 1962	Alan Hodgkinson
P-09746	Dieter	Hoeneß	1	1986	Dieter Hoeneß
P-09543	Uli	Hoeneß	1	1974	Uli Hoeneß
P-08802	Martin	Hoffmann	1	1974	Martin Hoffmann
P-02509	Rudi	Hoffmann	1	1958	Rudi Hoffmann
P-08884	Sylvio	Hoffmann	1	1934	Sylvio Hoffmann
P-05639	Leopold	Hofmann	1	1934	Leopold Hofmann
P-09330	Erik	Hoftun	1	1998	Erik Hoftun
P-00879	Frans	Hogenbirk	1	1938	Frans Hogenbirk
P-05760	Jes	Høgh	1	1998	Jes Høgh
P-08743	Lars	Høgh	1	1986	Lars Høgh
P-07520	Juan	Hohberg	1	1954	Juan Hohberg
P-04731	Karl	Hohmann	1	1934	Karl Hohmann
P-02395	Stuart	Holden	1	2010	Stuart Holden
P-05863	José	Holebas	1	2014	José Holebas
P-01372	James	Holland	1	2014	James Holland
P-09369	Matt	Holland	1	2002	Matt Holland
P-04940	Brett	Holman	1	2010	Brett Holman
P-08785	Carl-Erik	Holmberg	1	1934	Carl-Erik Holmberg
P-07747	Rolf	Holmberg	1	1938	Rolf Holmberg
P-01601	Øivind	Holmsen	1	1938	Øivind Holmsen
P-08470	Filip	Hološko	1	2010	Filip Hološko
P-00127	Jim	Holton	1	1974	Jim Holton
P-03861	Bernd	Hölzenbein	2	1974, 1978	Bernd Hölzenbein
P-04468	Keisuke	Honda	3	2010, 2014, 2018	Keisuke Honda
P-05257	Chul	Hong	1	2018	Chul Hong
P-00349	Deok-young	Hong	1	1954	Deok-young Hong
P-09551	Jeong-ho	Hong	1	2014	Jeong-ho Hong
P-04298	Myung-bo	Hong	4	1990, 1994, 1998, 2002	Myung-bo Hong
P-09383	Yong-jo	Hong	1	2010	Yong-jo Hong
P-04163	Harry	Hooper	1	1954	Harry Hooper
P-08202	Mel	Hopkins	1	1958	Mel Hopkins
P-09829	Eddie	Hopkinson	1	1958	Eddie Hopkinson
P-07253	Walter	Horak	1	1958	Walter Horak
P-04042	Václav	Horák	1	1938	Václav Horák
P-08912	Heinz	Hornig	1	1966	Heinz Hornig
P-07696	Abdelkader	Horr	1	1982	Abdelkader Horr
P-03320	Alfred	Hörtnagl	1	1990	Alfred Hörtnagl
P-06792	Ivica	Horvat	2	1950, 1954	Ivica Horvat
P-08559	Johann	Horvath	1	1934	Johann Horvath
P-00749	Alexander	Horváth	1	1970	Alexander Horváth
P-09872	Robert	Hosp	1	1966	Robert Hosp
P-05890	Jalal	Hosseini	1	2014	Jalal Hosseini
P-06456	Majid	Hosseini	1	2018	Majid Hosseini
P-00371	Horst-Dieter	Höttges	3	1966, 1970, 1974	Horst-Dieter Höttges
P-02178	Marc	Hottiger	1	1994	Marc Hottiger
P-09900	Denis	Houf	1	1954	Denis Houf
P-08181	Ray	Houghton	2	1990, 1994	Ray Houghton
P-01388	René	Houseman	2	1974, 1978	René Houseman
P-01672	Hugo	Hovenkamp	1	1978	Hugo Hovenkamp
P-06097	Khoren	Hovhannisyan	1	1982	Khoren Hovhannisyan
P-05314	Václav	Hovorka	1	1958	Václav Hovorka
P-09012	Tim	Howard	3	2006, 2010, 2014	Tim Howard
P-02919	Don	Howe	2	1958, 1962	Don Howe
P-02304	Benedikt	Höwedes	1	2014	Benedikt Höwedes
P-02975	Nic	Hoydonckx	1	1930	Nic Hoydonckx
P-06967	Carlos	Hoyos	1	1990	Carlos Hoyos
P-07789	Ivan	Hrdlička	1	1970	Ivan Hrdlička
P-05952	Marian	Hristov	1	1998	Marian Hristov
P-04489	Vladimír	Hrivnák	1	1970	Vladimír Hrivnák
P-04287	Branislav	Hrnjiček	1	1930	Branislav Hrnjiček
P-00223	Miloš	Hrstić	1	1982	Miloš Hrstić
P-08438	Horst	Hrubesch	1	1982	Horst Hrubesch
P-02272	Zdeněk	Hruška	1	1982	Zdeněk Hruška
P-00283	Frans	Hu Kon	1	1938	Frans Hu Kon
P-02052	Petar	Hubchev	1	1994	Petar Hubchev
P-01274	Willy	Huber	2	1934, 1938	Willy Huber
P-01821	Norberto	Huezo	1	1982	Norberto Huezo
P-01035	Ernst	Hufschmid	1	1934	Ernst Hufschmid
P-01594	Adolphe	Hug	1	1950	Adolphe Hug
P-09389	Benjamin	Huggel	1	2010	Benjamin Huggel
P-01820	Emlyn	Hughes	1	1970	Emlyn Hughes
P-01720	Laurie	Hughes	1	1950	Laurie Hughes
P-07095	Philip	Hughes	1	1986	Philip Hughes
P-08792	Chris	Hughton	1	1990	Chris Hughton
P-05476	Josef	Hügi	1	1954	Josef Hügi
P-04395	Jung-moo	Huh	1	1986	Jung-moo Huh
P-03069		Hulk	1	2014	 Hulk
P-07434	Sture	Hult	1	1934	Sture Hult
P-07420		Humberto	1	1954	 Humberto
P-03386	Mats	Hummels	2	2014, 2018	Mats Hummels
P-01893	Roger	Hunt	2	1962, 1966	Roger Hunt
P-03271	Klaas-Jan	Huntelaar	2	2010, 2014	Klaas-Jan Huntelaar
P-00924	Norman	Hunter	2	1966, 1970	Norman Hunter
P-03234	Geoff	Hurst	2	1966, 1970	Geoff Hurst
P-08177	Iván	Hurtado	2	2002, 2006	Iván Hurtado
P-09308	Paolo	Hurtado	1	2018	Paolo Hurtado
P-03546	Claudio	Husaín	1	2002	Claudio Husaín
P-04086	Andriy	Husin	1	2006	Andriy Husin
P-00440	Yousuf	Hussain	1	1990	Yousuf Hussain
P-05116	Ali	Hussein Shihab	1	1986	Ali Hussein Shihab
P-00108	Oleh	Husyev	1	2006	Oleh Husyev
P-05156	Tommy	Hutchison	1	1974	Tommy Hutchison
P-04778	Robert	Huth	1	2006	Robert Huth
P-01460	Constant	Huysmans	1	1954	Constant Huysmans
P-08918	Hee-chan	Hwang	1	2018	Hee-chan Hwang
P-03474	Seok-ho	Hwang	1	2014	Seok-ho Hwang
P-03321	Sun-hong	Hwang	4	1990, 1994, 1998, 2002	Sun-hong Hwang
P-01217	Kwan	Hwangbo	1	1990	Kwan Hwangbo
P-01345	Viliam	Hýravý	1	1990	Viliam Hýravý
P-06413	Glenn	Hysén	1	1990	Glenn Hysén
P-01669	Young-min	Hyun	1	2002	Young-min Hyun
P-00810	Campanal	I	1	1934	Campanal I
P-06801	Vincenzo	Iaquinta	2	2006, 2010	Vincenzo Iaquinta
P-02622	Carlos	Ibáñez	1	1950	Carlos Ibáñez
P-04401	Pablo	Ibáñez	1	2006	Pablo Ibáñez
P-04485	Víctor	Ibarbo	1	2014	Víctor Ibarbo
P-07145	Oswaldo	Ibarra	1	2002	Oswaldo Ibarra
P-05709	Renato	Ibarra	1	2014	Renato Ibarra
P-02959	Vedad	Ibišević	1	2014	Vedad Ibišević
P-00502	Maad	Ibrahim	1	1986	Maad Ibrahim
P-00111	Zlatan	Ibrahimović	2	2002, 2006	Zlatan Ibrahimović
P-07734	Senijad	Ibričić	1	2014	Senijad Ibričić
P-05459	Daisuke	Ichikawa	1	2002	Daisuke Ichikawa
P-01817	Brown	Ideye	1	2010	Brown Ideye
P-08661	Brian	Idowu	1	2018	Brian Idowu
P-00979	Hamzah	Idris	1	1994	Hamzah Idris
P-09749	Mohammadou	Idrissou	1	2010	Mohammadou Idrissou
P-00435	Odion	Ighalo	1	2018	Odion Ighalo
P-02908	Sergei	Ignashevich	2	2014, 2018	Sergei Ignashevich
P-03617	Silvestre	Igoa	1	1950	Silvestre Igoa
P-05328	Arnoldo	Iguarán	1	1990	Arnoldo Iguarán
P-06586	Masami	Ihara	1	1998	Masami Ihara
P-02422	Kálmán	Ihász	2	1962, 1966	Kálmán Ihász
P-01391	Kelechi	Iheanacho	1	2018	Kelechi Iheanacho
P-08198	Pius	Ikedia	1	2002	Pius Ikedia
P-00644	Victor	Ikpeba	2	1994, 1998	Victor Ikpeba
P-01373	Arne	Ileby	1	1938	Arne Ileby
P-02679	Branko	Ilić	1	2010	Branko Ilić
P-02389	Saša	Ilić	1	2006	Saša Ilić
P-06071	Adrian	Ilie	1	1998	Adrian Ilie
P-04387	Hristo	Iliev	1	1962	Hristo Iliev
P-04371	Ilian	Iliev	1	1998	Ilian Iliev
P-04683	Nikolay	Iliev	1	1994	Nikolay Iliev
P-03105	István	Ilku	2	1958, 1962	István Ilku
P-02228	Bodo	Illgner	2	1990, 1994	Bodo Illgner
P-07114	Mwepu	Ilunga	1	1974	Mwepu Ilunga
P-05753	Anatoli	Ilyin	1	1958	Anatoli Ilyin
P-01709	Seung-hwi	Im	1	1966	Seung-hwi Im
P-00552	Stewart	Imlach	1	1958	Stewart Imlach
P-01638	Eike	Immel	2	1982, 1986	Eike Immel
P-00590	Ciro	Immobile	1	2014	Ciro Immobile
P-09527	Augusto	Inácio	1	1986	Augusto Inácio
P-03800	Junichi	Inamoto	3	2002, 2006, 2010	Junichi Inamoto
P-04221	Clayton	Ince	1	2006	Clayton Ince
P-09560	Paul	Ince	1	1998	Paul Ince
P-00174		Índio	1	1954	 Índio
P-00003	Raimundo	Infante	1	1950	Raimundo Infante
P-04932	Ricardo	Infante	1	1958	Ricardo Infante
P-05843	Sverrir Ingi	Ingason	1	2018	Sverrir Ingi Ingason
P-07926	Klas	Ingesson	2	1990, 1994	Klas Ingesson
P-02237	Andrés	Iniesta	4	2006, 2010, 2014, 2018	Andrés Iniesta
P-08109	Samuel	Inkoom	2	2010, 2014	Samuel Inkoom
P-03689	Gökhan	Inler	2	2010, 2014	Gökhan Inler
P-08412	Masahiko	Inoha	1	2014	Masahiko Inoha
P-07959	Eligio	Insfrán	1	1958	Eligio Insfrán
P-05011	Eliseo	Insfrán	1	1958	Eliseo Insfrán
P-09936	Lorenzo	Insigne	1	2014	Lorenzo Insigne
P-08843	Takashi	Inui	1	2018	Takashi Inui
P-09404	Filippo	Inzaghi	3	1998, 2002, 2006	Filippo Inzaghi
P-07416	Greg	Ion	1	1986	Greg Ion
P-04108	Aleksei	Ionov	1	2014	Aleksei Ionov
P-09171	Samuel	Ipoua	1	1998	Samuel Ipoua
P-07273	Roberto	Irañeta	1	1934	Roberto Irañeta
P-09183	José	Iraragorri	1	1934	José Iraragorri
P-05989	Santos	Iriarte	1	1930	Santos Iriarte
P-09040	José Ángel	Iribar	1	1966	José Ángel Iribar
P-05075	Harald	Irmscher	1	1974	Harald Irmscher
P-09738	Benedict	Iroha	2	1994, 1998	Benedict Iroha
P-07475	Gordan	Irović	1	1958	Gordan Irović
P-00412	Rolando	Irusta	1	1966	Rolando Irusta
P-03685	Jackson	Irvine	1	2018	Jackson Irvine
P-00035	Denis	Irwin	1	1994	Denis Irwin
P-06251	Bojan	Isailović	1	2010	Bojan Isailović
P-08608	Magnar	Isaksen	1	1938	Magnar Isaksen
P-09576	Andreas	Isaksson	2	2002, 2006	Andreas Isaksson
P-07168	Evaristo	Isasi	1	1986	Evaristo Isasi
P-06486		Isco	1	2018	 Isco
P-02231	Hendrik	Isemborghs	1	1938	Hendrik Isemborghs
P-03932	Paulo	Isidoro	1	1982	Paulo Isidoro
P-07683	Raúl	Isiordia	1	1978	Raúl Isiordia
P-09064	Bozhidar	Iskrenov	1	1986	Bozhidar Iskrenov
P-07626	Mauricio	Isla	2	2010, 2014	Mauricio Isla
P-03541	Luis	Islas	2	1986, 1994	Luis Islas
P-00430	Khalid	Ismaïl	1	1990	Khalid Ismaïl
P-01811	Rinus	Israël	1	1974	Rinus Israël
P-01429	Pierre	Issa	2	1998, 2002	Pierre Issa
P-06943		Itália	1	1930	 Itália
P-05714	Charles	Itandje	1	2014	Charles Itandje
P-02598	Teruyoshi	Ito	1	1998	Teruyoshi Ito
P-04215	Mark	Iuliano	1	2002	Mark Iuliano
P-00587	Marian	Ivan	1	1994	Marian Ivan
P-06928	Mihai	Ivăncescu	1	1970	Mihai Ivăncescu
P-06857	Aleksandr	Ivanov	1	1958	Aleksandr Ivanov
P-00819	Georgi	Ivanov	1	1998	Georgi Ivanov
P-07210	Ivan	Ivanov	1	1962	Ivan Ivanov
P-04762	Trifon	Ivanov	2	1994, 1998	Trifon Ivanov
P-03508	Valentin	Ivanov	2	1958, 1962	Valentin Ivanov
P-06901	Branislav	Ivanović	2	2010, 2018	Branislav Ivanović
P-05904	Kiril	Ivkov	1	1974	Kiril Ivkov
P-07824	Milutin	Ivković	1	1930	Milutin Ivković
P-04265	Tomislav	Ivković	1	1990	Tomislav Ivković
P-01075	Aleksandar	Ivoš	1	1962	Aleksandar Ivoš
P-05553	Daiki	Iwamasa	1	2010	Daiki Iwamasa
P-07810	Andrzej	Iwan	2	1978, 1982	Andrzej Iwan
P-00484	Alex	Iwobi	1	2018	Alex Iwobi
P-02298	Emilio	Izaguirre	2	2010, 2014	Emilio Izaguirre
P-04775	Marat	Izmailov	1	2002	Marat Izmailov
P-06022	José	Izquierdo	1	2018	José Izquierdo
P-02952	Muzzy	Izzet	1	2002	Muzzy Izzet
P-01233	Luis	Izzeta	1	1934	Luis Izzeta
P-09950	Sabri	Jaballah	1	1998	Sabri Jaballah
P-02608	Fernand	Jaccard	1	1934	Fernand Jaccard
P-01208	Kelvin	Jack	1	2006	Kelvin Jack
P-04777	Alfred	Jäck	1	1934	Alfred Jäck
P-02345	Darren	Jackson	1	1998	Darren Jackson
P-07429	Willem	Jackson	1	1998	Willem Jackson
P-02862	Lars	Jacobsen	1	2010	Lars Jacobsen
P-05054	Sven	Jacobsson	1	1938	Sven Jacobsson
P-06523	Willy	Jäggi	1	1934	Willy Jäggi
P-08222	Phil	Jagielka	1	2014	Phil Jagielka
P-04767	Alireza	Jahanbakhsh	2	2014, 2018	Alireza Jahanbakhsh
P-02108	Ghafour	Jahani	1	1978	Ghafour Jahani
P-09167	Radhi	Jaïdi	2	2002, 2006	Radhi Jaïdi
P-03732	José	Jaikel	1	1990	José Jaikel
P-06471		Jair	1	1950	 Jair
P-07877		Jairzinho	3	1966, 1970, 1974	 Jairzinho
P-06616	Hans	Jakob	2	1934, 1938	Hans Jakob
P-01146	Roman	Jakóbczak	1	1974	Roman Jakóbczak
P-09083	Ditmar	Jakobs	1	1986	Ditmar Jakobs
P-07119	Mini	Jakobsen	2	1994, 1998	Mini Jakobsen
P-00903	Andreas	Jakobsson	1	2002	Andreas Jakobsson
P-07940	Milovan	Jakšić	1	1930	Milovan Jakšić
P-01253	František	Jakubec	1	1982	František Jakubec
P-00317	Martin	Jakubko	1	2010	Martin Jakubko
P-09830	Kew	Jaliens	1	2006	Kew Jaliens
P-01228	Jan	Jałocha	1	1982	Jan Jałocha
P-02399		Jamba	1	2006	 Jamba
P-07228	David	James	3	2002, 2006, 2010	David James
P-00900	Paul	James	1	1986	Paul James
P-00575	Johnny	Jameson	1	1982	Johnny Jameson
P-05443	Ahmed	Jamil Madani	2	1994, 1998	Ahmed Jamil Madani
P-06708	Paweł	Janas	1	1982	Paweł Janas
P-04884	Carsten	Jancker	1	2002	Carsten Jancker
P-01088	Anton	Janda	1	1934	Anton Janda
P-01910	Petr	Janečka	1	1982	Petr Janečka
P-01519	Paul	Janes	2	1934, 1938	Paul Janes
P-05276	Dae-il	Jang	1	1998	Dae-il Jang
P-08905	Hyun-soo	Jang	1	2018	Hyun-soo Jang
P-03092	Hyung-seok	Jang	1	1998	Hyung-seok Jang
P-09609	Francesco	Janich	2	1962, 1966	Francesco Janich
P-04340	Marek	Jankulovski	1	2006	Marek Jankulovski
P-09783	Daryl	Janmaat	1	2014	Daryl Janmaat
P-08755	Marcell	Jansen	2	2006, 2010	Marcell Jansen
P-03221	Wim	Jansen	2	1974, 1978	Wim Jansen
P-04799	Frans	Janssens	1	1970	Frans Janssens
P-09700	Gunnar	Jansson	1	1934	Gunnar Jansson
P-01965	Pontus	Jansson	1	2018	Pontus Jansson
P-01979	Ulrik	Jansson	1	1990	Ulrik Jansson
P-00051	Adnan	Januzaj	2	2014, 2018	Adnan Januzaj
P-00638	Gérard	Janvion	2	1978, 1982	Gérard Janvion
P-09940	Claudio	Jara	1	1990	Claudio Jara
P-09125	Francisco	Jara	1	1966	Francisco Jara
P-05023	Geovanny	Jara	1	1990	Geovanny Jara
P-06825	Gonzalo	Jara	2	2010, 2014	Gonzalo Jara
P-07909	Kurt	Jara	2	1978, 1982	Kurt Jara
P-04119	Darío	Jara Saguier	1	1950	Darío Jara Saguier
P-00520	Sandy	Jardine	2	1974, 1978	Sandy Jardine
P-06106	Houmane	Jarir	1	1970	Houmane Jarir
P-08556	Robert	Jarni	3	1990, 1998, 2002	Robert Jarni
P-03311	David	Jarolím	1	2006	David Jarolím
P-01063	Lucien	Jasseron	1	1938	Lucien Jasseron
P-02253	Ahmad	Jassim	1	1986	Ahmad Jassim
P-09072	Antonio	Jasso	1	1962	Antonio Jasso
P-03663		Jaú	1	1938	 Jaú
P-09057	Baudilio	Jáuregui	1	1974	Baudilio Jáuregui
P-09793	Ignacio	Jáuregui	2	1962, 1966	Ignacio Jáuregui
P-09989	Ziad	Jaziri	2	2002, 2006	Ziad Jaziri
P-07989	Ernst	Jean-Joseph	1	1974	Ernst Jean-Joseph
P-03027	Amor	Jebali	1	1978	Amor Jebali
P-06334	Talal	Jebreen	1	1994	Talal Jebreen
P-01028	Léon	Jeck	1	1970	Léon Jeck
P-08920	Mile	Jedinak	3	2010, 2014, 2018	Mile Jedinak
P-04717	Artur	Jędrzejczyk	1	2018	Artur Jędrzejczyk
P-06704	Tin	Jedvaj	1	2018	Tin Jedvaj
P-07678		Jefferson	1	2014	 Jefferson
P-02334	Riadh	Jelassi	2	1998, 2002	Riadh Jelassi
P-09482	Nikica	Jelavić	1	2014	Nikica Jelavić
P-06484	Ireneusz	Jeleń	1	2006	Ireneusz Jeleń
P-01376	Josef	Jelínek	1	1962	Josef Jelínek
P-01667	David	Jemmali	1	2006	David Jemmali
P-04845	Jermaine	Jenas	1	2006	Jermaine Jenas
P-06177	Erik	Jendrišek	1	2010	Erik Jendrišek
P-04096	Pat	Jennings	2	1982, 1986	Pat Jennings
P-03960	Claus	Jensen	1	2002	Claus Jensen
P-03664	Daniel	Jensen	1	2010	Daniel Jensen
P-08332	Niclas	Jensen	1	2002	Niclas Jensen
P-09276	Gi-dong	Jeong	1	1990	Gi-dong Jeong
P-00166	Hasse	Jeppson	1	1950	Hasse Jeppson
P-09317	Jens	Jeremies	2	1998, 2002	Jens Jeremies
P-00009	Dražan	Jerković	2	1958, 1962	Dražan Jerković
P-04663	Jurica	Jerković	2	1974, 1982	Jurica Jerković
P-00390	Ive	Jerolimov	1	1982	Ive Jerolimov
P-09886	Gabriel	Jesus	1	2018	Gabriel Jesus
P-06127	Dragoslav	Jevrić	1	2006	Dragoslav Jevrić
P-02845	Bedford	Jezzard	1	1954	Bedford Jezzard
P-06362	Dong-won	Ji	1	2014	Dong-won Ji
P-07082	Yun-nam	Ji	1	2010	Yun-nam Ji
P-01859	Jin	Jiang	1	2002	Jin Jiang
P-07130	Fadel	Jilal	1	1986	Fadel Jilal
P-03600	Julio César	Jiménez	1	1974	Julio César Jiménez
P-04029	Manuel	Jiménez	1	1982	Manuel Jiménez
P-09937	Manuel	Jiménez	1	1990	Manuel Jiménez
P-06013	Raúl	Jiménez	2	2014, 2018	Raúl Jiménez
P-03317	Moises	Jinich	1	1954	Moises Jinich
P-00848	Martin	Jiránek	1	2006	Martin Jiránek
P-05487	Hyeon-woo	Jo	1	2018	Hyeon-woo Jo
P-04084	Shoji	Jo	1	1998	Shoji Jo
P-01247		Jô	1	2014	 Jô
P-00855	Constant	Joacim	1	1934	Constant Joacim
P-06522		Joaquín	1	1982	 Joaquín
P-01430		Joaquín	2	2002, 2006	 Joaquín
P-01464	Joseph-Désiré	Job	2	1998, 2002	Joseph-Désiré Job
P-06300		Joel	1	1930	 Joel
P-04089		Joel	1	1970	 Joel
P-08634	Rolf	Johannessen	1	1938	Rolf Johannessen
P-01730	Aron	Jóhannsson	1	2014	Aron Jóhannsson
P-09976	Henry	Johansen	1	1938	Henry Johansen
P-06415	Åke	Johansson	1	1958	Åke Johansson
P-05434	Gunnar	Johansson	1	1950	Gunnar Johansson
P-08272	Avery	John	1	2006	Avery John
P-01671	Stern	John	1	2006	Stern John
P-08220	Erland	Johnsen	1	1994	Erland Johnsen
P-07225	Ronny	Johnsen	1	1998	Ronny Johnsen
P-00038	Eddie	Johnson	1	2006	Eddie Johnson
P-01646	Fabian	Johnson	1	2014	Fabian Johnson
P-02585	Glen	Johnson	2	2010, 2014	Glen Johnson
P-00135	Carl	Johnsson	1	1934	Carl Johnsson
P-07861	Karl-Johan	Johnsson	1	2018	Karl-Johan Johnsson
P-06229	Mo	Johnston	1	1990	Mo Johnston
P-07943	Willie	Johnston	1	1978	Willie Johnston
P-05301	Bobby	Johnstone	1	1954	Bobby Johnstone
P-06422	Derek	Johnstone	1	1978	Derek Johnstone
P-09462	Jimmy	Johnstone	1	1974	Jimmy Johnstone
P-02653	Slaviša	Jokanović	1	1998	Slaviša Jokanović
P-01533	Bojan	Jokić	1	2010	Bojan Jokić
P-05542	Karol	Jokl	1	1970	Karol Jokl
P-06290	Sven	Jonasson	2	1934, 1938	Sven Jonasson
P-00117	Brad	Jones	1	2018	Brad Jones
P-04377	Cliff	Jones	1	1958	Cliff Jones
P-08857	Cobi	Jones	3	1994, 1998, 2002	Cobi Jones
P-05154	Jermaine	Jones	1	2014	Jermaine Jones
P-08042	Ken	Jones	1	1958	Ken Jones
P-02279	Kenwyne	Jones	1	2006	Kenwyne Jones
P-02035	Phil	Jones	2	2014, 2018	Phil Jones
P-05406	Il-gwan	Jong	1	2010	Il-gwan Jong
P-03357	Tae-se	Jong	1	2010	Tae-se Jong
P-05505	Jan	Jongbloed	2	1974, 1978	Jan Jongbloed
P-01867	Wim	Jonk	2	1994, 1998	Wim Jonk
P-01535	Robert	Jonquet	2	1954, 1958	Robert Jonquet
P-02368	Mattias	Jonson	2	2002, 2006	Mattias Jonson
P-08932	Egon	Jönsson	1	1950	Egon Jönsson
P-06155	Mariusz	Jop	1	2006	Mariusz Jop
P-03826	Auguste	Jordan	1	1938	Auguste Jordan
P-05720	Joe	Jordan	3	1974, 1978, 1982	Joe Jordan
P-01285	Rui	Jorge	1	2002	Rui Jorge
P-05052	Martin	Jørgensen	3	1998, 2002, 2010	Martin Jørgensen
P-05647	Mathias	Jørgensen	1	2018	Mathias Jørgensen
P-04044	Nicolai	Jørgensen	1	2018	Nicolai Jørgensen
P-07607		Jorginho	2	1990, 1994	 Jorginho
P-02433	Gérard	Joseph	1	1974	Gérard Joseph
P-06596	Moeneeb	Josephs	1	2010	Moeneeb Josephs
P-03280		Josimar	1	1986	 Josimar
P-00557		Josué	1	2010	 Josué
P-01618	Milan	Jovanović	1	2010	Milan Jovanović
P-02677	Miodrag	Jovanović	1	1950	Miodrag Jovanović
P-00372	Nikola	Jovanović	1	1982	Nikola Jovanović
P-09058	José Francisco	Jovel	1	1982	José Francisco Jovel
P-09605	Luka	Jović	1	2018	Luka Jović
P-00028	Davor	Jozić	1	1990	Davor Jozić
P-09712	Se-jong	Ju	1	2018	Se-jong Ju
P-04958		Juan	2	2006, 2010	 Juan
P-06860		Juanele	1	1994	 Juanele
P-03166		Juanfran	1	2002	 Juanfran
P-04651		Juanfran	1	2014	 Juanfran
P-08436		Juanito	2	1978, 1982	 Juanito
P-04267		Juanito	1	2006	 Juanito
P-00799	Efraín	Juárez	1	2010	Efraín Juárez
P-00481	Vladimir	Jugović	1	1998	Vladimir Jugović
P-05073	Gusztáv	Juhász	1	1934	Gusztáv Juhász
P-04549	Antonio	Juliano	3	1966, 1970, 1974	Antonio Juliano
P-09713		Julinho	1	1954	 Julinho
P-08968	Mahboub	Juma'a	1	1982	Mahboub Juma'a
P-00681	Ali Thani	Jumaa	1	1990	Ali Thani Jumaa
P-06000	José	Juncosa	1	1950	José Juncosa
P-01411	František	Junek	1	1934	František Junek
P-09959	Seung-hyun	Jung	1	2018	Seung-hyun Jung
P-06979	Sung-ryong	Jung	2	2010, 2014	Sung-ryong Jung
P-04637	Woo-young	Jung	1	2018	Woo-young Jung
P-00341		Juninho	1	1982	 Juninho
P-01964		Júnior	2	1982, 1986	 Júnior
P-01564		Júnior	1	2002	 Júnior
P-08231	Roque	Júnior	1	2002	Roque Júnior
P-00422		Jurandir	1	1962	 Jurandir
P-01926	Krunoslav	Jurčić	1	1998	Krunoslav Jurčić
P-03595	Tomi	Juric	1	2018	Tomi Juric
P-09157	Goran	Jurić	1	1998	Goran Jurić
P-05030	Josef	Jurkanin	1	1970	Josef Jurkanin
P-01020	Ladislav	Jurkemik	1	1982	Ladislav Jurkemik
P-06193	Matthew	Jurman	1	2018	Matthew Jurman
P-08683	Gernot	Jurtin	1	1982	Gernot Jurtin
P-09245	Erich	Juskowiak	1	1958	Erich Juskowiak
P-00284	Mirosław	Justek	1	1978	Mirosław Justek
P-09263	Fahrudin	Jusufi	1	1962	Fahrudin Jusufi
P-04613	Jørgen	Juve	1	1938	Jørgen Juve
P-01799		Juvenal	1	1950	 Juvenal
P-07717	Ali	Kaabi	1	1978	Ali Kaabi
P-07740	Matthias	Kaburek	1	1934	Matthias Kaburek
P-04484	Ladislav	Kačáni	1	1954	Ladislav Kačáni
P-00115	Gojko	Kačar	1	2010	Gojko Kačar
P-09539	Hassan	Kachloul	1	1994	Hassan Kachloul
P-02659	Mohamed	Kaci-Saïd	1	1986	Mohamed Kaci-Saïd
P-08090	Mohamed	Kader	1	2006	Mohamed Kader
P-03163	Abdul	Kader Keïta	2	2006, 2010	Abdul Kader Keïta
P-05889	Foued	Kadir	1	2010	Foued Kadir
P-09397	Miroslav	Kadlec	1	1990	Miroslav Kadlec
P-00239	Josef	Kadraba	1	1962	Josef Kadraba
P-09020	Hossein	Kaebi	1	2006	Hossein Kaebi
P-00805	Raymond	Kaelbel	2	1954, 1958	Raymond Kaelbel
P-03379	Shinji	Kagawa	2	2014, 2018	Shinji Kagawa
P-00316	Michel	Kaham	1	1982	Michel Kaham
P-05818	Thomas	Kahlenberg	1	2010	Thomas Kahlenberg
P-04412	Oliver	Kahn	4	1994, 1998, 2002, 2006	Oliver Kahn
P-01950		Kahraba	1	2018	 Kahraba
P-01900	Nihat	Kahveci	1	2002	Nihat Kahveci
P-05375	Sani	Kaita	1	2010	Sani Kaita
P-03050	Akira	Kaji	1	2006	Akira Kaji
P-02726		Kaká	3	2002, 2006, 2010	 Kaká
P-03204	Yoichiro	Kakitani	1	2014	Yoichiro Kakitani
P-07540	Zeljko	Kalac	1	2006	Zeljko Kalac
P-08838		Kali	1	2006	 Kali
P-02440	Lovre	Kalinić	1	2018	Lovre Kalinić
P-05740	Nikola	Kalinić	1	2018	Nikola Kalinić
P-08132	Zygmunt	Kalinowski	1	1974	Zygmunt Kalinowski
P-03555	Ioannis	Kalitzakis	1	1994	Ioannis Kalitzakis
P-05959	Raymond	Kalla	3	1994, 1998, 2002	Raymond Kalla
P-01753	Henry	Källgren	1	1958	Henry Källgren
P-02292	Olle	Källgren	1	1938	Olle Källgren
P-03710	Kim	Källström	1	2006	Kim Källström
P-07661	Géza	Kalocsay	1	1934	Géza Kalocsay
P-09731	Bonaventure	Kalou	1	2006	Bonaventure Kalou
P-04006	Salomon	Kalou	2	2010, 2014	Salomon Kalou
P-02728	Manfred	Kaltz	2	1978, 1982	Manfred Kaltz
P-09500	Radosław	Kałużny	1	2002	Radosław Kałużny
P-08084	Maksym	Kalynychenko	1	2006	Maksym Kalynychenko
P-07945	Pontus	Kåmark	1	1994	Pontus Kåmark
P-08614	Fathi	Kameel	1	1982	Fathi Kameel
P-02869	Carlos	Kameni	2	2002, 2010	Carlos Kameni
P-05057	Georgi	Kamenski	1	1970	Georgi Kamenski
P-06542	Joseph	Kamga	1	1982	Joseph Kamga
P-09414	André	Kana-Biyik	2	1990, 1994	André Kana-Biyik
P-08448	Harry	Kane	1	2018	Harry Kane
P-08210	Viktor	Kanevski	1	1962	Viktor Kanevski
P-05802	Bong-chil	Kang	1	1966	Bong-chil Kang
P-09189	Chang-gi	Kang	1	1954	Chang-gi Kang
P-00298	Deuk-soo	Kang	1	1986	Deuk-soo Kang
P-05441	Min-soo	Kang	1	2010	Min-soo Kang
P-05383	Ryong-woon	Kang	1	1966	Ryong-woon Kang
P-08309	Mohamed	Kanno	1	2018	Mohamed Kanno
P-01366	N'Golo	Kanté	1	2018	N'Golo Kanté
P-07396	Nwankwo	Kanu	3	1998, 2002, 2010	Nwankwo Kanu
P-09168	Maksim	Kanunnikov	1	2014	Maksim Kanunnikov
P-01587	Jupp	Kapellmann	1	1974	Jupp Kapellmann
P-04073	Pantelis	Kapetanos	1	2010	Pantelis Kapetanos
P-02393	Stefanos	Kapino	1	2014	Stefanos Kapino
P-07895	Zdzisław	Kapka	1	1974	Zdzisław Kapka
P-02123	Vladimir	Kaplichny	1	1970	Vladimir Kaplichny
P-06635	Benő	Káposzta	1	1966	Benő Káposzta
P-04409	Vaios	Karagiannis	1	1994	Vaios Karagiannis
P-05345	Giorgos	Karagounis	2	2010, 2014	Giorgos Karagounis
P-02411	David	Karako	1	1970	David Karako
P-01824	Mohammed	Karam	1	1982	Mohammed Karam
P-04706	Jan	Karaś	1	1986	Jan Karaś
P-01252	Stanislav	Karasi	1	1974	Stanislav Karasi
P-06120	Kyriakos	Karataidis	1	1994	Kyriakos Karataidis
P-06399	József	Kardos	1	1986	József Kardos
P-08162	Christian	Karembeu	1	1998	Christian Karembeu
P-07012	Rudolf	Kargus	1	1978	Rudolf Kargus
P-02213	Amir	Karić	1	2002	Amir Karić
P-05223	Ali	Karimi	1	2006	Ali Karimi
P-02887	Saud	Kariri	1	2006	Saud Kariri
P-03912	Christos	Karkamanis	1	1994	Christos Karkamanis
P-09331	Kent	Karlsson	2	1974, 1978	Kent Karlsson
P-05693	Orestis	Karnezis	1	2014	Orestis Karnezis
P-02359	Slah	Karoui	1	1978	Slah Karoui
P-08869	Béla	Kárpáti	2	1954, 1958	Béla Kárpáti
P-02414	Valeri	Karpin	2	1994, 2002	Valeri Karpin
P-01099	Ashraf	Kasem	1	1990	Ashraf Kasem
P-06372	Henryk	Kasperczak	2	1974, 1978	Henryk Kasperczak
P-01481	Hamdi	Kasraoui	1	2006	Hamdi Kasraoui
P-03382	Hafez	Kasseb	1	1934	Hafez Kasseb
P-06853	Josip	Katalinski	1	1974	Josip Katalinski
P-05127	Srečko	Katanec	1	1990	Srečko Katanec
P-07843	Ervin	Katnić	1	1950	Ervin Katnić
P-07673	Kostas	Katsouranis	2	2010, 2014	Kostas Katsouranis
P-02921	Béla	Katzirz	1	1982	Béla Katzirz
P-02907	Anzor	Kavazashvili	2	1966, 1970	Anzor Kavazashvili
P-09701	Iván	Kaviedes	2	2002, 2006	Iván Kaviedes
P-08595	Yoshikatsu	Kawaguchi	4	1998, 2002, 2006, 2010	Yoshikatsu Kawaguchi
P-05712	Eiji	Kawashima	3	2010, 2014, 2018	Eiji Kawashima
P-07067	Javad	Kazemian	1	2006	Javad Kazemian
P-07972	Hossein	Kazerani	1	1978	Hossein Kazerani
P-01144	Jacek	Kazimierski	2	1982, 1986	Jacek Kazimierski
P-06030	Seung-woon	Ke	1	1966	Seung-woon Ke
P-08628	Robbie	Keane	1	2002	Robbie Keane
P-03086	Roy	Keane	2	1994, 2002	Roy Keane
P-05982	Kevin	Keegan	1	1982	Kevin Keegan
P-05464	Christian	Keglevits	1	1990	Christian Keglevits
P-00711	Fritz	Kehl	1	1962	Fritz Kehl
P-05640	Sebastian	Kehl	2	2002, 2006	Sebastian Kehl
P-07668	Piet	Keizer	1	1974	Piet Keizer
P-07482	Alfred	Kelbassa	1	1958	Alfred Kelbassa
P-04568	Fritz	Keller	1	1934	Fritz Keller
P-05012	Kasey	Keller	4	1990, 1998, 2002, 2006	Kasey Keller
P-05555	Tore	Keller	2	1934, 1938	Tore Keller
P-00503	Alan	Kelly	2	1994, 2002	Alan Kelly
P-06474	David	Kelly	2	1990, 1994	David Kelly
P-01541	Gary	Kelly	2	1994, 2002	Gary Kelly
P-03293	Jack	Kelsey	1	1958	Jack Kelsey
P-04608	Jean	Kembo Uba-Kembo	1	1974	Jean Kembo Uba-Kembo
P-09678	Tibor	Kemény	1	1934	Tibor Kemény
P-07202	Mario	Kempes	3	1974, 1978, 1982	Mario Kempes
P-00698	Joshua	Kennedy	2	2006, 2010	Joshua Kennedy
P-08615	Stuart	Kennedy	1	1978	Stuart Kennedy
P-03476	Harry	Keough	1	1950	Harry Keough
P-02701	Martin	Keown	2	1998, 2002	Martin Keown
P-05419	Attila	Kerekes	1	1982	Attila Kerekes
P-03751	Zoltán	Kereki	1	1978	Zoltán Kereki
P-04289	Tugay	Kerimoğlu	1	2002	Tugay Kerimoğlu
P-07791	Alan	Kernaghan	1	1994	Alan Kernaghan
P-04094	Willy	Kernen	3	1950, 1954, 1962	Willy Kernen
P-08283	Aleksandr	Kerzhakov	2	2002, 2014	Aleksandr Kerzhakov
P-07192	Vladimir	Kesarev	1	1958	Vladimir Kesarev
P-05766	Stephen	Keshi	1	1994	Stephen Keshi
P-09778	Erol	Keskin	1	1954	Erol Keskin
P-07851	Derek	Kevan	2	1958, 1962	Derek Kevan
P-06101	Harry	Kewell	2	2006, 2010	Harry Kewell
P-05530	Mateja	Kežman	1	2006	Mateja Kežman
P-00451	Abderrazak	Khairi	1	1986	Abderrazak Khairi
P-04141	Mohammad	Khakpour	1	1998	Mohammad Khakpour
P-06954	Labid	Khalifa	1	1986	Labid Khalifa
P-04011	Saber	Khalifa	1	2018	Saber Khalifa
P-07739	Ahmed	Khalil	1	2018	Ahmed Khalil
P-02547	Fahad	Khamees	1	1990	Fahad Khamees
P-09071	Nasir	Khamees	1	1990	Nasir Khamees
P-05946	Moulay	Khanousi	1	1970	Moulay Khanousi
P-06736	Mohammad Reza	Khanzadeh	1	2018	Mohammad Reza Khanzadeh
P-06821	Saîf-Eddine	Khaoui	1	2018	Saîf-Eddine Khaoui
P-03211	Dmitri	Kharine	1	1994	Dmitri Kharine
P-03391	Rasoul	Khatibi	1	2006	Rasoul Khatibi
P-04187	Wahbi	Khazri	1	2018	Wahbi Khazri
P-00049	Sami	Khedira	3	2010, 2014, 2018	Sami Khedira
P-01293	Vagiz	Khidiyatullin	2	1982, 1990	Vagiz Khidiyatullin
P-07324	Dmitri	Khlestov	1	1994	Dmitri Khlestov
P-09955	Vitaly	Khmelnitsky	1	1970	Vitaly Khmelnitsky
P-06769	Dmitri	Khokhlov	1	2002	Dmitri Khokhlov
P-04539	Mohammad	Khouja	1	2006	Mohammad Khouja
P-04930	Thanduyise	Khuboni	1	2010	Thanduyise Khuboni
P-08621	Bongani	Khumalo	1	2010	Bongani Khumalo
P-06505	Doctor	Khumalo	1	1998	Doctor Khumalo
P-07566	Itumeleng	Khune	1	2010	Itumeleng Khune
P-08475	Murtaz	Khurtsilava	2	1966, 1970	Murtaz Khurtsilava
P-01809	Galimzyan	Khusainov	2	1962, 1966	Galimzyan Khusainov
P-05571	Sung-yueng	Ki	3	2010, 2014, 2018	Sung-yueng Ki
P-07027	Wim	Kieft	1	1990	Wim Kieft
P-08185	Leopold	Kielholz	2	1934, 1938	Leopold Kielholz
P-00813	Dean	Kiely	1	2002	Dean Kiely
P-01471	Isaac	Kiese Thelin	1	2018	Isaac Kiese Thelin
P-01299	Stefan	Kießling	1	2010	Stefan Kießling
P-09281	Anker	Kihle	1	1938	Anker Kihle
P-07474	Magnus	Kihlstedt	1	2002	Magnus Kihlstedt
P-04927		Kiko	1	1998	 Kiko
P-05260	Kevin	Kilbane	1	2002	Kevin Kilbane
P-05681	Chris	Killen	1	2010	Chris Killen
P-09848	Daniel	Killer	1	1978	Daniel Killer
P-00565	Bo-kyung	Kim	2	2010, 2014	Bo-kyung Kim
P-07880	Bong-hwan	Kim	1	1966	Bong-hwan Kim
P-05452	Byung-ji	Kim	2	1998, 2002	Byung-ji Kim
P-09730	Chang-soo	Kim	1	2014	Chang-soo Kim
P-01788	Do-heon	Kim	1	2006	Do-heon Kim
P-05814	Do-hoon	Kim	1	1998	Do-hoon Kim
P-02661	Do-keun	Kim	1	1998	Do-keun Kim
P-09290	Dong-jin	Kim	2	2006, 2010	Dong-jin Kim
P-03158	Hyung-il	Kim	1	2010	Hyung-il Kim
P-01133	Jae-sung	Kim	1	2010	Jae-sung Kim
P-02400	Ji-sung	Kim	1	1954	Ji-sung Kim
P-00780	Jin-hyeon	Kim	1	2018	Jin-hyeon Kim
P-05389	Jin-kyu	Kim	1	2006	Jin-kyu Kim
P-01734	Jong-boo	Kim	1	1986	Jong-boo Kim
P-02932	Joo-sung	Kim	3	1986, 1990, 1994	Joo-sung Kim
P-06555	Jung-woo	Kim	1	2010	Jung-woo Kim
P-06328	Kum-il	Kim	1	2010	Kum-il Kim
P-09716	Kyong-il	Kim	1	2010	Kyong-il Kim
P-09642	Min-woo	Kim	1	2018	Min-woo Kim
P-01691	Myong-gil	Kim	1	2010	Myong-gil Kim
P-07380	Myong-won	Kim	1	2010	Myong-won Kim
P-00295	Nam-il	Kim	3	2002, 2006, 2010	Nam-il Kim
P-06207	Pan-keun	Kim	1	1994	Pan-keun Kim
P-09771	Poong-joo	Kim	1	1990	Poong-joo Kim
P-02704	Pyung-seok	Kim	1	1986	Pyung-seok Kim
P-06506	Sam-soo	Kim	1	1986	Sam-soo Kim
P-03291	Sang-sik	Kim	1	2006	Sang-sik Kim
P-01424	Seung-gyu	Kim	2	2014, 2018	Seung-gyu Kim
P-06158	Seung-Il	Kim	1	1966	Seung-Il Kim
P-00578	Shin-wook	Kim	2	2014, 2018	Shin-wook Kim
P-06031	Tae-young	Kim	2	1998, 2002	Tae-young Kim
P-00668	Yong-dae	Kim	1	2006	Yong-dae Kim
P-00894	Yong-jun	Kim	1	2010	Yong-jun Kim
P-03516	Yong-se	Kim	1	1986	Yong-se Kim
P-00629	Young-chul	Kim	1	2006	Young-chul Kim
P-06085	Young-gwon	Kim	2	2014, 2018	Young-gwon Kim
P-06018	Young-kwang	Kim	2	2006, 2010	Young-kwang Kim
P-07442	Yung-kil	Kim	1	1966	Yung-kil Kim
P-06939	Joshua	Kimmich	1	2018	Joshua Kimmich
P-00868	Presnel	Kimpembe	1	2018	Presnel Kimpembe
P-04197	Ove	Kindvall	2	1970, 1974	Ove Kindvall
P-03971	Ledley	King	1	2010	Ledley King
P-06648	Richard	Kingson	2	2006, 2010	Richard Kingson
P-09319	Vladimír	Kinier	1	1990	Vladimír Kinier
P-00124	Mark	Kinsella	1	2002	Mark Kinsella
P-03683	Antonín	Kinský	1	2006	Antonín Kinský
P-00161	József	Kiprich	1	1986	József Kiprich
P-00077	Rosen	Kirilov	1	1998	Rosen Kirilov
P-05249	Andraž	Kirm	1	2010	Andraž Kirm
P-06003	Ulf	Kirsten	2	1994, 1998	Ulf Kirsten
P-05895	Iliyan	Kiryakov	1	1994	Iliyan Kiryakov
P-08388	Gerd	Kische	1	1974	Gerd Kische
P-01473	Nikolay	Kiselyov	1	1970	Nikolay Kiselyov
P-05319	Radostin	Kishishev	1	1998	Radostin Kishishev
P-06406	Imre	Kiss	1	1982	Imre Kiss
P-04758	László	Kiss	1	1982	László Kiss
P-08715	Stoyan	Kitov	2	1962, 1966	Stoyan Kitov
P-02746	Albin	Kitzinger	1	1938	Albin Kitzinger
P-09518	Hiroshi	Kiyotake	1	2014	Hiroshi Kiyotake
P-01180	Peter	Kjær	2	1998, 2002	Peter Kjær
P-01435	Simon	Kjær	2	2010, 2018	Simon Kjær
P-01662	Ivan	Klasnić	1	2006	Ivan Klasnić
P-06994		Kléberson	2	2002, 2010	 Kléberson
P-03579	Wolfgang	Kleff	1	1974	Wolfgang Kleff
P-09100	Michael	Klein	1	1990	Michael Klein
P-02883	István	Klimek	1	1934	István Klimek
P-01551	Marino	Klinger	1	1962	Marino Klinger
P-00876	Jürgen	Klinsmann	3	1990, 1994, 1998	Jürgen Klinsmann
P-02472	Bernhard	Klodt	2	1954, 1958	Bernhard Klodt
P-06015	Frank	Klopas	1	1994	Frank Klopas
P-06252	Tomasz	Kłos	1	2002	Tomasz Kłos
P-05239	Miroslav	Klose	4	2002, 2006, 2010, 2014	Miroslav Klose
P-05316	Patrick	Kluivert	1	1998	Patrick Kluivert
P-02815	Kazimierz	Kmiecik	1	1974	Kazimierz Kmiecik
P-01136	Wolfgang	Knaller	1	1998	Wolfgang Knaller
P-00392	Aleksander	Knavs	1	2002	Aleksander Knavs
P-08714	Ivo	Knoflíček	1	1990	Ivo Knoflíček
P-05059	Jonas	Knudsen	1	2018	Jonas Knudsen
P-04434	Adrian	Knup	1	1994	Adrian Knup
P-09570	Jeong-woon	Ko	1	1994	Jeong-woon Ko
P-05731	Jong-soo	Ko	1	1998	Jong-soo Ko
P-01808	Stanislaus	Kobierski	1	1934	Stanislaus Kobierski
P-03091	Ján	Kocian	1	1990	Ján Kocian
P-04864	István	Kocsis	1	1978	István Kocsis
P-07498	Sándor	Kocsis	1	1954	Sándor Kocsis
P-06867	Erwin	Koeman	1	1990	Erwin Koeman
P-06355	Ronald	Koeman	2	1990, 1994	Ronald Koeman
P-06454	Savvas	Kofidis	1	1994	Savvas Kofidis
P-09016	Walter	Kogler	1	1998	Walter Kogler
P-09300	Jürgen	Kohler	3	1990, 1994, 1998	Jürgen Kohler
P-02573	Werner	Kohlmeyer	1	1954	Werner Kohlmeyer
P-07816	Vilmos	Kohut	1	1938	Vilmos Kohut
P-07278	Nobuyuki	Kojima	1	1998	Nobuyuki Kojima
P-04986		Koke	2	2014, 2018	 Koke
P-04161	Aleksandr	Kokorin	1	2014	Aleksandr Kokorin
P-08249	Aleksandar	Kolarov	2	2010, 2018	Aleksandar Kolarov
P-01609	Sead	Kolašinac	1	2014	Sead Kolašinac
P-06819	Bozhil	Kolev	1	1974	Bozhil Kolev
P-00867	Hristo	Kolev	1	1986	Hristo Kolev
P-00653	Ivan	Kolev	2	1962, 1966	Ivan Kolev
P-07997	Todor	Kolev	1	1970	Todor Kolev
P-07500	Thanasis	Kolitsidakis	1	1994	Thanasis Kolitsidakis
P-08610	Jan	Koller	1	2006	Jan Koller
P-04528	Karl	Koller	2	1954, 1958	Karl Koller
P-05793	Walter	Kollmann	2	1954, 1958	Walter Kollmann
P-08895	Karel	Kolský	1	1938	Karel Kolský
P-00918	Andrej	Komac	1	2010	Andrej Komac
P-00604	Yūichi	Komano	2	2006, 2010	Yūichi Komano
P-07403	Dmitri	Kombarov	1	2014	Dmitri Kombarov
P-04174	Daniel	Kome	1	2002	Daniel Kome
P-03783	Slobodan	Komljenović	1	1998	Slobodan Komljenović
P-04111	Ryszard	Komornicki	1	1986	Ryszard Komornicki
P-00036	Vincent	Kompany	2	2014, 2018	Vincent Kompany
P-06694	Moussa	Konaté	1	2018	Moussa Konaté
P-02349	Friedrich	Koncilia	2	1978, 1982	Friedrich Koncilia
P-06795	Panagiotis	Kone	1	2014	Panagiotis Kone
P-02555	Arouna	Koné	1	2006	Arouna Koné
P-05586	Bakari	Koné	1	2006	Bakari Koné
P-06050	Emmanuel	Koné	1	2010	Emmanuel Koné
P-06602	Terence	Kongolo	1	2014	Terence Kongolo
P-08817	Yasuyuki	Konno	2	2010, 2014	Yasuyuki Konno
P-03712	Harald	Konopka	1	1978	Harald Konopka
P-07882	Otto	Konrad	1	1990	Otto Konrad
P-05366	Stanislau	Konrad	1	1934	Stanislau Konrad
P-05700	Michael	Konsel	2	1990, 1998	Michael Konsel
P-08255	Ja-cheol	Koo	2	2014, 2018	Ja-cheol Koo
P-01540	Cle	Kooiman	1	1994	Cle Kooiman
P-07100	Raymond	Kopa	2	1954, 1958	Raymond Kopa
P-03747	Vlastimil	Kopecký	2	1934, 1938	Vlastimil Kopecký
P-04186	Andreas	Köpke	3	1990, 1994, 1998	Andreas Köpke
P-02342	Kamil	Kopúnek	1	2010	Kamil Kopúnek
P-08679	Lajos	Korányi	1	1938	Lajos Korányi
P-09756	Pierre	Korb	1	1934	Pierre Korb
P-08541	Józef	Korbas	1	1938	Józef Korbas
P-07821	Rasoul	Korbekandi	1	1978	Rasoul Korbekandi
P-04968	Robert	Koren	1	2010	Robert Koren
P-04118	Bülent	Korkmaz	1	2002	Bülent Korkmaz
P-08627	Igor	Korneev	1	1994	Igor Korneev
P-01034	Alfred	Körner	2	1954, 1958	Alfred Körner
P-09960	Robert	Körner	1	1954	Robert Körner
P-00841	Alexey	Korneyev	1	1966	Alexey Korneyev
P-05172	Ognjen	Koroman	1	2006	Ognjen Koroman
P-01679	Vladimír	Kos	1	1962	Vladimír Kos
P-08238	Laurent	Koscielny	1	2014	Laurent Koscielny
P-09753	Willi	Koslowski	1	1962	Willi Koslowski
P-02767	Jaroslav	Košnar	1	1954	Jaroslav Košnar
P-01877	Kamil	Kosowski	1	2006	Kamil Kosowski
P-01575	Emil	Kostadinov	2	1994, 1998	Emil Kostadinov
P-09342	Kostadin	Kostadinov	1	1986	Kostadin Kostadinov
P-01268	Josef	Košťálek	2	1934, 1938	Josef Košťálek
P-02763	Filip	Kostić	1	2018	Filip Kostić
P-01802	Aleksandar	Kostov	2	1962, 1966	Aleksandar Kostov
P-07501	Dimitar	Kostov	1	1962	Dimitar Kostov
P-01281	Zdzisław	Kostrzewa	1	1978	Zdzisław Kostrzewa
P-05718	Antal	Kotász	1	1958	Antal Kotász
P-05842	Nikola	Kotkov	1	1966	Nikola Kotkov
P-03084	Rudolf	Kotormány	1	1934	Rudolf Kotormány
P-08542	Sergey	Kotrikadze	1	1962	Sergey Kotrikadze
P-00178	Blaise	Kouassi	1	2006	Blaise Kouassi
P-05565	Pavel	Kouba	1	1962	Pavel Kouba
P-01490	Mustafa	Kouici	1	1982	Mustafa Kouici
P-01071	Kalidou	Koulibaly	1	2018	Kalidou Koulibaly
P-07758	George	Koumantarakis	1	2002	George Koumantarakis
P-05269	Nourredine	Kourichi	2	1982, 1986	Nourredine Kourichi
P-01687	Cheikhou	Kouyaté	1	2018	Cheikhou Kouyaté
P-05226	Niko	Kovač	2	2002, 2006	Niko Kovač
P-03834	Robert	Kovač	2	2002, 2006	Robert Kovač
P-03064	Radoslav	Kováč	1	2006	Radoslav Kováč
P-08795	Darko	Kovačević	1	1998	Darko Kovačević
P-05884	Oliver	Kovačević	1	2006	Oliver Kovačević
P-06709	Vladica	Kovačević	1	1962	Vladica Kovačević
P-06778	Nikola	Kovachev	1	1962	Nikola Kovachev
P-07859	Mateo	Kovačić	2	2014, 2018	Mateo Kovačić
P-08421	Imre	Kovács	1	1954	Imre Kovács
P-09092	Kálmán	Kovács	1	1986	Kálmán Kovács
P-08136	László	Kovács	1	1978	László Kovács
P-02034	Miklós	Kovács	1	1930	Miklós Kovács
P-09683	Nicolae	Kovács	2	1934, 1938	Nicolae Kovács
P-09360	Yuri	Kovtun	1	2002	Yuri Kovtun
P-05489	Ignace	Kowalczyk	1	1938	Ignace Kowalczyk
P-05365	Dawid	Kownacki	1	2018	Dawid Kownacki
P-07183	Ján	Kozák	1	1982	Ján Kozák
P-05049	Ján	Kozák	1	2010	Ján Kozák
P-01598	Ernst	Kozlicek	1	1958	Ernst Kozlicek
P-02893	Paul	Kozlicek	1	1958	Paul Kozlicek
P-01682	Aleksei	Kozlov	1	2014	Aleksei Kozlov
P-06840	Marek	Koźmiński	1	2002	Marek Koźmiński
P-01371	Ardian	Kozniku	1	1998	Ardian Kozniku
P-09459	Emil	Krafth	1	2018	Emil Krafth
P-06722	Serhiy	Krakovskiy	1	1986	Serhiy Krakovskiy
P-09740	Branko	Kralj	1	1954	Branko Kralj
P-00695	Ivica	Kralj	1	1998	Ivica Kralj
P-03779	Andrej	Kramarić	1	2018	Andrej Kramarić
P-05450	Christoph	Kramer	1	2014	Christoph Kramer
P-07282	Werner	Krämer	1	1966	Werner Krämer
P-03117	Niko	Kranjčar	1	2006	Niko Kranjčar
P-06890	Hans	Krankl	2	1978, 1982	Hans Krankl
P-04596	Miloš	Krasić	1	2010	Miloš Krasić
P-09725	Anton	Krásnohorský	1	1954	Anton Krásnohorský
P-06953	Engelbert	Kraus	1	1962	Engelbert Kraus
P-01398	Tadeáš	Kraus	2	1954, 1958	Tadeáš Kraus
P-00094	Bernd	Krauss	1	1982	Bernd Krauss
P-06856	Rudolf	Krčil	1	1934	Rudolf Krčil
P-01880	Hans-Jürgen	Kreische	1	1974	Hans-Jürgen Kreische
P-08171	Emil	Kremenliev	1	1994	Emil Kremenliev
P-00843	Helmut	Kremers	1	1974	Helmut Kremers
P-09002	Willibald	Kreß	1	1934	Willibald Kreß
P-04741	Arnošt	Kreuz	1	1938	Arnošt Kreuz
P-07729	Wilhelm	Kreuz	1	1978	Wilhelm Kreuz
P-04544	Rene	Krhin	1	2010	Rene Krhin
P-02499	Eduard	Krieger	1	1978	Eduard Krieger
P-00128	Krister	Kristensson	1	1970	Krister Kristensson
P-03560	Srboljub	Krivokuća	2	1958, 1962	Srboljub Krivokuća
P-06913	Tomáš	Kříž	1	1982	Tomáš Kříž
P-03687	Konstantin	Krizhevsky	1	1958	Konstantin Krizhevsky
P-00558	Zlatko	Krmpotić	1	1982	Zlatko Krmpotić
P-07548	Mogens	Krogh	1	1998	Mogens Krogh
P-00280	Michael	Krohn-Dehli	1	2018	Michael Krohn-Dehli
P-02465	Ruud	Krol	2	1974, 1978	Ruud Krol
P-08999	Per	Krøldrup	1	2010	Per Krøldrup
P-02552	Jan	Kromkamp	1	2006	Jan Kromkamp
P-01191	Knut	Kroon	1	1934	Knut Kroon
P-03473	Toni	Kroos	3	2010, 2014, 2018	Toni Kroos
P-02432	Petar	Krpan	1	1998	Petar Krpan
P-03877	Mladen	Krstajić	1	2006	Mladen Krstajić
P-08832	Dobrosav	Krstić	1	1958	Dobrosav Krstić
P-05808	Tim	Krul	1	2014	Tim Krul
P-05852	Paul	Krumpe	1	1990	Paul Krumpe
P-05955	Robbie	Kruse	1	2018	Robbie Kruse
P-03372	Grzegorz	Krychowiak	1	2018	Grzegorz Krychowiak
P-00972	Paweł	Kryszałowicz	1	2002	Paweł Kryszałowicz
P-09479	Jacek	Krzynówek	2	2002, 2006	Jacek Krzynówek
P-00231	Dariusz	Kubicki	1	1986	Dariusz Kubicki
P-04880	Luboš	Kubík	1	1990	Luboš Kubík
P-04473	Heinz	Kubsch	1	1954	Heinz Kubsch
P-05819	Cezary	Kucharski	1	2002	Cezary Kucharski
P-04088	Dušan	Kuciak	1	2010	Dušan Kuciak
P-04671	Juraj	Kucka	1	2010	Juraj Kucka
P-07363	Lefter	Küçükandonyadis	1	1954	Lefter Küçükandonyadis
P-04246	Fyodor	Kudryashov	1	2018	Fyodor Kudryashov
P-09581	Samuel	Kuffour	1	2006	Samuel Kuffour
P-05547	Béla	Kuharszki	1	1962	Béla Kuharszki
P-08394	Dietmar	Kühbauer	1	1998	Dietmar Kühbauer
P-06367	Köbi	Kuhn	1	1966	Köbi Kuhn
P-09376	Zygmunt	Kukla	1	1978	Zygmunt Kukla
P-02199	Jozef	Kukučka	1	1982	Jozef Kukučka
P-01655	Ladislav	Kuna	1	1970	Ladislav Kuna
P-04297	Emmanuel	Kundé	2	1982, 1990	Emmanuel Kundé
P-07092	Stefan	Kuntz	1	1994	Stefan Kuntz
P-08457	Fritz	Künzli	1	1966	Fritz Künzli
P-04024	Janusz	Kupcewicz	2	1978, 1982	Janusz Kupcewicz
P-02480	Andreas	Kupfer	1	1938	Andreas Kupfer
P-03660	Jürgen	Kurbjuhn	1	1962	Jürgen Kurbjuhn
P-05342	Lothar	Kurbjuweit	1	1974	Lothar Kurbjuweit
P-08099	Rafał	Kurzawa	1	2018	Rafał Kurzawa
P-06291	Marek	Kusto	3	1974, 1978, 1982	Marek Kusto
P-09924	Tomasz	Kuszczak	1	2006	Tomasz Kuszczak
P-05566	Ilya	Kutepov	1	2018	Ilya Kutepov
P-04256	Dirk	Kuyt	3	2006, 2010, 2014	Dirk Kuyt
P-07931	Zdravko	Kuzmanović	1	2010	Zdravko Kuzmanović
P-08846	Boris	Kuznetsov	1	1958	Boris Kuznetsov
P-00081	Dmitri	Kuznetsov	1	1994	Dmitri Kuznetsov
P-01530	Oleh	Kuznetsov	2	1986, 1990	Oleh Kuznetsov
P-00955	Daler	Kuzyayev	1	2018	Daler Kuzyayev
P-09889	Reidar	Kvammen	1	1938	Reidar Kvammen
P-00838	Andrej	Kvašňák	2	1962, 1970	Andrej Kvašňák
P-08662	William	Kvist	2	2010, 2018	William Kvist
P-07932	Tae-hwi	Kwak	1	2014	Tae-hwi Kwak
P-04114	Adam Larsen	Kwarasey	1	2014	Adam Larsen Kwarasey
P-03090	Heinz	Kwiatkowski	2	1954, 1958	Heinz Kwiatkowski
P-01922	Sotirios	Kyrgiakos	1	2010	Sotirios Kyrgiakos
P-06049	Guillermo	La Rosa	2	1978, 1982	Guillermo La Rosa
P-00463	Ricardo	La Volpe	1	1978	Ricardo La Volpe
P-05025	Fritz	Laband	1	1954	Fritz Laband
P-02479	Ernesto	Labarthe	1	1978	Ernesto Labarthe
P-00424	Khemais	Labidi	1	1978	Khemais Labidi
P-09843	Mohsen	Labidi	1	1978	Mohsen Labidi
P-03127	Brian	Labone	1	1970	Brian Labone
P-03515	Ángel	Labruna	1	1958	Ángel Labruna
P-06156	Marius	Lăcătuș	2	1990, 1998	Marius Lăcătuș
P-09242	Mehdi	Lacen	2	2010, 2014	Mehdi Lacen
P-01794	László	Lachos	1	1958	László Lachos
P-02000	Bernard	Lacombe	2	1978, 1982	Bernard Lacombe
P-03548	Dražen	Ladić	1	1998	Dražen Ladić
P-02441	Maurice	Lafont	1	1958	Maurice Lafont
P-03020		Lafuente	1	1934	 Lafuente
P-09795	Abdeslam	Laghrissi	1	1994	Abdeslam Laghrissi
P-00485	Philipp	Lahm	3	2006, 2010, 2014	Philipp Lahm
P-05280	Témime	Lahzami	1	1978	Témime Lahzami
P-08784	Abdelkader	Laïfaoui	1	2010	Abdelkader Laïfaoui
P-09045	Antonio	Laing	1	1982	Antonio Laing
P-08116	Jan	Lála	1	1962	Jan Lála
P-02455	Alexi	Lalas	2	1994, 1998	Alexi Lalas
P-02193	Adam	Lallana	1	2014	Adam Lallana
P-07180	Bernard	Lama	1	1998	Bernard Lama
P-04763		Lamá	1	2006	 Lamá
P-08285	José Luis	Lamadrid	1	1954	José Luis Lamadrid
P-09855	Paul	Lambert	1	1998	Paul Lambert
P-08487	Raoul	Lambert	1	1970	Raoul Lambert
P-05551	Rickie	Lambert	1	2014	Rickie Lambert
P-04829	Robert	Lamoot	1	1934	Robert Lamoot
P-05255	Frank	Lampard	3	2006, 2010, 2014	Frank Lampard
P-00075	Abdallah	Lamrani	1	1970	Abdallah Lamrani
P-05067	Abdelmajid	Lamriss	1	1986	Abdelmajid Lamriss
P-02519	Honorino	Landa	2	1962, 1966	Honorino Landa
P-00786	Spartaco	Landini	1	1966	Spartaco Landini
P-06048	Mickaël	Landreau	2	2006, 2014	Mickaël Landreau
P-05654	Denny	Landzaat	1	2006	Denny Landzaat
P-08761	Michael	Lang	2	2014, 2018	Michael Lang
P-02668	Isidro	Lángara	1	1934	Isidro Lángara
P-00306	Wim	Langendaal	1	1934	Wim Langendaal
P-05790	Mitchell	Langerak	1	2014	Mitchell Langerak
P-05670	Marcel	Langiller	1	1930	Marcel Langiller
P-07875	Ronald	Langón	1	1962	Ronald Langón
P-04992	Mihály	Lantos	1	1954	Mihály Lantos
P-02051	Damián	Lanza	1	2006	Damián Lanza
P-08353	Carlos	Lapetra	1	1966	Carlos Lapetra
P-08407	Mike	Lapper	1	1994	Mike Lapper
P-04796	Ion	Lǎpuşneanu	1	1930	Ion Lǎpuşneanu
P-01025	Alfonso	Lara	1	1974	Alfonso Lara
P-05939	Christian	Lara	1	2006	Christian Lara
P-00114	Diógenes	Lara	1	1930	Diógenes Lara
P-07576	Raúl	Lara	1	1998	Raúl Lara
P-05950	Salah	Larbes	1	1982	Salah Larbes
P-01046	Dimitar	Largov	1	1966	Dimitar Largov
P-03863	Nikolay	Larionov	1	1986	Nikolay Larionov
P-01822	Jean-François	Larios	1	1982	Jean-François Larios
P-07155	Pablo	Larios	1	1986	Pablo Larios
P-09350	Omar	Larrosa	1	1978	Omar Larrosa
P-05373	Søren	Larsen	1	2010	Søren Larsen
P-04388	Bo	Larsson	3	1970, 1974, 1978	Bo Larsson
P-09697	Henrik	Larsson	3	1994, 2002, 2006	Henrik Larsson
P-03266	Lennart	Larsson	1	1978	Lennart Larsson
P-00171	Peter	Larsson	1	1990	Peter Larsson
P-08521	Sebastian	Larsson	1	2018	Sebastian Larsson
P-07694	Sven-Gunnar	Larsson	2	1970, 1974	Sven-Gunnar Larsson
P-02002	Russell	Latapy	1	2006	Russell Latapy
P-02296	Mohamed	Latif	1	1934	Mohamed Latif
P-05772	Ali	Latifi	1	1998	Ali Latifi
P-07200	Grzegorz	Lato	3	1974, 1978, 1982	Grzegorz Lato
P-07575	Reinhard	Lauck	1	1974	Reinhard Lauck
P-05195	Brian	Laudrup	1	1998	Brian Laudrup
P-00374	Michael	Laudrup	2	1986, 1998	Michael Laudrup
P-08713		Lauren	2	1998, 2002	 Lauren
P-06728	Jean	Laurent	1	1930	Jean Laurent
P-09831	Lucien	Laurent	2	1930, 1934	Lucien Laurent
P-01482	Jacob	Laursen	1	1998	Jacob Laursen
P-06350	Martin	Laursen	1	2002	Martin Laursen
P-07519	José María	Lavalle	1	1930	José María Lavalle
P-01969	Ezequiel	Lavezzi	1	2014	Ezequiel Lavezzi
P-00535	Denis	Law	1	1974	Denis Law
P-07631	Garba	Lawal	2	1998, 2002	Garba Lawal
P-00720	Aaron	Lawrence	1	1998	Aaron Lawrence
P-09014	Dennis	Lawrence	1	2006	Dennis Lawrence
P-01608	Diego	Laxalt	1	2018	Diego Laxalt
P-01625	Miguel	Layún	2	2014, 2018	Miguel Layún
P-09898	Gyula	Lázár	2	1934, 1938	Gyula Lázár
P-04047	Stan	Lazaridis	1	2006	Stan Lazaridis
P-00613	Danko	Lazović	1	2010	Danko Lazović
P-04430	Yvon	Le Roux	1	1986	Yvon Le Roux
P-01076	Graeme	Le Saux	1	1998	Graeme Le Saux
P-07767	Eugenio	Leal	1	1978	Eugenio Leal
P-00101	Fritz	Leandré	1	1974	Fritz Leandré
P-00232	Joseph-Marion	Leandré	1	1974	Joseph-Marion Leandré
P-00777		Leandro	1	1982	 Leandro
P-01197		Leão	4	1970, 1974, 1978, 1986	 Leão
P-05774	Michel	Leblond	1	1954	Michel Leblond
P-06357	Lebo	Lebo	1	2006	Lebo Lebo
P-01937	Frank	Leboeuf	2	1998, 2002	Frank Leboeuf
P-02680	Mathew	Leckie	2	2014, 2018	Mathew Leckie
P-03842	Simón	Lecue	1	1934	Simón Lecue
P-06348	François	Ledent	1	1934	François Ledent
P-05994	Igor	Lediakhov	1	1994	Igor Lediakhov
P-06759	Bum-young	Lee	1	2014	Bum-young Lee
P-07860	Chang-myung	Lee	1	1966	Chang-myung Lee
P-06863	Chun-soo	Lee	2	2002, 2006	Chun-soo Lee
P-09156	Chung-yong	Lee	2	2010, 2014	Chung-yong Lee
P-06169	Dong-gook	Lee	2	1998, 2010	Dong-gook Lee
P-05103	Eul-yong	Lee	2	2002, 2006	Eul-yong Lee
P-01479	Francis	Lee	1	1970	Francis Lee
P-06284	Heung-sil	Lee	1	1990	Heung-sil Lee
P-08105	Ho	Lee	1	2006	Ho Lee
P-05388	Jae-sung	Lee	1	2018	Jae-sung Lee
P-01923	Jong-hwa	Lee	1	1994	Jong-hwa Lee
P-01725	Jung-soo	Lee	1	2010	Jung-soo Lee
P-04162	Keun-hak	Lee	1	1966	Keun-hak Lee
P-09490	Keun-ho	Lee	1	2014	Keun-ho Lee
P-08192	Lim-saeng	Lee	1	1998	Lim-saeng Lee
P-00047	Min-sung	Lee	2	1998, 2002	Min-sung Lee
P-00721	Rob	Lee	1	1998	Rob Lee
P-08424	Sang-hun	Lee	1	1998	Sang-hun Lee
P-00195	Sang-yi	Lee	1	1954	Sang-yi Lee
P-08317	Sang-yoon	Lee	2	1990, 1998	Sang-yoon Lee
P-09458	Seung-woo	Lee	1	2018	Seung-woo Lee
P-01997	Seung-yeoul	Lee	1	2010	Seung-yeoul Lee
P-07206	Soo-nam	Lee	1	1954	Soo-nam Lee
P-06424	Tae-ho	Lee	2	1986, 1990	Tae-ho Lee
P-02025	Woon-jae	Lee	4	1994, 2002, 2006, 2010	Woon-jae Lee
P-09891	Yong	Lee	2	2014, 2018	Yong Lee
P-04107	Young-jin	Lee	2	1990, 1994	Young-jin Lee
P-05222	Young-pyo	Lee	3	2002, 2006, 2010	Young-pyo Lee
P-09432	Ken	Leek	1	1958	Ken Leek
P-06434	Graham	Leggat	1	1958	Graham Leggat
P-02875	Germán	Leguía	2	1978, 1982	Germán Leguía
P-04264	Victoriano	Leguizamón	1	1950	Victoriano Leguizamón
P-04854	William	Lehman	1	1934	William Lehman
P-02297	August	Lehmann	1	1938	August Lehmann
P-01975	Jens	Lehmann	3	1998, 2002, 2006	Jens Lehmann
P-08961	Stephan	Lehmann	1	1994	Stephan Lehmann
P-09992	Ernst	Lehner	2	1934, 1938	Ernst Lehner
P-02491	Jim	Leighton	4	1982, 1986, 1990, 1998	Jim Leighton
P-03648	Werner	Leimgruber	1	1966	Werner Leimgruber
P-03549	Carvalho	Leite	2	1930, 1934	Carvalho Leite
P-00380		Leivinha	1	1974	 Leivinha
P-08893	Jacob	Lekgetho	1	2002	Jacob Lekgetho
P-03011	Ivan	Leko	1	2006	Ivan Leko
P-06257	Jerko	Leko	1	2006	Jerko Leko
P-06742	Dragoje	Leković	2	1990, 1998	Dragoje Leković
P-07112	Thomas	Lemar	1	2018	Thomas Lemar
P-08117	Alejandro	Lembo	1	2002	Alejandro Lembo
P-03610	Bob	Lenarduzzi	1	1986	Bob Lenarduzzi
P-08922	Aaron	Lennon	2	2006, 2010	Aaron Lennon
P-00741	Jeremain	Lens	1	2014	Jeremain Lens
P-09528	Pedro Pablo	León	1	1970	Pedro Pablo León
P-07636		Leonardo	2	1994, 1998	 Leonardo
P-08786	Gianfranco	Leoncini	1	1966	Gianfranco Leoncini
P-07401	Øyvind	Leonhardsen	2	1994, 1998	Øyvind Leonhardsen
P-09402	Johnny	Leoni	1	2010	Johnny Leoni
P-03023		Leônidas	2	1934, 1938	 Leônidas
P-07341	Roberto	Leopardi	1	1954	Roberto Leopardi
P-06347	Hugo	Lepe	1	1962	Hugo Lepe
P-03377	Lukas	Lerager	1	2018	Lukas Lerager
P-01480	Søren	Lerby	1	1986	Søren Lerby
P-08391	Jefferson	Lerma	1	2018	Jefferson Lerma
P-08425	André	Lerond	1	1958	André Lerond
P-00104	Rafael	Lesmes	1	1950	Rafael Lesmes
P-02865	Yordan	Letchkov	1	1994	Yordan Letchkov
P-03618	Juan Carlos	Letelier	1	1982	Juan Carlos Letelier
P-03302	Reneilwe	Letsholonyane	1	2010	Reneilwe Letsholonyane
P-00746	Tino	Lettieri	1	1986	Tino Lettieri
P-02594	Craig	Levein	1	1990	Craig Levein
P-03569	Mariusz	Lewandowski	1	2006	Mariusz Lewandowski
P-04804	Robert	Lewandowski	1	2018	Robert Lewandowski
P-01098	Eddie	Lewis	2	2002, 2006	Eddie Lewis
P-08357	Claudio	Lezcano	1	1958	Claudio Lezcano
P-04317	Juan Vicente	Lezcano	1	1958	Juan Vicente Lezcano
P-00822	Chi-an	Li	1	1966	Chi-an Li
P-03904	Dong-woon	Li	1	1966	Dong-woon Li
P-00073	Jong-kap	Li	1	1954	Jong-kap Li
P-05162	Ki-joo	Li	1	1954	Ki-joo Li
P-04478	Tie	Li	1	2002	Tie Li
P-07874	Weifeng	Li	1	2002	Weifeng Li
P-02903	Xiaopeng	Li	1	2002	Xiaopeng Li
P-06423	Ernest	Libérati	1	1930	Ernest Libérati
P-01097	Thomas	Libiih	2	1990, 1994	Thomas Libiih
P-02712	Reinhard	Libuda	1	1970	Reinhard Libuda
P-06493	Stephan	Lichtsteiner	3	2010, 2014, 2018	Stephan Lichtsteiner
P-03967	Werner	Liebrich	1	1954	Werner Liebrich
P-04687	Nils	Liedholm	1	1958	Nils Liedholm
P-00909		Liédson	1	2010	 Liédson
P-08660	Noël	Liétaer	1	1934	Noël Liétaer
P-04424	Gheorghe	Liliac	1	1990	Gheorghe Liliac
P-00642	Zoong-sun	Lim	1	1966	Zoong-sun Lim
P-05013		Lima	1	1966	 Lima
P-00482	Néjib	Limam	1	1978	Néjib Limam
P-06781	Anders	Limpar	2	1990, 1994	Anders Limpar
P-08673	Torsten	Lindberg	1	1950	Torsten Lindberg
P-08230	Victor	Lindelöf	1	2018	Victor Lindelöf
P-02527	Klaus	Lindenberger	2	1982, 1990	Klaus Lindenberger
P-02004	Arne	Linderholm	1	1938	Arne Linderholm
P-05018	Anders	Linderoth	1	1978	Anders Linderoth
P-07904	Tobias	Linderoth	2	2002, 2006	Tobias Linderoth
P-08781	Sven	Lindman	1	1974	Sven Lindman
P-02777	Gary	Lineker	2	1986, 1990	Gary Lineker
P-06606	Karol	Linetty	1	2018	Karol Linetty
P-09733	Jesse	Lingard	1	2018	Jesse Lingard
P-04627	Thomas	Linke	1	2002	Thomas Linke
P-02759	Manfred	Linzmaier	1	1990	Manfred Linzmaier
P-03756	Luka	Lipošinović	1	1958	Luka Lipošinović
P-04920	Kazimierz	Lis	1	1938	Kazimierz Lis
P-08624	Gennadiy	Litovchenko	2	1986, 1990	Gennadiy Litovchenko
P-05795	Pierre	Littbarski	3	1982, 1986, 1990	Pierre Littbarski
P-09103	Dominik	Livaković	1	2018	Dominik Livaković
P-02923	Sergio	Livingstone	1	1950	Sergio Livingstone
P-04585	Bixente	Lizarazu	2	1998, 2002	Bixente Lizarazu
P-06656	Adem	Ljajić	1	2018	Adem Ljajić
P-03165	Zlatan	Ljubijankić	1	2010	Zlatan Ljubijankić
P-06480	Danijel	Ljuboja	1	2006	Danijel Ljuboja
P-01787	Roger	Ljung	2	1990, 1994	Roger Ljung
P-01499	Freddie	Ljungberg	2	2002, 2006	Freddie Ljungberg
P-00581	Carlos	Llamosa	1	2002	Carlos Llamosa
P-02409	René	Llense	2	1934, 1938	René Llense
P-01047	Fernando	Llorente	1	2010	Fernando Llorente
P-04732	Hugo	Lloris	3	2010, 2014, 2018	Hugo Lloris
P-09899	Giovani	Lo Celso	1	2018	Giovani Lo Celso
P-04607	Ugo	Locatelli	1	1938	Ugo Locatelli
P-03361	Tony	Lochhead	1	2010	Tony Lochhead
P-09741		Locó	1	2006	 Locó
P-02597	Nicolás	Lodeiro	2	2010, 2014	Nicolás Lodeiro
P-08032	Giovanni	Lodetti	1	1966	Giovanni Lodetti
P-03303	Yuri	Lodygin	1	2014	Yuri Lodygin
P-05201	Gösta	Löfgren	1	1958	Gösta Löfgren
P-05298	Nat	Lofthouse	1	1954	Nat Lofthouse
P-02739	Ruben	Loftus-Cheek	1	2018	Ruben Loftus-Cheek
P-08700	Paul	Loga	1	1994	Paul Loga
P-04868	Gennady	Logofet	1	1970	Gennady Logofet
P-02996	Hannes	Löhr	1	1970	Hannes Löhr
P-07958	Edmond	Loichot	1	1934	Edmond Loichot
P-09410	Karl Petter	Løken	1	1994	Karl Petter Løken
P-00496	Vratislav	Lokvenc	1	2006	Vratislav Lokvenc
P-09929	Nicolas	Lombaerts	1	2014	Nicolas Lombaerts
P-07184	Juan	Lombardo	1	1958	Juan Lombardo
P-09619	Erick	Lonnis	1	2002	Erick Lonnis
P-01138	Anthony	Lopes	1	2018	Anthony Lopes
P-09431		Lopes	1	1938	 Lopes
P-05046	Wagner	Lopes	1	1998	Wagner Lopes
P-05747	Julen	Lopetegui	1	1994	Julen Lopetegui
P-03471	Christian	Lopez	2	1978, 1982	Christian Lopez
P-04542	Antonio	López	1	2006	Antonio López
P-05799	Arcadio	López	1	1934	Arcadio López
P-02013	Atilio	López	1	1950	Atilio López
P-05333	Claudio	López	2	1998, 2002	Claudio López
P-06581	Dante	López	1	2006	Dante López
P-03920	Gustavo	López	1	2002	Gustavo López
P-07242	Hilario	López	1	1930	Hilario López
P-01367	Ligorio	López	1	1958	Ligorio López
P-00138	Luis	López	1	2014	Luis López
P-00431	Narciso	López	1	1954	Narciso López
P-02402	Nelson	López	1	1966	Nelson López
P-02494	Óscar	López	1	1962	Óscar López
P-09789	Wílmer	López	1	2002	Wílmer López
P-09861	Gyula	Lóránt	1	1954	Gyula Lóránt
P-02080	Max	Lorenz	2	1966, 1970	Max Lorenz
P-08131	Benito	Lorenzi	2	1950, 1954	Benito Lorenzi
P-01287	Alfonso	Lorenzo	1	1934	Alfonso Lorenzo
P-07823	Néstor	Lorenzo	1	1990	Néstor Lorenzo
P-02310	Julio	Lores	1	1930	Julio Lores
P-09399	Peter	Lorimer	1	1974	Peter Lorimer
P-09000	Ernst	Lörtscher	1	1938	Ernst Lörtscher
P-05594	Julio	Losada	1	1970	Julio Losada
P-05600	Giacomo	Losi	1	1962	Giacomo Losi
P-07587	Jonas	Lössl	1	2018	Jonas Lössl
P-01431	Wilfried	Louis	1	1974	Wilfried Louis
P-02776	Xercès	Louis	1	1954	Xercès Louis
P-03255	João	Lourenço	1	1966	João Lourenço
P-00603	Evgeny	Lovchev	1	1970	Evgeny Lovchev
P-04803		Love	1	2006	 Love
P-02502	Peter	Løvenkrands	1	2002	Peter Løvenkrands
P-05579	Dejan	Lovren	2	2014, 2018	Dejan Lovren
P-06971	Onandi	Lowe	1	1998	Onandi Lowe
P-09676	Wolfram	Löwe	1	1974	Wolfram Löwe
P-00325	Jamie	Lowery	1	1986	Jamie Lowery
P-09755	Nilson	Loyola	1	2018	Nilson Loyola
P-08544	Hirving	Lozano	1	2018	Hirving Lozano
P-06845	John Harold	Lozano	2	1994, 1998	John Harold Lozano
P-01448	Włodzimierz	Lubański	1	1978	Włodzimierz Lubański
P-03726	Harry	Lubse	1	1978	Harry Lubse
P-02629	Mircea	Lucescu	1	1970	Mircea Lucescu
P-04923	Teddy	Lučić	3	1994, 2002, 2006	Teddy Lučić
P-01527		Lúcio	3	2002, 2006, 2010	 Lúcio
P-00397	Josef	Ludl	1	1938	Josef Ludl
P-08768	Diego	Lugano	2	2010, 2014	Diego Lugano
P-02506	Gerardo	Lugo	1	1978	Gerardo Lugo
P-04944	Milan	Luhový	1	1990	Milan Luhový
P-00750	Filipe	Luís	1	2018	Filipe Luís
P-09583		Luisão	2	2006, 2010	 Luisão
P-07057		Luisinho	2	1934, 1938	 Luisinho
P-01380	David	Luiz	1	2014	David Luiz
P-02204		Luizão	1	2002	 Luizão
P-01454		Luizinho	1	1982	 Luizinho
P-02175	Romelu	Lukaku	2	2014, 2018	Romelu Lukaku
P-07174	Aleksandar	Luković	1	2010	Aleksandar Luković
P-07732	Senad	Lulić	1	2014	Senad Lulić
P-02539	Braulio	Luna	2	1998, 2002	Braulio Luna
P-09289	Harry	Lundahl	1	1934	Harry Lundahl
P-09710	Silviu	Lung	1	1990	Silviu Lung
P-01318	Andrey	Lunyov	1	2018	Andrey Lunyov
P-05677	Massimo	Luongo	2	2014, 2018	Massimo Luongo
P-06191	Ioan	Lupescu	2	1990, 1994	Ioan Lupescu
P-09486	Nicolae	Lupescu	1	1970	Nicolae Lupescu
P-08808	Dănuț	Lupu	1	1990	Dănuț Lupu
P-04934	Albert	Luque	1	2002	Albert Luque
P-00328	Leopoldo	Luque	1	1978	Leopoldo Luque
P-06646	Gerhard	Lusenti	1	1950	Gerhard Lusenti
P-05006	Mikael	Lustig	1	2018	Mikael Lustig
P-04987	Mauro	Lustrinelli	1	2006	Mauro Lustrinelli
P-09138	Steven	Lustü	1	2002	Steven Lustü
P-01238	Friedel	Lutz	1	1966	Friedel Lutz
P-02729	Luiz	Luz	1	1934	Luiz Luz
P-03153	Antoni	Łyko	1	1938	Antoni Łyko
P-03110	Tom	Lynch	1	1934	Tom Lynch
P-05358	Volodymyr	Lyutyi	1	1990	Volodymyr Lyutyi
P-00607	Grégoire	M'Bida	1	1982	Grégoire M'Bida
P-02086	Raïs	M'Bolhi	2	2010, 2014	Raïs M'Bolhi
P-00970	Ephrem	M'Bom	1	1982	Ephrem M'Bom
P-08783	Patrick	M'Boma	2	1998, 2002	Patrick M'Boma
P-05941	Louis-Paul	M'Fédé	2	1990, 1994	Louis-Paul M'Fédé
P-05000	Mingyu	Ma	1	2002	Mingyu Ma
P-09505	Ali	Maâloul	1	2018	Ali Maâloul
P-04547	Emmanuel	Maboang	2	1990, 1994	Emmanuel Maboang
P-08718	Joe	Maca	1	1950	Joe Maca
P-08451	André	Macanga	1	2006	André Macanga
P-06283	Lou	Macari	1	1978	Lou Macari
P-09515	Antonio	Maceda	2	1982, 1986	Antonio Maceda
P-06198	Julio	Maceiras	1	1954	Julio Maceiras
P-08917	Adolfo	Machado	1	2018	Adolfo Machado
P-07016		Machado	1	1938	 Machado
P-07377	Nikos	Machlas	1	1994	Nikos Machlas
P-00960	Ferenc	Machos	1	1954	Ferenc Machos
P-02783	Juan	Machuca	1	1974	Juan Machuca
P-08499	Manuel	Machuca	1	1950	Manuel Machuca
P-03428	Dave	Mackay	1	1958	Dave Mackay
P-02071	Jimmy	Mackay	1	1974	Jimmy Mackay
P-09675	Keith	MacKay	1	1982	Keith MacKay
P-05414	John	Mackenzie	1	1954	John Mackenzie
P-08494	Jamie	Maclaren	1	2018	Jamie Maclaren
P-00436	Murdo	MacLeod	1	1990	Murdo MacLeod
P-04814	Henryk	Maculewicz	1	1978	Henryk Maculewicz
P-05152	Mehrzad	Madanchi	1	2006	Mehrzad Madanchi
P-01778	Edward	Madejski	1	1938	Edward Madejski
P-05987	Rabah	Madjer	2	1982, 1986	Rabah Madjer
P-07238	Peter	Madsen	1	2002	Peter Madsen
P-07701	Hedwiges	Maduro	1	2006	Hedwiges Maduro
P-02391	Robert	Maertens	1	1954	Robert Maertens
P-00287	Kibonge	Mafu	1	1974	Kibonge Mafu
P-03970	Mavuba	Mafuila	1	1974	Mavuba Mafuila
P-00693	Jaime	Magalhães	1	1986	Jaime Magalhães
P-00470	Federico	Magallanes	1	2002	Federico Magallanes
P-08232	Jonny	Magallón	1	2010	Jonny Magallón
P-05132	Raúl	Magaña	1	1970	Raúl Magaña
P-08510	Felix	Magath	2	1982, 1986	Felix Magath
P-02676	Christian	Maggio	1	2010	Christian Maggio
P-07140	Augusto	Magli	1	1950	Augusto Magli
P-03033	Ludovic	Magnin	2	2006, 2010	Ludovic Magnin
P-01162	Ardico	Magnini	1	1954	Ardico Magnini
P-06312	Benno	Magnusson	1	1974	Benno Magnusson
P-01150	Mats	Magnusson	1	1990	Mats Magnusson
P-03545	Hörður Björgvin	Magnússon	1	2018	Hörður Björgvin Magnússon
P-01298	José	Magriñá	1	1938	José Magriñá
P-03540	Harry	Maguire	1	2018	Harry Maguire
P-00452	Mehdi	Mahdavikia	2	1998, 2006	Mehdi Mahdavikia
P-00323	Allan	Maher	1	1974	Allan Maher
P-02008	Hossein	Mahini	1	2014	Hossein Mahini
P-02725	Abderrahmane	Mahjoub	1	1954	Abderrahmane Mahjoub
P-09243	Roman	Mählich	1	1998	Roman Mählich
P-05219	Labib	Mahmoud	1	1934	Labib Mahmoud
P-05862	Shaker	Mahmoud	1	1986	Shaker Mahmoud
P-06955	Marcel	Mahouvé	1	1998	Marcel Mahouvé
P-06973	Riyad	Mahrez	1	2014	Riyad Mahrez
P-04648	Mohammed	Mahroufi	1	1970	Mohammed Mahroufi
P-08087	Philippe	Mahut	1	1982	Philippe Mahut
P-06027	Karl	Mai	1	1954	Karl Mai
P-09704		Maicon	2	2010, 2014	 Maicon
P-00184	Luis	Maidana	1	1962	Luis Maidana
P-02456	Sepp	Maier	4	1966, 1970, 1974, 1978	Sepp Maier
P-05691	Alaa	Maihoub	1	1990	Alaa Maihoub
P-07049	Jacques	Mairesse	1	1934	Jacques Mairesse
P-05033	Brian	Maisonneuve	1	1998	Brian Maisonneuve
P-05988	Hamid	Majd Teymouri	1	1978	Hamid Majd Teymouri
P-02844	Radosław	Majdan	1	2002	Radosław Majdan
P-05085	Josef	Majer	1	1954	Josef Majer
P-00203	Stefan	Majewski	2	1982, 1986	Stefan Majewski
P-03616	Cyrille	Makanaky	1	1990	Cyrille Makanaky
P-02067	Claude	Makélélé	2	2002, 2006	Claude Makélélé
P-08839	Seiichiro	Maki	1	2006	Seiichiro Maki
P-00633	Tomoaki	Makino	1	2018	Tomoaki Makino
P-02271	Jean	Makoun	2	2010, 2014	Jean Makoun
P-01736	Mayanga	Maku	1	1974	Mayanga Maku
P-00762	Eduardo	Malásquez	1	1982	Eduardo Malásquez
P-05816	Anton	Malatinský	1	1954	Anton Malatinský
P-07779	Leif	Målberg	1	1970	Leif Målberg
P-00007	Stephen	Malcolm	1	1998	Stephen Malcolm
P-01898	Sam	Malcolmson	1	1982	Sam Malcolmson
P-00086	Aldo	Maldera	1	1978	Aldo Maldera
P-02969	Cesare	Maldini	1	1962	Cesare Maldini
P-01858	Paolo	Maldini	4	1990, 1994, 1998, 2002	Paolo Maldini
P-01634	Benjamin	Maldonado	1	1950	Benjamin Maldonado
P-09695	Stelios	Malezas	1	2010	Stelios Malezas
P-02980	Pape	Malick Diop	1	2002	Pape Malick Diop
P-03680	Robert	Malm	1	2006	Robert Malm
P-03807	Eduard	Malofeyev	1	1966	Eduard Malofeyev
P-03934	Florent	Malouda	2	2006, 2010	Florent Malouda
P-02889	Maurice	Malpas	2	1986, 1990	Maurice Malpas
P-05065	Chérif Touré	Mamam	1	2006	Chérif Touré Mamam
P-00803	Suat	Mamat	1	1954	Suat Mamat
P-04679	Zoran	Mamić	1	1998	Zoran Mamić
P-03777	Mana	Mamuwene	1	1974	Mana Mamuwene
P-06427	Aleksei	Mamykin	1	1962	Aleksei Mamykin
P-01378	Roberto	Mancini	1	1990	Roberto Mancini
P-03657	Alejandro	Mancuso	1	1994	Alejandro Mancuso
P-01758	Steve	Mandanda	2	2010, 2018	Steve Mandanda
P-01477	Sayouba	Mandé	1	2014	Sayouba Mandé
P-08329	Aïssa	Mandi	1	2014	Aïssa Mandi
P-02667	Georges	Mandjeck	1	2010	Georges Mandjeck
P-09489	Mario	Mandžukić	2	2014, 2018	Mario Mandžukić
P-09095	Sadio	Mané	1	2018	Sadio Mané
P-04673		Maneca	1	1950	 Maneca
P-06360	Ildo	Maneiro	1	1970	Ildo Maneiro
P-08825	Lionello	Manfredonia	1	1978	Lionello Manfredonia
P-01055		Manga	1	1966	 Manga
P-07965	Eliaquim	Mangala	1	2014	Eliaquim Mangala
P-02092	Manfred	Manglitz	1	1970	Manfred Manglitz
P-07339	Giannis	Maniatis	1	2014	Giannis Maniatis
P-06129	Jorge	Manicera	1	1966	Jorge Manicera
P-05696		Maniche	1	2006	 Maniche
P-04023	Wilf	Mannion	1	1950	Wilf Mannion
P-05348		Manoelzinho	1	1930	 Manoelzinho
P-09714	Kostas	Manolas	1	2014	Kostas Manolas
P-08745	Stelios	Manolas	1	1994	Stelios Manolas
P-06335		Manolo	1	1990	 Manolo
P-03351	Nikolai	Manoshin	1	1962	Nikolai Manoshin
P-01607	İlhan	Mansız	1	2002	İlhan Mansız
P-08941	Mustafa	Mansour	1	1934	Mustafa Mansour
P-04493	Faouzi	Mansouri	2	1982, 1986	Faouzi Mansouri
P-08828	Yazid	Mansouri	1	2010	Yazid Mansouri
P-08262	Alireza	Mansourian	1	1998	Alireza Mansourian
P-07334	Arne	Månsson	1	1950	Arne Månsson
P-07195	Kidumu	Mantantu	1	1974	Kidumu Mantantu
P-09140	Walter	Mantegazza	1	1974	Walter Mantegazza
P-02437		Mantorras	1	2006	 Mantorras
P-05980	Lav	Mantula	1	1954	Lav Mantula
P-05077	Carlos	Manuel	1	1986	Carlos Manuel
P-05762	Garry	Manuel	1	1974	Garry Manuel
P-08061	Mauricio	Manzano	1	1970	Mauricio Manzano
P-03489	Armando	Manzo	1	1986	Armando Manzo
P-02536	Rodolfo	Manzo	1	1978	Rodolfo Manzo
P-09118	Julio César	Manzur	1	2006	Julio César Manzur
P-06378	Antonio	Maquilón	1	1930	Antonio Maquilón
P-07847	Ramón	Maradiaga	1	1982	Ramón Maradiaga
P-06516	Diego	Maradona	4	1982, 1986, 1990, 1994	Diego Maradona
P-03758	Spiros	Marangos	1	1994	Spiros Marangos
P-08415		Marañón	1	1978	 Marañón
P-04452	Dimitar	Marashliev	1	1970	Dimitar Marashliev
P-08135	Jean-Jacques	Marcel	2	1954, 1958	Jean-Jacques Marcel
P-07277		Marcelino	1	1966	 Marcelino
P-09613		Marcelino	1	1978	 Marcelino
P-08112		Marcelo	2	2014, 2018	 Marcelo
P-08710	Roger	Marche	2	1954, 1958	Roger Marche
P-05777	Luca	Marchegiani	1	1994	Luca Marchegiani
P-07366	Carlos	Marchena	2	2006, 2010	Carlos Marchena
P-03901	Héctor	Marchena	1	1990	Héctor Marchena
P-03890	Federico	Marchetti	1	2010	Federico Marchetti
P-03343	Claudio	Marchisio	2	2010, 2014	Claudio Marchisio
P-05723		Marcos	1	2002	 Marcos
P-06536	Rubén	Marcos	1	1966	Rubén Marcos
P-06894	Martín	Marculeta	1	1934	Martín Marculeta
P-04283	Pavel	Mareš	1	2006	Pavel Mareš
P-08483	Xavier	Margairaz	1	2006	Xavier Margairaz
P-04877	Javier	Margas	1	1998	Javier Margas
P-05478	Giacomo	Mari	2	1950, 1954	Giacomo Mari
P-03772	Enver	Marić	1	1974	Enver Marić
P-03534	Silvio	Marić	1	1998	Silvio Marić
P-05674	Marko	Marin	1	2010	Marko Marin
P-04827	Luis	Marín	2	2002, 2006	Luis Marín
P-00765	Luis	Marín	1	2010	Luis Marín
P-09735	Rónald	Marín	1	1990	Rónald Marín
P-08858	Luis	Marín Sabater	1	1934	Luis Marín Sabater
P-05041	Paul	Mariner	1	1982	Paul Mariner
P-03492	Lucian	Marinescu	1	1998	Lucian Marinescu
P-04666	Jair	Marinho	1	1962	Jair Marinho
P-07188	Giampiero	Marini	1	1982	Giampiero Marini
P-02791	João	Mário	1	2018	João Mário
P-05363	Salvador	Mariona	1	1970	Salvador Mariona
P-05157	Alberto	Mariotti	1	1962	Alberto Mariotti
P-09863	Ivan	Mariz	1	1930	Ivan Mariz
P-08182	Adam	Marjam	1	1982	Adam Marjam
P-00296	Blagoje	Marjanović	1	1930	Blagoje Marjanović
P-02512	Eduard	Markarov	1	1966	Eduard Markarov
P-03888	Imre	Markos	1	1934	Imre Markos
P-03753	Aleksandar	Markov	1	1986	Aleksandar Markov
P-04967	Plamen	Markov	1	1986	Plamen Markov
P-05587	Bozidar	Marković	1	1930	Bozidar Marković
P-07929	Vlatko	Marković	1	1962	Vlatko Marković
P-04122	Calvin	Marlin	1	2002	Calvin Marlin
P-05934	Karim	Maroc	2	1982, 1986	Karim Maroc
P-00244	Giancarlo	Marocchi	1	1990	Giancarlo Marocchi
P-06908	Rui	Marques	1	2006	Rui Marques
P-02847	Rafael	Márquez	5	2002, 2006, 2010, 2014, 2018	Rafael Márquez
P-06179		Marquinhos	1	2018	 Marquinhos
P-09335	Olaf	Marschall	1	1998	Olaf Marschall
P-09941	Maurice	Martens	1	1970	Maurice Martens
P-00188		Martim	1	1934	 Martim
P-00667		Martim	1	1938	 Martim
P-09153	Alvin	Martin	1	1986	Alvin Martin
P-07003	Fred	Martin	1	1954	Fred Martin
P-04032	Joe	Martinelli	1	1934	Joe Martinelli
P-07476	Eulogio	Martínez	1	1962	Eulogio Martínez
P-02612	Fidel	Martínez	1	2014	Fidel Martínez
P-06326	Gilberto	Martínez	2	2002, 2006	Gilberto Martínez
P-00278	Jackson	Martínez	1	2014	Jackson Martínez
P-08195	Javi	Martínez	2	2010, 2014	Javi Martínez
P-03360	Jesús	Martínez	1	1978	Jesús Martínez
P-03650	Juan Ramón	Martínez	1	1970	Juan Ramón Martínez
P-01521	Mario	Martínez	1	2014	Mario Martínez
P-00938	Rony	Martínez	1	2014	Rony Martínez
P-03757	Saturnino	Martínez	1	1954	Saturnino Martínez
P-08038	Sergio	Martínez	1	1990	Sergio Martínez
P-04708	Walter	Martínez	1	2010	Walter Martínez
P-03773	William	Martínez	3	1950, 1954, 1962	William Martínez
P-07936	Gelson	Martins	1	2018	Gelson Martins
P-05380	Joel Antônio	Martins	1	1958	Joel Antônio Martins
P-05217	Jorge	Martins	1	1986	Jorge Martins
P-02814	Obafemi	Martins	1	2010	Obafemi Martins
P-06545	Bruno	Martins Indi	1	2014	Bruno Martins Indi
P-00387	Alf	Martinsen	1	1938	Alf Martinsen
P-07063	Győző	Martos	2	1978, 1982	Győző Martos
P-00010	Nigel	Martyn	2	1998, 2002	Nigel Martyn
P-09194	Silvio	Marzolini	2	1962, 1966	Silvio Marzolini
P-02385	Hamdi	Marzouki	1	2002	Hamdi Marzouki
P-01192	Mubarak	Marzouq	1	1982	Mubarak Marzouq
P-03854	Oscar	Más	1	1966	Oscar Más
P-02861	Ahmed	Masbahi	1	1994	Ahmed Masbahi
P-06163	Javier	Mascherano	4	2006, 2010, 2014, 2018	Javier Mascherano
P-02545	Ernesto	Mascheroni	1	1930	Ernesto Mascheroni
P-07295	André	Maschinot	1	1930	André Maschinot
P-00974	Humberto	Maschio	1	1962	Humberto Maschio
P-04294	Václav	Mašek	1	1962	Václav Mašek
P-00480	Guido	Masetti	2	1934, 1938	Guido Masetti
P-05733	Tsepo	Masilela	1	2010	Tsepo Masilela
P-03750	Phil	Masinga	1	1998	Phil Masinga
P-02671	Vladimir	Maslachenko	2	1958, 1962	Vladimir Maslachenko
P-04946	Anatoli	Maslyonkin	2	1958, 1962	Anatoli Maslyonkin
P-02438	Juan Carlos	Masnik	1	1974	Juan Carlos Masnik
P-05317	Marián	Masný	1	1982	Marián Masný
P-07840	Josef	Masopust	2	1958, 1962	Josef Masopust
P-03714	Roque	Máspoli	2	1950, 1954	Roque Máspoli
P-06521	Mohammad	Massad	1	2006	Mohammad Massad
P-02879	Kilasu	Massamba	1	1974	Kilasu Massamba
P-03745	Daniele	Massaro	2	1982, 1994	Daniele Massaro
P-03930	Benjamin	Massing	1	1990	Benjamin Massing
P-04312	Don	Masson	1	1978	Don Masson
P-08887	Pablo	Mastroeni	2	2002, 2006	Pablo Mastroeni
P-03539	Zygmunt	Maszczyk	1	1974	Zygmunt Maszczyk
P-07123	Bohdan	Masztaler	1	1978	Bohdan Masztaler
P-08708	Juan	Mata	2	2010, 2014	Juan Mata
P-05517	Tim	Matavž	1	2010	Tim Matavž
P-06473	Marco	Materazzi	2	2002, 2006	Marco Materazzi
P-01726		Mateus	1	2006	 Mateus
P-03237	Dorin	Mateuț	1	1990	Dorin Mateuț
P-02066	David	Mathers	1	1954	David Mathers
P-08217	Imre	Mathesz	1	1966	Imre Mathesz
P-03978	Joris	Mathijsen	2	2006, 2010	Joris Mathijsen
P-02894	Clint	Mathis	1	2002	Clint Mathis
P-09506	Roger	Mathis	1	1954	Roger Mathis
P-08531	Aymen	Mathlouthi	1	2018	Aymen Mathlouthi
P-04391	Nemanja	Matić	1	2018	Nemanja Matić
P-09548	Joël	Matip	2	2010, 2014	Joël Matip
P-06453	Karim	Matmour	1	2010	Karim Matmour
P-05250	Roberto	Matosas	1	1970	Roberto Matosas
P-01731	Sándor	Mátrai	3	1958, 1962, 1966	Sándor Mátrai
P-01719	Naoki	Matsuda	1	2002	Naoki Matsuda
P-06743	Daisuke	Matsui	1	2010	Daisuke Matsui
P-01993	Lothar	Matthäus	5	1982, 1986, 1990, 1994, 1998	Lothar Matthäus
P-05206	Stanley	Matthews	2	1950, 1954	Stanley Matthews
P-09767	Étienne	Mattler	3	1930, 1934, 1938	Étienne Mattler
P-06385	Carlo	Mattrel	1	1962	Carlo Mattrel
P-08606	Blaise	Matuidi	2	2014, 2018	Blaise Matuidi
P-01426	Željko	Matuš	1	1962	Željko Matuš
P-06393	Adam	Matysek	1	2002	Adam Matysek
P-04643	Waldemar	Matysik	2	1982, 1986	Waldemar Matysik
P-03449		Maurinho	1	1954	 Maurinho
P-08898	Marcel	Mauron	1	1954	Marcel Mauron
P-07017	Bahram	Mavaddat	1	1978	Bahram Mavaddat
P-00555	Matej	Mavrič	1	2010	Matej Mavrič
P-07249	Rio	Mavuba	1	2014	Rio Mavuba
P-02308		Maxwell	1	2014	 Maxwell
P-08901	Luis	Mayanés	1	1950	Luis Mayanés
P-06567	Ramón	Mayeregger	1	1958	Ramón Mayeregger
P-03813	Abdullah	Mayouf	1	1982	Abdullah Mayouf
P-01779	Mohammad Rashid	Mazaheri	1	2018	Mohammad Rashid Mazaheri
P-05082		Mazinho	2	1990, 1994	 Mazinho
P-04480	Włodzimierz	Mazur	1	1978	Włodzimierz Mazur
P-04514	Ladislao	Mazurkiewicz	3	1966, 1970, 1974	Ladislao Mazurkiewicz
P-09477	Sandro	Mazzola	3	1966, 1970, 1974	Sandro Mazzola
P-02842	Kylian	Mbappé	1	2018	Kylian Mbappé
P-08004	Adama	Mbengue	1	2018	Adama Mbengue
P-05937	Stéphane	Mbia	2	2010, 2014	Stéphane Mbia
P-06442	Kara	Mbodji	1	2018	Kara Mbodji
P-07630	Émile	Mbouh	2	1990, 1994	Émile Mbouh
P-07516	Gary	McAllister	1	1990	Gary McAllister
P-03295	Jason	McAteer	2	1994, 2002	Jason McAteer
P-09261	Frank	McAvennie	1	1986	Frank McAvennie
P-07284	Brian	McBride	3	1998, 2002, 2006	Brian McBride
P-09470	Stuart	McCall	1	1990	Stuart McCall
P-03822	Benni	McCarthy	2	1998, 2002	Benni McCarthy
P-03880	Mick	McCarthy	1	1990	Mick McCarthy
P-08866	John	McClelland	2	1982, 1986	John McClelland
P-06232	Billy	McClure	1	1982	Billy McClure
P-04672	Ally	McCoist	1	1990	Ally McCoist
P-00337	Ian	McColl	1	1958	Ian McColl
P-04159	David	McCreery	2	1982, 1986	David McCreery
P-06892	Sammy	McCrory	1	1958	Sammy McCrory
P-04275	Terry	McDermott	1	1982	Terry McDermott
P-04123	Alan	McDonald	1	1986	Alan McDonald
P-09566	Colin	McDonald	1	1958	Colin McDonald
P-00996	Bill	McGarry	1	1954	Bill McGarry
P-09935	Bart	McGhee	1	1930	Bart McGhee
P-08305	Michael	McGlinchey	1	2010	Michael McGlinchey
P-06430	Eddie	McGoldrick	1	1994	Eddie McGoldrick
P-02118	Ryan	McGowan	1	2014	Ryan McGowan
P-02289	Danny	McGrain	2	1974, 1982	Danny McGrain
P-07134	Paul	McGrath	2	1990, 1994	Paul McGrath
P-04617	Jimmy	McIlroy	1	1958	Jimmy McIlroy
P-02964	Sammy	McIlroy	2	1982, 1986	Sammy McIlroy
P-04157	Ed	McIlvenny	1	1950	Ed McIlvenny
P-07807	Alan	McInally	1	1990	Alan McInally
P-06269	Matt	McKay	1	2014	Matt McKay
P-08423	Stewart	McKimmie	1	1990	Stewart McKimmie
P-07153	Billy	McKinlay	1	1998	Billy McKinlay
P-06666	Tosh	McKinlay	1	1998	Tosh McKinlay
P-09234	Willie	McLean	1	1934	Willie McLean
P-01589	Alex	McLeish	3	1982, 1986, 1990	Alex McLeish
P-04260	Alan	McLoughlin	2	1990, 1994	Alan McLoughlin
P-07223	Steve	McMahon	1	1990	Steve McMahon
P-05294	Steve	McManaman	1	1998	Steve McManaman
P-09231	Alf	McMichael	1	1958	Alf McMichael
P-09577	Ian	McMillan	1	1954	Ian McMillan
P-07590	Bernard	McNally	1	1986	Bernard McNally
P-03765	Jackie	McNamara	1	1998	Jackie McNamara
P-09662	Peter	McParland	1	1958	Peter McParland
P-07398	David	McPherson	1	1990	David McPherson
P-02864	Gordon	McQueen	2	1974, 1978	Gordon McQueen
P-05102	Paul	McStay	2	1986, 1990	Paul McStay
P-03621	Giuseppe	Meazza	2	1934, 1938	Giuseppe Meazza
P-03241	Paul	Mebus	1	1954	Paul Mebus
P-06691	Gary	Medel	2	2010, 2014	Gary Medel
P-03497	Hernán	Medford	2	1990, 2002	Hernán Medford
P-05081	Alberto	Medina	1	2010	Alberto Medina
P-05069	Mario	Medina	1	1978	Mario Medina
P-08645	Ramón	Medina Bello	1	1994	Ramón Medina Bello
P-03945	Abdellah	Medjadi Liegeon	1	1986	Abdellah Medjadi Liegeon
P-00313	Carl	Medjani	2	2010, 2014	Carl Medjani
P-05104	Haris	Medunjanin	1	2014	Haris Medunjanin
P-00345	Dirk	Medved	1	1994	Dirk Medved
P-07511	Terry	Medwin	1	1958	Terry Medwin
P-00019	Frans Alfred	Meeng	1	1938	Frans Alfred Meeng
P-01710	Eissa	Meer	1	1990	Eissa Meer
P-01780	Ibrahim	Meer	1	1990	Ibrahim Meer
P-09553	Victor	Mees	1	1954	Victor Mees
P-06469	Walter	Meeuws	1	1982	Walter Meeuws
P-04623	Fodil	Megharia	1	1986	Fodil Megharia
P-03832	Admir	Mehmedi	1	2014	Admir Mehmedi
P-02930	Eugen	Meier	2	1954, 1962	Eugen Meier
P-02548	Fernando	Meira	1	2006	Fernando Meira
P-06038	Raul	Meireles	2	2010, 2014	Raul Meireles
P-08057	Abdoulaye	Méïté	1	2006	Abdoulaye Méïté
P-09669	Alexander	Mejía	1	2014	Alexander Mejía
P-03933	Dionisio	Mejía	1	1930	Dionisio Mejía
P-09392	José Milton	Melgar	1	1994	José Milton Melgar
P-05325	Vojislav	Melić	1	1962	Vojislav Melić
P-06584	Mourad	Melki	2	1998, 2002	Mourad Melki
P-05765	Bror	Mellberg	2	1950, 1958	Bror Mellberg
P-05107	Olof	Mellberg	2	2002, 2006	Olof Mellberg
P-02023	Sofiane	Melliti	1	2006	Sofiane Melliti
P-02605	Felipe	Melo	1	2010	Felipe Melo
P-06937	Ángel	Melogno	1	1930	Ángel Melogno
P-07171	Eugenio	Mena	1	2014	Eugenio Mena
P-02352	Mario	Mena	1	1950	Mario Mena
P-00251	Djamel	Menad	1	1986	Djamel Menad
P-07041	János	Mencel	1	1962	János Mencel
P-01394	Pedro	Mendes	1	2010	Pedro Mendes
P-06477	Édison	Méndez	3	2002, 2006, 2014	Édison Méndez
P-02001	Gustavo	Méndez	1	2002	Gustavo Méndez
P-06376	Mario	Méndez	1	1962	Mario Méndez
P-01243	Mario	Méndez	1	2006	Mario Méndez
P-09957	Omar	Méndez	1	1954	Omar Méndez
P-00410	Rafael	Méndez	1	1930	Rafael Méndez
P-05346	Sergio	Méndez	1	1970	Sergio Méndez
P-02339	Gaizka	Mendieta	1	2002	Gaizka Mendieta
P-05874	Guillermo	Mendizábal	1	1978	Guillermo Mendizábal
P-02600	Jorge	Mendonça	1	1978	Jorge Mendonça
P-04900		Mendonça	1	2006	 Mendonça
P-00933	Alexis	Mendoza	2	1990, 1994	Alexis Mendoza
P-02900	Alfredo	Mendoza	1	1986	Alfredo Mendoza
P-06217	Sergio	Mendoza	1	2010	Sergio Mendoza
P-05755	Benjamin	Mendy	1	2018	Benjamin Mendy
P-09999	Hamza	Mendyl	1	2018	Hamza Mendyl
P-04327	Norberto	Menéndez	1	1958	Norberto Menéndez
P-05598		Mengálvio	1	1962	 Mengálvio
P-04242	Giampaolo	Menichelli	1	1962	Giampaolo Menichelli
P-02695	John	Mensah	2	2006, 2010	John Mensah
P-02694	Jonathan	Mensah	2	2010, 2014	Jonathan Mensah
P-00951	Stanley	Menzo	1	1990	Stanley Menzo
P-07113	Tony	Meola	3	1990, 1994, 2002	Tony Meola
P-07359	Gabriel	Mercado	1	2018	Gabriel Mercado
P-05040	Magdaleno	Mercado	1	1966	Magdaleno Mercado
P-09255	Sigifredo	Mercado	1	2002	Sigifredo Mercado
P-05519	James	Meredith	1	2018	James Meredith
P-07761	Yassine	Meriah	1	2018	Yassine Meriah
P-02934	Joseph	Mermans	1	1954	Joseph Mermans
P-03667	Luigi	Meroni	1	1966	Luigi Meroni
P-01492	Gil	Merrick	1	1954	Gil Merrick
P-00635	Abdelkrim	Merry	1	1986	Abdelkrim Merry
P-00646	Mustafa	Merry	1	1986	Mustafa Merry
P-01290	Paul	Merson	1	1998	Paul Merson
P-06609	Dries	Mertens	2	2014, 2018	Dries Mertens
P-00260	Per	Mertesacker	3	2006, 2010, 2014	Per Mertesacker
P-05824	Chaabane	Merzekane	1	1982	Chaabane Merzekane
P-05215	Djamel	Mesbah	2	2010, 2014	Djamel Mesbah
P-05967	Álvaro	Mesén	2	2002, 2006	Álvaro Mesén
P-01686	Mikhail	Meskhi	1	1962	Mikhail Meskhi
P-00820	Rizah	Mešković	1	1974	Rizah Mešković
P-06410	Lionel	Messi	4	2006, 2010, 2014, 2018	Lionel Messi
P-07715	Gerald	Messlender	1	1982	Gerald Messlender
P-08722	Ferenc	Mészáros	2	1978, 1982	Ferenc Mészáros
P-01793	Kálmán	Mészöly	2	1962, 1966	Kálmán Mészöly
P-08406	Vasil	Metodiev	1	1966	Vasil Metodiev
P-05455	Slava	Metreveli	3	1962, 1966, 1970	Slava Metreveli
P-00198	Lucien	Mettomo	1	2002	Lucien Mettomo
P-05707	Christoph	Metzelder	2	2002, 2006	Christoph Metzelder
P-09544	Karl-Heinz	Metzner	1	1954	Karl-Heinz Metzner
P-05305	Thomas	Meunier	1	2018	Thomas Meunier
P-06010	Maximiliano	Meza	1	2018	Maximiliano Meza
P-01400	Imed	Mhedhebi	1	2002	Imed Mhedhebi
P-00445	Mwape	Mialo	1	1974	Mwape Mialo
P-02687	Jan	Michaelsen	1	2002	Jan Michaelsen
P-08822	Henri	Michel	1	1978	Henri Michel
P-08693	Luis Ernesto	Michel	1	2010	Luis Ernesto Michel
P-08314	Niek	Michel	1	1938	Niek Michel
P-09467		Míchel	2	1986, 1990	 Míchel
P-05621	Johan	Micoud	1	2002	Johan Micoud
P-03597	Ramón	Mifflin	1	1970	Ramón Mifflin
P-09644	Václav	Migas	1	1970	Václav Migas
P-00863	Simon	Mignolet	2	2014, 2018	Simon Mignolet
P-08915		Miguel	2	2006, 2010	 Miguel
P-03260		Migueli	1	1978	 Migueli
P-06216	Oscar	Míguez	2	1950, 1954	Oscar Míguez
P-05593	Atanas	Mihailov	1	1974	Atanas Mihailov
P-05511	Dragoslav	Mihajlović	1	1930	Dragoslav Mihajlović
P-00714	Prvoslav	Mihajlović	1	1950	Prvoslav Mihajlović
P-00070	Siniša	Mihajlović	1	1998	Siniša Mihajlović
P-09368	Gheorghe	Mihali	1	1994	Gheorghe Mihali
P-03133	Borislav	Mihaylov	3	1986, 1994, 1998	Borislav Mihaylov
P-06153	Petar	Mihtarski	1	1994	Petar Mihtarski
P-02321	Predrag	Mijatović	1	1998	Predrag Mijatović
P-01526	Kees	Mijnders	1	1934	Kees Mijnders
P-00276	John Obi	Mikel	2	2014, 2018	John Obi Mikel
P-03478	Luděk	Mikloško	1	1990	Luděk Mikloško
P-03487	Sebastian	Mila	1	2006	Sebastian Mila
P-08986	Kiril	Milanov	1	1974	Kiril Milanov
P-08980	Denis	Milar	1	1974	Denis Milar
P-07326	Jackie	Milburn	1	1950	Jackie Milburn
P-02031	Håkan	Mild	1	1994	Håkan Mild
P-04766	Nikola	Milenković	1	2018	Nikola Milenković
P-06213	Artem	Milevskyi	1	2006	Artem Milevskyi
P-09081	Nenad	Milijaš	1	2010	Nenad Milijaš
P-06485	Arkadiusz	Milik	1	2018	Arkadiusz Milik
P-01748	Sergej	Milinković-Savić	1	2018	Sergej Milinković-Savić
P-02198	Željko	Milinovič	1	2002	Željko Milinovič
P-04657	Jim	Milisavljevic	1	1974	Jim Milisavljevic
P-05822	Diego	Milito	1	2010	Diego Milito
P-06557	Gabriel	Milito	1	2006	Gabriel Milito
P-07201	Luka	Milivojević	1	2018	Luka Milivojević
P-04398	Frank	Mill	1	1990	Frank Mill
P-00994	Roger	Milla	3	1982, 1990, 1994	Roger Milla
P-04113	Rodrigo	Millar	1	2010	Rodrigo Millar
P-08509	Luc	Millecamps	1	1982	Luc Millecamps
P-03924	Marc	Millecamps	1	1982	Marc Millecamps
P-07963	Colin	Miller	1	1986	Colin Miller
P-03586	Roy	Miller	1	2014	Roy Miller
P-03465	Willie	Miller	2	1982, 1986	Willie Miller
P-04532	Mark	Milligan	4	2006, 2010, 2014, 2018	Mark Milligan
P-00925	Danny	Mills	1	2002	Danny Mills
P-09667	Mick	Mills	1	1982	Mick Mills
P-04427	James	Milner	2	2010, 2014	James Milner
P-08330	Savo	Milošević	2	1998, 2006	Savo Milošević
P-02407	Sima	Milovanov	1	1954	Sima Milovanov
P-04151		Miloy	1	2006	 Miloy
P-01358	Milorad	Milutinović	1	1958	Milorad Milutinović
P-05338	Miloš	Milutinović	2	1954, 1958	Miloš Milutinović
P-05343	Byung-dae	Min	1	1954	Byung-dae Min
P-01385	Yerry	Mina	1	2018	Yerry Mina
P-05076	Felipe	Miñambres	1	1994	Felipe Miñambres
P-02999	Mehrdad	Minavand	1	1998	Mehrdad Minavand
P-01094	Oswaldo	Minda	1	2014	Oswaldo Minda
P-01948		Mineiro	1	2006	 Mineiro
P-09050	Severino	Minelli	2	1934, 1938	Severino Minelli
P-06363	Lorenzo	Minotti	1	1994	Lorenzo Minotti
P-06515	Antonis	Minou	1	1994	Antonis Minou
P-09975	José	Miracca	1	1930	José Miracca
P-08027	Kevin	Mirallas	1	2014	Kevin Mirallas
P-07642	Aleksei	Miranchuk	1	2018	Aleksei Miranchuk
P-02241	Anton	Miranchuk	1	2018	Anton Miranchuk
P-04719	Agustín	Miranda	1	1958	Agustín Miranda
P-09982		Miranda	1	2018	 Miranda
P-09379		Mirandinha	1	1974	 Mirandinha
P-06448	Zoran	Mirković	1	1998	Zoran Mirković
P-00050	Ebrahim	Mirzapour	1	2006	Ebrahim Mirzapour
P-08186	Zvjezdan	Misimović	1	2014	Zvjezdan Misimović
P-00065	Dale	Mitchell	1	1986	Dale Mitchell
P-07614	Rajko	Mitić	2	1950, 1954	Rajko Mitić
P-04999	Vasil	Mitkov	1	1970	Vasil Mitkov
P-00352	Kostas	Mitroglou	1	2014	Kostas Mitroglou
P-06175	Tasos	Mitropoulos	1	1994	Tasos Mitropoulos
P-03872	Aleksandar	Mitrović	1	2018	Aleksandar Mitrović
P-00986	Tsuneyasu	Miyamoto	2	2002, 2006	Tsuneyasu Miyamoto
P-06349	Johan	Mjällby	1	2002	Johan Mjällby
P-06057	Mohamed	Mkacher	1	2002	Mohamed Mkacher
P-02050	Emir	Mkademi	1	2002	Emir Mkademi
P-02655	Helman	Mkhalele	1	1998	Helman Mkhalele
P-02398	Stoycho	Mladenov	1	1986	Stoycho Mladenov
P-06025	Józef	Młynarczyk	2	1982, 1986	Józef Młynarczyk
P-09351	Jawhar	Mnari	1	2006	Jawhar Mnari
P-07907	Thabo	Mngomeni	1	2002	Thabo Mngomeni
P-01695	Bennett	Mnguni	1	2002	Bennett Mnguni
P-05192	Themba	Mnguni	1	1998	Themba Mnguni
P-06634		Moacir	1	1958	 Moacir
P-04138	Mihai	Mocanu	1	1970	Mihai Mocanu
P-09339	Neil	Mochan	1	1954	Neil Mochan
P-07043	Hans	Mock	1	1938	Hans Mock
P-04578		Moderato	1	1930	 Moderato
P-06340	Teko	Modise	1	2010	Teko Modise
P-03056	Luka	Modrić	3	2006, 2014, 2018	Luka Modrić
P-03374	Jacques	Moeschal	1	1930	Jacques Moeschal
P-04338	Pavel	Mogilevets	1	2014	Pavel Mogilevets
P-00567	Abdulaziz	Mohamed	1	1990	Abdulaziz Mohamed
P-07748	Abdulrahman	Mohamed	1	1990	Abdulrahman Mohamed
P-01971	Habib	Mohamed	1	2006	Habib Mohamed
P-00700	Hassan	Mohamed	1	1990	Hassan Mohamed
P-03713	Munir	Mohamedi	1	2018	Munir Mohamedi
P-09251	Milad	Mohammadi	1	2018	Milad Mohammadi
P-07897	Nader	Mohammadkhani	1	1998	Nader Mohammadkhani
P-03482	Haris	Mohammed	1	1986	Haris Mohammed
P-01747	Ismail	Mohammed Sharif	1	1986	Ismail Mohammed Sharif
P-04241	Marwan	Mohsen	1	2018	Marwan Mohsen
P-09005	Johan	Mojica	1	2018	Johan Mojica
P-00420	Mahmoud	Mokhtar	1	1934	Mahmoud Mokhtar
P-04922	Aaron	Mokoena	2	2002, 2010	Aaron Mokoena
P-00956	Teboho	Mokoena	1	2002	Teboho Mokoena
P-01323	William	Mokoena	1	1998	William Mokoena
P-07921	Jaap	Mol	1	1934	Jaap Mol
P-04548	Jan	Mølby	1	1986	Jan Mølby
P-03097	Viorel	Moldovan	2	1994, 1998	Viorel Moldovan
P-04494	Ioachim	Moldoveanu	1	1938	Ioachim Moldoveanu
P-04234	Thabang	Molefe	1	2002	Thabang Molefe
P-09781	José	Molina	1	1998	José Molina
P-01057	Andreas	Möller	3	1990, 1994, 1998	Andreas Möller
P-05922	Jan	Möller	1	1978	Jan Möller
P-06990	Peter	Møller	1	1998	Peter Møller
P-09152	Miklos	Molnar	1	1998	Miklos Molnar
P-08023	Dezső	Molnár	1	1966	Dezső Molnár
P-07270	Pavol	Molnár	2	1958, 1962	Pavol Molnár
P-03373	Luis	Molowny	1	1950	Luis Molowny
P-01202	Raymond	Mommens	2	1982, 1986	Raymond Mommens
P-03749	Faryd	Mondragón	3	1994, 1998, 2014	Faryd Mondragón
P-05809	Mario	Monge	1	1970	Mario Monge
P-08244	Teruyuki	Moniwa	1	2006	Teruyuki Moniwa
P-04063	Frank	Moniz	1	1950	Frank Moniz
P-07754	Tivadar	Monostori	2	1958, 1962	Tivadar Monostori
P-08252	Nacho	Monreal	1	2018	Nacho Monreal
P-08739	Pejman	Montazeri	2	2014, 2018	Pejman Montazeri
P-02873	Vincenzo	Montella	1	2002	Vincenzo Montella
P-09149	Alfonso	Montemayor	1	1950	Alfonso Montemayor
P-02973	Jefferson	Montero	1	2014	Jefferson Montero
P-04440	Mauricio	Montero	1	1990	Mauricio Montero
P-02095	Paolo	Montero	1	2002	Paolo Montero
P-06095	Julio	Montero Castillo	2	1970, 1974	Julio Montero Castillo
P-07099	Francisco	Montes	1	1970	Francisco Montes
P-02635	Juan Pablo	Montes	1	2014	Juan Pablo Montes
P-03789	Luis	Monti	2	1930, 1934	Luis Monti
P-04595	José	Montiel	1	2006	José Montiel
P-04570	Riccardo	Montolivo	1	2010	Riccardo Montolivo
P-03810	Eraldo	Monzeglio	2	1934, 1938	Eraldo Monzeglio
P-03820	Pedro	Monzón	1	1990	Pedro Monzón
P-03992	Seon-min	Moon	1	2018	Seon-min Moon
P-05905	Bobby	Moore	3	1962, 1966, 1970	Bobby Moore
P-08141	Craig	Moore	2	2006, 2010	Craig Moore
P-04462	Joe-Max	Moore	3	1994, 1998, 2002	Joe-Max Moore
P-03646	Terry	Moore	1	1986	Terry Moore
P-03968	George	Moorhouse	2	1930, 1934	George Moorhouse
P-00605	Aaron	Mooy	1	2018	Aaron Mooy
P-08455	Bruno	Mora	1	1962	Bruno Mora
P-04913	Cristian	Mora	1	2006	Cristian Mora
P-07637	João	Morais	1	1966	João Morais
P-06227	Carlos	Morales	1	1998	Carlos Morales
P-09673	Julio	Morales	1	1970	Julio Morales
P-01869	Ramón	Morales	2	2002, 2006	Ramón Morales
P-06065	Richard	Morales	1	2002	Richard Morales
P-03845	Víctor	Morales	1	1930	Víctor Morales
P-06233	Kevin	Moran	2	1990, 1994	Kevin Moran
P-00740	Rubén	Morán	1	1950	Rubén Morán
P-08581	Vangelis	Moras	2	2010, 2014	Vangelis Moras
P-02945	António	Morato	1	1986	António Morato
P-09222	Anton	Moravčík	1	1958	Anton Moravčík
P-02487	Ľubomír	Moravčík	1	1990	Ľubomír Moravčík
P-07421	József	Moravetz	1	1934	József Moravetz
P-03254	Leonel	Moreira	1	2018	Leonel Moreira
P-03775	Claudio	Morel	1	2010	Claudio Morel
P-04474	Fernando	Morena	1	1974	Fernando Morena
P-00201	Héctor	Moreno	3	2010, 2014, 2018	Héctor Moreno
P-08452	Jaime	Moreno	1	1994	Jaime Moreno
P-09185	Luis Antonio	Moreno	1	1998	Luis Antonio Moreno
P-03145	Mario	Moreno	1	1962	Mario Moreno
P-07768	Fritz	Morf	1	1962	Fritz Morf
P-02856	Lester	Morgan	1	2002	Lester Morgan
P-01111	Willie	Morgan	1	1974	Willie Morgan
P-01593	Fernando	Morientes	2	1998, 2002	Fernando Morientes
P-05865	Francesco	Moriero	1	1998	Francesco Moriero
P-03022	Takayuki	Morimoto	1	2010	Takayuki Morimoto
P-09213	Francesco	Morini	1	1974	Francesco Morini
P-03731	Gustavo	Morínigo	1	2002	Gustavo Morínigo
P-04085	Ryuzo	Morioka	1	2002	Ryuzo Morioka
P-03629	Surprise	Moriri	1	2010	Surprise Moriri
P-05159	Masato	Morishige	1	2014	Masato Morishige
P-04309	Hiroaki	Morishima	2	1998, 2002	Hiroaki Morishima
P-01070	Max	Morlock	1	1954	Max Morlock
P-07718	Giuseppe	Moro	1	1950	Giuseppe Moro
P-04281	Gennady	Morozov	1	1986	Gennady Morozov
P-09178	Chris	Morris	1	1990	Chris Morris
P-01222	Clinton	Morrison	1	2002	Clinton Morrison
P-06985	Sam	Morsy	1	2018	Sam Morsy
P-07259	Stan	Mortensen	1	1950	Stan Mortensen
P-06178	Lebogang	Morula	1	1998	Lebogang Morula
P-05122	Kamel	Mosaoud	1	1934	Kamel Mosaoud
P-02155	Gustavo	Moscoso	1	1982	Gustavo Moscoso
P-08787	Victor	Moses	2	2014, 2018	Victor Moses
P-02353	John	Moshoeu	1	1998	John Moshoeu
P-02143	Roberto	Mosquera	1	1978	Roberto Mosquera
P-01620	Glen	Moss	1	2010	Glen Moss
P-08019	Mehdi	Mostefa	1	2014	Mehdi Mostefa
P-02772	Aleksandr	Mostovoi	2	1994, 2002	Aleksandr Mostovoi
P-01704	Antonio	Mota	2	1962, 1970	Antonio Mota
P-03977	Salvador	Mota	1	1954	Salvador Mota
P-07647	Thiago	Motta	1	2014	Thiago Motta
P-08107	Malek	Mouath	1	2006	Malek Mouath
P-02768	François	Moubandje	1	2018	François Moubandje
P-05031	Abdelfettah	Mouddani	1	1986	Abdelfettah Mouddani
P-09151	Benjamin	Moukandjo	1	2014	Benjamin Moukandjo
P-02462	Eliseo	Mouriño	1	1958	Eliseo Mouriño
P-07954	João	Moutinho	2	2014, 2018	João Moutinho
P-05655	Georges	Mouyémé	1	1994	Georges Mouyémé
P-09991	Robert	Mouynet	1	1958	Robert Mouynet
P-09621	Piotr	Mowlik	1	1982	Piotr Mowlik
P-03754	Carlos	Mozer	1	1990	Carlos Mozer
P-07691	Émile	Mpenza	1	1998	Émile Mpenza
P-02252	Mbo	Mpenza	2	1998, 2002	Mbo Mpenza
P-08963	Katlego	Mphela	1	2010	Katlego Mphela
P-07116	Gustav	Mráz	1	1958	Gustav Mráz
P-03984	Dragan	Mrđa	1	2010	Dragan Mrđa
P-03509	Srđan	Mrkušić	1	1950	Srđan Mrkušić
P-09236	Marjan	Mrmić	1	1998	Marjan Mrmić
P-07372	Patrick	Mtiliga	1	2010	Patrick Mtiliga
P-00854	Ermes	Muccinelli	2	1950, 1954	Ermes Muccinelli
P-04872	Ján	Mucha	1	2010	Ján Mucha
P-06392	Jackie	Mudie	1	1958	Jackie Mudie
P-05344	José	Muguerza	1	1934	José Muguerza
P-02568	Mensur	Mujdža	1	2014	Mensur Mujdža
P-09807	Muhamed	Mujić	1	1962	Muhamed Mujić
P-02448	Juan	Mujica	1	1970	Juan Mujica
P-08067	MacDonald	Mukansi	1	2002	MacDonald Mukansi
P-06383	Mwanza	Mukombo	1	1974	Mwanza Mukombo
P-05285	Ndaye	Mulamba	1	1974	Ndaye Mulamba
P-09687	Jimmy	Mullen	2	1950, 1954	Jimmy Mullen
P-05834	Lucien	Muller	1	1966	Lucien Muller
P-00538	Dieter	Müller	1	1978	Dieter Müller
P-02483	Gerd	Müller	2	1970, 1974	Gerd Müller
P-07727	Hansi	Müller	2	1978, 1982	Hansi Müller
P-06344		Müller	3	1986, 1990, 1994	 Müller
P-00169	Patrick	Müller	1	2006	Patrick Müller
P-00164	Sándor	Müller	1	1982	Sándor Müller
P-00904	Thomas	Müller	3	2010, 2014, 2018	Thomas Müller
P-01041	Alan	Mullery	1	1970	Alan Mullery
P-01465	Dave	Mulligan	1	2010	Dave Mulligan
P-09641	In-guk	Mun	1	2010	In-guk Mun
P-05164	Juan	Muñante	1	1978	Juan Muñante
P-07488	Jacky	Munaron	2	1982, 1986	Jacky Munaron
P-00927	Antonio	Munguía	1	1970	Antonio Munguía
P-09228	José Luis	Munguía	1	1982	José Luis Munguía
P-03708	Carlos	Muñoz	1	1986	Carlos Muñoz
P-01761	Elías	Muñoz	1	1966	Elías Muñoz
P-09797	Horacio	Muñoz	1	1930	Horacio Muñoz
P-01054	Manuel	Muñoz	1	1950	Manuel Muñoz
P-07549	Rodrigo	Muñoz	1	2014	Rodrigo Muñoz
P-02970	Sulley	Muntari	3	2006, 2010, 2014	Sulley Muntari
P-01838	Dorinel	Munteanu	2	1994, 1998	Dorinel Munteanu
P-07726	Vladimir	Muntyan	1	1970	Vladimir Muntyan
P-04906	Gustavo	Munúa	1	2002	Gustavo Munúa
P-04464	Reinhold	Münzenberg	2	1934, 1938	Reinhold Münzenberg
P-03827	Maciej	Murawski	1	2002	Maciej Murawski
P-00898	Luis	Muriel	1	2018	Luis Muriel
P-03824	Michael Amir	Murillo	1	2018	Michael Amir Murillo
P-01840	Miguel	Murillo	1	1930	Miguel Murillo
P-09825	Óscar	Murillo	1	2018	Óscar Murillo
P-04019	Bruce	Murray	1	1990	Bruce Murray
P-07617	Jimmy	Murray	1	1958	Jimmy Murray
P-05166	Abdullah	Musa	1	1990	Abdullah Musa
P-09657	Ahmed	Musa	2	2014, 2018	Ahmed Musa
P-09670	Muhsin	Musabah	1	1990	Muhsin Musabah
P-03786	Adam	Musiał	1	1974	Adam Musiał
P-02618	Julio	Musimessi	1	1958	Julio Musimessi
P-02675	Fernando	Muslera	3	2010, 2014, 2018	Fernando Muslera
P-04164	Luis	Musrri	1	1998	Luis Musrri
P-07154	Roberto	Mussi	1	1994	Roberto Mussi
P-05340	Braulio	Musso	1	1962	Braulio Musso
P-05836	Shkodran	Mustafi	1	2014	Shkodran Mustafi
P-09525	Yoshinori	Muto	1	2018	Yoshinori Muto
P-07505	Ramón	Muttis	1	1930	Ramón Muttis
P-03523	Dražen	Mužinić	1	1974	Dražen Mužinić
P-03400	Zsolt	Muzsnay	1	1990	Zsolt Muzsnay
P-08931	Yvon	Mvogo	1	2018	Yvon Mvogo
P-06452	Kazadi	Mwamba	1	1974	Kazadi Mwamba
P-01534	Roy	Myers	1	1990	Roy Myers
P-05411	Thomas	Myhre	1	1998	Thomas Myhre
P-08200	Erik	Mykland	2	1994, 1998	Erik Mykland
P-06664	Tomokazu	Myojin	1	2002	Tomokazu Myojin
P-06117	David	Myrie	1	2014	David Myrie
P-01786	Alfred	N'Diaye	1	2018	Alfred N'Diaye
P-06062	Khadim	N'Diaye	1	2018	Khadim N'Diaye
P-04788	Makhtar	N'Diaye	1	2002	Makhtar N'Diaye
P-02901	Moussa	N'Diaye	1	2002	Moussa N'Diaye
P-02107	Sylvain	N'Diaye	1	2002	Sylvain N'Diaye
P-02314	Victor	N'Dip	2	1990, 1994	Victor N'Dip
P-09836	René	N'Djeya	1	1982	René N'Djeya
P-05418	Joseph	N'Do	2	1998, 2002	Joseph N'Do
P-08281	François	N'Doumbé	1	1982	François N'Doumbé
P-08583	Alassane	N'Dour	1	2002	Alassane N'Dour
P-09204	Cheikh	N'Doye	1	2018	Cheikh N'Doye
P-01324	Guy	N'dy Assembé	1	2010	Guy N'dy Assembé
P-03186	Jacques	N'Guea	1	1982	Jacques N'Guea
P-03176	Landry	N'Guémo	2	2010, 2014	Landry N'Guémo
P-07019	Thomas	N'Kono	3	1982, 1990, 1994	Thomas N'Kono
P-04112	Jean Kalala	N'Tumba	1	1974	Jean Kalala N'Tumba
P-09877	Andrew	Nabbout	1	2018	Andrew Nabbout
P-08736		Nacho	1	2018	 Nacho
P-02275	Albert	Nađ	1	2006	Albert Nađ
P-08062	Miguel Ángel	Nadal	3	1994, 1998, 2002	Miguel Ángel Nadal
P-04206	Hassan	Nader	1	1994	Hassan Nader
P-06902	Mehdi	Nafti	1	2006	Mehdi Nafti
P-03925	Yuto	Nagatomo	3	2010, 2014, 2018	Yuto Nagatomo
P-03417	Hamdi	Nagguez	1	2018	Hamdi Nagguez
P-06150	Antal	Nagy	1	1966	Antal Nagy
P-09674	Antal	Nagy	1	1986	Antal Nagy
P-02039	István	Nagy	2	1962, 1966	István Nagy
P-01729	József	Nagy	1	1986	József Nagy
P-08647	László	Nagy	1	1978	László Nagy
P-08480	Miklós	Nagy	1	1938	Miklós Nagy
P-03068	Mokhtar	Naili	1	1978	Mokhtar Naili
P-05817	Andy	Najar	1	2014	Andy Najar
P-09878	Dragutin	Najdanović	1	1930	Dragutin Najdanović
P-07021	Manuel	Nájera	1	1978	Manuel Nájera
P-00315	Pedro	Nájera	2	1954, 1962	Pedro Nájera
P-03364	Kengo	Nakamura	1	2010	Kengo Nakamura
P-03804	Kosuke	Nakamura	1	2018	Kosuke Nakamura
P-08266	Shunsuke	Nakamura	2	2006, 2010	Shunsuke Nakamura
P-09732	Eisuke	Nakanishi	1	1998	Eisuke Nakanishi
P-08622	Hidetoshi	Nakata	3	1998, 2002, 2006	Hidetoshi Nakata
P-08528	Kōji	Nakata	2	2002, 2006	Kōji Nakata
P-01664	Masashi	Nakayama	2	1998, 2002	Masashi Nakayama
P-01509	Yuji	Nakazawa	2	2006, 2010	Yuji Nakazawa
P-09963	Nima	Nakisa	1	1998	Nima Nakisa
P-04674	Song-chol	Nam	1	2010	Song-chol Nam
P-03243	Hamed	Namouchi	1	2006	Hamed Namouchi
P-02478	Hiroshi	Nanami	1	1998	Hiroshi Nanami
P-01532	Nahitan	Nández	1	2018	Nahitan Nández
P-00703		Nando	1	1950	 Nando
P-07327		Nani	1	2014	 Nani
P-02467	Anatoli	Nankov	1	1998	Anatoli Nankov
P-05468	Dick	Nanninga	1	1978	Dick Nanninga
P-00415	Akira	Narahashi	1	1998	Akira Narahashi
P-01194	José	Naranjo	2	1950, 1954	José Naranjo
P-02528	Seigo	Narazaki	4	1998, 2002, 2006, 2010	Seigo Narazaki
P-00355	David	Narey	2	1982, 1986	David Narey
P-01825		Nariz	1	1938	 Nariz
P-08946	José	Nasazzi	1	1930	José Nasazzi
P-07177	Franco	Navarro	1	1982	Franco Navarro
P-08069	José	Navarro	1	1978	José Navarro
P-07136	Leonardo	Navarro	1	1950	Leonardo Navarro
P-01668	Ramiro	Navarro	1	1966	Ramiro Navarro
P-05581	Rubén	Navarro	1	1962	Rubén Navarro
P-03035	Sergio	Navarro	1	1962	Sergio Navarro
P-03058	Jesús	Navas	1	2010	Jesús Navas
P-02627	Keylor	Navas	2	2014, 2018	Keylor Navas
P-04535	Moharram	Navidkia	1	2006	Moharram Navidkia
P-01428	Adam	Nawałka	1	1978	Adam Nawałka
P-04640	Achmad	Nawir	1	1938	Achmad Nawir
P-06893	Noureddine	Naybet	2	1994, 1998	Noureddine Naybet
P-04794	Georgi	Naydenov	2	1962, 1966	Georgi Naydenov
P-00753	Hassan	Nayebagha	1	1978	Hassan Nayebagha
P-03605	Wilner	Nazaire	1	1974	Wilner Nazaire
P-02614	Salomón	Nazar	1	1982	Salomón Nazar
P-00165	Serhiy	Nazarenko	1	2006	Serhiy Nazarenko
P-04889	Hassan	Nazari	1	1978	Hassan Nazari
P-08361	Badou	Ndiaye	1	2018	Badou Ndiaye
P-03879	Wilfred	Ndidi	1	2018	Wilfred Ndidi
P-01002	Pius	Ndiefi	1	2002	Pius Ndiefi
P-06231	Tubilandu	Ndimbi	1	1974	Tubilandu Ndimbi
P-05830	Sammy	Ndjock	1	2014	Sammy Ndjock
P-09792	Alexandru	Neagu	1	1970	Alexandru Neagu
P-08152	Phil	Neal	1	1982	Phil Neal
P-06299	Pavel	Nedvěd	1	2006	Pavel Nedvěd
P-07695	Johan	Neeskens	2	1974, 1978	Johan Neeskens
P-03721	Adolfo	Nef	1	1974	Adolfo Nef
P-06320	Adel	Nefzi	1	2006	Adel Nefzi
P-08533	Manuel	Negrete	1	1986	Manuel Negrete
P-05161	José	Nehin	1	1934	José Nehin
P-03028	Zdeněk	Nehoda	1	1982	Zdeněk Nehoda
P-07867	Lucas	Neill	2	2006, 2010	Lucas Neill
P-07845	Manuel	Neira	1	1998	Manuel Neira
P-07951	Miguel Ángel	Neira	1	1982	Miguel Ángel Neira
P-05627	Oldřich	Nejedlý	2	1934, 1938	Oldřich Nejedlý
P-05549	Javad	Nekounam	2	2006, 2014	Javad Nekounam
P-06202	Sebastiano	Nela	1	1986	Sebastiano Nela
P-08465		Nelinho	2	1974, 1978	 Nelinho
P-04622	Joseph	Nelis	1	1938	Joseph Nelis
P-05672	Ryan	Nelsen	1	2010	Ryan Nelsen
P-02286	Sammy	Nelson	1	1982	Sammy Nelson
P-03322	Dejan	Nemec	1	2002	Dejan Nemec
P-03009	Jiří	Němec	1	1990	Jiří Němec
P-03457	Václav	Němeček	1	1990	Václav Němeček
P-01213		Nena	1	1950	 Nena
P-06042	Rachid	Neqrouz	2	1994, 1998	Rachid Neqrouz
P-07167	Maino	Neri	1	1954	Maino Neri
P-01916	Andriy	Nesmachniy	1	2006	Andriy Nesmachniy
P-07866	Lino	Nessi	1	1930	Lino Nessi
P-01945	Alessandro	Nesta	3	1998, 2002, 2006	Alessandro Nesta
P-08515	Fulvio	Nesti	1	1954	Fulvio Nesti
P-02355	Luís	Neto	1	2014	Luís Neto
P-09591	Rodrigues	Neto	1	1978	Rodrigues Neto
P-00536	Igor	Netto	2	1958, 1962	Igor Netto
P-03700	Günter	Netzer	1	1974	Günter Netzer
P-06554	Manuel	Neuer	3	2010, 2014, 2018	Manuel Neuer
P-03006	Leopold	Neumer	1	1938	Leopold Neumer
P-03475	André	Neury	2	1950, 1954	André Neury
P-03809	Oliver	Neuville	2	2002, 2006	Oliver Neuville
P-01837	Gary	Neville	2	1998, 2006	Gary Neville
P-01596	Keith	Newton	1	1970	Keith Newton
P-01576		Neymar	2	2014, 2018	 Neymar
P-04490	Demetrio	Neyra	1	1930	Demetrio Neyra
P-00682	Anele	Ngcongca	1	2010	Anele Ngcongca
P-06250	Kafula	Ngoie	1	1974	Kafula Ngoie
P-03964	M'Baye	Niang	1	2018	M'Baye Niang
P-02340	Daré	Nibombé	1	2006	Daré Nibombé
P-00382	Comunardo	Niccolai	1	1970	Comunardo Niccolai
P-09224	Charlie	Nicholas	1	1986	Charlie Nicholas
P-04237	Chris	Nicholl	1	1982	Chris Nicholl
P-04989	Jimmy	Nicholl	2	1982, 1986	Jimmy Nicholl
P-09295	Bill	Nicholson	1	1950	Bill Nicholson
P-01574	Göran	Nicklasson	1	1970	Göran Nicklasson
P-02941	Steve	Nicol	1	1986	Steve Nicol
P-01289	Jean	Nicolas	2	1934, 1938	Jean Nicolas
P-07693	Radu	Niculescu	1	1998	Radu Niculescu
P-00539	Allan	Nielsen	1	1998	Allan Nielsen
P-09511	Ivan	Nielsen	1	1986	Ivan Nielsen
P-03224	Kent	Nielsen	1	1986	Kent Nielsen
P-08955	Norbert	Nigbur	1	1974	Norbert Nigbur
P-05334		Niginho	1	1938	 Niginho
P-02738	Ruslan	Nigmatullin	1	2002	Ruslan Nigmatullin
P-07407	Yuri	Nikiforov	2	1994, 2002	Yuri Nikiforov
P-06919	Asparuh	Nikodimov	2	1970, 1974	Asparuh Nikodimov
P-03378	Žarko	Nikolić	1	1962	Žarko Nikolić
P-06907	Georgi	Nikolov	1	1962	Georgi Nikolov
P-09562	Plamen	Nikolov	1	1994	Plamen Nikolov
P-09761	Luc	Nilis	2	1994, 1998	Luc Nilis
P-09722		Nilmar	1	2010	 Nilmar
P-01245		Nilo	1	1930	 Nilo
P-07671	Roger	Nilsen	1	1994	Roger Nilsen
P-08756	Werner	Nilsen	1	1934	Werner Nilsen
P-01999	Erik	Nilsson	2	1938, 1950	Erik Nilsson
P-00952	Harry	Nilsson	1	1938	Harry Nilsson
P-04555	Joakim	Nilsson	1	1990	Joakim Nilsson
P-03695	Mikael	Nilsson	1	1994	Mikael Nilsson
P-00322	Mikael	Nilsson	1	2006	Mikael Nilsson
P-06288	Roland	Nilsson	2	1990, 1994	Roland Nilsson
P-00888	Stellan	Nilsson	1	1950	Stellan Nilsson
P-08860	Torbjörn	Nilsson	1	1978	Torbjörn Nilsson
P-04304	Herbert	Ninaus	1	1958	Herbert Ninaus
P-05100	Sotiris	Ninis	1	2010	Sotiris Ninis
P-01518	Miloš	Ninković	1	2010	Miloš Ninković
P-04883	Eduardo	Niño	1	1990	Eduardo Niño
P-06539	Nikos	Nioplias	1	1994	Nikos Nioplias
P-08593	Shusaku	Nishikawa	1	2014	Shusaku Nishikawa
P-04372	Akinori	Nishizawa	1	2002	Akinori Nishizawa
P-01588	Pierre	Njanka	2	1998, 2002	Pierre Njanka
P-06852	Nicolas	Nkoulou	2	2010, 2014	Nicolas Nkoulou
P-02048	Blaise	Nkufo	1	2010	Blaise Nkufo
P-08354	Rudolf	Noack	1	1934	Rudolf Noack
P-04516	Christian	Noboa	1	2014	Christian Noboa
P-08522	Edson	Nobre	1	2006	Edson Nobre
P-07350	Givi	Nodia	1	1970	Givi Nodia
P-08356	Juan José	Nogués	1	1934	Juan José Nogués
P-04558	Jung-yoon	Noh	2	1994, 1998	Jung-yoon Noh
P-02081	Soo-jin	Noh	2	1986, 1990	Soo-jin Noh
P-05537	Siyabonga	Nomvethe	2	2002, 2010	Siyabonga Nomvethe
P-01001	Mohammed	Noor	2	2002, 2006	Mohammed Noor
P-05847	Prudencio	Norales	1	1982	Prudencio Norales
P-05175	Knut	Nordahl	1	1950	Knut Nordahl
P-03498	Tomas	Nordahl	1	1970	Tomas Nordahl
P-09321	Sverre	Nordby	1	1938	Sverre Nordby
P-03852	Kristoffer	Nordfeldt	1	2018	Kristoffer Nordfeldt
P-06544	Olle	Nordin	1	1978	Olle Nordin
P-05262	Björn	Nordqvist	3	1970, 1974, 1978	Björn Nordqvist
P-00627	David	Norman	1	1986	David Norman
P-06597	Maurice	Norman	2	1958, 1962	Maurice Norman
P-02005		Noronha	1	1950	 Noronha
P-04488	Mohammad	Nosrati	1	2006	Mohammad Nosrati
P-09298	Yair	Nossovsky	1	1970	Yair Nossovsky
P-03430	Dany	Nounkeu	1	2014	Dany Nounkeu
P-08055	Nasser	Nouraei	1	1978	Nasser Nouraei
P-06342	Theodore	Nouwens	1	1930	Theodore Nouwens
P-07428	Džoni	Novak	1	2002	Džoni Novak
P-01555	Ladislav	Novák	3	1954, 1958, 1962	Ladislav Novák
P-00308	Milivoje	Novaković	1	2010	Milivoje Novaković
P-05106	Hans	Nowak	1	1962	Hans Nowak
P-01125	Jens	Nowotny	1	2006	Jens Nowotny
P-04053	Constantino	Noya	1	1930	Constantino Noya
P-05969	Otakar	Nožíř	1	1938	Otakar Nožíř
P-07584	Fatah	Nsaief	1	1986	Fatah Nsaief
P-06274	Hermann	Nuber	1	1958	Hermann Nuber
P-04106	Arthur	Numan	2	1994, 1998	Arthur Numan
P-03313	Jorge Amado	Nunes	1	1986	Jorge Amado Nunes
P-00833	Gabriel	Núñez	1	1966	Gabriel Núñez
P-05409	Jorge	Núñez	1	2006	Jorge Núñez
P-08295	Ramón	Núñez	1	2010	Ramón Núñez
P-04559	Víctor	Núñez	1	2006	Víctor Núñez
P-05240	Radu	Nunweiller	1	1970	Radu Nunweiller
P-02561	Simeon	Nwankwo	1	2018	Simeon Nwankwo
P-04380	Chidi	Nwanu	1	1994	Chidi Nwanu
P-06067	Uche	Nwofor	1	2014	Uche Nwofor
P-08759	David	Nyathi	1	1998	David Nyathi
P-06562	Arne	Nyberg	1	1938	Arne Nyberg
P-00434	Erwin	Nyc	1	1938	Erwin Nyc
P-07996	Niklas	Nyhlén	1	1990	Niklas Nyhlén
P-01344	Tibor	Nyilasi	2	1978, 1982	Tibor Nyilasi
P-02096	Allan	Nyom	1	2014	Allan Nyom
P-07756	Cyril	Nzama	1	2002	Cyril Nzama
P-07081	Steven	Nzonzi	1	2018	Steven Nzonzi
P-08888	Andrew	O'Brien	1	2002	Andrew O'Brien
P-09538	John	O'Brien	2	2002, 2006	John O'Brien
P-04482	David	O'Leary	1	1990	David O'Leary
P-09974	Fabián	O'Neill	1	2002	Fabián O'Neill
P-03963	John	O'Neill	2	1982, 1986	John O'Neill
P-03866	Martin	O'Neill	1	1982	Martin O'Neill
P-08246	Tommy	Oar	1	2014	Tommy Oar
P-01334	Marvin	Obando	1	1990	Marvin Obando
P-00806	Chinedu	Obasi	1	2010	Chinedu Obasi
P-03950	Franz	Oberacher	1	1978	Franz Oberacher
P-02476	Prawitz	Öberg	1	1958	Prawitz Öberg
P-05506	Erich	Obermayer	2	1978, 1982	Erich Obermayer
P-03423	Joel	Obi	1	2018	Joel Obi
P-00920	Kodjovi	Obilalé	1	2006	Kodjovi Obilalé
P-05125	Victor	Obinna	1	2010	Victor Obinna
P-06881	James	Obiorah	1	2002	James Obiorah
P-08734	Branko	Oblak	1	1974	Branko Oblak
P-05801	Carlos Juan	Oblitas	2	1978, 1982	Carlos Juan Oblitas
P-07386	Godfrey	Oboabona	1	2014	Godfrey Oboabona
P-03290	Ivan	Obradović	1	2010	Ivan Obradović
P-08278	Alfonso	Obregón	1	2002	Alfonso Obregón
P-09766	Guillermo	Ochoa	4	2006, 2010, 2014, 2018	Guillermo Ochoa
P-08594	Mario	Ochoa	2	1950, 1954	Mario Ochoa
P-07244	José Manuel	Ochotorena	1	1990	José Manuel Ochotorena
P-02550		Octacílio	1	1934	 Octacílio
P-00335	Ernst	Ocwirk	1	1954	Ernst Ocwirk
P-01017	Massimo	Oddo	1	2006	Massimo Oddo
P-06909	Peter	Odemwingie	2	2010, 2014	Peter Odemwingie
P-01359	Karl	Odermatt	1	1966	Karl Odermatt
P-04853	Chidi	Odiah	1	2010	Chidi Odiah
P-09664	David	Odonkor	1	2006	David Odonkor
P-07443	Álvaro	Odriozola	1	2018	Álvaro Odriozola
P-09622	Kunle	Odunlami	1	2014	Kunle Odunlami
P-00494	Mitsuo	Ogasawara	2	2002, 2006	Mitsuo Ogasawara
P-01148	Bartholomew	Ogbeche	1	2002	Bartholomew Ogbeche
P-04537	Tihomir	Ognjanov	2	1950, 1954	Tihomir Ognjanov
P-00185	Radivoje	Ognjanović	1	1958	Radivoje Ognjanović
P-07508	Perica	Ognjenović	1	1998	Perica Ognjenović
P-06394	Andreas	Ogris	1	1990	Andreas Ogris
P-07233	John	Ogu	1	2018	John Ogu
P-09067	Masashi	Oguro	1	2006	Masashi Oguro
P-09070	Ban-suk	Oh	1	2018	Ban-suk Oh
P-06861	Beom-seok	Oh	1	2010	Beom-seok Oh
P-03801	Yoon-kyung	Oh	1	1966	Yoon-kyung Oh
P-07129	Yun-kyo	Oh	1	1986	Yun-kyo Oh
P-04990	Owe	Ohlsson	1	1958	Owe Ohlsson
P-06715	Christophe	Ohrel	1	1994	Christophe Ohrel
P-00054	Tomás	Ojeda	1	1930	Tomás Ojeda
P-01733	Uche	Okafor	2	1994, 1998	Uche Okafor
P-09390	Masayuki	Okano	1	1998	Masayuki Okano
P-03847	Shinji	Okazaki	3	2010, 2014, 2018	Shinji Okazaki
P-03356	Uche	Okechukwu	2	1994, 1998	Uche Okechukwu
P-01978	Jay-Jay	Okocha	3	1994, 1998, 2002	Jay-Jay Okocha
P-01768	Isaac	Okoronkwo	1	2002	Isaac Okoronkwo
P-05424	Godwin	Okpara	1	1998	Godwin Okpara
P-03982	Willy	Okpara	1	1998	Willy Okpara
P-00158	Yoshito	Ōkubo	2	2010, 2014	Yoshito Ōkubo
P-00579	Jorge	Olaechea	1	1982	Jorge Olaechea
P-02225	Julio	Olarticoechea	3	1982, 1986, 1990	Julio Olarticoechea
P-00901	Salomon	Olembé	2	1998, 2002	Salomon Olembé
P-09398	Juan Carlos	Oleniak	1	1962	Juan Carlos Oleniak
P-06922	Jorge	Olguín	2	1978, 1982	Jorge Olguín
P-08876	Ivica	Olić	3	2002, 2006, 2014	Ivica Olić
P-01387	Thompson	Oliha	1	1994	Thompson Oliha
P-00083	Fabrice	Olinga	1	2014	Fabrice Olinga
P-05113	Emmanuel	Olisadebe	1	2002	Emmanuel Olisadebe
P-05660	Sunday	Oliseh	2	1994, 1998	Sunday Oliseh
P-09592	Felipe	Olivares	1	1930	Felipe Olivares
P-03012	Juan	Olivares	2	1966, 1974	Juan Olivares
P-08587	António	Oliveira	1	1986	António Oliveira
P-02574	Carlos	Oliveira	1	1938	Carlos Oliveira
P-04261	Luís	Oliveira	1	1998	Luís Oliveira
P-01374	Ferran	Olivella	1	1966	Ferran Olivella
P-09954	Arnie	Oliver	1	1930	Arnie Oliver
P-09148	Célestin	Oliver	1	1958	Célestin Oliver
P-07343	Nicolás	Olivera	1	2002	Nicolás Olivera
P-09119	Aldo	Olivieri	1	1938	Aldo Olivieri
P-09055	Peter	Ollerton	1	1974	Peter Ollerton
P-01489	Quiterio	Olmedo	1	1930	Quiterio Olmedo
P-05347	Renato	Olmi	1	1938	Renato Olmi
P-02646	Antonio	Olmo	1	1978	Antonio Olmo
P-00102	Ben	Olsen	1	2006	Ben Olsen
P-06084	Jesper	Olsen	1	1986	Jesper Olsen
P-03410	Morten	Olsen	1	1986	Morten Olsen
P-04098	Robin	Olsen	1	2018	Robin Olsen
P-03018	Gunnar	Olsson	1	1934	Gunnar Olsson
P-05173	Jan	Olsson	1	1974	Jan Olsson
P-01341	Jan	Olsson	1	1970	Jan Olsson
P-08695	Martin	Olsson	1	2018	Martin Olsson
P-02994	Adékambi	Olufadé	1	2006	Adékambi Olufadé
P-06096	François	Omam-Biyik	3	1990, 1994, 1998	François Omam-Biyik
P-03214	Fahrudin	Omerović	1	1990	Fahrudin Omerović
P-00310	Kenneth	Omeruo	2	2014, 2018	Kenneth Omeruo
P-04957	Norio	Omura	1	1998	Norio Omura
P-02482	Elie	Onana	1	1982	Elie Onana
P-05405	Jules	Onana	1	1990	Jules Onana
P-03376	Necmi	Onarıcı	1	1954	Necmi Onarıcı
P-08054	Ogenyi	Onazi	2	2014, 2018	Ogenyi Onazi
P-08731	Ermindo	Onega	1	1966	Ermindo Onega
P-01895	Shinji	Ono	3	1998, 2002, 2006	Shinji Ono
P-08129	Viktor	Onopko	2	1994, 2002	Viktor Onopko
P-05787	Oguchi	Onyewu	2	2006, 2010	Oguchi Onyewu
P-01851	André	Ooijer	3	1998, 2006, 2010	André Ooijer
P-03697	Klaas	Ooms	1	1938	Klaas Ooms
P-01724	Femi	Opabunmi	1	2002	Femi Opabunmi
P-00175	Mobi	Oparaku	1	1998	Mobi Oparaku
P-01354	Daniel	Opare	1	2014	Daniel Opare
P-00103	Toon	Oprinsen	1	1934	Toon Oprinsen
P-07313	Osama	Orabi	1	1990	Osama Orabi
P-04727	Ghanim	Oraibi	1	1986	Ghanim Oraibi
P-05309	Jaime	Ordiales	1	1998	Jaime Ordiales
P-06730		Oreco	1	1958	 Oreco
P-01305	Fabián	Orellana	2	2010, 2014	Fabián Orellana
P-08630	Gabriele	Oriali	1	1982	Gabriele Oriali
P-03835	Divock	Origi	1	2014	Divock Origi
P-01086	Agustín	Orión	1	2014	Agustín Orión
P-08159	Rodolfo	Orlandini	1	1930	Rodolfo Orlandini
P-07224		Orlando	2	1958, 1966	 Orlando
P-03002	Raúl	Ormeño	1	1982	Raúl Ormeño
P-02529	Willie	Ormond	1	1954	Willie Ormond
P-06734	Raimundo	Orsi	1	1934	Raimundo Orsi
P-07126	Amadeo	Ortega	1	1930	Amadeo Ortega
P-07622	Ariel	Ortega	3	1994, 1998, 2002	Ariel Ortega
P-01112	Cristóbal	Ortega	2	1978, 1986	Cristóbal Ortega
P-04655	Arnaldo	Ortelli	1	1934	Arnaldo Ortelli
P-04790	Josef	Orth	1	1938	Josef Orth
P-08428	Néstor	Ortigoza	1	2010	Néstor Ortigoza
P-01505	Héctor	Ortiz	1	1950	Héctor Ortiz
P-07582	Mario	Ortiz	1	1962	Mario Ortiz
P-02740	Néstor	Ortiz	1	1994	Néstor Ortiz
P-03284	Oscar	Ortiz	1	1978	Oscar Ortiz
P-04697	Guillermo	Ortiz Camargo	1	1962	Guillermo Ortiz Camargo
P-08060	Washington	Ortuño	1	1950	Washington Ortuño
P-03248	Wilson	Oruma	1	1998	Wilson Oruma
P-01627	Yuya	Osako	2	2014, 2018	Yuya Osako
P-03529	Mario	Osbén	1	1982	Mario Osbén
P-00869		Oscar	3	1978, 1982, 1986	 Oscar
P-07869		Oscar	1	2014	 Oscar
P-05209		Oscarino	1	1930	 Oscarino
P-04038	Peter	Osgood	1	1970	Peter Osgood
P-02794	Juwon	Oshaniwa	1	2014	Juwon Oshaniwa
P-03201	Ryota	Oshima	1	2018	Ryota Oshima
P-01120	Hilarión	Osorio	1	1950	Hilarión Osorio
P-07459	Ricardo	Osorio	2	2006, 2010	Ricardo Osorio
P-04918	Saturnino	Osorio	1	1970	Saturnino Osorio
P-04081	Francisco	Osorto	1	1982	Francisco Osorto
P-01067	David	Ospina	2	2014, 2018	David Ospina
P-04360	Ali Akbar	Ostad-Asadi	1	1998	Ali Akbar Ostad-Asadi
P-02643	Egil	Østenstad	1	1998	Egil Østenstad
P-01262	Milan	Osterc	1	2002	Milan Osterc
P-07849	Santiago	Ostolaza	1	1990	Santiago Ostolaza
P-09572	Leonid	Ostrovskiy	3	1958, 1962, 1966	Leonid Ostrovskiy
P-01790	Marek	Ostrowski	1	1986	Marek Ostrowski
P-05429	Nicolás	Otamendi	2	2010, 2018	Nicolás Otamendi
P-06615	Abdullah	Otayf	1	2018	Abdullah Otayf
P-03891	Kalambay	Otepa	1	1974	Kalambay Otepa
P-02609	Celso	Otero	1	1986	Celso Otero
P-05858	Jorge	Otero	1	1994	Jorge Otero
P-04227	Chuliang	Ou	1	2002	Chuliang Ou
P-05750	Lahcen	Ouadani	1	1986	Lahcen Ouadani
P-05265	Abderrahim	Ouakili	1	1998	Abderrahim Ouakili
P-02110	Abdelkader	Ouaraghli	1	1970	Abdelkader Ouaraghli
P-01386	Luis	Ovalle	1	2018	Luis Ovalle
P-01728	Wolfgang	Overath	3	1966, 1970, 1974	Wolfgang Overath
P-08704	Marc	Overmars	2	1994, 1998	Marc Overmars
P-00522	Bryan	Oviedo	1	2018	Bryan Oviedo
P-05913	Miguel	Oviedo	1	1978	Miguel Oviedo
P-07705	Michael	Owen	3	1998, 2002, 2006	Michael Owen
P-08956	Syd	Owen	1	1954	Syd Owen
P-08390	George	Owu	1	2006	George Owu
P-01087	Quincy	Owusu-Abeyie	1	2010	Quincy Owusu-Abeyie
P-07948	Alex	Oxlade-Chamberlain	1	2014	Alex Oxlade-Chamberlain
P-06876	Alpay	Özalan	1	2002	Alpay Özalan
P-01762	Ümit	Özat	1	2002	Ümit Özat
P-05715	Zafer	Özgültekin	1	2002	Zafer Özgültekin
P-05458	Mesut	Özil	3	2010, 2014, 2018	Mesut Özil
P-06629	Bas	Paauwe	2	1934, 1938	Bas Paauwe
P-04712	Jaime	Pacheco	1	1986	Jaime Pacheco
P-05645	Pablo	Pacheco	1	1930	Pablo Pacheco
P-00427		Pachín	1	1962	 Pachín
P-01230	Marco	Padalino	1	2010	Marco Padalino
P-02264	Aarón	Padilla	2	1966, 1970	Aarón Padilla
P-03658	Guillermo	Páez	1	1974	Guillermo Páez
P-00907	Raúl	Páez	1	1962	Raúl Páez
P-06552	Jean-Claude	Pagal	1	1990	Jean-Claude Pagal
P-02133	Marcelo	Pagani	1	1962	Marcelo Pagani
P-01637	Gianluca	Pagliuca	3	1990, 1994, 1998	Gianluca Pagliuca
P-02106	Rubén	Pagnanini	1	1978	Rubén Pagnanini
P-00566	Terry	Paine	1	1966	Terry Paine
P-04043	John	Paintsil	2	2006, 2010	John Paintsil
P-03987	Chol-jin	Pak	1	2010	Chol-jin Pak
P-07496	Doo-ik	Pak	1	1966	Doo-ik Pak
P-02341	Li-sup	Pak	1	1966	Li-sup Pak
P-00818	Nam-chol	Pak	1	2010	Nam-chol Pak
P-08127	Nam-Chol	Pak	1	2010	Nam-Chol Pak
P-07378	Seung-zin	Pak	1	1966	Seung-zin Pak
P-04785	George	Pakos	1	1986	George Pakos
P-07667	Rodrigo	Palacio	2	2006, 2014	Rodrigo Palacio
P-04745	Ever	Palacios	1	1998	Ever Palacios
P-07371	Jerry	Palacios	2	2010, 2014	Jerry Palacios
P-07553	Johnny	Palacios	1	2010	Johnny Palacios
P-08288	Wilson	Palacios	2	2010, 2014	Wilson Palacios
P-04691	Andrzej	Pałasz	2	1982, 1986	Andrzej Pałasz
P-02751	Francisco	Palencia	2	1998, 2002	Francisco Palencia
P-05247	Martín	Palermo	1	2010	Martín Palermo
P-05467	Gabriel	Paletta	1	2014	Gabriel Paletta
P-02963	Bela	Palfi	1	1950	Bela Palfi
P-08290	József	Pálinkás	1	1938	József Pálinkás
P-09097	Karl-Erik	Palmér	1	1950	Karl-Erik Palmér
P-05813	Angelo	Palombo	1	2010	Angelo Palombo
P-01624	István	Palotás	1	1934	István Palotás
P-05477	Péter	Palotás	1	1954	Péter Palotás
P-03060	Sten	Pålsson	1	1970	Sten Pålsson
P-08960	Peter	Palúch	1	1990	Peter Palúch
P-04937		Pamplona	2	1930, 1934	 Pamplona
P-00794	Andrej	Panadić	1	1990	Andrej Panadić
P-09866	Panayot	Panayotov	1	1962	Panayot Panayotov
P-00173	Darko	Pančev	1	1990	Darko Pančev
P-02543	Martín	Pando	1	1962	Martín Pando
P-04878	Egisto	Pandolfini	2	1950, 1954	Egisto Pandolfini
P-06307	Basarab	Panduru	1	1994	Basarab Panduru
P-07198	Antonín	Panenka	1	1982	Antonín Panenka
P-01488	José Luis	Panizo	1	1950	José Luis Panizo
P-01154	Pavel	Panov	1	1974	Pavel Panov
P-01270	Dragan	Pantelić	1	1982	Dragan Pantelić
P-03319	Marko	Pantelić	1	2010	Marko Pantelić
P-06699	Christian	Panucci	1	2002	Christian Panucci
P-09964	Avraam	Papadopoulos	1	2010	Avraam Papadopoulos
P-03120	Sokratis	Papastathopoulos	2	2010, 2014	Sokratis Papastathopoulos
P-05210	Zlatko	Papec	1	1954	Zlatko Papec
P-03431	Claude	Papi	1	1978	Claude Papi
P-03112	Jean-Pierre	Papin	1	1986	Jean-Pierre Papin
P-08618	Jules	Pappaert	1	1934	Jules Pappaert
P-06160	Emmanuel	Pappoe	1	2006	Emmanuel Pappoe
P-03188	Corneliu	Papură	1	1994	Corneliu Papură
P-01328		Paraná	1	1966	 Paraná
P-00807	Miguel	Pardeza	1	1990	Miguel Pardeza
P-01954	Pável	Pardo	2	1998, 2006	Pável Pardo
P-02154	Jorge	Pardon	1	1930	Jorge Pardon
P-04359	Carlos	Paredes	3	1998, 2002, 2006	Carlos Paredes
P-05310	Elioro	Paredes	1	1950	Elioro Paredes
P-05160	Esteban	Paredes	2	2010, 2014	Esteban Paredes
P-00072	Juan Carlos	Paredes	1	2014	Juan Carlos Paredes
P-01452	Gino	Pariani	1	1950	Gino Pariani
P-02029	Chang-sun	Park	1	1986	Chang-sun Park
P-08534	Chu-young	Park	3	2006, 2010, 2014	Chu-young Park
P-06502	Chul-woo	Park	1	1994	Chul-woo Park
P-07419	Il-kap	Park	1	1954	Il-kap Park
P-03881	Jae-seung	Park	1	1954	Jae-seung Park
P-00100	Ji-sung	Park	3	2002, 2006, 2010	Ji-sung Park
P-05140	Jong-woo	Park	1	2014	Jong-woo Park
P-09043	Joo-ho	Park	2	2014, 2018	Joo-ho Park
P-08431	Jung-bae	Park	1	1994	Jung-bae Park
P-00099	Kyu-chung	Park	1	1954	Kyu-chung Park
P-00519	Kyung-hoon	Park	2	1986, 1990	Kyung-hoon Park
P-01065	Alex	Parker	1	1958	Alex Parker
P-03672	Bernard	Parker	1	2010	Bernard Parker
P-01876	Paul	Parker	1	1990	Paul Parker
P-08565	Winston	Parks	1	2002	Winston Parks
P-02027	Eugene	Parlier	1	1954	Eugene Parlier
P-00330	Sigge	Parling	1	1958	Sigge Parling
P-08476	José	Parodi	1	1958	José Parodi
P-05541	Carlo	Parola	1	1950	Carlo Parola
P-08012	Marco	Parolo	1	2014	Marco Parolo
P-09812	José	Parra	1	1950	José Parra
P-05768	Nelson	Parraguez	1	1998	Nelson Parraguez
P-08667	Nikola	Parshanov	1	1962	Nikola Parshanov
P-05695	Ali	Parvin	1	1978	Ali Parvin
P-02631	Marco	Pascolo	1	1994	Marco Pascolo
P-02566	Pedro	Pasculli	1	1986	Pedro Pasculli
P-01829	Ezio	Pascutti	2	1962, 1966	Ezio Pascutti
P-09934	Mehdi	Pashazadeh	1	1998	Mehdi Pashazadeh
P-07264	Atanas	Pashev	1	1986	Atanas Pashev
P-00245	Ilijas	Pašić	1	1958	Ilijas Pašić
P-01584	Predrag	Pašić	1	1982	Predrag Pašić
P-00795	Piero	Pasinati	1	1938	Piero Pasinati
P-00705	Daniel	Passarella	3	1978, 1982, 1986	Daniel Passarella
P-02922	Raymond	Passello	1	1934	Raymond Passello
P-06303	Mark	Paston	1	2010	Mark Paston
P-07532	Javier	Pastore	1	2010	Javier Pastore
P-07554	José Omar	Pastoriza	1	1966	José Omar Pastoriza
P-09215	Bert	Patenaude	1	1930	Bert Patenaude
P-07461	Fernando	Paternoster	1	1930	Fernando Paternoster
P-00694		Patesko	2	1934, 1938	 Patesko
P-04792	Rui	Patrício	2	2014, 2018	Rui Patrício
P-05554	Christos	Patsatzoglou	1	2010	Christos Patsatzoglou
P-08897	Isaak	Pattiwael	1	1938	Isaak Pattiwael
P-00696	Čestmír	Patzel	1	1934	Čestmír Patzel
P-03141	Bernd	Patzke	2	1966, 1970	Bernd Patzke
P-00150	Wolfgang	Paul	1	1966	Wolfgang Paul
P-01987		Pauleta	2	2002, 2006	 Pauleta
P-02960		Paulinho	1	1954	 Paulinho
P-03917		Paulinho	2	2014, 2018	 Paulinho
P-08721	Juninho	Paulista	1	2002	Juninho Paulista
P-00409	Benjamin	Pavard	1	2018	Benjamin Pavard
P-09785	Robert	Paverick	1	1938	Robert Paverick
P-08790	Miran	Pavlin	1	2002	Miran Pavlin
P-06806	Miroslav	Pavlović	1	1974	Miroslav Pavlović
P-05844	Zoran	Pavlović	1	2002	Zoran Pavlović
P-05503	Dumitru	Pavlovici	1	1938	Dumitru Pavlovici
P-07432	Carlos	Pavón	1	2010	Carlos Pavón
P-03767	Cristian	Pavón	1	2018	Cristian Pavón
P-03113	Ricardo	Pavoni	1	1974	Ricardo Pavoni
P-02569	Krzysztof	Pawlak	1	1986	Krzysztof Pawlak
P-06142	Aníbal	Paz	1	1950	Aníbal Paz
P-09460	Luis	Paz	1	1962	Luis Paz
P-04160	Pablo	Paz	1	1998	Pablo Paz
P-02898	Rafael	Paz	1	1990	Rafael Paz
P-09524	Rubén	Paz	2	1986, 1990	Rubén Paz
P-01972	Michał	Pazdan	1	2018	Michał Pazdan
P-03227	Emil	Pažický	1	1954	Emil Pažický
P-06883	José María	Pazo	1	1994	José María Pazo
P-08017	Giampaolo	Pazzini	1	2010	Giampaolo Pazzini
P-09142	Alan	Peacock	1	1962	Alan Peacock
P-06063	Bertie	Peacock	1	1958	Bertie Peacock
P-03771	Stuart	Pearce	1	1990	Stuart Pearce
P-03093	Eraldo	Pecci	1	1978	Eraldo Pecci
P-08648	Robert	Pecl	1	1990	Robert Pecl
P-05492	Nejc	Pečnik	1	2010	Nejc Pečnik
P-08870	Juan	Pedevilla	1	1934	Juan Pedevilla
P-09354		Pedrinho	1	1982	 Pedrinho
P-06377		Pedro	2	2010, 2014	 Pedro
P-03519		Pedrosa	1	1934	 Pedrosa
P-08226	Frans	Peeraer	1	1934	Frans Peeraer
P-07124	Alfons	Peeters	1	1970	Alfons Peeters
P-09643	Jacky	Peeters	1	2002	Jacky Peeters
P-09918	Joaquín	Peiró	2	1962, 1966	Joaquín Peiró
P-06621	Peter	Pekarík	1	2010	Peter Pekarík
P-09435	Ricardo	Peláez	1	1998	Ricardo Peláez
P-03795		Pelé	4	1958, 1962, 1966, 1970	 Pelé
P-00475	Franz	Pelikan	1	1954	Franz Pelikan
P-00839	Henk	Pellikaan	1	1934	Henk Pellikaan
P-07294	Patrick	Pemberton	2	2014, 2018	Patrick Pemberton
P-01292	Álvaro	Peña	1	1994	Álvaro Peña
P-05729	Carlos	Peña	1	2014	Carlos Peña
P-09033	Gustavo	Peña	2	1966, 1970	Gustavo Peña
P-02242	Juan Manuel	Peña	1	1994	Juan Manuel Peña
P-01279	Gilberto	Penayo	1	1958	Gilberto Penayo
P-03584	Ergün	Penbe	1	2002	Ergün Penbe
P-03490	Jaime	Penedo	1	2018	Jaime Penedo
P-01517	Dimitar	Penev	3	1966, 1970, 1974	Dimitar Penev
P-01119	Lyuboslav	Penev	1	1998	Lyuboslav Penev
P-00369	Steve	Penney	1	1986	Steve Penney
P-02443	Michel	Pensée	1	1998	Michel Pensée
P-08981	Armand	Penverne	2	1954, 1958	Armand Penverne
P-01352		Pepe	2	1958, 1962	 Pepe
P-05692		Pepe	3	2010, 2014, 2018	 Pepe
P-02998	Simone	Pepe	1	2010	Simone Pepe
P-00023		Perácio	1	1938	 Perácio
P-01677	Oribe	Peralta	2	2014, 2018	Oribe Peralta
P-09649	Marino	Perani	1	1966	Marino Perani
P-00516	Mario	Perazzolo	1	1938	Mario Perazzolo
P-00949	José	Perdomo	1	1990	José Perdomo
P-08719	Luis Carlos	Perea	2	1990, 1994	Luis Carlos Perea
P-05259	Álvaro	Pereira	2	2010, 2014	Álvaro Pereira
P-02755	Eduardo	Pereira	1	1990	Eduardo Pereira
P-04710	João	Pereira	1	2014	João Pereira
P-01402	José	Pereira	1	1966	José Pereira
P-08576	Luís	Pereira	1	1974	Luís Pereira
P-03202	Maxi	Pereira	3	2010, 2014, 2018	Maxi Pereira
P-00702	Nélson	Pereira	1	2002	Nélson Pereira
P-08530	Ricardo	Pereira	1	2018	Ricardo Pereira
P-01814	Ruben	Pereira	1	1990	Ruben Pereira
P-03942	Fernando	Peres	1	1966	Fernando Peres
P-08128	Marinho	Peres	1	1974	Marinho Peres
P-07773	Waldir	Peres	3	1974, 1978, 1982	Waldir Peres
P-08464	Darío	Pereyra	1	1986	Darío Pereyra
P-07934	Alfredo	Pérez	1	1958	Alfredo Pérez
P-03414	Blas	Pérez	1	2018	Blas Pérez
P-04282	Diego	Pérez	2	2010, 2014	Diego Pérez
P-01081	Domingo	Pérez	2	1962, 1966	Domingo Pérez
P-04472	Enzo	Pérez	2	2014, 2018	Enzo Pérez
P-08208	Francisco	Pérez	1	1934	Francisco Pérez
P-02388	Hugo	Pérez	1	1994	Hugo Pérez
P-02619	Hugo	Pérez	1	1994	Hugo Pérez
P-03469	Ignacio	Pérez	1	1962	Ignacio Pérez
P-06625	John Wilmar	Pérez	1	1998	John Wilmar Pérez
P-02835	José Ricardo	Pérez	1	1990	José Ricardo Pérez
P-03134	Julio	Pérez	2	1950, 1954	Julio Pérez
P-02224	Luis	Pérez	1	1930	Luis Pérez
P-09875	Luis Ernesto	Pérez	1	2006	Luis Ernesto Pérez
P-08104	Mario	Pérez	1	1950	Mario Pérez
P-02770	Mario	Pérez	1	1970	Mario Pérez
P-09019	Óscar	Pérez	3	1998, 2002, 2010	Óscar Pérez
P-04871	Wilson	Pérez	1	1994	Wilson Pérez
P-02147	Roberto	Perfumo	2	1966, 1974	Roberto Perfumo
P-04278	Mattia	Perin	1	2014	Mattia Perin
P-02705	Natalio	Perinetti	1	1930	Natalio Perinetti
P-04888	Ivan	Perišić	2	2014, 2018	Ivan Perišić
P-03336	José Luis	Perlaza	1	2006	José Luis Perlaza
P-08976	Antonio	Permunian	1	1962	Antonio Permunian
P-01278	Juninho	Pernambucano	1	2006	Juninho Pernambucano
P-08481	Mariano	Pernía	1	2006	Mariano Pernía
P-09826	Dušan	Perniš	1	2010	Dušan Perniš
P-04166	Simone	Perrotta	1	2006	Simone Perrotta
P-06813	Peter	Persidis	1	1978	Peter Persidis
P-05377	Erik	Persson	1	1938	Erik Persson
P-05734	Örjan	Persson	2	1970, 1974	Örjan Persson
P-07361	Luka	Peruzović	1	1974	Luka Peruzović
P-01152	Angelo	Peruzzi	1	2006	Angelo Peruzzi
P-08938	Nicolae	Pescaru	1	1970	Nicolae Pescaru
P-08268	Jiří	Pešek	1	1954	Jiří Pešek
P-06540	Hans	Pesser	1	1938	Hans Pesser
P-02806	Gianluca	Pessotto	1	1998	Gianluca Pessotto
P-06012	Sławomir	Peszko	1	2018	Sławomir Peszko
P-00722	Aleksandar	Petaković	2	1954, 1958	Aleksandar Petaković
P-01204	Zoltán	Péter	1	1986	Zoltán Péter
P-01405	Martin	Peters	2	1966, 1970	Martin Peters
P-06988	Wolfgang	Peters	1	1958	Wolfgang Peters
P-03946	Emmanuel	Petit	2	1998, 2002	Emmanuel Petit
P-01722	Jean	Petit	1	1938	Jean Petit
P-06903	Jean	Petit	1	1978	Jean Petit
P-08111		Petit	2	2002, 2006	 Petit
P-09719	Ivaylo	Petkov	1	1998	Ivaylo Petkov
P-01718	Milen	Petkov	1	1998	Milen Petkov
P-03285	Dušan	Petković	1	2006	Dušan Petković
P-07052	Ilija	Petković	1	1974	Ilija Petković
P-09661	Ladislav	Petráš	1	1970	Ladislav Petráš
P-09042	Martin	Petráš	1	2010	Martin Petráš
P-07115	Dimitri	Petratos	1	2018	Dimitri Petratos
P-07321	Dan	Petrescu	2	1994, 1998	Dan Petrescu
P-02038	Pedro	Petrone	1	1930	Pedro Petrone
P-08835	Petar	Petrov	1	1986	Petar Petrov
P-05531	Ognjen	Petrović	1	1974	Ognjen Petrović
P-09362	Radosav	Petrović	1	2010	Radosav Petrović
P-00443	Vladimir	Petrović	2	1974, 1982	Vladimir Petrović
P-08304	Željko	Petrović	1	1998	Željko Petrović
P-05071	Vlastimil	Petržela	1	1982	Vlastimil Petržela
P-06556	Ronney	Pettersson	1	1970	Ronney Pettersson
P-04082	Stefan	Pettersson	1	1990	Stefan Pettersson
P-03816	Carlos	Peucelle	1	1930	Carlos Peucelle
P-07031	Afshin	Peyrovani	1	1998	Afshin Peyrovani
P-03715	Gerry	Peyton	1	1990	Gerry Peyton
P-00398	Bruno	Pezzey	2	1978, 1982	Bruno Pezzey
P-01092	Alfred	Pfaff	1	1954	Alfred Pfaff
P-05393	Jean-Marie	Pfaff	2	1982, 1986	Jean-Marie Pfaff
P-05638	Anton	Pfeffer	2	1990, 1998	Anton Pfeffer
P-06959	Heimo	Pfeifenberger	2	1990, 1998	Heimo Pfeifenberger
P-01713	Hans	Pflügler	1	1990	Hans Pflügler
P-01336	Terry	Phelan	1	1994	Terry Phelan
P-02073	Alfred	Phiri	1	1998	Alfred Phiri
P-04176	Edmundo	Piaggio	1	1930	Edmundo Piaggio
P-09663	Roger	Piantoni	1	1958	Roger Piantoni
P-00152	Leonard	Piątek	1	1938	Leonard Piątek
P-07272		Piazza	2	1970, 1974	 Piazza
P-05807	Anton	Pichler	1	1982	Anton Pichler
P-06125	Barry	Pickering	1	1982	Barry Pickering
P-01338	Jordan	Pickford	1	2018	Jordan Pickford
P-08402	Ryszard	Piec	1	1938	Ryszard Piec
P-04594	Wilhelm	Piec	1	1938	Wilhelm Piec
P-01977	Steven	Pienaar	2	2002, 2010	Steven Pienaar
P-06525	Peter	Pietras	1	1934	Peter Pietras
P-08216	Rene	Pijpers	1	1938	Rene Pijpers
P-04787	Ruslan	Pimenov	1	2002	Ruslan Pimenov
P-08620	Valentín	Pimentel	1	2018	Valentín Pimentel
P-09280	Razak	Pimpong	1	2006	Razak Pimpong
P-04677	Gonzalo	Pineda	1	2006	Gonzalo Pineda
P-03136	Mauricio	Pineda	1	1998	Mauricio Pineda
P-09293	Tomás	Pineda	1	1970	Tomás Pineda
P-04010	Mario	Pinedo	1	1994	Mario Pinedo
P-06259	Marcel	Pinel	1	1930	Marcel Pinel
P-01463		Pinga	1	1954	 Pinga
P-08169		Pinheiro	1	1954	 Pinheiro
P-08289	Rodolfo	Pini	1	1950	Rodolfo Pini
P-04451	Mauricio	Pinilla	1	2014	Mauricio Pinilla
P-08001	Sándor	Pintér	1	1978	Sándor Pintér
P-04074	Custódio	Pinto	1	1966	Custódio Pinto
P-04661	João	Pinto	1	1986	João Pinto
P-04476	João	Pinto	1	2002	João Pinto
P-08386	Miguel	Pinto	1	2010	Miguel Pinto
P-00064	José	Pintos Saldanha	1	1990	José Pintos Saldanha
P-08824	Silvio	Piola	1	1938	Silvio Piola
P-02581	Christian	Piot	1	1970	Christian Piot
P-05078	Wilner	Piquant	1	1974	Wilner Piquant
P-00448	Gerard	Piqué	3	2010, 2014, 2018	Gerard Piqué
P-03535	Robert	Pires	1	1998	Robert Pires
P-00926	Conduelo	Píriz	1	1930	Conduelo Píriz
P-01525	Hans	Pirkner	1	1978	Hans Pirkner
P-09247	Andrea	Pirlo	3	2006, 2010, 2014	Andrea Pirlo
P-03074		Pirri	2	1966, 1978	 Pirri
P-06302	Łukasz	Piszczek	1	2018	Łukasz Piszczek
P-09296	Jean-Claude	Piumi	1	1966	Jean-Claude Piumi
P-00849	Josip	Pivarić	1	2018	Josip Pivarić
P-06075	Ján	Pivarník	1	1970	Ján Pivarník
P-00219	Gino	Pivatelli	1	1954	Gino Pivatelli
P-06381	Pierluigi	Pizzaballa	1	1966	Pierluigi Pizzaballa
P-07354	Juan Antonio	Pizzi	1	1998	Juan Antonio Pizzi
P-01467	Mario	Pizziolo	1	1934	Mario Pizziolo
P-08991	Marko	Pjaca	1	2018	Marko Pjaca
P-03840	Miralem	Pjanić	1	2014	Miralem Pjanić
P-03461	Diego	Placente	1	2002	Diego Placente
P-07833	František	Plánička	2	1934, 1938	František Plánička
P-00155	Marc	Planus	1	2010	Marc Planus
P-06228	Jaroslav	Plašil	1	2006	Jaroslav Plašil
P-07530	Michel	Platini	3	1978, 1982, 1986	Michel Platini
P-04953	David	Platt	1	1990	David Platt
P-02504	Jim	Platt	2	1982, 1986	Jim Platt
P-09537	Marvin	Plattenhardt	1	2018	Marvin Plattenhardt
P-08603	Peter	Platzer	1	1934	Peter Platzer
P-05791	Hendrikus	Plenter	1	1938	Hendrikus Plenter
P-03436	Gerard	Plessers	1	1982	Gerard Plessers
P-06134	Stipe	Pletikosa	3	2002, 2006, 2014	Stipe Pletikosa
P-07828	Pascal	Plovie	1	1990	Pascal Plovie
P-05254	Svatopluk	Pluskal	3	1954, 1958, 1962	Svatopluk Pluskal
P-02881	Karel	Poborský	1	2006	Karel Poborský
P-09903	Mauricio	Pochettino	1	2002	Mauricio Pochettino
P-07597	Lukas	Podolski	3	2006, 2010, 2014	Lukas Podolski
P-06083	Paul	Pogba	2	2014, 2018	Paul Pogba
P-08369	Ulises	Poirier	1	1930	Ulises Poirier
P-05017	Jan	Polák	1	2006	Jan Polák
P-08349	Fabrizio	Poletti	1	1970	Fabrizio Poletti
P-07905	Ânderson	Polga	1	2002	Ânderson Polga
P-06007	Gyula	Polgár	2	1934, 1938	Gyula Polgár
P-05543	Jaroslav	Pollák	1	1970	Jaroslav Pollák
P-03399	Odilon	Polleunis	1	1970	Odilon Polleunis
P-01568	Andy	Polo	1	2018	Andy Polo
P-06199	Gábor	Pölöskei	1	1982	Gábor Pölöskei
P-07287		Polozzi	1	1978	 Polozzi
P-01823	Toni	Polster	2	1990, 1998	Toni Polster
P-06724		Poly	1	1930	 Poly
P-05323	Jürgen	Pommerenke	1	1974	Jürgen Pommerenke
P-00755	Miguel Ángel	Ponce	1	2014	Miguel Ángel Ponce
P-06112	Waldo	Ponce	1	2010	Waldo Ponce
P-07969	Viktor	Ponedelnik	1	1962	Viktor Ponedelnik
P-06121	Vladimir	Ponomaryov	1	1966	Vladimir Ponomaryov
P-02381	Mehrdad	Pooladi	1	2014	Mehrdad Pooladi
P-01647	Jan	Poortvliet	1	1978	Jan Poortvliet
P-09372	Eddie	Pope	3	1998, 2002, 2006	Eddie Pope
P-07935	Nick	Pope	1	2018	Nick Pope
P-03677	Adrian	Popescu	1	1990	Adrian Popescu
P-06761	Gabriel	Popescu	1	1998	Gabriel Popescu
P-00790	Gheorghe	Popescu	3	1990, 1994, 1998	Gheorghe Popescu
P-08478	Danilo	Popivoda	1	1974	Danilo Popivoda
P-00264	Ján	Popluhár	2	1958, 1962	Ján Popluhár
P-00882	Dmitri	Popov	1	1994	Dmitri Popov
P-06043	Georgi	Popov	1	1970	Georgi Popov
P-07375	Tony	Popovic	1	2006	Tony Popovic
P-01145	Vladica	Popović	2	1958, 1962	Vladica Popović
P-06927	Valeriy	Porkujan	2	1966, 1970	Valeriy Porkujan
P-04838	Augusto	Porozo	1	2002	Augusto Porozo
P-05381	José Francisco	Porras	1	2006	José Francisco Porras
P-04966	Jaime	Portillo	1	1970	Jaime Portillo
P-09754	Alfonso	Portugal	1	1958	Alfonso Portugal
P-05311	Josef	Posipal	1	1954	Josef Posipal
P-05619	Tomáš	Pospíchal	1	1962	Tomáš Pospíchal
P-08063	Hélder	Postiga	2	2006, 2014	Hélder Postiga
P-05283	Philippe	Pottier	1	1962	Philippe Pottier
P-06854	Christian	Poulsen	2	2002, 2010	Christian Poulsen
P-04314	Jakob	Poulsen	1	2010	Jakob Poulsen
P-05785	Simon	Poulsen	1	2010	Simon Poulsen
P-05846	Yussuf	Poulsen	1	2018	Yussuf Poulsen
P-00122	Morteza	Pouraliganji	1	2018	Morteza Pouraliganji
P-04293	Martin	Povolny	1	1938	Martin Povolny
P-00531	Darryl	Powell	1	1998	Darryl Powell
P-06135	Aldo	Poy	1	1974	Aldo Poy
P-06329	Diego	Pozo	1	2010	Diego Pozo
P-06906	Eliseo	Prado	1	1958	Eliseo Prado
P-00671	Danijel	Pranjić	1	2014	Danijel Pranjić
P-04150	Gyula	Prassler	1	1938	Gyula Prassler
P-00934	Pierino	Prati	1	1970	Pierino Prati
P-00611	Léider	Preciado	1	1998	Léider Preciado
P-00303	Ștefan	Preda	1	1994	Ștefan Preda
P-04077	Johann	Pregesbauer	1	1982	Johann Pregesbauer
P-03855		Preguinho	1	1930	 Preguinho
P-09628	Michel	Preud'homme	2	1990, 1994	Michel Preud'homme
P-03441	Andrés	Prieto	1	1950	Andrés Prieto
P-06775	Ignacio	Prieto	1	1966	Ignacio Prieto
P-08584	Max	Prieto	1	1950	Max Prieto
P-09441	Aleksandar	Prijović	1	2018	Aleksandar Prijović
P-02541	David	Primo	1	1970	David Primo
P-00846	Sakis	Prittas	1	2010	Sakis Prittas
P-01943	Erich	Probst	1	1954	Erich Probst
P-02837	Zdeněk	Procházka	1	1954	Zdeněk Procházka
P-07024	Daniel	Prodan	1	1994	Daniel Prodan
P-05631	Herbert	Prohaska	2	1978, 1982	Herbert Prohaska
P-07639	Robert	Prosinečki	3	1990, 1998, 2002	Robert Prosinečki
P-08164	Mario	Prosperi	1	1966	Mario Prosperi
P-00672	Oleh	Protasov	2	1986, 1990	Oleh Protasov
P-03425	Davie	Provan	1	1982	Davie Provan
P-03521	Dado	Pršo	1	2006	Dado Pršo
P-02854	Florin	Prunea	2	1994, 1998	Florin Prunea
P-06678	Kazimierz	Przybyś	1	1986	Kazimierz Przybyś
P-02061	Antonín	Puč	2	1934, 1938	Antonín Puč
P-07946	Antonio	Puchades	1	1950	Antonio Puchades
P-06547	Ivan	Pudar	1	1982	Ivan Pudar
P-09917	Giorgio	Puia	1	1970	Giorgio Puia
P-04203	Wilfried	Puis	1	1970	Wilfried Puis
P-07221	Jabu	Pule	1	2002	Jabu Pule
P-05993	Paolo	Pulici	2	1974, 1978	Paolo Pulici
P-06495	Alan	Pulido	1	2014	Alan Pulido
P-02554	Héctor	Pulido	1	1970	Héctor Pulido
P-05880	Adalbert	Püllöck	1	1934	Adalbert Püllöck
P-05448	Nery	Pumpido	3	1982, 1986, 1990	Nery Pumpido
P-08569	Piet	Punt	1	1938	Piet Punt
P-03443	Ignaz	Puschnik	1	1958	Ignaz Puschnik
P-03793	Ferenc	Puskás	2	1954, 1962	Ferenc Puskás
P-06993	Lajos	Puskás	1	1966	Lajos Puskás
P-09845	László	Pusztai	1	1978	László Pusztai
P-02022	Victor	Putmans	1	1934	Victor Putmans
P-00568	Carles	Puyol	3	2002, 2006, 2010	Carles Puyol
P-07073	Anatoliy	Puzach	1	1970	Anatoliy Puzach
P-05803	Andrey	Pyatnitsky	1	1994	Andrey Pyatnitsky
P-06111	Andriy	Pyatov	1	2006	Andriy Pyatov
P-02714	Basim	Qasim	1	1986	Basim Qasim
P-02401	Hong	Qi	1	2002	Hong Qi
P-00105	Bo	Qu	1	2002	Bo Qu
P-05544	Fabio	Quagliarella	1	2010	Fabio Quagliarella
P-06488	Ricardo	Quaresma	1	2018	Ricardo Quaresma
P-03829	Daniel	Quaye	1	2006	Daniel Quaye
P-07846	René-Pierre	Quentin	1	1966	René-Pierre Quentin
P-09394	Yvan	Quentin	1	1994	Yvan Quentin
P-06805	Alfredo	Quesada	1	1978	Alfredo Quesada
P-02136	Vladimir	Quesada	1	1990	Vladimir Quesada
P-04301		Quim	1	2006	 Quim
P-01773	Roger	Quinche	1	1950	Roger Quinche
P-07185	Jacinto	Quincoces	1	1934	Jacinto Quincoces
P-04358		Quini	2	1978, 1982	 Quini
P-07328	Jimmy	Quinn	1	1986	Jimmy Quinn
P-03909	Niall	Quinn	2	1990, 2002	Niall Quinn
P-07392	Julio	Quintana	1	1930	Julio Quintana
P-01585	José	Quintanilla	1	1970	José Quintanilla
P-08560	Alberto	Quintano	1	1974	Alberto Quintano
P-02343	Juan Fernando	Quintero	2	2014, 2018	Juan Fernando Quintero
P-05496	Gustavo	Quinteros	1	1994	Gustavo Quinteros
P-07688	Fernando	Quirarte	1	1986	Fernando Quirarte
P-01396	Ramón	Quiroga	2	1978, 1982	Ramón Quiroga
P-00449	René	Quitral	1	1950	René Quitral
P-02427	Albert	Quixall	1	1954	Albert Quixall
P-01565	Ole	Qvist	1	1986	Ole Qvist
P-04026	Tibor	Rab	2	1978, 1982	Tibor Rab
P-04826	Mohammed	Rabiu	1	2014	Mohammed Rabiu
P-07068	Serge	Racine	1	1974	Serge Racine
P-05353	Antonio	Rada	1	1962	Antonio Rada
P-06222	Petar	Radaković	1	1962	Petar Radaković
P-06598	Dmitri	Radchenko	1	1994	Dmitri Radchenko
P-07803	Lucas	Radebe	2	1998, 2002	Lucas Radebe
P-04447	Ahmed	Radhi	1	1986	Ahmed Radhi
P-05872	Luigi	Radice	1	1962	Luigi Radice
P-01781	Libor	Radimec	1	1982	Libor Radimec
P-09571	Arkadiusz	Radomski	1	2006	Arkadiusz Radomski
P-07670	Nemanja	Radonjić	1	2018	Nemanja Radonjić
P-00279	Aleksandar	Radosavljević	1	2010	Aleksandar Radosavljević
P-07261	Predrag	Radosavljević	1	1998	Predrag Radosavljević
P-06196	Nikola	Radović	1	1958	Nikola Radović
P-01872	Ivo	Radovniković	1	1950	Ivo Radovniković
P-07785	Necula	Răducanu	1	1970	Necula Răducanu
P-08747	Florin	Răducioiu	2	1990, 1994	Florin Răducioiu
P-02570	Ismail	Rafaat	1	1934	Ismail Rafaat
P-07320	László	Raffinsky	2	1930, 1938	László Raffinsky
P-05725	Rudolf	Raftl	2	1934, 1938	Rudolf Raftl
P-03071	Randy	Ragan	1	1986	Randy Ragan
P-00964	Guillermo	Ragazzone	1	1982	Guillermo Ragazzone
P-09660	Hassan	Raghab	1	1934	Hassan Raghab
P-04189	Bakhtiar	Rahmani	1	2014	Bakhtiar Rahmani
P-08148	Helmut	Rahn	2	1954, 1958	Helmut Rahn
P-07367	Uwe	Rahn	1	1986	Uwe Rahn
P-05168		Raí	1	1994	 Raí
P-00476	Zdravko	Rajkov	1	1958	Zdravko Rajkov
P-04764	Predrag	Rajković	1	2018	Predrag Rajković
P-00271	Kiril	Rakarov	1	1962	Kiril Rakarov
P-05588	Ivan	Rakitić	2	2014, 2018	Ivan Rakitić
P-00677	Gyula	Rákosi	2	1962, 1966	Gyula Rákosi
P-08000	Antoni	Ramallets	1	1950	Antoni Ramallets
P-09804	William	Ramallo	1	1994	William Ramallo
P-04902	Ulrich	Ramé	1	2002	Ulrich Ramé
P-04704	Carsten	Ramelow	1	2002	Carsten Ramelow
P-05524	Adil	Rami	1	2018	Adil Rami
P-01441		Ramires	2	2010, 2014	 Ramires
P-01891	César	Ramírez	1	1998	César Ramírez
P-03276	Gastón	Ramírez	1	2014	Gastón Ramírez
P-05167	Jaime	Ramírez	2	1962, 1966	Jaime Ramírez
P-09241	Marcelo	Ramírez	1	1998	Marcelo Ramírez
P-09945	Miguel	Ramírez	1	1998	Miguel Ramírez
P-04856	Orlando	Ramírez	1	1966	Orlando Ramírez
P-05634	Oscar	Ramírez	1	1990	Oscar Ramírez
P-09589	Oswaldo	Ramírez	1	1970	Oswaldo Ramírez
P-04463	Ramón	Ramírez	2	1994, 1998	Ramón Ramírez
P-02077	Luis	Ramírez Zapata	1	1982	Luis Ramírez Zapata
P-03013	Adrián	Ramos	1	2014	Adrián Ramos
P-05711	Christian	Ramos	1	2018	Christian Ramos
P-07995	Eduardo	Ramos	1	1978	Eduardo Ramos
P-06059	Luis	Ramos	1	1966	Luis Ramos
P-09894	Mauricio	Ramos	1	1994	Mauricio Ramos
P-04233	Mauro	Ramos	3	1954, 1958, 1962	Mauro Ramos
P-00234	Sergio	Ramos	4	2006, 2010, 2014, 2018	Sergio Ramos
P-00670	Tab	Ramos	3	1990, 1994, 1998	Tab Ramos
P-01077	Venancio	Ramos	1	1986	Venancio Ramos
P-08364	Alf	Ramsey	1	1950	Alf Ramsey
P-06650	Paul	Ramsey	1	1986	Paul Ramsey
P-09375	Ahmed	Ramzy	1	1990	Ahmed Ramzy
P-03883	Hany	Ramzy	1	1990	Hany Ramzy
P-01420	Víctor	Rangel	1	1978	Víctor Rangel
P-05098	Milan	Rapaić	1	2002	Milan Rapaić
P-00005	Herman	Rapp	1	1934	Herman Rapp
P-07347	Marcus	Rashford	1	2018	Marcus Rashford
P-08950	Grzegorz	Rasiak	1	2006	Grzegorz Rasiak
P-00226	Gheorghe	Rășinaru	1	1938	Gheorghe Rășinaru
P-08578	Troels	Rasmussen	1	1986	Troels Rasmussen
P-05307	Vasyl	Rats	2	1986, 1990	Vasyl Rats
P-03187	Antonio	Rattín	2	1962, 1966	Antonio Rattín
P-00767	Oscar	Rauch	1	1938	Oscar Rauch
P-03846		Raúl	3	1998, 2002, 2006	 Raúl
P-06001	Pietro	Rava	1	1938	Pietro Rava
P-01995	Thomas	Ravelli	2	1990, 1994	Thomas Ravelli
P-08154	Cayetano	Ré	1	1958	Cayetano Ré
P-00469	Luciano	Re Cecconi	1	1974	Luciano Re Cecconi
P-00258	Roy	Rea	1	1958	Roy Rea
P-01475	Néicer	Reasco	1	2006	Néicer Reasco
P-03363	Ante	Rebić	2	2014, 2018	Ante Rebić
P-00704	Serhii	Rebrov	1	2006	Serhii Rebrov
P-08209	Rüştü	Reçber	1	2002	Rüştü Reçber
P-02460	Carlos	Recinos	1	1982	Carlos Recinos
P-00467	Álvaro	Recoba	1	2002	Álvaro Recoba
P-06765	Emilio	Recoba	1	1930	Emilio Recoba
P-09990	Bernardo	Redín	1	1990	Bernardo Redín
P-00712	Mircea	Rednic	1	1990	Mircea Rednic
P-02053	Fernando	Redondo	1	1994	Fernando Redondo
P-06682	David	Regis	2	1998, 2002	David Regis
P-03198	Luis	Regueiro	1	1934	Luis Regueiro
P-07101	Luis	Regueiro	1	1966	Luis Regueiro
P-04971	Mario	Regueiro	1	2002	Mario Regueiro
P-04911	Marko	Rehmer	1	2002	Marko Rehmer
P-09969	Stefan	Rehn	1	1994	Stefan Rehn
P-09146	Peter	Reid	1	1986	Peter Reid
P-00564	Steven	Reid	1	2002	Steven Reid
P-07468	Winston	Reid	1	2010	Winston Reid
P-00699	Severino	Reija	2	1962, 1966	Severino Reija
P-07345	Jack	Reilly	1	1974	Jack Reilly
P-00630	Theodor	Reimann	1	1954	Theodor Reimann
P-02742	Miguel	Reina	1	1966	Miguel Reina
P-07162	Pepe	Reina	4	2006, 2010, 2014, 2018	Pepe Reina
P-08877		Reinaldo	1	1978	 Reinaldo
P-03995	Uwe	Reinders	1	1982	Uwe Reinders
P-06613	Hannes	Reinmayr	1	1998	Hannes Reinmayr
P-07300	Carlos	Reinoso	1	1974	Carlos Reinoso
P-02678	Andreas	Reisinger	1	1990	Andreas Reisinger
P-07139	Michael	Reiziger	1	1998	Michael Reiziger
P-09932	Kjetil	Rekdal	2	1994, 1998	Kjetil Rekdal
P-06105	François	Remetter	2	1954, 1958	François Remetter
P-01107	Leandro	Remondini	1	1950	Leandro Remondini
P-01237	Loïc	Rémy	1	2014	Loïc Rémy
P-06086	Pascal	Renier	1	1994	Pascal Renier
P-07005	Michel	Renquin	2	1982, 1986	Michel Renquin
P-07325	Rob	Rensenbrink	2	1974, 1978	Rob Rensenbrink
P-02210	Johnny	Rep	2	1974, 1978	Johnny Rep
P-09116	Marco	Reus	1	2018	Marco Reus
P-06449	Stefan	Reuter	2	1990, 1998	Stefan Reuter
P-01874	Anthony	Réveillère	1	2010	Anthony Réveillère
P-00060	Daniel	Revelez	1	1990	Daniel Revelez
P-02372	Carles	Rexach	1	1978	Carles Rexach
P-05120	Gilbert	Rey	1	1962	Gilbert Rey
P-05516	Kurt	Rey	1	1950	Kurt Rey
P-07524	Diego	Reyes	1	2014	Diego Reyes
P-09846	Eladio	Reyes	1	1970	Eladio Reyes
P-05514	José Antonio	Reyes	1	2006	José Antonio Reyes
P-00137	José Pilar	Reyes	1	1978	José Pilar Reyes
P-09968	Pedro	Reyes	1	1998	Pedro Reyes
P-09596	Salvador	Reyes	3	1958, 1962, 1966	Salvador Reyes
P-02625	Eduardo	Reyes Ortiz	1	1930	Eduardo Reyes Ortiz
P-06275	Luis	Reyes Peñaranda	1	1930	Luis Reyes Peñaranda
P-01684	Claudio	Reyna	4	1994, 1998, 2002, 2006	Claudio Reyna
P-04591	Luis	Reyna	1	1982	Luis Reyna
P-06021	Rahman	Rezaei	1	2006	Rahman Rezaei
P-00658	Ramin	Rezaeian	1	2018	Ramin Rezaeian
P-09473	Abdelfettah	Rhiati	1	1986	Abdelfettah Rhiati
P-00844	Chol-myong	Ri	1	2010	Chol-myong Ri
P-02227	Jun-il	Ri	1	2010	Jun-il Ri
P-02982	Kwang-chon	Ri	1	2010	Kwang-chon Ri
P-01508	Kwang-hyok	Ri	1	2010	Kwang-hyok Ri
P-08570	Myong-guk	Ri	1	2010	Myong-guk Ri
P-04642	José	Ribeiro	1	1986	José Ribeiro
P-06507	Franck	Ribéry	2	2006, 2010	Franck Ribéry
P-09299	Hámilton	Ricard	1	1998	Hámilton Ricard
P-01516		Ricardinho	2	2002, 2006	 Ricardinho
P-05244	João	Ricardo	1	2006	João Ricardo
P-06623		Ricardo	1	2002	 Ricardo
P-00688		Ricardo	2	2002, 2006	 Ricardo
P-02790	Ray	Richards	1	1974	Ray Richards
P-04861	Lars	Ricken	1	2002	Lars Ricken
P-08271	Donovan	Ricketts	1	1998	Donovan Ricketts
P-01456	Karl-Heinz	Riedle	2	1990, 1994	Karl-Heinz Riedle
P-09586	Johann	Riegler	1	1954	Johann Riegler
P-00895	Marc	Rieper	1	1998	Marc Rieper
P-09291	Fernando	Riera	1	1950	Fernando Riera
P-08904	Jan	Říha	1	1938	Jan Říha
P-04760	Frank	Rijkaard	2	1990, 1994	Frank Rijkaard
P-03547	Luis	Rijo	1	1950	Luis Rijo
P-01828	Wim	Rijsbergen	2	1974, 1978	Wim Rijsbergen
P-03172		Rildo	1	1966	 Rildo
P-09638	Nick	Rimando	1	2014	Nick Rimando
P-00992	Miguel	Rimba	1	1994	Miguel Rimba
P-04428	Gilmar	Rinaldi	1	1994	Gilmar Rinaldi
P-01259	Freddy	Rincón	3	1990, 1994, 1998	Freddy Rincón
P-06339	Hipólito	Rincón	1	1986	Hipólito Rincón
P-09777	Patrice	Rio	1	1978	Patrice Rio
P-07125	Roger	Rio	1	1934	Roger Rio
P-01986	Bruce	Rioch	1	1978	Bruce Rioch
P-09887	Carlos	Riolfo	1	1930	Carlos Riolfo
P-02464	Juan Román	Riquelme	1	2006	Juan Román Riquelme
P-05143	Josh	Risdon	1	2018	Josh Risdon
P-06833	Vidar	Riseth	1	1998	Vidar Riseth
P-09743	Ferdinando	Riva	1	1954	Ferdinando Riva
P-04465	Gigi	Riva	2	1970, 1974	Gigi Riva
P-00008		Rivaldo	2	1998, 2002	 Rivaldo
P-01894	Catalino	Rivarola	1	1998	Catalino Rivarola
P-03155	Carlos	Rivas	1	1982	Carlos Rivas
P-04286	José María	Rivas	1	1982	José María Rivas
P-08994	Marcos	Rivas	1	1970	Marcos Rivas
P-01074	Roberto	Rivas	1	1970	Roberto Rivas
P-08138		Rivellino	3	1970, 1974, 1978	 Rivellino
P-06387	Bernabé	Rivera	1	1930	Bernabé Rivera
P-05966	Gianni	Rivera	4	1962, 1966, 1970, 1974	Gianni Rivera
P-06272	Urbano	Rivera	1	1954	Urbano Rivera
P-04068	Eliseo	Rivero	1	1986	Eliseo Rivero
P-04961	Cristian	Riveros	2	2006, 2010	Cristian Riveros
P-03762	Guillermo	Riveros	1	1930	Guillermo Riveros
P-08742	Feliciano	Rivilla	2	1962, 1966	Feliciano Rivilla
P-00823	Graham	Rix	1	1982	Graham Rix
P-09282	Francesco	Rizzo	1	1966	Francesco Rizzo
P-01172	Carlos	Roa	1	1998	Carlos Roa
P-06098	Arjen	Robben	3	2006, 2010, 2014	Arjen Robben
P-02337	Corneliu	Robe	1	1930	Corneliu Robe
P-04054		Roberto	1	1938	 Roberto
P-01390		Roberto	1	1970	 Roberto
P-02595		Roberto	1	1990	 Roberto
P-06345	Archie	Robertson	1	1958	Archie Robertson
P-07209	John	Robertson	2	1978, 1982	John Robertson
P-05977		Robinho	2	2006, 2010	 Robinho
P-03694	Paul	Robinson	1	2006	Paul Robinson
P-09540	George	Robledo	1	1950	George Robledo
P-02798	Enzo	Robotti	1	1962	Enzo Robotti
P-02500	Bobby	Robson	2	1958, 1962	Bobby Robson
P-01902	Bryan	Robson	3	1982, 1986, 1990	Bryan Robson
P-09787	Laurent	Robuschi	1	1966	Laurent Robuschi
P-01819	José Antonio	Roca	3	1950, 1954, 1958	José Antonio Roca
P-05145	Pedro	Rocha	4	1962, 1966, 1970, 1974	Pedro Rocha
P-08068	Ricardo	Rocha	2	1990, 1994	Ricardo Rocha
P-00360	Dominique	Rocheteau	3	1978, 1982, 1986	Dominique Rocheteau
P-02693	Gerhard	Rodax	1	1990	Gerhard Rodax
P-01422	Milan	Rodić	1	2018	Milan Rodić
P-09655	Sergey	Rodionov	2	1982, 1986	Sergey Rodionov
P-06336		Rodri	1	1962	 Rodri
P-07609		Rodrigo	1	2018	 Rodrigo
P-07704		Rodrigues	2	1950, 1954	 Rodrigues
P-00348	Alberto	Rodríguez	1	2002	Alberto Rodríguez
P-08258	Alberto	Rodríguez	1	2018	Alberto Rodríguez
P-06005	Álex	Rodríguez	1	2018	Álex Rodríguez
P-04556	Clemente	Rodríguez	1	2010	Clemente Rodríguez
P-00095	Cristian	Rodríguez	2	2014, 2018	Cristian Rodríguez
P-07901	Darío	Rodríguez	1	2002	Darío Rodríguez
P-09885	Francisco Javier	Rodríguez	3	2006, 2010, 2014	Francisco Javier Rodríguez
P-07893	Hugo René	Rodríguez	1	1978	Hugo René Rodríguez
P-06524	Ignacio	Rodríguez	1	1986	Ignacio Rodríguez
P-02251	Jaime	Rodríguez	1	1982	Jaime Rodríguez
P-03676	James	Rodríguez	2	2014, 2018	James Rodríguez
P-00589	Johan	Rodríguez	1	2002	Johan Rodríguez
P-06371	Jorge	Rodríguez	1	1994	Jorge Rodríguez
P-04148	José Antonio	Rodríguez	1	1938	José Antonio Rodríguez
P-06157	José Luis	Rodríguez	1	2018	José Luis Rodríguez
P-05781	Juan	Rodríguez	1	1974	Juan Rodríguez
P-09944	Juan José	Rodríguez	1	2002	Juan José Rodríguez
P-02444	Leonardo	Rodríguez	1	1994	Leonardo Rodríguez
P-09136	Manuel	Rodríguez	1	1962	Manuel Rodríguez
P-08723	Mauricio	Rodríguez	1	1970	Mauricio Rodríguez
P-09914	Maxi	Rodríguez	3	2006, 2010, 2014	Maxi Rodríguez
P-08372	Michael	Rodríguez	1	2006	Michael Rodríguez
P-00366	Raymundo	Rodríguez	1	1930	Raymundo Rodríguez
P-09446	Ricardo	Rodríguez	2	2014, 2018	Ricardo Rodríguez
P-01842	Rodolfo	Rodríguez	1	1986	Rodolfo Rodríguez
P-06794	Víctor	Rodríguez Andrade	2	1950, 1954	Víctor Rodríguez Andrade
P-05609	Lizardo	Rodríguez Nue	1	1930	Lizardo Rodríguez Nue
P-04313	Tom	Rogic	1	2018	Tom Rogic
P-07853	Marcus	Rohdén	1	2018	Marcus Rohdén
P-07666	Alfredo	Rojas	2	1958, 1966	Alfredo Rojas
P-02517	Arístides	Rojas	1	1998	Arístides Rojas
P-08735	Carlos	Rojas	1	1950	Carlos Rojas
P-01190	Darío	Rojas	1	1994	Darío Rojas
P-06161	Eladio	Rojas	1	1962	Eladio Rojas
P-01440	Francisco	Rojas	1	1998	Francisco Rojas
P-02749	Joao	Rojas	1	2014	Joao Rojas
P-01030	José Manuel	Rojas	1	2014	José Manuel Rojas
P-04571	Manuel	Rojas	1	1982	Manuel Rojas
P-04255	Oscar	Rojas	1	1982	Oscar Rojas
P-08836	Percy	Rojas	2	1978, 1982	Percy Rojas
P-08601	Ricardo	Rojas	1	1998	Ricardo Rojas
P-05770	Roberto	Rojas	1	1978	Roberto Rojas
P-02956	Marcos	Rojo	2	2014, 2018	Marcos Rojo
P-01329	Rachid	Rokki	1	1998	Rachid Rokki
P-01381		Rolando	1	2010	 Rolando
P-09382	Fernando	Roldán	1	1950	Fernando Roldán
P-01003	Wolfgang	Rolff	1	1986	Wolfgang Rolff
P-05185	Antonio	Roma	2	1962, 1966	Antonio Roma
P-06332	Moshe	Romano	1	1970	Moshe Romano
P-01935	Oleg	Romantsev	1	1982	Oleg Romantsev
P-06466	Alaixys	Romao	1	2006	Alaixys Romao
P-05935		Romaric	2	2006, 2010	 Romaric
P-07489		Romário	2	1990, 1994	 Romário
P-09608	Carlos	Romero	1	1950	Carlos Romero
P-02843	Enrique	Romero	1	2002	Enrique Romero
P-05956	Gerardo	Romero	1	1930	Gerardo Romero
P-00859	Jorge Lino	Romero	1	1958	Jorge Lino Romero
P-00797	Julio César	Romero	1	1986	Julio César Romero
P-02533	Marcelo	Romero	1	2002	Marcelo Romero
P-05413	Pedro	Romero	1	1962	Pedro Romero
P-01742	Sergio	Romero	2	2010, 2014	Sergio Romero
P-06138		Romeu	1	1938	 Romeu
P-02256	Dennis	Rommedahl	2	2002, 2010	Dennis Rommedahl
P-00215	Jorge	Romo	2	1954, 1958	Jorge Romo
P-00414		Ronaldão	1	1994	 Ronaldão
P-09952		Ronaldinho	2	2002, 2006	 Ronaldinho
P-03015	Cristiano	Ronaldo	4	2006, 2010, 2014, 2018	Cristiano Ronaldo
P-04601		Ronaldo	4	1994, 1998, 2002, 2006	 Ronaldo
P-07122	Frederik	Rønnow	1	2018	Frederik Rønnow
P-01990	Jimmy	Rooney	1	1974	Jimmy Rooney
P-06747	Wayne	Rooney	3	2006, 2010, 2014	Wayne Rooney
P-06663	Felipe	Rosas	1	1930	Felipe Rosas
P-04652	Manuel	Rosas	1	1930	Manuel Rosas
P-08655	Roberto	Rosato	2	1966, 1970	Roberto Rosato
P-03179	Peter	Rösch	1	1962	Peter Rösch
P-06732	Danny	Rose	1	2018	Danny Rose
P-06146	Zvi	Rosen	1	1970	Zvi Rosen
P-04645	Kjell	Rosén	1	1950	Kjell Rosén
P-02663	Nils	Rosén	1	1934	Nils Rosén
P-05637	Markus	Rosenberg	1	2006	Markus Rosenberg
P-04605	Shmuel	Rosenthal	1	1970	Shmuel Rosenthal
P-03587	Virginio	Rosetta	1	1934	Virginio Rosetta
P-00304	Hassan	Roshan	1	1978	Hassan Roshan
P-03836	Tomáš	Rosický	1	2006	Tomáš Rosický
P-08173	Néstor	Rossi	1	1958	Néstor Rossi
P-08324	Oscar	Rossi	1	1962	Oscar Rossi
P-08703	Paolo	Rossi	3	1978, 1982, 1986	Paolo Rossi
P-00362	Youssef	Rossi	1	1998	Youssef Rossi
P-08973	Ruslan	Rotan	1	2006	Ruslan Rotan
P-09270	Iosif	Rotariu	1	1990	Iosif Rotariu
P-02733	Antal	Róth	1	1986	Antal Róth
P-05981	Hassan	Roudbarian	1	2006	Hassan Roudbarian
P-07047	Alan	Rough	3	1978, 1982, 1986	Alan Rough
P-09636	Olivier	Rouyer	1	1978	Olivier Rouyer
P-05292	Bryan	Roy	2	1990, 1994	Bryan Roy
P-06700	David	Rozehnal	1	2006	David Rozehnal
P-09765	Francisco	Rúa	1	1934	Francisco Rúa
P-03216		Rubens	1	1954	 Rubens
P-05002	Luis	Rubiños	1	1970	Luis Rubiños
P-07913	Antonio	Rüdiger	1	2018	Antonio Rüdiger
P-03526	Mladen	Rudonja	1	2002	Mladen Rudonja
P-04031	Sebastian	Rudy	1	2018	Sebastian Rudy
P-01149	Wojciech	Rudy	1	1978	Wojciech Rudy
P-00026	Martin	Rueda	1	1994	Martin Rueda
P-07297	Peter	Rufai	2	1994, 1998	Peter Rufai
P-02097	Wynton	Rufer	1	1982	Wynton Rufer
P-03192	Stéphane	Ruffier	1	2014	Stéphane Ruffier
P-03907	José Luis	Rugamas	1	1982	José Luis Rugamas
P-06983	Oscar	Ruggeri	3	1986, 1990, 1994	Oscar Ruggeri
P-01115	Mário	Rui	1	2018	Mário Rui
P-03818		Rui	1	1950	 Rui
P-03102	Raúl	Ruidíaz	1	2018	Raúl Ruidíaz
P-01537	Bryan	Ruiz	2	2014, 2018	Bryan Ruiz
P-00395	Rodrigo	Ruiz	1	1950	Rodrigo Ruiz
P-08940	José	Ruíz	1	1930	José Ruíz
P-00891	Rubén	Ruiz Díaz	1	1998	Rubén Ruiz Díaz
P-01635	Antonio	Rukavina	2	2010, 2018	Antonio Rukavina
P-09720	Nikita	Rukavytsya	1	2010	Nikita Rukavytsya
P-05412	Oldřich	Rulc	1	1938	Oldřich Rulc
P-09455	César	Ruminski	1	1954	César Ruminski
P-08975	Karl-Heinz	Rummenigge	3	1978, 1982, 1986	Karl-Heinz Rummenigge
P-01187	Rúnar Alex	Rúnarsson	1	2018	Rúnar Alex Rúnarsson
P-06056	Eugen	Rupf	1	1938	Eugen Rupf
P-08151	Sigurd	Rushfeldt	1	1994	Sigurd Rushfeldt
P-06359	Andriy	Rusol	1	2006	Andriy Rusol
P-02511	Kurt	Russ	1	1990	Kurt Russ
P-06917		Russinho	1	1930	 Russinho
P-02623	Rolf	Rüssmann	1	1978	Rolf Rüssmann
P-06069	Albert	Rust	1	1986	Albert Rust
P-02809	Graeme	Rutjes	1	1990	Graeme Rutjes
P-03242	Felipe	Ruvalcaba	2	1962, 1966	Felipe Ruvalcaba
P-06460	Francis	Ryan	1	1934	Francis Ryan
P-00344	Mathew	Ryan	2	2014, 2018	Mathew Ryan
P-09994	Maciej	Rybus	1	2018	Maciej Rybus
P-06791	Anders	Rydberg	1	1934	Anders Rydberg
P-03044	Ingvar	Rydell	1	1950	Ingvar Rydell
P-09509	Chang-kil	Ryoo	1	1966	Chang-kil Ryoo
P-02082	Sergey	Ryzhikov	1	2014	Sergey Ryzhikov
P-03193	Tomasz	Rząsa	1	2002	Tomasz Rząsa
P-08953	Francisco	Sá	1	1974	Francisco Sá
P-07219	Naeem	Saad	1	1982	Naeem Saad
P-05045	Naeim	Saadavi	1	1998	Naeim Saadavi
P-06719	Guillermo	Saavedra	1	1930	Guillermo Saavedra
P-06740	Humberto	Saavedra	1	1950	Humberto Saavedra
P-07262	Giuseppe	Sabadini	1	1974	Giuseppe Sabadini
P-01984	Youssouf	Sabaly	1	2018	Youssouf Sabaly
P-00591	Refik	Šabanadžović	1	1990	Refik Šabanadžović
P-02974	Ioan	Sabău	1	1990	Ioan Sabău
P-02888	Abdelilah	Saber	1	1998	Abdelilah Saber
P-02508	Mauricio	Sabillón	1	2010	Mauricio Sabillón
P-05302	Yozhef	Sabo	2	1962, 1966	Yozhef Sabo
P-02299	Álvaro	Saborío	1	2006	Álvaro Saborío
P-03873	Federico	Sacchi	1	1962	Federico Sacchi
P-01930	Ayan	Sadakov	1	1986	Ayan Sadakov
P-09096	Karim	Saddam	1	1986	Karim Saddam
P-00269	Amir Hossein	Sadeghi	2	2006, 2014	Amir Hossein Sadeghi
P-05601	Mohammad	Sadeghi	1	1978	Mohammad Sadeghi
P-09164	Abdelhamid	Sadmi	1	1986	Abdelhamid Sadmi
P-03067	Robert	Sadowski	1	1938	Robert Sadowski
P-01699	Salvador	Sadurní	1	1962	Salvador Sadurní
P-07855	Hussein	Saeed	1	1986	Hussein Saeed
P-00619	Birkir Már	Sævarsson	1	2018	Birkir Már Sævarsson
P-07557	André	Saeys	1	1930	André Saeys
P-02114	Osvaldo	Saez	1	1950	Osvaldo Saez
P-00713	František	Šafránek	2	1954, 1958	František Šafránek
P-08754	Bacary	Sagna	2	2010, 2014	Bacary Sagna
P-08395	Willy	Sagnol	2	2002, 2006	Willy Sagnol
P-04008	Louis	Saha	1	2006	Louis Saha
P-08989	Mohammed	Sahil	1	1986	Mohammed Sahil
P-08489	Karim	Saidi	1	2006	Karim Saidi
P-06946	Rafik	Saïfi	1	2010	Rafik Saïfi
P-07044	Trent	Sainsbury	1	2018	Trent Sainsbury
P-08445	Guy	Saint-Vil	1	1974	Guy Saint-Vil
P-02557	Roger	Saint-Vil	1	1974	Roger Saint-Vil
P-04947	Alberto	Sainz	1	1962	Alberto Sainz
P-09361	Renato	Sáinz	1	1930	Renato Sáinz
P-09601	Romain	Saïss	1	2018	Romain Saïss
P-02744	Toshihide	Saito	1	1998	Toshihide Saito
P-06136	Manabu	Saitō	1	2014	Manabu Saitō
P-02840	Gōtoku	Sakai	2	2014, 2018	Gōtoku Sakai
P-03906	Hiroki	Sakai	2	2014, 2018	Hiroki Sakai
P-04692	Diafra	Sakho	1	2018	Diafra Sakho
P-00728	Mamadou	Sakho	1	2014	Mamadou Sakho
P-07698	Claudio	Sala	1	1978	Claudio Sala
P-02306	Patrizio	Sala	1	1978	Patrizio Sala
P-09422	Mohamed	Salah	1	2018	Mohamed Salah
P-01929	Marcelo	Salas	1	1998	Marcelo Salas
P-08059	Kornel	Saláta	1	2010	Kornel Saláta
P-01413	Jaime	Salazar	1	1958	Jaime Salazar
P-06152	Carlos	Salcedo	1	2018	Carlos Salcedo
P-00971	Carlos	Salcido	3	2006, 2010, 2014	Carlos Salcido
P-05923	Zoilo	Saldombide	1	1930	Zoilo Saldombide
P-05528	Hamzah	Saleh	2	1994, 1998	Hamzah Saleh
P-07023	Oleg	Salenko	1	1994	Oleg Salenko
P-01956	Horacio López	Salgado	1	1970	Horacio López Salgado
P-06514	José Luis	Salgado	1	1994	José Luis Salgado
P-08072	Míchel	Salgado	1	2006	Míchel Salgado
P-09407	Salvador	Salguero	1	1982	Salvador Salguero
P-02418	Radhouane	Salhi	1	1998	Radhouane Salhi
P-06313	Moustapha	Salifou	1	2006	Moustapha Salifou
P-02358	Sejad	Salihović	1	2014	Sejad Salihović
P-00416	Mohamed	Salim	1	1990	Mohamed Salim
P-06984	Félix	Salinas	1	1970	Félix Salinas
P-08552	Julio	Salinas	3	1986, 1990, 1994	Julio Salinas
P-05979	Sándor	Sallai	2	1982, 1986	Sándor Sallai
P-01973	Edgar	Salli	1	2014	Edgar Salli
P-03661	Sergei	Salnikov	1	1958	Sergei Salnikov
P-02656	Dimitris	Salpingidis	2	2010, 2014	Dimitris Salpingidis
P-02257	Héctor	Salvá	1	1966	Héctor Salvá
P-05440	Luis Miguel	Salvador	1	1994	Luis Miguel Salvador
P-09179	Sandro	Salvadore	2	1962, 1966	Sandro Salvadore
P-03438	Eduardo	Salvio	1	2018	Eduardo Salvio
P-01251	Mohamed	Samadi	1	1994	Mohamed Samadi
P-00791	Georgios	Samaras	2	2010, 2014	Georgios Samaras
P-06148	Andreas	Samaris	1	2014	Andreas Samaris
P-04584	Aleksandr	Samedov	2	2014, 2018	Aleksandr Samedov
P-00571	Saad	Samir	1	2018	Saad Samir
P-04988	Matthias	Sammer	1	1994	Matthias Sammer
P-06509		Sammir	1	2014	 Sammir
P-05926	César	Sampaio	1	1998	César Sampaio
P-02911	Collin	Samuel	1	2006	Collin Samuel
P-08299	Randy	Samuel	1	1986	Randy Samuel
P-06535	Walter	Samuel	2	2002, 2010	Walter Samuel
P-00466	Jack	Samuels	1	1938	Jack Samuels
P-09363	Lennart	Samuelsson	1	1950	Lennart Samuelsson
P-08677	Isidoro	San José	1	1978	Isidoro San José
P-00899	Daniel	Sanabria	1	2002	Daniel Sanabria
P-08149	Alexis	Sánchez	2	2010, 2014	Alexis Sánchez
P-02138	Alfredo Viejo	Sánchez	1	1930	Alfredo Viejo Sánchez
P-03031	Carlos	Sánchez	1	2018	Carlos Sánchez
P-05737	Carlos	Sánchez	2	2014, 2018	Carlos Sánchez
P-06285	Davinson	Sánchez	1	2018	Davinson Sánchez
P-05216	Efraín	Sánchez	1	1962	Efraín Sánchez
P-05370	Erwin	Sánchez	1	1994	Erwin Sánchez
P-07659	Hugo	Sánchez	3	1978, 1986, 1994	Hugo Sánchez
P-03787	Joel	Sánchez	1	1998	Joel Sánchez
P-06737	Leonel	Sánchez	2	1962, 1966	Leonel Sánchez
P-03778	Óscar	Sánchez	1	1994	Óscar Sánchez
P-01342	Oswaldo	Sánchez	3	1998, 2002, 2006	Oswaldo Sánchez
P-08883	Raúl	Sánchez	1	1962	Raúl Sánchez
P-08726	Tente	Sánchez	1	1982	Tente Sánchez
P-08334	Wellington	Sánchez	1	2002	Wellington Sánchez
P-02839	Quique	Sánchez Flores	1	1990	Quique Sánchez Flores
P-07131	Manuel	Sanchís	1	1966	Manuel Sanchís
P-07369	Manuel	Sanchís	1	1990	Manuel Sanchís
P-04849	Brent	Sancho	1	2006	Brent Sancho
P-00508	Ebbe	Sand	2	1998, 2002	Ebbe Sand
P-08549	Roland	Sandberg	1	1974	Roland Sandberg
P-04087	Emil	Săndoi	1	1990	Emil Săndoi
P-05727	Károly	Sándor	2	1958, 1962	Károly Sándor
P-09908	Eulogio	Sandoval	1	1950	Eulogio Sandoval
P-03340	Rodolfo	Sandoval	1	1970	Rodolfo Sandoval
P-07374	Marco	Sandy	1	1994	Marco Sandy
P-05569	Salif	Sané	1	2018	Salif Sané
P-02950	José	Sanfilippo	2	1958, 1962	José Sanfilippo
P-07507	Siyabonga	Sangweni	1	2010	Siyabonga Sangweni
P-00098	Dino	Sani	1	1958	Dino Sani
P-08908	Goran	Sankovič	1	2002	Goran Sankovič
P-05568	Tony	Sanneh	1	2002	Tony Sanneh
P-00406	Emmanuel	Sanon	1	1974	Emmanuel Sanon
P-01416	Kenny	Sansom	2	1982, 1986	Kenny Sansom
P-00386	José	Santa	1	1998	José Santa
P-08379	Roque	Santa Cruz	3	2002, 2006, 2010	Roque Santa Cruz
P-07353	Anderson	Santamaría	1	2018	Anderson Santamaría
P-02867	José	Santamaría	2	1954, 1962	José Santamaría
P-06364	Santiago	Santamaría	1	1982	Santiago Santamaría
P-08488	Jonathan	Santana	1	2010	Jonathan Santana
P-03150	Ivan	Šantek	1	1958	Ivan Šantek
P-00561		Santillana	2	1978, 1982	 Santillana
P-03588	Sergio	Santín	1	1986	Sergio Santín
P-07506	Miguel Ángel	Santoro	1	1974	Miguel Ángel Santoro
P-04296	Alessandro	Santos	2	2002, 2006	Alessandro Santos
P-08651	Djalma	Santos	4	1954, 1958, 1962, 1966	Djalma Santos
P-07263	Francileudo	Santos	1	2006	Francileudo Santos
P-07035	Héctor	Santos	2	1970, 1974	Héctor Santos
P-03057	Márcio	Santos	1	1994	Márcio Santos
P-04894	Nílton	Santos	4	1950, 1954, 1958, 1962	Nílton Santos
P-05246	Paulo	Santos	1	2006	Paulo Santos
P-03637	Luis	Santos Silva	1	1958	Luis Santos Silva
P-07973	Marek	Sapara	1	2010	Marek Sapara
P-04769	Robert	Sara	1	1978	Robert Sara
P-01131	Pedro	Sarabia	2	1998, 2002	Pedro Sarabia
P-05746	Mario	Saralegui	1	1986	Mario Saralegui
P-07586	Dimitris	Saravakos	1	1994	Dimitris Saravakos
P-03219	Burhan	Sargun	1	1954	Burhan Sargun
P-07362	Daniel	Šarić	1	2002	Daniel Šarić
P-04254	Luis	Saritama	2	2006, 2014	Luis Saritama
P-01896	Genaro	Sarmeno	1	1970	Genaro Sarmeno
P-09625	Jorge	Sarmiento	1	1930	Jorge Sarmiento
P-05213	Juan Carlos	Sarnari	1	1966	Juan Carlos Sarnari
P-00916	Béla	Sárosi	1	1938	Béla Sárosi
P-02366	György	Sárosi	2	1934, 1938	György Sárosi
P-09373	László	Sárosi	2	1958, 1962	László Sárosi
P-03728	Hans	Sarpei	2	2006, 2010	Hans Sarpei
P-07567	Ismaïla	Sarr	1	2018	Ismaïla Sarr
P-07191	Pape	Sarr	1	2002	Pape Sarr
P-06286	Ottorino	Sartor	1	1978	Ottorino Sartor
P-09284	Ferenc	Sas	1	1938	Ferenc Sas
P-01357	Hasan	Şaş	1	2002	Hasan Şaş
P-07640	José	Sasía	2	1962, 1966	José Sasía
P-06072	Ferjani	Sassi	1	2018	Ferjani Sassi
P-00134	Sadok	Sassi	1	1978	Sadok Sassi
P-08971	Lajos	Sătmăreanu	1	1970	Lajos Sătmăreanu
P-01277	Jesús María	Satrústegui	1	1982	Jesús María Satrústegui
P-08826		Saúl	1	2018	 Saúl
P-02836	Enrique	Saura	1	1982	Enrique Saura
P-07118	Niša	Saveljić	1	1998	Niša Saveljić
P-06405	Dejan	Savićević	2	1990, 1998	Dejan Savićević
P-00238	Javier	Saviola	1	2006	Javier Saviola
P-03147	Günter	Sawitzki	2	1958, 1962	Günter Sawitzki
P-00886	Lionel	Scaloni	1	2006	Lionel Scaloni
P-02775	Héctor	Scarone	1	1930	Héctor Scarone
P-08643	Stijn	Schaars	1	2010	Stijn Schaars
P-02601	Walter	Schachner	2	1978, 1982	Walter Schachner
P-04722	Erich	Schaedler	1	1974	Erich Schaedler
P-07714	Manfred	Schaefer	1	1974	Manfred Schaefer
P-09457	Hans	Schäfer	3	1954, 1958, 1962	Hans Schäfer
P-06987	Anton	Schall	1	1934	Anton Schall
P-07536	Fabian	Schär	2	2014, 2018	Fabian Schär
P-05183	Adolf	Scherer	2	1958, 1962	Adolf Scherer
P-08493	Fryderyk	Scherfke	1	1938	Fryderyk Scherfke
P-06470	Vladimiro	Schettina	1	1986	Vladimiro Schettina
P-08519	Juan Alberto	Schiaffino	2	1950, 1954	Juan Alberto Schiaffino
P-02250	Angelo	Schiavio	1	1934	Angelo Schiavio
P-08043	Gordon	Schildenfeld	1	2014	Gordon Schildenfeld
P-04373	Salvatore	Schillaci	1	1990	Salvatore Schillaci
P-01249	Jean-Claude	Schindelholz	1	1966	Jean-Claude Schindelholz
P-06529	Michael	Schjønberg	1	1998	Michael Schjønberg
P-02373	Walter	Schleger	2	1954, 1958	Walter Schleger
P-03722	Willibald	Schmaus	2	1934, 1938	Willibald Schmaus
P-01263	Kasper	Schmeichel	1	2018	Kasper Schmeichel
P-02722	Peter	Schmeichel	1	1998	Peter Schmeichel
P-01706	Aki	Schmidt	1	1958	Aki Schmidt
P-05499	Kurt	Schmied	2	1954, 1958	Kurt Schmied
P-08384	František	Schmucker	1	1962	František Schmucker
P-01853	Carlos	Schneeberger	1	1930	Carlos Schneeberger
P-00685	Bernd	Schneider	2	2002, 2006	Bernd Schneider
P-04534	Morgan	Schneiderlin	1	2014	Morgan Schneiderlin
P-06714	Heinz	Schneiter	2	1962, 1966	Heinz Schneiter
P-01670	Walter	Schneiter	1	1950	Walter Schneiter
P-06318	Karl-Heinz	Schnellinger	4	1958, 1962, 1966, 1970	Karl-Heinz Schnellinger
P-04204	Rüdiger	Schnuphase	1	1974	Rüdiger Schnuphase
P-07720	Arend	Schoemaker	1	1934	Arend Schoemaker
P-01370	Dick	Schoenaker	1	1978	Dick Schoenaker
P-01721	Paul	Scholes	2	1998, 2002	Paul Scholes
P-05484	Lasse	Schöne	1	2018	Lasse Schöne
P-07106	Markus	Schopp	1	1998	Markus Schopp
P-05800	Peter	Schöttel	2	1990, 1998	Peter Schöttel
P-04914	Frederik	Schram	1	2018	Frederik Schram
P-06440	Piet	Schrijvers	2	1974, 1978	Piet Schrijvers
P-07464	Viliam	Schrojf	3	1954, 1958, 1962	Viliam Schrojf
P-01732	Ernest	Schultz	1	1954	Ernest Schultz
P-04069	Willi	Schulz	3	1962, 1966, 1970	Willi Schulz
P-03585	Harald	Schumacher	2	1982, 1986	Harald Schumacher
P-09818	André	Schürrle	1	2014	André Schürrle
P-03107	Johnny	Schuth	1	1966	Johnny Schuth
P-04562	Yisha'ayahu	Schwager	1	1970	Yisha'ayahu Schwager
P-02782	Hans	Schwartz	1	1934	Hans Schwartz
P-00216	Sándor	Schwartz	1	1934	Sándor Schwartz
P-04066	Stefan	Schwarz	2	1990, 1994	Stefan Schwarz
P-09492	Hans-Georg	Schwarzenbeck	2	1974, 1978	Hans-Georg Schwarzenbeck
P-09593	Mark	Schwarzer	2	2006, 2010	Mark Schwarzer
P-04728	Pirmin	Schwegler	1	2010	Pirmin Schwegler
P-03082	Bastian	Schweinsteiger	3	2006, 2010, 2014	Bastian Schweinsteiger
P-00872	Enzo	Scifo	4	1986, 1990, 1994, 1998	Enzo Scifo
P-05815	Gaetano	Scirea	3	1978, 1982, 1986	Gaetano Scirea
P-03988	Alejandro	Scopelli	1	1930	Alejandro Scopelli
P-09080	Norberto	Scoponi	1	1994	Norberto Scoponi
P-02063	Jason	Scotland	1	2006	Jason Scotland
P-07141	Alex	Scott	1	1958	Alex Scott
P-06538	Jackie	Scott	1	1958	Jackie Scott
P-03620	Laurie	Scott	1	1950	Laurie Scott
P-05384	Andrés	Scotti	1	2010	Andrés Scotti
P-06958	David	Seaman	3	1990, 1998, 2002	David Seaman
P-04021	Frank	Séchehaye	1	1934	Frank Séchehaye
P-04907	Clarence	Seedorf	1	1998	Clarence Seedorf
P-04896	Uwe	Seeler	4	1958, 1962, 1966, 1970	Uwe Seeler
P-09827	Haris	Seferovic	2	2014, 2018	Haris Seferovic
P-03132	Joan	Segarra	1	1962	Joan Segarra
P-05491	Armando	Segato	1	1954	Armando Segato
P-05995	Branko	Šegota	1	1986	Branko Šegota
P-03063	Darío	Segovia	1	1958	Darío Segovia
P-08485	Wolfgang	Seguin	1	1974	Wolfgang Seguin
P-05115	Miguel	Segura	1	1990	Miguel Segura
P-02709	Giourkas	Seitaridis	1	2010	Giourkas Seitaridis
P-04115	Dragoslav	Šekularac	2	1958, 1962	Dragoslav Šekularac
P-01297	Branislav	Sekulić	1	1930	Branislav Sekulić
P-07775	Hans	Selander	1	1970	Hans Selander
P-02019	Aleksander	Šeliga	1	2010	Aleksander Šeliga
P-03019	Jamal	Sellami	1	1998	Jamal Sellami
P-06681	Adel	Sellimi	2	1998, 2002	Adel Sellimi
P-05129	Arne	Selmosson	1	1958	Arne Selmosson
P-08873	Franco	Selvaggi	1	1982	Franco Selvaggi
P-08479	Tibor	Selymes	2	1994, 1998	Tibor Selymes
P-09150	Sergei	Semak	1	2002	Sergei Semak
P-07764	Stanislav	Seman	1	1982	Stanislav Seman
P-00526	Léon	Semmeling	1	1970	Léon Semmeling
P-01769	Igor	Semshov	1	2002	Igor Semshov
P-09028	Andrei	Semyonov	2	2014, 2018	Andrei Semyonov
P-09310	Yao Junior	Sènaya	1	2006	Yao Junior Sènaya
P-05851	Philippe	Senderos	3	2006, 2010, 2014	Philippe Senderos
P-06206	Karel	Senecký	1	1938	Karel Senecký
P-01708	Helmut	Senekowitsch	1	1958	Helmut Senekowitsch
P-00331	Marcos	Senna	1	2006	Marcos Senna
P-09702	Dmitri	Sennikov	1	2002	Dmitri Sennikov
P-07721	Juan Antonio	Señor	1	1986	Juan Antonio Señor
P-02800	Roberto Néstor	Sensini	3	1990, 1994, 1998	Roberto Néstor Sensini
P-08444	Lucidio	Sentimenti	1	1950	Lucidio Sentimenti
P-06428	Dong-myung	Seo	1	1998	Dong-myung Seo
P-03315	Jung-won	Seo	2	1994, 1998	Jung-won Seo
P-07749	Ki-hyeon	Seol	2	2002, 2006	Ki-hyeon Seol
P-01777	Grațian	Sepi	1	1934	Grațian Sepi
P-02094	Carlos	Septién	2	1950, 1954	Carlos Septién
P-03300	Guillermo	Sepúlveda	2	1958, 1962	Guillermo Sepúlveda
P-01795	Douglas	Sequeira	1	2006	Douglas Sequeira
P-09791	Behnam	Seraj	1	1998	Behnam Seraj
P-06194	Pietro	Serantoni	1	1938	Pietro Serantoni
P-04344	Viktor	Serebryanikov	3	1962, 1966, 1970	Viktor Serebryanikov
P-01147	Turgay	Şeren	1	1954	Turgay Şeren
P-03691	Aldo	Serena	2	1986, 1990	Aldo Serena
P-04049		Sergi	2	1994, 1998	 Sergi
P-06564		Serginho	1	1982	 Serginho
P-00939		Sergio	1	2002	 Sergio
P-00689	Paulo	Sérgio	1	1982	Paulo Sérgio
P-08943	Paulo	Sérgio	1	1994	Paulo Sérgio
P-03740	Anthony	Šerić	3	1998, 2002, 2006	Anthony Šerić
P-08143	Mauricio	Serna	2	1994, 1998	Mauricio Serna
P-07884	Rolando	Serrano	1	1962	Rolando Serrano
P-01792	José	Serrizuela	1	1990	José Serrizuela
P-05997	Raúl	Servín	1	1986	Raúl Servín
P-03956	Enrique	Sesma	1	1958	Enrique Sesma
P-00993	Karl	Sesta	1	1934	Karl Sesta
P-07743	Stanislav	Šesták	1	2010	Stanislav Šesták
P-05798	Miloš	Šestić	1	1982	Miloš Šestić
P-01548	Quique	Setién	1	1986	Quique Setién
P-03833	Maurice	Setters	1	1958	Maurice Setters
P-05178	Dean	Sewell	1	1998	Dean Sewell
P-05289	Corneel	Seys	1	1938	Corneel Seys
P-06839	Lazăr	Sfera	2	1934, 1938	Lazăr Sfera
P-00734	Ciriaco	Sforza	1	1994	Ciriaco Sforza
P-05425	Rami	Shaaban	1	2006	Rami Shaaban
P-06767	Reza	Shahroudi	1	1998	Reza Shahroudi
P-07457	Nadhim	Shaker	1	1986	Nadhim Shaker
P-09607	Samir	Shaker	1	1986	Samir Shaker
P-04759	Aleksandar	Shalamanov	2	1966, 1970	Aleksandar Shalamanov
P-07654	Igor	Shalimov	1	1990	Igor Shalimov
P-07799	Jiayi	Shao	1	2002	Jiayi Shao
P-02710	Xherdan	Shaqiri	3	2010, 2014, 2018	Xherdan Shaqiri
P-01827	Graeme	Sharp	1	1986	Graeme Sharp
P-04520	Oleg	Shatov	1	2014	Oleg Shatov
P-07862	Luke	Shaw	1	2014	Luke Shaw
P-04290	Ayman	Shawky	1	1990	Ayman Shawky
P-06118	Georgi	Shchennikov	1	2014	Georgi Shchennikov
P-03894	Alan	Shearer	1	1998	Alan Shearer
P-02909	Kevin	Sheedy	1	1990	Kevin Sheedy
P-00772	Oleh	Shelayev	1	2006	Oleh Shelayev
P-09762	Ramaz	Shengelia	1	1982	Ramaz Shengelia
P-01942	John	Sheridan	2	1990, 1994	John Sheridan
P-09554	Teddy	Sheringham	2	1998, 2002	Teddy Sheringham
P-07920	Albert	Shesternyov	3	1962, 1966, 1970	Albert Shesternyov
P-08264	Andriy	Shevchenko	1	2006	Andriy Shevchenko
P-08520	Gaku	Shibasaki	1	2018	Gaku Shibasaki
P-02088		Shikabala	1	2018	 Shikabala
P-01294	Illiasu	Shilla	1	2006	Illiasu Shilla
P-06748	Peter	Shilton	3	1982, 1986, 1990	Peter Shilton
P-06446	Hong-gi	Shin	1	1994	Hong-gi Shin
P-06091	Yung-kyoo	Shin	1	1966	Yung-kyoo Shin
P-05264	Danny	Shittu	1	2010	Danny Shittu
P-09503	Danny	Shmulevich-Rom	1	1970	Danny Shmulevich-Rom
P-09564	Leonid	Shmuts	1	1970	Leonid Shmuts
P-01928	Ahmed	Shobair	1	1990	Ahmed Shobair
P-03614	Ali	Shojaei	1	1978	Ali Shojaei
P-07415	Masoud	Shojaei	3	2006, 2014, 2018	Masoud Shojaei
P-07772	Gen	Shoji	1	2018	Gen Shoji
P-04590	Ike	Shorunmu	1	2002	Ike Shorunmu
P-05442	Oleksandr	Shovkovskyi	1	2006	Oleksandr Shovkovskyi
P-06408	Itzhak	Shum	1	1970	Itzhak Shum
P-04572	Roni	Shuruk	1	1970	Roni Shuruk
P-03406	Bohdan	Shust	1	2006	Bohdan Shust
P-00602	Cédric	Si Mohamed	1	2014	Cédric Si Mohamed
P-04543	Samson	Siasia	1	1994	Samson Siasia
P-03553	MacBeth	Sibaya	2	2002, 2010	MacBeth Sibaya
P-03551	Paweł	Sibik	1	2002	Paweł Sibik
P-05722	Georgi	Sichinava	1	1966	Georgi Sichinava
P-02030	Djibril	Sidibé	1	2018	Djibril Sidibé
P-08199	Hans	Siegenthaler	1	1950	Hans Siegenthaler
P-06234	Klaus-Dieter	Sieloff	2	1966, 1970	Klaus-Dieter Sieloff
P-05313	José Luis	Sierra	1	1998	José Luis Sierra
P-03678	Michalis	Sifakis	1	2010	Michalis Sifakis
P-06647	Otto	Siffling	2	1934, 1938	Otto Siffling
P-00623	Ben	Sigmund	1	2010	Ben Sigmund
P-07755	Giuseppe	Signori	1	1994	Giuseppe Signori
P-05141	Björn Bergmann	Sigurðarson	1	2018	Björn Bergmann Sigurðarson
P-02859	Gylfi	Sigurðsson	1	2018	Gylfi Sigurðsson
P-00896	Ragnar	Sigurðsson	1	2018	Ragnar Sigurðsson
P-04653	Vasilije	Šijaković	2	1958, 1962	Vasilije Šijaković
P-02906	Jerry	Sikhosana	1	1998	Jerry Sikhosana
P-06869	Paulo	Silas	2	1986, 1990	Paulo Silas
P-04318	Peter	Sillett	1	1958	Peter Sillett
P-07399	Josef	Silný	1	1934	Josef Silný
P-09910	Adrien	Silva	1	2018	Adrien Silva
P-05538	Alfonso	Silva	1	1950	Alfonso Silva
P-02415	André	Silva	1	2018	André Silva
P-03025	Bernardo	Silva	1	2018	Bernardo Silva
P-04696	Darío	Silva	1	2002	Darío Silva
P-09465	David	Silva	3	2010, 2014, 2018	David Silva
P-09993	Francisco	Silva	1	2014	Francisco Silva
P-03761	Gastón	Silva	1	2018	Gastón Silva
P-07605	Gilberto	Silva	3	2002, 2006, 2010	Gilberto Silva
P-02197	Héctor	Silva	2	1962, 1966	Héctor Silva
P-04813	Jaime	Silva	1	1962	Jaime Silva
P-04610	Juan	Silva	1	1974	Juan Silva
P-03707	Martín	Silva	3	2010, 2014, 2018	Martín Silva
P-07966	Mauro	Silva	1	1994	Mauro Silva
P-04249		Silva	1	1966	 Silva
P-05614	Rafa	Silva	1	2014	Rafa Silva
P-02425	Thiago	Silva	3	2010, 2014, 2018	Thiago Silva
P-03505	Mikaël	Silvestre	2	2002, 2006	Mikaël Silvestre
P-04616		Simão	2	2006, 2010	 Simão
P-09579	Carmelo	Simeone	1	1966	Carmelo Simeone
P-04818	Diego	Simeone	3	1994, 1998, 2002	Diego Simeone
P-07197	Simeon	Simeonov	3	1966, 1970, 1974	Simeon Simeonov
P-04541	Marko	Simeunovič	1	2002	Marko Simeunovič
P-02113	Dario	Šimić	3	1998, 2002, 2006	Dario Šimić
P-05608	Augustine	Simo	1	1998	Augustine Simo
P-07450	António	Simões	1	1966	António Simões
P-06683	Jacques	Simon	1	1966	Jacques Simon
P-05757	Juan	Simón	1	1990	Juan Simón
P-04180	René	Simons	1	1934	René Simons
P-06131	Timmy	Simons	1	2002	Timmy Simons
P-07551	Allan	Simonsen	1	1986	Allan Simonsen
P-04675	Peter	Simonsen	1	1982	Peter Simonsen
P-06078	Agne	Simonsson	1	1958	Agne Simonsson
P-06130	Nikita	Simonyan	1	1958	Nikita Simonyan
P-00617	Adolf	Šimperský	1	1934	Adolf Šimperský
P-08178	Billy	Simpson	1	1958	Billy Simpson
P-00153	Fitzroy	Simpson	1	1998	Fitzroy Simpson
P-09336	Ladislav	Šimůnek	1	1938	Ladislav Šimůnek
P-00167	Josip	Šimunić	2	2002, 2006	Josip Šimunić
P-05446	Frank	Sinclair	1	1998	Frank Sinclair
P-07454	Trevor	Sinclair	1	2002	Trevor Sinclair
P-07395	Matthias	Sindelar	1	1934	Matthias Sindelar
P-04575		Sinha	1	2006	 Sinha
P-00324	Giovanni	Sio	1	2014	Giovanni Sio
P-06261	Libor	Sionko	1	2006	Libor Sionko
P-06517	Ferenc	Sipos	3	1958, 1962, 1966	Ferenc Sipos
P-06558	Nasko	Sirakov	2	1986, 1994	Nasko Sirakov
P-03089	Salvatore	Sirigu	1	2014	Salvatore Sirigu
P-02032	Moussa	Sissoko	1	2014	Moussa Sissoko
P-08663	Pione	Sisto	1	2018	Pione Sisto
P-07735	John	Sivebæk	1	1986	John Sivebæk
P-03865	Omar	Sívori	1	1962	Omar Sívori
P-00182	Didier	Six	2	1978, 1982	Didier Six
P-08429	Gustav	Sjöberg	1	1938	Gustav Sjöberg
P-01558	Thomas	Sjöberg	1	1978	Thomas Sjöberg
P-07674	Ellyes	Skhiri	1	2018	Ellyes Skhiri
P-02360	Josip	Skoblar	1	1962	Josip Skoblar
P-03611	Lennart	Skoglund	2	1950, 1958	Lennart Skoglund
P-09371	Josip	Skoko	1	2006	Josip Skoko
P-01189	Stefan	Skoumal	1	1938	Stefan Skoumal
P-01685	Piotr	Skrobowski	1	1982	Piotr Skrobowski
P-04145	Martin	Škrtel	1	2010	Martin Škrtel
P-03413	Tomáš	Skuhravý	1	1990	Tomáš Skuhravý
P-03774	Ari Freyr	Skúlason	1	2018	Ari Freyr Skúlason
P-03889	Ólafur Ingi	Skúlason	1	2018	Ólafur Ingi Skúlason
P-06851	Bill	Slater	1	1958	Bill Slater
P-00107	Bernie	Slaven	1	1990	Bernie Slaven
P-02287	Islam	Slimani	1	2014	Islam Slimani
P-07090	Kacem	Slimani	1	1970	Kacem Slimani
P-00189	Naïm	Sliti	1	2018	Naïm Sliti
P-01250	Edhem	Šljivo	1	1982	Edhem Šljivo
P-08340	Philip	Slone	1	1930	Philip Slone
P-06384	Chris	Smalling	1	2014	Chris Smalling
P-00528	Philibert	Smellinckx	2	1934, 1938	Philibert Smellinckx
P-03936	Shane	Smeltz	1	2010	Shane Smeltz
P-04589	Alexey	Smertin	1	2002	Alexey Smertin
P-03055	Rudi	Smidts	1	1994	Rudi Smidts
P-09689	Josef	Smistik	1	1934	Josef Smistik
P-01717	Kick	Smit	2	1934, 1938	Kick Smit
P-03369	Bobby	Smith	1	1958	Bobby Smith
P-08345	Ian	Smith	1	2018	Ian Smith
P-05971	Tommy	Smith	1	2010	Tommy Smith
P-03495	Euzebiusz	Smolarek	1	2006	Euzebiusz Smolarek
P-02033	Włodzimierz	Smolarek	2	1982, 1986	Włodzimierz Smolarek
P-09408	Igor	Smolnikov	1	2018	Igor Smolnikov
P-09926	Fyodor	Smolov	1	2018	Fyodor Smolov
P-06373	Wesley	Sneijder	3	2006, 2010, 2014	Wesley Sneijder
P-04092	Theo	Snelders	1	1994	Theo Snelders
P-05395	Ramadan	Sobhi	1	2018	Ramadan Sobhi
P-02176	Radosław	Sobolewski	1	2006	Radosław Sobolewski
P-02890	Jiří	Sobotka	1	1934	Jiří Sobotka
P-07085	Luís	Sobrinho	1	1986	Luís Sobrinho
P-03939	Jorge	Socías	1	1974	Jorge Socías
P-05379	Héctor	Socorro	1	1938	Héctor Socorro
P-03716		Sócrates	2	1982, 1986	 Sócrates
P-07355	Efe	Sodje	1	2002	Efe Sodje
P-01060	Suvarte	Soedarmadji	1	1938	Suvarte Soedarmadji
P-02937	Hitoshi	Sogahata	1	2002	Hitoshi Sogahata
P-06585	Georgi	Sokolov	1	1962	Georgi Sokolov
P-01980	Jorge	Solari	1	1966	Jorge Solari
P-09634	Ståle	Solbakken	1	1998	Ståle Solbakken
P-07578	Felice	Soldini	1	1950	Felice Soldini
P-00457	Zvonimir	Soldo	2	1998, 2002	Zvonimir Soldo
P-04136	Pedro	Solé	1	1934	Pedro Solé
P-09901	Gérard	Soler	1	1982	Gérard Soler
P-01615	Tarek	Soliman	1	1990	Tarek Soliman
P-04090	Mauricio	Solís	2	2002, 2006	Mauricio Solís
P-01577	Andrei	Solomatin	1	2002	Andrei Solomatin
P-01127	Ole Gunnar	Solskjær	1	1998	Ole Gunnar Solskjær
P-02463	Ernő	Solymosi	1	1962	Ernő Solymosi
P-01927	Naoki	Soma	1	1998	Naoki Soma
P-09905	Rezső	Somlai	1	1934	Rezső Somlai
P-06753	Juergen	Sommer	2	1994, 1998	Juergen Sommer
P-05007	Yann	Sommer	2	2014, 2018	Yann Sommer
P-01218	Heung-min	Son	2	2014, 2018	Heung-min Son
P-07820	Wesley	Sonck	1	2002	Wesley Sonck
P-04965	Alex	Song	2	2010, 2014	Alex Song
P-07275	Chong-gug	Song	2	2002, 2006	Chong-gug Song
P-01447	Rigobert	Song	4	1994, 1998, 2002, 2010	Rigobert Song
P-00356	Jacques	Songo'o	4	1990, 1994, 1998, 2002	Jacques Songo'o
P-06297	Mike	Sorber	1	1994	Mike Sorber
P-01875	De	Sordi	1	1958	De Sordi
P-04455	Thomas	Sørensen	2	2002, 2010	Thomas Sørensen
P-00957	Alberto	Soria	1	1930	Alberto Soria
P-01676	Rubén	Soria	1	1962	Rubén Soria
P-00015	Vladimir	Soria	1	1994	Vladimir Soria
P-09874	Juan Pablo	Sorín	2	2002, 2006	Juan Pablo Sorín
P-05578	Gøran	Sørloth	1	1994	Gøran Sørloth
P-07307	Angelo	Sormani	1	1962	Angelo Sormani
P-05312	Gonzalo	Sorondo	1	2002	Gonzalo Sorondo
P-06929	Modesto	Soruco	1	1994	Modesto Soruco
P-02641	Francisco	Sosa	1	1950	Francisco Sosa
P-04876	Mario	Sosa	1	1938	Mario Sosa
P-05698	Roberto	Sosa	2	1962, 1966	Roberto Sosa
P-05699	Rubén	Sosa	1	1962	Rubén Sosa
P-00399	Rubén	Sosa	1	1990	Rubén Sosa
P-07638	Milutin	Šoškić	1	1962	Milutin Šoškić
P-08328	Isidoro	Sota	1	1930	Isidoro Sota
P-00655	Hugo	Sotil	2	1970, 1978	Hugo Sotil
P-08962	Mario	Soto	1	1982	Mario Soto
P-05771	Pedro	Soto	1	1978	Pedro Soto
P-01901	Skander	Souayah	1	1998	Skander Souayah
P-07478	Hillal	Soudani	1	2014	Hillal Soudani
P-09054	Abdelaziz	Souleimani	1	1986	Abdelaziz Souleimani
P-09225	Graeme	Souness	3	1978, 1982, 1986	Graeme Souness
P-00133	António	Sousa	1	1986	António Sousa
P-06510	Paulo	Sousa	1	2002	Paulo Sousa
P-06513	Gareth	Southgate	2	1998, 2002	Gareth Southgate
P-03415	Rafael	Souto	1	1954	Rafael Souto
P-05970	Ed	Souza	1	1950	Ed Souza
P-07805	John	Souza	1	1950	John Souza
P-00521	Luis	Souza Ferreira	1	1930	Luis Souza Ferreira
P-00669	Kálmán	Sóvári	2	1962, 1966	Kálmán Sóvári
P-02891	Moussa	Sow	1	2018	Moussa Sow
P-09232	Carlos	Spadaro	1	1930	Carlos Spadaro
P-06966	Emir	Spahić	1	2014	Emir Spahić
P-05534	Ljubiša	Spajić	1	1954	Ljubiša Spajić
P-08767	Uroš	Spajić	1	2018	Uroš Spajić
P-02636	Jürgen	Sparwasser	1	1974	Jürgen Sparwasser
P-05849	Predrag	Spasić	1	1990	Predrag Spasić
P-03131	Teofilo	Spasojević	1	1930	Teofilo Spasojević
P-02501	Jonathan	Spector	1	2010	Jonathan Spector
P-08139	Giora	Spiegel	1	1970	Giora Spiegel
P-04002	Mordechai	Spiegler	1	1970	Mordechai Spiegler
P-07649	Luciano	Spinosi	1	1974	Luciano Spinosi
P-05158	Matthew	Spiranovic	1	2014	Matthew Spiranovic
P-00378	Hermann	Springer	1	1938	Hermann Springer
P-09122	Ron	Springett	2	1962, 1966	Ron Springett
P-09933	Christoph	Spycher	1	2006	Christoph Spycher
P-01140	Nikos	Spyropoulos	1	2010	Nikos Spyropoulos
P-08183	Carlos	Squeo	1	1974	Carlos Squeo
P-01663	Sébastien	Squillaci	1	2010	Sébastien Squillaci
P-07151	Bassem	Srarfi	1	2018	Bassem Srarfi
P-06622	Erich	Srbek	1	1934	Erich Srbek
P-09858	Darijo	Srna	2	2006, 2014	Darijo Srna
P-04418	Guillermo	Stábile	1	1930	Guillermo Stábile
P-01507	Imrich	Stacho	2	1954, 1958	Imrich Stacho
P-00292	Lorenzo	Staelens	3	1990, 1994, 1998	Lorenzo Staelens
P-02243	Jiří	Štajner	1	2006	Jiří Štajner
P-09546	Jaap	Stam	1	1998	Jaap Stam
P-04143	František	Štambachr	1	1982	František Štambachr
P-04102	Constantin	Stanciu	1	1930	Constantin Stanciu
P-00472	Dumitru	Stângaciu	1	1998	Dumitru Stângaciu
P-04365	Mario	Stanić	2	1998, 2002	Mario Stanić
P-05894	Ron	Staniforth	1	1954	Ron Staniforth
P-06164	Branko	Stanković	2	1950, 1954	Branko Stanković
P-06204	Dejan	Stanković	3	1998, 2006, 2010	Dejan Stanković
P-04919	Vujadin	Stanojković	1	1990	Vujadin Stanojković
P-06310	Frank	Stapleton	1	1990	Frank Stapleton
P-00131	Steve	Staunton	3	1990, 1994, 2002	Steve Staunton
P-05577	Stefan	Staykov	1	1974	Stefan Staykov
P-01890	Brian	Steen Nielsen	1	2002	Brian Steen Nielsen
P-00928	Ljubiša	Stefanović	1	1930	Ljubiša Stefanović
P-04308	Willi	Steffen	1	1950	Willi Steffen
P-07879	Uli	Stein	1	1986	Uli Stein
P-03292	Adalbert	Steiner	1	1930	Adalbert Steiner
P-07953	Paul	Steiner	1	1990	Paul Steiner
P-09333	Jan	Stejskal	1	1990	Jan Stejskal
P-09120	Maarten	Stekelenburg	2	2006, 2010	Maarten Stekelenburg
P-00733	Bogdan	Stelea	3	1990, 1994, 1998	Bogdan Stelea
P-04040	Adolf	Stelzer	1	1938	Adolf Stelzer
P-00663	Fredrik	Stenman	1	2006	Fredrik Stenman
P-08880	Alex	Stepney	1	1970	Alex Stepney
P-04284	František	Šterc	1	1934	František Šterc
P-04325	Mile	Sterjovski	1	2006	Mile Sterjovski
P-00442	Raheem	Sterling	2	2014, 2018	Raheem Sterling
P-05275	László	Sternberg	1	1934	László Sternberg
P-09980	Kurt	Stettler	1	1962	Kurt Stettler
P-08625	Dalibor	Stevanović	1	2010	Dalibor Stevanović
P-09201	Trevor	Steven	2	1986, 1990	Trevor Steven
P-03735	Gary	Stevens	1	1986	Gary Stevens
P-01957	Gary	Stevens	2	1986, 1990	Gary Stevens
P-01392	Miroslav	Stević	1	1998	Miroslav Stević
P-07086	Jimmy	Steward	1	1982	Jimmy Steward
P-04862	Earnie	Stewart	3	1994, 1998, 2002	Earnie Stewart
P-06370	Ian	Stewart	1	1986	Ian Stewart
P-06450	Jim	Stewart	1	1974	Jim Stewart
P-09744	Jozef	Štibrányi	1	1962	Jozef Štibrányi
P-09412	Uli	Stielike	1	1982	Uli Stielike
P-07358	Xavier	Stierli	1	1966	Xavier Stierli
P-08558	Émile	Stijnen	1	1938	Émile Stijnen
P-09076	Nobby	Stiles	2	1966, 1970	Nobby Stiles
P-02317	Igor	Štimac	1	1998	Igor Štimac
P-03701	Ovidiu	Stîngă	2	1994, 1998	Ovidiu Stîngă
P-01651	Nikola	Stipić	1	1962	Nikola Stipić
P-01690	Miroslav	Stoch	1	2010	Miroslav Stoch
P-05975	Valentin	Stocker	1	2014	Valentin Stocker
P-08215	Peter	Stöger	1	1998	Peter Stöger
P-06855	Hristo	Stoichkov	2	1994, 1998	Hristo Stoichkov
P-00545	Stoycho	Stoilov	1	1998	Stoycho Stoilov
P-01343	Milan	Stojanović	1	1930	Milan Stojanović
P-01862	Mirko	Stojanović	1	1962	Mirko Stojanović
P-04091	Ernst	Stojaspal	1	1954	Ernst Stojaspal
P-07957	Dragan	Stojković	2	1990, 1998	Dragan Stojković
P-07265	Nenad	Stojković	1	1982	Nenad Stojković
P-09415	Vladimir	Stojković	3	2006, 2010, 2018	Vladimir Stojković
P-05630	Georg	Stollenwerk	1	1958	Georg Stollenwerk
P-01135	John	Stollmeyer	1	1990	John Stollmeyer
P-07039	John	Stones	1	2018	John Stones
P-09124	Yannick	Stopyra	1	1986	Yannick Stopyra
P-01045	Karl	Stotz	2	1954, 1958	Karl Stotz
P-04789	Ivan	Stoyanov	1	1974	Ivan Stoyanov
P-02376	Gordon	Strachan	2	1982, 1986	Gordon Strachan
P-03743	František	Straka	1	1990	František Straka
P-01114	Roar	Strand	2	1994, 1998	Roar Strand
P-00291	André	Strappe	1	1954	André Strappe
P-00532	Heinrich	Strasser	1	1978	Heinrich Strasser
P-00809	Zdeno	Štrba	1	2010	Zdeno Štrba
P-02702	Josef	Streb	1	1934	Josef Streb
P-00222	Heinz	Strehl	1	1962	Heinz Strehl
P-03168	Joachim	Streich	1	1974	Joachim Streich
P-06764	Michael	Streiter	1	1990	Michael Streiter
P-05522	Jakob	Streitle	1	1938	Jakob Streitle
P-03270	Marco	Streller	1	2006	Marco Streller
P-03531	Pleun	Strik	1	1974	Pleun Strik
P-05188	Ivan	Strinić	1	2018	Ivan Strinić
P-09244	Josef	Stroh	2	1934, 1938	Josef Stroh
P-04680	Glenn	Strömberg	1	1990	Glenn Strömberg
P-03681	Karel	Stromšík	1	1982	Karel Stromšík
P-08126	Thomas	Strunz	1	1994	Thomas Strunz
P-00225	Branko	Strupar	1	2002	Branko Strupar
P-07245	Estanislao	Struway	1	2002	Estanislao Struway
P-09946	Jens	Stryger Larsen	1	2018	Jens Stryger Larsen
P-00527	Cristhian	Stuani	2	2014, 2018	Cristhian Stuani
P-06758	Georges	Stuber	2	1950, 1954	Georges Stuber
P-00625	Jürg	Studer	1	1994	Jürg Studer
P-09808	Hans	Sturm	2	1958, 1962	Hans Sturm
P-07055	Daniel	Sturridge	1	2014	Daniel Sturridge
P-08539	Paul	Sturrock	2	1982, 1986	Paul Sturrock
P-03181	Maozhen	Su	1	2002	Maozhen Su
P-01166	Arico	Suárez	1	1930	Arico Suárez
P-09161	Claudio	Suárez	3	1994, 1998, 2006	Claudio Suárez
P-00921	Luis	Suárez	2	1962, 1966	Luis Suárez
P-05749	Luis	Suárez	3	2010, 2014, 2018	Luis Suárez
P-04843	David	Suazo	1	2010	David Suazo
P-01439	Humberto	Suazo	1	2010	Humberto Suazo
P-09559	Ilie	Subăşeanu	1	1930	Ilie Subăşeanu
P-08712	Danijel	Subašić	2	2014, 2018	Danijel Subašić
P-04702	Guillermo	Subiabre	1	1930	Guillermo Subiabre
P-07241	Nestor	Subiat	1	1994	Nestor Subiat
P-04981	Neven	Subotić	1	2010	Neven Subotić
P-04320	Patrick	Suffo	1	2002	Patrick Suffo
P-04705	Davor	Šuker	3	1990, 1998, 2002	Davor Šuker
P-06124	Hakan	Şükür	1	2002	Hakan Şükür
P-00908	Abdullah	Sulaiman Zubromawi	3	1994, 1998, 2002	Abdullah Sulaiman Zubromawi
P-04059	Tengiz	Sulakvelidze	1	1982	Tengiz Sulakvelidze
P-06295	Niklas	Süle	1	2018	Niklas Süle
P-05962	Marko	Šuler	1	2010	Marko Šuler
P-06278	Christopher	Sullivan	1	1990	Christopher Sullivan
P-03994	Derrick	Sullivan	1	1958	Derrick Sullivan
P-09523	Neil	Sullivan	1	1998	Neil Sullivan
P-05624	Abdualla	Sultan	1	1990	Abdualla Sultan
P-05848	Rashid	Sumaila	1	2014	Rashid Sumaila
P-05984	Steve	Sumner	1	1982	Steve Sumner
P-05252	Jihai	Sun	1	2002	Jihai Sun
P-06002	Stig	Sundqvist	1	1950	Stig Sundqvist
P-00205	Nak-woon	Sung	1	1954	Nak-woon Sung
P-04076	Toni	Šunjić	1	2014	Toni Šunjić
P-05281	William	Sunsing	1	2002	William Sunsing
P-04912	Ivica	Šurjak	2	1974, 1982	Ivica Šurjak
P-00515	Safet	Sušić	2	1982, 1990	Safet Sušić
P-02313	Tino-Sven	Sušić	1	2014	Tino-Sven Sušić
P-01332	Yuri	Susloparov	1	1982	Yuri Susloparov
P-03453	Alain	Sutter	1	1994	Alain Sutter
P-08987	Wim	Suurbier	2	1974, 1978	Wim Suurbier
P-04499	Takayuki	Suzuki	1	2002	Takayuki Suzuki
P-03175	Kurt	Svanström	1	1938	Kurt Svanström
P-00988	Anders	Svensson	2	2002, 2006	Anders Svensson
P-01570	Gustav	Svensson	1	2018	Gustav Svensson
P-02696	Kalle	Svensson	2	1950, 1958	Kalle Svensson
P-08855	Karl	Svensson	1	2006	Karl Svensson
P-05915	Kurt	Svensson	1	1950	Kurt Svensson
P-03409	Magnus	Svensson	1	2002	Magnus Svensson
P-06977	Michael	Svensson	1	2002	Michael Svensson
P-08881	Tommy	Svensson	1	1970	Tommy Svensson
P-05532	Tore	Svensson	2	1950, 1958	Tore Svensson
P-05697	Vyacheslav	Sviderskyi	1	2006	Vyacheslav Sviderskyi
P-03404	Ratko	Svilar	1	1982	Ratko Svilar
P-05738	Slavko	Svinjarević	1	1962	Slavko Svinjarević
P-05088	František	Svoboda	1	1934	František Svoboda
P-08377	Peter	Swan	1	1962	Peter Swan
P-02450	Mike	Sweeney	1	1986	Mike Sweeney
P-07318	Piotr	Świerczewski	1	2002	Piotr Świerczewski
P-01061	Franz	Swoboda	1	1958	Franz Swoboda
P-03504	Dmitri	Sychev	1	2002	Dmitri Sychev
P-03095	Tony	Sylva	1	2002	Tony Sylva
P-05465	Patrick	Sylvestre	1	1994	Patrick Sylvestre
P-01037	Antal	Szabó	2	1934, 1938	Antal Szabó
P-02857	Gábor	Szabó	1	1934	Gábor Szabó
P-00497	Antal	Szalay	2	1934, 1938	Antal Szalay
P-02278	Rudolf	Szanwald	1	1958	Rudolf Szanwald
P-00830	Andrzej	Szarmach	3	1974, 1978, 1982	Andrzej Szarmach
P-03985	Władysław	Szczepaniak	1	1938	Władysław Szczepaniak
P-05752	Wojciech	Szczęsny	1	2018	Wojciech Szczęsny
P-00385	József	Szendrei	1	1986	József Szendrei
P-04097	Lázár	Szentes	1	1982	Lázár Szentes
P-01497	Antal	Szentmihályi	2	1962, 1966	Antal Szentmihályi
P-07985	Fritz	Szepan	2	1934, 1938	Fritz Szepan
P-08467	Gusztáv	Szepesi	1	1966	Gusztáv Szepesi
P-01745	Oszkár	Szigeti	1	1958	Oszkár Szigeti
P-00487	Ferenc	Szojka	2	1954, 1958	Ferenc Szojka
P-04057	György	Szűcs	2	1934, 1938	György Szűcs
P-08942	Horst	Szymaniak	2	1958, 1962	Horst Szymaniak
P-01871	Antoni	Szymanowski	2	1974, 1978	Antoni Szymanowski
P-05628	Mirosław	Szymkowiak	1	2006	Mirosław Szymkowiak
P-01309	Ely	Tacchella	2	1962, 1966	Ely Tacchella
P-02992	Stefano	Tacconi	1	1990	Stefano Tacconi
P-09529	Alex	Tachie-Mensah	1	2006	Alex Tachie-Mensah
P-05659	Panagiotis	Tachtsidis	1	2014	Panagiotis Tachtsidis
P-03014	Dušan	Tadić	1	2018	Dušan Tadić
P-07436	Cláudio	Taffarel	3	1990, 1994, 1998	Cláudio Taffarel
P-08516	Adam	Taggart	1	2014	Adam Taggart
P-06494	Nicolás	Tagliafico	1	2018	Nicolás Tagliafico
P-03368	Ahmed Reda	Tagnaouti	1	2018	Ahmed Reda Tagnaouti
P-06619	Prince	Tagoe	1	2010	Prince Tagoe
P-07390	Mostafa	Taha	1	1934	Mostafa Taha
P-00784	Ayman	Taher	1	1990	Ayman Taher
P-06948	Walter	Taibo	1	1966	Walter Taibo
P-06925	Saphir	Taïder	1	2014	Saphir Taïder
P-09671	Hans	Taihuttu	1	1938	Hans Taihuttu
P-08780		Taison	1	2018	 Taison
P-00403	Taye	Taiwo	1	2010	Taye Taiwo
P-09267	Naohiro	Takahara	1	2006	Naohiro Takahara
P-03126	Alfredo	Talavera	2	2014, 2018	Alfredo Talavera
P-09513	Rachamim	Talbi	1	1970	Rachamim Talbi
P-09788	Vahid	Talebloo	1	2006	Vahid Talebloo
P-04718	Keiji	Tamada	2	2006, 2010	Keiji Tamada
P-09387	István	Tamássy	1	1934	István Tamássy
P-04231	Jean	Tamini	1	1950	Jean Tamini
P-03522	Mo Heng	Tan	1	1938	Mo Heng Tan
P-05602	See Han	Tan	1	1938	See Han Tan
P-09938	Marcus Tulio	Tanaka	1	2010	Marcus Tulio Tanaka
P-07110	Franco	Tancredi	1	1986	Franco Tancredi
P-08844	Carlos	Tapia	1	1986	Carlos Tapia
P-05875	Nelson	Tapia	1	1998	Nelson Tapia
P-04852	Renato	Tapia	1	2018	Renato Tapia
P-00524	Börje	Tapper	1	1950	Börje Tapper
P-07967	Staffan	Tapper	2	1974, 1978	Staffan Tapper
P-00447	Aníbal	Tarabini	1	1966	Aníbal Tarabini
P-06305	Alberto	Tarantini	2	1978, 1982	Alberto Tarantini
P-01093	Ryszard	Tarasiewicz	1	1986	Ryszard Tarasiewicz
P-06751	Marco	Tardelli	3	1978, 1982, 1986	Marco Tardelli
P-09082	Mehdi	Taremi	1	2018	Mehdi Taremi
P-02638	Michael	Tarnat	1	1998	Michael Tarnat
P-06011	Coşkun	Taş	1	1954	Coşkun Taş
P-03679	Serdar	Tasci	1	2010	Serdar Tasci
P-05378	André	Tassin	1	1930	André Tassin
P-04846	Mauro	Tassotti	1	1994	Mauro Tassotti
P-02723	Gheorghe	Tătaru	1	1970	Gheorghe Tătaru
P-06659	Stephen	Tataw	2	1990, 1994	Stephen Tataw
P-02882	Gaston	Taument	1	1994	Gaston Taument
P-08689	Ricardo	Tavarelli	1	2002	Ricardo Tavarelli
P-00775	Rajko	Tavčar	1	2002	Rajko Tavčar
P-03669	Jim	Taylor	1	1950	Jim Taylor
P-07172	Tommy	Taylor	1	1954	Tommy Taylor
P-03070	Ouro-Nimini	Tchagnirou	1	2006	Ouro-Nimini Tchagnirou
P-07164	Alphonse	Tchami	2	1994, 1998	Alphonse Tchami
P-01740	Massamasso	Tchangai	1	2006	Massamasso Tchangai
P-05797	Bill	Tchato	1	2002	Bill Tchato
P-01113	Simon	Tchobang	1	1982	Simon Tchobang
P-05150		Teilherber	1	1938	 Teilherber
P-00683	Alfred	Teinitzer	1	1954	Alfred Teinitzer
P-09421	Luis	Tejada	1	2018	Luis Tejada
P-08307	Carlos	Tejas	1	1998	Carlos Tejas
P-07595	Yeltsin	Tejeda	2	2014, 2018	Yeltsin Tejeda
P-08074	Domingo	Tejera	1	1930	Domingo Tejera
P-03194	Eusebio	Tejera	2	1950, 1954	Eusebio Tejera
P-04830	Roberto	Telch	1	1974	Roberto Telch
P-09365	Pál	Teleki	1	1934	Pál Teleki
P-06414	Rodrigo	Tello	1	2010	Rodrigo Tello
P-07222	Rudi	Telwe	1	1938	Rudi Telwe
P-06457	Alfredo	Tena	1	1978	Alfredo Tena
P-01313	Miguel	Tendillo	1	1982	Miguel Tendillo
P-09367	Carlos	Tenorio	2	2002, 2006	Carlos Tenorio
P-01641	Edwin	Tenorio	2	2002, 2006	Edwin Tenorio
P-03949	Łukasz	Teodorczyk	1	2018	Łukasz Teodorczyk
P-07672		Teóphilo	1	1930	 Teóphilo
P-06568	Marc-André	ter Stegen	1	2018	Marc-André ter Stegen
P-03626	Vladislav	Ternavsky	1	1994	Vladislav Ternavsky
P-09573	Isaac	Terrazas	1	1998	Isaac Terrazas
P-00764	John	Terry	2	2006, 2010	John Terry
P-04139	Omari	Tetradze	1	1994	Omari Tetradze
P-02135	Carlos	Tevez	2	2006, 2010	Carlos Tevez
P-01216	Andranik	Teymourian	2	2006, 2014	Andranik Teymourian
P-04331	Tarek	Thabet	2	1998, 2002	Tarek Thabet
P-00338	Florian	Thauvin	1	2018	Florian Thauvin
P-07684	Hong Djien	The	1	1938	Hong Djien The
P-03954	Densill	Theobald	1	2006	Densill Theobald
P-07977	Alex	Thépot	2	1930, 1934	Alex Thépot
P-03981	Jonas	Thern	2	1990, 1994	Jonas Thern
P-06396		Thiago	1	2018	 Thiago
P-08925	Pape	Thiaw	1	2002	Pape Thiaw
P-04768	Bernd	Thijs	1	2002	Bernd Thijs
P-02546	Jean	Thissen	1	1970	Jean Thissen
P-01007	Hendry	Thomas	1	2010	Hendry Thomas
P-08474	Archie	Thompson	1	2006	Archie Thompson
P-05671	Phil	Thompson	1	1982	Phil Thompson
P-02621	Olaf	Thon	3	1986, 1990, 1998	Olaf Thon
P-03337	Arvid	Thörn	1	1934	Arvid Thörn
P-04194	Erik	Thorstvedt	1	1994	Erik Thorstvedt
P-01770	Lilian	Thuram	3	1998, 2002, 2006	Lilian Thuram
P-09109	Lucas	Thwala	1	2010	Lucas Thwala
P-05056		Tiago	2	2006, 2010	 Tiago
P-03393	Lajos	Tichy	3	1958, 1962, 1966	Lajos Tichy
P-03591	Jiří	Tichý	1	1962	Jiří Tichý
P-03518	Youri	Tielemans	1	2018	Youri Tielemans
P-05575	Siaka	Tiéné	1	2010	Siaka Tiéné
P-06060	Jean	Tigana	2	1982, 1986	Jean Tigana
P-08619	Senad	Tiganj	1	2002	Senad Tiganj
P-08935	Hans	Tilkowski	2	1962, 1966	Hans Tilkowski
P-02670		Tim	1	1938	 Tim
P-08093	Henk	Timmer	1	2006	Henk Timmer
P-08773	Daniel	Timofte	1	1990	Daniel Timofte
P-05854	Mohamed	Timoumi	1	1986	Mohamed Timoumi
P-09061		Tinoco	1	1934	 Tinoco
P-06090	Cheick	Tioté	2	2010, 2014	Cheick Tioté
P-00319	Aleksandar	Tirnanić	1	1930	Aleksandar Tirnanić
P-04239		Tita	1	1990	 Tita
P-02582	Pál	Titkos	1	1938	Pál Titkos
P-04915	Yegor	Titov	1	2002	Yegor Titov
P-09307	Jean-Jacques	Tizié	1	2006	Jean-Jacques Tizié
P-09145	Djamel	Tlemçani	1	1982	Djamel Tlemçani
P-05603	Armando	Tobar	2	1962, 1966	Armando Tobar
P-03344	Kazuyuki	Toda	1	2002	Kazuyuki Toda
P-01988	Stig	Tøfting	2	1998, 2002	Stig Tøfting
P-09239	Néstor	Togneri	1	1974	Néstor Togneri
P-05948	Omero	Tognon	2	1950, 1954	Omero Tognon
P-07679	Ola	Toivonen	1	2018	Ola Toivonen
P-00029	Mario	Tokić	1	2006	Mario Tokić
P-02748	Jean-Pierre	Tokoto	1	1982	Jean-Pierre Tokoto
P-09237	Magdy	Tolba	1	1990	Magdy Tolba
P-07150	Géza	Toldi	2	1934, 1938	Géza Toldi
P-03911	Francesco	Toldo	2	1998, 2002	Francesco Toldo
P-06444	Delio	Toledo	1	2006	Delio Toledo
P-02187	Francisco Javier	Toledo	1	1982	Francisco Javier Toledo
P-06573	Corentin	Tolisso	1	2018	Corentin Tolisso
P-08696	Max	Tolson	1	1974	Max Tolson
P-06960	Stjepan	Tomas	2	2002, 2006	Stjepan Tomas
P-05973		Tomás	1	1986	 Tomás
P-06934	Kosta	Tomašević	1	1950	Kosta Tomašević
P-09841	Jon Dahl	Tomasson	2	2002, 2010	Jon Dahl Tomasson
P-09353	Jan	Tomaszewski	2	1974, 1978	Jan Tomaszewski
P-08550	Novak	Tomić	1	1958	Novak Tomić
P-02386	Damiano	Tommasi	1	2002	Damiano Tommasi
P-03638	Luca	Toni	1	2006	Luca Toni
P-09163		Toninho	1	1978	 Toninho
P-01649	Mehdi	Torabi	1	2018	Mehdi Torabi
P-06720	Juan	Torales	1	1986	Juan Torales
P-02219	Jorge	Toro	1	1962	Jorge Toro
P-09703	András	Törőcsik	2	1978, 1982	András Törőcsik
P-01286	Péter	Török	1	1978	Péter Török
P-09277	Vasilis	Torosidis	2	2010, 2014	Vasilis Torosidis
P-08809	Gerardo	Torrado	3	2002, 2006, 2010	Gerardo Torrado
P-09322	Lucas	Torreira	1	2018	Lucas Torreira
P-08265	Alfredo	Torres	1	1954	Alfredo Torres
P-03568	Arturo	Torres	1	1930	Arturo Torres
P-04858	Aureliano	Torres	1	2010	Aureliano Torres
P-08807	Casimiro	Torres	1	1930	Casimiro Torres
P-02559	Curro	Torres	1	2002	Curro Torres
P-06519	Fernando	Torres	3	2006, 2010, 2014	Fernando Torres
P-09803	Gabriel	Torres	1	2018	Gabriel Torres
P-06238	José	Torres	1	1966	José Torres
P-09604	José Francisco	Torres	1	2010	José Francisco Torres
P-07887	Román	Torres	1	2018	Román Torres
P-04349	Jorge	Torres Nilo	1	2010	Jorge Torres Nilo
P-04905	Moreno	Torricelli	1	1998	Moreno Torricelli
P-02041	Marcelo	Torrico	1	1994	Marcelo Torrico
P-07472	Conny	Torstensson	2	1974, 1978	Conny Torstensson
P-04481	Cristopher	Toselli	1	2014	Cristopher Toselli
P-05833	Dragomir	Tošić	1	1930	Dragomir Tošić
P-06796	Duško	Tošić	1	2018	Duško Tošić
P-06380	Zoran	Tošić	1	2010	Zoran Tošić
P-01461		Tostão	2	1966, 1970	 Tostão
P-03030	András	Tóth	1	1978	András Tóth
P-07881	József	Tóth	1	1954	József Tóth
P-06824	József	Tóth	2	1978, 1982	József Tóth
P-02406	Mihály	Tóth	1	1954	Mihály Tóth
P-01266	Francesco	Totti	2	2002, 2006	Francesco Totti
P-08740	Charles	Toubé	1	1982	Charles Toubé
P-00601	Jérémy	Toulalan	1	2010	Jérémy Toulalan
P-04614	Assimiou	Touré	1	2006	Assimiou Touré
P-03884	Kolo	Touré	3	2006, 2010, 2014	Kolo Touré
P-02735	Yaya	Touré	3	2006, 2010, 2014	Yaya Touré
P-01006	Hernando	Tovar	1	1962	Hernando Tovar
P-03556	Andy	Townsend	2	1990, 1994	Andy Townsend
P-02497	Hatem	Trabelsi	3	1998, 2002, 2006	Hatem Trabelsi
P-08422	Sami	Trabelsi	1	1998	Sami Trabelsi
P-05204	Raphael	Tracey	1	1930	Raphael Tracey
P-04268	Bobby	Trainor	1	1958	Bobby Trainor
P-09221	Amara	Traoré	1	2002	Amara Traoré
P-02380	Giovanni	Trapattoni	1	1962	Giovanni Trapattoni
P-07163	Kevin	Trapp	1	2018	Kevin Trapp
P-08927	Jean-Marie	Trappeniers	1	1970	Jean-Marie Trappeniers
P-07430	Miguel	Trauco	1	2018	Miguel Trauco
P-06426	Arnór Ingvi	Traustason	1	2018	Arnór Ingvi Traustason
P-01510	Eddy	Treijtel	1	1974	Eddy Treijtel
P-05789	Mario	Trejo	1	1986	Mario Trejo
P-03401	Marius	Trésor	2	1978, 1982	Marius Trésor
P-08637	David	Trezeguet	3	1998, 2002, 2006	David Trezeguet
P-00204		Trézéguet	1	2018	 Trézéguet
P-00832	Roberto	Tricella	1	1986	Roberto Tricella
P-09520	Smahi	Triki	2	1994, 1998	Smahi Triki
P-00490	Kieran	Trippier	1	2018	Kieran Trippier
P-02374	Diego	Tristán	1	2002	Diego Tristán
P-08490	Steve	Trittschuh	1	1990	Steve Trittschuh
P-08575	Jiří	Trnka	1	1954	Jiří Trnka
P-00660	Marcelo	Trobbiani	1	1986	Marcelo Trobbiani
P-00511	Horacio	Troche	2	1962, 1966	Horacio Troche
P-01680	Piotr	Trochowski	1	2010	Piotr Trochowski
P-04319	Pedro	Troglio	1	1990	Pedro Troglio
P-04443	James	Troisi	1	2014	James Troisi
P-08097	William	Troost-Ekong	1	2018	William Troost-Ekong
P-04512	Enzo	Trossero	1	1982	Enzo Trossero
P-07251	Carlos	Trucco	1	1994	Carlos Trucco
P-04973	Panagiotis	Tsalouchidis	1	1994	Panagiotis Tsalouchidis
P-01418	Viktor	Tsarev	1	1958	Viktor Tsarev
P-05473	Siphiwe	Tshabalala	1	2010	Siphiwe Tshabalala
P-04475	Bwanga	Tshimen	1	1974	Bwanga Tshimen
P-02232	Martin Kamunda	Tshinabu	1	1974	Martin Kamunda Tshinabu
P-08472	Nikos	Tsiantakis	1	1994	Nikos Tsiantakis
P-07564	Keisuke	Tsuboi	1	2006	Keisuke Tsuboi
P-01256	Akhrik	Tsveiba	1	1990	Akhrik Tsveiba
P-09253	Tsanko	Tsvetanov	1	1994	Tsanko Tsvetanov
P-04200	Ilya	Tsymbalar	1	1994	Ilya Tsymbalar
P-05117	Igor	Tudor	2	1998, 2006	Igor Tudor
P-09411	Marin	Tufan	1	1970	Marin Tufan
P-07336	Redha	Tukar	2	2002, 2006	Redha Tukar
P-08331	Paride	Tumburus	1	1962	Paride Tumburus
P-00140	Juan	Tuñas	1	1938	Juan Tuñas
P-08224	József	Turay	1	1938	József Turay
P-05428	Danilo	Turcios	1	2010	Danilo Turcios
P-00250	Toni	Turek	1	1954	Toni Turek
P-03830	Tom	Turesson	1	1970	Tom Turesson
P-03662	Eddie	Turnbull	1	1958	Eddie Turnbull
P-02591	Brian	Turner	1	1982	Brian Turner
P-04155	Grant	Turner	1	1982	Grant Turner
P-05493	Thierry	Tusseau	1	1986	Thierry Tusseau
P-03154	Edmund	Twórz	1	1938	Edmund Twórz
P-06995	Anatoliy	Tymoshchuk	1	2006	Anatoliy Tymoshchuk
P-00676	Giorgos	Tzavellas	1	2014	Giorgos Tzavellas
P-01091	Alexandros	Tziolis	2	2010, 2014	Alexandros Tziolis
P-04797	Alexandros	Tzorvas	1	2010	Alexandros Tzorvas
P-02103	Luis	Ubiña	2	1966, 1970	Luis Ubiña
P-06768	Kalu	Uche	1	2010	Kalu Uche
P-05504	Michael	Uchebo	1	2014	Michael Uchebo
P-04133	Atsuto	Uchida	2	2010, 2014	Atsuto Uchida
P-07795	Ifeanyi	Udeze	1	2002	Ifeanyi Udeze
P-08400	Naomichi	Ueda	1	2018	Naomichi Ueda
P-03109	José	Ufarte	1	1966	José Ufarte
P-02912	Roberto López	Ufarte	1	1982	Roberto López Ufarte
P-02085	Víctor Agustín	Ugarte	1	1950	Víctor Agustín Ugarte
P-02571	Tomáš	Ujfaluši	1	2006	Tomáš Ujfaluši
P-00709	Michael	Umaña	2	2006, 2014	Michael Umaña
P-07356	Samuel	Umtiti	1	2018	Samuel Umtiti
P-05990	Sven	Unger	1	1938	Sven Unger
P-01462	Hakan	Ünsal	1	2002	Hakan Ünsal
P-06468	Leongino	Unzaim	1	1950	Leongino Unzaim
P-00998	Norman	Uprichard	1	1958	Norman Uprichard
P-08811	Matthew	Upson	1	2010	Matthew Upson
P-08140	Pedro	Uralde	1	1982	Pedro Uralde
P-03282	Jan	Urban	1	1986	Jan Urban
P-00194	Johann	Urbanek	1	1934	Johann Urbanek
P-08758	Constantino	Urbieta Sosa	1	1934	Constantino Urbieta Sosa
P-05171	Santos	Urdinarán	1	1930	Santos Urdinarán
P-09443	Marco	Ureña	2	2014, 2018	Marco Ureña
P-08335	Francisco Javier	Uría	1	1978	Francisco Javier Uría
P-03287	Julio César	Uribe	1	1982	Julio César Uribe
P-04755	Mateus	Uribe	1	2018	Mateus Uribe
P-08641	Santiago	Urquiaga	1	1982	Santiago Urquiaga
P-04523	Jonathan	Urretaviscaya	1	2018	Jonathan Urretaviscaya
P-06243	Francisco	Urroz	1	1950	Francisco Urroz
P-09893		Urruti	3	1978, 1982, 1986	 Urruti
P-04891	Patricio	Urrutia	1	2006	Patricio Urrutia
P-04875	José	Urruzmendi	1	1966	José Urruzmendi
P-02060	Takashi	Usami	1	2018	Takashi Usami
P-05182	Óscar	Ustari	1	2006	Óscar Ustari
P-06186	John	Utaka	2	2002, 2010	John Utaka
P-04376	Doug	Utjesenovic	1	1974	Doug Utjesenovic
P-01697	Aleksandr	Uvarov	1	1990	Aleksandr Uvarov
P-01275	Ejike	Uzoenyi	1	2014	Ejike Uzoenyi
P-03359	Francis	Uzoho	1	2018	Francis Uzoho
P-00119	József	Vágó	1	1934	József Vágó
P-01951	Federico	Vairo	1	1958	Federico Vairo
P-02212	Mathieu	Valbuena	2	2010, 2014	Mathieu Valbuena
P-01920	Stan	Valckx	1	1994	Stan Valckx
P-04626	Jorge	Valdano	2	1982, 1986	Jorge Valdano
P-09690	Carlos	Valderrama	3	1990, 1994, 1998	Carlos Valderrama
P-07646	Jorge	Valderrama	1	1930	Jorge Valderrama
P-02850	Carlos	Valdés	1	2014	Carlos Valdés
P-07559	Francisco	Valdés	2	1966, 1974	Francisco Valdés
P-04909	Sergio	Valdés	1	1962	Sergio Valdés
P-03108	Víctor	Valdés	1	2010	Víctor Valdés
P-05227	Nelson	Valdez	1	2010	Nelson Valdez
P-03503	Nelson Haedo	Valdez	1	2006	Nelson Haedo Valdez
P-00707	Luis Antonio	Valdéz	1	1994	Luis Antonio Valdéz
P-07033	Javier	Valdivia	1	1970	Javier Valdivia
P-03528	Jorge	Valdivia	2	2010, 2014	Jorge Valdivia
P-08098	Juan	Valdivieso	1	1930	Juan Valdivieso
P-02124		Valdo	2	1986, 1990	 Valdo
P-03797		Valdomiro	1	1974	 Valdomiro
P-04004	Adolfo	Valencia	2	1994, 1998	Adolfo Valencia
P-02449	Antonio	Valencia	1	1950	Antonio Valencia
P-09294	Antonio	Valencia	2	2006, 2014	Antonio Valencia
P-04001	Enner	Valencia	1	2014	Enner Valencia
P-09708	José Daniel	Valencia	2	1978, 1982	José Daniel Valencia
P-00405	Iván	Valenciano	1	1994	Iván Valenciano
P-06327	Nuno	Valente	1	2006	Nuno Valente
P-04497	Carl	Valentine	1	1986	Carl Valentine
P-06885	Alberto	Valentini	1	1966	Alberto Valentini
P-03670	René	Valenzuela	1	1982	René Valenzuela
P-01311	Carl	Valeri	1	2010	Carl Valeri
P-07091	Juan Carlos	Valerón	1	2002	Juan Carlos Valerón
P-09085	Noel	Valladares	2	2010, 2014	Noel Valladares
P-05138	Juan Alfonso	Valle	1	1930	Juan Alfonso Valle
P-07771	Daniel	Vallejos	1	2002	Daniel Vallejos
P-06491	Leopoldo	Vallejos	1	1974	Leopoldo Vallejos
P-09637	Iliya	Valov	1	1986	Iliya Valov
P-03592		Vampeta	1	2002	 Vampeta
P-09618	John	van 't Schip	1	1990	John van 't Schip
P-00274	Berry	van Aerle	1	1990	Berry van Aerle
P-07596	John	Van Alphen	1	1938	John Van Alphen
P-02518	Marco	van Basten	1	1990	Marco van Basten
P-03805	Leen	van Beuzekom	1	1938	Leen van Beuzekom
P-02074	Mark	van Bommel	2	2006, 2010	Mark van Bommel
P-09970	Alfons	Van Brandt	1	1954	Alfons Van Brandt
P-04429	Hans	van Breukelen	1	1990	Hans van Breukelen
P-06698	Giovanni	van Bronckhorst	3	1998, 2006, 2010	Giovanni van Bronckhorst
P-05433	Daniel	Van Buyten	2	2002, 2014	Daniel Van Buyten
P-02579	René	van de Kerkhof	2	1974, 1978	René van de Kerkhof
P-03042	Willy	van de Kerkhof	2	1974, 1978	Willy van de Kerkhof
P-06041	Hippolyte	Van Den Bosch	1	1954	Hippolyte Van Den Bosch
P-07346	Pieter	Van Den Bosch	1	1954	Pieter Van Den Bosch
P-02202		Van Den Burgh	1	1938	 Van Den Burgh
P-05914	Franky	Van der Elst	4	1986, 1990, 1994, 1998	Franky Van der Elst
P-02018	François	Van Der Elst	1	1982	François Van Der Elst
P-03996	Leo	Van Der Elst	1	1986	Leo Van Der Elst
P-02205	Stéphane	van der Heyden	1	1994	Stéphane van der Heyden
P-04459	Peter	Van der Heyden	1	2002	Peter Van der Heyden
P-06170	Jef	Van Der Linden	1	1954	Jef Van Der Linden
P-09099	Marc	Van Der Linden	1	1990	Marc Van Der Linden
P-02606	Gejus	van der Meulen	1	1934	Gejus van der Meulen
P-05576	Edwin	van der Sar	3	1994, 1998, 2006	Edwin van der Sar
P-09942	Rafael	van der Vaart	2	2006, 2010	Rafael van der Vaart
P-05735	Frans	van der Veen	1	1938	Frans van der Veen
P-03171	Gregory	van der Wiel	1	2010	Gregory van der Wiel
P-00068	Jan	van Diepenbeek	1	1934	Jan van Diepenbeek
P-05759	Ulrich	van Gobbel	1	1994	Ulrich van Gobbel
P-02730	Willem	van Hanegem	1	1974	Willem van Hanegem
P-03940	Frank	van Hattum	1	1982	Frank van Hattum
P-06016	Puck	van Heel	2	1934, 1938	Puck van Heel
P-06673	Paul	Van Himst	1	1970	Paul Van Himst
P-09588	Pierre	van Hooijdonk	1	1998	Pierre van Hooijdonk
P-09555	Luc	Van Hoyweghen	1	1954	Luc Van Hoyweghen
P-05704	Kees	van Ierssel	1	1974	Kees van Ierssel
P-08344	Joseph	Van Ingelgem	1	1934	Joseph Van Ingelgem
P-02802	Nico	Van Kerckhoven	2	1998, 2002	Nico Van Kerckhoven
P-03367	Robert	Van Kerkhoven	1	1954	Robert Van Kerkhoven
P-00719	Adrie	van Kraay	1	1978	Adrie van Kraay
P-08145	John	van Loen	1	1990	John van Loen
P-03149	Adri	van Male	2	1934, 1938	Adri van Male
P-02332	Eric	Van Meir	3	1994, 1998, 2002	Eric Van Meir
P-02611	Wilfried	Van Moer	2	1970, 1982	Wilfried Van Moer
P-03046	Joop	van Nellen	1	1934	Joop van Nellen
P-08919	Ruud	van Nistelrooy	1	2006	Ruud van Nistelrooy
P-05286	Robin	van Persie	3	2006, 2010, 2014	Robin van Persie
P-00220	Sjef	van Run	1	1934	Sjef van Run
P-01160	Henk	van Spaandonck	1	1938	Henk van Spaandonck
P-08339	Jean	Van Steen	1	1954	Jean Van Steen
P-05806	Adri	van Tiggelen	1	1990	Adri van Tiggelen
P-07173	José	Van Tuyne	1	1982	José Van Tuyne
P-07439	Peter	van Vossen	1	1994	Peter van Vossen
P-05947	Philippe	Vande Walle	1	1998	Philippe Vande Walle
P-06870	Anthony	Vanden Borre	1	2014	Anthony Vanden Borre
P-03345	Charles	Vanden Wouwer	1	1938	Charles Vanden Wouwer
P-03124	Erwin	Vandenbergh	2	1982, 1986	Erwin Vandenbergh
P-08769	Erwin	Vandendaele	1	1970	Erwin Vandendaele
P-04033	Franky	Vandendriessche	1	2002	Franky Vandendriessche
P-04046	René	Vandereycken	1	1986	René Vandereycken
P-00270	Yves	Vanderhaeghe	1	2002	Yves Vanderhaeghe
P-07229	Guy	Vandersmissen	1	1982	Guy Vandersmissen
P-09195	André	Vandewyer	2	1934, 1938	André Vandewyer
P-03814	Jules	Vandooren	2	1934, 1938	Jules Vandooren
P-01141	Gerald	Vanenburg	1	1990	Gerald Vanenburg
P-03075	David	Vanole	1	1990	David Vanole
P-04009	José	Vantolrá	1	1970	José Vantolrá
P-04167	José	Varacka	2	1958, 1966	José Varacka
P-08851	Béla	Várady	1	1978	Béla Várady
P-00290	Francisco	Varallo	1	1930	Francisco Varallo
P-06400	Raphaël	Varane	2	2014, 2018	Raphaël Varane
P-01308	Jamie	Vardy	1	2018	Jamie Vardy
P-02357	Guillermo	Varela	1	2018	Guillermo Varela
P-04540	Gustavo	Varela	1	2002	Gustavo Varela
P-09349	Obdulio	Varela	2	1950, 1954	Obdulio Varela
P-01755	Silvestre	Varela	1	2014	Silvestre Varela
P-07964	József	Varga	2	1982, 1986	József Varga
P-04498	Zoltán	Varga	1	1966	Zoltán Varga
P-09302	Camilo	Vargas	2	2014, 2018	Camilo Vargas
P-03790	Eduardo	Vargas	1	2014	Eduardo Vargas
P-01031	Javier	Vargas	1	1966	Javier Vargas
P-03257	Marcelino	Vargas	1	1950	Marcelino Vargas
P-06978	Luis	Vargas Peña	1	1930	Luis Vargas Peña
P-09200	Mario	Varglien	1	1934	Mario Varglien
P-03784	Pál	Várhidi	1	1954	Pál Várhidi
P-08874	Mihály	Vasas	1	1958	Mihály Vasas
P-07485	Vladyslav	Vashchuk	1	2006	Vladyslav Vashchuk
P-06144	Mladen	Vasilev	1	1974	Mladen Vasilev
P-03874	Tsonyo	Vasilev	1	1974	Tsonyo Vasilev
P-05137	Vladimir	Vasilj	2	1998, 2002	Vladimir Vasilj
P-02062	Jorge	Vásquez	1	1970	Jorge Vásquez
P-08930	Darius	Vassell	1	2002	Darius Vassell
P-07923	Ivica	Vastić	1	1998	Ivica Vastić
P-03782	Frank	Vaughn	1	1930	Frank Vaughn
P-01219		Vavá	2	1958, 1962	 Vavá
P-06168	José Juan	Vázquez	1	2014	José Juan Vázquez
P-09428	Lucas	Vázquez	1	2018	Lucas Vázquez
P-05613	Rafael Martín	Vázquez	1	1990	Rafael Martín Vázquez
P-04998	Sergio	Vázquez	1	1994	Sergio Vázquez
P-07268	Arturo	Vázquez Ayala	1	1978	Arturo Vázquez Ayala
P-02189	Graham	Vearncombe	1	1958	Graham Vearncombe
P-01888	Matías	Vecino	1	2018	Matías Vecino
P-02153	César	Vega	1	1986	César Vega
P-01425	Marcelo	Vega	1	1998	Marcelo Vega
P-06225	Émile	Veinante	3	1930, 1934, 1938	Émile Veinante
P-06343	Carlos	Vela	2	2010, 2018	Carlos Vela
P-07267	Mario	Velarde	2	1962, 1970	Mario Velarde
P-01919	José	Velásquez	2	1978, 1982	José Velásquez
P-04536	José	Velázquez	1	1950	José Velázquez
P-09430	Boycho	Velichkov	1	1986	Boycho Velichkov
P-03010	Petar	Velichkov	1	1962	Petar Velichkov
P-07870	Stefko	Velichkov	1	1974	Stefko Velichkov
P-08607	Leonardo	Véliz	1	1974	Leonardo Véliz
P-01474	Miloš	Veljković	1	2018	Miloš Veljković
P-00370		Velloso	1	1930	 Velloso
P-07657	Miguel	Veloso	2	2010, 2014	Miguel Veloso
P-08680	Joël	Veltman	1	2014	Joël Veltman
P-01855		Veludo	1	1954	 Veludo
P-06253	Alexander	Vencel	1	1970	Alexander Vencel
P-04226	Johan	Venegas	1	2018	Johan Venegas
P-07231	Jan	Vennegoor of Hesselink	1	2006	Jan Vennegoor of Hesselink
P-05901	Leen	Vente	2	1934, 1938	Leen Vente
P-02149	Martí	Ventolrà	1	1934	Martí Ventolrà
P-06676	Joaquín	Ventura	1	1982	Joaquín Ventura
P-02510	Enrique	Vera	1	2010	Enrique Vera
P-04825	Franky	Vercauteren	2	1982, 1986	Franky Vercauteren
P-01622	Philippe	Vercruysse	1	1986	Philippe Vercruysse
P-05573	Martí	Vergés	1	1962	Martí Vergés
P-06246	Paul	Verhaegh	1	2014	Paul Verhaegh
P-08553	Gert	Verheyen	2	1998, 2002	Gert Verheyen
P-02091	Jan	Verheyen	1	1970	Jan Verheyen
P-03517	René	Verheyen	1	1982	René Verheyen
P-01915	Dany	Verlinden	2	1994, 1998	Dany Verlinden
P-02058	Thomas	Vermaelen	2	2014, 2018	Thomas Vermaelen
P-01656	Sven	Vermant	1	2002	Sven Vermant
P-06205	Peter	Vermes	1	1990	Peter Vermes
P-09834	Sirio	Vernati	1	1938	Sirio Vernati
P-09060	Roy	Vernon	1	1958	Roy Vernon
P-05788	Darío	Verón	1	2010	Darío Verón
P-05303	Juan Sebastián	Verón	3	1998, 2002, 2010	Juan Sebastián Verón
P-03651	Marco	Verratti	1	2014	Marco Verratti
P-00692	Georges	Verriest	1	1934	Georges Verriest
P-02896	Bruno	Versavel	1	1990	Bruno Versavel
P-08709	Mike	Verstraeten	1	1998	Mike Verstraeten
P-04609	Louis	Versyp	2	1930, 1934	Louis Versyp
P-09346	Jan	Vertonghen	2	2014, 2018	Jan Vertonghen
P-06386	Patrick	Vervoort	2	1986, 1990	Patrick Vervoort
P-00923	Todor	Veselinović	2	1954, 1958	Todor Veselinović
P-00893	Bohumil	Veselý	1	1970	Bohumil Veselý
P-08526	František	Veselý	1	1970	František Veselý
P-01599	Jannik	Vestergaard	1	2018	Jannik Vestergaard
P-04306	Daniel	Veyt	1	1986	Daniel Veyt
P-08875	Gianluca	Vialli	2	1986, 1990	Gianluca Vialli
P-06432	Hugo	Viana	2	2002, 2006	Hugo Viana
P-09870	Ivan	Vicelich	1	2010	Ivan Vicelich
P-07801		Vicente	1	1966	 Vicente
P-06461		Victor	1	2014	 Victor
P-09585		Víctor	1	1986	 Víctor
P-04756	Mauricio	Victorino	1	2010	Mauricio Victorino
P-06323	Domagoj	Vida	2	2014, 2018	Domagoj Vida
P-09279	Arturo	Vidal	2	2010, 2014	Arturo Vidal
P-04216	Carlos	Vidal	1	1930	Carlos Vidal
P-02966	Ernesto	Vidal	1	1950	Ernesto Vidal
P-02324	Nemanja	Vidić	2	2006, 2010	Nemanja Vidić
P-03177	Dario	Vidošić	2	2010, 2014	Dario Vidošić
P-08909	Gordan	Vidović	1	1998	Gordan Vidović
P-06219	Manuel	Vidrio	1	2002	Manuel Vidrio
P-02192	Mark	Viduka	1	2006	Mark Viduka
P-07271	Patrick	Vieira	3	1998, 2002, 2006	Patrick Vieira
P-01179		Vieirinha	1	2014	 Vieirinha
P-07599	Milton	Viera	1	1966	Milton Viera
P-06900	Ousmane	Viera	1	2014	Ousmane Viera
P-08686	Pietro	Vierchowod	3	1982, 1986, 1990	Pietro Vierchowod
P-04765	Christian	Vieri	2	1998, 2002	Christian Vieri
P-02016	Lido	Vieri	1	1970	Lido Vieri
P-03047	Rudolf	Viertl	1	1934	Rudolf Viertl
P-06763	Ivo	Viktor	1	1970	Ivo Viktor
P-08188	Héctor	Vilches	1	1950	Héctor Vilches
P-04291	David	Villa	3	2006, 2010, 2014	David Villa
P-03733	Germán	Villa	2	1998, 2002	Germán Villa
P-08371	León	Villa	1	1990	León Villa
P-07570	Ricardo	Villa	1	1978	Ricardo Villa
P-09491	Edwin	Villafuerte	1	2006	Edwin Villafuerte
P-06601	Jacinto	Villalba	1	1930	Jacinto Villalba
P-07944	Salvador	Villalba	1	1958	Salvador Villalba
P-06437	Eberardo	Villalobos	1	1930	Eberardo Villalobos
P-03088	Alberto	Villalta	1	1970	Alberto Villalta
P-02787	Alejandro	Villanueva	1	1930	Alejandro Villanueva
P-07938	Hugo	Villanueva	1	1966	Hugo Villanueva
P-06949	Alexandre	Villaplane	1	1930	Alexandre Villaplane
P-09013	Justo	Villar	3	2002, 2006, 2010	Justo Villar
P-07456	Moisés	Villarroel	1	1998	Moisés Villarroel
P-00523	Francisco	Villarroya	1	1990	Francisco Villarroya
P-01068	Jaime	Villegas	1	1982	Jaime Villegas
P-07621	José	Villegas	2	1958, 1962	José Villegas
P-08257	Jean	Vincent	2	1954, 1958	Jean Vincent
P-02522	Guido	Vincenzi	1	1954	Guido Vincenzi
P-04863	Jenő	Vincze	2	1934, 1938	Jenő Vincze
P-00976	Giovanni	Viola	1	1954	Giovanni Viola
P-07983		Viola	1	1994	 Viola
P-07831	Edin	Višća	1	2014	Edin Višća
P-04750	Yitzchak	Vissoker	1	1970	Yitzchak Vissoker
P-00092	Daniel	Viteri	1	2002	Daniel Viteri
P-08363	Paulo	Vítor	1	1986	Paulo Vítor
P-08013	Róbert	Vittek	1	2010	Róbert Vittek
P-00621	Achito	Vivas	1	1962	Achito Vivas
P-09393	Nelson	Vivas	1	1998	Nelson Vivas
P-02258	Ladislav	Vízek	1	1982	Ladislav Vízek
P-04366	Ron	Vlaar	1	2014	Ron Vlaar
P-06582	Franjo	Vladić	1	1974	Franjo Vladić
P-06716	Ion	Vlădoiu	1	1994	Ion Vlădoiu
P-09155	Goran	Vlaović	2	1998, 2002	Goran Vlaović
P-01322	Jozef	Vliers	1	1954	Jozef Vliers
P-08350	Antonín	Vodička	1	1934	Antonín Vodička
P-04217	Eberhard	Vogel	1	1974	Eberhard Vogel
P-04560	Johann	Vogel	1	2006	Johann Vogel
P-08796	Emerich	Vogl	2	1930, 1934	Emerich Vogl
P-00329	Berti	Vogts	3	1970, 1974, 1978	Berti Vogts
P-03815	Yuri	Voinov	1	1958	Yuri Voinov
P-01836	Rostislav	Vojáček	1	1982	Rostislav Vojáček
P-00151	Yochanan	Vollach	1	1970	Yochanan Vollach
P-07240	Rudi	Völler	3	1986, 1990, 1994	Rudi Völler
P-08954	Heinz	Vollmar	1	1962	Heinz Vollmar
P-08442	Steve	von Bergen	2	2010, 2014	Steve von Bergen
P-03247	Willy	von Känel	1	1934	Willy von Känel
P-05539	Hans	Vonk	2	1998, 2002	Hans Vonk
P-03405	Marcel	Vonlanthen	1	1962	Marcel Vonlanthen
P-05284	Roger	Vonlanthen	2	1954, 1962	Roger Vonlanthen
P-00804	Bernard	Voorhoof	3	1930, 1934, 1938	Bernard Voorhoof
P-05562	Philippe	Vorbe	1	1974	Philippe Vorbe
P-07939	Michel	Vorm	2	2010, 2014	Michel Vorm
P-09039		Voro	1	1994	 Voro
P-07006	Andriy	Vorobey	1	2006	Andriy Vorobey
P-01235	Andriy	Voronin	1	2006	Andriy Voronin
P-03578	Valery	Voronin	2	1962, 1966	Valery Voronin
P-02936	Isaac	Vorsah	1	2010	Isaac Vorsah
P-03704	Harry	Vos	1	1974	Harry Vos
P-06103	Voyn	Voynov	1	1974	Voyn Voynov
P-08778	Igor	Vrablic	1	1986	Igor Vrablic
P-05675	Jurica	Vranješ	2	2002, 2006	Jurica Vranješ
P-05290	Ognjen	Vranješ	1	2014	Ognjen Vranješ
P-09651	Manus	Vrauwdeunt	1	1934	Manus Vrauwdeunt
P-04173	Avdija	Vršajević	1	2014	Avdija Vršajević
P-04415	Šime	Vrsaljko	2	2014, 2018	Šime Vrsaljko
P-03098	Muamer	Vugdalić	1	2002	Muamer Vugdalić
P-06779	Davor	Vugrinec	1	2002	Davor Vugrinec
P-04454	Georges	Vuilleumier	1	1966	Georges Vuilleumier
P-03989	Đorđe	Vujadinović	1	1930	Đorđe Vujadinović
P-05261	Zlatko	Vujović	2	1982, 1990	Zlatko Vujović
P-07979	Zoran	Vujović	1	1982	Zoran Vujović
P-05494	Bernard	Vukas	2	1950, 1954	Bernard Vukas
P-01167	Zvonimir	Vukić	1	2006	Zvonimir Vukić
P-01209	Ognjen	Vukojević	1	2014	Ognjen Vukojević
P-06487	Danny	Vukovic	1	2018	Danny Vukovic
P-08829	Zoran	Vulić	1	1990	Zoran Vulić
P-08517	Ivan	Vutsov	1	1966	Ivan Vutsov
P-04487	Loukas	Vyntra	2	2010, 2014	Loukas Vyntra
P-07037	Chris	Waddle	2	1986, 1990	Chris Waddle
P-05918	Franz	Wagner	2	1934, 1938	Franz Wagner
P-06534	Fritz	Wagner	1	1938	Fritz Wagner
P-01022	Martin	Wagner	1	1994	Martin Wagner
P-04633	Theodor	Wagner	1	1954	Theodor Wagner
P-04908	Moussa	Wagué	1	2018	Moussa Wagué
P-09839	Mubarak	Wakaso	1	2014	Mubarak Wakaso
P-06459	Eugen	Walaschek	1	1938	Eugen Walaschek
P-05623	Theo	Walcott	1	2006	Theo Walcott
P-07900	Tomasz	Wałdoch	1	2002	Tomasz Wałdoch
P-05337		Waldyr	1	1934	 Waldyr
P-02628	Johan	Walem	1	2002	Johan Walem
P-06916	Des	Walker	1	1990	Des Walker
P-06026	Kyle	Walker	1	2018	Kyle Walker
P-00014	Frank	Wallace	1	1950	Frank Wallace
P-09958	Harold	Wallace	2	2002, 2006	Harold Wallace
P-02435	Rodney	Wallace	1	2018	Rodney Wallace
P-05420	Fritz	Walter	2	1954, 1958	Fritz Walter
P-01504		Walter	1	1938	 Walter
P-00546	Ottmar	Walter	1	1954	Ottmar Walter
P-01399	Shu-Aib	Walters	1	2010	Shu-Aib Walters
P-06044	Hans	Walzhofer	1	1934	Hans Walzhofer
P-00792	Paulo	Wanchope	2	2002, 2006	Paulo Wanchope
P-08749	Józef	Wandzik	1	1986	Józef Wandzik
P-04079	Amr	Warda	1	2018	Amr Warda
P-07796	Abdul Majeed	Waris	1	2014	Abdul Majeed Waris
P-01654	John	Wark	1	1982	John Wark
P-09018	Stephen	Warnock	1	2010	Stephen Warnock
P-08916	Johnny	Warren	1	1974	Johnny Warren
P-02632	Jan	Wasiewicz	1	1938	Jan Wasiewicz
P-03225	Kendall	Waston	1	2018	Kendall Waston
P-05235	Johnny	Watkiss	1	1974	Johnny Watkiss
P-04470	Willie	Watson	1	1950	Willie Watson
P-01269	Siegmar	Wätzlich	1	1974	Siegmar Wätzlich
P-00768	Neil	Webb	1	1990	Neil Webb
P-03682	Hans	Weber	1	1962	Hans Weber
P-02829	Heribert	Weber	2	1978, 1982	Heribert Weber
P-08471	Josip	Weber	1	1994	Josip Weber
P-09377	Mauk	Weber	2	1934, 1938	Mauk Weber
P-01433	Wolfgang	Weber	2	1966, 1970	Wolfgang Weber
P-05155	Pierre	Webó	2	2010, 2014	Pierre Webó
P-00277	Colin	Webster	1	1958	Colin Webster
P-01470	Roy	Wegerle	2	1994, 1998	Roy Wegerle
P-04270	Károly	Weichelt	1	1934	Károly Weichelt
P-04190	Roman	Weidenfeller	1	2014	Roman Weidenfeller
P-03915	Max	Weiler	1	1934	Max Weiler
P-05951	Walter	Weiler	1	1934	Walter Weiler
P-07955	David	Weir	1	1998	David Weir
P-01861	Konrad	Weise	1	1974	Konrad Weise
P-05207	Vladimír	Weiss	1	1990	Vladimír Weiss
P-09488	Vladimír	Weiss	1	2010	Vladimír Weiss
P-06315	Danny	Welbeck	2	2014, 2018	Danny Welbeck
P-07992	Georgie	Welcome	1	2010	Georgie Welcome
P-00311	Félix	Welkenhuysen	1	1934	Félix Welkenhuysen
P-04603	Frank	Wels	2	1934, 1938	Frank Wels
P-09896	Kurt	Welzl	1	1982	Kurt Welzl
P-05279	Benny	Wendt	1	1978	Benny Wendt
P-02488	Jürgen	Werner	1	1962	Jürgen Werner
P-02610	Timo	Werner	1	2018	Timo Werner
P-08945	Taribo	West	2	1998, 2002	Taribo West
P-05932	Arnold	Wetl	1	1998	Arnold Wetl
P-08959	Gustav	Wetterström	1	1938	Gustav Wetterström
P-06671	Rudolf	Wetzer	1	1930	Rudolf Wetzer
P-08990	Heinz	Wewers	1	1958	Heinz Wewers
P-07157	Ronnie	Whelan	2	1990, 1994	Ronnie Whelan
P-08413	Norman	Whiteside	2	1982, 1986	Norman Whiteside
P-08037	Aurtis	Whitley	1	2006	Aurtis Whitley
P-09880	Theodore	Whitmore	1	1998	Theodore Whitmore
P-08050	Derek	Whyte	1	1998	Derek Whyte
P-02247	Raphaël	Wicky	1	2006	Raphaël Wicky
P-07888	Eivar	Widlund	1	1934	Eivar Widlund
P-05871	Henryk	Wieczorek	1	1974	Henryk Wieczorek
P-04867	Morten	Wieghorst	1	1998	Morten Wieghorst
P-01583	Tim	Wiese	1	2010	Tim Wiese
P-01696	Georginio	Wijnaldum	1	2014	Georginio Wijnaldum
P-07783	Federico	Wilde	1	1934	Federico Wilde
P-09190	Leo	Wilden	1	1962	Leo Wilden
P-08433	Piet	Wildschut	1	1978	Piet Wildschut
P-07215	Christian	Wilhelmsson	1	2006	Christian Wilhelmsson
P-00461	Ernst	Wilimowski	1	1938	Ernst Wilimowski
P-02188	Ray	Wilkins	2	1982, 1986	Ray Wilkins
P-05837	Alex	Wilkinson	1	2014	Alex Wilkinson
P-00139	Luke	Wilkshire	2	2006, 2010	Luke Wilkshire
P-05794	Andy	Williams	1	1998	Andy Williams
P-01689	Bert	Williams	1	1950	Bert Williams
P-09508	Harry	Williams	1	1974	Harry Williams
P-02268	Stuart	Williams	1	1958	Stuart Williams
P-06684		Willian	2	2014, 2018	 Willian
P-09603	Marc	Wilmots	4	1990, 1994, 1998, 2002	Marc Wilmots
P-01966	Dennis	Wilshaw	1	1954	Dennis Wilshaw
P-09724	Jack	Wilshere	1	2014	Jack Wilshere
P-04779	Alex	Wilson	1	1954	Alex Wilson
P-00200	Bruce	Wilson	1	1986	Bruce Wilson
P-00744	Giuseppe	Wilson	1	1974	Giuseppe Wilson
P-04636	Peter	Wilson	1	1974	Peter Wilson
P-04619	Ray	Wilson	2	1962, 1966	Ray Wilson
P-05643	Richard	Wilson	1	1982	Richard Wilson
P-02868	Sylvain	Wiltord	2	2002, 2006	Sylvain Wiltord
P-00056	Herbert	Wimmer	1	1974	Herbert Wimmer
P-02131	Mike	Windischmann	1	1990	Mike Windischmann
P-03306	Aron	Winter	3	1990, 1994, 1998	Aron Winter
P-01004	Oscar	Wirth	1	1982	Oscar Wirth
P-08894	Evans	Wise	1	2006	Evans Wise
P-01776	Maryan	Wisnieski	1	1958	Maryan Wisnieski
P-02684	Peter	Withe	1	1982	Peter Withe
P-04774	Richard	Witschge	1	1990	Richard Witschge
P-09127	Rob	Witschge	1	1994	Rob Witschge
P-05396	Axel	Witsel	2	2014, 2018	Axel Witsel
P-02878	Gerard	Wodarz	1	1938	Gerard Wodarz
P-07096	Franz	Wohlfahrt	1	1998	Franz Wohlfahrt
P-09147	Roman	Wójcicki	3	1978, 1982, 1986	Roman Wójcicki
P-09635	Adam	Wolanin	1	1950	Adam Wolanin
P-02870	Anthony	Wolfe	1	2006	Anthony Wolfe
P-09552	Enrique	Wolff	1	1974	Enrique Wolff
P-06651	Josh	Wolff	2	2002, 2006	Josh Wolff
P-01913	Marco	Wölfli	1	2010	Marco Wölfli
P-03944	Horst	Wolter	1	1970	Horst Wolter
P-05879	Pierre	Womé	2	1998, 2002	Pierre Womé
P-01118	Chris	Wondolowski	1	2014	Chris Wondolowski
P-08724	Sang-kwon	Woo	1	1954	Sang-kwon Woo
P-03207	Alexander	Wood	1	1930	Alexander Wood
P-09271	Chris	Wood	1	2010	Chris Wood
P-08732	George	Wood	1	1982	George Wood
P-06820	Tony	Woodcock	1	1982	Tony Woodcock
P-06482	Steve	Wooddin	1	1982	Steve Wooddin
P-02556	Chris	Woods	2	1986, 1990	Chris Woods
P-05897	Ronald	Worm	1	1978	Ronald Worm
P-06467	Christian	Wörns	1	1998	Christian Wörns
P-06109	Nigel	Worthington	1	1986	Nigel Worthington
P-00491	Jan	Wouters	2	1990, 1994	Jan Wouters
P-05318	Bailey	Wright	1	2014	Bailey Wright
P-03434	Billy	Wright	3	1950, 1954, 1958	Billy Wright
P-04703	Mark	Wright	1	1990	Mark Wright
P-07323	Mauricio	Wright	1	2002	Mauricio Wright
P-02037	Tommy	Wright	1	1970	Tommy Wright
P-05633	Shaun	Wright-Phillips	1	2010	Shaun Wright-Phillips
P-07309	Chengying	Wu	1	2002	Chengying Wu
P-03394	Rolf	Wüthrich	1	1962	Rolf Wüthrich
P-08398	Eric	Wynalda	3	1990, 1994, 1998	Eric Wynalda
P-00678	Thomas	Wyss	1	1994	Thomas Wyss
P-06930		Xavi	4	2002, 2006, 2010, 2014	 Xavi
P-07175	Abel	Xavier	1	2002	Abel Xavier
P-03575	Granit	Xhaka	2	2014, 2018	Granit Xhaka
P-06458	Yunlong	Xu	1	2002	Yunlong Xu
P-01389	Daniel	Xuereb	1	1986	Daniel Xuereb
P-01051	Didier	Ya Konan	1	2014	Didier Ya Konan
P-08078	Hocine	Yahi	1	1982	Hocine Yahi
P-03424	Alaeddine	Yahia	1	2006	Alaeddine Yahia
P-07108	Antar	Yahia	1	2010	Antar Yahia
P-05486	Hesham	Yakan	1	1990	Hesham Yakan
P-07239	Dimitar	Yakimov	3	1962, 1966, 1970	Dimitar Yakimov
P-07127	Hakan	Yakin	2	2006, 2010	Hakan Yakin
P-04507	Pavel	Yakovenko	1	1986	Pavel Yakovenko
P-00509		Yakubu	1	2010	 Yakubu
P-03785	Hotaru	Yamaguchi	2	2014, 2018	Hotaru Yamaguchi
P-07713	Motohiro	Yamaguchi	1	1998	Motohiro Yamaguchi
P-04780	Atsushi	Yanagisawa	2	2002, 2006	Atsushi Yanagisawa
P-02760	Evgeni	Yanchovski	1	1966	Evgeni Yanchovski
P-09454	Patricio	Yáñez	1	1982	Patricio Yáñez
P-08086	Chen	Yang	1	2002	Chen Yang
P-09249	Pu	Yang	1	2002	Pu Yang
P-07632	Seung-kook	Yang	1	1966	Seung-kook Yang
P-04678	Zlatko	Yankov	2	1994, 1998	Zlatko Yankov
P-05360	Kisho	Yano	1	2010	Kisho Yano
P-02137	Gilles	Yapi Yapo	1	2006	Gilles Yapi Yapo
P-05900	Jasem	Yaqoub	1	1982	Jasem Yaqoub
P-05306	Ivan	Yaremchuk	2	1986, 1990	Ivan Yaremchuk
P-04105	Lev	Yashin	4	1958, 1962, 1966, 1970	Lev Yashin
P-03544	Rabie	Yassin	1	1990	Rabie Yassin
P-06692	Oleksandr	Yatsenko	1	2006	Oleksandr Yatsenko
P-07857	Guillermo	Yávar	2	1966, 1974	Guillermo Yávar
P-07742	Héctor	Yazalde	1	1974	Héctor Yazalde
P-01617	Gilberto	Yearwood	1	1982	Gilberto Yearwood
P-03096	Hassan	Yebda	2	2010, 2014	Hassan Yebda
P-08405	Daniel	Yeboah	1	2010	Daniel Yeboah
P-02350	DeAndre	Yedlin	1	2014	DeAndre Yedlin
P-00983	Julio César	Yegros	1	1998	Julio César Yegros
P-05689	Rashidi	Yekini	2	1994, 1998	Rashidi Yekini
P-09810	Ki-hun	Yeom	1	2010	Ki-hun Yeom
P-01246	Mario	Yepes	1	2014	Mario Yepes
P-09209	Aleksandr	Yerokhin	1	2018	Aleksandr Yerokhin
P-04569	Vladimir	Yerokhin	1	1958	Vladimir Yerokhin
P-09030	Andrey	Yeshchenko	1	2014	Andrey Yeshchenko
P-02534	Gennady	Yevriuzhikin	1	1970	Gennady Yevriuzhikin
P-01090	Vadym	Yevtushenko	2	1982, 1986	Vadym Yevtushenko
P-04131	Volodymyr	Yezerskiy	1	2006	Volodymyr Yezerskiy
P-01415	Joseph	Yobo	3	2002, 2010, 2014	Joseph Yobo
P-08982	Alphonse	Yombi	1	1990	Alphonse Yombi
P-07204	Byung-ok	Yoo	1	1986	Byung-ok Yoo
P-00084	Sang-chul	Yoo	2	1998, 2002	Sang-chul Yoo
P-05090	Deok-yeo	Yoon	1	1990	Deok-yeo Yoon
P-00651	Jong-hwan	Yoon	1	2002	Jong-hwan Yoon
P-07291	Georgi	Yordanov	1	1986	Georgi Yordanov
P-07274	Ivaylo	Yordanov	2	1994, 1998	Ivaylo Yordanov
P-05422	Stoyan	Yordanov	1	1970	Stoyan Yordanov
P-08396	Dwight	Yorke	1	2006	Dwight Yorke
P-01151	Maya	Yoshida	2	2014, 2018	Maya Yoshida
P-00149	Velko	Yotov	1	1994	Velko Yotov
P-08235	Yoshimar	Yotún	1	2018	Yoshimar Yotún
P-01304	Ashley	Young	1	2018	Ashley Young
P-07133	Tommy	Younger	1	1958	Tommy Younger
P-00731	Ismail	Youssef	1	1990	Ismail Youssef
P-09258	Moustafa Helmi	Youssef	1	1934	Moustafa Helmi Youssef
P-03929	Genwei	Yu	1	2002	Genwei Yu
P-03931	Suk-young	Yun	1	2014	Suk-young Yun
P-06889	Young-sun	Yun	1	2018	Young-sun Yun
P-07733	Sergei	Yuran	1	1994	Sergei Yuran
P-06962	Ayila	Yussuf	1	2010	Ayila Yussuf
P-03502	César	Zabala	1	1986	César Zabala
P-02021	Pablo	Zabaleta	1	2014	Pablo Zabaleta
P-00365	Ramón	Zabalo	1	1934	Ramón Zabalo
P-07643	Radoslav	Zabavník	1	2010	Radoslav Zabavník
P-00890	Cristian	Zaccardo	1	2006	Cristian Zaccardo
P-07176	Renato	Zaccarelli	1	1978	Renato Zaccarelli
P-01878	Adalbert	Zafirov	1	1998	Adalbert Zafirov
P-03744	Ivan	Zafirov	1	1974	Ivan Zafirov
P-07205	Mário	Zagallo	2	1958, 1962	Mário Zagallo
P-01355		Zague	1	1994	 Zague
P-07193	Zlatko	Zahovič	1	2002	Zlatko Zahovič
P-09328	Mabrouk	Zaid	2	2002, 2006	Mabrouk Zaid
P-03622	Velimir	Zajec	1	1982	Velimir Zajec
P-06827	Denis	Zakaria	1	2018	Denis Zakaria
P-04715	József	Zakariás	1	1954	József Zakariás
P-09947	Badou	Zaki	1	1986	Badou Zaki
P-07243	José	Zalazar	1	1986	José Zalazar
P-02305	Gianluca	Zambrotta	3	2002, 2006, 2010	Gianluca Zambrotta
P-05930	Jesús María	Zamora	1	1982	Jesús María Zamora
P-05444	Ricardo	Zamora	1	1934	Ricardo Zamora
P-01498	Iván	Zamorano	1	1998	Iván Zamorano
P-04823	Ferydoon	Zandi	1	2006	Ferydoon Zandi
P-06654	Cristiano	Zanetti	1	2002	Cristiano Zanetti
P-00389	Javier	Zanetti	2	1998, 2002	Javier Zanetti
P-09610	Cristián	Zapata	2	2014, 2018	Cristián Zapata
P-00002	Javad	Zarincheh	1	1998	Javad Zarincheh
P-03281	Telmo	Zarra	1	1950	Telmo Zarra
P-03308	Enrique López	Zarza	1	1978	Enrique López Zarza
P-06116	Mario	Zatelli	1	1938	Mario Zatelli
P-01449	Samuel	Zauber	1	1930	Samuel Zauber
P-00690	Aleksandr	Zavarov	1	1986	Aleksandr Zavarov
P-05899	Oleksandr	Zavarov	1	1990	Oleksandr Zavarov
P-05022	Radoslav	Zdravkov	1	1986	Radoslav Zdravkov
P-05610	Zdravko	Zdravkov	1	1998	Zdravko Zdravkov
P-01636		Zé Carlos	1	1990	 Zé Carlos
P-00309		Zé Carlos	1	1998	 Zé Carlos
P-00548		Zé Kalanga	1	2006	 Zé Kalanga
P-05567		Zé Luiz	1	1930	 Zé Luiz
P-06541		Zé Maria	2	1970, 1974	 Zé Maria
P-03062		Zé Roberto	2	1998, 2006	 Zé Roberto
P-06630		Zé Sérgio	1	1978	 Zé Sérgio
P-02177	Branko	Zebec	2	1954, 1958	Branko Zebec
P-09388	Miljan	Zeković	1	1954	Miljan Zeković
P-07199	Héctor	Zelada	1	1986	Héctor Zelada
P-09011	Héctor	Zelaya	1	1982	Héctor Zelaya
P-06183	Oliver	Zelenika	1	2014	Oliver Zelenika
P-06064	Josef	Zeman	1	1938	Josef Zeman
P-07571	Walter	Zeman	1	1954	Walter Zeman
P-05163	Mohamed	Zemmamouche	1	2014	Mohamed Zemmamouche
P-09656	Boudewijn	Zenden	1	1998	Boudewijn Zenden
P-03451	Walter	Zenga	2	1986, 1990	Walter Zenga
P-06891	Ladislav	Ženíšek	1	1934	Ladislav Ženíšek
P-00022	Javier	Zeoli	1	1990	Javier Zeoli
P-08070		Zequinha	1	1962	 Zequinha
P-09184	Felipe	Zetter	1	1950	Felipe Zetter
P-04269		Zetti	1	1994	 Zetti
P-02821	Gerd	Zewe	1	1978	Gerd Zewe
P-05873	Marcin	Żewłakow	1	2002	Marcin Żewłakow
P-01816	Michał	Żewłakow	2	2002, 2006	Michał Żewłakow
P-00357	Çetin	Zeybek	1	1954	Çetin Zeybek
P-07858		Zezé Procópio	1	1938	 Zezé Procópio
P-04266	Andrzej	Zgutczyński	1	1986	Andrzej Zgutczyński
P-04736	Enhua	Zhang	1	2002	Enhua Zhang
P-07956	Junzhe	Zhao	1	2002	Junzhe Zhao
P-04634	Dobromir	Zhechev	4	1962, 1966, 1970, 1974	Dobromir Zhechev
P-08505	Petar	Zhekov	2	1966, 1970	Petar Zhekov
P-05829	Andrey	Zhelyazkov	1	1986	Andrey Zhelyazkov
P-07077	Yuri	Zhirkov	2	2014, 2018	Yuri Zhirkov
P-00572	Karim	Ziani	1	2010	Karim Ziani
P-03653		Zico	3	1978, 1982, 1986	 Zico
P-03734	Djamel	Zidane	2	1982, 1986	Djamel Zidane
P-03582	Zinedine	Zidane	3	1998, 2002, 2006	Zinedine Zidane
P-03353	Christian	Ziege	2	1998, 2002	Christian Ziege
P-08024	Reto	Ziegler	2	2010, 2014	Reto Ziegler
P-06337	Ron-Robert	Zieler	1	2014	Ron-Robert Zieler
P-04901	Paul	Zielinski	1	1934	Paul Zielinski
P-09916	Jacek	Zieliński	1	2002	Jacek Zieliński
P-05253	Piotr	Zieliński	1	2018	Piotr Zieliński
P-09048	Nikola	Žigić	2	2006, 2010	Nikola Žigić
P-00033	Zdeněk	Zikán	1	1958	Zdeněk Zikán
P-08806	Herbert	Zimmermann	1	1978	Herbert Zimmermann
P-04806		Zinho	1	1994	 Zinho
P-03943	Karl	Zischek	1	1934	Karl Zischek
P-07351		Zito	3	1958, 1962, 1966	 Zito
P-05410	Ali	Zitouni	1	2002	Ali Zitouni
P-09347	Andrija	Živković	1	2018	Andrija Živković
P-08591	Boris	Živković	1	2002	Boris Živković
P-09659	Zvonko	Živković	1	1982	Zvonko Živković
P-07453	Hakim	Ziyech	1	2018	Hakim Ziyech
P-05390		Zizinho	1	1950	 Zizinho
P-09418	Siniša	Zlatković	1	1950	Siniša Zlatković
P-02056	Ján	Zlocha	1	1970	Ján Zlocha
P-02284	Władysław	Żmuda	4	1974, 1978, 1982, 1986	Władysław Żmuda
P-08491	Roman	Zobnin	1	2018	Roman Zobnin
P-03764	Ignacio	Zoco	1	1966	Ignacio Zoco
P-03875	Dino	Zoff	4	1970, 1974, 1978, 1982	Dino Zoff
P-06201	Aristide	Zogbo	1	2010	Aristide Zogbo
P-00183	Didier	Zokora	3	2006, 2010, 2014	Didier Zokora
P-09517	Gianfranco	Zola	1	1994	Gianfranco Zola
P-06710	Sándor	Zombori	1	1978	Sándor Zombori
P-01312	Vilmos	Zombori	1	1934	Vilmos Zombori
P-01914	Hendrikus	Zomers	1	1938	Hendrikus Zomers
P-02827	Marco	Zoro	1	2006	Marco Zoro
P-06046		Zózimo	2	1958, 1962	 Zózimo
P-07883	Manfred	Zsak	1	1990	Manfred Zsak
P-04466	Gyula	Zsengellér	1	1938	Gyula Zsengellér
P-04170	Steven	Zuber	1	2018	Steven Zuber
P-01267	Pascal	Zuberbühler	1	2006	Pascal Zuberbühler
P-07832	Oscar	Zubia	1	1970	Oscar Zubia
P-07337	Andoni	Zubizarreta	4	1986, 1990, 1994, 1998	Andoni Zubizarreta
P-04171	Francisco	Zuluaga	1	1962	Francisco Zuluaga
P-05942	Sibusiso	Zuma	1	2002	Sibusiso Zuma
P-00455	Adolfo	Zumelzú	1	1930	Adolfo Zumelzú
P-01566	Juan Camilo	Zúñiga	1	2014	Juan Camilo Zúñiga
P-03604	Maciej	Żurawski	2	2002, 2006	Maciej Żurawski
P-02717	Graham	Zusi	1	2014	Graham Zusi
P-06356	Andrei	Zygmantovich	1	1990	Andrei Zygmantovich
P-03140	Valery	Zykov	1	1970	Valery Zykov
\.


--
-- Data for Name: qualified_teams; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.qualified_teams (tournament_id, team_id, team_name) FROM stdin;
WC-1930	T-03	Argentina
WC-1930	T-06	Belgium
WC-1930	T-07	Bolivia
WC-1930	T-09	Brazil
WC-1930	T-13	Chile
WC-1930	T-28	France
WC-1930	T-44	Mexico
WC-1930	T-53	Paraguay
WC-1930	T-54	Peru
WC-1930	T-58	Romania
WC-1930	T-79	United States
WC-1930	T-80	Uruguay
WC-1930	T-83	Yugoslavia
WC-1934	T-03	Argentina
WC-1934	T-05	Austria
WC-1934	T-06	Belgium
WC-1934	T-09	Brazil
WC-1934	T-20	Czechoslovakia
WC-1934	T-25	Egypt
WC-1934	T-28	France
WC-1934	T-29	Germany
WC-1934	T-34	Hungary
WC-1934	T-39	Italy
WC-1934	T-46	Netherlands
WC-1934	T-58	Romania
WC-1934	T-70	Spain
WC-1934	T-71	Sweden
WC-1934	T-72	Switzerland
WC-1934	T-79	United States
WC-1938	T-06	Belgium
WC-1938	T-09	Brazil
WC-1938	T-18	Cuba
WC-1938	T-20	Czechoslovakia
WC-1938	T-22	Dutch East Indies
WC-1938	T-28	France
WC-1938	T-29	Germany
WC-1938	T-34	Hungary
WC-1938	T-39	Italy
WC-1938	T-46	Netherlands
WC-1938	T-51	Norway
WC-1938	T-55	Poland
WC-1938	T-58	Romania
WC-1938	T-71	Sweden
WC-1938	T-72	Switzerland
WC-1950	T-07	Bolivia
WC-1950	T-09	Brazil
WC-1950	T-13	Chile
WC-1950	T-27	England
WC-1950	T-39	Italy
WC-1950	T-44	Mexico
WC-1950	T-53	Paraguay
WC-1950	T-70	Spain
WC-1950	T-71	Sweden
WC-1950	T-72	Switzerland
WC-1950	T-79	United States
WC-1950	T-80	Uruguay
WC-1950	T-83	Yugoslavia
WC-1954	T-05	Austria
WC-1954	T-06	Belgium
WC-1954	T-09	Brazil
WC-1954	T-20	Czechoslovakia
WC-1954	T-27	England
WC-1954	T-28	France
WC-1954	T-34	Hungary
WC-1954	T-39	Italy
WC-1954	T-44	Mexico
WC-1954	T-61	Scotland
WC-1954	T-68	South Korea
WC-1954	T-72	Switzerland
WC-1954	T-76	Turkey
WC-1954	T-80	Uruguay
WC-1954	T-82	West Germany
WC-1954	T-83	Yugoslavia
WC-1958	T-03	Argentina
WC-1958	T-05	Austria
WC-1958	T-09	Brazil
WC-1958	T-20	Czechoslovakia
WC-1958	T-27	England
WC-1958	T-28	France
WC-1958	T-34	Hungary
WC-1958	T-44	Mexico
WC-1958	T-50	Northern Ireland
WC-1958	T-53	Paraguay
WC-1958	T-61	Scotland
WC-1958	T-69	Soviet Union
WC-1958	T-71	Sweden
WC-1958	T-81	Wales
WC-1958	T-82	West Germany
WC-1958	T-83	Yugoslavia
WC-1962	T-03	Argentina
WC-1962	T-09	Brazil
WC-1962	T-10	Bulgaria
WC-1962	T-13	Chile
WC-1962	T-15	Colombia
WC-1962	T-20	Czechoslovakia
WC-1962	T-27	England
WC-1962	T-34	Hungary
WC-1962	T-39	Italy
WC-1962	T-44	Mexico
WC-1962	T-69	Soviet Union
WC-1962	T-70	Spain
WC-1962	T-72	Switzerland
WC-1962	T-80	Uruguay
WC-1962	T-82	West Germany
WC-1962	T-83	Yugoslavia
WC-1966	T-03	Argentina
WC-1966	T-09	Brazil
WC-1966	T-10	Bulgaria
WC-1966	T-13	Chile
WC-1966	T-27	England
WC-1966	T-28	France
WC-1966	T-34	Hungary
WC-1966	T-39	Italy
WC-1966	T-44	Mexico
WC-1966	T-49	North Korea
WC-1966	T-56	Portugal
WC-1966	T-69	Soviet Union
WC-1966	T-70	Spain
WC-1966	T-72	Switzerland
WC-1966	T-80	Uruguay
WC-1966	T-82	West Germany
WC-1970	T-06	Belgium
WC-1970	T-09	Brazil
WC-1970	T-10	Bulgaria
WC-1970	T-20	Czechoslovakia
WC-1970	T-26	El Salvador
WC-1970	T-27	England
WC-1970	T-38	Israel
WC-1970	T-39	Italy
WC-1970	T-44	Mexico
WC-1970	T-45	Morocco
WC-1970	T-54	Peru
WC-1970	T-58	Romania
WC-1970	T-69	Soviet Union
WC-1970	T-71	Sweden
WC-1970	T-80	Uruguay
WC-1970	T-82	West Germany
WC-1974	T-03	Argentina
WC-1974	T-04	Australia
WC-1974	T-09	Brazil
WC-1974	T-10	Bulgaria
WC-1974	T-13	Chile
WC-1974	T-23	East Germany
WC-1974	T-32	Haiti
WC-1974	T-39	Italy
WC-1974	T-46	Netherlands
WC-1974	T-55	Poland
WC-1974	T-61	Scotland
WC-1974	T-71	Sweden
WC-1974	T-80	Uruguay
WC-1974	T-82	West Germany
WC-1974	T-83	Yugoslavia
WC-1974	T-84	Zaire
WC-1978	T-03	Argentina
WC-1978	T-05	Austria
WC-1978	T-09	Brazil
WC-1978	T-28	France
WC-1978	T-34	Hungary
WC-1978	T-36	Iran
WC-1978	T-39	Italy
WC-1978	T-44	Mexico
WC-1978	T-46	Netherlands
WC-1978	T-54	Peru
WC-1978	T-55	Poland
WC-1978	T-61	Scotland
WC-1978	T-70	Spain
WC-1978	T-71	Sweden
WC-1978	T-75	Tunisia
WC-1978	T-82	West Germany
WC-1982	T-01	Algeria
WC-1982	T-03	Argentina
WC-1982	T-05	Austria
WC-1982	T-06	Belgium
WC-1982	T-09	Brazil
WC-1982	T-11	Cameroon
WC-1982	T-13	Chile
WC-1982	T-20	Czechoslovakia
WC-1982	T-26	El Salvador
WC-1982	T-27	England
WC-1982	T-28	France
WC-1982	T-33	Honduras
WC-1982	T-34	Hungary
WC-1982	T-39	Italy
WC-1982	T-43	Kuwait
WC-1982	T-47	New Zealand
WC-1982	T-50	Northern Ireland
WC-1982	T-54	Peru
WC-1982	T-55	Poland
WC-1982	T-61	Scotland
WC-1982	T-69	Soviet Union
WC-1982	T-70	Spain
WC-1982	T-82	West Germany
WC-1982	T-83	Yugoslavia
WC-1986	T-01	Algeria
WC-1986	T-03	Argentina
WC-1986	T-06	Belgium
WC-1986	T-09	Brazil
WC-1986	T-10	Bulgaria
WC-1986	T-12	Canada
WC-1986	T-21	Denmark
WC-1986	T-27	England
WC-1986	T-28	France
WC-1986	T-34	Hungary
WC-1986	T-37	Iraq
WC-1986	T-39	Italy
WC-1986	T-44	Mexico
WC-1986	T-45	Morocco
WC-1986	T-50	Northern Ireland
WC-1986	T-53	Paraguay
WC-1986	T-55	Poland
WC-1986	T-56	Portugal
WC-1986	T-61	Scotland
WC-1986	T-68	South Korea
WC-1986	T-69	Soviet Union
WC-1986	T-70	Spain
WC-1986	T-80	Uruguay
WC-1986	T-82	West Germany
WC-1990	T-03	Argentina
WC-1990	T-05	Austria
WC-1990	T-06	Belgium
WC-1990	T-09	Brazil
WC-1990	T-11	Cameroon
WC-1990	T-15	Colombia
WC-1990	T-16	Costa Rica
WC-1990	T-20	Czechoslovakia
WC-1990	T-25	Egypt
WC-1990	T-27	England
WC-1990	T-39	Italy
WC-1990	T-46	Netherlands
WC-1990	T-57	Republic of Ireland
WC-1990	T-58	Romania
WC-1990	T-61	Scotland
WC-1990	T-68	South Korea
WC-1990	T-69	Soviet Union
WC-1990	T-70	Spain
WC-1990	T-71	Sweden
WC-1990	T-78	United Arab Emirates
WC-1990	T-79	United States
WC-1990	T-80	Uruguay
WC-1990	T-82	West Germany
WC-1990	T-83	Yugoslavia
WC-1994	T-03	Argentina
WC-1994	T-06	Belgium
WC-1994	T-07	Bolivia
WC-1994	T-09	Brazil
WC-1994	T-10	Bulgaria
WC-1994	T-11	Cameroon
WC-1994	T-15	Colombia
WC-1994	T-29	Germany
WC-1994	T-31	Greece
WC-1994	T-39	Italy
WC-1994	T-44	Mexico
WC-1994	T-45	Morocco
WC-1994	T-46	Netherlands
WC-1994	T-48	Nigeria
WC-1994	T-51	Norway
WC-1994	T-57	Republic of Ireland
WC-1994	T-58	Romania
WC-1994	T-59	Russia
WC-1994	T-60	Saudi Arabia
WC-1994	T-68	South Korea
WC-1994	T-70	Spain
WC-1994	T-71	Sweden
WC-1994	T-72	Switzerland
WC-1994	T-79	United States
WC-1998	T-03	Argentina
WC-1998	T-05	Austria
WC-1998	T-06	Belgium
WC-1998	T-09	Brazil
WC-1998	T-10	Bulgaria
WC-1998	T-11	Cameroon
WC-1998	T-13	Chile
WC-1998	T-15	Colombia
WC-1998	T-17	Croatia
WC-1998	T-21	Denmark
WC-1998	T-27	England
WC-1998	T-28	France
WC-1998	T-29	Germany
WC-1998	T-36	Iran
WC-1998	T-39	Italy
WC-1998	T-41	Jamaica
WC-1998	T-42	Japan
WC-1998	T-44	Mexico
WC-1998	T-45	Morocco
WC-1998	T-46	Netherlands
WC-1998	T-48	Nigeria
WC-1998	T-51	Norway
WC-1998	T-53	Paraguay
WC-1998	T-58	Romania
WC-1998	T-60	Saudi Arabia
WC-1998	T-61	Scotland
WC-1998	T-67	South Africa
WC-1998	T-68	South Korea
WC-1998	T-70	Spain
WC-1998	T-75	Tunisia
WC-1998	T-79	United States
WC-1998	T-83	Yugoslavia
WC-2002	T-03	Argentina
WC-2002	T-06	Belgium
WC-2002	T-09	Brazil
WC-2002	T-11	Cameroon
WC-2002	T-14	China
WC-2002	T-16	Costa Rica
WC-2002	T-17	Croatia
WC-2002	T-21	Denmark
WC-2002	T-24	Ecuador
WC-2002	T-27	England
WC-2002	T-28	France
WC-2002	T-29	Germany
WC-2002	T-39	Italy
WC-2002	T-42	Japan
WC-2002	T-44	Mexico
WC-2002	T-48	Nigeria
WC-2002	T-53	Paraguay
WC-2002	T-55	Poland
WC-2002	T-56	Portugal
WC-2002	T-57	Republic of Ireland
WC-2002	T-59	Russia
WC-2002	T-60	Saudi Arabia
WC-2002	T-62	Senegal
WC-2002	T-66	Slovenia
WC-2002	T-67	South Africa
WC-2002	T-68	South Korea
WC-2002	T-70	Spain
WC-2002	T-71	Sweden
WC-2002	T-75	Tunisia
WC-2002	T-76	Turkey
WC-2002	T-79	United States
WC-2002	T-80	Uruguay
WC-2006	T-02	Angola
WC-2006	T-03	Argentina
WC-2006	T-04	Australia
WC-2006	T-09	Brazil
WC-2006	T-16	Costa Rica
WC-2006	T-17	Croatia
WC-2006	T-19	Czech Republic
WC-2006	T-24	Ecuador
WC-2006	T-27	England
WC-2006	T-28	France
WC-2006	T-29	Germany
WC-2006	T-30	Ghana
WC-2006	T-36	Iran
WC-2006	T-39	Italy
WC-2006	T-40	Ivory Coast
WC-2006	T-42	Japan
WC-2006	T-44	Mexico
WC-2006	T-46	Netherlands
WC-2006	T-53	Paraguay
WC-2006	T-55	Poland
WC-2006	T-56	Portugal
WC-2006	T-60	Saudi Arabia
WC-2006	T-64	Serbia and Montenegro
WC-2006	T-68	South Korea
WC-2006	T-70	Spain
WC-2006	T-71	Sweden
WC-2006	T-72	Switzerland
WC-2006	T-73	Togo
WC-2006	T-74	Trinidad and Tobago
WC-2006	T-75	Tunisia
WC-2006	T-77	Ukraine
WC-2006	T-79	United States
WC-2010	T-01	Algeria
WC-2010	T-03	Argentina
WC-2010	T-04	Australia
WC-2010	T-09	Brazil
WC-2010	T-11	Cameroon
WC-2010	T-13	Chile
WC-2010	T-21	Denmark
WC-2010	T-27	England
WC-2010	T-28	France
WC-2010	T-29	Germany
WC-2010	T-30	Ghana
WC-2010	T-31	Greece
WC-2010	T-33	Honduras
WC-2010	T-39	Italy
WC-2010	T-40	Ivory Coast
WC-2010	T-42	Japan
WC-2010	T-44	Mexico
WC-2010	T-46	Netherlands
WC-2010	T-47	New Zealand
WC-2010	T-48	Nigeria
WC-2010	T-49	North Korea
WC-2010	T-53	Paraguay
WC-2010	T-56	Portugal
WC-2010	T-63	Serbia
WC-2010	T-65	Slovakia
WC-2010	T-66	Slovenia
WC-2010	T-67	South Africa
WC-2010	T-68	South Korea
WC-2010	T-70	Spain
WC-2010	T-72	Switzerland
WC-2010	T-79	United States
WC-2010	T-80	Uruguay
WC-2014	T-01	Algeria
WC-2014	T-03	Argentina
WC-2014	T-04	Australia
WC-2014	T-06	Belgium
WC-2014	T-08	Bosnia and Herzegovina
WC-2014	T-09	Brazil
WC-2014	T-11	Cameroon
WC-2014	T-13	Chile
WC-2014	T-15	Colombia
WC-2014	T-16	Costa Rica
WC-2014	T-17	Croatia
WC-2014	T-24	Ecuador
WC-2014	T-27	England
WC-2014	T-28	France
WC-2014	T-29	Germany
WC-2014	T-30	Ghana
WC-2014	T-31	Greece
WC-2014	T-33	Honduras
WC-2014	T-36	Iran
WC-2014	T-39	Italy
WC-2014	T-40	Ivory Coast
WC-2014	T-42	Japan
WC-2014	T-44	Mexico
WC-2014	T-46	Netherlands
WC-2014	T-48	Nigeria
WC-2014	T-56	Portugal
WC-2014	T-59	Russia
WC-2014	T-68	South Korea
WC-2014	T-70	Spain
WC-2014	T-72	Switzerland
WC-2014	T-79	United States
WC-2014	T-80	Uruguay
WC-2018	T-03	Argentina
WC-2018	T-04	Australia
WC-2018	T-06	Belgium
WC-2018	T-09	Brazil
WC-2018	T-15	Colombia
WC-2018	T-16	Costa Rica
WC-2018	T-17	Croatia
WC-2018	T-21	Denmark
WC-2018	T-25	Egypt
WC-2018	T-27	England
WC-2018	T-28	France
WC-2018	T-29	Germany
WC-2018	T-35	Iceland
WC-2018	T-36	Iran
WC-2018	T-42	Japan
WC-2018	T-44	Mexico
WC-2018	T-45	Morocco
WC-2018	T-48	Nigeria
WC-2018	T-52	Panama
WC-2018	T-54	Peru
WC-2018	T-55	Poland
WC-2018	T-56	Portugal
WC-2018	T-59	Russia
WC-2018	T-60	Saudi Arabia
WC-2018	T-62	Senegal
WC-2018	T-63	Serbia
WC-2018	T-68	South Korea
WC-2018	T-70	Spain
WC-2018	T-71	Sweden
WC-2018	T-72	Switzerland
WC-2018	T-75	Tunisia
WC-2018	T-80	Uruguay
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.teams (id, team_name, team_code) FROM stdin;
T-01	Algeria	DZA
T-02	Angola	AGO
T-03	Argentina	ARG
T-04	Australia	AUS
T-05	Austria	AUT
T-06	Belgium	BEL
T-07	Bolivia	BOL
T-08	Bosnia and Herzegovina	BIH
T-09	Brazil	BRA
T-10	Bulgaria	BGR
T-11	Cameroon	CMR
T-12	Canada	CAN
T-13	Chile	CHL
T-14	China	CHN
T-15	Colombia	COL
T-16	Costa Rica	CRI
T-17	Croatia	HRV
T-18	Cuba	CUB
T-19	Czech Republic	CZE
T-20	Czechoslovakia	CSK
T-21	Denmark	DNK
T-22	Dutch East Indies	IDN
T-23	East Germany	DDR
T-24	Ecuador	ECU
T-25	Egypt	EGY
T-26	El Salvador	SLV
T-27	England	ENG
T-28	France	FRA
T-29	Germany	DEU
T-30	Ghana	GHA
T-31	Greece	GRC
T-32	Haiti	HTI
T-33	Honduras	HND
T-34	Hungary	HUN
T-35	Iceland	ISL
T-36	Iran	IRN
T-37	Iraq	IRQ
T-38	Israel	ISR
T-39	Italy	ITA
T-40	Ivory Coast	CIV
T-41	Jamaica	JAM
T-42	Japan	JPN
T-43	Kuwait	KWT
T-44	Mexico	MEX
T-45	Morocco	MAR
T-46	Netherlands	NLD
T-47	New Zealand	NZL
T-48	Nigeria	NGA
T-49	North Korea	PRK
T-50	Northern Ireland	NIR
T-51	Norway	NOR
T-52	Panama	PAN
T-53	Paraguay	PRY
T-54	Peru	PER
T-55	Poland	POL
T-56	Portugal	PRT
T-57	Republic of Ireland	IRL
T-58	Romania	ROU
T-59	Russia	RUS
T-60	Saudi Arabia	SAU
T-61	Scotland	SCO
T-62	Senegal	SEN
T-63	Serbia	SRB
T-64	Serbia and Montenegro	SCG
T-65	Slovakia	SVK
T-66	Slovenia	SVN
T-67	South Africa	ZAF
T-68	South Korea	KOR
T-69	Soviet Union	SUN
T-70	Spain	ESP
T-71	Sweden	SWE
T-72	Switzerland	CHE
T-73	Togo	TGO
T-74	Trinidad and Tobago	TTO
T-75	Tunisia	TUN
T-76	Turkey	TUR
T-77	Ukraine	UKR
T-78	United Arab Emirates	ARE
T-79	United States	USA
T-80	Uruguay	URY
T-81	Wales	WAL
T-82	West Germany	DEU
T-83	Yugoslavia	YUG
T-84	Zaire	COD
\.


--
-- Data for Name: tournament_standings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tournament_standings (tournament_id, team_name, tournament_name, "position") FROM stdin;
WC-1930	Uruguay	1930 FIFA World Cup	1
WC-1930	Argentina	1930 FIFA World Cup	2
WC-1930	United States	1930 FIFA World Cup	3
WC-1930	Yugoslavia	1930 FIFA World Cup	4
WC-1934	Italy	1934 FIFA World Cup	1
WC-1934	Czechoslovakia	1934 FIFA World Cup	2
WC-1934	Germany	1934 FIFA World Cup	3
WC-1934	Austria	1934 FIFA World Cup	4
WC-1938	Italy	1938 FIFA World Cup	1
WC-1938	Hungary	1938 FIFA World Cup	2
WC-1938	Brazil	1938 FIFA World Cup	3
WC-1938	Sweden	1938 FIFA World Cup	4
WC-1950	Uruguay	1950 FIFA World Cup	1
WC-1950	Brazil	1950 FIFA World Cup	2
WC-1950	Sweden	1950 FIFA World Cup	3
WC-1950	Spain	1950 FIFA World Cup	4
WC-1954	West Germany	1954 FIFA World Cup	1
WC-1954	Hungary	1954 FIFA World Cup	2
WC-1954	Austria	1954 FIFA World Cup	3
WC-1954	Uruguay	1954 FIFA World Cup	4
WC-1958	Brazil	1958 FIFA World Cup	1
WC-1958	Sweden	1958 FIFA World Cup	2
WC-1958	France	1958 FIFA World Cup	3
WC-1958	West Germany	1958 FIFA World Cup	4
WC-1962	Brazil	1962 FIFA World Cup	1
WC-1962	Czechoslovakia	1962 FIFA World Cup	2
WC-1962	Chile	1962 FIFA World Cup	3
WC-1962	Yugoslavia	1962 FIFA World Cup	4
WC-1966	England	1966 FIFA World Cup	1
WC-1966	West Germany	1966 FIFA World Cup	2
WC-1966	Portugal	1966 FIFA World Cup	3
WC-1966	Soviet Union	1966 FIFA World Cup	4
WC-1970	Brazil	1970 FIFA World Cup	1
WC-1970	Italy	1970 FIFA World Cup	2
WC-1970	West Germany	1970 FIFA World Cup	3
WC-1970	Uruguay	1970 FIFA World Cup	4
WC-1974	West Germany	1974 FIFA World Cup	1
WC-1974	Netherlands	1974 FIFA World Cup	2
WC-1974	Poland	1974 FIFA World Cup	3
WC-1974	Brazil	1974 FIFA World Cup	4
WC-1978	Argentina	1978 FIFA World Cup	1
WC-1978	Netherlands	1978 FIFA World Cup	2
WC-1978	Brazil	1978 FIFA World Cup	3
WC-1978	Italy	1978 FIFA World Cup	4
WC-1982	Italy	1982 FIFA World Cup	1
WC-1982	West Germany	1982 FIFA World Cup	2
WC-1982	Poland	1982 FIFA World Cup	3
WC-1982	France	1982 FIFA World Cup	4
WC-1986	Argentina	1986 FIFA World Cup	1
WC-1986	West Germany	1986 FIFA World Cup	2
WC-1986	France	1986 FIFA World Cup	3
WC-1986	Belgium	1986 FIFA World Cup	4
WC-1990	West Germany	1990 FIFA World Cup	1
WC-1990	Argentina	1990 FIFA World Cup	2
WC-1990	Italy	1990 FIFA World Cup	3
WC-1990	England	1990 FIFA World Cup	4
WC-1994	Brazil	1994 FIFA World Cup	1
WC-1994	Italy	1994 FIFA World Cup	2
WC-1994	Sweden	1994 FIFA World Cup	3
WC-1994	Bulgaria	1994 FIFA World Cup	4
WC-1998	France	1998 FIFA World Cup	1
WC-1998	Brazil	1998 FIFA World Cup	2
WC-1998	Croatia	1998 FIFA World Cup	3
WC-1998	Netherlands	1998 FIFA World Cup	4
WC-2002	Brazil	2002 FIFA World Cup	1
WC-2002	Germany	2002 FIFA World Cup	2
WC-2002	Turkey	2002 FIFA World Cup	3
WC-2002	South Korea	2002 FIFA World Cup	4
WC-2006	Italy	2006 FIFA World Cup	1
WC-2006	France	2006 FIFA World Cup	2
WC-2006	Germany	2006 FIFA World Cup	3
WC-2006	Portugal	2006 FIFA World Cup	4
WC-2010	Spain	2010 FIFA World Cup	1
WC-2010	Netherlands	2010 FIFA World Cup	2
WC-2010	Germany	2010 FIFA World Cup	3
WC-2010	Uruguay	2010 FIFA World Cup	4
WC-2014	Germany	2014 FIFA World Cup	1
WC-2014	Argentina	2014 FIFA World Cup	2
WC-2014	Netherlands	2014 FIFA World Cup	3
WC-2014	Brazil	2014 FIFA World Cup	4
WC-2018	France	2018 FIFA World Cup	1
WC-2018	Croatia	2018 FIFA World Cup	2
WC-2018	Belgium	2018 FIFA World Cup	3
WC-2018	England	2018 FIFA World Cup	4
\.


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

