SET check_function_bodies = false;
INSERT INTO public.author (id, name) VALUES (1, 'boo');
INSERT INTO public.author (id, name) VALUES (2, 'moo');
INSERT INTO public.author (id, name) VALUES (3, 'goo');
SELECT pg_catalog.setval('public.author_id_seq', 3, true);
