-- Table: public.date

-- DROP TABLE public.date;

CREATE TABLE public.date
(
    date_key integer NOT NULL DEFAULT nextval('date_date_key_seq'::regclass),
    full_date date,
    day_num integer,
    week_num integer,
    month_num integer,
    season text COLLATE pg_catalog."default",
    day_of_week text COLLATE pg_catalog."default",
    year_num integer,
    quarter integer,
    CONSTRAINT date_pkey PRIMARY KEY (date_key),
    CONSTRAINT month_num CHECK (month_num >= 1 AND month_num <= 12),
    CONSTRAINT day_num CHECK (day_num >= 1 AND day_num <= 366),
    CONSTRAINT year_num CHECK (year_num >= 2005 AND year_num <= 2020),
    CONSTRAINT quarter CHECK (quarter >= 1 AND quarter <= 4),
    CONSTRAINT week_num CHECK (week_num >= 1 AND week_num <= 53)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.date
    OWNER to rtakw072;
