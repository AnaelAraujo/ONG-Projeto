CREATE TABLE pessoas_presenteadas (
	id_presenteado SERIAL PRIMARY KEY,
	id_pedido INT REFERENCES pedidos_lencos(id_pedido),
	nome_presenteado VARCHAR(150) NOT NULL
);
SELECT * FROM pessoas_presenteadas;