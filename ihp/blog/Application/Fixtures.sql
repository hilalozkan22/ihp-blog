

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('7d3546f8-aa48-44de-9a42-f25383db2e18', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam ', '2020-08-20 20:21:08.876882+03');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('91b6d0b9-0157-4d3a-bb6b-04486f2c3b67', '7d3546f8-aa48-44de-9a42-f25383db2e18', 'Hilal', 'This is first comment');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('73fd26dd-b9fc-4cb8-b1c1-9cb3a0cf610b', '7d3546f8-aa48-44de-9a42-f25383db2e18', 'Hilal', 'This is first comment');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('37f3003c-a42e-4b36-b98f-435518d68a54', '7d3546f8-aa48-44de-9a42-f25383db2e18', 'Hilal', 'Hello world!!!');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


