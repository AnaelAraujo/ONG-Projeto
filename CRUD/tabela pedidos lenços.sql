-- Table: public.pedidos_lencos

-- DROP TABLE IF EXISTS public.pedidos_lencos;

CREATE TABLE IF NOT EXISTS public.pedidos_lencos
(
    id_pedido integer NOT NULL DEFAULT nextval('pedidos_lencos_id_pedido_seq'::regclass),
    id_solicitante integer NOT NULL,
    opcao_escolhida character varying(20) COLLATE pg_catalog."default",
    data_pedido date DEFAULT CURRENT_DATE,
    status_pedido character varying(15) COLLATE pg_catalog."default" DEFAULT 'pendente'::character varying,
    CONSTRAINT pedidos_lencos_pkey PRIMARY KEY (id_pedido),
    CONSTRAINT pedidos_lencos_id_solicitante_fkey FOREIGN KEY (id_solicitante)
        REFERENCES public.solicitantes (id_solicitante) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT pedidos_lencos_opcao_escolhida_check CHECK (opcao_escolhida::text = ANY (ARRAY['quero um lenço'::character varying, 'quero presentear'::character varying, 'ambos'::character varying]::text[])),
    CONSTRAINT pedidos_lencos_status_pedido_check CHECK (status_pedido::text = ANY (ARRAY['pendente'::character varying, 'em produção'::character varying, 'concluído'::character varying]::text[]))
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pedidos_lencos
    OWNER to postgres;