PGDMP     
    '                y           postgres    13.3    13.3 ;               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
   TABLE DATA                 public          postgres    false    214            ?          0    90398 
   collection 
   TABLE DATA                 public          postgres    false    218            ?          0    90350    genre 
   TABLE DATA                 public          postgres    false    210                      0    106758    genre_musician 
   TABLE DATA                 public          postgres    false    221            ?          0    90360    musician 
   TABLE DATA                 public          postgres    false    212                       0    106728    musician_album 
   TABLE DATA                 public          postgres    false    219            ?          0    90382    track 
   TABLE DATA                 public          postgres    false    216                      0    106743    track_collection 
   TABLE DATA                 public          postgres    false    220                       0    0    album_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.album_id_seq', 33, true);
          public          postgres    false    213                       0    0    collection_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.collection_id_seq', 9, true);
          public          postgres    false    217                       0    0    genre_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.genre_id_seq', 5, true);
          public          postgres    false    209                       0    0    musician_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.musician_id_seq', 8, true);
          public          postgres    false    211                       0    0    track_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.track_id_seq', 39, true);
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
       public          postgres    false    2914    216    214            ?   ?  x????NQ??>?qe????Q?t?
??a???0??%?-?k??4nL????t?]???5?+??
}??;?e/?;??????ΙҖ?/W??UنN\????}??6v?><rR?P????˹\H???:??Ε??tI?ÂTY??@??v?F??֏?q?Un:?b?Z$?*g????	Ѩ?x?w?޺Dz?8?;?J???Su??8?+???٘e??uL^?_??a??t???R+ɥ????6?,?rPd???ޟ??l͖?߲UN?<?<??'??????R??.?"g?j`6????U>?P?RiqX??(?k-?n?? g?-G?ާ?۰?6Y?VO\l{?,O+)?0??=`P?5B??	??VF	=?D??!<?O???&;?~ ??qHD??^???K??l??l4L?Gj??? ??y?M0V-r??4?E??j??ƢO????U??cl??'?qe?p??.??cuJ??? ??	???{??[???Y?Ɖ:S?@??1?ꌫW~N???L?*??fh???-?HCU??5??d???=??E??a ?-??ռ??)?ev$??~?7?Ed?V?qH?b??D???4???,?J+? ???7?[u??,Vċ?Ȟ?Y}?<_??iMw?Uܞf??E???????%eE???[??wD?:?_?=?B?6?b?a?,?G6EW??J??S???V{?@|??x?,p_?-????k???_???
      ?   Q  x????O?@??O?nhڂ
?B?&
	?p???F???`\?DGG?? ?~??7?i?q9?4?]?~}????]?????:trz(x?DB? ?QH??}ۥ?DE;佁Oe?a2&7
{?X??aX??G???Q?*Qs\5Ko?4?'??&??4k?`5??ܨ???9???*??}????/?VO???o?????+֌??	?l??mH?b??e?l9?-?{??????&?.???????9??q4?L??Ǆ?Ŋ?-nAl4?[MP??,??/dfK?Цj??>C??@?2y}.?Y?????????u??A??,???ɬ?P????????0??7Dg      ?   ?   x???v
Q???W((M??L?KO?+JUs?	uV?0?QP??pa߅]???\?????w\?pa??F???Di2?q??b#PӮ;.lU??????[?&u??_?
??{aQF? ???h?~??}?.???6`??~?{.6_?4?%?<S?y????R?? ???         d   x???v
Q???W((M??L?KO?+J??--?L?L?Ss?	uV?0?Q0Դ??$E???H?`N?#c?4?(????DG??$???????? p??&      ?   ?   x???v
Q???W((M??L??--?L?L?Ss?	uV?0?QP?,.I?U?OSpTp?/?S״??$B?1P???/? qӅ?^l??H?$??	s/l?????ۀ???܍`c?^?@?A?@?\?2?s??a?ᔚX??ZL?s??????Ģ?Ģ
b?Y?|9??=?????ǽ?j7jwt?wqi?? +??          ?   x????
?P???Wq??9?Ѫ?!?چ?:????|??^??0??t??>F????}?y??i?q???=???????lw?R?/IG@N??  P????????F??g*<??.L?v,??'????(?z??Yro??`?*??K???	?\?5?`?%X??kn³???n?Y??E?????H???k?      ?   ?  x????n7??~???)?
Z?$;?ɉ?ڭ?????."/?]?]??8H?"?[Q?A??*'V??v?
?Wȓd???c?"A???C???p??_??fwp??G?tX??>???[??p+??$v????e?u-jЬG?ȯ?]????*?Ĕ???~??Aw??:B?D??6J(?J??h??R?x?&fsD?(??(??u;?V?V?P$??P??????ܕ?T??O????3w???;7sW^?????[&???C?;B??????̽?^J??`?#????Қ]e?!l??4?c-W8??)6T>?55?|?[?t?XT??ky??B5z?????0???
$????ܙ?]??x?}?b$"??cxP????M?"5???O?sT???k?NE,?""?c??$??0H??.y?Uob?#a???#??????KJ?T?^????+??4?>???Y?7n???g7B?]"?gn*?E,0??~??K7wWձ??59????N????Eu\=%??ӪN?)???zV?\7?1u?????;s?(}??d??.,Y ?ф??m??js???z??@z,????l^=?m???Nߣ?'?s<wk???O?O?(?D????h??Y???O?:˛S?K???w??:B%<??;??_c????!>x??Cn$?r?$'?Q??5?M?*4??L?????I?)$?b;-ȗ=s??O\o??%?rٛ??F:/l^??H?ejcb[?I????*?"_?wl?Bt???U??H??'3?^?&???ơ?#?1?kzSt?Mth????????B/??0Hmv?????t??0ʨ]0c??Uk??TV?]5?~?Z?MO????????f:C?/?RdNߣ??%?-^?G?å`?{??N??Y??	?6???xzsS??8:iaÔ?)????#?@ttZ??kFnP4~?????'d?         ?   x????
?@???\?Y|?????j?b ??F.?!#??S?N?pxO????!?]???????>????1?>N????x?T-6&??A?x?%I?k?5Z??F?gɜ???$1?7?	<k4o??K??????uG??w??      ;               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
   TABLE DATA                 public          postgres    false    214   ?       ?          0    90398 
   collection 
   TABLE DATA                 public          postgres    false    218   ?       ?          0    90350    genre 
   TABLE DATA                 public          postgres    false    210                    0    106758    genre_musician 
   TABLE DATA                 public          postgres    false    221   ?       ?          0    90360    musician 
   TABLE DATA                 public          postgres    false    212   7                  0    106728    musician_album 
   TABLE DATA                 public          postgres    false    219          ?          0    90382    track 
   TABLE DATA                 public          postgres    false    216   ?                 0    106743    track_collection 
   TABLE DATA                 public          postgres    false    220   ?	                  0    0    album_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.album_id_seq', 33, true);
          public          postgres    false    213                       0    0    collection_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.collection_id_seq', 9, true);
          public          postgres    false    217                       0    0    genre_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.genre_id_seq', 5, true);
          public          postgres    false    209                       0    0    musician_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.musician_id_seq', 8, true);
          public          postgres    false    211                       0    0    track_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.track_id_seq', 39, true);
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