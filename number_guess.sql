--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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

DROP DATABASE number_guesser;
--
-- Name: number_guesser; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guesser WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guesser OWNER TO freecodecamp;

\connect number_guesser

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer,
    games_played integer,
    best_game_guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (42, 0, 0);
INSERT INTO public.games VALUES (43, 0, 0);
INSERT INTO public.games VALUES (44, 0, 0);
INSERT INTO public.games VALUES (45, 0, 0);
INSERT INTO public.games VALUES (46, 0, 0);
INSERT INTO public.games VALUES (59, 0, 0);
INSERT INTO public.games VALUES (60, 0, 0);
INSERT INTO public.games VALUES (61, 0, 0);
INSERT INTO public.games VALUES (62, 0, 0);
INSERT INTO public.games VALUES (63, 0, 0);
INSERT INTO public.games VALUES (64, 0, 0);
INSERT INTO public.games VALUES (65, 0, 0);
INSERT INTO public.games VALUES (66, 0, 0);
INSERT INTO public.games VALUES (67, 0, 0);
INSERT INTO public.games VALUES (68, 0, 0);
INSERT INTO public.games VALUES (69, 0, 0);
INSERT INTO public.games VALUES (70, 0, 0);
INSERT INTO public.games VALUES (72, 0, 0);
INSERT INTO public.games VALUES (73, 0, 0);
INSERT INTO public.games VALUES (75, 2, 13);
INSERT INTO public.games VALUES (74, 5, 15);
INSERT INTO public.games VALUES (71, 1, 1);
INSERT INTO public.games VALUES (77, 2, 13);
INSERT INTO public.games VALUES (76, 5, 15);
INSERT INTO public.games VALUES (79, 2, 13);
INSERT INTO public.games VALUES (78, 5, 15);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1707091098414');
INSERT INTO public.users VALUES (2, 'user_1707091098413');
INSERT INTO public.users VALUES (3, 'username');
INSERT INTO public.users VALUES (4, 'user_1707091110385');
INSERT INTO public.users VALUES (5, 'user_1707091110384');
INSERT INTO public.users VALUES (6, 'user_1707091258525');
INSERT INTO public.users VALUES (7, 'user_1707091258524');
INSERT INTO public.users VALUES (8, 'user_1707091352417');
INSERT INTO public.users VALUES (9, 'user_1707091352416');
INSERT INTO public.users VALUES (10, 'user_1707091484553');
INSERT INTO public.users VALUES (11, 'user_1707091484552');
INSERT INTO public.users VALUES (12, 'user_1707091490775');
INSERT INTO public.users VALUES (13, 'user_1707091490774');
INSERT INTO public.users VALUES (14, 'user_1707091551744');
INSERT INTO public.users VALUES (15, 'user_1707091551743');
INSERT INTO public.users VALUES (16, 'user_1707091585557');
INSERT INTO public.users VALUES (17, 'user_1707091585556');
INSERT INTO public.users VALUES (18, 'user_1707091778809');
INSERT INTO public.users VALUES (19, 'user_1707091778808');
INSERT INTO public.users VALUES (20, 'user_1707091805333');
INSERT INTO public.users VALUES (21, 'user_1707091805332');
INSERT INTO public.users VALUES (22, 'user_1707091944985');
INSERT INTO public.users VALUES (23, 'user_1707091944984');
INSERT INTO public.users VALUES (24, 'user_1707092132979');
INSERT INTO public.users VALUES (25, 'user_1707092132978');
INSERT INTO public.users VALUES (26, 'user_1707092155304');
INSERT INTO public.users VALUES (27, 'user_1707092155303');
INSERT INTO public.users VALUES (28, 'user_1707092166205');
INSERT INTO public.users VALUES (29, 'user_1707092166204');
INSERT INTO public.users VALUES (30, 'user_1707092201047');
INSERT INTO public.users VALUES (31, 'user_1707092201046');
INSERT INTO public.users VALUES (32, 'user_1707092217084');
INSERT INTO public.users VALUES (33, 'user_1707092217083');
INSERT INTO public.users VALUES (34, 'user_1707092234197');
INSERT INTO public.users VALUES (35, 'user_1707092234196');
INSERT INTO public.users VALUES (36, 'user_1707092260232');
INSERT INTO public.users VALUES (37, 'user_1707092260231');
INSERT INTO public.users VALUES (38, 'user_1707092323101');
INSERT INTO public.users VALUES (39, 'user_1707092323100');
INSERT INTO public.users VALUES (40, 'user_1707092765164');
INSERT INTO public.users VALUES (41, 'user_1707092765163');
INSERT INTO public.users VALUES (42, 'user_1707092783250');
INSERT INTO public.users VALUES (43, 'user_1707092783249');
INSERT INTO public.users VALUES (44, 'user_1707092807744');
INSERT INTO public.users VALUES (45, 'user_1707092807743');
INSERT INTO public.users VALUES (46, 'asdf');
INSERT INTO public.users VALUES (47, 'user_1707092866057');
INSERT INTO public.users VALUES (48, 'user_1707092866056');
INSERT INTO public.users VALUES (49, 'user_1707092868170');
INSERT INTO public.users VALUES (50, 'user_1707092868169');
INSERT INTO public.users VALUES (51, 'user_1707092893000');
INSERT INTO public.users VALUES (52, 'user_1707092892999');
INSERT INTO public.users VALUES (53, 'user_1707092894840');
INSERT INTO public.users VALUES (54, 'user_1707092894839');
INSERT INTO public.users VALUES (55, 'user_1707092896451');
INSERT INTO public.users VALUES (56, 'user_1707092896450');
INSERT INTO public.users VALUES (57, 'user_1707092908374');
INSERT INTO public.users VALUES (58, 'user_1707092908373');
INSERT INTO public.users VALUES (59, 'user_1707092994417');
INSERT INTO public.users VALUES (60, 'user_1707092994416');
INSERT INTO public.users VALUES (61, 'user_1707093283371');
INSERT INTO public.users VALUES (62, 'user_1707093283370');
INSERT INTO public.users VALUES (63, 'user_1707093324040');
INSERT INTO public.users VALUES (64, 'user_1707093324039');
INSERT INTO public.users VALUES (65, 'user_1707093340552');
INSERT INTO public.users VALUES (66, 'user_1707093340551');
INSERT INTO public.users VALUES (67, 'user_1707093359180');
INSERT INTO public.users VALUES (68, 'user_1707093359179');
INSERT INTO public.users VALUES (69, 'user_1707093389504');
INSERT INTO public.users VALUES (70, 'user_1707093389503');
INSERT INTO public.users VALUES (71, 'hjkl');
INSERT INTO public.users VALUES (72, 'user_1707093446959');
INSERT INTO public.users VALUES (73, 'user_1707093446958');
INSERT INTO public.users VALUES (74, 'user_1707093478007');
INSERT INTO public.users VALUES (75, 'user_1707093478006');
INSERT INTO public.users VALUES (76, 'user_1707093504523');
INSERT INTO public.users VALUES (77, 'user_1707093504522');
INSERT INTO public.users VALUES (78, 'user_1707093546871');
INSERT INTO public.users VALUES (79, 'user_1707093546870');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 79, true);


--
-- Name: games games_user_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_key UNIQUE (user_id);


--
-- Name: users users_user_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_id_key UNIQUE (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

