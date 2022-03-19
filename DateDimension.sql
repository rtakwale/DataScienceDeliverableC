-- Table: public.date

-- DROP TABLE public.date;

CREATE TABLE public.date
(
    date_key integer NOT NULL DEFAULT nextval('date_date_key_seq'::regclass),
    full_date date,
    day_num integer,
    week_num integer,
    month_num integer,
    year integer,
    season text COLLATE pg_catalog."default",
    quarter integer,
    day_of_week text COLLATE pg_catalog."default",
    CONSTRAINT date_pkey PRIMARY KEY (date_key),
    CONSTRAINT day_num CHECK (day_num >= 1 AND day_num <= 366),
    CONSTRAINT month_num CHECK (month_num >= 1 AND month_num <= 12),
    CONSTRAINT quarter CHECK (quarter >= 1 AND quarter <= 4),
    CONSTRAINT week_num CHECK (week_num >= 1 AND week_num <= 52),
    CONSTRAINT year CHECK (year >= 2005 AND year <= 2020)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.date
    OWNER to rtakw072;

GRANT ALL ON TABLE public.date TO cvenc066;

GRANT ALL ON TABLE public.date TO eassa062;

GRANT ALL ON TABLE public.date TO rtakw072;
