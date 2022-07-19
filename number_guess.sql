--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    game_score integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: user_stories; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_stories (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL
);


ALTER TABLE public.user_stories OWNER TO freecodecamp;

--
-- Name: user_stories_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_stories_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_stories_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_stories_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_stories_user_id_seq OWNED BY public.user_stories.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: user_stories user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_stories ALTER COLUMN user_id SET DEFAULT nextval('public.user_stories_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 30);
INSERT INTO public.games VALUES (2, 1, 2);
INSERT INTO public.games VALUES (3, 1, 5);
INSERT INTO public.games VALUES (4, 2, 40);
INSERT INTO public.games VALUES (5, 2, 0);
INSERT INTO public.games VALUES (6, 3, 3);
INSERT INTO public.games VALUES (7, 3, 2);
INSERT INTO public.games VALUES (8, 4, 885);
INSERT INTO public.games VALUES (9, 4, 667);
INSERT INTO public.games VALUES (10, 5, 335);
INSERT INTO public.games VALUES (11, 5, 315);
INSERT INTO public.games VALUES (12, 4, 223);
INSERT INTO public.games VALUES (13, 4, 366);
INSERT INTO public.games VALUES (14, 4, 1000);
INSERT INTO public.games VALUES (15, 6, 613);
INSERT INTO public.games VALUES (16, 6, 488);
INSERT INTO public.games VALUES (17, 7, 453);
INSERT INTO public.games VALUES (18, 7, 473);
INSERT INTO public.games VALUES (19, 6, 351);
INSERT INTO public.games VALUES (20, 6, 39);
INSERT INTO public.games VALUES (21, 6, 492);
INSERT INTO public.games VALUES (22, 8, 332);
INSERT INTO public.games VALUES (23, 8, 162);
INSERT INTO public.games VALUES (24, 9, 279);
INSERT INTO public.games VALUES (25, 9, 860);
INSERT INTO public.games VALUES (26, 8, 532);
INSERT INTO public.games VALUES (27, 8, 835);
INSERT INTO public.games VALUES (28, 8, 675);
INSERT INTO public.games VALUES (29, 10, 649);
INSERT INTO public.games VALUES (30, 10, 954);
INSERT INTO public.games VALUES (31, 11, 180);
INSERT INTO public.games VALUES (32, 11, 956);
INSERT INTO public.games VALUES (33, 10, 429);
INSERT INTO public.games VALUES (34, 10, 25);
INSERT INTO public.games VALUES (35, 10, 405);
INSERT INTO public.games VALUES (36, 13, 427);
INSERT INTO public.games VALUES (37, 13, 727);
INSERT INTO public.games VALUES (38, 14, 77);
INSERT INTO public.games VALUES (39, 14, 83);
INSERT INTO public.games VALUES (40, 13, 775);
INSERT INTO public.games VALUES (41, 13, 367);
INSERT INTO public.games VALUES (42, 13, 452);
INSERT INTO public.games VALUES (43, 15, 396);
INSERT INTO public.games VALUES (44, 15, 813);
INSERT INTO public.games VALUES (45, 16, 531);
INSERT INTO public.games VALUES (46, 16, 729);
INSERT INTO public.games VALUES (47, 15, 822);
INSERT INTO public.games VALUES (48, 15, 572);
INSERT INTO public.games VALUES (49, 15, 55);
INSERT INTO public.games VALUES (50, 17, 793);
INSERT INTO public.games VALUES (51, 17, 780);
INSERT INTO public.games VALUES (52, 18, 67);
INSERT INTO public.games VALUES (53, 18, 179);
INSERT INTO public.games VALUES (54, 17, 612);
INSERT INTO public.games VALUES (55, 17, 616);
INSERT INTO public.games VALUES (56, 17, 7);
INSERT INTO public.games VALUES (57, 19, 973);
INSERT INTO public.games VALUES (58, 19, 213);
INSERT INTO public.games VALUES (59, 20, 378);
INSERT INTO public.games VALUES (60, 20, 881);
INSERT INTO public.games VALUES (61, 19, 214);
INSERT INTO public.games VALUES (62, 19, 83);
INSERT INTO public.games VALUES (63, 19, 702);
INSERT INTO public.games VALUES (64, 21, 581);
INSERT INTO public.games VALUES (65, 21, 650);
INSERT INTO public.games VALUES (66, 22, 244);
INSERT INTO public.games VALUES (67, 22, 105);
INSERT INTO public.games VALUES (68, 21, 843);
INSERT INTO public.games VALUES (69, 21, 758);
INSERT INTO public.games VALUES (70, 21, 856);
INSERT INTO public.games VALUES (71, 23, 4);
INSERT INTO public.games VALUES (72, 24, 6);
INSERT INTO public.games VALUES (73, 24, 6);
INSERT INTO public.games VALUES (74, 25, 6);
INSERT INTO public.games VALUES (75, 25, 6);
INSERT INTO public.games VALUES (76, 24, 7);
INSERT INTO public.games VALUES (77, 24, 6);
INSERT INTO public.games VALUES (78, 24, 6);
INSERT INTO public.games VALUES (79, 26, 5);
INSERT INTO public.games VALUES (80, 26, 5);
INSERT INTO public.games VALUES (81, 27, 5);
INSERT INTO public.games VALUES (82, 27, 5);
INSERT INTO public.games VALUES (83, 26, 6);
INSERT INTO public.games VALUES (84, 26, 5);
INSERT INTO public.games VALUES (85, 26, 5);
INSERT INTO public.games VALUES (86, 28, 6);
INSERT INTO public.games VALUES (87, 28, 6);
INSERT INTO public.games VALUES (88, 29, 6);
INSERT INTO public.games VALUES (89, 29, 6);
INSERT INTO public.games VALUES (90, 28, 7);
INSERT INTO public.games VALUES (91, 28, 6);
INSERT INTO public.games VALUES (92, 28, 6);
INSERT INTO public.games VALUES (93, 23, 2);
INSERT INTO public.games VALUES (94, 30, 6);
INSERT INTO public.games VALUES (95, 30, 6);
INSERT INTO public.games VALUES (96, 31, 6);
INSERT INTO public.games VALUES (97, 31, 6);
INSERT INTO public.games VALUES (98, 30, 7);
INSERT INTO public.games VALUES (99, 30, 6);
INSERT INTO public.games VALUES (100, 30, 6);
INSERT INTO public.games VALUES (101, 32, 6);
INSERT INTO public.games VALUES (102, 32, 6);
INSERT INTO public.games VALUES (103, 33, 6);
INSERT INTO public.games VALUES (104, 33, 6);
INSERT INTO public.games VALUES (105, 32, 7);
INSERT INTO public.games VALUES (106, 32, 6);
INSERT INTO public.games VALUES (107, 32, 6);
INSERT INTO public.games VALUES (108, 34, 6);
INSERT INTO public.games VALUES (109, 34, 6);
INSERT INTO public.games VALUES (110, 35, 6);
INSERT INTO public.games VALUES (111, 35, 6);
INSERT INTO public.games VALUES (112, 34, 7);
INSERT INTO public.games VALUES (113, 34, 6);
INSERT INTO public.games VALUES (114, 34, 6);
INSERT INTO public.games VALUES (115, 23, 1);
INSERT INTO public.games VALUES (116, 23, 4);
INSERT INTO public.games VALUES (117, 36, 6);
INSERT INTO public.games VALUES (118, 36, 6);
INSERT INTO public.games VALUES (119, 37, 6);
INSERT INTO public.games VALUES (120, 37, 6);
INSERT INTO public.games VALUES (121, 36, 7);
INSERT INTO public.games VALUES (122, 36, 6);
INSERT INTO public.games VALUES (123, 36, 6);
INSERT INTO public.games VALUES (124, 38, 1);
INSERT INTO public.games VALUES (125, 39, 6);
INSERT INTO public.games VALUES (126, 39, 6);
INSERT INTO public.games VALUES (127, 40, 6);
INSERT INTO public.games VALUES (128, 40, 6);
INSERT INTO public.games VALUES (129, 39, 7);
INSERT INTO public.games VALUES (130, 39, 6);
INSERT INTO public.games VALUES (131, 39, 6);
INSERT INTO public.games VALUES (132, 41, 6);
INSERT INTO public.games VALUES (133, 41, 6);
INSERT INTO public.games VALUES (134, 42, 6);
INSERT INTO public.games VALUES (135, 42, 6);
INSERT INTO public.games VALUES (136, 41, 7);
INSERT INTO public.games VALUES (137, 41, 6);
INSERT INTO public.games VALUES (138, 41, 6);
INSERT INTO public.games VALUES (139, 43, 6);
INSERT INTO public.games VALUES (140, 43, 6);
INSERT INTO public.games VALUES (141, 44, 6);
INSERT INTO public.games VALUES (142, 44, 6);
INSERT INTO public.games VALUES (143, 43, 7);
INSERT INTO public.games VALUES (144, 43, 6);
INSERT INTO public.games VALUES (145, 43, 6);
INSERT INTO public.games VALUES (146, 45, 6);
INSERT INTO public.games VALUES (147, 45, 6);
INSERT INTO public.games VALUES (148, 46, 6);
INSERT INTO public.games VALUES (149, 46, 6);
INSERT INTO public.games VALUES (150, 45, 7);
INSERT INTO public.games VALUES (151, 45, 6);
INSERT INTO public.games VALUES (152, 45, 6);
INSERT INTO public.games VALUES (153, 47, 6);
INSERT INTO public.games VALUES (154, 47, 6);
INSERT INTO public.games VALUES (155, 48, 6);
INSERT INTO public.games VALUES (156, 48, 6);
INSERT INTO public.games VALUES (157, 47, 7);
INSERT INTO public.games VALUES (158, 47, 6);
INSERT INTO public.games VALUES (159, 47, 6);
INSERT INTO public.games VALUES (160, 49, 5);
INSERT INTO public.games VALUES (161, 49, 5);
INSERT INTO public.games VALUES (162, 50, 5);
INSERT INTO public.games VALUES (163, 50, 5);
INSERT INTO public.games VALUES (164, 49, 6);
INSERT INTO public.games VALUES (165, 49, 5);
INSERT INTO public.games VALUES (166, 49, 5);
INSERT INTO public.games VALUES (167, 51, 5);
INSERT INTO public.games VALUES (168, 51, 6);
INSERT INTO public.games VALUES (169, 52, 6);
INSERT INTO public.games VALUES (170, 52, 6);
INSERT INTO public.games VALUES (171, 51, 7);
INSERT INTO public.games VALUES (172, 51, 6);
INSERT INTO public.games VALUES (173, 51, 6);
INSERT INTO public.games VALUES (174, 53, 6);
INSERT INTO public.games VALUES (175, 53, 6);
INSERT INTO public.games VALUES (176, 54, 6);
INSERT INTO public.games VALUES (177, 54, 6);
INSERT INTO public.games VALUES (178, 53, 7);
INSERT INTO public.games VALUES (179, 53, 6);
INSERT INTO public.games VALUES (180, 53, 6);
INSERT INTO public.games VALUES (181, 55, 6);
INSERT INTO public.games VALUES (182, 55, 6);
INSERT INTO public.games VALUES (183, 56, 6);
INSERT INTO public.games VALUES (184, 56, 6);
INSERT INTO public.games VALUES (185, 55, 7);
INSERT INTO public.games VALUES (186, 55, 6);
INSERT INTO public.games VALUES (187, 55, 6);
INSERT INTO public.games VALUES (188, 57, 6);
INSERT INTO public.games VALUES (189, 57, 6);
INSERT INTO public.games VALUES (190, 58, 6);
INSERT INTO public.games VALUES (191, 58, 6);
INSERT INTO public.games VALUES (192, 57, 7);
INSERT INTO public.games VALUES (193, 57, 6);
INSERT INTO public.games VALUES (194, 57, 6);
INSERT INTO public.games VALUES (195, 59, 6);
INSERT INTO public.games VALUES (196, 59, 6);
INSERT INTO public.games VALUES (197, 60, 6);
INSERT INTO public.games VALUES (198, 60, 6);
INSERT INTO public.games VALUES (199, 59, 7);
INSERT INTO public.games VALUES (200, 59, 6);
INSERT INTO public.games VALUES (201, 59, 6);
INSERT INTO public.games VALUES (202, 61, 6);
INSERT INTO public.games VALUES (203, 61, 6);
INSERT INTO public.games VALUES (204, 62, 6);
INSERT INTO public.games VALUES (205, 62, 6);
INSERT INTO public.games VALUES (206, 61, 7);
INSERT INTO public.games VALUES (207, 61, 6);
INSERT INTO public.games VALUES (208, 61, 6);
INSERT INTO public.games VALUES (209, 63, 6);
INSERT INTO public.games VALUES (210, 63, 6);
INSERT INTO public.games VALUES (211, 64, 6);
INSERT INTO public.games VALUES (212, 64, 6);
INSERT INTO public.games VALUES (213, 63, 7);
INSERT INTO public.games VALUES (214, 63, 6);
INSERT INTO public.games VALUES (215, 63, 6);
INSERT INTO public.games VALUES (216, 65, 6);
INSERT INTO public.games VALUES (217, 65, 6);
INSERT INTO public.games VALUES (218, 66, 6);
INSERT INTO public.games VALUES (219, 66, 6);
INSERT INTO public.games VALUES (220, 65, 7);
INSERT INTO public.games VALUES (221, 65, 6);
INSERT INTO public.games VALUES (222, 65, 6);
INSERT INTO public.games VALUES (223, 67, 6);
INSERT INTO public.games VALUES (224, 67, 6);
INSERT INTO public.games VALUES (225, 68, 6);
INSERT INTO public.games VALUES (226, 68, 6);
INSERT INTO public.games VALUES (227, 67, 7);
INSERT INTO public.games VALUES (228, 67, 6);
INSERT INTO public.games VALUES (229, 67, 6);
INSERT INTO public.games VALUES (230, 69, 6);
INSERT INTO public.games VALUES (231, 69, 6);
INSERT INTO public.games VALUES (232, 70, 6);
INSERT INTO public.games VALUES (233, 70, 6);
INSERT INTO public.games VALUES (234, 69, 7);
INSERT INTO public.games VALUES (235, 69, 6);
INSERT INTO public.games VALUES (236, 69, 6);
INSERT INTO public.games VALUES (237, 71, 6);
INSERT INTO public.games VALUES (238, 71, 6);
INSERT INTO public.games VALUES (239, 72, 6);
INSERT INTO public.games VALUES (240, 72, 6);
INSERT INTO public.games VALUES (241, 71, 7);
INSERT INTO public.games VALUES (242, 71, 6);
INSERT INTO public.games VALUES (243, 71, 6);
INSERT INTO public.games VALUES (244, 73, 6);
INSERT INTO public.games VALUES (245, 73, 6);
INSERT INTO public.games VALUES (246, 74, 6);
INSERT INTO public.games VALUES (247, 74, 6);
INSERT INTO public.games VALUES (248, 73, 7);
INSERT INTO public.games VALUES (249, 73, 6);
INSERT INTO public.games VALUES (250, 73, 6);
INSERT INTO public.games VALUES (251, 75, 6);
INSERT INTO public.games VALUES (252, 75, 6);
INSERT INTO public.games VALUES (253, 76, 6);
INSERT INTO public.games VALUES (254, 76, 6);
INSERT INTO public.games VALUES (255, 75, 7);
INSERT INTO public.games VALUES (256, 75, 6);
INSERT INTO public.games VALUES (257, 75, 6);
INSERT INTO public.games VALUES (258, 38, 2);
INSERT INTO public.games VALUES (259, 77, 57);
INSERT INTO public.games VALUES (260, 77, 232);
INSERT INTO public.games VALUES (261, 78, 195);
INSERT INTO public.games VALUES (262, 78, 400);
INSERT INTO public.games VALUES (263, 77, 255);
INSERT INTO public.games VALUES (264, 77, 591);
INSERT INTO public.games VALUES (265, 77, 106);
INSERT INTO public.games VALUES (266, 79, 525);
INSERT INTO public.games VALUES (267, 79, 286);
INSERT INTO public.games VALUES (268, 80, 180);
INSERT INTO public.games VALUES (269, 80, 350);
INSERT INTO public.games VALUES (270, 79, 438);
INSERT INTO public.games VALUES (271, 79, 475);
INSERT INTO public.games VALUES (272, 79, 597);
INSERT INTO public.games VALUES (273, 81, 974);
INSERT INTO public.games VALUES (274, 81, 4);
INSERT INTO public.games VALUES (275, 82, 140);
INSERT INTO public.games VALUES (276, 82, 450);
INSERT INTO public.games VALUES (277, 81, 118);
INSERT INTO public.games VALUES (278, 81, 276);
INSERT INTO public.games VALUES (279, 81, 718);
INSERT INTO public.games VALUES (280, 83, 700);
INSERT INTO public.games VALUES (281, 83, 485);
INSERT INTO public.games VALUES (282, 84, 59);
INSERT INTO public.games VALUES (283, 84, 705);
INSERT INTO public.games VALUES (284, 83, 601);
INSERT INTO public.games VALUES (285, 83, 506);
INSERT INTO public.games VALUES (286, 83, 286);
INSERT INTO public.games VALUES (287, 85, 376);
INSERT INTO public.games VALUES (288, 85, 597);
INSERT INTO public.games VALUES (289, 86, 714);
INSERT INTO public.games VALUES (290, 86, 995);
INSERT INTO public.games VALUES (291, 85, 216);
INSERT INTO public.games VALUES (292, 85, 926);
INSERT INTO public.games VALUES (293, 85, 361);
INSERT INTO public.games VALUES (294, 87, 579);
INSERT INTO public.games VALUES (295, 87, 255);
INSERT INTO public.games VALUES (296, 88, 939);
INSERT INTO public.games VALUES (297, 88, 71);
INSERT INTO public.games VALUES (298, 87, 331);
INSERT INTO public.games VALUES (299, 87, 186);
INSERT INTO public.games VALUES (300, 87, 785);


--
-- Data for Name: user_stories; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_stories VALUES (1, 'test 1');
INSERT INTO public.user_stories VALUES (2, 'test 2');
INSERT INTO public.user_stories VALUES (3, 'testing');
INSERT INTO public.user_stories VALUES (4, 'user_1658220120121');
INSERT INTO public.user_stories VALUES (5, 'user_1658220120119');
INSERT INTO public.user_stories VALUES (6, 'user_1658220153897');
INSERT INTO public.user_stories VALUES (7, 'user_1658220153896');
INSERT INTO public.user_stories VALUES (8, 'user_1658220307761');
INSERT INTO public.user_stories VALUES (9, 'user_1658220307760');
INSERT INTO public.user_stories VALUES (10, 'user_1658220423249');
INSERT INTO public.user_stories VALUES (11, 'user_1658220423248');
INSERT INTO public.user_stories VALUES (12, 'me');
INSERT INTO public.user_stories VALUES (13, 'user_1658220578368');
INSERT INTO public.user_stories VALUES (14, 'user_1658220578367');
INSERT INTO public.user_stories VALUES (15, 'user_1658220638857');
INSERT INTO public.user_stories VALUES (16, 'user_1658220638856');
INSERT INTO public.user_stories VALUES (17, 'user_1658220875606');
INSERT INTO public.user_stories VALUES (18, 'user_1658220875605');
INSERT INTO public.user_stories VALUES (19, 'user_1658220885567');
INSERT INTO public.user_stories VALUES (20, 'user_1658220885566');
INSERT INTO public.user_stories VALUES (21, 'user_1658221344204');
INSERT INTO public.user_stories VALUES (22, 'user_1658221344203');
INSERT INTO public.user_stories VALUES (23, 'vetrisuriyavetrisuriya');
INSERT INTO public.user_stories VALUES (24, 'user_1658223361217');
INSERT INTO public.user_stories VALUES (25, 'user_1658223361216');
INSERT INTO public.user_stories VALUES (26, 'user_1658223390041');
INSERT INTO public.user_stories VALUES (27, 'user_1658223390040');
INSERT INTO public.user_stories VALUES (28, 'user_1658223398591');
INSERT INTO public.user_stories VALUES (29, 'user_1658223398590');
INSERT INTO public.user_stories VALUES (30, 'user_1658223427399');
INSERT INTO public.user_stories VALUES (31, 'user_1658223427398');
INSERT INTO public.user_stories VALUES (32, 'user_1658223482409');
INSERT INTO public.user_stories VALUES (33, 'user_1658223482408');
INSERT INTO public.user_stories VALUES (34, 'user_1658223540766');
INSERT INTO public.user_stories VALUES (35, 'user_1658223540765');
INSERT INTO public.user_stories VALUES (36, 'user_1658223917524');
INSERT INTO public.user_stories VALUES (37, 'user_1658223917523');
INSERT INTO public.user_stories VALUES (38, 'vetrisuriya');
INSERT INTO public.user_stories VALUES (39, 'user_1658224101312');
INSERT INTO public.user_stories VALUES (40, 'user_1658224101311');
INSERT INTO public.user_stories VALUES (41, 'user_1658224107424');
INSERT INTO public.user_stories VALUES (42, 'user_1658224107423');
INSERT INTO public.user_stories VALUES (43, 'user_1658224136105');
INSERT INTO public.user_stories VALUES (44, 'user_1658224136104');
INSERT INTO public.user_stories VALUES (45, 'user_1658224144710');
INSERT INTO public.user_stories VALUES (46, 'user_1658224144709');
INSERT INTO public.user_stories VALUES (47, 'user_1658224513278');
INSERT INTO public.user_stories VALUES (48, 'user_1658224513277');
INSERT INTO public.user_stories VALUES (49, 'user_1658224524699');
INSERT INTO public.user_stories VALUES (50, 'user_1658224524698');
INSERT INTO public.user_stories VALUES (51, 'user_1658224531704');
INSERT INTO public.user_stories VALUES (52, 'user_1658224531703');
INSERT INTO public.user_stories VALUES (53, 'user_1658224538457');
INSERT INTO public.user_stories VALUES (54, 'user_1658224538456');
INSERT INTO public.user_stories VALUES (55, 'user_1658224546790');
INSERT INTO public.user_stories VALUES (56, 'user_1658224546789');
INSERT INTO public.user_stories VALUES (57, 'user_1658224579701');
INSERT INTO public.user_stories VALUES (58, 'user_1658224579700');
INSERT INTO public.user_stories VALUES (59, 'user_1658224584548');
INSERT INTO public.user_stories VALUES (60, 'user_1658224584547');
INSERT INTO public.user_stories VALUES (61, 'user_1658224591835');
INSERT INTO public.user_stories VALUES (62, 'user_1658224591834');
INSERT INTO public.user_stories VALUES (63, 'user_1658224594876');
INSERT INTO public.user_stories VALUES (64, 'user_1658224594875');
INSERT INTO public.user_stories VALUES (65, 'user_1658224597618');
INSERT INTO public.user_stories VALUES (66, 'user_1658224597617');
INSERT INTO public.user_stories VALUES (67, 'user_1658224601291');
INSERT INTO public.user_stories VALUES (68, 'user_1658224601290');
INSERT INTO public.user_stories VALUES (69, 'user_1658224604035');
INSERT INTO public.user_stories VALUES (70, 'user_1658224604034');
INSERT INTO public.user_stories VALUES (71, 'user_1658224608492');
INSERT INTO public.user_stories VALUES (72, 'user_1658224608491');
INSERT INTO public.user_stories VALUES (73, 'user_1658224615534');
INSERT INTO public.user_stories VALUES (74, 'user_1658224615533');
INSERT INTO public.user_stories VALUES (75, 'user_1658224620644');
INSERT INTO public.user_stories VALUES (76, 'user_1658224620643');
INSERT INTO public.user_stories VALUES (77, 'user_1658224660279');
INSERT INTO public.user_stories VALUES (78, 'user_1658224660278');
INSERT INTO public.user_stories VALUES (79, 'user_1658224665766');
INSERT INTO public.user_stories VALUES (80, 'user_1658224665765');
INSERT INTO public.user_stories VALUES (81, 'user_1658224669091');
INSERT INTO public.user_stories VALUES (82, 'user_1658224669090');
INSERT INTO public.user_stories VALUES (83, 'user_1658224672425');
INSERT INTO public.user_stories VALUES (84, 'user_1658224672424');
INSERT INTO public.user_stories VALUES (85, 'user_1658224675863');
INSERT INTO public.user_stories VALUES (86, 'user_1658224675862');
INSERT INTO public.user_stories VALUES (87, 'user_1658224701115');
INSERT INTO public.user_stories VALUES (88, 'user_1658224701114');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 300, true);


--
-- Name: user_stories_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_stories_user_id_seq', 88, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: user_stories user_stories_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_stories
    ADD CONSTRAINT user_stories_pkey PRIMARY KEY (user_id);


--
-- Name: user_stories user_stories_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_stories
    ADD CONSTRAINT user_stories_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

