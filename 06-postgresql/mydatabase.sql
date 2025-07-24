--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: myuser
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO myuser;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: people; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.people (
    id integer NOT NULL,
    firstname text,
    lastname text,
    street text,
    city text,
    zipcode text,
    email text,
    phone text,
    country text,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.people OWNER TO myuser;

--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.people_id_seq OWNER TO myuser;

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.people (id, firstname, lastname, street, city, zipcode, email, phone, country, created_at) FROM stdin;
1	First1	Last1	Street 1 #56	City7	65372	787f5edd81332642649642d1f9998e24@example.com	+48-246916986	Country2	2024-12-10 03:35:27.15871
2	First2	Last2	Street 2 #83	City2	05435	e4c642a8f6af0f0d766103208609789c@example.com	+48-843621776	Country3	2024-08-18 03:39:55.914329
3	First3	Last3	Street 3 #19	City3	35743	02987ff73ed2c25df516ad3768693756@example.com	+48-745415848	Country0	2024-07-28 16:32:23.250673
4	First4	Last4	Street 4 #45	City8	39589	ff390f925b578d71e6c2ecfc81946176@example.com	+48-900058570	Country5	2024-08-07 17:19:08.573688
5	First5	Last5	Street 5 #85	City8	18621	afb04dcf1cf6da008e683a009f175071@example.com	+48-362101091	Country2	2024-08-02 21:54:41.002127
6	First6	Last6	Street 6 #46	City1	62029	ddc2e982ad8aaa8d64e833542e3b4d59@example.com	+48-391496674	Country2	2024-08-05 04:27:17.629165
7	First7	Last7	Street 7 #10	City7	31690	d50fc76e520f1000e125c911316e8ec3@example.com	+48-988884822	Country2	2025-01-20 23:32:29.940173
8	First8	Last8	Street 8 #84	City4	97777	37509f8b17d820ea1d4532b29741cbb9@example.com	+48-142448644	Country4	2025-06-10 10:56:49.769878
9	First9	Last9	Street 9 #4	City4	24429	c56f8a89a12a2e065a5c8596b077acaf@example.com	+48-757431820	Country2	2025-05-29 22:39:16.851865
10	First10	Last10	Street 10 #44	City4	78378	127ee813799b466408d353b3070bf9b9@example.com	+48-550815069	Country2	2024-08-17 08:24:49.335773
11	First11	Last11	Street 11 #93	City10	43291	65f458ae90e3f5fd22aa2dd8f1b078b2@example.com	+48-441603991	Country1	2025-04-16 21:22:06.039468
12	First12	Last12	Street 12 #50	City0	07388	8f29579e1e80b8a9af301d89e8ea3737@example.com	+48-860927643	Country1	2024-12-10 15:04:51.151936
13	First13	Last13	Street 13 #79	City5	40365	b41bf7cee2cbcab643c7203beccffbd4@example.com	+48-103462351	Country3	2025-03-17 00:07:00.536122
14	First14	Last14	Street 14 #31	City2	58791	5f80123520593d007ae77c7be1fa88b6@example.com	+48-122698361	Country1	2025-03-25 01:16:34.880107
15	First15	Last15	Street 15 #87	City9	67567	67cf9962b070964d4d821897f08bf5ec@example.com	+48-194425340	Country0	2025-02-07 18:19:33.469141
16	First16	Last16	Street 16 #49	City3	54551	1cb94e217b4df2ebb2ccc0b38735f1a6@example.com	+48-138729578	Country5	2024-07-30 15:14:12.328903
17	First17	Last17	Street 17 #78	City1	00764	9af4559834cb96c3aab4810c96c81821@example.com	+48-366211382	Country3	2025-05-03 04:23:07.525914
18	First18	Last18	Street 18 #29	City4	95050	3b7951091903de73047caed093b60125@example.com	+48-187034151	Country2	2025-05-27 08:46:15.93918
19	First19	Last19	Street 19 #36	City7	56757	342160cef0eefaac74e8febb616b59c8@example.com	+48-160089614	Country4	2025-01-06 04:56:50.257131
20	First20	Last20	Street 20 #51	City6	66751	62f60d256d5a7c578599f8f624426080@example.com	+48-415075980	Country1	2024-10-22 15:56:52.592116
21	First21	Last21	Street 21 #80	City3	85301	63b6270441e5c46d347eb8a9885ad1a7@example.com	+48-445531453	Country2	2025-07-16 10:34:14.2792
22	First22	Last22	Street 22 #83	City7	10956	9b2512047d965581318ad9c8a6053135@example.com	+48-416305096	Country5	2025-01-18 22:00:29.329614
23	First23	Last23	Street 23 #9	City9	89571	5bdf7c868e1df8839b97ac13d28df6b8@example.com	+48-343132728	Country1	2025-07-02 08:34:40.224077
24	First24	Last24	Street 24 #97	City0	22972	baebcf945b431dda8fd94d91cd288454@example.com	+48-400714535	Country3	2025-07-16 09:17:29.812041
25	First25	Last25	Street 25 #2	City9	23628	3b84a1eb4edc289b44ea044ab7f0336b@example.com	+48-907059764	Country5	2024-09-13 03:54:15.469994
26	First26	Last26	Street 26 #37	City7	58711	1ef8a43e4d48714c5d5b6fed219d723e@example.com	+48-467659993	Country0	2024-10-29 15:01:21.929454
27	First27	Last27	Street 27 #98	City4	34504	caf53e219324e9a426556f70fc3eab0b@example.com	+48-338610818	Country1	2025-05-08 16:45:45.204346
28	First28	Last28	Street 28 #79	City1	36521	9d6d719316f8b482c3710301e9a6a2cd@example.com	+48-444692496	Country2	2025-05-23 20:38:55.063123
29	First29	Last29	Street 29 #84	City6	48155	1e9707233c6cd11363f016cad2583709@example.com	+48-778670945	Country2	2024-07-25 20:28:50.830046
30	First30	Last30	Street 30 #49	City4	82046	dde568150958154f69d64ecb9291e36d@example.com	+48-533823279	Country4	2025-07-03 20:00:38.152803
31	First31	Last31	Street 31 #13	City0	86532	20a6ea46961599f00974d2999cbc05f2@example.com	+48-977379066	Country4	2025-07-16 12:23:26.582136
32	First32	Last32	Street 32 #52	City7	95681	8276b7354cc85ee0e948c0873e36b409@example.com	+48-910821379	Country0	2025-03-13 06:19:14.139448
33	First33	Last33	Street 33 #41	City3	32215	21ec45e075ac62437cd683505df9e6ca@example.com	+48-700868624	Country3	2025-07-05 22:55:57.212981
34	First34	Last34	Street 34 #16	City3	48550	399ffc7565f57b6b10df5683ad766409@example.com	+48-687908829	Country4	2024-07-25 14:30:24.892248
35	First35	Last35	Street 35 #8	City7	37924	c5ac8342a5be7f009bd1c44201ae2251@example.com	+48-589711431	Country4	2025-01-01 10:26:39.59616
36	First36	Last36	Street 36 #49	City4	05373	9d056d38db9018912297160505080558@example.com	+48-253132466	Country2	2025-01-10 06:45:43.923978
37	First37	Last37	Street 37 #47	City1	38451	3212c0e37c7524992b47e71c626901e0@example.com	+48-216686676	Country1	2024-08-09 20:51:50.536172
38	First38	Last38	Street 38 #26	City8	97674	69fc3310276d7c0660c21ba38f26bbd8@example.com	+48-364900465	Country2	2025-03-28 17:14:42.999885
39	First39	Last39	Street 39 #26	City9	41417	de4b59fea72d14ff384bd65dd72390b6@example.com	+48-213071114	Country5	2025-01-05 06:26:12.237988
40	First40	Last40	Street 40 #42	City6	46203	02b93996d7b054e1c0be44394e4e50b0@example.com	+48-692478646	Country3	2025-03-29 19:06:08.241213
41	First41	Last41	Street 41 #12	City4	19812	8f682308b6387f5ceeb79ac8f8a43d6a@example.com	+48-369233669	Country1	2025-04-08 19:22:27.649885
42	First42	Last42	Street 42 #90	City1	17592	46eff2f91d71edce17aa6bda28299ffd@example.com	+48-443584489	Country3	2025-04-27 00:31:14.843248
43	First43	Last43	Street 43 #54	City3	71590	af7d51daa2699d52462aa77120d5b9de@example.com	+48-432528041	Country3	2024-12-02 03:36:52.560412
44	First44	Last44	Street 44 #4	City2	11415	4981d401ea4d86612540322f988b819e@example.com	+48-520791212	Country3	2025-06-12 12:39:12.970702
45	First45	Last45	Street 45 #81	City5	75090	51c7c06b9507c2f256eb0cd580c01d67@example.com	+48-896665891	Country1	2025-03-26 01:03:08.770798
46	First46	Last46	Street 46 #92	City8	47835	9fb40965d47053f9fab4d1fa0862820c@example.com	+48-397945934	Country2	2025-06-06 21:19:38.808465
47	First47	Last47	Street 47 #8	City0	73801	3ae0c7cd14feeb8bfbc00cb12ab8ae2c@example.com	+48-398331077	Country0	2024-11-20 06:10:05.89708
48	First48	Last48	Street 48 #33	City7	01800	bae31185cb96ffadfb51fbc32894e66c@example.com	+48-796576081	Country3	2024-07-31 21:47:30.475255
49	First49	Last49	Street 49 #43	City1	14809	ec81fc8a61bd6b3cba40f80b46ded8e0@example.com	+48-577366445	Country5	2024-11-16 20:06:52.945391
50	First50	Last50	Street 50 #92	City4	92577	b2dd4c4854ef14e643d999d1552674e7@example.com	+48-734120414	Country4	2024-09-29 07:34:16.219441
51	First51	Last51	Street 51 #31	City3	74108	2f224231f8766c279f8e6c7234b6ef29@example.com	+48-278781592	Country2	2024-08-22 03:48:25.076247
52	First52	Last52	Street 52 #88	City3	39393	ba17d94b755105ef99f9bf61a0bdc1f5@example.com	+48-765234165	Country3	2024-12-30 01:12:48.254558
53	First53	Last53	Street 53 #10	City4	02409	036151cfd2b0437182f7d177c3009d3e@example.com	+48-960360697	Country4	2024-08-04 12:12:35.393146
54	First54	Last54	Street 54 #48	City3	12881	117b1fa7c397ccc4db147b66f904b306@example.com	+48-517227844	Country1	2024-11-29 19:47:14.164631
55	First55	Last55	Street 55 #63	City6	93799	a2130eea2a4c667417b3db28f666a9f2@example.com	+48-525025198	Country1	2025-01-25 14:07:56.379623
56	First56	Last56	Street 56 #87	City4	57985	e4fe908f9182358b0d7ab2b83e26a268@example.com	+48-167847292	Country2	2025-04-13 03:37:11.142455
57	First57	Last57	Street 57 #82	City10	12725	5beaa132978e15a6db81810b4dc3f052@example.com	+48-526071973	Country0	2024-10-25 13:28:39.038954
58	First58	Last58	Street 58 #15	City9	72596	176306314f2be0c383eab407da842813@example.com	+48-167572384	Country4	2024-10-16 01:09:21.156285
59	First59	Last59	Street 59 #12	City8	44039	14ff39b449aff228adc41c9b269fbb45@example.com	+48-468087097	Country4	2025-02-19 23:55:16.156044
60	First60	Last60	Street 60 #62	City8	67259	7645bb6112d4b2051da63b63f120fae6@example.com	+48-277894270	Country0	2024-08-30 05:20:04.938497
61	First61	Last61	Street 61 #74	City4	06844	55765e536d2037a275e7084c272b91bb@example.com	+48-435969224	Country3	2025-05-04 13:22:36.851542
62	First62	Last62	Street 62 #27	City7	34371	b136bf93091f7fb81bef1922a7ca3757@example.com	+48-679983779	Country1	2024-10-29 22:43:50.997634
63	First63	Last63	Street 63 #63	City6	28237	677f622b1128cffb5faa6ef1b5e99c86@example.com	+48-650350003	Country5	2025-04-23 12:16:03.224533
64	First64	Last64	Street 64 #46	City7	36900	c538b0884b5ee318da6480722a916d81@example.com	+48-464025746	Country3	2025-07-06 14:23:54.602033
65	First65	Last65	Street 65 #9	City9	07338	26f59bbc3ec0fc93ba4987062318dcb0@example.com	+48-808554305	Country5	2024-12-22 00:03:35.086388
66	First66	Last66	Street 66 #98	City3	49845	a42859f10758e79f01a08af291d78cad@example.com	+48-797834563	Country2	2025-07-10 14:43:04.975473
67	First67	Last67	Street 67 #29	City10	05419	c5843b4628e061238155920a170455bc@example.com	+48-284186386	Country0	2025-01-22 12:54:57.136141
68	First68	Last68	Street 68 #61	City10	44435	6d4e2cf3f6d79dccdd132d15e729093b@example.com	+48-642571089	Country2	2025-05-07 07:45:22.596369
69	First69	Last69	Street 69 #91	City2	43746	09a5e76f0722377505e4756b85e0ef0f@example.com	+48-936256283	Country1	2024-08-30 21:44:48.433662
70	First70	Last70	Street 70 #56	City9	52323	4b28d477901d26fda34ca4969e7d89c8@example.com	+48-397791831	Country3	2024-09-04 20:16:28.778062
71	First71	Last71	Street 71 #41	City6	52223	4332919902410ee48197906081ded343@example.com	+48-360517966	Country3	2024-10-15 03:58:30.674833
72	First72	Last72	Street 72 #87	City4	40128	09b1339b40dcd6550e45586db3e419b8@example.com	+48-360783022	Country5	2024-10-19 06:46:34.810802
73	First73	Last73	Street 73 #41	City3	12738	ee602b6e187c10ab02b66191cbb22cab@example.com	+48-911976692	Country0	2025-05-16 00:02:25.810578
74	First74	Last74	Street 74 #33	City1	82996	772a8b68635675cbeda40b6c383a5d5c@example.com	+48-672760888	Country2	2024-07-25 05:32:43.527031
75	First75	Last75	Street 75 #93	City8	56462	75fc85a2c768b60b86b29f5f2890bdfb@example.com	+48-799436302	Country3	2025-02-12 15:06:46.161567
76	First76	Last76	Street 76 #87	City2	14220	ee81dc6618e54320f093f4caadcb2bbc@example.com	+48-819270194	Country0	2025-05-19 19:00:23.114815
77	First77	Last77	Street 77 #98	City9	64486	efe2b09ad648cba9a8551b6561238e17@example.com	+48-158758908	Country1	2024-12-24 16:41:31.876661
78	First78	Last78	Street 78 #45	City6	05715	79ca99d912afc2d5dc9d403ff020ea6e@example.com	+48-537534465	Country4	2025-01-25 01:29:15.570835
79	First79	Last79	Street 79 #62	City5	49585	f4731e2724d0e4fa289b19cb59240f4e@example.com	+48-235429222	Country0	2024-09-12 21:43:01.702514
80	First80	Last80	Street 80 #96	City5	08365	c62e19b15abaa780a315db085516f433@example.com	+48-873889902	Country5	2025-06-15 08:41:41.543696
81	First81	Last81	Street 81 #43	City3	75345	7747adaa7d212b23767699ed817bcf99@example.com	+48-865745751	Country1	2024-12-16 00:21:51.7465
82	First82	Last82	Street 82 #15	City9	17384	f0e9738071309223bbb30ca72883c096@example.com	+48-114331233	Country4	2025-06-12 05:26:41.036492
83	First83	Last83	Street 83 #43	City1	31325	1a7a5593b56915f1ee1fab18d8731307@example.com	+48-148036066	Country5	2024-11-07 20:40:28.145589
84	First84	Last84	Street 84 #28	City1	70964	68100a4a59be6116be638ebfa1837798@example.com	+48-530855481	Country2	2024-12-24 14:20:58.837442
85	First85	Last85	Street 85 #33	City3	00565	dde80096d3fb30036590027a06ec0ef1@example.com	+48-101748225	Country4	2024-09-30 02:10:14.680099
86	First86	Last86	Street 86 #65	City7	24390	d178c95f642f78dcae785a738aa01ad6@example.com	+48-203644705	Country4	2025-04-10 22:36:25.579322
87	First87	Last87	Street 87 #4	City3	15747	2937567ce69c076b8bd3cacb3335a023@example.com	+48-725540291	Country3	2024-08-11 02:16:54.871326
88	First88	Last88	Street 88 #38	City7	01270	531d6b7d30ae667cc37c0a400b34d930@example.com	+48-175775688	Country5	2024-09-17 10:02:49.887763
89	First89	Last89	Street 89 #51	City4	36945	dea4e5604a951a8b723fe308cbeec140@example.com	+48-535640575	Country0	2024-10-30 22:44:06.436269
90	First90	Last90	Street 90 #85	City9	58766	a365dab8e670dc4a58451a7c8c846279@example.com	+48-216250804	Country2	2024-09-12 10:37:30.938713
91	First91	Last91	Street 91 #64	City10	06834	a811566bbc4f0525b62f61560b3f87c9@example.com	+48-773165772	Country1	2024-09-18 10:05:51.18472
92	First92	Last92	Street 92 #10	City9	28125	f06ac732e495963058869ad0cc31beeb@example.com	+48-165701807	Country3	2025-01-01 00:16:23.948037
93	First93	Last93	Street 93 #95	City9	40646	f0ea32efb70209fac21c9c72b9b730e6@example.com	+48-903796439	Country0	2025-03-24 12:05:23.801416
94	First94	Last94	Street 94 #39	City9	66372	33f271e92944c4b7181fb3a26b028e7b@example.com	+48-529696912	Country2	2024-10-25 02:46:22.844683
95	First95	Last95	Street 95 #9	City4	81625	b6fde8a3fd1200a67b587b7ce6bfc282@example.com	+48-327734534	Country3	2025-04-10 14:28:41.463698
96	First96	Last96	Street 96 #77	City1	60070	d51d7f448e31ccba629f77f5caf1290d@example.com	+48-627370757	Country1	2024-12-06 16:20:51.321413
97	First97	Last97	Street 97 #63	City8	58989	a5b325bc65df81e2294c4b9ec0b1a2ea@example.com	+48-809270945	Country4	2025-06-30 14:14:41.54009
98	First98	Last98	Street 98 #10	City1	92798	d4e7b42a128a86d42537625297ee76ad@example.com	+48-306386418	Country4	2024-10-03 09:56:03.932562
99	First99	Last99	Street 99 #28	City2	10661	24d8f9ab96aab1bb1ac94af69348b7d8@example.com	+48-297547662	Country2	2024-10-16 05:45:18.743223
100	First100	Last100	Street 100 #28	City3	26654	daae441fa972929ed8176d06f7d51702@example.com	+48-391297564	Country2	2025-01-29 00:11:29.295339
\.


--
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.people_id_seq', 100, true);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

