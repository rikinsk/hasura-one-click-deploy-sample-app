SET check_function_bodies = false;
INSERT INTO public.article (id, title, author_id) VALUES (1, 'boo', 1);
INSERT INTO public.article (id, title, author_id) VALUES (2, 'moo', 2);
SELECT pg_catalog.setval('public.article_id_seq', 2, true);
