PGDMP  )                    }            erupe    17.5 (Debian 17.5-1.pgdg120+1)    17.5    -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            0           1262    16384    erupe    DATABASE     p   CREATE DATABASE erupe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE erupe;
                     postgres    false            �           1247    16386 
   event_type    TYPE     [   CREATE TYPE public.event_type AS ENUM (
    'festa',
    'diva',
    'vs',
    'mezfes'
);
    DROP TYPE public.event_type;
       public               postgres    false            �           1247    16396    festival_color    TYPE     Q   CREATE TYPE public.festival_color AS ENUM (
    'none',
    'red',
    'blue'
);
 !   DROP TYPE public.festival_color;
       public               postgres    false            �           1247    16404    guild_application_type    TYPE     T   CREATE TYPE public.guild_application_type AS ENUM (
    'applied',
    'invited'
);
 )   DROP TYPE public.guild_application_type;
       public               postgres    false            �           1247    16410 
   prize_type    TYPE     G   CREATE TYPE public.prize_type AS ENUM (
    'personal',
    'guild'
);
    DROP TYPE public.prize_type;
       public               postgres    false            �           1247    16416    uint16    DOMAIN     m   CREATE DOMAIN public.uint16 AS integer
	CONSTRAINT uint16_check CHECK (((VALUE >= 0) AND (VALUE <= 65536)));
    DROP DOMAIN public.uint16;
       public               postgres    false            �           1247    16419    uint8    DOMAIN     j   CREATE DOMAIN public.uint8 AS smallint
	CONSTRAINT uint8_check CHECK (((VALUE >= 0) AND (VALUE <= 255)));
    DROP DOMAIN public.uint8;
       public               postgres    false            �            1259    16421    achievements    TABLE     �  CREATE TABLE public.achievements (
    id integer NOT NULL,
    ach0 integer DEFAULT 0,
    ach1 integer DEFAULT 0,
    ach2 integer DEFAULT 0,
    ach3 integer DEFAULT 0,
    ach4 integer DEFAULT 0,
    ach5 integer DEFAULT 0,
    ach6 integer DEFAULT 0,
    ach7 integer DEFAULT 0,
    ach8 integer DEFAULT 0,
    ach9 integer DEFAULT 0,
    ach10 integer DEFAULT 0,
    ach11 integer DEFAULT 0,
    ach12 integer DEFAULT 0,
    ach13 integer DEFAULT 0,
    ach14 integer DEFAULT 0,
    ach15 integer DEFAULT 0,
    ach16 integer DEFAULT 0,
    ach17 integer DEFAULT 0,
    ach18 integer DEFAULT 0,
    ach19 integer DEFAULT 0,
    ach20 integer DEFAULT 0,
    ach21 integer DEFAULT 0,
    ach22 integer DEFAULT 0,
    ach23 integer DEFAULT 0,
    ach24 integer DEFAULT 0,
    ach25 integer DEFAULT 0,
    ach26 integer DEFAULT 0,
    ach27 integer DEFAULT 0,
    ach28 integer DEFAULT 0,
    ach29 integer DEFAULT 0,
    ach30 integer DEFAULT 0,
    ach31 integer DEFAULT 0,
    ach32 integer DEFAULT 0
);
     DROP TABLE public.achievements;
       public         heap r       postgres    false            �            1259    16457    airou_id_seq    SEQUENCE     u   CREATE SEQUENCE public.airou_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.airou_id_seq;
       public               postgres    false            �            1259    16458    bans    TABLE     a   CREATE TABLE public.bans (
    user_id integer NOT NULL,
    expires timestamp with time zone
);
    DROP TABLE public.bans;
       public         heap r       postgres    false            �            1259    16461    cafe_accepted    TABLE     g   CREATE TABLE public.cafe_accepted (
    cafe_id integer NOT NULL,
    character_id integer NOT NULL
);
 !   DROP TABLE public.cafe_accepted;
       public         heap r       postgres    false            �            1259    16464 	   cafebonus    TABLE     �   CREATE TABLE public.cafebonus (
    id integer NOT NULL,
    time_req integer NOT NULL,
    item_type integer NOT NULL,
    item_id integer NOT NULL,
    quantity integer NOT NULL
);
    DROP TABLE public.cafebonus;
       public         heap r       postgres    false            �            1259    16467    cafebonus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cafebonus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cafebonus_id_seq;
       public               postgres    false    221            1           0    0    cafebonus_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cafebonus_id_seq OWNED BY public.cafebonus.id;
          public               postgres    false    222            �            1259    16468 
   characters    TABLE     �  CREATE TABLE public.characters (
    id integer NOT NULL,
    user_id bigint,
    is_female boolean,
    is_new_character boolean,
    name character varying(15),
    unk_desc_string character varying(31),
    gr public.uint16,
    hr public.uint16,
    weapon_type public.uint16,
    last_login integer,
    savedata bytea,
    decomyset bytea,
    hunternavi bytea,
    otomoairou bytea,
    partner bytea,
    platebox bytea,
    platedata bytea,
    platemyset bytea,
    rengokudata bytea,
    savemercenary bytea,
    restrict_guild_scout boolean DEFAULT false NOT NULL,
    minidata bytea,
    gacha_items bytea,
    daily_time timestamp with time zone,
    house_info bytea,
    login_boost bytea,
    skin_hist bytea,
    kouryou_point integer,
    gcp integer,
    guild_post_checked timestamp with time zone DEFAULT now() NOT NULL,
    time_played integer DEFAULT 0 NOT NULL,
    weapon_id integer DEFAULT 0 NOT NULL,
    scenariodata bytea,
    savefavoritequest bytea,
    friends text DEFAULT ''::text NOT NULL,
    blocked text DEFAULT ''::text NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    cafe_time integer DEFAULT 0,
    netcafe_points integer DEFAULT 0,
    boost_time timestamp with time zone,
    cafe_reset timestamp with time zone,
    bonus_quests integer DEFAULT 0 NOT NULL,
    daily_quests integer DEFAULT 0 NOT NULL,
    promo_points integer DEFAULT 0 NOT NULL,
    rasta_id integer,
    pact_id integer,
    stampcard integer DEFAULT 0 NOT NULL,
    mezfes bytea
);
    DROP TABLE public.characters;
       public         heap r       postgres    false    935    935    935            �            1259    16486    characters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.characters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.characters_id_seq;
       public               postgres    false    223            2           0    0    characters_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.characters_id_seq OWNED BY public.characters.id;
          public               postgres    false    224            �            1259    16487    distribution    TABLE       CREATE TABLE public.distribution (
    id integer NOT NULL,
    character_id integer,
    type integer NOT NULL,
    deadline timestamp with time zone,
    event_name text DEFAULT 'GM Gift!'::text NOT NULL,
    description text DEFAULT '~C05You received a gift!'::text NOT NULL,
    times_acceptable integer DEFAULT 1 NOT NULL,
    min_hr integer,
    max_hr integer,
    min_sr integer,
    max_sr integer,
    min_gr integer,
    max_gr integer,
    data bytea NOT NULL,
    rights integer,
    selection boolean
);
     DROP TABLE public.distribution;
       public         heap r       postgres    false            �            1259    16495    distribution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.distribution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.distribution_id_seq;
       public               postgres    false    225            3           0    0    distribution_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.distribution_id_seq OWNED BY public.distribution.id;
          public               postgres    false    226            �            1259    16496    distribution_items    TABLE     �   CREATE TABLE public.distribution_items (
    id integer NOT NULL,
    distribution_id integer NOT NULL,
    item_type integer NOT NULL,
    item_id integer,
    quantity integer
);
 &   DROP TABLE public.distribution_items;
       public         heap r       postgres    false            �            1259    16499    distribution_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.distribution_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.distribution_items_id_seq;
       public               postgres    false    227            4           0    0    distribution_items_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.distribution_items_id_seq OWNED BY public.distribution_items.id;
          public               postgres    false    228            �            1259    16500    distributions_accepted    TABLE     f   CREATE TABLE public.distributions_accepted (
    distribution_id integer,
    character_id integer
);
 *   DROP TABLE public.distributions_accepted;
       public         heap r       postgres    false            �            1259    16503    event_quests    TABLE     0  CREATE TABLE public.event_quests (
    id integer NOT NULL,
    max_players integer,
    quest_type integer NOT NULL,
    quest_id integer NOT NULL,
    mark integer,
    flags integer,
    start_time timestamp with time zone DEFAULT now() NOT NULL,
    active_days integer,
    inactive_days integer
);
     DROP TABLE public.event_quests;
       public         heap r       postgres    false            �            1259    16507    event_quests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_quests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.event_quests_id_seq;
       public               postgres    false    230            5           0    0    event_quests_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.event_quests_id_seq OWNED BY public.event_quests.id;
          public               postgres    false    231            �            1259    16508    events    TABLE     �   CREATE TABLE public.events (
    id integer NOT NULL,
    event_type public.event_type NOT NULL,
    start_time timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.events;
       public         heap r       postgres    false    923            �            1259    16512    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public               postgres    false    232            6           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public               postgres    false    233            �            1259    16513    feature_weapon    TABLE     x   CREATE TABLE public.feature_weapon (
    start_time timestamp with time zone NOT NULL,
    featured integer NOT NULL
);
 "   DROP TABLE public.feature_weapon;
       public         heap r       postgres    false            �            1259    16516    festa_prizes    TABLE     �   CREATE TABLE public.festa_prizes (
    id integer NOT NULL,
    type public.prize_type NOT NULL,
    tier integer NOT NULL,
    souls_req integer NOT NULL,
    item_id integer NOT NULL,
    num_item integer NOT NULL
);
     DROP TABLE public.festa_prizes;
       public         heap r       postgres    false    932            �            1259    16519    festa_prizes_accepted    TABLE     p   CREATE TABLE public.festa_prizes_accepted (
    prize_id integer NOT NULL,
    character_id integer NOT NULL
);
 )   DROP TABLE public.festa_prizes_accepted;
       public         heap r       postgres    false            �            1259    16522    festa_prizes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.festa_prizes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.festa_prizes_id_seq;
       public               postgres    false    235            7           0    0    festa_prizes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.festa_prizes_id_seq OWNED BY public.festa_prizes.id;
          public               postgres    false    237            �            1259    16523    festa_registrations    TABLE     t   CREATE TABLE public.festa_registrations (
    guild_id integer NOT NULL,
    team public.festival_color NOT NULL
);
 '   DROP TABLE public.festa_registrations;
       public         heap r       postgres    false    926            �            1259    16526    festa_submissions    TABLE     �   CREATE TABLE public.festa_submissions (
    character_id integer NOT NULL,
    guild_id integer NOT NULL,
    trial_type integer NOT NULL,
    souls integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);
 %   DROP TABLE public.festa_submissions;
       public         heap r       postgres    false            �            1259    16529    festa_trials    TABLE     �   CREATE TABLE public.festa_trials (
    id integer NOT NULL,
    objective integer NOT NULL,
    goal_id integer NOT NULL,
    times_req integer NOT NULL,
    locale_req integer DEFAULT 0 NOT NULL,
    reward integer NOT NULL
);
     DROP TABLE public.festa_trials;
       public         heap r       postgres    false            �            1259    16533    festa_trials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.festa_trials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.festa_trials_id_seq;
       public               postgres    false    240            8           0    0    festa_trials_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.festa_trials_id_seq OWNED BY public.festa_trials.id;
          public               postgres    false    241            �            1259    16534    fpoint_items    TABLE     �   CREATE TABLE public.fpoint_items (
    id integer NOT NULL,
    item_type integer NOT NULL,
    item_id integer NOT NULL,
    quantity integer NOT NULL,
    fpoints integer NOT NULL,
    buyable boolean NOT NULL
);
     DROP TABLE public.fpoint_items;
       public         heap r       postgres    false            �            1259    16537    fpoint_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fpoint_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fpoint_items_id_seq;
       public               postgres    false    242            9           0    0    fpoint_items_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fpoint_items_id_seq OWNED BY public.fpoint_items.id;
          public               postgres    false    243            �            1259    16538 	   gacha_box    TABLE     h   CREATE TABLE public.gacha_box (
    gacha_id integer,
    entry_id integer,
    character_id integer
);
    DROP TABLE public.gacha_box;
       public         heap r       postgres    false            �            1259    16541    gacha_entries    TABLE     8  CREATE TABLE public.gacha_entries (
    id integer NOT NULL,
    gacha_id integer,
    entry_type integer,
    item_type integer,
    item_number integer,
    item_quantity integer,
    weight integer,
    rarity integer,
    rolls integer,
    frontier_points integer,
    daily_limit integer,
    name text
);
 !   DROP TABLE public.gacha_entries;
       public         heap r       postgres    false            �            1259    16546    gacha_entries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gacha_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.gacha_entries_id_seq;
       public               postgres    false    245            :           0    0    gacha_entries_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.gacha_entries_id_seq OWNED BY public.gacha_entries.id;
          public               postgres    false    246            �            1259    16547    gacha_items    TABLE     �   CREATE TABLE public.gacha_items (
    id integer NOT NULL,
    entry_id integer,
    item_type integer,
    item_id integer,
    quantity integer
);
    DROP TABLE public.gacha_items;
       public         heap r       postgres    false            �            1259    16550    gacha_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gacha_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.gacha_items_id_seq;
       public               postgres    false    247            ;           0    0    gacha_items_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.gacha_items_id_seq OWNED BY public.gacha_items.id;
          public               postgres    false    248            �            1259    16551 
   gacha_shop    TABLE       CREATE TABLE public.gacha_shop (
    id integer NOT NULL,
    min_gr integer,
    min_hr integer,
    name text,
    url_banner text,
    url_feature text,
    url_thumbnail text,
    wide boolean,
    recommended boolean,
    gacha_type integer,
    hidden boolean
);
    DROP TABLE public.gacha_shop;
       public         heap r       postgres    false            �            1259    16556    gacha_shop_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gacha_shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.gacha_shop_id_seq;
       public               postgres    false    249            <           0    0    gacha_shop_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.gacha_shop_id_seq OWNED BY public.gacha_shop.id;
          public               postgres    false    250            �            1259    16557    gacha_stepup    TABLE     g   CREATE TABLE public.gacha_stepup (
    gacha_id integer,
    step integer,
    character_id integer
);
     DROP TABLE public.gacha_stepup;
       public         heap r       postgres    false            �            1259    16560    goocoo    TABLE     �   CREATE TABLE public.goocoo (
    id integer NOT NULL,
    goocoo0 bytea,
    goocoo1 bytea,
    goocoo2 bytea,
    goocoo3 bytea,
    goocoo4 bytea
);
    DROP TABLE public.goocoo;
       public         heap r       postgres    false            �            1259    16565    gook_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.gook_id_seq;
       public               postgres    false    252            =           0    0    gook_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.gook_id_seq OWNED BY public.goocoo.id;
          public               postgres    false    253            �            1259    16566    guild_adventures    TABLE       CREATE TABLE public.guild_adventures (
    id integer NOT NULL,
    guild_id integer NOT NULL,
    destination integer NOT NULL,
    charge integer DEFAULT 0 NOT NULL,
    depart integer NOT NULL,
    return integer NOT NULL,
    collected_by text DEFAULT ''::text NOT NULL
);
 $   DROP TABLE public.guild_adventures;
       public         heap r       postgres    false            �            1259    16573    guild_adventures_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_adventures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.guild_adventures_id_seq;
       public               postgres    false    254            >           0    0    guild_adventures_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.guild_adventures_id_seq OWNED BY public.guild_adventures.id;
          public               postgres    false    255                        1259    16574    guild_alliances    TABLE     �   CREATE TABLE public.guild_alliances (
    id integer NOT NULL,
    name character varying(24) NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    parent_id integer NOT NULL,
    sub1_id integer,
    sub2_id integer
);
 #   DROP TABLE public.guild_alliances;
       public         heap r       postgres    false                       1259    16578    guild_alliances_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_alliances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.guild_alliances_id_seq;
       public               postgres    false    256            ?           0    0    guild_alliances_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.guild_alliances_id_seq OWNED BY public.guild_alliances.id;
          public               postgres    false    257                       1259    16579    guild_applications    TABLE     "  CREATE TABLE public.guild_applications (
    id integer NOT NULL,
    guild_id integer NOT NULL,
    character_id integer NOT NULL,
    actor_id integer NOT NULL,
    application_type public.guild_application_type NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);
 &   DROP TABLE public.guild_applications;
       public         heap r       postgres    false    929                       1259    16583    guild_applications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_applications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.guild_applications_id_seq;
       public               postgres    false    258            @           0    0    guild_applications_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.guild_applications_id_seq OWNED BY public.guild_applications.id;
          public               postgres    false    259                       1259    16584    guild_characters    TABLE     ;  CREATE TABLE public.guild_characters (
    id integer NOT NULL,
    guild_id bigint,
    character_id bigint,
    joined_at timestamp with time zone DEFAULT now(),
    avoid_leadership boolean DEFAULT false NOT NULL,
    order_index integer DEFAULT 1 NOT NULL,
    recruiter boolean DEFAULT false NOT NULL,
    rp_today integer DEFAULT 0,
    rp_yesterday integer DEFAULT 0,
    tower_mission_1 integer,
    tower_mission_2 integer,
    tower_mission_3 integer,
    box_claimed timestamp with time zone DEFAULT now(),
    treasure_hunt integer,
    trial_vote integer
);
 $   DROP TABLE public.guild_characters;
       public         heap r       postgres    false                       1259    16594    guild_characters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_characters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.guild_characters_id_seq;
       public               postgres    false    260            A           0    0    guild_characters_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.guild_characters_id_seq OWNED BY public.guild_characters.id;
          public               postgres    false    261                       1259    16595    guild_hunts    TABLE     �  CREATE TABLE public.guild_hunts (
    id integer NOT NULL,
    guild_id integer NOT NULL,
    host_id integer NOT NULL,
    destination integer NOT NULL,
    level integer NOT NULL,
    acquired boolean DEFAULT false NOT NULL,
    collected boolean DEFAULT false NOT NULL,
    hunt_data bytea NOT NULL,
    cats_used text NOT NULL,
    start timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.guild_hunts;
       public         heap r       postgres    false                       1259    16603    guild_hunts_claimed    TABLE     m   CREATE TABLE public.guild_hunts_claimed (
    hunt_id integer NOT NULL,
    character_id integer NOT NULL
);
 '   DROP TABLE public.guild_hunts_claimed;
       public         heap r       postgres    false                       1259    16606    guild_hunts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_hunts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.guild_hunts_id_seq;
       public               postgres    false    262            B           0    0    guild_hunts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.guild_hunts_id_seq OWNED BY public.guild_hunts.id;
          public               postgres    false    264            	           1259    16607    guild_meals    TABLE     �   CREATE TABLE public.guild_meals (
    id integer NOT NULL,
    guild_id integer NOT NULL,
    meal_id integer NOT NULL,
    level integer NOT NULL,
    created_at timestamp with time zone
);
    DROP TABLE public.guild_meals;
       public         heap r       postgres    false            
           1259    16610    guild_meals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_meals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.guild_meals_id_seq;
       public               postgres    false    265            C           0    0    guild_meals_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.guild_meals_id_seq OWNED BY public.guild_meals.id;
          public               postgres    false    266                       1259    16611    guild_posts    TABLE     Y  CREATE TABLE public.guild_posts (
    id integer NOT NULL,
    guild_id integer NOT NULL,
    author_id integer NOT NULL,
    post_type integer NOT NULL,
    stamp_id integer NOT NULL,
    title text NOT NULL,
    body text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    liked_by text DEFAULT ''::text NOT NULL
);
    DROP TABLE public.guild_posts;
       public         heap r       postgres    false                       1259    16618    guild_posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.guild_posts_id_seq;
       public               postgres    false    267            D           0    0    guild_posts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.guild_posts_id_seq OWNED BY public.guild_posts.id;
          public               postgres    false    268                       1259    16619    guilds    TABLE     �  CREATE TABLE public.guilds (
    id integer NOT NULL,
    name character varying(24),
    created_at timestamp with time zone DEFAULT now(),
    leader_id integer NOT NULL,
    main_motto integer DEFAULT 0,
    rank_rp integer DEFAULT 0 NOT NULL,
    comment character varying(255) DEFAULT ''::character varying NOT NULL,
    icon bytea,
    sub_motto integer DEFAULT 0,
    item_box bytea,
    event_rp integer DEFAULT 0 NOT NULL,
    pugi_name_1 character varying(12) DEFAULT ''::character varying,
    pugi_name_2 character varying(12) DEFAULT ''::character varying,
    pugi_name_3 character varying(12) DEFAULT ''::character varying,
    recruiting boolean DEFAULT true NOT NULL,
    pugi_outfit_1 integer DEFAULT 0 NOT NULL,
    pugi_outfit_2 integer DEFAULT 0 NOT NULL,
    pugi_outfit_3 integer DEFAULT 0 NOT NULL,
    pugi_outfits integer DEFAULT 0 NOT NULL,
    tower_mission_page integer DEFAULT 1,
    tower_rp integer DEFAULT 0,
    room_rp integer DEFAULT 0,
    room_expiry timestamp without time zone
);
    DROP TABLE public.guilds;
       public         heap r       postgres    false                       1259    16641    guilds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guilds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.guilds_id_seq;
       public               postgres    false    269            E           0    0    guilds_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.guilds_id_seq OWNED BY public.guilds.id;
          public               postgres    false    270                       1259    16642 	   kill_logs    TABLE     �   CREATE TABLE public.kill_logs (
    id integer NOT NULL,
    character_id integer NOT NULL,
    monster integer NOT NULL,
    quantity integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);
    DROP TABLE public.kill_logs;
       public         heap r       postgres    false                       1259    16645    kill_logs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kill_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.kill_logs_id_seq;
       public               postgres    false    271            F           0    0    kill_logs_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.kill_logs_id_seq OWNED BY public.kill_logs.id;
          public               postgres    false    272                       1259    16646    login_boost    TABLE     �   CREATE TABLE public.login_boost (
    char_id integer,
    week_req integer,
    expiration timestamp with time zone,
    reset timestamp with time zone
);
    DROP TABLE public.login_boost;
       public         heap r       postgres    false                       1259    16649    mail    TABLE     �  CREATE TABLE public.mail (
    id integer NOT NULL,
    sender_id integer NOT NULL,
    recipient_id integer NOT NULL,
    subject character varying DEFAULT ''::character varying NOT NULL,
    body character varying DEFAULT ''::character varying NOT NULL,
    read boolean DEFAULT false NOT NULL,
    attached_item_received boolean DEFAULT false NOT NULL,
    attached_item integer,
    attached_item_amount integer DEFAULT 1 NOT NULL,
    is_guild_invite boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    locked boolean DEFAULT false NOT NULL,
    is_sys_message boolean DEFAULT false NOT NULL
);
    DROP TABLE public.mail;
       public         heap r       postgres    false                       1259    16664    mail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.mail_id_seq;
       public               postgres    false    274            G           0    0    mail_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.mail_id_seq OWNED BY public.mail.id;
          public               postgres    false    275                       1259    16665    rasta_id_seq    SEQUENCE     u   CREATE SEQUENCE public.rasta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rasta_id_seq;
       public               postgres    false                       1259    16666    rengoku_score    TABLE     �   CREATE TABLE public.rengoku_score (
    character_id integer NOT NULL,
    max_stages_mp integer,
    max_points_mp integer,
    max_stages_sp integer,
    max_points_sp integer
);
 !   DROP TABLE public.rengoku_score;
       public         heap r       postgres    false                       1259    16669    scenario_counter    TABLE     �   CREATE TABLE public.scenario_counter (
    id integer NOT NULL,
    scenario_id numeric NOT NULL,
    category_id numeric NOT NULL
);
 $   DROP TABLE public.scenario_counter;
       public         heap r       postgres    false                       1259    16674    scenario_counter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenario_counter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.scenario_counter_id_seq;
       public               postgres    false    278            H           0    0    scenario_counter_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.scenario_counter_id_seq OWNED BY public.scenario_counter.id;
          public               postgres    false    279                       1259    16675    servers    TABLE     �   CREATE TABLE public.servers (
    server_id integer NOT NULL,
    current_players integer NOT NULL,
    world_name text,
    world_description text,
    land integer
);
    DROP TABLE public.servers;
       public         heap r       postgres    false                       1259    16680 
   shop_items    TABLE     }  CREATE TABLE public.shop_items (
    shop_type integer,
    shop_id integer,
    id integer NOT NULL,
    item_id public.uint16,
    cost integer,
    quantity public.uint16,
    min_hr public.uint16,
    min_sr public.uint16,
    min_gr public.uint16,
    store_level public.uint16,
    max_quantity public.uint16,
    road_floors public.uint16,
    road_fatalis public.uint16
);
    DROP TABLE public.shop_items;
       public         heap r       postgres    false    935    935    935    935    935    935    935    935    935                       1259    16683    shop_items_bought    TABLE     r   CREATE TABLE public.shop_items_bought (
    character_id integer,
    shop_item_id integer,
    bought integer
);
 %   DROP TABLE public.shop_items_bought;
       public         heap r       postgres    false                       1259    16686    shop_items_id_seq    SEQUENCE     z   CREATE SEQUENCE public.shop_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.shop_items_id_seq;
       public               postgres    false    281            I           0    0    shop_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.shop_items_id_seq OWNED BY public.shop_items.id;
          public               postgres    false    283                       1259    16687    sign_sessions    TABLE     �   CREATE TABLE public.sign_sessions (
    user_id integer,
    char_id integer,
    token character varying(16) NOT NULL,
    server_id integer,
    id integer NOT NULL,
    psn_id text
);
 !   DROP TABLE public.sign_sessions;
       public         heap r       postgres    false                       1259    16692    sign_sessions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sign_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sign_sessions_id_seq;
       public               postgres    false    284            J           0    0    sign_sessions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sign_sessions_id_seq OWNED BY public.sign_sessions.id;
          public               postgres    false    285                       1259    16693    stamps    TABLE       CREATE TABLE public.stamps (
    character_id integer NOT NULL,
    hl_total integer DEFAULT 0,
    hl_redeemed integer DEFAULT 0,
    hl_checked timestamp with time zone,
    ex_total integer DEFAULT 0,
    ex_redeemed integer DEFAULT 0,
    ex_checked timestamp with time zone
);
    DROP TABLE public.stamps;
       public         heap r       postgres    false                       1259    16700    titles    TABLE     �   CREATE TABLE public.titles (
    id integer NOT NULL,
    char_id integer NOT NULL,
    unlocked_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.titles;
       public         heap r       postgres    false                        1259    16703    tower    TABLE     �   CREATE TABLE public.tower (
    char_id integer,
    tr integer,
    trp integer,
    tsp integer,
    block1 integer,
    block2 integer,
    skills text,
    gems text
);
    DROP TABLE public.tower;
       public         heap r       postgres    false            !           1259    16708    trend_weapons    TABLE     �   CREATE TABLE public.trend_weapons (
    weapon_id integer NOT NULL,
    weapon_type integer NOT NULL,
    count integer DEFAULT 0
);
 !   DROP TABLE public.trend_weapons;
       public         heap r       postgres    false            "           1259    16712    user_binary    TABLE     5  CREATE TABLE public.user_binary (
    id integer NOT NULL,
    type2 bytea,
    type3 bytea,
    house_tier bytea,
    house_state integer,
    house_password text,
    house_data bytea,
    house_furniture bytea,
    bookshelf bytea,
    gallery bytea,
    tore bytea,
    garden bytea,
    mission bytea
);
    DROP TABLE public.user_binary;
       public         heap r       postgres    false            #           1259    16717    user_binary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_binary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.user_binary_id_seq;
       public               postgres    false    290            K           0    0    user_binary_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.user_binary_id_seq OWNED BY public.user_binary.id;
          public               postgres    false    291            $           1259    16718    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    item_box bytea,
    rights integer DEFAULT 12 NOT NULL,
    last_character integer DEFAULT 0,
    last_login timestamp with time zone,
    return_expires timestamp with time zone,
    gacha_premium integer,
    gacha_trial integer,
    frontier_points integer,
    psn_id text,
    wiiu_key text,
    discord_token text,
    discord_id text,
    op boolean,
    timer boolean
);
    DROP TABLE public.users;
       public         heap r       postgres    false            %           1259    16725    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    292            L           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    293            &           1259    16726 	   warehouse    TABLE     b  CREATE TABLE public.warehouse (
    character_id integer NOT NULL,
    item0 bytea,
    item1 bytea,
    item2 bytea,
    item3 bytea,
    item4 bytea,
    item5 bytea,
    item6 bytea,
    item7 bytea,
    item8 bytea,
    item9 bytea,
    item10 bytea,
    item0name text,
    item1name text,
    item2name text,
    item3name text,
    item4name text,
    item5name text,
    item6name text,
    item7name text,
    item8name text,
    item9name text,
    equip0 bytea,
    equip1 bytea,
    equip2 bytea,
    equip3 bytea,
    equip4 bytea,
    equip5 bytea,
    equip6 bytea,
    equip7 bytea,
    equip8 bytea,
    equip9 bytea,
    equip10 bytea,
    equip0name text,
    equip1name text,
    equip2name text,
    equip3name text,
    equip4name text,
    equip5name text,
    equip6name text,
    equip7name text,
    equip8name text,
    equip9name text
);
    DROP TABLE public.warehouse;
       public         heap r       postgres    false            �           2604    16731    cafebonus id    DEFAULT     l   ALTER TABLE ONLY public.cafebonus ALTER COLUMN id SET DEFAULT nextval('public.cafebonus_id_seq'::regclass);
 ;   ALTER TABLE public.cafebonus ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221            �           2604    16732    characters id    DEFAULT     n   ALTER TABLE ONLY public.characters ALTER COLUMN id SET DEFAULT nextval('public.characters_id_seq'::regclass);
 <   ALTER TABLE public.characters ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223            �           2604    16733    distribution id    DEFAULT     r   ALTER TABLE ONLY public.distribution ALTER COLUMN id SET DEFAULT nextval('public.distribution_id_seq'::regclass);
 >   ALTER TABLE public.distribution ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225            �           2604    16734    distribution_items id    DEFAULT     ~   ALTER TABLE ONLY public.distribution_items ALTER COLUMN id SET DEFAULT nextval('public.distribution_items_id_seq'::regclass);
 D   ALTER TABLE public.distribution_items ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    227            �           2604    16735    event_quests id    DEFAULT     r   ALTER TABLE ONLY public.event_quests ALTER COLUMN id SET DEFAULT nextval('public.event_quests_id_seq'::regclass);
 >   ALTER TABLE public.event_quests ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    230            �           2604    16736 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    233    232            �           2604    16737    festa_prizes id    DEFAULT     r   ALTER TABLE ONLY public.festa_prizes ALTER COLUMN id SET DEFAULT nextval('public.festa_prizes_id_seq'::regclass);
 >   ALTER TABLE public.festa_prizes ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    235            �           2604    16738    festa_trials id    DEFAULT     r   ALTER TABLE ONLY public.festa_trials ALTER COLUMN id SET DEFAULT nextval('public.festa_trials_id_seq'::regclass);
 >   ALTER TABLE public.festa_trials ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    241    240            �           2604    16739    fpoint_items id    DEFAULT     r   ALTER TABLE ONLY public.fpoint_items ALTER COLUMN id SET DEFAULT nextval('public.fpoint_items_id_seq'::regclass);
 >   ALTER TABLE public.fpoint_items ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    243    242            �           2604    16740    gacha_entries id    DEFAULT     t   ALTER TABLE ONLY public.gacha_entries ALTER COLUMN id SET DEFAULT nextval('public.gacha_entries_id_seq'::regclass);
 ?   ALTER TABLE public.gacha_entries ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    246    245            �           2604    16741    gacha_items id    DEFAULT     p   ALTER TABLE ONLY public.gacha_items ALTER COLUMN id SET DEFAULT nextval('public.gacha_items_id_seq'::regclass);
 =   ALTER TABLE public.gacha_items ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    248    247            �           2604    16742    gacha_shop id    DEFAULT     n   ALTER TABLE ONLY public.gacha_shop ALTER COLUMN id SET DEFAULT nextval('public.gacha_shop_id_seq'::regclass);
 <   ALTER TABLE public.gacha_shop ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    250    249            �           2604    16743 	   goocoo id    DEFAULT     d   ALTER TABLE ONLY public.goocoo ALTER COLUMN id SET DEFAULT nextval('public.gook_id_seq'::regclass);
 8   ALTER TABLE public.goocoo ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    253    252            �           2604    16744    guild_adventures id    DEFAULT     z   ALTER TABLE ONLY public.guild_adventures ALTER COLUMN id SET DEFAULT nextval('public.guild_adventures_id_seq'::regclass);
 B   ALTER TABLE public.guild_adventures ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    255    254            �           2604    16745    guild_alliances id    DEFAULT     x   ALTER TABLE ONLY public.guild_alliances ALTER COLUMN id SET DEFAULT nextval('public.guild_alliances_id_seq'::regclass);
 A   ALTER TABLE public.guild_alliances ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    257    256            �           2604    16746    guild_applications id    DEFAULT     ~   ALTER TABLE ONLY public.guild_applications ALTER COLUMN id SET DEFAULT nextval('public.guild_applications_id_seq'::regclass);
 D   ALTER TABLE public.guild_applications ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    259    258            �           2604    16747    guild_characters id    DEFAULT     z   ALTER TABLE ONLY public.guild_characters ALTER COLUMN id SET DEFAULT nextval('public.guild_characters_id_seq'::regclass);
 B   ALTER TABLE public.guild_characters ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    261    260            �           2604    16748    guild_hunts id    DEFAULT     p   ALTER TABLE ONLY public.guild_hunts ALTER COLUMN id SET DEFAULT nextval('public.guild_hunts_id_seq'::regclass);
 =   ALTER TABLE public.guild_hunts ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    264    262            �           2604    16749    guild_meals id    DEFAULT     p   ALTER TABLE ONLY public.guild_meals ALTER COLUMN id SET DEFAULT nextval('public.guild_meals_id_seq'::regclass);
 =   ALTER TABLE public.guild_meals ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    266    265            �           2604    16750    guild_posts id    DEFAULT     p   ALTER TABLE ONLY public.guild_posts ALTER COLUMN id SET DEFAULT nextval('public.guild_posts_id_seq'::regclass);
 =   ALTER TABLE public.guild_posts ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    268    267            �           2604    16751 	   guilds id    DEFAULT     f   ALTER TABLE ONLY public.guilds ALTER COLUMN id SET DEFAULT nextval('public.guilds_id_seq'::regclass);
 8   ALTER TABLE public.guilds ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    270    269            �           2604    16752    kill_logs id    DEFAULT     l   ALTER TABLE ONLY public.kill_logs ALTER COLUMN id SET DEFAULT nextval('public.kill_logs_id_seq'::regclass);
 ;   ALTER TABLE public.kill_logs ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    272    271            �           2604    16753    mail id    DEFAULT     b   ALTER TABLE ONLY public.mail ALTER COLUMN id SET DEFAULT nextval('public.mail_id_seq'::regclass);
 6   ALTER TABLE public.mail ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    275    274            �           2604    16754    scenario_counter id    DEFAULT     z   ALTER TABLE ONLY public.scenario_counter ALTER COLUMN id SET DEFAULT nextval('public.scenario_counter_id_seq'::regclass);
 B   ALTER TABLE public.scenario_counter ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    279    278            �           2604    16755    shop_items id    DEFAULT     n   ALTER TABLE ONLY public.shop_items ALTER COLUMN id SET DEFAULT nextval('public.shop_items_id_seq'::regclass);
 <   ALTER TABLE public.shop_items ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    283    281            �           2604    16756    sign_sessions id    DEFAULT     t   ALTER TABLE ONLY public.sign_sessions ALTER COLUMN id SET DEFAULT nextval('public.sign_sessions_id_seq'::regclass);
 ?   ALTER TABLE public.sign_sessions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    285    284            �           2604    16757    user_binary id    DEFAULT     p   ALTER TABLE ONLY public.user_binary ALTER COLUMN id SET DEFAULT nextval('public.user_binary_id_seq'::regclass);
 =   ALTER TABLE public.user_binary ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    291    290            �           2604    16758    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    293    292            �          0    16421    achievements 
   TABLE DATA             COPY public.achievements (id, ach0, ach1, ach2, ach3, ach4, ach5, ach6, ach7, ach8, ach9, ach10, ach11, ach12, ach13, ach14, ach15, ach16, ach17, ach18, ach19, ach20, ach21, ach22, ach23, ach24, ach25, ach26, ach27, ach28, ach29, ach30, ach31, ach32) FROM stdin;
    public               postgres    false    217   �U      �          0    16458    bans 
   TABLE DATA           0   COPY public.bans (user_id, expires) FROM stdin;
    public               postgres    false    219   �U      �          0    16461    cafe_accepted 
   TABLE DATA           >   COPY public.cafe_accepted (cafe_id, character_id) FROM stdin;
    public               postgres    false    220   �U      �          0    16464 	   cafebonus 
   TABLE DATA           O   COPY public.cafebonus (id, time_req, item_type, item_id, quantity) FROM stdin;
    public               postgres    false    221   �U      �          0    16468 
   characters 
   TABLE DATA           U  COPY public.characters (id, user_id, is_female, is_new_character, name, unk_desc_string, gr, hr, weapon_type, last_login, savedata, decomyset, hunternavi, otomoairou, partner, platebox, platedata, platemyset, rengokudata, savemercenary, restrict_guild_scout, minidata, gacha_items, daily_time, house_info, login_boost, skin_hist, kouryou_point, gcp, guild_post_checked, time_played, weapon_id, scenariodata, savefavoritequest, friends, blocked, deleted, cafe_time, netcafe_points, boost_time, cafe_reset, bonus_quests, daily_quests, promo_points, rasta_id, pact_id, stampcard, mezfes) FROM stdin;
    public               postgres    false    223   =V      �          0    16487    distribution 
   TABLE DATA           �   COPY public.distribution (id, character_id, type, deadline, event_name, description, times_acceptable, min_hr, max_hr, min_sr, max_sr, min_gr, max_gr, data, rights, selection) FROM stdin;
    public               postgres    false    225   ZV      �          0    16496    distribution_items 
   TABLE DATA           _   COPY public.distribution_items (id, distribution_id, item_type, item_id, quantity) FROM stdin;
    public               postgres    false    227   �Y      �          0    16500    distributions_accepted 
   TABLE DATA           O   COPY public.distributions_accepted (distribution_id, character_id) FROM stdin;
    public               postgres    false    229   i�      �          0    16503    event_quests 
   TABLE DATA           �   COPY public.event_quests (id, max_players, quest_type, quest_id, mark, flags, start_time, active_days, inactive_days) FROM stdin;
    public               postgres    false    230   ��      �          0    16508    events 
   TABLE DATA           <   COPY public.events (id, event_type, start_time) FROM stdin;
    public               postgres    false    232   4�      �          0    16513    feature_weapon 
   TABLE DATA           >   COPY public.feature_weapon (start_time, featured) FROM stdin;
    public               postgres    false    234   Q�      �          0    16516    festa_prizes 
   TABLE DATA           T   COPY public.festa_prizes (id, type, tier, souls_req, item_id, num_item) FROM stdin;
    public               postgres    false    235   n�      �          0    16519    festa_prizes_accepted 
   TABLE DATA           G   COPY public.festa_prizes_accepted (prize_id, character_id) FROM stdin;
    public               postgres    false    236   �      �          0    16523    festa_registrations 
   TABLE DATA           =   COPY public.festa_registrations (guild_id, team) FROM stdin;
    public               postgres    false    238   .�      �          0    16526    festa_submissions 
   TABLE DATA           c   COPY public.festa_submissions (character_id, guild_id, trial_type, souls, "timestamp") FROM stdin;
    public               postgres    false    239   K�      �          0    16529    festa_trials 
   TABLE DATA           ]   COPY public.festa_trials (id, objective, goal_id, times_req, locale_req, reward) FROM stdin;
    public               postgres    false    240   h�      �          0    16534    fpoint_items 
   TABLE DATA           Z   COPY public.fpoint_items (id, item_type, item_id, quantity, fpoints, buyable) FROM stdin;
    public               postgres    false    242   ɱ      �          0    16538 	   gacha_box 
   TABLE DATA           E   COPY public.gacha_box (gacha_id, entry_id, character_id) FROM stdin;
    public               postgres    false    244   ��      �          0    16541    gacha_entries 
   TABLE DATA           �   COPY public.gacha_entries (id, gacha_id, entry_type, item_type, item_number, item_quantity, weight, rarity, rolls, frontier_points, daily_limit, name) FROM stdin;
    public               postgres    false    245   
�      �          0    16547    gacha_items 
   TABLE DATA           Q   COPY public.gacha_items (id, entry_id, item_type, item_id, quantity) FROM stdin;
    public               postgres    false    247   ��      �          0    16551 
   gacha_shop 
   TABLE DATA           �   COPY public.gacha_shop (id, min_gr, min_hr, name, url_banner, url_feature, url_thumbnail, wide, recommended, gacha_type, hidden) FROM stdin;
    public               postgres    false    249   �      �          0    16557    gacha_stepup 
   TABLE DATA           D   COPY public.gacha_stepup (gacha_id, step, character_id) FROM stdin;
    public               postgres    false    251   ��                 0    16560    goocoo 
   TABLE DATA           Q   COPY public.goocoo (id, goocoo0, goocoo1, goocoo2, goocoo3, goocoo4) FROM stdin;
    public               postgres    false    252   ��                0    16566    guild_adventures 
   TABLE DATA           k   COPY public.guild_adventures (id, guild_id, destination, charge, depart, return, collected_by) FROM stdin;
    public               postgres    false    254   Ѻ                0    16574    guild_alliances 
   TABLE DATA           \   COPY public.guild_alliances (id, name, created_at, parent_id, sub1_id, sub2_id) FROM stdin;
    public               postgres    false    256   �                0    16579    guild_applications 
   TABLE DATA           p   COPY public.guild_applications (id, guild_id, character_id, actor_id, application_type, created_at) FROM stdin;
    public               postgres    false    258   �                0    16584    guild_characters 
   TABLE DATA           �   COPY public.guild_characters (id, guild_id, character_id, joined_at, avoid_leadership, order_index, recruiter, rp_today, rp_yesterday, tower_mission_1, tower_mission_2, tower_mission_3, box_claimed, treasure_hunt, trial_vote) FROM stdin;
    public               postgres    false    260   (�      
          0    16595    guild_hunts 
   TABLE DATA           �   COPY public.guild_hunts (id, guild_id, host_id, destination, level, acquired, collected, hunt_data, cats_used, start) FROM stdin;
    public               postgres    false    262   E�                0    16603    guild_hunts_claimed 
   TABLE DATA           D   COPY public.guild_hunts_claimed (hunt_id, character_id) FROM stdin;
    public               postgres    false    263   b�                0    16607    guild_meals 
   TABLE DATA           O   COPY public.guild_meals (id, guild_id, meal_id, level, created_at) FROM stdin;
    public               postgres    false    265   �                0    16611    guild_posts 
   TABLE DATA           v   COPY public.guild_posts (id, guild_id, author_id, post_type, stamp_id, title, body, created_at, liked_by) FROM stdin;
    public               postgres    false    267   ��                0    16619    guilds 
   TABLE DATA           &  COPY public.guilds (id, name, created_at, leader_id, main_motto, rank_rp, comment, icon, sub_motto, item_box, event_rp, pugi_name_1, pugi_name_2, pugi_name_3, recruiting, pugi_outfit_1, pugi_outfit_2, pugi_outfit_3, pugi_outfits, tower_mission_page, tower_rp, room_rp, room_expiry) FROM stdin;
    public               postgres    false    269   ��                0    16642 	   kill_logs 
   TABLE DATA           U   COPY public.kill_logs (id, character_id, monster, quantity, "timestamp") FROM stdin;
    public               postgres    false    271   ֻ                0    16646    login_boost 
   TABLE DATA           K   COPY public.login_boost (char_id, week_req, expiration, reset) FROM stdin;
    public               postgres    false    273   �                0    16649    mail 
   TABLE DATA           �   COPY public.mail (id, sender_id, recipient_id, subject, body, read, attached_item_received, attached_item, attached_item_amount, is_guild_invite, created_at, deleted, locked, is_sys_message) FROM stdin;
    public               postgres    false    274   �                0    16666    rengoku_score 
   TABLE DATA           q   COPY public.rengoku_score (character_id, max_stages_mp, max_points_mp, max_stages_sp, max_points_sp) FROM stdin;
    public               postgres    false    277   -�                0    16669    scenario_counter 
   TABLE DATA           H   COPY public.scenario_counter (id, scenario_id, category_id) FROM stdin;
    public               postgres    false    278   J�                0    16675    servers 
   TABLE DATA           b   COPY public.servers (server_id, current_players, world_name, world_description, land) FROM stdin;
    public               postgres    false    280   ��                0    16680 
   shop_items 
   TABLE DATA           �   COPY public.shop_items (shop_type, shop_id, id, item_id, cost, quantity, min_hr, min_sr, min_gr, store_level, max_quantity, road_floors, road_fatalis) FROM stdin;
    public               postgres    false    281   �                0    16683    shop_items_bought 
   TABLE DATA           O   COPY public.shop_items_bought (character_id, shop_item_id, bought) FROM stdin;
    public               postgres    false    282   ��                 0    16687    sign_sessions 
   TABLE DATA           W   COPY public.sign_sessions (user_id, char_id, token, server_id, id, psn_id) FROM stdin;
    public               postgres    false    284   ��      "          0    16693    stamps 
   TABLE DATA           t   COPY public.stamps (character_id, hl_total, hl_redeemed, hl_checked, ex_total, ex_redeemed, ex_checked) FROM stdin;
    public               postgres    false    286   ��      #          0    16700    titles 
   TABLE DATA           F   COPY public.titles (id, char_id, unlocked_at, updated_at) FROM stdin;
    public               postgres    false    287   �      $          0    16703    tower 
   TABLE DATA           T   COPY public.tower (char_id, tr, trp, tsp, block1, block2, skills, gems) FROM stdin;
    public               postgres    false    288   /�      %          0    16708    trend_weapons 
   TABLE DATA           F   COPY public.trend_weapons (weapon_id, weapon_type, count) FROM stdin;
    public               postgres    false    289   L�      &          0    16712    user_binary 
   TABLE DATA           �   COPY public.user_binary (id, type2, type3, house_tier, house_state, house_password, house_data, house_furniture, bookshelf, gallery, tore, garden, mission) FROM stdin;
    public               postgres    false    290   i�      (          0    16718    users 
   TABLE DATA           �   COPY public.users (id, username, password, item_box, rights, last_character, last_login, return_expires, gacha_premium, gacha_trial, frontier_points, psn_id, wiiu_key, discord_token, discord_id, op, timer) FROM stdin;
    public               postgres    false    292   ��      *          0    16726 	   warehouse 
   TABLE DATA           �  COPY public.warehouse (character_id, item0, item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item0name, item1name, item2name, item3name, item4name, item5name, item6name, item7name, item8name, item9name, equip0, equip1, equip2, equip3, equip4, equip5, equip6, equip7, equip8, equip9, equip10, equip0name, equip1name, equip2name, equip3name, equip4name, equip5name, equip6name, equip7name, equip8name, equip9name) FROM stdin;
    public               postgres    false    294   ��      M           0    0    airou_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.airou_id_seq', 1, false);
          public               postgres    false    218            N           0    0    cafebonus_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cafebonus_id_seq', 7, true);
          public               postgres    false    222            O           0    0    characters_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.characters_id_seq', 1, false);
          public               postgres    false    224            P           0    0    distribution_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.distribution_id_seq', 1, true);
          public               postgres    false    226            Q           0    0    distribution_items_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.distribution_items_id_seq', 1, false);
          public               postgres    false    228            R           0    0    event_quests_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.event_quests_id_seq', 287, true);
          public               postgres    false    231            S           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 1, false);
          public               postgres    false    233            T           0    0    festa_prizes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.festa_prizes_id_seq', 120, true);
          public               postgres    false    237            U           0    0    festa_trials_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.festa_trials_id_seq', 123, true);
          public               postgres    false    241            V           0    0    fpoint_items_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.fpoint_items_id_seq', 386, true);
          public               postgres    false    243            W           0    0    gacha_entries_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.gacha_entries_id_seq', 16, true);
          public               postgres    false    246            X           0    0    gacha_items_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.gacha_items_id_seq', 12, true);
          public               postgres    false    248            Y           0    0    gacha_shop_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.gacha_shop_id_seq', 3, true);
          public               postgres    false    250            Z           0    0    gook_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.gook_id_seq', 1, false);
          public               postgres    false    253            [           0    0    guild_adventures_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.guild_adventures_id_seq', 1, false);
          public               postgres    false    255            \           0    0    guild_alliances_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.guild_alliances_id_seq', 1, false);
          public               postgres    false    257            ]           0    0    guild_applications_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.guild_applications_id_seq', 1, false);
          public               postgres    false    259            ^           0    0    guild_characters_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.guild_characters_id_seq', 1, false);
          public               postgres    false    261            _           0    0    guild_hunts_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.guild_hunts_id_seq', 1, false);
          public               postgres    false    264            `           0    0    guild_meals_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.guild_meals_id_seq', 1, false);
          public               postgres    false    266            a           0    0    guild_posts_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.guild_posts_id_seq', 1, false);
          public               postgres    false    268            b           0    0    guilds_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.guilds_id_seq', 1, false);
          public               postgres    false    270            c           0    0    kill_logs_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.kill_logs_id_seq', 1, false);
          public               postgres    false    272            d           0    0    mail_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.mail_id_seq', 1, false);
          public               postgres    false    275            e           0    0    rasta_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rasta_id_seq', 1, false);
          public               postgres    false    276            f           0    0    scenario_counter_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.scenario_counter_id_seq', 171, true);
          public               postgres    false    279            g           0    0    shop_items_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.shop_items_id_seq', 940, true);
          public               postgres    false    283            h           0    0    sign_sessions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sign_sessions_id_seq', 1, false);
          public               postgres    false    285            i           0    0    user_binary_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.user_binary_id_seq', 1, false);
          public               postgres    false    291            j           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public               postgres    false    293            �           2606    16760    achievements achievements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_pkey;
       public                 postgres    false    217            �           2606    16762    bans bans_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.bans
    ADD CONSTRAINT bans_pkey PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY public.bans DROP CONSTRAINT bans_pkey;
       public                 postgres    false    219            �           2606    16764    cafebonus cafebonus_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cafebonus
    ADD CONSTRAINT cafebonus_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cafebonus DROP CONSTRAINT cafebonus_pkey;
       public                 postgres    false    221                        2606    16766    characters characters_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_pkey;
       public                 postgres    false    223                       2606    16768 *   distribution_items distribution_items_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.distribution_items
    ADD CONSTRAINT distribution_items_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.distribution_items DROP CONSTRAINT distribution_items_pkey;
       public                 postgres    false    227                       2606    16770    distribution distribution_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.distribution
    ADD CONSTRAINT distribution_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.distribution DROP CONSTRAINT distribution_pkey;
       public                 postgres    false    225                       2606    16772    event_quests event_quests_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.event_quests
    ADD CONSTRAINT event_quests_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.event_quests DROP CONSTRAINT event_quests_pkey;
       public                 postgres    false    230                       2606    16774    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public                 postgres    false    232            
           2606    16776    festa_prizes festa_prizes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.festa_prizes
    ADD CONSTRAINT festa_prizes_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.festa_prizes DROP CONSTRAINT festa_prizes_pkey;
       public                 postgres    false    235                       2606    16778    festa_trials festa_trials_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.festa_trials
    ADD CONSTRAINT festa_trials_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.festa_trials DROP CONSTRAINT festa_trials_pkey;
       public                 postgres    false    240                       2606    16780    fpoint_items fpoint_items_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fpoint_items
    ADD CONSTRAINT fpoint_items_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fpoint_items DROP CONSTRAINT fpoint_items_pkey;
       public                 postgres    false    242                       2606    16782     gacha_entries gacha_entries_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.gacha_entries
    ADD CONSTRAINT gacha_entries_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.gacha_entries DROP CONSTRAINT gacha_entries_pkey;
       public                 postgres    false    245                       2606    16784    gacha_items gacha_items_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.gacha_items
    ADD CONSTRAINT gacha_items_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.gacha_items DROP CONSTRAINT gacha_items_pkey;
       public                 postgres    false    247                       2606    16786    gacha_shop gacha_shop_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.gacha_shop
    ADD CONSTRAINT gacha_shop_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.gacha_shop DROP CONSTRAINT gacha_shop_pkey;
       public                 postgres    false    249                       2606    16788    goocoo gook_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.goocoo
    ADD CONSTRAINT gook_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.goocoo DROP CONSTRAINT gook_pkey;
       public                 postgres    false    252                       2606    16790 &   guild_adventures guild_adventures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.guild_adventures
    ADD CONSTRAINT guild_adventures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.guild_adventures DROP CONSTRAINT guild_adventures_pkey;
       public                 postgres    false    254                       2606    16792 $   guild_alliances guild_alliances_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.guild_alliances
    ADD CONSTRAINT guild_alliances_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.guild_alliances DROP CONSTRAINT guild_alliances_pkey;
       public                 postgres    false    256                       2606    16794 1   guild_applications guild_application_character_id 
   CONSTRAINT     ~   ALTER TABLE ONLY public.guild_applications
    ADD CONSTRAINT guild_application_character_id UNIQUE (guild_id, character_id);
 [   ALTER TABLE ONLY public.guild_applications DROP CONSTRAINT guild_application_character_id;
       public                 postgres    false    258    258                       2606    16796 *   guild_applications guild_applications_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.guild_applications
    ADD CONSTRAINT guild_applications_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.guild_applications DROP CONSTRAINT guild_applications_pkey;
       public                 postgres    false    258            "           2606    16798 &   guild_characters guild_characters_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.guild_characters
    ADD CONSTRAINT guild_characters_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.guild_characters DROP CONSTRAINT guild_characters_pkey;
       public                 postgres    false    260            $           2606    16800    guild_hunts guild_hunts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.guild_hunts
    ADD CONSTRAINT guild_hunts_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.guild_hunts DROP CONSTRAINT guild_hunts_pkey;
       public                 postgres    false    262            &           2606    16802    guild_meals guild_meals_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.guild_meals
    ADD CONSTRAINT guild_meals_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.guild_meals DROP CONSTRAINT guild_meals_pkey;
       public                 postgres    false    265            (           2606    16804    guild_posts guild_posts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.guild_posts
    ADD CONSTRAINT guild_posts_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.guild_posts DROP CONSTRAINT guild_posts_pkey;
       public                 postgres    false    267            *           2606    16806    guilds guilds_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.guilds
    ADD CONSTRAINT guilds_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.guilds DROP CONSTRAINT guilds_pkey;
       public                 postgres    false    269            ,           2606    16808    kill_logs kill_logs_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.kill_logs
    ADD CONSTRAINT kill_logs_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.kill_logs DROP CONSTRAINT kill_logs_pkey;
       public                 postgres    false    271            .           2606    16810    mail mail_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.mail
    ADD CONSTRAINT mail_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.mail DROP CONSTRAINT mail_pkey;
       public                 postgres    false    274            1           2606    16812     rengoku_score rengoku_score_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.rengoku_score
    ADD CONSTRAINT rengoku_score_pkey PRIMARY KEY (character_id);
 J   ALTER TABLE ONLY public.rengoku_score DROP CONSTRAINT rengoku_score_pkey;
       public                 postgres    false    277            3           2606    16814 &   scenario_counter scenario_counter_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.scenario_counter
    ADD CONSTRAINT scenario_counter_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.scenario_counter DROP CONSTRAINT scenario_counter_pkey;
       public                 postgres    false    278            5           2606    16816    shop_items shop_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.shop_items
    ADD CONSTRAINT shop_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.shop_items DROP CONSTRAINT shop_items_pkey;
       public                 postgres    false    281            7           2606    16818     sign_sessions sign_sessions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sign_sessions
    ADD CONSTRAINT sign_sessions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.sign_sessions DROP CONSTRAINT sign_sessions_pkey;
       public                 postgres    false    284            9           2606    16820    stamps stamps_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.stamps
    ADD CONSTRAINT stamps_pkey PRIMARY KEY (character_id);
 <   ALTER TABLE ONLY public.stamps DROP CONSTRAINT stamps_pkey;
       public                 postgres    false    286            ;           2606    16822     trend_weapons trend_weapons_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.trend_weapons
    ADD CONSTRAINT trend_weapons_pkey PRIMARY KEY (weapon_id);
 J   ALTER TABLE ONLY public.trend_weapons DROP CONSTRAINT trend_weapons_pkey;
       public                 postgres    false    289            =           2606    16824    user_binary user_binary_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_binary
    ADD CONSTRAINT user_binary_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_binary DROP CONSTRAINT user_binary_pkey;
       public                 postgres    false    290            ?           2606    16826    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    292            A           2606    16828    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public                 postgres    false    292            C           2606    16830    warehouse warehouse_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.warehouse
    ADD CONSTRAINT warehouse_pkey PRIMARY KEY (character_id);
 B   ALTER TABLE ONLY public.warehouse DROP CONSTRAINT warehouse_pkey;
       public                 postgres    false    294                       1259    16831    guild_application_type_index    INDEX     g   CREATE INDEX guild_application_type_index ON public.guild_applications USING btree (application_type);
 0   DROP INDEX public.guild_application_type_index;
       public                 postgres    false    258                        1259    16832    guild_character_unique_index    INDEX     h   CREATE UNIQUE INDEX guild_character_unique_index ON public.guild_characters USING btree (character_id);
 0   DROP INDEX public.guild_character_unique_index;
       public                 postgres    false    260            /           1259    16833 '   mail_recipient_deleted_created_id_index    INDEX     �   CREATE INDEX mail_recipient_deleted_created_id_index ON public.mail USING btree (recipient_id, deleted, created_at DESC, id DESC);
 ;   DROP INDEX public.mail_recipient_deleted_created_id_index;
       public                 postgres    false    274    274    274    274            D           2606    16834 "   characters characters_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_user_id_fkey;
       public               postgres    false    292    3647    223            E           2606    16839 3   guild_applications guild_applications_actor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guild_applications
    ADD CONSTRAINT guild_applications_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.characters(id);
 ]   ALTER TABLE ONLY public.guild_applications DROP CONSTRAINT guild_applications_actor_id_fkey;
       public               postgres    false    258    223    3584            F           2606    16844 7   guild_applications guild_applications_character_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guild_applications
    ADD CONSTRAINT guild_applications_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.characters(id);
 a   ALTER TABLE ONLY public.guild_applications DROP CONSTRAINT guild_applications_character_id_fkey;
       public               postgres    false    258    223    3584            G           2606    16849 3   guild_applications guild_applications_guild_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guild_applications
    ADD CONSTRAINT guild_applications_guild_id_fkey FOREIGN KEY (guild_id) REFERENCES public.guilds(id);
 ]   ALTER TABLE ONLY public.guild_applications DROP CONSTRAINT guild_applications_guild_id_fkey;
       public               postgres    false    258    269    3626            H           2606    16854 3   guild_characters guild_characters_character_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guild_characters
    ADD CONSTRAINT guild_characters_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.characters(id);
 ]   ALTER TABLE ONLY public.guild_characters DROP CONSTRAINT guild_characters_character_id_fkey;
       public               postgres    false    223    3584    260            I           2606    16859 /   guild_characters guild_characters_guild_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guild_characters
    ADD CONSTRAINT guild_characters_guild_id_fkey FOREIGN KEY (guild_id) REFERENCES public.guilds(id);
 Y   ALTER TABLE ONLY public.guild_characters DROP CONSTRAINT guild_characters_guild_id_fkey;
       public               postgres    false    260    269    3626            J           2606    16864    mail mail_recipient_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mail
    ADD CONSTRAINT mail_recipient_id_fkey FOREIGN KEY (recipient_id) REFERENCES public.characters(id);
 E   ALTER TABLE ONLY public.mail DROP CONSTRAINT mail_recipient_id_fkey;
       public               postgres    false    3584    274    223            K           2606    16869    mail mail_sender_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.mail
    ADD CONSTRAINT mail_sender_id_fkey FOREIGN KEY (sender_id) REFERENCES public.characters(id);
 B   ALTER TABLE ONLY public.mail DROP CONSTRAINT mail_sender_id_fkey;
       public               postgres    false    274    3584    223            �      x������ � �      �      x������ � �      �      x������ � �      �   F   x�M���0�0L��$�0��Z�\�ǝ �m	����h��8���(1ϾE=,��������� .��      �      x������ � �      �   E  x���OKTQ���̫�+7a��s�u+$mL�E�l,F�ji�,]X�����fQb��x�8��Bg�����Ad`�νg~�s��Ԧ+�bT��k3nu�ㄓ	��)Uy8��Tc��i;�M]�?�:}���y���ZmA)�լ��G���j�U-`�1��
3��gF#�hF#1
~�T���eY��n��`����#kx�s�M6�E��êd��Ӕu�U�Q�%�
��eJ�pe5qeA'T�u�Y��i�٦\.8��0]GV�����~�{��kwz�=����J������F+��9{g�N��`�0��p���3��|��5O�6%��f���I3�ɀۂa���)�΀[�a��h�a��,�a�i,8��y����Z�ZpN-sN-�e�oA�m��+
�d�E��E��E�I���f�m�9�P�߮9slJ�z�U��]o.d�Zͻ�����ј��'�@mN�j��;��4;򘖞�t��t��Lϐ� �γ� �.�� ��ͦ�r9�\�%l��K�r	(���P.a�%�\K@��-��r	[.��\�%l�<(����\�-���l�<(�g��A�<[.���ryP.ϖ˃ry�\�˳��\�-W ��l�(W`�@�[� ��rP���+�r�\�+��
�\a(����S��h��\-w����c�����區��$ٕƍ[u�?�"�IH�����?x�k)��I_�P��ȓ��{��Vt���{|t����������rc��p�\^��'�ؘ�=y�GI��ġ5[�g�*hz�Å�O3W�Y�Ʋ��%:�s��6i�k���Oi�;      �      x�]�m��:�-�3�뛚D���?�Nڱn���i��)ٲ����w�vo�_����?����3�q�~������[��?���_�����/���`�����/�?ᝠ=����Z��{�����g���O�����|�`�ݿ_ ����w��;�Lp�q�گe���m����d�·d���?V�������?&�����7��U���B:L9����hi�d�RcI#��oɣ�ȒHK�%��*K*-]�\z�,���m�=�e���p[.o��r�����e˥�˖KO�-��.[.#]F��p�m��>��/Q/�Q肦�y@�P�Bt
P��[h}��FT��]��]��]���.��~�}`��>��e���O��k������(��\D����ȁt������t�2�m2!�D>a"�kBYWΫ=�f� ��;L�vn�u�ܨ��s����M>v*K�w�<�ɀ4�	�&2L6d�\���7*~d�4�1�O����9�1��5[7����&Y&Ԣm�N-�1�-L�E�sǹ۹����q�v�8w;w���;����n�s����ۙ�q������a����y�y�<�<pv8;O���'����a����y�y�<�<q�T:>�s�S�s�����#�̮�3�Bp�,�93-�̶�3�Bp^v^8/;/�������e�󲳢Ĳ��Ķ��Ķ��Ķ��Ķ��y�y���H���H���H���H���Hr�|p>v>8;�������c��s�|�8;��΁s�9p;�ag��	;�a��9�8��/�a�s���v�8_;_������ڙ�~�����ڙ�~������y?8�c����5���yL&��,H7ِar �$ ��B��<!2Ώ4H�t�5��[Z��̃�3Bp�<�9� �o���3~�<����hv&F�3y0��Ƀ��L�ng�`t;��ۙ<�����v&F�3y0��Ƀ��L�ag�`;�cؙ<����v&ư3y0��Ƀ1�L�ag�`;�cڙ<�����v&ƴ3y0��Ƀ1�L�ig�`L;�cڙ<����Xv&Ʋ3y0��Ƀ��L�eg�`,;�cٙ<����Xv&Ʋ3y0��Ƀ��L�mg�`l;�cۙ<�����v&ƶ3y0��Ƀ��L��cgr\�#�>�!�d���y�#�8˄��<�}2B�&�&��y�#�;��"�Ln��3�)���;�w"�Lމ�󕏜�#�kBY�1�P��M���+�|q�	u�ۄ��c";+_\;��cgr�}�L.������3��>v&�������ؙ8;w�ع�������L�������L�������L|�������L|���S>v��3��v;{o�3��v;{o�3��v;Wo�3q�v;Wo�󒏝�|�L̼����;�L̼����;�L̼����;�;�/��!�=� D>!r�sM(+� ��g�P�̃|2B�S����vf>����w�9�c琏����eg��wٙxx����wٙxx�����eg��wٙxx���|�|�#�`�}�cB�w3�ೇ	>{�P�^&�}�9��w���|���8�K�P�cg��cg��cg��cg��ؙy�=vV<<vV<<vV<<vfN{���io�Y�0�xvV<;3_�ag�7�xvV<;+�����kg���Y���Y���Y��ڙy�vf�y������3���e�'� $ ��B��d�4�4��e� �dC��|�D>v>������~��_<�;|��>�·���uov����s���AY��Aݻ���w;>�΁O��n�Kݻ�/u�v��󕏝/e9߇��fB�G7�g|�4���L���&�}���6�\|��>���i�F�L;7�gڹ�<��p�vn8O;7���;����e����y�y��<p^v�8/;O���'����e���9�Wٟ���f7굻	��<�^�!8�e�s�AΙ!�	��̃��<�3Bh�̃|��5N��/e;_�~�qz�qz�qz�|)+�|�{�Y�4�5Nc��ӄ�b�P��&�=��|�D>r���1�P�kg��kg��kg��kg��kg��k�.;w���������������5ڏ��[�����yˏؙ��;3��cg�r{�<�c�!;�jv��$?b�o��#v��4;O|����ٙ�њ����y���K>v^�����{������ng�-�ۙ9I�vfNҺ�7u�<x?"�0��5��̃�yB�3~�x�2B��<���L�{�Auv>�󑏝���ig�$mڙxئ���mڙxئ����ig�$mڙxئ��|�|�cg�$mٙ9I�U������ܩ"�ϒ�aN��TD���&�}���|�	em9sϪ�꾻	>{����|#w��P�mg�a�M����|��)�عS�cg��cg��cg��c�AY���mڱ��ᱳ�ᱳ��󠬰��ag�ð��a�Y�0�<)+�<�{�Y�0�xvV<;/ʺv^��7~_�K��o4���˃"���e�eB�#�x�1"�	�܏��l��29�f�nr!C����2��m� �D>a"9wf;��h� ͤC�	>m��Ӧ	e�eB��6��Mν�'L�cgf;�j�P�ng"��?&�t;z�3�����l�w;z�s����|��l�;3����D�>�L���D�>��l'�W��;�E�c�!;3�����v��3 �V�ig"@��eM;3�ɿ����K>v^�3 �'�ϲ33������L�����=�I�y=��1��w=����w=����w=����w=����Y��Dp�vf����yۙ�W^O�cgf_y=����}��Dp>vf5����ؙZ^O�cgfhy=��Ί�ag��bx�Y1<�vf���9�8vV��vV��vV��vV��vf������y(�m��=&�	�\��'�'r �$ r�����&bgrA�)� vn*�����cgfz�ٙ\�^"�4;��K��7;3������L.��Ceٙ�^����y�O�A>�!��y�#��F�Au���̃|2�$�J�~Mh�����`8�D�lJӄ����M�v�*��D�l'Zcڙ��$�ϴ3�/�I��O;�ƴ3�oL;�ƴs�,;�ƴ3�m,;�Ʋ3�m,;�Ʋ3Qk,;�Ʋ3Qk,;�Ʋ�UYv&"�eg"��r�=�	>��P�&�}O꾗	>{�����c�	u�ׄ�;+";+";+";+";+";+";+";+";+";+"����ΊHagE�̃�#�=� ���2�'� �̃�"�H�!�=� �̃|2B(�ڙ��vf�9�����kgf���y�:v޺���-�3�e>v&����̬�cgfV�3�e>v&����Ė��9T���5���Ė��Ll���Ė��̌h6;7fù=m�B��v!	�B2�BR��h���Qz+�i����0���^�t��˞8{��g/{VH��=K��˞�:G��U�({��eOg����s�=��9ʞ��e�rj��g=5Gٓ��({���eO������s�=�~βgU5gٳ�����Y�L	f&�	�>3���*���\)�}&K!�3[
a�����R��
a�S�U����
V�+�W0�e�h�m�&���ж}���^���ޅ��>�P�QH����)��i��:e��q�^�㔽B�){��S�
��N�+(��WP��WP��WP���p���p���p���p���p���@���@���@�e��|�^�����-{�[����5Do�k�޲��e��w˞����g��|�F���=�*��4ڠ�gX�[�F*�P�eO�͗?���ȷ?���D�@xe���L�B�D�Z�����!�2�
ᕹVH%F!Z"s�-��V�^����M���t9_u4��}B��BH�]Hǈ`��;Q�~Q���k�Bx��'X�K�FT{�=�*_{��n��h��(��˞`��>�����ˏFxͲ'X�돠��2�4�_�B��܅h�y
a?���n!��S��Z��꾫�k�=��|҈�Ze���^�w�����zT�-DK�-�[!�v/���(q�B�Ķ=o��|+�    �}
ɫ�5�v�k���:eϴ ��u�^c蔽��y�W�-��V�̵B�B*�ie��%2�
ᕹV�̵Bxe��+�^#-�^#-�^#-ʞ�C�,)��!w;a˞�C�w2���=����d��-{&�Τ^�염�~�Ĳg�{����<䛓FT�Lr�Q�=���Ee4@e��U�[%�=��|���ʞ�C�2«ɾk��;��T��
郻j�jQ�&l��O!*�[!�z7R�zٳ���)�h�^�̆r�^�쏼�>TbٓN�J#Zb�=�$�{�5ʞt�;��h�Q�����%D:ɗ+��U�W%�<�C�D�Z!Z"s�^�k���\�!=W�w,�h��
��k���\+$�(�o!Zb�^���UK#�V/��*{&n����U�$��sfD{��'���Fد�'���4!�w�9��]���ܞRV��iFTh�BTh�BTh�BThG!��^�>w��zZ!�N/��){�}�x3�	O��sϛ^�염�~�ĲW���W���W���W���Wx��Wx��Wx��Wx��W���Wx��Wx�e��x�^����-{���9;FxݲW�e� z�^A�����-{�������=�6w�5��#�>4A���B��)$�0�*���+w�P+�W�Z!�Z�D�T#Z��^��sϟ^��WR��-џB�Do���^��ڷ���h�^���!h�W/�&��o*��	���Ј�eOx̽�Fx�kWc�&4�k�Bx�]����5���������������~�=�<�'a?˞H�;���e��>�(a?˞x���a�ʞx�{��_e����h��*{�B��k��*{�B�z4�~�=Y!�=a�˞'����]��<���]��|���̵�}�Z!�3ׂ�0�f���k���\+�}����i�l��Y�P�\+��9�P=��C�<���x
ф�
��^Q��Q��Q��Q��Q��Q��rQ��r����n٫�ݲW��e��t�^�閽:�-{u�[��L���Mn��M�D�*{�I��l4A�Z���F�
h� ��������z�ڞB��V����F!��,�W������J,{rZ>`2Z��'��&#�zٳ0�LFx��'����F�W/{2_>�2¾�=�/Ca�˞��oVa��Z�a��F�����/Va?V!����_�2�������#����Y�ĉ|�e��,{�D��m��,{X>�2�qf�'���q"|�ʞԔ�vQ�*{�D>3�ګ�I:�x��U����'V�+N���t>D3�k�=�|�&Ă%����Y���7#�v��X�,E�Q�-�˞�H>jb)��ڌ(�=K��(gDK��g)���:eUbٳ�rF��){�"����({��({��({����6��c;#�bR��-Q���[�����^7��ថ������˵��h�_n3���HF�B�>���'D��M}F�M�(�@���=!-w�	M�X�D���g�AeO�˷��je�l(�	��r�SP�(�[��je�Tb��rG�-�ʞ(�{
���e�l(w���ry��^��r9y6R�eO��ɳQ.'�Fx��'���� ���)���cBb�^g#�ۈj�S�j�(D��-��|
�5˞Ȕq#.?˞�$y�._�W���|�L9]7�Ug�U�-��z
ᵚQ�P]��ڡ��z#T�*�7�v!��e{���󆌨P���B�k��P�Z!�3�
a��V�̵Bxe�i g��+s�����J,{�S�ȧ�5�O�3]��@C_홅h��
�g��B�B*��Cc(�B�D�BxE/�W�~*��,�W�Bx�.D{�)D{E�>l?Y,�yDF��V��a˞�]h#�n�+<޲Wx�e��x���Ĳ�� r�-P��{ 9���9�?��Q�='���DFT�!���X�ߝ�g]P�_�Z�_���I�#�)2�Ķ
��]H%ڞ'#�*2������)D��V��ᕹ���:�$2ׂ$��V�jg����\+�j�Z!��B�f�B5s���k�h�Q���E�]$ď^��EF؏��G/��"#�G٫���W'�e�N>�^�|�=?z���H�#O12�_�B�qڞ7FddDg�~�Bد����k�Bx���x��x��x����*�Aۯ�د��������oٯG�d�B��Uս��O!Tw��-��y
�zZ!TO/DC��W�<e��y�^�"�){E�S��6J�l�}���j���j���jؾ�ێY�X���]H?�	�D��-�D�ZФ	3�
ф�k�h�̵B�g��>s���k���e?��e?��e�MG�~$�MGd�@e�MG�b�9�$�Z�&hZ �/KD!I�B�؞B��l����'!	M�($#.�f!]~��w!*�N!*Ԣ��B�7�'"���_y&��+E2¾����^��:z����e����=�+�F2�~�=�+ߕ2�~����Q��jG��e��v���~���~�=Ө\�a?˞iT��>���"?�J��9a?W!��.��<���Q�ya��B؟�y,�h��c�����"��V:!&���Έ:��y�KO�<֥��~�R�S?�u�c��c]�e�����G�_���l�y����a�����[�����B��^�;
a˾a˾a˾a˾a˾a�����>�3ڠ�g����T�����'���-~FT���|�g4@e���'yFط�gt�F@#�[�3:�y�����
��ol��x/�}�{!�3�a��^���B�g��>���Ad�|�g�}/{�B>�3¾�=Y!��a?ʞ������eOVȩ�����
953�~�=Y!�fF؏�'+����Y�d���a?˞��S3#�gٳ�ͩ����Y�����Y��ksjf��*{ֵ953�~�=��<��U�,X����Y��CG#�Wٳ`ɇ�F��g��Ga�˞K>�4�~�=�|4i��.{,yP����Y��L#�Oٳ`��F؟�'��L#�Oٓk�� #�Oٓk�1����ɵ��s��k���\+�}�Z!�3�
a���C�$��0��̵B�g��>s��qa�B��V��aG!�oٓk�!#�oٓk������ɵ�`����FT��ڼ�m��'��=n!rm��6j��'���W�*{rm�	7¾�=�6�a�ʞ\�w�oeO�̓���oeO�ͣ���oeO��Å���eO��ㅌ��eO������eO��#����eO��C����eO��c���eO�̓���eO�ͣ���eO��Æ��eO��ㆌ�eO������eO��#����eO��C�F���\"��CF�g��>s���k���\+�}�Z!�3�~HwN��!!��5
�f!��*��څ�Z������n!Zu?�h�]����5w�k<��x�e���^�q����.{��]����5O�k<���x<e��x�^����){��S����5O�k<F�k<F�k<F�k<F�k<F�k<F�k<F�k<F�k<F�k<F�k<޲�x�e��x�^����-{��[����5o�k<޲�x�e��7O+2
����䨛�y\�)`W$���68�<�H�A�I�]9Lt�k�U-�+ِfBŚ�y�;�"|�4��-|�6�����|�T���p��L�r�&\��Y�&�"��2���Mh�~L��{�\��uW"�'��F3�^��P�ag�rM$��319&���;��;�U���By(�eM;��H"�gڙ���>��ğ<�H�)gM��0"]��p�%gͰ�$"���	���	u_ӄ��eB�k��t;�{_v�����}�Y������mg}����޷�I�9��IQ��U}���%�넉>uM��/M�P�_���;�%I��ˑ"��E���3�$�[��|�L6��Dp>v&q���X�Yq,�8vV;+�����Ίcag%��󖡝�/��5D0�v�H0$��3w;��J�v�^G�!�ϵs���!9��<XH�@�Ʌș��y�H�L�Y&�M&�,H���Ό�<.����BD�ivf��YB"\�ٙ1�版��]��y�t;�ng"v>�5��Ƀ�4H���v&�� ����� �����s     ����#8��'��~"8��'��~�r���tvh�[�E(�W?�~LTz���kB��1��f3��fQ�Äҧ��{���{���{���{���J�3�)b��b����������������8-��3�)w����q��q���q���q��̍��I&�����:rn�-{�P�}L��꾯	u?�	u?̈́��n��&8�i��"䱳�ر��ر��ر��X�Y},�>vV;���������cag�����X�Y},�>v��>v��>v��>�y��̃�3~D},� �̃�3Bp�<���i�Ȃ4��&bgbo>	���|����9��J?&*]�ڣ��!̈��H�4��&�ކ	��iB���̈r�%Bݛ�YA�K�fg�H����ۙ9R��Dp�vfm�k,����G�K�ng�Q��W�ng�Q�2�yؙ�E�2�yؙ{��W�ag��^���yR��yEpv�9Q>��yڙ�D��W�ig���R�ig����#�/��K}*L��kBM�cBMW3��K�W=jj��	5]˄�.;�Ge�9� �̃�3Bp�<�9��Gԣ2Bp�<�9� �̃���գ��գ��գ��գ��գ��գ��գ��գ��գ��գ��գ��գ���9��[�������K����V�&8�2�9�	�qLp�0�9�	��1��6����/���9��Z����9��Z����9�Z����9�Z��ؙ�C>��0s�Ǵ"bg2~>�QYv�*��]e�y�,;����H�ؙ��OgE&���ܼ�$�s�3?�̊����j+�9AXm�='�[���<8?B-2B0�<�0� �̃!��='�y�+���|M�r���h;p>���^��P�1L�ט&�e���&�c��^��ig�Q� �<*����<��<*����<��V�vV�N;�U��ժ��d��''��3Y/�ɉ��L��{r"8/;������d�|�*��3Y/�҉��L�˻t"8o;���.����d��K'��3Y/���yۙ����Dp>v&��};����z����G�C�l��1�^'L�Ź&�"�c����tjÄ���5c̳s����!f���!�&�d���y�O���h_n��#B�g�Ъw��|�	����|��{M>�<,G$ r�3�<*GdA�L�̓rDte;7]��dؼ!��!9"bg��ywVd@���<�Ί���L�λ�"87;�s�J��P�v*���ܼ�!j�\���L��SqDt;��Lj��L����"�|�3Q+���P�ag�V���yؙ���}E(kؙ1��}ET���ʲ�UYv�*K�ZM�}_>5q��1�}_ZuZuNZu.Zunj:����j�yp�̃�3Bp�<�9� �̃�3Bp�<�9��G�y�"8/;kl;kl;O��������W��nD�׶3�����̳�<�F�zm;3g�cnD�ױ3s�<�F�cg�lyč��������33�<�F�Z;3#��m ̈�ljvVl	;+���[�Ί-agŖ��bK�Y�%��r���r���r���{���{���r�̌(���ڙyBe��WϓlD��� ���`���؈�S�D��&�Ld�l���ѕ�DW�&\�=&\�ٙo0�9����H@�Ʌ,��<�D���<�9� �̃�3Bp�<�9� �.���Ljї	��r��s��"Ԣ�	��ׄZ�ǄZ�fB-F7���d��(��3$wB� �	P�ag2Hn�yڙ� E�Դ�Ч��L&w��P�igf��O��N;s� w��P�ig��?����)��O�egrJ���yٙ��;�Dp^v&��~?����)��O�mgrJ���yۙ��w�Ep�r>M{��S�D�
j��	5=�	5=̈́�9�lyGY��9�b�Y&�m�a�����!2�&f�`�y�#ݙ!f��]d���y�s�A�ag�Fw�Y���Y���Y���Y���Y���Y��ڙ�a�Q��ڙ�a�Q������gK�\�����{��M��R"b�O��)3�(�t����2󎲈ʲ�f�E-���hv��4;o|��7>���f�/������ƹ�y����q�v�8w;�������n�s���������|p�v>8;�����΁�s�<�8;��΁�s�<�8�O�gޙ�:��G�N�A��<�^�?2�W�A��<�^�!�	�+�k�O�A>�Η�b���],;_���9��]��༶	�����uMpޏ	λ�༻	�{����p�vn8o;7������K�vV$9vV$9vV$9vV$9vV$9vV$9vV$9vV$9vV$9vV$9vVL;+&���Ί	agń��bB�Y1!쬘r�>���`Dh����}L����M���;M����M�Ǆ6�r^�Q��Ĩܓ%�!v&F��QdB�L��=Y����d}�@�I@�Ʌ�Y�ۓ������������y�Gp~�A��ٙ��ۓ������ߞ��3�=Y/aT~{�>BY�Ό�oO�G(�ۙQ���z	��ۓ�ڧۙQ�������̨��d}�ag���'�#8;�߿������_F���Ό�oO�Gpvf�|Y�#8O;3v������;_����Ό��t͏�<���3���3���3�����L~�N����΁�s��|q^v�8/;_����Z~Ἱ�ٜ����t��̈́�v7��{��>{��G�eB�{���#������>B���JϿ��Z5�BY��Q�f�PV�>���&*����A�	��̈�_���>agfD�o�Ap9��v��L�9�	αMp�c�s�	�qMp��	η��|�	���̈ޙ#�kgfD������T��՟�������#��w�i;ӟߙ#d@���X�;s�,��ɕ��r v&W�3G�M΃��!�պ	e�aBYm�PV[&*KΓ�����iaB��kB�����Lp���>Lp���Lp�v�G��v��ۙ����a��s�yؙ~��	�?�s�AΙ!8g���a�AΙ!8g���y�s�AΙ!8O;�N;�N;�N;3g{!��Sv����5�{� �tٙ���BM��'5]v��tٙ;9��BM��'����eg���k#�����y�F���Yǽk#�����=G����|�|�cg�໢��s����]QA�9vff��� �;3�zWT��ؙ�ջ���33�w��33�w��33�w����<��M�7ǄzE�P��"��1�^��P��M��&��N�u���q�����}|���*�|e��Y�f�!��@�I@�Ʌ,��$��9&&rMpn�	έ��ܺ	�m��ܦ	���d�<�F�fg2HQ#�s�3$���ۙ��ӈ�����.���n筲�U���ʲ�VYvf��҈�>��ğw��v&���� 8;�s����?����D�<�B�ɳhD0�v&��I4"�L;[�|���-y
�m8�2�3�<�F�eg�y �m�쬱�쬱�쬱�쬱�쬱�쬱��;�y��Ι�Gp�>�9�,�����Bp�>�9�,�����~Dc9�,�cg��cg��cg��cg��cg��cg��cgf��>�����}
�����}
�;k��5C�C��mB��P��ׄz�Ǆz]9��v��0��N����徫����r�U�kgf��*r!vf���r bg�L��Ȁؙ;��*�%�=�v@6$L������5�~W9��0��M��2��ٙ9��ʁ����<�]�@p�vf��r>�<�]�@p�vf��r>B�}W9�#*k���#rUV@x�j��W�����p���?�+�����C��X&���&��8&���3Q���!8O;������9x���{�yN��2�yn��1�y�	����W3�yٙ���� 8/;��5�eg�߻Ƃ��L�{���3��=�	��3��=��%����4At�e���Y3��z �}�	u�ׄ��Ǆ��fB�O7�����c���c���cGΚ9�kǗ8��0��P�xL�E4j��&8    �4�0�<!c��t;+B��!�[���[������� �a~K�[��"d~K��[������� 8_;����dD6�ά4�<��ؙ�Vy���Vy��H�ؙ�M�'#2 vfu���|D�
�<>՚	�j݄��aBM���Օ����Mt�c�+���,�E}_ {3�ʽ�p�>L�r�&|;}����m·�弈���
@�v�����/aBpv&����Apv&���&@pv&����	�yؙ(��Ɉ�<����-M����!�4��<����9����!�<����u�/mBp�v&ֽ?��yٙX��$
���#8�(�����s�r�9�?����1�9�!8�(�����s�r���D��L���D��L���D��L���D��L���D�wg�cgE�cgE�cgE�cgE�cgE�cgE�cgEȰ�"d�Y2����wg�3'��wgÐ3'���E�&*��P�}L(�6Z�v|�0��ڙ���#�kg��kg��kg��kgb��#dC����}�;3�y�b|I0�y�b�4�6�c2!a"�k�a{L0l���M0lrf��|ߏ�`��L.xߏ����<>�s�r��!8g,�����s�r��?B.xߏ�����s�r����w��ngr��S	��3��ݩ�yؙ\��T��<�L.xw*Apv&�;� 8;�ޝJ������o�@�v&ο�B�v&ο�B�v޺����lg"�{^)�+/;��_
�P�eg�l����Yv����K�#��~wiAp^v�ڻK��3w��]Z�������҂��L|~wiAp�v&>��� 8o;3[~wiA�α3q�ݥ�:����w���;W�]Z�~쬸z쬸z쬸z쬸r���Y������3Bpά�9���Z�3kApά�9[�s��Gi��i��i��i��i��i/�W�������0QY��+���Ȅ4��&2Ld�d�\�����=�� a�!�����ܚ	έ��܆	�m��ܖ	���|��}@pnv�;}�0��=�BY��d��㏐A�3�!���Ly�0��>��d��c���Ly���3����= 8;�e����<�L�y���3Y�=e��3���'= 8O;��x���3����< 8O;����d���"8�c���B矅�?�"8�, �&�<���~T�'#BYk���m����ʒ��G�y2"��~Lh��Lh��Mh�mg�϶��g�Y������vV�l;�}�����y2"8;3'�=���O���Sv>�����y2"��ؙYA��D��3��\��PӰ3��<OF�3��\���vfe��7��ά�r�&�sؙ�]��Dp�r�����o伔�4�^w�P��M��=&��	����W��D����\�����i;�r='2 v&��zNdA~��#��+�*)�s"��+S��e�P��LJ��)B�<(B��cB���-��L������9����q����ۙ��9����q������J�3�*�s"�>�L�����;�s='B�;{s=!��zN�a�%C;{s�'��3�7�|"N;3s�'BY��[e�y�,;o�e筲��:.߸�}��Y����q���G�nE�'#��,]G�z�"����+Lp^ׄ+�Ǆ+o9�z�[�]g��4ѕ���,��	�;L���5��:�	��i&|_����y��Dq,� DW^&��6ѕ���&�F�A��yBkd���_�A�vV�;+�����Ί~agE����_�Y���Y���Y���Y���Y���Y���Y���Y���Y��ڙ~��E>�\m�\�����j[�A�L��նȀؙ���m��313W�"bg�h��Epnv&��j[��o�I����U�����B59�BH��-�[!��w!ͤ�d#��,�W_����L9O�1���5���e@@8�#�F+D��^�V��c�~�B��s��sf� a�	R�V�)�}�H!�3G
a�IR�̒B�g��>���(A����'f٫O̲W�XeO��Sg��_eO��sg��_eO�͓g��_eO�ͳg��_eO���g���eO���g���eO��h���eO��3h���eO��Sh���eO��sh��?eO�͓h��?eOγh��N�a4F�|�o]��._�[���Q�;������V��G/��c��c��c����zҘ{�TbهJ,{&w��Έo�3��xB��r���-{��<#�떽��-{E�[��r��(�r#�Q�~�tA]���ʽxF4u�*4@���B�6��>���¾�}þ�}þ����M��Q��.��BT�E!��d�x%b��<�CK�V��轐>8
�}�%�*D������#*ԣ��0䕇�q�a{�C^y�������5V!g�B4�8�h��h�Q�����mO�}۳�~�B��Y��
a?w!��)���B��[���~��:�*{u�U��U��U��U�C�/��˗����~p�]����4�.���w�.�����?���w!]���3�
���k�h�̵ u�̵�� �k��W��kAMh���Bx�SH^Q�>ql�˾+��1�U��;�eߩP�}�BQ��(��}�}�>ʾce߱��W��e�.w�^]��-{u�[��r�����������$�����|�h�Ae��`V>f)?�sF�3�|�h4@��>�I��D��-��1�Fd{^BX�h4j��'��K�Fط�gX�k�Fط�'��Fط�'�����<u�H�Q�>�Cy��u�u�u�u�Q�:f�� ꘹V�̵B�g��>s-�1��`���\+�}�Z!�3�
a��V�Q���|k��,{�P>�5�~���~���~���_���_���_���_�=&�����0�Pֈ�XeO��ǲF��*{2L>�5�%V�3q�G�Fد�W�ضo� �⃻�G!��g!��W!��w!��O!����޷�>e�p�~bʞ���a�~b�~b�~b�~b�~b�~be����W���_�G�/���Q��0Q��0a��xQ�
�-D��S�
]����Q�̵D�2�
Q�̵BT(s�4��7�P�\+$�[�S͗���ްQ�B4
�,4A���=a;�6:��'l���Fط�g���Fط�g��;�Fط�g��[�Fط�g��{�Fط�g���F���'���F���'��)<F�w��|�9<F*��K�c?�t�(DK�[�ˏ�-1Z!Zb�B������W�W��#t�A�sSi�< r�<�ǈ&��ߕ���Ug+���h�9
�����\y6��.���e�V���|#��ʞ0�'􀮼V/ĵ�(�k�^��<��յ��k���J��(1s���k�� �kA�<�ǈ��\+�}�Z!�3�
a�e���[yd�������)DO+���F
�gB��BH�U��:��u�^�ꔽ��){�({�({���n��	>F�+�7}�
Q�؅�c�B�G�>l?`�S��
�u{!��k{���[f��]���������^�<�}̻eFT�T;�mPٳt˻eF*{n���2�ŭ�[f�@QH^��#�!�Z!$Z/�D���y�̨�V!ګ�=y(϶0��Z�w��=�$��0B5s�����|"O�0��2�
a��V�̵B�8�$�$q��iy+��Q�L��V�M8ʞ�|�J4�	G�3'����$�~I��$ʞ\�G�!1˞9y��mDβ�O��mDβ_�ϲg��>Z#�g�3�s'������U�<��ݴFد��د�g�j���V#�W�3�ɭF��'2e�3�_��"�.{E�]��L���v�+2��Wdڶ_�L����)��i��?��g���Bx�o��Q�s
Q�c��8qn!��)�}�B�G/�D�B؇��u��{}��w!}��B�\kD�~�ֈ���Z!�_�r5���NeD���_�2B�����-{��k��mj�-�U(ӝQ�Z���%��	���:h�]h�N�*{���AFط��I� d�}+{bt�!d�}+{bt>C1¾�=1:�����љ印�eO��	F���'Fg�7¾�=1:����љ�� �  ��eO���o��({bt&~#�G�3��F&�물�`��Z�T�.�O!�F<����*gF\~�B\~�B\~�=!-gF|��	iyȐ�z��z��:����ȓ�Ad��j�r�a����B���0B��Y��S#*�o4
Q�e{�ȩ�7�s�a��أ=z�Bx�U�]�ꅻ�	�9�0�	w٫	O٫	O٫	O٫	O��� "#�O���"#�O�3��C���?��Õ���^����j����W���a��a{m��}��F�m��ֵ�T�(�k�Bx�UH�߅ty�s���	����Z"'pF�
PٳX�	���=�Ŝ�5Pٳ~̷�����ʫ��_��^�����+@FHd�� $2�
�*4A���k�P�\+$�kD
�����DBKՍ�Ly��H,���=뎼�kD�{ٳ�ț� ~Ue��^#$�S�a{~Xe��DFH�Q�1!1V!z�B4�8�Pe��e���e���e���e���e���eϝ�|��Y�����x���eϭ��Fد�'[�{JFد�'[�JFد�'b�JFد�'b�<Fد�'���<F��'[�OF��'[�OF��'[��OF��W4�e�h��^�d�=��^�� sZ!$N/����8�gB��^˭<�����t�[�ke��P�0ȳ�����k��P�Z!}pB"s��k�$q
Ѫa��V�[��B�BH�^�;
!qg!$���b�݅h�{
�1oٓ~��	��>_�����|y�H�-�(�A���B�F,��	�
�������V���|y
��g5�/OQ�V�D�|y
���B��`��/O��[��S�{+��{/Dv��f���MF��W!���Ĳo�|�3�ʗ'@]^�)�G+���9���%7�.4�ՎU��v�BT{�BT{D!�=ʞ<��$q�̵��3�
q�̵B\>s����V���\"��iIF�B���\+��*{ba�d��*{u�U���<5��e{m��y��+
a�n!��S��
a�{!��(�����߫����w�Dsjf��.{��S�i��5�N�k���g�S3#�O�k�׀9e�s�^攽L��L��L���{���{���{�=7�rj&�xe�xeύ���a˞{�953���=wtsjf��-{������[���ͩ���칣�S3��>�f =��3����Z�)KF4��?���]h�N!ID!I�B_��aKBt�<m��̵Bxe��+s�^��g��]�lX"�KF���O!$z+�D�h�>
�8���Ŷ��%!bt�d����Ĳ�*���y ��3ʞ�G0���X��dD�Y����c�~�B؏(������O!�g+��,{bt��d��,{Bm��d��,�&��o*��J,{u�U������W٫�/�o�|��H\���]�:�S�:�(D�-DC���͈�9y@���e�c�<���m{��C���W�u�Q�:f�� ꘹V�:f����k��c�Z���R�:����o!�3�
a��V�S��z�� �&�l2B"ʞ5L>�5B"ʞ5L>�5B"ʞ5L>�5�	��j��jo�+�޲W��e�P{��
���㵽vmf *�R�QH��ٿ�	Gf��,#�ǲO��ЯO��Q�X�i��Bls	�l��S�eD�.v�X{�M1�"�Y7w#�t2>��2Ed�)�%n�̸�i&܏�3��GlyE$��GTz&ۏ�M{Q-:���}��S8��� �BSF��F�I�F��x��ޣ�z�Ib#��i��e�/a�>9�d�w.@���:����1���s���vߛ����O��v_����F��1R�0RN�G�<������Ԍ�Wؿ7�@����@���m���sw1�{����i���?wz���[�o?���=� ���G>Q����~'��ۡA���{�G}9��|��<1%����W�mi��|�X(
u�-����b4A���B4
�,�eĴ,����>X�$����W�rk��K�S����bD�k�q�,D�,�Om`ʭ-F�+�O��.(��l�BH��߭�߶�N�������H�_�t�]H�?�h��h�-�����/e�</���郣gB�BH�]�^xlϑx+�K1�o!>e�b=�K��|�A�Y_��`Dc���
Q�؅P�SՈBR��P�}�񐎸��[7�Z�o݈k��u#]kb���u#Z�7R��{#Z�7�����KV�b�^~�9 FԌ��������}�i)C��4�G�����Ϳ��w����_��M�>B�y�������Sj�3��B�`*���	��H�P�vM�G��'����n�ŕ��yz�����f�Pz�yr���C"Խ�Ȧ��������?�L(}tJ�Dי&|_gݫ�����>uL��0��5���1�������<�DD3D�1�	=a.ZcnZc��j:��yM�Y�	>��|V7�g�|O�gMZu-Zum����;B����k^����_�y���������㨝˭������ nu�\l�n�Z4)�b����kAG�lK}�[	;/�6���;�����1޹9�C�	1!��f����/h�!4����>t4���f��"����L-w���{꯮P�}`ߞ<��Ħ?],7,�F�&6�����s���\��9W#E�e���b��U=���91�����0�cj��sj��r���nr��b.C�x�[�N1���r�X��<��c{� �y����f�Śد�^�.�|���|_�AO_��բ�����*|,����.��ǶzZ�|l�iSlS�4��=���?��[�k��߿�����+������+��_2��=�w�߿(���������C���/��ˀKl@ޠz�1�?��п_p�����Ͽl��_`������^��|���8�H7���Y_8>�S���<��h�V���/e>��������� ��E      �      x������ � �      �   �  x���A�$'E�=���a `����a 3��̷�E��
}}�P�O�?%�H�?��x��Oj�X�����^��=������?���j�;����ʁ�;To�r�Ł�w��~����;4ԾC��eUP~(������ʡ�'�?���q( {��|�Gn$^����>��(���ib�V`�����*I���-�W��%�ܘ���*�,���o��f�~���N�����c9�Y����Y�R�-�̈Ḿ�N�����V���0��9��Ss�d~��SR���[6�8y�M�G%y��wl���0�$'�!���8W)&K4YB�di&K4Y���r5	#՜	q���W�Z���Rɴ�Z����u*�B�����X�Z��� yS�0`%�?X$��V�$��a��K$7�&�0�71�5�+M�U�Q_(x#^�
�� ��i���l���l��@؛�8�y�8�f��^���[����[�)��=�Rm����V��o�a@�=	���e�� ���,VX_��=�ΝF�˳Z%�e��`�{�ַ�`M�Ծe�d����z#�8��^���IՑ_��(/�Ϩ/�ψ�a�G�d�ő�W	R[:�\�,������~?���p�Zb���"	��8`e�Bp��d8�-uq�l�4ā+�Y�	������g����s�i7[9�7���5��ݚ���h�ټY����ȡb�6y8�-C�O�+���͡���š�G:��:8�[�W�ÁCe5G��M��Nխ�Nn�Wpc�,����e;�.7F��'�#���`�g���wi{a$໴�0����J�<F�����d-v0���FR�䃑L-�`$n���i���p�G%�H攣CO�G%��J�s��y�~?[��/?V]\'\G*�zn̓��m�l���1�q�V���N*��őJ�q���$�8�n��h��������Y�5��#7�8'� 3"!�8`4q���#C1�vnΣ����C띞ܨ$�[Gl����A��&��ޡ�y;��H��/�
�u뇫$��Gn�=�#>��pA���8��č�C�+�᪸N�7'��|�^�+�yk4�g#�#�;L��rqėF>\!�2�8R׍�_b����0�^V��&��}��n\U�gl�둡�$����w�9vO�^V�>gG��N#7V��*���%Ʌ�ډ_E�{Z-a�X�$��cůF��z"i䶏�X)C�j�^�	�,؄[�߭ܛ#㡻�{s��ݚ8�k��p�L�k���O�aۛ#>���w�L�K/d��]z!宻�h�Xz	��^��ť�"�.��'���<�,��ޱg��d�4�=K/d�޳��Hܳ��Hܳ��Hܳ��Pܷ^��H���őv���?�����9�=�{s�'����~饣��^�O�e���^ȓ��y��*!O�^�/����#o^�8�Zđ��Vq�#!��ɵ�#ur��H�\�8R'GG��8zY���^�,���b$~!����B�=�2p�!��g���{H/N|�I/N|�I/�'XMza���^Џ���Br|�w�����o�o��o�oš�#u�,Z��P��{�7G�h-�z����ݛ#��ר�̄pv��5�2/��#�n��Hz�C�ٮ_̈́���Ϻ���_���G�      �      x������ � �      �      x������ � �      �   �  x�e�ێ�:����Av�ɻp�BH[��I�N��j�����au~��|����__~^<�F�zi��--�^!]̹׫&�"4��z�z���*�{)����k�S�'f/${5 ū��N]u�W"^H���)�9���uX ����BR&�Ġ(�`�b-���*H"��3�Y��$ E@=�/6��9V(��g��w�
��8�X�<�$0�I`�*���r�,E����s	̩�c��i�	�νUppp��9�U	\�&0t�Y[O��A��A��?eA� C� �x�g�%I����K���Sw%G�uc��;���7�-���;V�;V������u�����<�&O4C�=���գPvt�h?
>:��m3�t�����Q��|v���b]�߇RI�2i@�'�$u���-��y��WX��B�6��g2eZN��X<`?�-;�6���^��^O���<oK�+����6��u�M�;aD�*�4��18�'Ö3J �[I���3s~��7��H��H줅�{͟�G0��_l�2����G�-}���6A��S'�Sa�ݿ���^�����^Em~/f��fh�a2F C# 3/T��^����7�G��W�{еno��F�K�Y��>���eez����SJ�B��      �      x������ � �      �      x������ � �      �      x������ � �      �   Q  x�M�Kv!Ǻ���%�_G��3I,T�V�I�җ�iEj/�mjN�XkU=�{���>�P=+	�M0��@��v���p0��
zHVE�a;�#�
Ro2d�Q#	�J�@dH��
���%aʲ $_;H��b�����#�� ���C�� �o�26/)dz����@$����h���N�Y��k�e�H4N��#�3��r$�ou�$�-�.=��	����H�,{�a���ooN2��O���<������c���s�Ez���YB�f�gcII2�nm�yv�$���7�x�����~Ғ�'=�~��:�7/���
�[��k�G�A����������;@9t:��[�(�6��8j?�^v�Ȇζ8�����f2��H��N�ћ���7�D�\�淝dh����؟uq�S�B��o��W;ٸ��7ȹޙ\ϒ��|���G���~��(x7�����uCp�c
��4�3���|��aŬ�|Z����P�ĮWԱ�oI��j�z<V�O��۸�!��?��S��`��-��)/����HK�CN#�npO�H�dMV�]����Z� P��      �     x�U�K�'D�3�q���x='���T+��Z�DBJ��g��}�G~b���~5�\``	��A$p��`\ �xݱ�.�!rv/r@z��i�h$@��#X4�� _�g9P�K�O&�eɣ]%��3�?�=|�v���<�}"8>c5�K�5�Zc˱��s�5�G�?*�
~� ���'`� X`P�:�}�*z��p� ��k|��Z��R��E@-��u�E=o��Z�?JmX�����P�����f�eqۓ`׶1 *�! ��P��\�RW�p ��:KL�:K,�:Kl�:K|.��$�~�~�炮O>�̽m�����{7��Ep���x}���"���]�k|��w�q]O~`�"��_EpA����*�U�
i�B�c��*���=^Ep����}��*��9e�`�xU��U�WU\P��]Ϋ*�~O��~� �YH���T֎�
�	�
���)�n���)k��iZW�W����?^��y�C�U����$��7���r
#A=�!AA� AE'9�½$݊��y��C�U���sIu �+��C*�S>�$YI��l%I�g�\�k(Ϯ���FD�QU�Bu�CR�{��$�,=�G�9 �`:�=�I뺧�9�<��4�;�3h��i�ם�H�yRO���W�<�S���:�<1��ɨzif���\�'M�ǡ����ܷ���+��OQf�_��F���0>�g�y{��C����->d�|�!�3=K�43Q���Y�yҴ6�A��m�³���9�+��������1Sstߘx,��s@�gF~	�J��cK��%�Ƃ��W��Ϡ�4<������̴�Kx3�y��*Mﾯ�r=����ѐd��wc��wc�G�^{��}coK��%��~��*��.aU���h0;i��0�逗p���K���8O��T����8w'9���I�/���郗(	4ӳu@�rh^A�k�@3]Y4�+u@�:$�̇�h��,м�Y�yS�@�f��M�͛��75��f��d�T��d�T�f�:�N�UhfoQ�f�LUhfGR�fv-Uhf�T��d�*|pj��]�Ʈ�V}�
�A?��A?��2*L�×����
<�A��1���>x��@�;�|pwT��{>x��������E�`��k�`�;A�c���郗T����K�D@�D��-��1�74}��I�~�i@3;�4�#i@3��4����ɕ'4��k��~£��:�4�$���o��4M0��f-�@x��C:�i�!��4�a��Ch��&J�4�x���_�0�i��J=i���z6H�I��s�/�4�hs�4�K�����/���|2�f>�tC3�L��y�	�궟&x	�	^�s�	^B�i��;bi���W�ټ�LF>M��+M��4M0���X��%�D@��L	qh6#�f�h��,R��B���e�l5&��vdͼ�&��e͌�	43&��nͬh�^��_)4�?Sh�Y�B3o�)4�B3ęB3���i(��L�2�f�)4�9m�|<��f�e��W3� -�5H�6C���P��3� 	f�Aڙ�	��iai��4/K�����1G��!�gvH�3O4�g�	��ʈ���y����90��w&���	��#��/��	�&8}�"$DIH�CK��I$Hd�@3�ۄf�T�	͓�'4/j�м�yB��	��۲��$[��.j��i-}p���9��4{��U�� ='5?�I�ƿ�l�f��]�y37�켙q�jK��5g�Ԝ������I4H      �      x������ � �      �   t   x�}�[���d1�H<j]A���#��#8����#-u��>�e�T����ؾ���i�.~��E]LQLp��O[���.H^0/AJ3�|�|S��؈+�ot������Ž�"~��;�      �   I   x�=���0ߢ��9�����<�ˎ$�CK1h����@1�ش�C���Ψ[��9q�&�/�~���0�h      �   �   x�3�4 B��������|Ό��+}���t�����Ԓ̒�<���\��~`jP��cY���Eh~H���ŗ���$���g��%%�H���tJ�KKM,)-J%ʨb�r��/-AqOp�q�=\�Z�Z �9�d���`Y��
�L� �ar      �      x������ � �             x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      
      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �         H  x�%�ɵ#1��T0�Z+�\~�q@_��T���G��ڈ7��o���O�xȸܸ��	���w�w�WÎ��}{~�~��^��3�l�3ؽ��p���X��?vl�C_>xo�:�bx~���[�Xm��C}������=��M"i6�d���2��e�X\6�5c�3�\�E%�[\��$W�n���8�MUE'E�M���w�G�HA�5tC���9��pR�V_�v(Y�'�3o����-9|d��p��\���S��-%��Y�o�z~�u�_�1RYa�F���K�����4�u�'���>3/87VL�蟠x�x"�"�T0���Z���aAӊ*�����XTӿK��ĳ��*|V��X1,�bZ[Ų
2}%�mPP�,qm��YQ�AK�uP�@A�+�~g�Ӫ8���!��F��A*g�tUtcUPw��p5~b����q�Lx����� ܘ�ʭ)g�eH2�2$��4=*U��ݩX��Q�(ר�T{��T>���Xq�6ŶI�cGi#�F*ا��B�E��ݨ��J��,gF�J'MR�"�E���K�6�߿����ǽ         i   x�3144�4��K-O�L��4�2144F0�216� 	��&�U�Y"	 U�� �3K2S��*,,�!�e�Ey SCc3�@PjI)T��d�oj�DK� �?�            x���mr帎�3!~  �2�_��Vu���Ą+:^<��E�����q��5���?���׹���������������~η�����?�O����3�oG������{=>����Կ��K�ޏ��7ߏ�}?��8����q��~G���PF~M(	����=��p��2{�q��J�=��fƟ~O=�q������������5~}��'���ך�ӯ�D��'�v}���y�obq�X_6n�>��+b�_+~��w�����oW[UǺO�ۧ�_���׽��#���L;���>��������W��߿��3߂>«j��w�I�U�~8�_1ϣ��é�����_��o���Y����=u�_W_���[(���ë��û���rn����{d�~?����'�:�z�[o�ï�}��W�~����p=��U��:�*�����v�ï���J�|��S��;��x��[�ï������{�������Z��nZ���^��cq���Y#��<ݿ��[/�|=\=���������H�3���j0C�!3�82KL ��dLL"����BL��1���Iy����9�9�s�s���@�)ρ�S�zNy>�9����烞U�/���3!M�G���\t=�>({<�}��x�;Q�x�;��x$<Q�xd<����d�;�l|�x��!���+���}p�|p�|��|�#���)���MGqQ�i���ݾBA͟[��?Wysm.��qɼ}���d�^kA|�oߵ ���[���8�4U/��(Ƙ��83��`�Z���DƊIf�2ʪ�D1��S�d&�Y����칢�t��˳��]��=����y�ggϻ<{��9��.���wy�l�9س��`�V��=[y�l�9س��`�V�{��|س��Þ�<�����g/χ={y>����a�^�{��|س��d�^��={yN���9�s��d�Q��=GyN��9�s��d�Q��=�G+�Þ�u�\��͑ͅ� ��z�.ėVOׅ����2�|��������a���'�B|��[��b���b�!��b�)��b�1��b�9��b�A�wS�I��S}����z�.��Ɣqc�)���Sƍ���פɅ��|d���|d���|d���|d���|d���|d���|d��x���k�� 6>d����q��C�y jj���C�y(j籨9d���q��C�y8j��9e���q��S�yHjN�1�9e���q��S�yXjN�q�9e���q��K�ydj.瑩�d�G��q��K�ydj.瑩�d�G��q��7KVC�\]
⫫Y����v� ���x��-����͐	2�\�3���#�0���ێ��|AC{2�d2��d<ؓ�x�'��`O&��x���x��Þ\�{r?��e��'��Þ\�{r?��e<ٓ�x6�d<O2��)d<�S�x����dO!�ɞBc{����&B.�=�h�Wo�#���SeN��&BC{����GDh	bOG�{:2>�ӑ������Ɠ��Ɠ���2>�S��dO)�=��O��2>�S��dO)�=���Ɠ��Ɠ�/��A�=i���BO���#�=�G�zZ��/����i=2�O2�O2��Ӑ�͞��o�4d|��!�=7�4d�ؓ�oV�!�Ɠ�[�Iƍ=M7�4e��Ӕq)��_Sƹ?���s|M����2���5e���k�8��גq%��_Kƹ?���s|-���Z2���d���5^P�Iƹ?��Jtr|i����x̀Ğ�9'�Ǘ2����R��_ʜ���K�sr|)sN�/e�����9�?��9'�Ǘ2����R��_ʜ���������I�	
�\�a(%C�bhL�4�̹k��!h14m�� cH�����;d��!���`�:��D�2���04�������2��~A&�rA�P
����P
J�*s�6�ahMA��%h1$㋍_l���b�G�?2�������S�7O�l<e|�����S�7O�l<e|�����S�7O�h\����ߏ�ߏ�ߏ�ߏڂh>�ڂh>�Z�h>�Z�h>�Z��R�����`����`����`����`����`h�M���4Z�����ʸ�dhA���Ђ4D����y!��+h�����^�&C�z�-H�i2� ��Ђd�&C�q�-H�i2� ���z�N�i2� ��Ђd�&C�q�-H�i2� ��Ђd�&C�q�-H�i2T�-
b�yNZ�^���j��d�V�$�ڽ ����8�v/H�i�{Ae�6^��Bl�2��xe���ʜb�9/��+s^���ֿ>l�2��xe��q����M�7l�e|�q����]�wl�e|�q����]�w�l�e|�q����C�'�l<d|�����C�'�l<d|�����C�_l���b�G���Z_l\kk}�q��uz�� �׈
�qz�� ���8-�-H�i�R�inA2Np�qZ�[���Ҧ�d��6$㴴� ��M�8-�-H�inA2Np�g[���8-�-H�inA2Np�qZ�[���܂d��$� � ���8-���2'.�-H�inA2Np�qZ�[��s�4eN\�[��s����p�qΜ�̉p/�̉p�qΜ�̉p�qΜ�̉p�qΜ�̉p�qΜ�̉p�qΜ�̉p�qΜ�̉p�qΜ�̉p�qΜ�̉p�qΜ�̉p�qΜ�̉��$�9�����8gN�d�jxA2ΙӔ9�3�)sgNS�Μ���9M�38s�2gp�4e���iʜ��Ӕ9�3�)sgNS�Μ���9M�38s�2gp�4e���iʜ��Ӕ9�3�)sgNS�Μ���9M�38s�2gp�4e���iʜ��Ӕ9�3�)sgNS�Μ���9M�38s�2gp�4e���iʜ��Ӕ9�3�)sgNS�Μ���9M�38s�2gp�4e���iʜ��Ӕ9�3�)sgNS�Μ���9M�38s�2gp�4e���iʜ��Ӕ9�3�)sgNS�Μ���9M�38s�2gp�te����ʜ��ӕ9�3�+sgNW�Μ���9]�38s�2gp�te����ʜ��ӕ9�3�+sgNW�Μ���9]�3��se���Ε9��;W�Ln�\�3��se���Ε9��;W�Ln�\�3��se���Ε9��;W�Ln�\�3��se���Ε9��;W�Ln�\�3��se���Ε9��;W�Ln�\�3��se���Ε9��;W�Ln�\�3��se���Ε9��;W�Ln�\�3��se���Ε9��;W�Ln�\�3��se�l�;e�l�;e�l�;e�l�;e�l�;e�l�;e�l�;e�l�;e�l�;e�l�;e�l�;e�l�;e�l�;e�l�;e�l�;e��1VW�Lc���ƶ�~�7ľ1Z�U��#��<Z���f�Ck�C�ڝ����B!7kn��dԺ��Y�@d2م,Dj+����D!|�"Y�rs�E��Ty�G7S^��M��,�G�66N��S�'^����/:
��$_t�}3��/�&H���~@�����h��%�������h��l��N)9jkV`R��Pn�Ƭ�1T,B�q`�
�k����ۨd�^��N�4�6�v����1��=����<�^�܎������Y/bnG�zs;z�k��ѳ��܎�����w0w�g���=kן=��S^�����Z`��v�������+$��G|c�S����-co��Ƹ���~�A�����9�V?y�V��c�uU��O����k�+����u4e�j�i�K�a�1߯��Ӱ+S����yR^{��i�\T���E��i�\T�ƞ�O��b����s����k�+_�z)j�+0����Z���cp-_p��+����}�" �T�����L�TxM5�q���0����4p�P����OCի~uא��{i+"����m�RM����eΆ҈utT���\Uc?�7�g��4T�e�xw�z�u6�5�X- SCT���屦��U�ڄ�)�HvG�O���X�x-cJ���i��Lh"���:�+U3��DSrΧ�l�������s �  -Qͧ��nגD�LT�K�z��՝K���}z��w�^s��*(�����+U�+L}꜎ڪ����gH���~C��R�{j�0��UH��/.9���L՘��Σ���Rx��=��������'o6-�y�slڎ��9\
ϣ}fg"�<6V+yn�j�����)��ј������<��Foj̣��j����*v"��Av�X�+8�I�?hGa�kD���on���o���,G��5i9�O_�AR��g�+�T7����cg"���Kۊ�hЯ6B`J/"{G�0bv���~�N��~�5����	M7���ts��w5�.�����U_�!hweB[�{�L��j:�G����x�K�j:G����q4�9��tc�����lJ��3oʄ��=MEn�.f�����i�~�����}w�O�o�튵}�[�ve�X)֮��T��M�=�X{�ϥm���|.��9�R�=]����ӕUO�5��jk���AM=�݃:�ڲ���bj�j�Z��z���%������^1��e�(��>}��|}꜎JQ�}T���И�r_�j1��h���f Iøv�z�|�}s��6)�z�G���>�'�v����͹*��잴�����5E5eB�6� ���[S�(�zWi�tu}�T���!�+T�^G����ڬC����Ԏ��H���s���o����0��}2�Y�Ty�A_bB����̧G?��k����V�̧~Y�,��̧nA��ӓ|���#��>6��T�����:=�8����7�^'ղ��,a��x������	Ѽ�����$K��E85�R�G����!
���|C��8��}Cj�C;ؽ)b��H�������8S����<S�q�K������$7\��>��.�7B��9�8�Lk�l�}��OS ߊ�gc�j�mK�_
����_����}�            x������ � �             x������ � �      "      x������ � �      #      x������ � �      $      x������ � �      %      x������ � �      &      x������ � �      (      x������ � �      *      x������ � �     