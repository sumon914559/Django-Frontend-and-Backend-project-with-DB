PGDMP     2                    y            pms2021    13.5    13.5 ?    g           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            h           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            i           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            j           1262    16563    pms2021    DATABASE     k   CREATE DATABASE pms2021 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE pms2021;
                postgres    false            ?            1259    16595 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    16593    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            k           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    16605    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    16603    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            l           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    16587    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    16585    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            m           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    16613 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    16623    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    16621    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            n           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            ?            1259    16611    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            o           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            ?            1259    16631    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    16629 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            p           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            ?            1259    16691    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    16689    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            q           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            ?            1259    16577    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    16575    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            r           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    16566    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16564    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            s           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    16722    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    24773    products_products    TABLE     u  CREATE TABLE public.products_products (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    seral_no character varying(200) NOT NULL,
    po_no character varying(200) NOT NULL,
    price numeric(10,2) NOT NULL,
    description text NOT NULL,
    status integer NOT NULL,
    create_on timestamp with time zone NOT NULL,
    category_id bigint NOT NULL
);
 %   DROP TABLE public.products_products;
       public         heap    postgres    false            ?            1259    24784    products_products_assing    TABLE     ?  CREATE TABLE public.products_products_assing (
    id bigint NOT NULL,
    aaf_no character varying(255) NOT NULL,
    office_location character varying(200) NOT NULL,
    asset_code character varying(200) NOT NULL,
    status integer NOT NULL,
    remarks text NOT NULL,
    assign_date timestamp with time zone NOT NULL,
    create_on timestamp with time zone NOT NULL,
    emp_id_id bigint NOT NULL,
    products_id_id bigint NOT NULL
);
 ,   DROP TABLE public.products_products_assing;
       public         heap    postgres    false            ?            1259    24782    products_products_assing_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_products_assing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.products_products_assing_id_seq;
       public          postgres    false    226            t           0    0    products_products_assing_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.products_products_assing_id_seq OWNED BY public.products_products_assing.id;
          public          postgres    false    225            ?            1259    24771    products_products_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.products_products_id_seq;
       public          postgres    false    224            u           0    0    products_products_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.products_products_id_seq OWNED BY public.products_products.id;
          public          postgres    false    223            ?            1259    24757    settings_category    TABLE     l   CREATE TABLE public.settings_category (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
 %   DROP TABLE public.settings_category;
       public         heap    postgres    false            ?            1259    24755    settings_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.settings_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.settings_category_id_seq;
       public          postgres    false    220            v           0    0    settings_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.settings_category_id_seq OWNED BY public.settings_category.id;
          public          postgres    false    219            ?            1259    24765    settings_employee    TABLE     +  CREATE TABLE public.settings_employee (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    office_id character varying(100) NOT NULL,
    designation character varying(100) NOT NULL,
    mobile_no character varying(20) NOT NULL,
    create_on timestamp with time zone NOT NULL
);
 %   DROP TABLE public.settings_employee;
       public         heap    postgres    false            ?            1259    24763    settings_employee_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.settings_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.settings_employee_id_seq;
       public          postgres    false    222            w           0    0    settings_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.settings_employee_id_seq OWNED BY public.settings_employee.id;
          public          postgres    false    221            w           2604    16598    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            x           2604    16608    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            v           2604    16590    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            y           2604    16616    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            z           2604    16626    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            {           2604    16634    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            |           2604    16694    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            u           2604    16580    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            t           2604    16569    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            ?           2604    24776    products_products id    DEFAULT     |   ALTER TABLE ONLY public.products_products ALTER COLUMN id SET DEFAULT nextval('public.products_products_id_seq'::regclass);
 C   ALTER TABLE public.products_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    24787    products_products_assing id    DEFAULT     ?   ALTER TABLE ONLY public.products_products_assing ALTER COLUMN id SET DEFAULT nextval('public.products_products_assing_id_seq'::regclass);
 J   ALTER TABLE public.products_products_assing ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ~           2604    24760    settings_category id    DEFAULT     |   ALTER TABLE ONLY public.settings_category ALTER COLUMN id SET DEFAULT nextval('public.settings_category_id_seq'::regclass);
 C   ALTER TABLE public.settings_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220                       2604    24768    settings_employee id    DEFAULT     |   ALTER TABLE ONLY public.settings_employee ALTER COLUMN id SET DEFAULT nextval('public.settings_employee_id_seq'::regclass);
 C   ALTER TABLE public.settings_employee ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            Q          0    16595 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ұ       S          0    16605    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ??       O          0    16587    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ?       U          0    16613 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   ??       W          0    16623    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   ܴ       Y          0    16631    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ??       [          0    16691    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   ?       M          0    16577    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   6?       K          0    16566    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ƶ       \          0    16722    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218   ??       b          0    24773    products_products 
   TABLE DATA           z   COPY public.products_products (id, name, seral_no, po_no, price, description, status, create_on, category_id) FROM stdin;
    public          postgres    false    224   ??       d          0    24784    products_products_assing 
   TABLE DATA           ?   COPY public.products_products_assing (id, aaf_no, office_location, asset_code, status, remarks, assign_date, create_on, emp_id_id, products_id_id) FROM stdin;
    public          postgres    false    226   ??       ^          0    24757    settings_category 
   TABLE DATA           5   COPY public.settings_category (id, name) FROM stdin;
    public          postgres    false    220   N?       `          0    24765    settings_employee 
   TABLE DATA           c   COPY public.settings_employee (id, name, office_id, designation, mobile_no, create_on) FROM stdin;
    public          postgres    false    222   ??       x           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            y           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            z           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    204            {           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            |           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    210            }           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            ~           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 10, true);
          public          postgres    false    216                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    202            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    200            ?           0    0    products_products_assing_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.products_products_assing_id_seq', 1, true);
          public          postgres    false    225            ?           0    0    products_products_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.products_products_id_seq', 2, true);
          public          postgres    false    223            ?           0    0    settings_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.settings_category_id_seq', 3, true);
          public          postgres    false    219            ?           0    0    settings_employee_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.settings_employee_id_seq', 2, true);
          public          postgres    false    221            ?           2606    16720    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ?           2606    16647 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    16610 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            ?           2606    16600    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            ?           2606    16638 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            ?           2606    16592 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ?           2606    16628 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            ?           2606    16662 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            ?           2606    16618    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            ?           2606    16636 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            ?           2606    16676 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            ?           2606    16714     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            ?           2606    16700 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            ?           2606    16584 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            ?           2606    16582 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            ?           2606    16574 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    16729 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            ?           2606    24792 6   products_products_assing products_products_assing_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.products_products_assing
    ADD CONSTRAINT products_products_assing_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.products_products_assing DROP CONSTRAINT products_products_assing_pkey;
       public            postgres    false    226            ?           2606    24781 (   products_products products_products_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.products_products
    ADD CONSTRAINT products_products_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.products_products DROP CONSTRAINT products_products_pkey;
       public            postgres    false    224            ?           2606    24762 (   settings_category settings_category_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.settings_category
    ADD CONSTRAINT settings_category_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.settings_category DROP CONSTRAINT settings_category_pkey;
       public            postgres    false    220            ?           2606    24770 (   settings_employee settings_employee_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.settings_employee
    ADD CONSTRAINT settings_employee_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.settings_employee DROP CONSTRAINT settings_employee_pkey;
       public            postgres    false    222            ?           1259    16721    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ?           1259    16658 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            ?           1259    16659 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            ?           1259    16644 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            ?           1259    16674 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            ?           1259    16673 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            ?           1259    16688 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            ?           1259    16687 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            ?           1259    16715     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            ?           1259    16711 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            ?           1259    16712 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            ?           1259    16731 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218            ?           1259    16730 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218            ?           1259    24809 +   products_products_assing_emp_id_id_862baea7    INDEX     u   CREATE INDEX products_products_assing_emp_id_id_862baea7 ON public.products_products_assing USING btree (emp_id_id);
 ?   DROP INDEX public.products_products_assing_emp_id_id_862baea7;
       public            postgres    false    226            ?           1259    24810 0   products_products_assing_products_id_id_a8942e7f    INDEX        CREATE INDEX products_products_assing_products_id_id_a8942e7f ON public.products_products_assing USING btree (products_id_id);
 D   DROP INDEX public.products_products_assing_products_id_id_a8942e7f;
       public            postgres    false    226            ?           1259    24798 &   products_products_category_id_0cfaa6ce    INDEX     k   CREATE INDEX products_products_category_id_0cfaa6ce ON public.products_products USING btree (category_id);
 :   DROP INDEX public.products_products_category_id_0cfaa6ce;
       public            postgres    false    224            ?           2606    16653 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    209    2956            ?           2606    16648 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    209    2961            ?           2606    16639 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2951    205    203            ?           2606    16668 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2961    207    213            ?           2606    16663 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    211    2969    213            ?           2606    16682 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    2956    205            ?           2606    16677 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    215    211    2969            ?           2606    16701 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    217    2951            ?           2606    16706 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    217    211    2969            ?           2606    24799 M   products_products_assing products_products_as_emp_id_id_862baea7_fk_settings_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products_products_assing
    ADD CONSTRAINT products_products_as_emp_id_id_862baea7_fk_settings_ FOREIGN KEY (emp_id_id) REFERENCES public.settings_employee(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.products_products_assing DROP CONSTRAINT products_products_as_emp_id_id_862baea7_fk_settings_;
       public          postgres    false    2996    226    222            ?           2606    24804 R   products_products_assing products_products_as_products_id_id_a8942e7f_fk_products_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products_products_assing
    ADD CONSTRAINT products_products_as_products_id_id_a8942e7f_fk_products_ FOREIGN KEY (products_id_id) REFERENCES public.products_products(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.products_products_assing DROP CONSTRAINT products_products_as_products_id_id_a8942e7f_fk_products_;
       public          postgres    false    226    2999    224            ?           2606    24793 P   products_products products_products_category_id_0cfaa6ce_fk_settings_category_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products_products
    ADD CONSTRAINT products_products_category_id_0cfaa6ce_fk_settings_category_id FOREIGN KEY (category_id) REFERENCES public.settings_category(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.products_products DROP CONSTRAINT products_products_category_id_0cfaa6ce_fk_settings_category_id;
       public          postgres    false    224    220    2994            Q      x?????? ? ?      S      x?????? ? ?      O   ?  x?m?K??0@??)8??|Z`=רT!??J- ?3??'?Cw?y?_???|7C?t]?????6????c"?O3?VQ.?`?`gvՠK1X ?{?
????d??}Y??`2T?\???N???S,	
?bEE????`???k29
?7?')??ɋ?T:y?t?X?hA?y0x-v6
쟐???R{?ew??.ܛ???[,C?v???%?{?????3?VR$?IH????x??|vb͈F]Ŧ?z???^P?"?Լ3C?S???L?:Ch???Ym?n??tgH!dj??/?j??O-?b???+@<??9=Ʒ??B3B?f\PdƠ?t??b??f??O?ؽ?u?5?q????????p???E\?nȱ??q??7?"???%?aGf{@?^ ?>mb?"}??O?;Cq:??? ?h??      U     x?m??j?@???Y?+ڙ?8N?BFĘ?M?
????Ƥͼ}?P(?gs?? ??????P$?3#?x?7??N?o?ڕ??!r???V? ????*w????[????߈l%???T0??3?M??P ?;?P??kӵhL?.??Pu?ꌏe?????zQeK?Ә?T?z5?^%?"??'oq??O???"?a%C\>i?????v?s?0?A??a??	`R?rJ0?IyAɡ)'??}I?uj?5?????!?	M9?s}B???$}?]      W      x?????? ? ?      Y      x?????? ? ?      [     x?u?=O?0???QWT???q??"$?*??!?H???j???w\C?d??<??k?  ?#??? A??F???X?????]???????j????,0?k??????sE??|?\?	?9i??}??????^E??Gw?I?1Cbτ-a*\???s???????.??a??#????j[~w??7???X?'?}?j????FKf???A?v?u???{8??/B(?t?3)6i?f??ڱ?????`?T^??e??p??̲??v??      M   ?   x?e?K
?0DךÔ??ޥPL"\C"K^??5?@woF???´$?Y#??????\?d?T?_?X?fVQ??4?x?y?l?'2~??8wrO?gp???._??<kcƕrѩ?n??^!??????'\E?      K   ?  x???ݎ? F??S???6???YNB?2???8???Ajm?????B??^?h???y?sA?F??J(??S?FiMy͠R?Hu??Y?????DQ?&Xa???/D*?*o?o?{ߥ?ᬃ???i?M?3?"V+C???H9m?????z???ӻ&8d)?2??~???6ۂ^W?h{?B?Qdr?G???z?ap??VZ?z0???c??:D	@?V?(???9=?`\???\?\H?~OY?????D?T? ;C?3z3?U?K?-?????,`?T????®7{׫?~????ܪ|?޵&?0?ӷ!??;Ϧ{p??H?8?????͊q?h&???~9z	?.#??W???L?a?J???1??))?z
??|w#?A&??T?uz?Շ?????>X?v??ɿ????d?c*?btc?(???9??,?(~?QR?aۥ???A-D?H?rɿ??t?Itu      \     x???n?0  ?g???/??tUyCE??S???(??r)?????*ac^?6?X
?*?8o?e??"?Ɍ?/??????ɛn?۔?ѢC??i\?Sc?<????=??4Z???B'?Y?g??? ???3??Z???60h?K???H??ӳ?7`w=c??7?ma???3"=?-????Jt??rӆ?+,ET????y??&c|pu????M?U]??h<?M?Z?x??Vh?Si?e???\]& 8?h
??B?V???(?3EQ?Cq`      b   ?   x?eO?R?0???????s??y?Z????2?D?<?C??G?z>?/A?cp????????x?ս?[??A4?"5?PP??e?????g?h???????[4??6??????l????M?#0??w???^6?96?BES??ZRY??|y?sAR	??}??vq ? ?4??6G}r?????????=???Aǡ??v`??V??C???n??9?N?'?0?Qc5u?J???)??ϙ??%z?      d   ?   x?m̱? ???x???M?v?.??.?ҘB4?????????8h&???E???f֖,??v"??r???[@r?MpM??>J?
s??D??Cm??U>??0?????v?];$?ӡ?ӎ???n????(??Di(]      ^   )   x?3??I,(?/?2???O??I?2?(??+I-?????? ?3	$      `   ?   x?3??u????S??t????50?0226??O+)O,JUp?K??KM-????-8??uu??L̬?̵̸?8?3??????r??&g$?e&'?`1?? n??%?(s+?Q1z\\\ ?S':     