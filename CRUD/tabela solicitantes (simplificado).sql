CREATE TABLE solicitantes (
	id_solicitante SERIAL PRIMARY KEY,
	nome_completo VARCHAR(150) NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
	telefone VARCHAR(20),
	data_solicitacao DATE DEFAULT CURRENT_DATE
);
SELECT * FROM solicitantes;