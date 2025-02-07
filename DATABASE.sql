PGDMP     '                     {            postgres    15.1    15.1 >    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';                      false            I           0    0    STDSTRINGS    STDSTRINGS     (   SET standard_conforming_strings = 'on';                      false            J           0    0    SEARCHPATH    SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);                      false            K           1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Romanian_Romania.1252';    DROP DATABASE postgres;                postgres    false            L           0    0    DATABASE postgres     COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';                   postgres    false    3403                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;    DROP EXTENSION adminpack;                   false            M           0    0    EXTENSION adminpack     COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';                        false    2                         1259    16422     Articol    TABLE         CREATE TABLE public."Articol" (    "ID_articol" integer NOT NULL,    "Titlu" text,    "Publicat in" date,    "ID_cuvant cheie" integer NOT NULL,    "ID_autor" integer NOT NULL);    DROP TABLE public."Articol";       public         heap    postgres    false                         1259    16503    Articol_ID_articol_seq    SEQUENCE         ALTER TABLE public."Articol" ALTER COLUMN "ID_articol" ADD GENERATED ALWAYS AS IDENTITY (    SEQUENCE NAME public."Articol_ID_articol_seq"    START WITH 0    INCREMENT BY 1    MINVALUE 0    MAXVALUE 1000    CACHE 1    CYCLE);            public          postgres    false    218                         1259    16408    Autor    TABLE         CREATE TABLE public."Autor" (    "ID_autor" integer NOT NULL,    "Nume" text,    "Pseudonim" text,    "Observatii" text,    "ID_carte" integer);    DROP TABLE public."Autor";       public         heap    postgres    false                         1259    16530    Autor_ID_autor_seq    SEQUENCE         ALTER TABLE public."Autor" ALTER COLUMN "ID_autor" ADD GENERATED ALWAYS AS IDENTITY (    SEQUENCE NAME public."Autor_ID_autor_seq"    START WITH 0    INCREMENT BY 1    MINVALUE 0    MAXVALUE 1000    CACHE 1);            public          postgres    false    216                         1259    16401    Carte    TABLE         CREATE TABLE public."Carte" (    "ID_carte" integer NOT NULL,    "Titlu" text,    "An" date,    "Cota" text,    "ID_editura" integer NOT NULL,    "ID_descriere fizica" integer NOT NULL,    "ID_locatie" integer NOT NULL);    DROP TABLE public."Carte";       public         heap    postgres    false                         1259    16545    Carte_ID_carte_seq    SEQUENCE         ALTER TABLE public."Carte" ALTER COLUMN "ID_carte" ADD GENERATED ALWAYS AS IDENTITY (    SEQUENCE NAME public."Carte_ID_carte_seq"    START WITH 0    INCREMENT BY 1    MINVALUE 0    MAXVALUE 1000    CACHE 1);            public          postgres    false    215                         1259    16429    Cuvant cheie    TABLE         CREATE TABLE public."Cuvant cheie" (    "ID_cuvant cheie" integer NOT NULL,    "Cuvant" text,    "ID_carte" integer NOT NULL); "   DROP TABLE public."Cuvant cheie";       public         heap    postgres    false                         1259    16662     Cuvant cheie_ID_cuvant cheie_seq    SEQUENCE         ALTER TABLE public."Cuvant cheie" ALTER COLUMN "ID_cuvant cheie" ADD GENERATED ALWAYS AS IDENTITY (    SEQUENCE NAME public."Cuvant cheie_ID_cuvant cheie_seq"    START WITH 0    INCREMENT BY 1    MINVALUE 0    MAXVALUE 1000    CACHE 1);            public          postgres    false    219                         1259    16443    Descriere fizica    TABLE         CREATE TABLE public."Descriere fizica" (    "ID_descriere fizica" integer NOT NULL,    "Numar de pagini" integer,    "Dimensiuni" text,    "Foto" text); &   DROP TABLE public."Descriere fizica";       public         heap    postgres    false                         1259    16554 (   Descriere fizica_ID_descriere fizica_seq    SEQUENCE       ALTER TABLE public."Descriere fizica" ALTER COLUMN "ID_descriere fizica" ADD GENERATED ALWAYS AS IDENTITY (    SEQUENCE NAME public."Descriere fizica_ID_descriere fizica_seq"    START WITH 0    INCREMENT BY 1    MINVALUE 0    MAXVALUE 1000    CACHE 1);            public          postgres    false    221                         1259    16415     Editura    TABLE         CREATE TABLE public."Editura" (    "ID_editura" integer NOT NULL,    "Nume" text,    "Director general" text,    "Adresa web" text);    DROP TABLE public."Editura";       public         heap    postgres    false                         1259    16561    Editura_ID_editura_seq    SEQUENCE         ALTER TABLE public."Editura" ALTER COLUMN "ID_editura" ADD GENERATED ALWAYS AS IDENTITY (    SEQUENCE NAME public."Editura_ID_editura_seq"    START WITH 0    INCREMENT BY 1    MINVALUE 0    MAXVALUE 1000    CACHE 1);            public          postgres    false    217                         1259    16436     Locatie    TABLE     m   CREATE TABLE public."Locatie" (    "ID_locatie" integer NOT NULL,    "Denumire" text,    "Adresa" text);    DROP TABLE public."Locatie";       public         heap    postgres    false                         1259    16568    Locatie_ID_locatie_seq    SEQUENCE         ALTER TABLE public."Locatie" ALTER COLUMN "ID_locatie" ADD GENERATED ALWAYS AS IDENTITY (    SEQUENCE NAME public."Locatie_ID_locatie_seq"    START WITH 0    INCREMENT BY 1    MINVALUE 0    MAXVALUE 1000    CACHE 1);            public          postgres    false    220                         1259    16624    Periodic    TABLE         CREATE TABLE public."Periodic" (    "ID_periodic" integer NOT NULL,    "Titlu" text,    "ID_descriere fizica" integer NOT NULL,    "ID_cuvant cheie" integer NOT NULL,    "Periodicitate" text,    "Data ultimului numar" date);    DROP TABLE public."Periodic";       public         heap    postgres    false                         1259    16771    Periodic_ID_periodic_seq    SEQUENCE         ALTER TABLE public."Periodic" ALTER COLUMN "ID_periodic" ADD GENERATED ALWAYS AS IDENTITY (    SEQUENCE NAME public."Periodic_ID_periodic_seq"    START WITH 0    INCREMENT BY 1    MINVALUE 0    MAXVALUE 1000    CACHE 1);            public          postgres    false    228            9          0    16422     Articol    TABLE DATA           h   COPY public."Articol" ("ID_articol", "Titlu", "Publicat in", "ID_cuvant cheie", "ID_autor") FROM stdin;    public          postgres    false    218   [I       7          0    16408    Autor    TABLE DATA           \   COPY public."Autor" ("ID_autor", "Nume", "Pseudonim", "Observatii", "ID_carte") FROM stdin;    public          postgres    false    216    I       6          0    16401    Carte    TABLE DATA           w   COPY public."Carte" ("ID_carte", "Titlu", "An", "Cota", "ID_editura", "ID_descriere fizica", "ID_locatie") FROM stdin;    public          postgres    false    215   ,J       :          0    16429    Cuvant cheie    TABLE DATA           Q   COPY public."Cuvant cheie" ("ID_cuvant cheie", "Cuvant", "ID_carte") FROM stdin;    public          postgres    false    219    J       <          0    16443    Descriere fizica    TABLE DATA           l   COPY public."Descriere fizica" ("ID_descriere fizica", "Numar de pagini", "Dimensiuni", "Foto") FROM stdin;    public          postgres    false    221    J       8          0    16415     Editura    TABLE DATA           [   COPY public."Editura" ("ID_editura", "Nume", "Director general", "Adresa web") FROM stdin;    public          postgres    false    217   4K       ;          0    16436     Locatie    TABLE DATA           G   COPY public."Locatie" ("ID_locatie", "Denumire", "Adresa") FROM stdin;    public          postgres    false    220    K       C          0    16624    Periodic    TABLE DATA               COPY public."Periodic" ("ID_periodic", "Titlu", "ID_descriere fizica", "ID_cuvant cheie", "Periodicitate", "Data ultimului numar") FROM stdin;    public          postgres    false    228    K       N           0    0    Articol_ID_articol_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Articol_ID_articol_seq"', 5, true);          public          postgres    false    222            O           0    0    Autor_ID_autor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Autor_ID_autor_seq"', 9, true);          public          postgres    false    223            P           0    0    Carte_ID_carte_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Carte_ID_carte_seq"', 6, true);          public          postgres    false    224            Q           0    0     Cuvant cheie_ID_cuvant cheie_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Cuvant cheie_ID_cuvant cheie_seq"', 6, true);          public          postgres    false    229            R           0    0 (   Descriere fizica_ID_descriere fizica_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."Descriere fizica_ID_descriere fizica_seq"', 2, true);          public          postgres    false    225            S           0    0    Editura_ID_editura_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Editura_ID_editura_seq"', 2, true);          public          postgres    false    226            T           0    0    Locatie_ID_locatie_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Locatie_ID_locatie_seq"', 2, true);          public          postgres    false    227            U           0    0    Periodic_ID_periodic_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Periodic_ID_periodic_seq"', 5, true);          public          postgres    false    230                        2606    16494    Articol Articol_pkey    CONSTRAINT     `   ALTER TABLE ONLY public."Articol"    ADD CONSTRAINT "Articol_pkey" PRIMARY KEY ("ID_articol"); B   ALTER TABLE ONLY public."Articol" DROP CONSTRAINT "Articol_pkey";       public            postgres    false    218                        2606    16522    Autor Autor_pkey    CONSTRAINT     Z   ALTER TABLE ONLY public."Autor"    ADD CONSTRAINT "Autor_pkey" PRIMARY KEY ("ID_autor"); >   ALTER TABLE ONLY public."Autor" DROP CONSTRAINT "Autor_pkey";       public            postgres    false    216                        2606    16535    Carte Carte_pkey    CONSTRAINT     Z   ALTER TABLE ONLY public."Carte"    ADD CONSTRAINT "Carte_pkey" PRIMARY KEY ("ID_carte"); >   ALTER TABLE ONLY public."Carte" DROP CONSTRAINT "Carte_pkey";       public            postgres    false    215                        2606    16647    Cuvant cheie Cuvant cheie_pkey    CONSTRAINT     o   ALTER TABLE ONLY public."Cuvant cheie"    ADD CONSTRAINT "Cuvant cheie_pkey" PRIMARY KEY ("ID_cuvant cheie"); L   ALTER TABLE ONLY public."Cuvant cheie" DROP CONSTRAINT "Cuvant cheie_pkey";       public            postgres    false    219                        2606    16547 &   Descriere fizica Descriere fizica_pkey    CONSTRAINT     {   ALTER TABLE ONLY public."Descriere fizica"    ADD CONSTRAINT "Descriere fizica_pkey" PRIMARY KEY ("ID_descriere fizica"); T   ALTER TABLE ONLY public."Descriere fizica" DROP CONSTRAINT "Descriere fizica_pkey";       public            postgres    false    221                        2606    16556    Editura Editura_pkey    CONSTRAINT     `   ALTER TABLE ONLY public."Editura"    ADD CONSTRAINT "Editura_pkey" PRIMARY KEY ("ID_editura"); B   ALTER TABLE ONLY public."Editura" DROP CONSTRAINT "Editura_pkey";       public            postgres    false    217                        2606    16563    Locatie Locatie_pkey    CONSTRAINT     `   ALTER TABLE ONLY public."Locatie"    ADD CONSTRAINT "Locatie_pkey" PRIMARY KEY ("ID_locatie"); B   ALTER TABLE ONLY public."Locatie" DROP CONSTRAINT "Locatie_pkey";       public            postgres    false    220                        2606    16630    Periodic Periodic_pkey    CONSTRAINT     c   ALTER TABLE ONLY public."Periodic"    ADD CONSTRAINT "Periodic_pkey" PRIMARY KEY ("ID_periodic"); D   ALTER TABLE ONLY public."Periodic" DROP CONSTRAINT "Periodic_pkey";       public            postgres    false    228                        1259    16594    fki_ID_autor    INDEX     J   CREATE INDEX "fki_ID_autor" ON public."Articol" USING btree ("ID_autor"); "   DROP INDEX public."fki_ID_autor";       public            postgres    false    218                        1259    16600    fki_ID_carte    INDEX     H   CREATE INDEX "fki_ID_carte" ON public."Autor" USING btree ("ID_carte"); "   DROP INDEX public."fki_ID_carte";       public            postgres    false    216                        1259    16576    fki_ID_cuvant cheie    INDEX     X   CREATE INDEX "fki_ID_cuvant cheie" ON public."Articol" USING btree ("ID_cuvant cheie"); )   DROP INDEX public."fki_ID_cuvant cheie";       public            postgres    false    218                        1259    16612    fki_ID_descriere fizica    INDEX     ^   CREATE INDEX "fki_ID_descriere fizica" ON public."Carte" USING btree ("ID_descriere fizica"); -   DROP INDEX public."fki_ID_descriere fizica";       public            postgres    false    215                        1259    16606    fki_ID_editura    INDEX     L   CREATE INDEX "fki_ID_editura" ON public."Carte" USING btree ("ID_editura"); $   DROP INDEX public."fki_ID_editura";       public            postgres    false    215                        1259    16623    fki_ID_locatie    INDEX     L   CREATE INDEX "fki_ID_locatie" ON public."Carte" USING btree ("ID_locatie"); $   DROP INDEX public."fki_ID_locatie";       public            postgres    false    215                        2606    16589    Articol ID_autor    FK CONSTRAINT         ALTER TABLE ONLY public."Articol"    ADD CONSTRAINT "ID_autor" FOREIGN KEY ("ID_autor") REFERENCES public."Autor"("ID_autor") NOT VALID; >   ALTER TABLE ONLY public."Articol" DROP CONSTRAINT "ID_autor";       public          postgres    false    218    3215    216                        2606    16595    Autor ID_carte    FK CONSTRAINT         ALTER TABLE ONLY public."Autor"    ADD CONSTRAINT "ID_carte" FOREIGN KEY ("ID_carte") REFERENCES public."Carte"("ID_carte") NOT VALID; <   ALTER TABLE ONLY public."Autor" DROP CONSTRAINT "ID_carte";       public          postgres    false    216    215    3210                        2606    16613    Cuvant cheie ID_carte    FK CONSTRAINT         ALTER TABLE ONLY public."Cuvant cheie"    ADD CONSTRAINT "ID_carte" FOREIGN KEY ("ID_carte") REFERENCES public."Carte"("ID_carte") NOT VALID; C   ALTER TABLE ONLY public."Cuvant cheie" DROP CONSTRAINT "ID_carte";       public          postgres    false    3210    219    215                        2606    16648    Articol ID_cuvant cheie    FK CONSTRAINT         ALTER TABLE ONLY public."Articol"    ADD CONSTRAINT "ID_cuvant cheie" FOREIGN KEY ("ID_cuvant cheie") REFERENCES public."Cuvant cheie"("ID_cuvant cheie") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID; E   ALTER TABLE ONLY public."Articol" DROP CONSTRAINT "ID_cuvant cheie";       public          postgres    false    3224    218    219                        2606    16653    Periodic ID_cuvant cheie    FK CONSTRAINT         ALTER TABLE ONLY public."Periodic"    ADD CONSTRAINT "ID_cuvant cheie" FOREIGN KEY ("ID_cuvant cheie") REFERENCES public."Cuvant cheie"("ID_cuvant cheie") NOT VALID; F   ALTER TABLE ONLY public."Periodic" DROP CONSTRAINT "ID_cuvant cheie";       public          postgres    false    3224    219    228                        2606    16607    Carte ID_descriere fizica    FK CONSTRAINT         ALTER TABLE ONLY public."Carte"    ADD CONSTRAINT "ID_descriere fizica" FOREIGN KEY ("ID_descriere fizica") REFERENCES public."Descriere fizica"("ID_descriere fizica") NOT VALID; G   ALTER TABLE ONLY public."Carte" DROP CONSTRAINT "ID_descriere fizica";       public          postgres    false    215    221    3228                        2606    16631    Periodic ID_descriere fizica    FK CONSTRAINT         ALTER TABLE ONLY public."Periodic"    ADD CONSTRAINT "ID_descriere fizica" FOREIGN KEY ("ID_descriere fizica") REFERENCES public."Descriere fizica"("ID_descriere fizica") NOT VALID; J   ALTER TABLE ONLY public."Periodic" DROP CONSTRAINT "ID_descriere fizica";       public          postgres    false    3228    228    221                        2606    16601    Carte ID_editura    FK CONSTRAINT         ALTER TABLE ONLY public."Carte"    ADD CONSTRAINT "ID_editura" FOREIGN KEY ("ID_editura") REFERENCES public."Editura"("ID_editura") NOT VALID; >   ALTER TABLE ONLY public."Carte" DROP CONSTRAINT "ID_editura";       public          postgres    false    217    3218    215                        2606    16618    Carte ID_locatie    FK CONSTRAINT         ALTER TABLE ONLY public."Carte"    ADD CONSTRAINT "ID_locatie" FOREIGN KEY ("ID_locatie") REFERENCES public."Locatie"("ID_locatie") NOT VALID; >   ALTER TABLE ONLY public."Carte" DROP CONSTRAINT "ID_locatie";       public          postgres    false    3226    220    215            9   D   x Uɱ 0   D~; $ , D	   &i   ܯ   LM   r_ F X=   d     I~  O      7   m   x M 1 0   à:qN    ɋ   rlCp   |  & >   ݿs    P T5BM   y     < - e `,C  C  S 0 '   J       6   a   x }ͻ 0   %ȟ   4 HH4a s   ;  k /  h!.̰= d C  b ?> k fWsk`  -           ] X  H1      :   =   x -ƹ 0 X*  {) 6Hh  M $ h'  k&Mw]8COS/$Ko[  | "r       <   :   x 3 442 t  M + ,  4 t / 7 2   I %     H2 `c =...  ==      8   I   x 3  + M5 t ,JM. /RHO K-J 1 tL)J-NT(OM2 2 2 Pe  ʈ   C 1 *c =...  %       ;   0   x 3 tI +  ,J5 tL)J-N4 2  AŌ   b P1c =...   W      C   ]   x U = 0@ṹK%? =]D;A  dIx  ò ?*h     S 1 F  T    !ʌ#cgb 3   Y3$  Ⱥ n  Y l_   <g4     