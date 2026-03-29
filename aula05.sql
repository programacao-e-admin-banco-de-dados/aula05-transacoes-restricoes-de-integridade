-- Questao 01
CREATE TABLE pessoa (
	id INT PRIMARY KEY,
	nome VARCHAR(100),
	sobrenome VARCHAR(100),
	idade INT,
	CONSTRAINT check_idade CHECK (idade >= 0)
);

-- Questao 02
ALTER TABLE pessoa
ADD CONSTRAINT unique_pessoa UNIQUE (id, nome, sobrenome);

-- Questao 03
ALTER TABLE pessoa
ALTER COLUMN idade INT NOT NULL;

-- Questao 04
CREATE TABLE endereco (
	id INT PRIMARY KEY,
	rua VARCHAR(150)
);

ALTER TABLE pessoa
ADD endereco INT;

ALTER TABLE pessoa
ADD CONSTRAINT fk_pessoa_endereco
FOREIGN KEY (endereco) REFERENCES endereco (id);
