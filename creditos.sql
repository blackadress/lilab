--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	clientes	solicitud_credito
8	clientes	empleado
9	clientes	cliente
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add solicitud_credito	7	add_solicitud_credito
26	Can change solicitud_credito	7	change_solicitud_credito
27	Can delete solicitud_credito	7	delete_solicitud_credito
28	Can view solicitud_credito	7	view_solicitud_credito
29	Can add empleado	8	add_empleado
30	Can change empleado	8	change_empleado
31	Can delete empleado	8	delete_empleado
32	Can view empleado	8	view_empleado
33	Can add cliente	9	add_cliente
34	Can change cliente	9	change_cliente
35	Can delete cliente	9	delete_cliente
36	Can view cliente	9	view_cliente
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$xwz4jnrYG5esYUxlfncQXy$9yI3oKfDyGk0CpiuoQiUJM8yAJK4U9K8mmoU78XjWLM=	2021-10-15 12:46:32.215553-05	t	admin				t	t	2021-10-15 10:18:14.577139-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: clientes_cliente; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.clientes_cliente (id, nombres, apellidos, sbs_deuda, sentinel_puntuacion, pts_ia) FROM stdin;
1	cliente1	clie1 nte1	100000	regular	6
2	cliente2	clie2 nte2	0	bueno	6
3	cliente3	clie3 nte3	5000000	malo	6
\.


--
-- Data for Name: clientes_empleado; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.clientes_empleado (id, perfil, nombres, apellidos, usuario_id) FROM stdin;
1	analista	analista1	ana1 lista1	1
\.


--
-- Data for Name: clientes_solicitud_credito; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.clientes_solicitud_credito (id, monto, evaluado, aceptado, creado_en, modificado_en, cliente_id, empleado_id) FROM stdin;
4	5520000	f	f	2021-10-15 12:50:52.322008-05	2021-10-15 13:24:04.756983-05	2	1
1	1000000	f	f	2021-10-15 12:50:33.598946-05	2021-10-15 14:00:11.849351-05	1	1
2	1020000	f	f	2021-10-15 12:50:39.209534-05	2021-10-15 14:00:16.353719-05	1	1
3	420000	f	f	2021-10-15 12:50:46.27121-05	2021-10-15 14:34:04.311754-05	2	1
5	4200000	f	f	2021-10-15 12:51:08.176995-05	2021-10-15 14:34:09.196622-05	3	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-10-15 13:23:49.466912-05	1	Solicitud_credito object (1)	2	[{"changed": {"fields": ["Cliente"]}}]	7	1
2	2021-10-15 13:23:54.93589-05	2	Solicitud_credito object (2)	2	[{"changed": {"fields": ["Cliente"]}}]	7	1
3	2021-10-15 13:23:59.89774-05	3	Solicitud_credito object (3)	2	[{"changed": {"fields": ["Cliente"]}}]	7	1
4	2021-10-15 13:24:04.760867-05	4	Solicitud_credito object (4)	2	[{"changed": {"fields": ["Cliente"]}}]	7	1
5	2021-10-15 13:24:09.734031-05	5	Solicitud_credito object (5)	2	[{"changed": {"fields": ["Cliente"]}}]	7	1
6	2021-10-15 14:00:10.317686-05	1	Solicitud_credito object (1)	2	[{"changed": {"fields": ["Evaluado", "Aceptado"]}}]	7	1
7	2021-10-15 14:00:11.850353-05	1	Solicitud_credito object (1)	2	[]	7	1
8	2021-10-15 14:00:16.354774-05	2	Solicitud_credito object (2)	2	[{"changed": {"fields": ["Evaluado", "Aceptado"]}}]	7	1
9	2021-10-15 14:34:04.312796-05	3	Solicitud_credito object (3)	2	[{"changed": {"fields": ["Evaluado", "Aceptado"]}}]	7	1
10	2021-10-15 14:34:09.19813-05	5	Solicitud_credito object (5)	2	[{"changed": {"fields": ["Evaluado", "Aceptado"]}}]	7	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-10-15 09:35:46.489138-05
2	auth	0001_initial	2021-10-15 09:35:46.637272-05
3	admin	0001_initial	2021-10-15 09:35:46.668819-05
4	admin	0002_logentry_remove_auto_add	2021-10-15 09:35:46.680274-05
5	admin	0003_logentry_add_action_flag_choices	2021-10-15 09:35:46.690336-05
6	contenttypes	0002_remove_content_type_name	2021-10-15 09:35:46.717895-05
7	auth	0002_alter_permission_name_max_length	2021-10-15 09:35:46.729462-05
8	auth	0003_alter_user_email_max_length	2021-10-15 09:35:46.73919-05
9	auth	0004_alter_user_username_opts	2021-10-15 09:35:46.752337-05
10	auth	0005_alter_user_last_login_null	2021-10-15 09:35:46.765849-05
11	auth	0006_require_contenttypes_0002	2021-10-15 09:35:46.772264-05
12	auth	0007_alter_validators_add_error_messages	2021-10-15 09:35:46.786664-05
13	auth	0008_alter_user_username_max_length	2021-10-15 09:35:46.808666-05
14	auth	0009_alter_user_last_name_max_length	2021-10-15 09:35:46.827335-05
15	auth	0010_alter_group_name_max_length	2021-10-15 09:35:46.843215-05
16	auth	0011_update_proxy_permissions	2021-10-15 09:35:46.857396-05
17	auth	0012_alter_user_first_name_max_length	2021-10-15 09:35:46.87047-05
18	sessions	0001_initial	2021-10-15 09:35:46.898368-05
19	clientes	0001_initial	2021-10-15 10:55:03.458298-05
20	clientes	0002_alter_empleado_perfil	2021-10-15 10:56:54.328145-05
21	clientes	0003_rename_visto_solicitud_credito_evaluado	2021-10-15 12:50:06.615193-05
22	clientes	0004_cliente_pts_ia	2021-10-15 13:56:42.874388-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: lilab
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
f66sa7ig6t73uu1tkxq8kr2kgyfll2ka	.eJxVjMsOwiAURP-FtSEXebt07zeQCxekaiAp7cr477ZJF7qcOWfmzQKuSw3ryHOYiF2YYKffLmJ65rYDemC7d556W-Yp8l3hBx381im_rof7d1Bx1G1tjAflvDcanQOPUilKSgLpctbJ2i27bMkBAqgSo85OiixJFpEoWsM-X65ENyI:1mbRHs:XFmznSF7ayx_zsAPJJatkaOGyavh1DmzfLe3wFsiPdQ	2021-10-29 12:46:32.219509-05
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: clientes_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.clientes_cliente_id_seq', 3, true);


--
-- Name: clientes_empleado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.clientes_empleado_id_seq', 1, true);


--
-- Name: clientes_solicitud_credito_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.clientes_solicitud_credito_id_seq', 5, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 10, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lilab
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- PostgreSQL database dump complete
--

