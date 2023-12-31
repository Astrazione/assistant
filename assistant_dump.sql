PGDMP     -    $                {            main_bd    15.2    15.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    20365    main_bd    DATABASE     {   CREATE DATABASE main_bd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE main_bd;
                postgres    false            �            1259    20563    CoefficientType    TABLE        CREATE TABLE public."CoefficientType" (
    "CoefficientTypeId" integer NOT NULL,
    "Name" character varying(30) NOT NULL
);
 %   DROP TABLE public."CoefficientType";
       public         heap    postgres    false            �            1259    20562 %   CoefficientType_CoefficientTypeId_seq    SEQUENCE     �   ALTER TABLE public."CoefficientType" ALTER COLUMN "CoefficientTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."CoefficientType_CoefficientTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    251            �            1259    20486    Company    TABLE     �   CREATE TABLE public."Company" (
    "CompanyId" integer NOT NULL,
    "PhoneNumber" character varying(20),
    "Email" character varying(50),
    "Url" character varying(200),
    "CompanyTypeId" integer
);
    DROP TABLE public."Company";
       public         heap    postgres    false            �            1259    20569    CompanyTransport    TABLE     5  CREATE TABLE public."CompanyTransport" (
    "CompanyTransportId" integer NOT NULL,
    "TransportModeId" integer,
    "CompanyId" integer,
    "BrandName" character varying(50) NOT NULL,
    "ModelName" character varying(80) NOT NULL,
    "CoefficientTypeId" integer,
    "CoefficientValue" real NOT NULL
);
 &   DROP TABLE public."CompanyTransport";
       public         heap    postgres    false            �            1259    20568 '   CompanyTransport_CompanyTransportId_seq    SEQUENCE       ALTER TABLE public."CompanyTransport" ALTER COLUMN "CompanyTransportId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."CompanyTransport_CompanyTransportId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    253            �            1259    20480    CompanyType    TABLE     x   CREATE TABLE public."CompanyType" (
    "CompanyTypeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 !   DROP TABLE public."CompanyType";
       public         heap    postgres    false            �            1259    20479    CompanyType_CompanyTypeId_seq    SEQUENCE     �   ALTER TABLE public."CompanyType" ALTER COLUMN "CompanyTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."CompanyType_CompanyTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            �            1259    20485    Company_CompanyId_seq    SEQUENCE     �   ALTER TABLE public."Company" ALTER COLUMN "CompanyId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Company_CompanyId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    239            �            1259    20401    Construction    TABLE     �   CREATE TABLE public."Construction" (
    "ConstructionId" integer NOT NULL,
    "ConstructionTypeId" integer,
    "Description" text
);
 "   DROP TABLE public."Construction";
       public         heap    postgres    false            �            1259    20395    ConstructionType    TABLE     �   CREATE TABLE public."ConstructionType" (
    "ConstructionTypeId" integer NOT NULL,
    "Name" character varying(80) NOT NULL
);
 &   DROP TABLE public."ConstructionType";
       public         heap    postgres    false            �            1259    20394 '   ConstructionType_ConstructionTypeId_seq    SEQUENCE       ALTER TABLE public."ConstructionType" ALTER COLUMN "ConstructionTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ConstructionType_ConstructionTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    20436    ConstructionUnit    TABLE     �   CREATE TABLE public."ConstructionUnit" (
    "ConstructionUnitId" integer NOT NULL,
    "ConstructionUnitTypeId" integer,
    "Name" character varying(100) NOT NULL,
    "MeasuringUnit" character varying(10) NOT NULL
);
 &   DROP TABLE public."ConstructionUnit";
       public         heap    postgres    false            �            1259    20430    ConstructionUnitType    TABLE     �   CREATE TABLE public."ConstructionUnitType" (
    "ConstructionUnitTypeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 *   DROP TABLE public."ConstructionUnitType";
       public         heap    postgres    false            �            1259    20429 /   ConstructionUnitType_ConstructionUnitTypeId_seq    SEQUENCE       ALTER TABLE public."ConstructionUnitType" ALTER COLUMN "ConstructionUnitTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ConstructionUnitType_ConstructionUnitTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            �            1259    20435 '   ConstructionUnit_ConstructionUnitId_seq    SEQUENCE       ALTER TABLE public."ConstructionUnit" ALTER COLUMN "ConstructionUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ConstructionUnit_ConstructionUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    20400    Construction_ConstructionId_seq    SEQUENCE     �   ALTER TABLE public."Construction" ALTER COLUMN "ConstructionId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Construction_ConstructionId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    20590    DeliveryAbility    TABLE     �   CREATE TABLE public."DeliveryAbility" (
    "DeliveryAbilityId" integer NOT NULL,
    "CompanyTransportId" integer,
    "StorageId" integer,
    "ObjectsId" integer
);
 %   DROP TABLE public."DeliveryAbility";
       public         heap    postgres    false            �            1259    20589 %   DeliveryAbility_DeliveryAbilityId_seq    SEQUENCE     �   ALTER TABLE public."DeliveryAbility" ALTER COLUMN "DeliveryAbilityId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."DeliveryAbility_DeliveryAbilityId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    255            �            1259    20506    LogisticCompany    TABLE     �   CREATE TABLE public."LogisticCompany" (
    "LogisticCompanyId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 %   DROP TABLE public."LogisticCompany";
       public         heap    postgres    false            �            1259    20496    Manufacturer    TABLE     z   CREATE TABLE public."Manufacturer" (
    "ManufacturerId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 "   DROP TABLE public."Manufacturer";
       public         heap    postgres    false            �            1259    20447    MaterialSet    TABLE     j   CREATE TABLE public."MaterialSet" (
    "MaterialSetId" integer NOT NULL,
    "ConstructionId" integer
);
 !   DROP TABLE public."MaterialSet";
       public         heap    postgres    false            �            1259    20464    MaterialSet_ConstructionUnit    TABLE     �   CREATE TABLE public."MaterialSet_ConstructionUnit" (
    "MaterialSet_ConstructionUnitId" integer NOT NULL,
    "MaterialSetId" integer,
    "ConstructionUnitId" integer,
    "Amount" real
);
 2   DROP TABLE public."MaterialSet_ConstructionUnit";
       public         heap    postgres    false            �            1259    20463 ?   MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq    SEQUENCE     1  ALTER TABLE public."MaterialSet_ConstructionUnit" ALTER COLUMN "MaterialSet_ConstructionUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    235            �            1259    20446    MaterialSet_MaterialSetId_seq    SEQUENCE     �   ALTER TABLE public."MaterialSet" ALTER COLUMN "MaterialSetId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MaterialSet_MaterialSetId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            �            1259    20458    MeasureUnit    TABLE     n   CREATE TABLE public."MeasureUnit" (
    "MeasureUnitId" integer NOT NULL,
    "Name" character varying(80)
);
 !   DROP TABLE public."MeasureUnit";
       public         heap    postgres    false            �            1259    20457    MeasureUnit_MeasureUnitId_seq    SEQUENCE     �   ALTER TABLE public."MeasureUnit" ALTER COLUMN "MeasureUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MeasureUnit_MeasureUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            �            1259    20373    Mine    TABLE     �   CREATE TABLE public."Mine" (
    "MineId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "Coordinates" point NOT NULL,
    "SubsidiaryId" integer
);
    DROP TABLE public."Mine";
       public         heap    postgres    false            �            1259    20372    Mine_MineId_seq    SEQUENCE     �   ALTER TABLE public."Mine" ALTER COLUMN "MineId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Mine_MineId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    20384    Objects    TABLE     �   CREATE TABLE public."Objects" (
    "ObjectsId" integer NOT NULL,
    "Name" character varying(100),
    "Coordinates" point NOT NULL,
    "MineId" integer
);
    DROP TABLE public."Objects";
       public         heap    postgres    false            �            1259    20414    Objects_Construction    TABLE     �   CREATE TABLE public."Objects_Construction" (
    "Objects_ConstructionId" integer NOT NULL,
    "ObjectsId" integer,
    "ConstructionId" integer
);
 *   DROP TABLE public."Objects_Construction";
       public         heap    postgres    false            �            1259    20413 /   Objects_Construction_Objects_ConstructionId_seq    SEQUENCE       ALTER TABLE public."Objects_Construction" ALTER COLUMN "Objects_ConstructionId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Objects_Construction_Objects_ConstructionId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    20383    Objects_ObjectsId_seq    SEQUENCE     �   ALTER TABLE public."Objects" ALTER COLUMN "ObjectsId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Objects_ObjectsId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    20517    Storage    TABLE     �   CREATE TABLE public."Storage" (
    "StorageId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "Coordinates" point NOT NULL,
    "Address" character varying(200),
    "ManufacturerId" integer
);
    DROP TABLE public."Storage";
       public         heap    postgres    false            �            1259    20528    Storage_ConstructionUnit    TABLE     �   CREATE TABLE public."Storage_ConstructionUnit" (
    "Storage_ConstructionUnitId" integer NOT NULL,
    "StorageId" integer,
    "ConstructionUnitId" integer,
    "Amount" real NOT NULL,
    "Price" numeric NOT NULL
);
 .   DROP TABLE public."Storage_ConstructionUnit";
       public         heap    postgres    false            �            1259    20527 7   Storage_ConstructionUnit_Storage_ConstructionUnitId_seq    SEQUENCE     !  ALTER TABLE public."Storage_ConstructionUnit" ALTER COLUMN "Storage_ConstructionUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Storage_ConstructionUnit_Storage_ConstructionUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    245            �            1259    20516    Storage_StorageId_seq    SEQUENCE     �   ALTER TABLE public."Storage" ALTER COLUMN "StorageId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Storage_StorageId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    243            �            1259    20367 
   Subsidiary    TABLE     l   CREATE TABLE public."Subsidiary" (
    "SubsidiaryId" integer NOT NULL,
    "Name" character varying(80)
);
     DROP TABLE public."Subsidiary";
       public         heap    postgres    false            �            1259    20366    Subsidiary_SubsidiaryId_seq    SEQUENCE     �   ALTER TABLE public."Subsidiary" ALTER COLUMN "SubsidiaryId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Subsidiary_SubsidiaryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    20552    TransportMode    TABLE     �   CREATE TABLE public."TransportMode" (
    "TransportModeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "AvgSpeed" real NOT NULL,
    "TransportTypeId" integer
);
 #   DROP TABLE public."TransportMode";
       public         heap    postgres    false            �            1259    20551 !   TransportMode_TransportModeId_seq    SEQUENCE     �   ALTER TABLE public."TransportMode" ALTER COLUMN "TransportModeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TransportMode_TransportModeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    249            �            1259    20546    TransportType    TABLE     |   CREATE TABLE public."TransportType" (
    "TransportTypeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 #   DROP TABLE public."TransportType";
       public         heap    postgres    false            �            1259    20545 !   TransportType_TransportTypeId_seq    SEQUENCE     �   ALTER TABLE public."TransportType" ALTER COLUMN "TransportTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TransportType_TransportTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    247                       1259    20617    User    TABLE     �  CREATE TABLE public."User" (
    "UserId" integer NOT NULL,
    "UserTypeId" integer,
    "SubsidiaryId" integer,
    "Surname" character varying(30) NOT NULL,
    "FirstName" character varying(30) NOT NULL,
    "Patronymic" character varying(30) NOT NULL,
    "Login" character varying(100) NOT NULL,
    "Password" character varying(64) NOT NULL,
    "PhoneNumber" character varying(20) NOT NULL,
    "BirthDate" date NOT NULL,
    "PhotoPath" character varying,
    "Token" character varying(300)
);
    DROP TABLE public."User";
       public         heap    postgres    false                       1259    20611    UserType    TABLE     h   CREATE TABLE public."UserType" (
    "UserTypeId" integer NOT NULL,
    "Name" character varying(30)
);
    DROP TABLE public."UserType";
       public         heap    postgres    false                        1259    20610    UserType_UserTypeId_seq    SEQUENCE     �   ALTER TABLE public."UserType" ALTER COLUMN "UserTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."UserType_UserTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    257                       1259    20616    User_UserId_seq    SEQUENCE     �   ALTER TABLE public."User" ALTER COLUMN "UserId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."User_UserId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    259            �          0    20563    CoefficientType 
   TABLE DATA           H   COPY public."CoefficientType" ("CoefficientTypeId", "Name") FROM stdin;
    public          postgres    false    251   ��       �          0    20486    Company 
   TABLE DATA           `   COPY public."Company" ("CompanyId", "PhoneNumber", "Email", "Url", "CompanyTypeId") FROM stdin;
    public          postgres    false    239   3�       �          0    20569    CompanyTransport 
   TABLE DATA           �   COPY public."CompanyTransport" ("CompanyTransportId", "TransportModeId", "CompanyId", "BrandName", "ModelName", "CoefficientTypeId", "CoefficientValue") FROM stdin;
    public          postgres    false    253   u�       �          0    20480    CompanyType 
   TABLE DATA           @   COPY public."CompanyType" ("CompanyTypeId", "Name") FROM stdin;
    public          postgres    false    237   �       �          0    20401    Construction 
   TABLE DATA           _   COPY public."Construction" ("ConstructionId", "ConstructionTypeId", "Description") FROM stdin;
    public          postgres    false    223   l�       �          0    20395    ConstructionType 
   TABLE DATA           J   COPY public."ConstructionType" ("ConstructionTypeId", "Name") FROM stdin;
    public          postgres    false    221   ��       �          0    20436    ConstructionUnit 
   TABLE DATA           u   COPY public."ConstructionUnit" ("ConstructionUnitId", "ConstructionUnitTypeId", "Name", "MeasuringUnit") FROM stdin;
    public          postgres    false    229   t�       �          0    20430    ConstructionUnitType 
   TABLE DATA           R   COPY public."ConstructionUnitType" ("ConstructionUnitTypeId", "Name") FROM stdin;
    public          postgres    false    227   �       �          0    20590    DeliveryAbility 
   TABLE DATA           p   COPY public."DeliveryAbility" ("DeliveryAbilityId", "CompanyTransportId", "StorageId", "ObjectsId") FROM stdin;
    public          postgres    false    255   j�       �          0    20506    LogisticCompany 
   TABLE DATA           H   COPY public."LogisticCompany" ("LogisticCompanyId", "Name") FROM stdin;
    public          postgres    false    241   ��       �          0    20496    Manufacturer 
   TABLE DATA           B   COPY public."Manufacturer" ("ManufacturerId", "Name") FROM stdin;
    public          postgres    false    240   ��       �          0    20447    MaterialSet 
   TABLE DATA           J   COPY public."MaterialSet" ("MaterialSetId", "ConstructionId") FROM stdin;
    public          postgres    false    231   v�       �          0    20464    MaterialSet_ConstructionUnit 
   TABLE DATA           �   COPY public."MaterialSet_ConstructionUnit" ("MaterialSet_ConstructionUnitId", "MaterialSetId", "ConstructionUnitId", "Amount") FROM stdin;
    public          postgres    false    235   ��       �          0    20458    MeasureUnit 
   TABLE DATA           @   COPY public."MeasureUnit" ("MeasureUnitId", "Name") FROM stdin;
    public          postgres    false    233   ��       �          0    20373    Mine 
   TABLE DATA           Q   COPY public."Mine" ("MineId", "Name", "Coordinates", "SubsidiaryId") FROM stdin;
    public          postgres    false    217   ��       �          0    20384    Objects 
   TABLE DATA           Q   COPY public."Objects" ("ObjectsId", "Name", "Coordinates", "MineId") FROM stdin;
    public          postgres    false    219   c�       �          0    20414    Objects_Construction 
   TABLE DATA           i   COPY public."Objects_Construction" ("Objects_ConstructionId", "ObjectsId", "ConstructionId") FROM stdin;
    public          postgres    false    225   ��       �          0    20517    Storage 
   TABLE DATA           d   COPY public."Storage" ("StorageId", "Name", "Coordinates", "Address", "ManufacturerId") FROM stdin;
    public          postgres    false    243   ?�       �          0    20528    Storage_ConstructionUnit 
   TABLE DATA           �   COPY public."Storage_ConstructionUnit" ("Storage_ConstructionUnitId", "StorageId", "ConstructionUnitId", "Amount", "Price") FROM stdin;
    public          postgres    false    245   t�       �          0    20367 
   Subsidiary 
   TABLE DATA           >   COPY public."Subsidiary" ("SubsidiaryId", "Name") FROM stdin;
    public          postgres    false    215   ��       �          0    20552    TransportMode 
   TABLE DATA           c   COPY public."TransportMode" ("TransportModeId", "Name", "AvgSpeed", "TransportTypeId") FROM stdin;
    public          postgres    false    249   M�       �          0    20546    TransportType 
   TABLE DATA           D   COPY public."TransportType" ("TransportTypeId", "Name") FROM stdin;
    public          postgres    false    247   �       �          0    20617    User 
   TABLE DATA           �   COPY public."User" ("UserId", "UserTypeId", "SubsidiaryId", "Surname", "FirstName", "Patronymic", "Login", "Password", "PhoneNumber", "BirthDate", "PhotoPath", "Token") FROM stdin;
    public          postgres    false    259   N�       �          0    20611    UserType 
   TABLE DATA           :   COPY public."UserType" ("UserTypeId", "Name") FROM stdin;
    public          postgres    false    257   ��       �           0    0 %   CoefficientType_CoefficientTypeId_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."CoefficientType_CoefficientTypeId_seq"', 3, true);
          public          postgres    false    250            �           0    0 '   CompanyTransport_CompanyTransportId_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."CompanyTransport_CompanyTransportId_seq"', 21, true);
          public          postgres    false    252            �           0    0    CompanyType_CompanyTypeId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."CompanyType_CompanyTypeId_seq"', 2, true);
          public          postgres    false    236            �           0    0    Company_CompanyId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Company_CompanyId_seq"', 16, true);
          public          postgres    false    238            �           0    0 '   ConstructionType_ConstructionTypeId_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ConstructionType_ConstructionTypeId_seq"', 8, true);
          public          postgres    false    220            �           0    0 /   ConstructionUnitType_ConstructionUnitTypeId_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."ConstructionUnitType_ConstructionUnitTypeId_seq"', 2, true);
          public          postgres    false    226            �           0    0 '   ConstructionUnit_ConstructionUnitId_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."ConstructionUnit_ConstructionUnitId_seq"', 22, true);
          public          postgres    false    228            �           0    0    Construction_ConstructionId_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Construction_ConstructionId_seq"', 13, true);
          public          postgres    false    222            �           0    0 %   DeliveryAbility_DeliveryAbilityId_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."DeliveryAbility_DeliveryAbilityId_seq"', 63, true);
          public          postgres    false    254            �           0    0 ?   MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq    SEQUENCE SET     p   SELECT pg_catalog.setval('public."MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq"', 49, true);
          public          postgres    false    234            �           0    0    MaterialSet_MaterialSetId_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."MaterialSet_MaterialSetId_seq"', 14, true);
          public          postgres    false    230            �           0    0    MeasureUnit_MeasureUnitId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."MeasureUnit_MeasureUnitId_seq"', 4, true);
          public          postgres    false    232            �           0    0    Mine_MineId_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Mine_MineId_seq"', 10, true);
          public          postgres    false    216            �           0    0 /   Objects_Construction_Objects_ConstructionId_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."Objects_Construction_Objects_ConstructionId_seq"', 34, true);
          public          postgres    false    224            �           0    0    Objects_ObjectsId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Objects_ObjectsId_seq"', 20, true);
          public          postgres    false    218            �           0    0 7   Storage_ConstructionUnit_Storage_ConstructionUnitId_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public."Storage_ConstructionUnit_Storage_ConstructionUnitId_seq"', 59, true);
          public          postgres    false    244            �           0    0    Storage_StorageId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Storage_StorageId_seq"', 15, true);
          public          postgres    false    242            �           0    0    Subsidiary_SubsidiaryId_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Subsidiary_SubsidiaryId_seq"', 1, true);
          public          postgres    false    214            �           0    0 !   TransportMode_TransportModeId_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TransportMode_TransportModeId_seq"', 7, true);
          public          postgres    false    248            �           0    0 !   TransportType_TransportTypeId_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TransportType_TransportTypeId_seq"', 3, true);
          public          postgres    false    246            �           0    0    UserType_UserTypeId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."UserType_UserTypeId_seq"', 4, true);
          public          postgres    false    256            �           0    0    User_UserId_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."User_UserId_seq"', 1, true);
          public          postgres    false    258            �           2606    20567 $   CoefficientType CoefficientType_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."CoefficientType"
    ADD CONSTRAINT "CoefficientType_pkey" PRIMARY KEY ("CoefficientTypeId");
 R   ALTER TABLE ONLY public."CoefficientType" DROP CONSTRAINT "CoefficientType_pkey";
       public            postgres    false    251            �           2606    20573 &   CompanyTransport CompanyTransport_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."CompanyTransport"
    ADD CONSTRAINT "CompanyTransport_pkey" PRIMARY KEY ("CompanyTransportId");
 T   ALTER TABLE ONLY public."CompanyTransport" DROP CONSTRAINT "CompanyTransport_pkey";
       public            postgres    false    253            �           2606    20484    CompanyType CompanyType_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."CompanyType"
    ADD CONSTRAINT "CompanyType_pkey" PRIMARY KEY ("CompanyTypeId");
 J   ALTER TABLE ONLY public."CompanyType" DROP CONSTRAINT "CompanyType_pkey";
       public            postgres    false    237            �           2606    20490    Company Company_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Company"
    ADD CONSTRAINT "Company_pkey" PRIMARY KEY ("CompanyId");
 B   ALTER TABLE ONLY public."Company" DROP CONSTRAINT "Company_pkey";
       public            postgres    false    239            �           2606    20399 &   ConstructionType ConstructionType_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."ConstructionType"
    ADD CONSTRAINT "ConstructionType_pkey" PRIMARY KEY ("ConstructionTypeId");
 T   ALTER TABLE ONLY public."ConstructionType" DROP CONSTRAINT "ConstructionType_pkey";
       public            postgres    false    221            �           2606    20434 .   ConstructionUnitType ConstructionUnitType_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ConstructionUnitType"
    ADD CONSTRAINT "ConstructionUnitType_pkey" PRIMARY KEY ("ConstructionUnitTypeId");
 \   ALTER TABLE ONLY public."ConstructionUnitType" DROP CONSTRAINT "ConstructionUnitType_pkey";
       public            postgres    false    227            �           2606    20440 &   ConstructionUnit ConstructionUnit_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."ConstructionUnit"
    ADD CONSTRAINT "ConstructionUnit_pkey" PRIMARY KEY ("ConstructionUnitId");
 T   ALTER TABLE ONLY public."ConstructionUnit" DROP CONSTRAINT "ConstructionUnit_pkey";
       public            postgres    false    229            �           2606    20407    Construction Construction_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Construction"
    ADD CONSTRAINT "Construction_pkey" PRIMARY KEY ("ConstructionId");
 L   ALTER TABLE ONLY public."Construction" DROP CONSTRAINT "Construction_pkey";
       public            postgres    false    223                       2606    20594 $   DeliveryAbility DeliveryAbility_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."DeliveryAbility"
    ADD CONSTRAINT "DeliveryAbility_pkey" PRIMARY KEY ("DeliveryAbilityId");
 R   ALTER TABLE ONLY public."DeliveryAbility" DROP CONSTRAINT "DeliveryAbility_pkey";
       public            postgres    false    255            �           2606    20510 $   LogisticCompany LogisticCompany_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."LogisticCompany"
    ADD CONSTRAINT "LogisticCompany_pkey" PRIMARY KEY ("LogisticCompanyId");
 R   ALTER TABLE ONLY public."LogisticCompany" DROP CONSTRAINT "LogisticCompany_pkey";
       public            postgres    false    241            �           2606    20500    Manufacturer Manufacturer_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Manufacturer"
    ADD CONSTRAINT "Manufacturer_pkey" PRIMARY KEY ("ManufacturerId");
 L   ALTER TABLE ONLY public."Manufacturer" DROP CONSTRAINT "Manufacturer_pkey";
       public            postgres    false    240            �           2606    20468 >   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_pkey" PRIMARY KEY ("MaterialSet_ConstructionUnitId");
 l   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_pkey";
       public            postgres    false    235            �           2606    20451    MaterialSet MaterialSet_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."MaterialSet"
    ADD CONSTRAINT "MaterialSet_pkey" PRIMARY KEY ("MaterialSetId");
 J   ALTER TABLE ONLY public."MaterialSet" DROP CONSTRAINT "MaterialSet_pkey";
       public            postgres    false    231            �           2606    20462    MeasureUnit MeasureUnit_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."MeasureUnit"
    ADD CONSTRAINT "MeasureUnit_pkey" PRIMARY KEY ("MeasureUnitId");
 J   ALTER TABLE ONLY public."MeasureUnit" DROP CONSTRAINT "MeasureUnit_pkey";
       public            postgres    false    233            �           2606    20377    Mine Mine_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Mine"
    ADD CONSTRAINT "Mine_pkey" PRIMARY KEY ("MineId");
 <   ALTER TABLE ONLY public."Mine" DROP CONSTRAINT "Mine_pkey";
       public            postgres    false    217            �           2606    20418 .   Objects_Construction Objects_Construction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_pkey" PRIMARY KEY ("Objects_ConstructionId");
 \   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_pkey";
       public            postgres    false    225            �           2606    20388    Objects Objects_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "Objects_pkey" PRIMARY KEY ("ObjectsId");
 B   ALTER TABLE ONLY public."Objects" DROP CONSTRAINT "Objects_pkey";
       public            postgres    false    219            �           2606    20534 6   Storage_ConstructionUnit Storage_ConstructionUnit_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_pkey" PRIMARY KEY ("Storage_ConstructionUnitId");
 d   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_pkey";
       public            postgres    false    245            �           2606    20521    Storage Storage_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Storage"
    ADD CONSTRAINT "Storage_pkey" PRIMARY KEY ("StorageId");
 B   ALTER TABLE ONLY public."Storage" DROP CONSTRAINT "Storage_pkey";
       public            postgres    false    243            �           2606    20371    Subsidiary Subsidiary_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Subsidiary"
    ADD CONSTRAINT "Subsidiary_pkey" PRIMARY KEY ("SubsidiaryId");
 H   ALTER TABLE ONLY public."Subsidiary" DROP CONSTRAINT "Subsidiary_pkey";
       public            postgres    false    215            �           2606    20556     TransportMode TransportMode_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TransportMode"
    ADD CONSTRAINT "TransportMode_pkey" PRIMARY KEY ("TransportModeId");
 N   ALTER TABLE ONLY public."TransportMode" DROP CONSTRAINT "TransportMode_pkey";
       public            postgres    false    249            �           2606    20550     TransportType TransportType_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TransportType"
    ADD CONSTRAINT "TransportType_pkey" PRIMARY KEY ("TransportTypeId");
 N   ALTER TABLE ONLY public."TransportType" DROP CONSTRAINT "TransportType_pkey";
       public            postgres    false    247                       2606    20615    UserType UserType_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."UserType"
    ADD CONSTRAINT "UserType_pkey" PRIMARY KEY ("UserTypeId");
 D   ALTER TABLE ONLY public."UserType" DROP CONSTRAINT "UserType_pkey";
       public            postgres    false    257                       2606    20584 8   CompanyTransport CompanyTransport_CoefficientTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CompanyTransport"
    ADD CONSTRAINT "CompanyTransport_CoefficientTypeId_fkey" FOREIGN KEY ("CoefficientTypeId") REFERENCES public."CoefficientType"("CoefficientTypeId");
 f   ALTER TABLE ONLY public."CompanyTransport" DROP CONSTRAINT "CompanyTransport_CoefficientTypeId_fkey";
       public          postgres    false    3325    253    251                       2606    20579 0   CompanyTransport CompanyTransport_CompanyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CompanyTransport"
    ADD CONSTRAINT "CompanyTransport_CompanyId_fkey" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");
 ^   ALTER TABLE ONLY public."CompanyTransport" DROP CONSTRAINT "CompanyTransport_CompanyId_fkey";
       public          postgres    false    3311    239    253                       2606    20574 6   CompanyTransport CompanyTransport_TransportModeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CompanyTransport"
    ADD CONSTRAINT "CompanyTransport_TransportModeId_fkey" FOREIGN KEY ("TransportModeId") REFERENCES public."TransportMode"("TransportModeId");
 d   ALTER TABLE ONLY public."CompanyTransport" DROP CONSTRAINT "CompanyTransport_TransportModeId_fkey";
       public          postgres    false    253    249    3323                       2606    20491 "   Company Company_CompanyTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Company"
    ADD CONSTRAINT "Company_CompanyTypeId_fkey" FOREIGN KEY ("CompanyTypeId") REFERENCES public."CompanyType"("CompanyTypeId");
 P   ALTER TABLE ONLY public."Company" DROP CONSTRAINT "Company_CompanyTypeId_fkey";
       public          postgres    false    3309    237    239            	           2606    20441 =   ConstructionUnit ConstructionUnit_ConstructionUnitTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ConstructionUnit"
    ADD CONSTRAINT "ConstructionUnit_ConstructionUnitTypeId_fkey" FOREIGN KEY ("ConstructionUnitTypeId") REFERENCES public."ConstructionUnitType"("ConstructionUnitTypeId");
 k   ALTER TABLE ONLY public."ConstructionUnit" DROP CONSTRAINT "ConstructionUnit_ConstructionUnitTypeId_fkey";
       public          postgres    false    229    3299    227                       2606    20408 1   Construction Construction_ConstructionTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Construction"
    ADD CONSTRAINT "Construction_ConstructionTypeId_fkey" FOREIGN KEY ("ConstructionTypeId") REFERENCES public."ConstructionType"("ConstructionTypeId");
 _   ALTER TABLE ONLY public."Construction" DROP CONSTRAINT "Construction_ConstructionTypeId_fkey";
       public          postgres    false    3293    221    223                       2606    20595 7   DeliveryAbility DeliveryAbility_CompanyTransportId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DeliveryAbility"
    ADD CONSTRAINT "DeliveryAbility_CompanyTransportId_fkey" FOREIGN KEY ("CompanyTransportId") REFERENCES public."CompanyTransport"("CompanyTransportId");
 e   ALTER TABLE ONLY public."DeliveryAbility" DROP CONSTRAINT "DeliveryAbility_CompanyTransportId_fkey";
       public          postgres    false    255    253    3327                       2606    20605 .   DeliveryAbility DeliveryAbility_ObjectsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DeliveryAbility"
    ADD CONSTRAINT "DeliveryAbility_ObjectsId_fkey" FOREIGN KEY ("ObjectsId") REFERENCES public."Objects"("ObjectsId");
 \   ALTER TABLE ONLY public."DeliveryAbility" DROP CONSTRAINT "DeliveryAbility_ObjectsId_fkey";
       public          postgres    false    3291    219    255                       2606    20600 .   DeliveryAbility DeliveryAbility_StorageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DeliveryAbility"
    ADD CONSTRAINT "DeliveryAbility_StorageId_fkey" FOREIGN KEY ("StorageId") REFERENCES public."Storage"("StorageId");
 \   ALTER TABLE ONLY public."DeliveryAbility" DROP CONSTRAINT "DeliveryAbility_StorageId_fkey";
       public          postgres    false    3317    255    243                       2606    20511 6   LogisticCompany LogisticCompany_LogisticCompanyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."LogisticCompany"
    ADD CONSTRAINT "LogisticCompany_LogisticCompanyId_fkey" FOREIGN KEY ("LogisticCompanyId") REFERENCES public."Company"("CompanyId");
 d   ALTER TABLE ONLY public."LogisticCompany" DROP CONSTRAINT "LogisticCompany_LogisticCompanyId_fkey";
       public          postgres    false    241    3311    239                       2606    20501 -   Manufacturer Manufacturer_ManufacturerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Manufacturer"
    ADD CONSTRAINT "Manufacturer_ManufacturerId_fkey" FOREIGN KEY ("ManufacturerId") REFERENCES public."Company"("CompanyId");
 [   ALTER TABLE ONLY public."Manufacturer" DROP CONSTRAINT "Manufacturer_ManufacturerId_fkey";
       public          postgres    false    239    3311    240            
           2606    20452 +   MaterialSet MaterialSet_ConstructionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet"
    ADD CONSTRAINT "MaterialSet_ConstructionId_fkey" FOREIGN KEY ("ConstructionId") REFERENCES public."Construction"("ConstructionId");
 Y   ALTER TABLE ONLY public."MaterialSet" DROP CONSTRAINT "MaterialSet_ConstructionId_fkey";
       public          postgres    false    231    3295    223                       2606    20474 Q   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_ConstructionUnitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_ConstructionUnitId_fkey" FOREIGN KEY ("ConstructionUnitId") REFERENCES public."ConstructionUnit"("ConstructionUnitId");
    ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_ConstructionUnitId_fkey";
       public          postgres    false    235    229    3301                       2606    20469 L   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_MaterialSetId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_MaterialSetId_fkey" FOREIGN KEY ("MaterialSetId") REFERENCES public."MaterialSet"("MaterialSetId");
 z   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_MaterialSetId_fkey";
       public          postgres    false    3303    235    231                       2606    20378    Mine Mine_SubsidiaryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mine"
    ADD CONSTRAINT "Mine_SubsidiaryId_fkey" FOREIGN KEY ("SubsidiaryId") REFERENCES public."Subsidiary"("SubsidiaryId");
 I   ALTER TABLE ONLY public."Mine" DROP CONSTRAINT "Mine_SubsidiaryId_fkey";
       public          postgres    false    215    217    3287                       2606    20424 =   Objects_Construction Objects_Construction_ConstructionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_ConstructionId_fkey" FOREIGN KEY ("ConstructionId") REFERENCES public."Construction"("ConstructionId");
 k   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_ConstructionId_fkey";
       public          postgres    false    223    225    3295                       2606    20419 8   Objects_Construction Objects_Construction_ObjectsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_ObjectsId_fkey" FOREIGN KEY ("ObjectsId") REFERENCES public."Objects"("ObjectsId");
 f   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_ObjectsId_fkey";
       public          postgres    false    219    225    3291                       2606    20389    Objects Objects_MineId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "Objects_MineId_fkey" FOREIGN KEY ("MineId") REFERENCES public."Mine"("MineId");
 I   ALTER TABLE ONLY public."Objects" DROP CONSTRAINT "Objects_MineId_fkey";
       public          postgres    false    3289    217    219                       2606    20540 I   Storage_ConstructionUnit Storage_ConstructionUnit_ConstructionUnitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_ConstructionUnitId_fkey" FOREIGN KEY ("ConstructionUnitId") REFERENCES public."ConstructionUnit"("ConstructionUnitId");
 w   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_ConstructionUnitId_fkey";
       public          postgres    false    245    3301    229                       2606    20535 @   Storage_ConstructionUnit Storage_ConstructionUnit_StorageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_StorageId_fkey" FOREIGN KEY ("StorageId") REFERENCES public."Storage"("StorageId");
 n   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_StorageId_fkey";
       public          postgres    false    243    3317    245                       2606    20522 #   Storage Storage_ManufacturerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage"
    ADD CONSTRAINT "Storage_ManufacturerId_fkey" FOREIGN KEY ("ManufacturerId") REFERENCES public."Manufacturer"("ManufacturerId");
 Q   ALTER TABLE ONLY public."Storage" DROP CONSTRAINT "Storage_ManufacturerId_fkey";
       public          postgres    false    243    3313    240                       2606    20557 0   TransportMode TransportMode_TransportTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportMode"
    ADD CONSTRAINT "TransportMode_TransportTypeId_fkey" FOREIGN KEY ("TransportTypeId") REFERENCES public."TransportType"("TransportTypeId");
 ^   ALTER TABLE ONLY public."TransportMode" DROP CONSTRAINT "TransportMode_TransportTypeId_fkey";
       public          postgres    false    249    247    3321                       2606    20627    User User_SubsidiaryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_SubsidiaryId_fkey" FOREIGN KEY ("SubsidiaryId") REFERENCES public."Subsidiary"("SubsidiaryId");
 I   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_SubsidiaryId_fkey";
       public          postgres    false    215    259    3287                       2606    20622    User User_UserTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_UserTypeId_fkey" FOREIGN KEY ("UserTypeId") REFERENCES public."UserType"("UserTypeId");
 G   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_UserTypeId_fkey";
       public          postgres    false    3331    259    257            �   ,   x�3��p���F��.��2��.6q�� )��M�\1z\\\ �X�      �   2  x�m��n� F���or㈈��}���*ZR؟�/t��\�����f@�"a���ЊN�ո�h�[_����F�&���k����^B'Z�Բ�I+�ѯ������Фa_Λ9���
���yrI�v�V�BП�($(!@]�mT�O��#�)%�i�ۣގP|[��Xg�lęUKT���g��`��YF��ѻ�m���@�&[gI��]��D�lC����4�B]�y�HtZ�VtA�+����*�tR�ΪYú�P���QQ�E����=���������bV6zV>�`�,g��2��﷪�~���
      �   �  x�=��n�0E�3_�P��^:jm�Z 2�,�!d"f͐%�p��3NZ�(Ι�;�$=�ˣ;��|p������
-)\lv�S�M�~��ہ1�m����s9���̘�
**~��1��d��2-�PSi������6�p���FG���bz�(�<mﳟ�+��������^6��pE�vv���SH�#�b��}f����<�7�u���>�R�G*vvqy�!�M��<�B�Ȩ�C��bJM��������J���ǔ�$kZ��������K�nmPV�h?b�+���4�笍�2�BI"�zv�^�{vEpK���Y��ë�]<��'��]%�G�J�_�����%�B���J��0i��=���`c1��4^t�m��v��g�WǑj��� �_y}��      �   F   x�3�0�bÅ}v\�~a��ra�Ŧ[/���e�ya6Ph3P�(��b���/캰�b?W� 1'5      �      x��X[r�F�&O��7��d;vr��ɔK�Y�Sqʎ�8UI�'UE�	�WX�(�=���<~lq�������i��>��:�&��m]Z�����K�vir�޹�m\YM��}�޺�ݺ�m���7x���y�m������Ucb�-k�y��.�i>H�$kը~�-]��05��\�#�+�{�_-ݝ����<���rW$8t��ӭj_sn�a,�'��b��Of��W0]Ma���Ԗ��k�&xTx.�  ��|���wR} ϱiͳakkh�����խ�,��lU�@Eo����9@����#�[a�44p����:����'�ڂ��(e��~/�	�a��{k�������?%>����N��@1)���dB�BF����c��g������ $�	�E0��8�<��'�ݒ����0r��E%�5��3S�q�P#�]��è����(q�����g�!kp@�ڲD��<n@�J2��?I�[1O�D��T?��U��O``B���pvj����:�A����_<OT w�g6�?�=�7���cj�
0��jK�
����2�L�Z��y;�/7��F�2���<ŨJM�_�Z�V��߁���������]�4ը^b_j��#���hm?"]����Ӟ���7���8q�����j�k�m����1��y��,'1�TA���<+J�61hh<��v�J]����Z*�k���cᚴw�_�Lȥ'Ե�Dfɝ��b��g���>1��V�?R��|�Q��Ǚ'$s�8W���ʓxLr�ɘ�\�7�����JֲX,�]�Nѷ����v�h՝�EX��q���5�޹9�}�@G�[nAh��{�s�H|W
�+ӅҿU������ӎ	zo��1�@�Ouk�%�i�9y;�[,��N-��,JY��g�%]#�����,��%55��h��`��f��e`%O�.�E�n\WS���@:�Y��ܓ��*6�g�+f��60�yz��+y�/_��c6a�bVb����Y7u�Y�>���[{��L�]5� ���(ѣz�,�=ʣ^p��|+�G�n&�<&ԉ��떏��?S��	�z *ΖM�!�}�Ƭ����B ��{_��O��$��q��7~�HKej�UE���Aڬ�:�D3=`�)�)�N�5R�L��L~�$�k�����ynR�]]Z�����r�7oC��&FG��&^�a��H z�a4�w"�F���1�=�W�hc�f�����r�5-`,�GT�E<��Rk��|���iini:0h��mDm����NZ]j\�$��(�Atz��_[����]�RG���Q��G�w5���=���4��ڞ'4�~�w����?}�)�"����@���� 6����f�n+���t����%�I�U�.4�Q�C8ꒂ�y�-�ߌ�!>��?�����~T�R�ap�h���c�V���&�t�i��a	X�o&3
`��ѵ@,����f��8�^�����խۏę��Rk�z��pnX�ص�	�[�1r�+?GO%���w>k������}��b�C�JO(�X��:����k�IIb���h0��6���ƕMK�t�1�Z(���B�륟{%�G��ׁ���Yք��/�$?��>�4����:U;}ѨQb�-�&�<��������G����,����7<��Pwzwx��-��O�!&n�TLsEz��de5U{=���iKE|I r��[�����4���}B����c����Ə�,���<
ށ�
5?�[Q��_�̏�A�?�o�{���v�|��,^[}9�~pd��v����C�2      �   �   x�mO9�0������y��DD�h(��!��?bl!*
k���3�]�3�f:�
�-J����~Sx����W�F�\�(Y��A��Ń�-��78��61r��Q��E�����J��UG���J����P�FEmo�����r_F'����%f�uG4�<�"�0�L��|s9�%�M�ɵ���Wbyu2��9)�R      �   �  x��S[R�0�NN�0uK�ޅ�4i�e
�p��!}�W�n�JvB�0����#�w��l�p�Y:�+���&�R~iO6�%���i��H0@F��� Fn%R���hPT4'^	Q	*O� ���)�-x�S��y���~��>kQE+����P7}���I;:QY��!� � �����nB=SA��ʺ�����S���������N�5~���C 6h��EwG�x�R���7�PO�DR���e���8��*�]x�nX1�8�4?ftb�bŲ��5��^�24~�u�\�ja�I2L�����Hv �Ű"q����Ք23��m�}���\\��?)��ڽ�U�ޮ`��5� [���U���Q�k�� �t�/�h��F���g�6u��CJ�I�S{��&M�/q�d      �   @   x�3估�¾��@�}a��.#�/�
�_�{a��~�L�ņ��v��6p��qqq �!�      �   5  x�%�ɍ�0C�b1�h���ￎ!e�ؑ(>*nnm�!���6ҎyX|(����p��2w}>ج�qX��µ`C�yޔ��S���=Y�|��逪z��tq���K�nl��j�ɰ=���!��%͂.��v��!)�E�(��p$�9Fb�5&���t�*��|D���e��H�]���0R4K޲_�9�)ȜAC��!�É��oP�\&�\��ߊ*��Ґ����䩉J���C�YT��";�S��B�C6[%�E������%�[��%Z���t���[�MRkp��r��<�`��,�t�����XZ      �   �   x�m�M�0���)8�QQN�a��.�.L4@�%Wxs#�EI�5o�y�MW)Z�x�@KG�)�����5�F��A>z�鄆��S(�9�1�{�4���B;H��P���y��]�A���R�7�c[�q��	&�`�P�'a1�@iܘ8R��&��` cbF�W��(�[������=s�ߧHO���N:�(��3{�2��-����/      �   �   x�m�Y
�@D�gN�w��a4*w�D0`\�+T��rTBb����W]����Y66�/.������
sL�Sq��!�������2�uK�Y�_�} Ɲ�M\[;%��t��f���K���"L����8yAw&�#/�SV�����X��T�g=m�$^r�v�
N/ғ��~�{x���=EC�en'N���hWSX�s1�\�������<�.j�_���      �   :   x��� !��&�-d�+�c����&����.Cfj���Z�i`_��~ۥ�|�,�      �   �   x�%�ۍ1C���B2����X��h���!i�o�/���?�Ԣ��h�~�%�^�J?W��gb[�L�e�*�<gә�l�[�r8���4 �)�����m��E���@TP6�@ǒ�DN���ɇ�a�뎑/��,	[�Q���l@	��[������6S�8��rkT���K)�.v�6Qq���e�I��[�4��1�[�w��27Es����a"p�$�?����s��xK�      �   $   x�3估��f.#N a�ya7�	�Ŏ�M\1z\\\ �t
�      �   b  x��RKN�0];��Hf�q߅ä���,@BBPX��Ҕ���
���P`�E���y�>�|�m��1�����(������5
K^`d��bXj�E%]Iڨ�2-�C����"�����#x������W~��e¬�Q�*/+C�S��t�3�����KP�ta���+QV����`�p>�礶�&��B���i��!e�,��x���-q�F��?h=��H_����Ř��Y���X�BDA�(i
��Q	~�M��^�O����O�ֶ?���z-��¤���۴a�����`�ˉ��*WJey�>��?�c$��y�L]��g�H�^�*	?�,�>��<�      �   2  x�U�An�0E��)���IQ"����Т��4)� I�&M]�c��]����Љۅ[�o����UtK�h�3�Q��&�`���3��u&�Pu�q.N��N�ozz�^Ҟ�]cE�E���E���	��ZC=��h�m��߅�r�'p1�C��3=~H�O��:/YG!�c2(:?��i�O��5�>BmM�l=ưS�u��'J=�#��6�9,��e�01�2�)x��ծ��)x|��3���O&E�}���9m� _�=�^Vń )0�xS=�>͋R�
?�b���i�����TmkE�1�?�ݔu��u������V�s�o<�v��]W��t<n�-"�@񅬔�aBp7�� uD��;�R�5�1�Ǹ�#MU�ms��"��K����E��(RD{���M^�y��0�Z��P�d����H��c�@G��/p�����K��/p�7�"��`��G�=Hӑ}��pp�]m�X�Mr���H�����G����%b�#d�{a�\���:6���p`2D㬫<ޮ۳�v��7�%|Po=�p�R�M2W���(�{��~r2��      �   �   x�-��!�R1$� ����<s������Y�f#�d���&͋�P+8��/elhQ���꠩M�S�JkAi��L^/5,�æ���nD���3����P�cL/7c<٦b�)�(o�5lV����}H��L"3      �   %  x��U�RA}���<j�f���_��H@�����B��|�@@!�z��3�Ͱ�H����nϜ���tDEGt7�]����i��m���	��<��ì7��F9fWA=�h�ztH���n8jzqHS�;�����y|G�hF�������B-l�
>�E�~�@��׍�L*m�h�N5[;��D�.�Ǹ�>t��)M�.�4��U7���Ɲ>�����-�-�FK/˙��K��D��v��t�t�f�TBֺ~��V�>��UU<x��X�sׂ�'���M��Q�1P^�*ȇ9i ���r7
�U������Ӈ�tR)�S�'t���X��
cd�SR8�lŗJ!�pl[�J��v��ڧoXb�%&�w���)�yh����4�& ��������f��Z�V׮��	�S�7�·[�㙦��f�#T�3�[��(��/���;���.��_��S���Y��c�H�[�9���D��t���2`@ �X��^R@x���	88��ݬJ�9�烄)\(X�Д��0a��·��Y�le�s�w�fF	H�ќ˵�-��
���I|���5�Z���Ǩ��7�k��ot`<p�J�a+���w0�����Z&�%���Nb���ˑ�	�����t���M�H-�u۠�a�/�����6'Ŝ�R�D��`�)��!��g���O9:H_�����}��� �i���N'�3~ҏMb?�r9l�0Oϟ�4:�
���� 2�ie��Fk×�[{��9K�G{'���,�i(�du]��<�      �   s  x�=R�1���	�*.�d�9BR~�S��4m������6� �۲��x�nos+��*c��&t��=|�D��7��?'�6�1�؏!` 2Wf2K�l�P4�sg/b���Zm�(zW�'�J8|���;�1.j��D��Y�B�����HVKJ���/��g���Y��&i��˷�`N-�e�^" &���=�+��S��}�%Jc�br�~OS�eK���ʑ�w��D���t���N�M��<����N&O����hd�(��3Y:Av�9B�7��]����?4�0x	5���|�v�\
��NK��[�q��=���+���`����w��4 �/�g���i]8h���1�?�7��      �   F   x�3�T�0�¾���^l���b��~��.컰���.콰$0��~a?PHb�£�i�J\1z\\\ i6'7      �   �   x�u���@D��*� �O3)�1�(� ��¸���!
RNk���ؑh�5���h�z�;� /67�ph1`�"��Ă��J��H�j�;�Ñp �-p|[V��^OEk}�Mn�	��?Q�29�V�{�������Q�3|���a֧���D�8;-C�v<�IRHb�c����v      �   7   x�3�0�¾�/l��|���ދ�vrq^�{aPp�=P!c��-Pn� {E#o      �   �   x�U��	1EϓVD�o����`/�M<*�
V`�!{�5��^y��v�����������x_i}8���Yw|ȡ�K{��~�u��MJU	CR�!�D�FT��"����SJ"̄,�_��L�~�� �7�      �   U   x�E���0��a�x�a�$PR�BE�g�F�۵0�qR�(-Y`��mAat����E+L����b�N�9,�|������w17p     