--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO postgres;

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

--
-- Name: DATABASE number_guess; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE number_guess IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_of_guesses integer NOT NULL,
    user_id integer NOT NULL,
    secret_number integer
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 69, 1, NULL);
INSERT INTO public.games VALUES (2, 2, 1, NULL);
INSERT INTO public.games VALUES (3, 3, 1, NULL);
INSERT INTO public.games VALUES (4, 804, 10, NULL);
INSERT INTO public.games VALUES (5, 422, 10, NULL);
INSERT INTO public.games VALUES (6, 737, 11, NULL);
INSERT INTO public.games VALUES (7, 312, 11, NULL);
INSERT INTO public.games VALUES (8, 934, 10, NULL);
INSERT INTO public.games VALUES (9, 960, 10, NULL);
INSERT INTO public.games VALUES (10, 88, 10, NULL);
INSERT INTO public.games VALUES (11, 316, 12, NULL);
INSERT INTO public.games VALUES (12, 552, 12, NULL);
INSERT INTO public.games VALUES (13, 92, 13, NULL);
INSERT INTO public.games VALUES (14, 559, 13, NULL);
INSERT INTO public.games VALUES (15, 532, 12, NULL);
INSERT INTO public.games VALUES (16, 566, 12, NULL);
INSERT INTO public.games VALUES (17, 880, 12, NULL);
INSERT INTO public.games VALUES (18, 153, 14, NULL);
INSERT INTO public.games VALUES (19, 865, 14, NULL);
INSERT INTO public.games VALUES (20, 64, 15, NULL);
INSERT INTO public.games VALUES (21, 943, 15, NULL);
INSERT INTO public.games VALUES (22, 772, 14, NULL);
INSERT INTO public.games VALUES (23, 928, 14, NULL);
INSERT INTO public.games VALUES (24, 625, 14, NULL);
INSERT INTO public.games VALUES (25, 99, 16, NULL);
INSERT INTO public.games VALUES (26, 388, 16, NULL);
INSERT INTO public.games VALUES (27, 26, 17, NULL);
INSERT INTO public.games VALUES (28, 364, 17, NULL);
INSERT INTO public.games VALUES (29, 540, 16, NULL);
INSERT INTO public.games VALUES (30, 303, 16, NULL);
INSERT INTO public.games VALUES (31, 246, 16, NULL);
INSERT INTO public.games VALUES (32, 825, 18, NULL);
INSERT INTO public.games VALUES (33, 67, 18, NULL);
INSERT INTO public.games VALUES (34, 536, 19, NULL);
INSERT INTO public.games VALUES (35, 971, 19, NULL);
INSERT INTO public.games VALUES (36, 409, 18, NULL);
INSERT INTO public.games VALUES (37, 318, 18, NULL);
INSERT INTO public.games VALUES (38, 319, 18, NULL);
INSERT INTO public.games VALUES (39, 140, 20, NULL);
INSERT INTO public.games VALUES (40, 339, 21, NULL);
INSERT INTO public.games VALUES (41, 686, 21, NULL);
INSERT INTO public.games VALUES (42, 948, 20, NULL);
INSERT INTO public.games VALUES (43, 149, 20, NULL);
INSERT INTO public.games VALUES (44, 677, 20, NULL);
INSERT INTO public.games VALUES (45, 329, 22, NULL);
INSERT INTO public.games VALUES (46, 826, 22, NULL);
INSERT INTO public.games VALUES (47, 542, 23, NULL);
INSERT INTO public.games VALUES (48, 218, 23, NULL);
INSERT INTO public.games VALUES (49, 848, 22, NULL);
INSERT INTO public.games VALUES (50, 910, 22, NULL);
INSERT INTO public.games VALUES (51, 427, 22, NULL);
INSERT INTO public.games VALUES (52, 112, 24, NULL);
INSERT INTO public.games VALUES (53, 130, 24, NULL);
INSERT INTO public.games VALUES (54, 308, 25, NULL);
INSERT INTO public.games VALUES (55, 28, 25, NULL);
INSERT INTO public.games VALUES (56, 298, 24, NULL);
INSERT INTO public.games VALUES (57, 536, 24, NULL);
INSERT INTO public.games VALUES (58, 222, 24, NULL);
INSERT INTO public.games VALUES (59, 622, 26, NULL);
INSERT INTO public.games VALUES (60, 826, 26, NULL);
INSERT INTO public.games VALUES (61, 459, 27, NULL);
INSERT INTO public.games VALUES (62, 116, 27, NULL);
INSERT INTO public.games VALUES (63, 613, 26, NULL);
INSERT INTO public.games VALUES (64, 90, 26, NULL);
INSERT INTO public.games VALUES (65, 914, 26, NULL);
INSERT INTO public.games VALUES (66, 575, 28, NULL);
INSERT INTO public.games VALUES (67, 410, 28, NULL);
INSERT INTO public.games VALUES (68, 96, 29, NULL);
INSERT INTO public.games VALUES (69, 121, 29, NULL);
INSERT INTO public.games VALUES (70, 996, 28, NULL);
INSERT INTO public.games VALUES (71, 337, 28, NULL);
INSERT INTO public.games VALUES (72, 3, 28, NULL);
INSERT INTO public.games VALUES (73, 830, 30, NULL);
INSERT INTO public.games VALUES (74, 268, 30, NULL);
INSERT INTO public.games VALUES (75, 681, 31, NULL);
INSERT INTO public.games VALUES (76, 741, 31, NULL);
INSERT INTO public.games VALUES (77, 37, 30, NULL);
INSERT INTO public.games VALUES (78, 330, 30, NULL);
INSERT INTO public.games VALUES (79, 323, 30, NULL);
INSERT INTO public.games VALUES (80, 736, 32, NULL);
INSERT INTO public.games VALUES (81, 682, 32, NULL);
INSERT INTO public.games VALUES (82, 258, 33, NULL);
INSERT INTO public.games VALUES (83, 581, 33, NULL);
INSERT INTO public.games VALUES (84, 228, 32, NULL);
INSERT INTO public.games VALUES (85, 432, 32, NULL);
INSERT INTO public.games VALUES (86, 224, 32, NULL);
INSERT INTO public.games VALUES (87, 715, 34, NULL);
INSERT INTO public.games VALUES (88, 198, 34, NULL);
INSERT INTO public.games VALUES (89, 933, 35, NULL);
INSERT INTO public.games VALUES (90, 768, 35, NULL);
INSERT INTO public.games VALUES (91, 302, 34, NULL);
INSERT INTO public.games VALUES (92, 355, 34, NULL);
INSERT INTO public.games VALUES (93, 80, 34, NULL);
INSERT INTO public.games VALUES (94, 170, 36, NULL);
INSERT INTO public.games VALUES (95, 353, 36, NULL);
INSERT INTO public.games VALUES (96, 735, 37, NULL);
INSERT INTO public.games VALUES (97, 226, 37, NULL);
INSERT INTO public.games VALUES (98, 75, 36, NULL);
INSERT INTO public.games VALUES (99, 323, 36, NULL);
INSERT INTO public.games VALUES (100, 321, 36, NULL);
INSERT INTO public.games VALUES (101, 291, 38, NULL);
INSERT INTO public.games VALUES (102, 434, 38, NULL);
INSERT INTO public.games VALUES (103, 458, 39, NULL);
INSERT INTO public.games VALUES (104, 755, 39, NULL);
INSERT INTO public.games VALUES (105, 121, 38, NULL);
INSERT INTO public.games VALUES (106, 964, 38, NULL);
INSERT INTO public.games VALUES (107, 993, 38, NULL);
INSERT INTO public.games VALUES (108, 793, 40, NULL);
INSERT INTO public.games VALUES (109, 857, 40, NULL);
INSERT INTO public.games VALUES (110, 184, 41, NULL);
INSERT INTO public.games VALUES (111, 14, 41, NULL);
INSERT INTO public.games VALUES (112, 389, 40, NULL);
INSERT INTO public.games VALUES (113, 663, 40, NULL);
INSERT INTO public.games VALUES (114, 760, 40, NULL);
INSERT INTO public.games VALUES (115, 764, 42, NULL);
INSERT INTO public.games VALUES (116, 898, 42, NULL);
INSERT INTO public.games VALUES (117, 352, 43, NULL);
INSERT INTO public.games VALUES (118, 613, 43, NULL);
INSERT INTO public.games VALUES (119, 722, 42, NULL);
INSERT INTO public.games VALUES (120, 729, 42, NULL);
INSERT INTO public.games VALUES (121, 640, 42, NULL);
INSERT INTO public.games VALUES (122, 793, 44, NULL);
INSERT INTO public.games VALUES (123, 207, 44, NULL);
INSERT INTO public.games VALUES (124, 514, 45, NULL);
INSERT INTO public.games VALUES (125, 647, 45, NULL);
INSERT INTO public.games VALUES (126, 990, 44, NULL);
INSERT INTO public.games VALUES (127, 424, 44, NULL);
INSERT INTO public.games VALUES (128, 436, 44, NULL);
INSERT INTO public.games VALUES (129, 2, 46, NULL);
INSERT INTO public.games VALUES (130, 824, 47, NULL);
INSERT INTO public.games VALUES (131, 47, 47, NULL);
INSERT INTO public.games VALUES (132, 57, 48, NULL);
INSERT INTO public.games VALUES (133, 682, 48, NULL);
INSERT INTO public.games VALUES (134, 783, 47, NULL);
INSERT INTO public.games VALUES (135, 736, 47, NULL);
INSERT INTO public.games VALUES (136, 594, 47, NULL);
INSERT INTO public.games VALUES (137, 663, 49, NULL);
INSERT INTO public.games VALUES (138, 235, 49, NULL);
INSERT INTO public.games VALUES (139, 461, 50, NULL);
INSERT INTO public.games VALUES (140, 835, 50, NULL);
INSERT INTO public.games VALUES (141, 890, 49, NULL);
INSERT INTO public.games VALUES (142, 654, 49, NULL);
INSERT INTO public.games VALUES (143, 818, 49, NULL);
INSERT INTO public.games VALUES (144, 16, 51, NULL);
INSERT INTO public.games VALUES (145, 267, 51, NULL);
INSERT INTO public.games VALUES (146, 56, 52, NULL);
INSERT INTO public.games VALUES (147, 550, 52, NULL);
INSERT INTO public.games VALUES (148, 440, 51, NULL);
INSERT INTO public.games VALUES (149, 521, 51, NULL);
INSERT INTO public.games VALUES (150, 889, 51, NULL);
INSERT INTO public.games VALUES (151, 613, 53, NULL);
INSERT INTO public.games VALUES (152, 217, 53, NULL);
INSERT INTO public.games VALUES (153, 807, 54, NULL);
INSERT INTO public.games VALUES (154, 174, 54, NULL);
INSERT INTO public.games VALUES (155, 831, 53, NULL);
INSERT INTO public.games VALUES (156, 790, 53, NULL);
INSERT INTO public.games VALUES (157, 929, 53, NULL);
INSERT INTO public.games VALUES (158, 86, 55, NULL);
INSERT INTO public.games VALUES (159, 5, 55, NULL);
INSERT INTO public.games VALUES (160, 191, 56, NULL);
INSERT INTO public.games VALUES (161, 14, 56, NULL);
INSERT INTO public.games VALUES (162, 992, 55, NULL);
INSERT INTO public.games VALUES (163, 575, 55, NULL);
INSERT INTO public.games VALUES (164, 136, 55, NULL);
INSERT INTO public.games VALUES (165, 192, 57, NULL);
INSERT INTO public.games VALUES (166, 736, 57, NULL);
INSERT INTO public.games VALUES (167, 762, 58, NULL);
INSERT INTO public.games VALUES (168, 769, 58, NULL);
INSERT INTO public.games VALUES (169, 726, 57, NULL);
INSERT INTO public.games VALUES (170, 711, 57, NULL);
INSERT INTO public.games VALUES (171, 34, 57, NULL);
INSERT INTO public.games VALUES (172, 569, 59, NULL);
INSERT INTO public.games VALUES (173, 961, 59, NULL);
INSERT INTO public.games VALUES (174, 163, 60, NULL);
INSERT INTO public.games VALUES (175, 247, 60, NULL);
INSERT INTO public.games VALUES (176, 462, 59, NULL);
INSERT INTO public.games VALUES (177, 790, 59, NULL);
INSERT INTO public.games VALUES (178, 822, 59, NULL);
INSERT INTO public.games VALUES (179, 514, 61, NULL);
INSERT INTO public.games VALUES (180, 694, 61, NULL);
INSERT INTO public.games VALUES (181, 730, 62, NULL);
INSERT INTO public.games VALUES (182, 503, 62, NULL);
INSERT INTO public.games VALUES (183, 769, 61, NULL);
INSERT INTO public.games VALUES (184, 205, 61, NULL);
INSERT INTO public.games VALUES (185, 955, 61, NULL);
INSERT INTO public.games VALUES (186, 91, 63, NULL);
INSERT INTO public.games VALUES (187, 452, 63, NULL);
INSERT INTO public.games VALUES (188, 136, 64, NULL);
INSERT INTO public.games VALUES (189, 980, 64, NULL);
INSERT INTO public.games VALUES (190, 558, 63, NULL);
INSERT INTO public.games VALUES (191, 940, 63, NULL);
INSERT INTO public.games VALUES (192, 469, 63, NULL);
INSERT INTO public.games VALUES (193, 915, 65, NULL);
INSERT INTO public.games VALUES (194, 8, 65, NULL);
INSERT INTO public.games VALUES (195, 705, 66, NULL);
INSERT INTO public.games VALUES (196, 35, 66, NULL);
INSERT INTO public.games VALUES (197, 945, 65, NULL);
INSERT INTO public.games VALUES (198, 723, 65, NULL);
INSERT INTO public.games VALUES (199, 567, 65, NULL);
INSERT INTO public.games VALUES (200, 757, 67, NULL);
INSERT INTO public.games VALUES (201, 944, 67, NULL);
INSERT INTO public.games VALUES (202, 973, 68, NULL);
INSERT INTO public.games VALUES (203, 468, 68, NULL);
INSERT INTO public.games VALUES (204, 982, 67, NULL);
INSERT INTO public.games VALUES (205, 123, 67, NULL);
INSERT INTO public.games VALUES (206, 772, 67, NULL);
INSERT INTO public.games VALUES (207, 562, 69, NULL);
INSERT INTO public.games VALUES (208, 813, 69, NULL);
INSERT INTO public.games VALUES (209, 957, 70, NULL);
INSERT INTO public.games VALUES (210, 837, 70, NULL);
INSERT INTO public.games VALUES (211, 268, 69, NULL);
INSERT INTO public.games VALUES (212, 792, 69, NULL);
INSERT INTO public.games VALUES (213, 860, 69, NULL);
INSERT INTO public.games VALUES (214, 674, 71, NULL);
INSERT INTO public.games VALUES (215, 86, 71, NULL);
INSERT INTO public.games VALUES (216, 478, 72, NULL);
INSERT INTO public.games VALUES (217, 831, 72, NULL);
INSERT INTO public.games VALUES (218, 269, 71, NULL);
INSERT INTO public.games VALUES (219, 139, 71, NULL);
INSERT INTO public.games VALUES (220, 22, 71, NULL);
INSERT INTO public.games VALUES (221, 585, 73, NULL);
INSERT INTO public.games VALUES (222, 161, 73, NULL);
INSERT INTO public.games VALUES (223, 882, 74, NULL);
INSERT INTO public.games VALUES (224, 666, 74, NULL);
INSERT INTO public.games VALUES (225, 690, 73, NULL);
INSERT INTO public.games VALUES (226, 776, 73, NULL);
INSERT INTO public.games VALUES (227, 134, 73, NULL);
INSERT INTO public.games VALUES (228, 468, 75, NULL);
INSERT INTO public.games VALUES (229, 609, 75, NULL);
INSERT INTO public.games VALUES (230, 543, 76, NULL);
INSERT INTO public.games VALUES (231, 661, 76, NULL);
INSERT INTO public.games VALUES (232, 797, 75, NULL);
INSERT INTO public.games VALUES (233, 518, 75, NULL);
INSERT INTO public.games VALUES (234, 223, 75, NULL);
INSERT INTO public.games VALUES (235, 848, 77, NULL);
INSERT INTO public.games VALUES (236, 753, 77, NULL);
INSERT INTO public.games VALUES (237, 412, 78, NULL);
INSERT INTO public.games VALUES (238, 849, 78, NULL);
INSERT INTO public.games VALUES (239, 266, 77, NULL);
INSERT INTO public.games VALUES (240, 146, 77, NULL);
INSERT INTO public.games VALUES (241, 7, 77, NULL);
INSERT INTO public.games VALUES (242, 374, 79, NULL);
INSERT INTO public.games VALUES (243, 860, 79, NULL);
INSERT INTO public.games VALUES (244, 903, 80, NULL);
INSERT INTO public.games VALUES (245, 103, 80, NULL);
INSERT INTO public.games VALUES (246, 879, 79, NULL);
INSERT INTO public.games VALUES (247, 189, 79, NULL);
INSERT INTO public.games VALUES (248, 488, 79, NULL);
INSERT INTO public.games VALUES (249, 667, 81, NULL);
INSERT INTO public.games VALUES (250, 776, 81, NULL);
INSERT INTO public.games VALUES (251, 338, 82, NULL);
INSERT INTO public.games VALUES (252, 76, 82, NULL);
INSERT INTO public.games VALUES (253, 926, 81, NULL);
INSERT INTO public.games VALUES (254, 336, 81, NULL);
INSERT INTO public.games VALUES (255, 238, 81, NULL);
INSERT INTO public.games VALUES (256, 14, 1, NULL);
INSERT INTO public.games VALUES (257, 593, 83, NULL);
INSERT INTO public.games VALUES (258, 679, 83, NULL);
INSERT INTO public.games VALUES (259, 477, 84, NULL);
INSERT INTO public.games VALUES (260, 272, 84, NULL);
INSERT INTO public.games VALUES (261, 817, 83, NULL);
INSERT INTO public.games VALUES (262, 228, 83, NULL);
INSERT INTO public.games VALUES (263, 949, 83, NULL);
INSERT INTO public.games VALUES (264, 962, 85, NULL);
INSERT INTO public.games VALUES (265, 140, 85, NULL);
INSERT INTO public.games VALUES (266, 465, 86, NULL);
INSERT INTO public.games VALUES (267, 806, 86, NULL);
INSERT INTO public.games VALUES (268, 276, 85, NULL);
INSERT INTO public.games VALUES (269, 621, 85, NULL);
INSERT INTO public.games VALUES (270, 175, 85, NULL);
INSERT INTO public.games VALUES (271, 263, 87, NULL);
INSERT INTO public.games VALUES (272, 566, 87, NULL);
INSERT INTO public.games VALUES (273, 824, 88, NULL);
INSERT INTO public.games VALUES (274, 584, 88, NULL);
INSERT INTO public.games VALUES (275, 93, 87, NULL);
INSERT INTO public.games VALUES (276, 37, 87, NULL);
INSERT INTO public.games VALUES (277, 27, 87, NULL);
INSERT INTO public.games VALUES (278, 170, 89, NULL);
INSERT INTO public.games VALUES (279, 833, 89, NULL);
INSERT INTO public.games VALUES (280, 782, 90, NULL);
INSERT INTO public.games VALUES (281, 228, 90, NULL);
INSERT INTO public.games VALUES (282, 193, 89, NULL);
INSERT INTO public.games VALUES (283, 355, 89, NULL);
INSERT INTO public.games VALUES (284, 59, 89, NULL);
INSERT INTO public.games VALUES (285, 877, 91, NULL);
INSERT INTO public.games VALUES (286, 982, 91, NULL);
INSERT INTO public.games VALUES (287, 310, 92, NULL);
INSERT INTO public.games VALUES (288, 44, 92, NULL);
INSERT INTO public.games VALUES (289, 93, 91, NULL);
INSERT INTO public.games VALUES (290, 849, 91, NULL);
INSERT INTO public.games VALUES (291, 468, 91, NULL);
INSERT INTO public.games VALUES (292, 994, 93, NULL);
INSERT INTO public.games VALUES (293, 369, 93, NULL);
INSERT INTO public.games VALUES (294, 645, 94, NULL);
INSERT INTO public.games VALUES (295, 265, 94, NULL);
INSERT INTO public.games VALUES (296, 24, 93, NULL);
INSERT INTO public.games VALUES (297, 625, 93, NULL);
INSERT INTO public.games VALUES (298, 909, 93, NULL);
INSERT INTO public.games VALUES (299, 9, 1, 815);
INSERT INTO public.games VALUES (300, 509, 95, 508);
INSERT INTO public.games VALUES (301, 340, 95, 339);
INSERT INTO public.games VALUES (302, 295, 96, 294);
INSERT INTO public.games VALUES (303, 29, 96, 28);
INSERT INTO public.games VALUES (304, 142, 95, 139);
INSERT INTO public.games VALUES (305, 719, 95, 717);
INSERT INTO public.games VALUES (306, 717, 95, 716);
INSERT INTO public.games VALUES (307, 939, 97, 938);
INSERT INTO public.games VALUES (308, 476, 97, 475);
INSERT INTO public.games VALUES (309, 557, 98, 556);
INSERT INTO public.games VALUES (310, 902, 98, 901);
INSERT INTO public.games VALUES (311, 457, 97, 454);
INSERT INTO public.games VALUES (312, 616, 97, 614);
INSERT INTO public.games VALUES (313, 666, 97, 665);
INSERT INTO public.games VALUES (314, 22, 1, NULL);
INSERT INTO public.games VALUES (315, 283, 99, NULL);
INSERT INTO public.games VALUES (316, 21, 99, NULL);
INSERT INTO public.games VALUES (317, 277, 100, NULL);
INSERT INTO public.games VALUES (318, 345, 100, NULL);
INSERT INTO public.games VALUES (319, 369, 99, NULL);
INSERT INTO public.games VALUES (320, 972, 99, NULL);
INSERT INTO public.games VALUES (321, 228, 99, NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'safet');
INSERT INTO public.users VALUES (2, 'user_1708018267569');
INSERT INTO public.users VALUES (3, 'user_1708018267568');
INSERT INTO public.users VALUES (4, 'user_1708018475238');
INSERT INTO public.users VALUES (5, 'user_1708018475237');
INSERT INTO public.users VALUES (6, 'user_1708019346967');
INSERT INTO public.users VALUES (7, 'user_1708019346966');
INSERT INTO public.users VALUES (8, 'user_1708019493594');
INSERT INTO public.users VALUES (9, 'user_1708019493593');
INSERT INTO public.users VALUES (10, 'user_1708020023159');
INSERT INTO public.users VALUES (11, 'user_1708020023158');
INSERT INTO public.users VALUES (12, 'user_1708020061050');
INSERT INTO public.users VALUES (13, 'user_1708020061049');
INSERT INTO public.users VALUES (14, 'user_1708020191670');
INSERT INTO public.users VALUES (15, 'user_1708020191669');
INSERT INTO public.users VALUES (16, 'user_1708020205723');
INSERT INTO public.users VALUES (17, 'user_1708020205722');
INSERT INTO public.users VALUES (18, 'user_1708020221986');
INSERT INTO public.users VALUES (19, 'user_1708020221985');
INSERT INTO public.users VALUES (20, 'user_1708020247832');
INSERT INTO public.users VALUES (21, 'user_1708020247831');
INSERT INTO public.users VALUES (22, 'user_1708020269910');
INSERT INTO public.users VALUES (23, 'user_1708020269909');
INSERT INTO public.users VALUES (24, 'user_1708020279154');
INSERT INTO public.users VALUES (25, 'user_1708020279153');
INSERT INTO public.users VALUES (26, 'user_1708020312074');
INSERT INTO public.users VALUES (27, 'user_1708020312073');
INSERT INTO public.users VALUES (28, 'user_1708020341807');
INSERT INTO public.users VALUES (29, 'user_1708020341806');
INSERT INTO public.users VALUES (30, 'user_1708020351612');
INSERT INTO public.users VALUES (31, 'user_1708020351611');
INSERT INTO public.users VALUES (32, 'user_1708020374328');
INSERT INTO public.users VALUES (33, 'user_1708020374327');
INSERT INTO public.users VALUES (34, 'user_1708020517217');
INSERT INTO public.users VALUES (35, 'user_1708020517216');
INSERT INTO public.users VALUES (36, 'user_1708020528176');
INSERT INTO public.users VALUES (37, 'user_1708020528175');
INSERT INTO public.users VALUES (38, 'user_1708020533419');
INSERT INTO public.users VALUES (39, 'user_1708020533418');
INSERT INTO public.users VALUES (40, 'user_1708020555469');
INSERT INTO public.users VALUES (41, 'user_1708020555468');
INSERT INTO public.users VALUES (42, 'user_1708020560060');
INSERT INTO public.users VALUES (43, 'user_1708020560059');
INSERT INTO public.users VALUES (44, 'user_1708020594807');
INSERT INTO public.users VALUES (45, 'user_1708020594806');
INSERT INTO public.users VALUES (46, 'neri');
INSERT INTO public.users VALUES (47, 'user_1708020664278');
INSERT INTO public.users VALUES (48, 'user_1708020664277');
INSERT INTO public.users VALUES (49, 'user_1708020716263');
INSERT INTO public.users VALUES (50, 'user_1708020716262');
INSERT INTO public.users VALUES (51, 'user_1708020836040');
INSERT INTO public.users VALUES (52, 'user_1708020836039');
INSERT INTO public.users VALUES (53, 'user_1708020863687');
INSERT INTO public.users VALUES (54, 'user_1708020863686');
INSERT INTO public.users VALUES (55, 'user_1708020896075');
INSERT INTO public.users VALUES (56, 'user_1708020896074');
INSERT INTO public.users VALUES (57, 'user_1708020920551');
INSERT INTO public.users VALUES (58, 'user_1708020920549');
INSERT INTO public.users VALUES (59, 'user_1708020956736');
INSERT INTO public.users VALUES (60, 'user_1708020956735');
INSERT INTO public.users VALUES (61, 'user_1708020997811');
INSERT INTO public.users VALUES (62, 'user_1708020997810');
INSERT INTO public.users VALUES (63, 'user_1708021050573');
INSERT INTO public.users VALUES (64, 'user_1708021050572');
INSERT INTO public.users VALUES (65, 'user_1708021155036');
INSERT INTO public.users VALUES (66, 'user_1708021155035');
INSERT INTO public.users VALUES (67, 'user_1708021187073');
INSERT INTO public.users VALUES (68, 'user_1708021187072');
INSERT INTO public.users VALUES (69, 'user_1708021223777');
INSERT INTO public.users VALUES (70, 'user_1708021223776');
INSERT INTO public.users VALUES (71, 'user_1708021241409');
INSERT INTO public.users VALUES (72, 'user_1708021241408');
INSERT INTO public.users VALUES (73, 'user_1708021309820');
INSERT INTO public.users VALUES (74, 'user_1708021309819');
INSERT INTO public.users VALUES (75, 'user_1708021332368');
INSERT INTO public.users VALUES (76, 'user_1708021332367');
INSERT INTO public.users VALUES (77, 'user_1708021545644');
INSERT INTO public.users VALUES (78, 'user_1708021545643');
INSERT INTO public.users VALUES (79, 'user_1708021583682');
INSERT INTO public.users VALUES (80, 'user_1708021583681');
INSERT INTO public.users VALUES (81, 'user_1708021609355');
INSERT INTO public.users VALUES (82, 'user_1708021609354');
INSERT INTO public.users VALUES (83, 'user_1708021735990');
INSERT INTO public.users VALUES (84, 'user_1708021735989');
INSERT INTO public.users VALUES (85, 'user_1708021782001');
INSERT INTO public.users VALUES (86, 'user_1708021782000');
INSERT INTO public.users VALUES (87, 'user_1708021826079');
INSERT INTO public.users VALUES (88, 'user_1708021826078');
INSERT INTO public.users VALUES (89, 'user_1708021945467');
INSERT INTO public.users VALUES (90, 'user_1708021945466');
INSERT INTO public.users VALUES (91, 'user_1708021999478');
INSERT INTO public.users VALUES (92, 'user_1708021999477');
INSERT INTO public.users VALUES (93, 'user_1708022030670');
INSERT INTO public.users VALUES (94, 'user_1708022030669');
INSERT INTO public.users VALUES (95, 'user_1708032324032');
INSERT INTO public.users VALUES (96, 'user_1708032324031');
INSERT INTO public.users VALUES (97, 'user_1708032490775');
INSERT INTO public.users VALUES (98, 'user_1708032490774');
INSERT INTO public.users VALUES (99, 'user_1708032571441');
INSERT INTO public.users VALUES (100, 'user_1708032571440');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 321, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 100, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

