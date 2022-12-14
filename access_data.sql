--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.5 (Debian 14.5-1.pgdg110+1)

-- Started on 2022-10-15 12:39:56 EDT

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
-- TOC entry 3370 (class 0 OID 98305)
-- Dependencies: 209
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."User" (id, email, role, "createdAt", "updatedAt") VALUES ('cl9a2eeck00008bthyxhscmla', 'ola.scarab@gmail.com', 'admin', '2022-10-15 15:19:39.812', '2022-10-15 15:19:39.816');
INSERT INTO public."User" (id, email, role, "createdAt", "updatedAt") VALUES ('cl9a2eed300078bth0xaq9vh6', 'mw10013@gmail.com', 'admin', '2022-10-15 15:19:39.831', '2022-10-15 15:19:39.832');
INSERT INTO public."User" (id, email, role, "createdAt", "updatedAt") VALUES ('cl9a2eedf00148bth2tt1uutk', 'scarab2022@gmail.com', 'customer', '2022-10-15 15:19:39.843', '2022-10-15 15:19:39.843');
INSERT INTO public."User" (id, email, role, "createdAt", "updatedAt") VALUES ('cl9a2efki00388bth4xdjzcza', 'scarab3033@gmail.com', 'customer', '2022-10-15 15:19:41.394', '2022-10-15 15:19:41.394');


--
-- TOC entry 3375 (class 0 OID 98337)
-- Dependencies: 214
-- Data for Name: AccessHub; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."AccessHub" (id, name, description, "heartbeatAt", "userId") VALUES ('cl2uwi6uv0030ybthbkls5w0i', 'The scarab2022@gmail.com BnB', '', NULL, 'cl9a2eedf00148bth2tt1uutk');
INSERT INTO public."AccessHub" (id, name, description, "heartbeatAt", "userId") VALUES ('cl9a2ef0900298bth3t49wmap', 'The scarab2022@gmail.com Nook', '', NULL, 'cl9a2eedf00148bth2tt1uutk');
INSERT INTO public."AccessHub" (id, name, description, "heartbeatAt", "userId") VALUES ('cl9a2eflj00458bthwn24558h', 'The scarab3033@gmail.com BnB', '', NULL, 'cl9a2efki00388bth4xdjzcza');
INSERT INTO public."AccessHub" (id, name, description, "heartbeatAt", "userId") VALUES ('cl9a2eg4z00558bthlhnb5vwh', 'The scarab3033@gmail.com Nook', '', NULL, 'cl9a2efki00388bth4xdjzcza');


--
-- TOC entry 3378 (class 0 OID 98353)
-- Dependencies: 217
-- Data for Name: AccessPoint; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (1, 'Front Door', '', 'cl2uwi6uv0030ybthbkls5w0i', 1);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (2, 'First Floor', '', 'cl2uwi6uv0030ybthbkls5w0i', 2);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (3, 'Second Floor', '', 'cl2uwi6uv0030ybthbkls5w0i', 3);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (4, 'Basement Door', '', 'cl2uwi6uv0030ybthbkls5w0i', 4);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (5, 'Front Door', '', 'cl9a2ef0900298bth3t49wmap', 1);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (6, 'First Floor', '', 'cl9a2ef0900298bth3t49wmap', 2);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (7, 'Second Floor', '', 'cl9a2ef0900298bth3t49wmap', 3);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (8, 'Basement Door', '', 'cl9a2ef0900298bth3t49wmap', 4);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (9, 'Front Door', '', 'cl9a2eflj00458bthwn24558h', 1);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (10, 'First Floor', '', 'cl9a2eflj00458bthwn24558h', 2);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (11, 'Second Floor', '', 'cl9a2eflj00458bthwn24558h', 3);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (12, 'Basement Door', '', 'cl9a2eflj00458bthwn24558h', 4);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (13, 'Front Door', '', 'cl9a2eg4z00558bthlhnb5vwh', 1);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (14, 'First Floor', '', 'cl9a2eg4z00558bthlhnb5vwh', 2);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (15, 'Second Floor', '', 'cl9a2eg4z00558bthlhnb5vwh', 3);
INSERT INTO public."AccessPoint" (id, name, description, "accessHubId", "position") VALUES (16, 'Basement Door', '', 'cl9a2eg4z00558bthlhnb5vwh', 4);


--
-- TOC entry 3374 (class 0 OID 98327)
-- Dependencies: 213
-- Data for Name: AccessUser; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."AccessUser" (id, name, description, code, "activateCodeAt", "expireCodeAt", "userId", "deletedAt") VALUES (1, 'Master', 'Access to everything', '999', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" (id, name, description, code, "activateCodeAt", "expireCodeAt", "userId", "deletedAt") VALUES (2, 'Guest1', 'Guest1 for Brooklyn BnB', '111', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" (id, name, description, code, "activateCodeAt", "expireCodeAt", "userId", "deletedAt") VALUES (3, 'Guest2', 'Guest2 for Brooklyn BnB', '222', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" (id, name, description, code, "activateCodeAt", "expireCodeAt", "userId", "deletedAt") VALUES (4, 'Guest3', 'Guest1 for Staten Island BnB', '333', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" (id, name, description, code, "activateCodeAt", "expireCodeAt", "userId", "deletedAt") VALUES (5, 'Guest4', 'Guest2 for Brooklyn BnB', '444', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" (id, name, description, code, "activateCodeAt", "expireCodeAt", "userId", "deletedAt") VALUES (6, 'Master', 'Access to everything', '999', NULL, NULL, 'cl9a2efki00388bth4xdjzcza', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" (id, name, description, code, "activateCodeAt", "expireCodeAt", "userId", "deletedAt") VALUES (7, 'Guest1', 'Guest1 for Brooklyn BnB', '111', NULL, NULL, 'cl9a2efki00388bth4xdjzcza', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" (id, name, description, code, "activateCodeAt", "expireCodeAt", "userId", "deletedAt") VALUES (8, 'Guest2', 'Guest2 for Brooklyn BnB', '222', NULL, NULL, 'cl9a2efki00388bth4xdjzcza', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" (id, name, description, code, "activateCodeAt", "expireCodeAt", "userId", "deletedAt") VALUES (9, 'Guest3', 'Guest1 for Staten Island BnB', '333', NULL, NULL, 'cl9a2efki00388bth4xdjzcza', '1970-01-01 00:00:00');
INSERT INTO public."AccessUser" (id, name, description, code, "activateCodeAt", "expireCodeAt", "userId", "deletedAt") VALUES (10, 'Guest4', 'Guest2 for Brooklyn BnB', '444', NULL, NULL, 'cl9a2efki00388bth4xdjzcza', '1970-01-01 00:00:00');


--
-- TOC entry 3380 (class 0 OID 98363)
-- Dependencies: 219
-- Data for Name: AccessEvent; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (1, '2022-10-15 15:19:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (2, '2022-10-15 13:49:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (3, '2022-10-15 12:19:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (4, '2022-10-15 10:49:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (5, '2022-10-15 09:19:39.943', 'deny', '333', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (6, '2022-10-15 07:49:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (7, '2022-10-15 06:19:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (8, '2022-10-15 04:49:39.943', 'grant', '111', 2, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (9, '2022-10-15 03:19:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (10, '2022-10-15 01:49:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (11, '2022-10-15 00:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (12, '2022-10-14 22:49:39.943', 'deny', '333', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (13, '2022-10-14 21:19:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (14, '2022-10-14 19:49:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (15, '2022-10-14 18:19:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (16, '2022-10-14 16:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (17, '2022-10-14 15:19:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (18, '2022-10-14 13:49:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (19, '2022-10-14 12:19:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (20, '2022-10-14 10:49:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (21, '2022-10-14 09:19:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (22, '2022-10-14 07:49:39.943', 'grant', '222', 3, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (23, '2022-10-14 06:19:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (24, '2022-10-14 04:49:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (25, '2022-10-14 03:19:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (26, '2022-10-14 01:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (27, '2022-10-14 00:19:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (28, '2022-10-13 22:49:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (29, '2022-10-13 21:19:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (30, '2022-10-13 19:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (31, '2022-10-13 18:19:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (32, '2022-10-13 16:49:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (33, '2022-10-13 15:19:39.943', 'deny', '333', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (34, '2022-10-13 13:49:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (35, '2022-10-13 12:19:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (36, '2022-10-13 10:49:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (37, '2022-10-13 09:19:39.943', 'grant', '222', 3, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (38, '2022-10-13 07:49:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (39, '2022-10-13 06:19:39.943', 'grant', '222', 3, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (40, '2022-10-13 04:49:39.943', 'deny', '333', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (41, '2022-10-13 03:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (42, '2022-10-13 01:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (43, '2022-10-13 00:19:39.943', 'grant', '222', 3, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (44, '2022-10-12 22:49:39.943', 'deny', '333', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (45, '2022-10-12 21:19:39.943', 'deny', '333', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (46, '2022-10-12 19:49:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (47, '2022-10-12 18:19:39.943', 'grant', '111', 2, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (48, '2022-10-12 16:49:39.943', 'grant', '111', 2, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (49, '2022-10-12 15:19:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (50, '2022-10-12 13:49:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (51, '2022-10-12 12:19:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (52, '2022-10-12 10:49:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (53, '2022-10-12 09:19:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (54, '2022-10-12 07:49:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (55, '2022-10-12 06:19:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (56, '2022-10-12 04:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (57, '2022-10-12 03:19:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (58, '2022-10-12 01:49:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (59, '2022-10-12 00:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (60, '2022-10-11 22:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (61, '2022-10-11 21:19:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (62, '2022-10-11 19:49:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (63, '2022-10-11 18:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (64, '2022-10-11 16:49:39.943', 'grant', '222', 3, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (65, '2022-10-11 15:19:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (66, '2022-10-11 13:49:39.943', 'deny', '333', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (67, '2022-10-11 12:19:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (68, '2022-10-11 10:49:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (69, '2022-10-11 09:19:39.943', 'deny', '333', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (70, '2022-10-11 07:49:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (71, '2022-10-11 06:19:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (72, '2022-10-11 04:49:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (73, '2022-10-11 03:19:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (74, '2022-10-11 01:49:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (75, '2022-10-11 00:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (76, '2022-10-10 22:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (77, '2022-10-10 21:19:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (78, '2022-10-10 19:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (79, '2022-10-10 18:19:39.943', 'grant', '999', 1, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (80, '2022-10-10 16:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (81, '2022-10-10 15:19:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (82, '2022-10-10 13:49:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (83, '2022-10-10 12:19:39.943', 'grant', '999', 1, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (84, '2022-10-10 10:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (85, '2022-10-10 09:19:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (86, '2022-10-10 07:49:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (87, '2022-10-10 06:19:39.943', 'deny', '111', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (88, '2022-10-10 04:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (89, '2022-10-10 03:19:39.943', 'deny', '111', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (90, '2022-10-10 01:49:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (91, '2022-10-10 00:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (92, '2022-10-09 22:49:39.943', 'grant', '111', 2, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (93, '2022-10-09 21:19:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (94, '2022-10-09 19:49:39.943', 'grant', '111', 2, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (95, '2022-10-09 18:19:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (96, '2022-10-09 16:49:39.943', 'grant', '999', 1, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (97, '2022-10-09 15:19:39.943', 'deny', '444', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (98, '2022-10-09 13:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (99, '2022-10-09 12:19:39.943', 'deny', '333', NULL, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (100, '2022-10-09 10:49:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (101, '2022-10-09 09:19:39.943', 'grant', '999', 1, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (102, '2022-10-09 07:49:39.943', 'deny', '444', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (103, '2022-10-09 06:19:39.943', 'grant', '999', 1, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (104, '2022-10-09 04:49:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (105, '2022-10-09 03:19:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (106, '2022-10-09 01:49:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (107, '2022-10-09 00:19:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (108, '2022-10-08 22:49:39.943', 'grant', '111', 2, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (109, '2022-10-08 21:19:39.943', 'deny', '222', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (110, '2022-10-08 19:49:39.943', 'deny', '222', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (111, '2022-10-08 18:19:39.943', 'grant', '111', 2, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (112, '2022-10-08 16:49:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (113, '2022-10-08 15:19:39.943', 'grant', '999', 1, 1);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (114, '2022-10-08 13:49:39.943', 'deny', '333', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (115, '2022-10-08 12:19:39.943', 'deny', '444', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (116, '2022-10-08 10:49:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (117, '2022-10-08 09:19:39.943', 'deny', '333', NULL, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (118, '2022-10-08 07:49:39.943', 'deny', '222', NULL, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (119, '2022-10-08 06:19:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (120, '2022-10-08 04:49:39.943', 'grant', '111', 2, 3);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (121, '2022-10-08 03:19:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (122, '2022-10-08 01:49:39.943', 'deny', '444', NULL, 4);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (123, '2022-10-08 00:19:39.943', 'grant', '111', 2, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (124, '2022-10-07 22:49:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (125, '2022-10-07 21:19:39.943', 'grant', '999', 1, 2);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (126, '2022-10-15 15:19:40.683', 'deny', '111', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (127, '2022-10-15 13:49:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (128, '2022-10-15 12:19:40.683', 'deny', '222', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (129, '2022-10-15 10:49:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (130, '2022-10-15 09:19:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (131, '2022-10-15 07:49:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (132, '2022-10-15 06:19:40.683', 'deny', '222', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (133, '2022-10-15 04:49:40.683', 'deny', '222', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (134, '2022-10-15 03:19:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (135, '2022-10-15 01:49:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (136, '2022-10-15 00:19:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (137, '2022-10-14 22:49:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (138, '2022-10-14 21:19:40.683', 'deny', '222', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (139, '2022-10-14 19:49:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (140, '2022-10-14 18:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (141, '2022-10-14 16:49:40.683', 'deny', '444', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (142, '2022-10-14 15:19:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (143, '2022-10-14 13:49:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (144, '2022-10-14 12:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (145, '2022-10-14 10:49:40.683', 'deny', '111', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (146, '2022-10-14 09:19:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (147, '2022-10-14 07:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (148, '2022-10-14 06:19:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (149, '2022-10-14 04:49:40.683', 'deny', '222', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (150, '2022-10-14 03:19:40.683', 'deny', '111', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (151, '2022-10-14 01:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (152, '2022-10-14 00:19:40.683', 'deny', '333', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (153, '2022-10-13 22:49:40.683', 'deny', '222', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (154, '2022-10-13 21:19:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (155, '2022-10-13 19:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (156, '2022-10-13 18:19:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (157, '2022-10-13 16:49:40.683', 'grant', '444', 5, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (158, '2022-10-13 15:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (159, '2022-10-13 13:49:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (160, '2022-10-13 12:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (161, '2022-10-13 10:49:40.683', 'deny', '222', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (162, '2022-10-13 09:19:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (163, '2022-10-13 07:49:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (164, '2022-10-13 06:19:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (165, '2022-10-13 04:49:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (166, '2022-10-13 03:19:40.683', 'deny', '444', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (167, '2022-10-13 01:49:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (168, '2022-10-13 00:19:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (169, '2022-10-12 22:49:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (170, '2022-10-12 21:19:40.683', 'grant', '333', 4, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (171, '2022-10-12 19:49:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (172, '2022-10-12 18:19:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (173, '2022-10-12 16:49:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (174, '2022-10-12 15:19:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (175, '2022-10-12 13:49:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (176, '2022-10-12 12:19:40.683', 'deny', '111', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (177, '2022-10-12 10:49:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (178, '2022-10-12 09:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (179, '2022-10-12 07:49:40.683', 'deny', '111', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (180, '2022-10-12 06:19:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (181, '2022-10-12 04:49:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (182, '2022-10-12 03:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (183, '2022-10-12 01:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (184, '2022-10-12 00:19:40.683', 'deny', '222', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (185, '2022-10-11 22:49:40.683', 'deny', '222', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (186, '2022-10-11 21:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (187, '2022-10-11 19:49:40.683', 'deny', '222', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (188, '2022-10-11 18:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (189, '2022-10-11 16:49:40.683', 'deny', '111', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (190, '2022-10-11 15:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (191, '2022-10-11 13:49:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (192, '2022-10-11 12:19:40.683', 'grant', '444', 5, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (193, '2022-10-11 10:49:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (194, '2022-10-11 09:19:40.683', 'deny', '444', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (195, '2022-10-11 07:49:40.683', 'deny', '444', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (196, '2022-10-11 06:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (197, '2022-10-11 04:49:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (198, '2022-10-11 03:19:40.683', 'deny', '111', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (199, '2022-10-11 01:49:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (200, '2022-10-11 00:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (201, '2022-10-10 22:49:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (202, '2022-10-10 21:19:40.683', 'deny', '111', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (203, '2022-10-10 19:49:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (204, '2022-10-10 18:19:40.683', 'deny', '222', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (205, '2022-10-10 16:49:40.683', 'deny', '222', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (206, '2022-10-10 15:19:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (207, '2022-10-10 13:49:40.683', 'grant', '999', 1, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (208, '2022-10-10 12:19:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (209, '2022-10-10 10:49:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (210, '2022-10-10 09:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (211, '2022-10-10 07:49:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (212, '2022-10-10 06:19:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (213, '2022-10-10 04:49:40.683', 'deny', '333', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (214, '2022-10-10 03:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (215, '2022-10-10 01:49:40.683', 'deny', '444', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (216, '2022-10-10 00:19:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (217, '2022-10-09 22:49:40.683', 'deny', '333', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (218, '2022-10-09 21:19:40.683', 'grant', '333', 4, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (219, '2022-10-09 19:49:40.683', 'grant', '333', 4, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (220, '2022-10-09 18:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (221, '2022-10-09 16:49:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (222, '2022-10-09 15:19:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (223, '2022-10-09 13:49:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (224, '2022-10-09 12:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (225, '2022-10-09 10:49:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (226, '2022-10-09 09:19:40.683', 'grant', '999', 1, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (227, '2022-10-09 07:49:40.683', 'grant', '444', 5, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (228, '2022-10-09 06:19:40.683', 'deny', '222', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (229, '2022-10-09 04:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (230, '2022-10-09 03:19:40.683', 'deny', '333', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (231, '2022-10-09 01:49:40.683', 'deny', '222', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (232, '2022-10-09 00:19:40.683', 'deny', '222', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (233, '2022-10-08 22:49:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (234, '2022-10-08 21:19:40.683', 'grant', '333', 4, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (235, '2022-10-08 19:49:40.683', 'deny', '111', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (236, '2022-10-08 18:19:40.683', 'deny', '444', NULL, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (237, '2022-10-08 16:49:40.683', 'deny', '222', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (238, '2022-10-08 15:19:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (239, '2022-10-08 13:49:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (240, '2022-10-08 12:19:40.683', 'deny', '444', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (241, '2022-10-08 10:49:40.683', 'grant', '999', 1, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (242, '2022-10-08 09:19:40.683', 'deny', '111', NULL, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (243, '2022-10-08 07:49:40.683', 'grant', '999', 1, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (244, '2022-10-08 06:19:40.683', 'deny', '222', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (245, '2022-10-08 04:49:40.683', 'deny', '111', NULL, 8);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (246, '2022-10-08 03:19:40.683', 'deny', '222', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (247, '2022-10-08 01:49:40.683', 'grant', '333', 4, 7);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (248, '2022-10-08 00:19:40.683', 'grant', '333', 4, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (249, '2022-10-07 22:49:40.683', 'deny', '111', NULL, 6);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (250, '2022-10-07 21:19:40.683', 'grant', '444', 5, 5);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (251, '2022-10-15 15:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (252, '2022-10-15 13:49:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (253, '2022-10-15 12:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (254, '2022-10-15 10:49:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (255, '2022-10-15 09:19:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (256, '2022-10-15 07:49:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (257, '2022-10-15 06:19:41.448', 'deny', '444', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (258, '2022-10-15 04:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (259, '2022-10-15 03:19:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (260, '2022-10-15 01:49:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (261, '2022-10-15 00:19:41.448', 'deny', '444', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (262, '2022-10-14 22:49:41.448', 'deny', '444', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (263, '2022-10-14 21:19:41.448', 'grant', '999', 6, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (264, '2022-10-14 19:49:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (265, '2022-10-14 18:19:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (266, '2022-10-14 16:49:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (267, '2022-10-14 15:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (268, '2022-10-14 13:49:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (269, '2022-10-14 12:19:41.448', 'deny', '222', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (270, '2022-10-14 10:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (271, '2022-10-14 09:19:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (272, '2022-10-14 07:49:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (273, '2022-10-14 06:19:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (274, '2022-10-14 04:49:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (275, '2022-10-14 03:19:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (276, '2022-10-14 01:49:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (277, '2022-10-14 00:19:41.448', 'grant', '999', 6, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (278, '2022-10-13 22:49:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (279, '2022-10-13 21:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (280, '2022-10-13 19:49:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (281, '2022-10-13 18:19:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (282, '2022-10-13 16:49:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (283, '2022-10-13 15:19:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (284, '2022-10-13 13:49:41.448', 'deny', '444', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (285, '2022-10-13 12:19:41.448', 'deny', '444', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (286, '2022-10-13 10:49:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (287, '2022-10-13 09:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (288, '2022-10-13 07:49:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (289, '2022-10-13 06:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (290, '2022-10-13 04:49:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (291, '2022-10-13 03:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (292, '2022-10-13 01:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (293, '2022-10-13 00:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (294, '2022-10-12 22:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (295, '2022-10-12 21:19:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (296, '2022-10-12 19:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (297, '2022-10-12 18:19:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (298, '2022-10-12 16:49:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (299, '2022-10-12 15:19:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (300, '2022-10-12 13:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (301, '2022-10-12 12:19:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (302, '2022-10-12 10:49:41.448', 'deny', '222', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (303, '2022-10-12 09:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (304, '2022-10-12 07:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (305, '2022-10-12 06:19:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (306, '2022-10-12 04:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (307, '2022-10-12 03:19:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (308, '2022-10-12 01:49:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (309, '2022-10-12 00:19:41.448', 'deny', '444', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (310, '2022-10-11 22:49:41.448', 'grant', '999', 6, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (311, '2022-10-11 21:19:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (312, '2022-10-11 19:49:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (313, '2022-10-11 18:19:41.448', 'grant', '999', 6, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (314, '2022-10-11 16:49:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (315, '2022-10-11 15:19:41.448', 'deny', '222', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (316, '2022-10-11 13:49:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (317, '2022-10-11 12:19:41.448', 'grant', '999', 6, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (318, '2022-10-11 10:49:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (319, '2022-10-11 09:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (320, '2022-10-11 07:49:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (321, '2022-10-11 06:19:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (322, '2022-10-11 04:49:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (323, '2022-10-11 03:19:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (324, '2022-10-11 01:49:41.448', 'deny', '333', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (325, '2022-10-11 00:19:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (326, '2022-10-10 22:49:41.448', 'deny', '222', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (327, '2022-10-10 21:19:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (328, '2022-10-10 19:49:41.448', 'deny', '333', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (329, '2022-10-10 18:19:41.448', 'deny', '222', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (330, '2022-10-10 16:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (331, '2022-10-10 15:19:41.448', 'grant', '222', 8, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (332, '2022-10-10 13:49:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (333, '2022-10-10 12:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (334, '2022-10-10 10:49:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (335, '2022-10-10 09:19:41.448', 'deny', '333', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (336, '2022-10-10 07:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (337, '2022-10-10 06:19:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (338, '2022-10-10 04:49:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (339, '2022-10-10 03:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (340, '2022-10-10 01:49:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (341, '2022-10-10 00:19:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (342, '2022-10-09 22:49:41.448', 'deny', '333', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (343, '2022-10-09 21:19:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (344, '2022-10-09 19:49:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (345, '2022-10-09 18:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (346, '2022-10-09 16:49:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (347, '2022-10-09 15:19:41.448', 'deny', '444', NULL, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (348, '2022-10-09 13:49:41.448', 'deny', '111', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (349, '2022-10-09 12:19:41.448', 'deny', '333', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (350, '2022-10-09 10:49:41.448', 'grant', '111', 7, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (351, '2022-10-09 09:19:41.448', 'deny', '333', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (352, '2022-10-09 07:49:41.448', 'deny', '444', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (353, '2022-10-09 06:19:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (354, '2022-10-09 04:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (355, '2022-10-09 03:19:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (356, '2022-10-09 01:49:41.448', 'deny', '444', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (357, '2022-10-09 00:19:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (358, '2022-10-08 22:49:41.448', 'grant', '111', 7, 9);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (359, '2022-10-08 21:19:41.448', 'deny', '444', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (360, '2022-10-08 19:49:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (361, '2022-10-08 18:19:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (362, '2022-10-08 16:49:41.448', 'grant', '999', 6, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (363, '2022-10-08 15:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (364, '2022-10-08 13:49:41.448', 'grant', '999', 6, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (365, '2022-10-08 12:19:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (366, '2022-10-08 10:49:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (367, '2022-10-08 09:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (368, '2022-10-08 07:49:41.448', 'grant', '999', 6, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (369, '2022-10-08 06:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (370, '2022-10-08 04:49:41.448', 'deny', '333', NULL, 10);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (371, '2022-10-08 03:19:41.448', 'grant', '111', 7, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (372, '2022-10-08 01:49:41.448', 'deny', '444', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (373, '2022-10-08 00:19:41.448', 'deny', '222', NULL, 12);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (374, '2022-10-07 22:49:41.448', 'deny', '333', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (375, '2022-10-07 21:19:41.448', 'deny', '444', NULL, 11);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (376, '2022-10-15 15:19:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (377, '2022-10-15 13:49:42.147', 'grant', '999', 6, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (378, '2022-10-15 12:19:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (379, '2022-10-15 10:49:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (380, '2022-10-15 09:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (381, '2022-10-15 07:49:42.147', 'grant', '999', 6, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (382, '2022-10-15 06:19:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (383, '2022-10-15 04:49:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (384, '2022-10-15 03:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (385, '2022-10-15 01:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (386, '2022-10-15 00:19:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (387, '2022-10-14 22:49:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (388, '2022-10-14 21:19:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (389, '2022-10-14 19:49:42.147', 'deny', '111', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (390, '2022-10-14 18:19:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (391, '2022-10-14 16:49:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (392, '2022-10-14 15:19:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (393, '2022-10-14 13:49:42.147', 'deny', '444', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (394, '2022-10-14 12:19:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (395, '2022-10-14 10:49:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (396, '2022-10-14 09:19:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (397, '2022-10-14 07:49:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (398, '2022-10-14 06:19:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (399, '2022-10-14 04:49:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (400, '2022-10-14 03:19:42.147', 'grant', '999', 6, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (401, '2022-10-14 01:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (402, '2022-10-14 00:19:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (403, '2022-10-13 22:49:42.147', 'grant', '999', 6, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (404, '2022-10-13 21:19:42.147', 'deny', '444', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (405, '2022-10-13 19:49:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (406, '2022-10-13 18:19:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (407, '2022-10-13 16:49:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (408, '2022-10-13 15:19:42.147', 'deny', '111', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (409, '2022-10-13 13:49:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (410, '2022-10-13 12:19:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (411, '2022-10-13 10:49:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (412, '2022-10-13 09:19:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (413, '2022-10-13 07:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (414, '2022-10-13 06:19:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (415, '2022-10-13 04:49:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (416, '2022-10-13 03:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (417, '2022-10-13 01:49:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (418, '2022-10-13 00:19:42.147', 'grant', '999', 6, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (419, '2022-10-12 22:49:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (420, '2022-10-12 21:19:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (421, '2022-10-12 19:49:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (422, '2022-10-12 18:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (423, '2022-10-12 16:49:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (424, '2022-10-12 15:19:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (425, '2022-10-12 13:49:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (426, '2022-10-12 12:19:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (427, '2022-10-12 10:49:42.147', 'deny', '111', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (428, '2022-10-12 09:19:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (429, '2022-10-12 07:49:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (430, '2022-10-12 06:19:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (431, '2022-10-12 04:49:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (432, '2022-10-12 03:19:42.147', 'deny', '444', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (433, '2022-10-12 01:49:42.147', 'grant', '999', 6, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (434, '2022-10-12 00:19:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (435, '2022-10-11 22:49:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (436, '2022-10-11 21:19:42.147', 'deny', '222', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (437, '2022-10-11 19:49:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (438, '2022-10-11 18:19:42.147', 'grant', '999', 6, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (439, '2022-10-11 16:49:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (440, '2022-10-11 15:19:42.147', 'deny', '111', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (441, '2022-10-11 13:49:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (442, '2022-10-11 12:19:42.147', 'grant', '999', 6, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (443, '2022-10-11 10:49:42.147', 'grant', '999', 6, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (444, '2022-10-11 09:19:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (445, '2022-10-11 07:49:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (446, '2022-10-11 06:19:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (447, '2022-10-11 04:49:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (448, '2022-10-11 03:19:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (449, '2022-10-11 01:49:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (450, '2022-10-11 00:19:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (451, '2022-10-10 22:49:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (452, '2022-10-10 21:19:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (453, '2022-10-10 19:49:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (454, '2022-10-10 18:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (455, '2022-10-10 16:49:42.147', 'grant', '444', 10, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (456, '2022-10-10 15:19:42.147', 'grant', '444', 10, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (457, '2022-10-10 13:49:42.147', 'grant', '999', 6, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (458, '2022-10-10 12:19:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (459, '2022-10-10 10:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (460, '2022-10-10 09:19:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (461, '2022-10-10 07:49:42.147', 'grant', '999', 6, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (462, '2022-10-10 06:19:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (463, '2022-10-10 04:49:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (464, '2022-10-10 03:19:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (465, '2022-10-10 01:49:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (466, '2022-10-10 00:19:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (467, '2022-10-09 22:49:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (468, '2022-10-09 21:19:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (469, '2022-10-09 19:49:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (470, '2022-10-09 18:19:42.147', 'deny', '222', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (471, '2022-10-09 16:49:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (472, '2022-10-09 15:19:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (473, '2022-10-09 13:49:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (474, '2022-10-09 12:19:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (475, '2022-10-09 10:49:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (476, '2022-10-09 09:19:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (477, '2022-10-09 07:49:42.147', 'deny', '444', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (478, '2022-10-09 06:19:42.147', 'grant', '333', 9, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (479, '2022-10-09 04:49:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (480, '2022-10-09 03:19:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (481, '2022-10-09 01:49:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (482, '2022-10-09 00:19:42.147', 'deny', '222', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (483, '2022-10-08 22:49:42.147', 'deny', '111', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (484, '2022-10-08 21:19:42.147', 'deny', '111', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (485, '2022-10-08 19:49:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (486, '2022-10-08 18:19:42.147', 'deny', '111', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (487, '2022-10-08 16:49:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (488, '2022-10-08 15:19:42.147', 'deny', '333', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (489, '2022-10-08 13:49:42.147', 'deny', '444', NULL, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (490, '2022-10-08 12:19:42.147', 'grant', '333', 9, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (491, '2022-10-08 10:49:42.147', 'grant', '444', 10, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (492, '2022-10-08 09:19:42.147', 'grant', '333', 9, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (493, '2022-10-08 07:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (494, '2022-10-08 06:19:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (495, '2022-10-08 04:49:42.147', 'deny', '444', NULL, 14);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (496, '2022-10-08 03:19:42.147', 'deny', '222', NULL, 15);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (497, '2022-10-08 01:49:42.147', 'deny', '222', NULL, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (498, '2022-10-08 00:19:42.147', 'grant', '999', 6, 13);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (499, '2022-10-07 22:49:42.147', 'grant', '999', 6, 16);
INSERT INTO public."AccessEvent" (id, at, access, code, "accessUserId", "accessPointId") VALUES (500, '2022-10-07 21:19:42.147', 'deny', '444', NULL, 14);


--
-- TOC entry 3376 (class 0 OID 98346)
-- Dependencies: 215
-- Data for Name: ApiToken; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."ApiToken" (token, "accessHubId") VALUES ('d627713660c1891414ac55a6ccd1c1294292bb19a9e6be741f340782a531e331', 'cl2uwi6uv0030ybthbkls5w0i');
INSERT INTO public."ApiToken" (token, "accessHubId") VALUES ('d627713660c1891414ac55a6ccd1c1294292bb19a9e6be741f340782a531e331', 'cl9a2ef0900298bth3t49wmap');
INSERT INTO public."ApiToken" (token, "accessHubId") VALUES ('', 'cl9a2eflj00458bthwn24558h');
INSERT INTO public."ApiToken" (token, "accessHubId") VALUES ('', 'cl9a2eg4z00558bthlhnb5vwh');


--
-- TOC entry 3372 (class 0 OID 98318)
-- Dependencies: 211
-- Data for Name: Note; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3371 (class 0 OID 98313)
-- Dependencies: 210
-- Data for Name: Password; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Password" (hash, "resetPasswordHash", "resetPasswordExpireAt", "userId") VALUES ('$2a$10$xe2ZEEJJqULy6VJ2khSBFeyKWXUWdS0Jkj4SmtsT6ZFOw.fzHdlVa', NULL, NULL, 'cl9a2eeck00008bthyxhscmla');
INSERT INTO public."Password" (hash, "resetPasswordHash", "resetPasswordExpireAt", "userId") VALUES ('$2a$10$xe2ZEEJJqULy6VJ2khSBFeyKWXUWdS0Jkj4SmtsT6ZFOw.fzHdlVa', NULL, NULL, 'cl9a2eed300078bth0xaq9vh6');
INSERT INTO public."Password" (hash, "resetPasswordHash", "resetPasswordExpireAt", "userId") VALUES ('$2a$10$xe2ZEEJJqULy6VJ2khSBFeyKWXUWdS0Jkj4SmtsT6ZFOw.fzHdlVa', NULL, NULL, 'cl9a2eedf00148bth2tt1uutk');
INSERT INTO public."Password" (hash, "resetPasswordHash", "resetPasswordExpireAt", "userId") VALUES ('$2a$10$xe2ZEEJJqULy6VJ2khSBFeyKWXUWdS0Jkj4SmtsT6ZFOw.fzHdlVa', NULL, NULL, 'cl9a2efki00388bth4xdjzcza');


--
-- TOC entry 3381 (class 0 OID 98371)
-- Dependencies: 220
-- Data for Name: _AccessPointToAccessUser; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (1, 1);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (1, 2);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (1, 3);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (2, 1);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (2, 2);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (3, 1);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (3, 2);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (4, 1);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (5, 1);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (5, 4);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (5, 5);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (6, 1);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (6, 4);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (7, 1);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (7, 4);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (8, 1);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (9, 6);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (9, 7);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (9, 8);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (10, 6);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (10, 7);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (11, 6);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (11, 7);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (12, 6);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (13, 6);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (13, 9);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (13, 10);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (14, 6);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (14, 9);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (15, 6);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (15, 9);
INSERT INTO public."_AccessPointToAccessUser" ("A", "B") VALUES (16, 6);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 218
-- Name: AccessEvent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AccessEvent_id_seq"', 500, true);


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 216
-- Name: AccessPoint_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AccessPoint_id_seq"', 16, true);


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 212
-- Name: AccessUser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AccessUser_id_seq"', 10, true);


-- Completed on 2022-10-15 12:39:57 EDT

--
-- PostgreSQL database dump complete
--

