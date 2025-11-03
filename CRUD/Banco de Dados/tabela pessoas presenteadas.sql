-- Table: public.pessoas_presenteadas

-- DROP TABLE IF EXISTS public.pessoas_presenteadas;

CREATE TABLE IF NOT EXISTS public.pessoas_presenteadas
(
    id_presenteado integer NOT NULL DEFAULT nextval('pessoas_presenteadas_id_presenteado_seq'::regclass),
    id_pedido integer NOT NULL,
    nome_presenteado character varying(150) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pessoas_presenteadas_pkey PRIMARY KEY (id_presenteado),
    CONSTRAINT pessoas_presenteadas_id_pedido_fkey FOREIGN KEY (id_pedido)
        REFERENCES public.pedidos_lencos (id_pedido) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pessoas_presenteadas
    OWNER to postgres;