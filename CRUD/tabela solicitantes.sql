-- Table: public.solicitantes

-- DROP TABLE IF EXISTS public.solicitantes;

CREATE TABLE IF NOT EXISTS public.solicitantes
(
    id_solicitante integer NOT NULL DEFAULT nextval('solicitantes_id_seq'::regclass),
    nome_completo character varying(50) COLLATE pg_catalog."default" NOT NULL,
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    telefone character varying(16) COLLATE pg_catalog."default",
    data_solicitacao date DEFAULT CURRENT_DATE,
    CONSTRAINT solicitantes_pkey PRIMARY KEY (id_solicitante),
    CONSTRAINT solicitantes_email_key UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.solicitantes
    OWNER to postgres;