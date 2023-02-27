adadaas
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET escape_string_warning = off;
CREATE TABLE public.article (
    id integer NOT NULL,
    title text NOT NULL,
    author_id integer NOT NULL
);
CREATE SEQUENCE public.article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.article_id_seq OWNED BY public.article.id;
CREATE TABLE public.author (
    id integer NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.author_id_seq OWNED BY public.author.id;
ALTER TABLE ONLY public.article ALTER COLUMN id SET DEFAULT nextval('public.article_id_seq'::regclass);
ALTER TABLE ONLY public.author ALTER COLUMN id SET DEFAULT nextval('public.author_id_seq'::regclass);
ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.author(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
