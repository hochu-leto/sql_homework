PGDMP                         y           postgres    13.3    13.3 ;               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13442    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                postgres    false            	           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3080                        2615    90347    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                tim    false            ?            1259    90370    album    TABLE     ?   CREATE TABLE public.album (
    id integer NOT NULL,
    name text NOT NULL,
    year integer NOT NULL,
    CONSTRAINT album_year_check CHECK (((year > 1850) AND (year < 2022)))
);
    DROP TABLE public.album;
       public         heap    postgres    false    5            ?            1259    90368    album_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.album_id_seq;
       public          postgres    false    5    214            
           0    0    album_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.album_id_seq OWNED BY public.album.id;
          public          postgres    false    213            ?            1259    90398 
   collection    TABLE     ?   CREATE TABLE public.collection (
    id integer NOT NULL,
    name text NOT NULL,
    year integer NOT NULL,
    CONSTRAINT collection_year_check CHECK (((year > 1850) AND (year < 2022)))
);
    DROP TABLE public.collection;
       public         heap    postgres    false    5            ?            1259    90396    collection_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.collection_id_seq;
       public          postgres    false    218    5                       0    0    collection_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.collection_id_seq OWNED BY public.collection.id;
          public          postgres    false    217            ?            1259    90350    genre    TABLE     `   CREATE TABLE public.genre (
    id integer NOT NULL,
    name character varying(40) NOT NULL
);
    DROP TABLE public.genre;
       public         heap    postgres    false    5            ?            1259    90348    genre_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.genre_id_seq;
       public          postgres    false    210    5                       0    0    genre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;
          public          postgres    false    209            ?            1259    106758    genre_musician    TABLE     h   CREATE TABLE public.genre_musician (
    id_genre integer NOT NULL,
    id_musician integer NOT NULL
);
 "   DROP TABLE public.genre_musician;
       public         heap    postgres    false    5            ?            1259    90360    musician    TABLE     c   CREATE TABLE public.musician (
    id integer NOT NULL,
    name character varying(40) NOT NULL
);
    DROP TABLE public.musician;
       public         heap    postgres    false    5            ?            1259    106728    musician_album    TABLE     h   CREATE TABLE public.musician_album (
    id_musician integer NOT NULL,
    id_album integer NOT NULL
);
 "   DROP TABLE public.musician_album;
       public         heap    postgres    false    5            ?            1259    90358    musician_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.musician_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.musician_id_seq;
       public          postgres    false    212    5                       0    0    musician_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.musician_id_seq OWNED BY public.musician.id;
          public          postgres    false    211            ?            1259    90382    track    TABLE     ?   CREATE TABLE public.track (
    id integer NOT NULL,
    name text NOT NULL,
    lenght numeric(4,2) NOT NULL,
    id_album integer NOT NULL
);
    DROP TABLE public.track;
       public         heap    postgres    false    5            ?            1259    106743    track_collection    TABLE     l   CREATE TABLE public.track_collection (
    id_track integer NOT NULL,
    id_collection integer NOT NULL
);
 $   DROP TABLE public.track_collection;
       public         heap    postgres    false    5            ?            1259    90380    track_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.track_id_seq;
       public          postgres    false    5    216                       0    0    track_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.track_id_seq OWNED BY public.track.id;
          public          postgres    false    215            T           2604    90373    album id    DEFAULT     d   ALTER TABLE ONLY public.album ALTER COLUMN id SET DEFAULT nextval('public.album_id_seq'::regclass);
 7   ALTER TABLE public.album ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            W           2604    90401    collection id    DEFAULT     n   ALTER TABLE ONLY public.collection ALTER COLUMN id SET DEFAULT nextval('public.collection_id_seq'::regclass);
 <   ALTER TABLE public.collection ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            R           2604    90353    genre id    DEFAULT     d   ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);
 7   ALTER TABLE public.genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            S           2604    90363    musician id    DEFAULT     j   ALTER TABLE ONLY public.musician ALTER COLUMN id SET DEFAULT nextval('public.musician_id_seq'::regclass);
 :   ALTER TABLE public.musician ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            V           2604    90385    track id    DEFAULT     d   ALTER TABLE ONLY public.track ALTER COLUMN id SET DEFAULT nextval('public.track_id_seq'::regclass);
 7   ALTER TABLE public.track ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            ?          0    90370    album 
   TABLE DATA           /   COPY public.album (id, name, year) FROM stdin;
    public          postgres    false    214            ?          0    90398 
   collection 
   TABLE DATA           4   COPY public.collection (id, name, year) FROM stdin;
    public          postgres    false    218            ?          0    90350    genre 
   TABLE DATA           )   COPY public.genre (id, name) FROM stdin;
    public          postgres    false    210                      0    106758    genre_musician 
   TABLE DATA           ?   COPY public.genre_musician (id_genre, id_musician) FROM stdin;
    public          postgres    false    221            ?          0    90360    musician 
   TABLE DATA           ,   COPY public.musician (id, name) FROM stdin;
    public          postgres    false    212                       0    106728    musician_album 
   TABLE DATA           ?   COPY public.musician_album (id_musician, id_album) FROM stdin;
    public          postgres    false    219            ?          0    90382    track 
   TABLE DATA           ;   COPY public.track (id, name, lenght, id_album) FROM stdin;
    public          postgres    false    216                      0    106743    track_collection 
   TABLE DATA           C   COPY public.track_collection (id_track, id_collection) FROM stdin;
    public          postgres    false    220                       0    0    album_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.album_id_seq', 32, true);
          public          postgres    false    213                       0    0    collection_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.collection_id_seq', 8, true);
          public          postgres    false    217                       0    0    genre_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.genre_id_seq', 5, true);
          public          postgres    false    209                       0    0    musician_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.musician_id_seq', 8, true);
          public          postgres    false    211                       0    0    track_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.track_id_seq', 37, true);
          public          postgres    false    215            b           2606    90379    album album_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.album DROP CONSTRAINT album_pkey;
       public            postgres    false    214            f           2606    90407    collection collection_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.collection
    ADD CONSTRAINT collection_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.collection DROP CONSTRAINT collection_pkey;
       public            postgres    false    218            Z           2606    90357    genre genre_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_name_key;
       public            postgres    false    210            \           2606    90355    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    210            l           2606    106762    genre_musician gm_pk 
   CONSTRAINT     e   ALTER TABLE ONLY public.genre_musician
    ADD CONSTRAINT gm_pk PRIMARY KEY (id_genre, id_musician);
 >   ALTER TABLE ONLY public.genre_musician DROP CONSTRAINT gm_pk;
       public            postgres    false    221    221            h           2606    106732    musician_album ma_pk 
   CONSTRAINT     e   ALTER TABLE ONLY public.musician_album
    ADD CONSTRAINT ma_pk PRIMARY KEY (id_musician, id_album);
 >   ALTER TABLE ONLY public.musician_album DROP CONSTRAINT ma_pk;
       public            postgres    false    219    219            ^           2606    90367    musician musician_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.musician
    ADD CONSTRAINT musician_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.musician DROP CONSTRAINT musician_name_key;
       public            postgres    false    212            `           2606    90365    musician musician_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.musician
    ADD CONSTRAINT musician_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.musician DROP CONSTRAINT musician_pkey;
       public            postgres    false    212            j           2606    106747    track_collection tc_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.track_collection
    ADD CONSTRAINT tc_pk PRIMARY KEY (id_track, id_collection);
 @   ALTER TABLE ONLY public.track_collection DROP CONSTRAINT tc_pk;
       public            postgres    false    220    220            d           2606    90390    track track_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.track DROP CONSTRAINT track_pkey;
       public            postgres    false    216            r           2606    106763 +   genre_musician genre_musician_id_genre_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.genre_musician
    ADD CONSTRAINT genre_musician_id_genre_fkey FOREIGN KEY (id_genre) REFERENCES public.genre(id);
 U   ALTER TABLE ONLY public.genre_musician DROP CONSTRAINT genre_musician_id_genre_fkey;
       public          postgres    false    2908    221    210            s           2606    106768 .   genre_musician genre_musician_id_musician_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.genre_musician
    ADD CONSTRAINT genre_musician_id_musician_fkey FOREIGN KEY (id_musician) REFERENCES public.musician(id);
 X   ALTER TABLE ONLY public.genre_musician DROP CONSTRAINT genre_musician_id_musician_fkey;
       public          postgres    false    212    221    2912            o           2606    106738 +   musician_album musician_album_id_album_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.musician_album
    ADD CONSTRAINT musician_album_id_album_fkey FOREIGN KEY (id_album) REFERENCES public.album(id);
 U   ALTER TABLE ONLY public.musician_album DROP CONSTRAINT musician_album_id_album_fkey;
       public          postgres    false    219    214    2914            n           2606    106733 .   musician_album musician_album_id_musician_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.musician_album
    ADD CONSTRAINT musician_album_id_musician_fkey FOREIGN KEY (id_musician) REFERENCES public.musician(id);
 X   ALTER TABLE ONLY public.musician_album DROP CONSTRAINT musician_album_id_musician_fkey;
       public          postgres    false    219    2912    212            q           2606    106753 4   track_collection track_collection_id_collection_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.track_collection
    ADD CONSTRAINT track_collection_id_collection_fkey FOREIGN KEY (id_collection) REFERENCES public.collection(id);
 ^   ALTER TABLE ONLY public.track_collection DROP CONSTRAINT track_collection_id_collection_fkey;
       public          postgres    false    218    220    2918            p           2606    106748 /   track_collection track_collection_id_track_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.track_collection
    ADD CONSTRAINT track_collection_id_track_fkey FOREIGN KEY (id_track) REFERENCES public.track(id);
 Y   ALTER TABLE ONLY public.track_collection DROP CONSTRAINT track_collection_id_track_fkey;
       public          postgres    false    216    220    2916            m           2606    90391    track track_id_album_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_id_album_fkey FOREIGN KEY (id_album) REFERENCES public.album(id);
 C   ALTER TABLE ONLY public.track DROP CONSTRAINT track_id_album_fkey;
       public          postgres    false    2914    216    214            ?   g  x?-SMO?@=?????*??I?#?M%h??r?e?,Ī???????BT???????ЈP???????H3of????Z???)?6LD????TI?UW?$?\3?>?Y/?̘???lY??Iv)<??^g?	?1?8?{????-?3{?w8?k?̭???????7N?1N?ڞ??	5?n&???	??#ڽ|?b?WT??5??!M??c?"?%h???j???S	ϓݾ{R=??cM??/P6???NG????'ن6????~??l??a????X??lW?????ơ?'?V????Ɂ?yw?]?+??\?XL3? ??M?a]u?P?Q?X?U?P????Q??Q:@F\?S???u????N?L?C??ɘ????????q1?B&??????ԑ7???c?N??)?2??????w!ᵣ?\J??qj?h???Й#"ğ??@T?P?u?3{nπ?'?f?ˀ??E??tsf????K?5֤?`;O??u14?Yg?i?}?"0?T|??n߉??lT???Q^T???????2d/?C???>?JjD,6Z???OJXJ;???Hr?c[??????k???g?I??o??}??ai??S?`???&??'????A?      ?     x?e??N?0?g?)??h3??B"Y"0??4?bK?X?v@???T*??g?~#??	!˲?=?9?7?J?'9u?PKi]???? ???ny?3??{??{&~繛???dW?????Wğ????ޢ\\??A8????}?히??L7z?v#??1a?rOt????/?ũ>/?悎??R[7Z?j?TY??By ??dyd????KCP/?'?Ba?ܖpv(+??#?˾Ho?U:??%?U?'f?p?#?????}      ?   i   x???	?0?yUX????1zP?`+?`??u??qfg?2??F78$??$?.j??B??Ӌ????5!Hop2*??3????8*<????(?a?Qd?E?PM~         ,   x?3?4?2?4b3 6?2?4?2?4?2?4?2?M9-?b???? h1?      ?   ?   x?3??,.I?U?OSpTp?/??2漰?b?? n????ދ?v??\&??^?pa˅???
&???{/l?2?t??L?M?2?tJM,?I-?2??L?H,JQ?M,?????0?xD??????rq::??8s??qqq ?0E?          Q   x?-???0????????^??yp?E?m?Fr???A???r?8?'H?B?6r;p1%F?L,I?&?????> >D??      ?     x?-SMoI=W????K??=_?1?e#6	?*.?q?pf?L;YsJ??])?VH $??@Y????????z?ˌ??U??W?FF?ҩ??_/?L%??H???????K{F~ˋ?\?kM??mR?Z?T*뙵c#??̎?#
8??Qj͞)e?Hߦ?5C
ZQD!G??w?~ԯ???'?????p??+?? ??܇? ?#d>???a?>?p??P?Z??b7?ٶ??é?+?p?Vd--???N??x[?f?3??[??.?????????j?R?Zf???T??%???+M??B???{??A@J?
?~?B.d??NZ??UHE?t??;2?d???V??
??C??Al??Q????v?N*?"?-*?.??Dx?f?Ч~???%q?P????bR	??b?n???c??E??.?O?v?q}?s?	??'?b^??뿚??`?]?m(?!g?%'(??Z ?]?m???к?w??9?j??!?5?N?֋N????Η???}C?s?}?ע?0<?#4??X???????`?X???H}?ݩ?q?Ƨw??w?{???N??tYzc?VFV?|?ʯ Q?t?:??Y???+?????c?	v3ɇ??l9?~??Hyh?q??xg?p?u????ĥ?%x~?mh??j?̪"?~??x*
ڌ??1ñ?ނ}|H?}c?????v?a???l;???ة???bm
>A??{???ɬ??3?f???F?3?r????}?R??kx?_fB1??Bv?R??j?x??Z???Δ?         4   x?ı?0???<??zQ?u?`7??-??V???zq???ɘ???????aW      ;               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13442    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                postgres    false            	           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3080                        2615    90347    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                tim    false            ?            1259    90370    album    TABLE     ?   CREATE TABLE public.album (
    id integer NOT NULL,
    name text NOT NULL,
    year integer NOT NULL,
    CONSTRAINT album_year_check CHECK (((year > 1850) AND (year < 2022)))
);
    DROP TABLE public.album;
       public         heap    postgres    false    5            ?            1259    90368    album_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.album_id_seq;
       public          postgres    false    5    214            
           0    0    album_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.album_id_seq OWNED BY public.album.id;
          public          postgres    false    213            ?            1259    90398 
   collection    TABLE     ?   CREATE TABLE public.collection (
    id integer NOT NULL,
    name text NOT NULL,
    year integer NOT NULL,
    CONSTRAINT collection_year_check CHECK (((year > 1850) AND (year < 2022)))
);
    DROP TABLE public.collection;
       public         heap    postgres    false    5            ?            1259    90396    collection_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.collection_id_seq;
       public          postgres    false    218    5                       0    0    collection_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.collection_id_seq OWNED BY public.collection.id;
          public          postgres    false    217            ?            1259    90350    genre    TABLE     `   CREATE TABLE public.genre (
    id integer NOT NULL,
    name character varying(40) NOT NULL
);
    DROP TABLE public.genre;
       public         heap    postgres    false    5            ?            1259    90348    genre_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.genre_id_seq;
       public          postgres    false    210    5                       0    0    genre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;
          public          postgres    false    209            ?            1259    106758    genre_musician    TABLE     h   CREATE TABLE public.genre_musician (
    id_genre integer NOT NULL,
    id_musician integer NOT NULL
);
 "   DROP TABLE public.genre_musician;
       public         heap    postgres    false    5            ?            1259    90360    musician    TABLE     c   CREATE TABLE public.musician (
    id integer NOT NULL,
    name character varying(40) NOT NULL
);
    DROP TABLE public.musician;
       public         heap    postgres    false    5            ?            1259    106728    musician_album    TABLE     h   CREATE TABLE public.musician_album (
    id_musician integer NOT NULL,
    id_album integer NOT NULL
);
 "   DROP TABLE public.musician_album;
       public         heap    postgres    false    5            ?            1259    90358    musician_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.musician_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.musician_id_seq;
       public          postgres    false    212    5                       0    0    musician_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.musician_id_seq OWNED BY public.musician.id;
          public          postgres    false    211            ?            1259    90382    track    TABLE     ?   CREATE TABLE public.track (
    id integer NOT NULL,
    name text NOT NULL,
    lenght numeric(4,2) NOT NULL,
    id_album integer NOT NULL
);
    DROP TABLE public.track;
       public         heap    postgres    false    5            ?            1259    106743    track_collection    TABLE     l   CREATE TABLE public.track_collection (
    id_track integer NOT NULL,
    id_collection integer NOT NULL
);
 $   DROP TABLE public.track_collection;
       public         heap    postgres    false    5            ?            1259    90380    track_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.track_id_seq;
       public          postgres    false    5    216                       0    0    track_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.track_id_seq OWNED BY public.track.id;
          public          postgres    false    215            T           2604    90373    album id    DEFAULT     d   ALTER TABLE ONLY public.album ALTER COLUMN id SET DEFAULT nextval('public.album_id_seq'::regclass);
 7   ALTER TABLE public.album ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            W           2604    90401    collection id    DEFAULT     n   ALTER TABLE ONLY public.collection ALTER COLUMN id SET DEFAULT nextval('public.collection_id_seq'::regclass);
 <   ALTER TABLE public.collection ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            R           2604    90353    genre id    DEFAULT     d   ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);
 7   ALTER TABLE public.genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            S           2604    90363    musician id    DEFAULT     j   ALTER TABLE ONLY public.musician ALTER COLUMN id SET DEFAULT nextval('public.musician_id_seq'::regclass);
 :   ALTER TABLE public.musician ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            V           2604    90385    track id    DEFAULT     d   ALTER TABLE ONLY public.track ALTER COLUMN id SET DEFAULT nextval('public.track_id_seq'::regclass);
 7   ALTER TABLE public.track ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            ?          0    90370    album 
   TABLE DATA           /   COPY public.album (id, name, year) FROM stdin;
    public          postgres    false    214   z        ?          0    90398 
   collection 
   TABLE DATA           4   COPY public.collection (id, name, year) FROM stdin;
    public          postgres    false    218   q       ?          0    90350    genre 
   TABLE DATA           )   COPY public.genre (id, name) FROM stdin;
    public          postgres    false    210                    0    106758    genre_musician 
   TABLE DATA           ?   COPY public.genre_musician (id_genre, id_musician) FROM stdin;
    public          postgres    false    221   s        ?          0    90360    musician 
   TABLE DATA           ,   COPY public.musician (id, name) FROM stdin;
    public          postgres    false    212   6                   0    106728    musician_album 
   TABLE DATA           ?   COPY public.musician_album (id_musician, id_album) FROM stdin;
    public          postgres    false    219   ?        ?          0    90382    track 
   TABLE DATA           ;   COPY public.track (id, name, lenght, id_album) FROM stdin;
    public          postgres    false    216   [                  0    106743    track_collection 
   TABLE DATA           C   COPY public.track_collection (id_track, id_collection) FROM stdin;
    public          postgres    false    220                     0    0    album_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.album_id_seq', 32, true);
          public          postgres    false    213                       0    0    collection_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.collection_id_seq', 8, true);
          public          postgres    false    217                       0    0    genre_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.genre_id_seq', 5, true);
          public          postgres    false    209                       0    0    musician_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.musician_id_seq', 8, true);
          public          postgres    false    211                       0    0    track_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.track_id_seq', 37, true);
          public          postgres    false    215            b           2606    90379    album album_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.album DROP CONSTRAINT album_pkey;
       public            postgres    false    214            f           2606    90407    collection collection_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.collection
    ADD CONSTRAINT collection_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.collection DROP CONSTRAINT collection_pkey;
       public            postgres    false    218            Z           2606    90357    genre genre_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_name_key;
       public            postgres    false    210            \           2606    90355    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    210            l           2606    106762    genre_musician gm_pk 
   CONSTRAINT     e   ALTER TABLE ONLY public.genre_musician
    ADD CONSTRAINT gm_pk PRIMARY KEY (id_genre, id_musician);
 >   ALTER TABLE ONLY public.genre_musician DROP CONSTRAINT gm_pk;
       public            postgres    false    221    221            h           2606    106732    musician_album ma_pk 
   CONSTRAINT     e   ALTER TABLE ONLY public.musician_album
    ADD CONSTRAINT ma_pk PRIMARY KEY (id_musician, id_album);
 >   ALTER TABLE ONLY public.musician_album DROP CONSTRAINT ma_pk;
       public            postgres    false    219    219            ^           2606    90367    musician musician_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.musician
    ADD CONSTRAINT musician_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.musician DROP CONSTRAINT musician_name_key;
       public            postgres    false    212            `           2606    90365    musician musician_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.musician
    ADD CONSTRAINT musician_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.musician DROP CONSTRAINT musician_pkey;
       public            postgres    false    212            j           2606    106747    track_collection tc_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.track_collection
    ADD CONSTRAINT tc_pk PRIMARY KEY (id_track, id_collection);
 @   ALTER TABLE ONLY public.track_collection DROP CONSTRAINT tc_pk;
       public            postgres    false    220    220            d           2606    90390    track track_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.track DROP CONSTRAINT track_pkey;
       public            postgres    false    216            r           2606    106763 +   genre_musician genre_musician_id_genre_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.genre_musician
    ADD CONSTRAINT genre_musician_id_genre_fkey FOREIGN KEY (id_genre) REFERENCES public.genre(id);
 U   ALTER TABLE ONLY public.genre_musician DROP CONSTRAINT genre_musician_id_genre_fkey;
       public          postgres    false    2908    221    210            s           2606    106768 .   genre_musician genre_musician_id_musician_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.genre_musician
    ADD CONSTRAINT genre_musician_id_musician_fkey FOREIGN KEY (id_musician) REFERENCES public.musician(id);
 X   ALTER TABLE ONLY public.genre_musician DROP CONSTRAINT genre_musician_id_musician_fkey;
       public          postgres    false    212    221    2912            o           2606    106738 +   musician_album musician_album_id_album_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.musician_album
    ADD CONSTRAINT musician_album_id_album_fkey FOREIGN KEY (id_album) REFERENCES public.album(id);
 U   ALTER TABLE ONLY public.musician_album DROP CONSTRAINT musician_album_id_album_fkey;
       public          postgres    false    219    214    2914            n           2606    106733 .   musician_album musician_album_id_musician_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.musician_album
    ADD CONSTRAINT musician_album_id_musician_fkey FOREIGN KEY (id_musician) REFERENCES public.musician(id);
 X   ALTER TABLE ONLY public.musician_album DROP CONSTRAINT musician_album_id_musician_fkey;
       public          postgres    false    219    2912    212            q           2606    106753 4   track_collection track_collection_id_collection_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.track_collection
    ADD CONSTRAINT track_collection_id_collection_fkey FOREIGN KEY (id_collection) REFERENCES public.collection(id);
 ^   ALTER TABLE ONLY public.track_collection DROP CONSTRAINT track_collection_id_collection_fkey;
       public          postgres    false    218    220    2918            p           2606    106748 /   track_collection track_collection_id_track_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.track_collection
    ADD CONSTRAINT track_collection_id_track_fkey FOREIGN KEY (id_track) REFERENCES public.track(id);
 Y   ALTER TABLE ONLY public.track_collection DROP CONSTRAINT track_collection_id_track_fkey;
       public          postgres    false    216    220    2916            m           2606    90391    track track_id_album_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_id_album_fkey FOREIGN KEY (id_album) REFERENCES public.album(id);
 C   ALTER TABLE ONLY public.track DROP CONSTRAINT track_id_album_fkey;
       public          postgres    false    2914    216    214           