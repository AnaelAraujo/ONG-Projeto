CREATE TABLE pedidos_lencos (
	id_pedido SERIAL PRIMARY KEY,
	id_solicitante INT REFERENCES solicitantes(id_solicitante),
	opcao_escolhida VARCHAR(20) CHECK (opcao_escolhida IN ('quero um lenço', 'quero presentear', 'ambos')),
	data_pedido DATE DEFAULT CURRENT_DATE,
	status_pedido VARCHAR(15) CHECK (status_pedido IN ('pendente', 'em produção', 'concluído'))
);
SELECT * FROM pedidos_lencos;