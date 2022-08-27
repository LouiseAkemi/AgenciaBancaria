-- Crie a base de dados relacionada ao DER criado na questões 1

CREATE TABLE banco(
	id SERIAL NOT NULL,
	nome VARCHAR(255) NOT NULL,
	cnpj VARCHAR(14) NOT NULL UNIQUE,
	PRIMARY KEY (id)
);

CREATE TABLE agencia(
	numero_agencia SERIAL NOT NULL,
	nome VARCHAR(85) NOT NULL,
	id_endereco INTEGER NOT NULL,
	id_banco INTEGER NOT NULL,
	PRIMARY KEY (numero_agencia)
);

CREATE TABLE cliente(
	id SERIAL NOT NULL,
	nome VARCHAR(85),
	cpf VARCHAR(11) NOT NULL UNIQUE,
	data_nascimento DATE NOT NULL,
	telefone VARCHAR(11) NOT NULL,
	id_endereco INTEGER NOT NULL, 
	senha VARCHAR(6) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE endereco(
	id SERIAL NOT NULL,
	logradouro VARCHAR(255) NOT NULL,
	numero VARCHAR(15),
	complemento VARCHAR(255),
	id_cidade INTEGER NOT NULL,	
	PRIMARY KEY (id)
);

CREATE TABLE cidade(
	id SERIAL NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	id_estado INTEGER NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE estado(
	id SERIAL NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	id_pais INTEGER NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE pais(
	id SERIAL NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE conta(
	id SERIAL NOT NULL,
	numero_conta VARCHAR(8) NOT NULL,
	data_criacao DATE NOT NULL,
	id_cliente INTEGER NOT NULL,
	id_agencia INTEGER NOT NULL,	
	id_tipo_conta INTEGER NOT NULL,
	digito INTEGER NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE tipo_conta(
	id SERIAL NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE transacoes(
	id SERIAL NOT NULL,
	data_efetuada TIMESTAMP NOT NULL,
	valor NUMERIC(12,6) NOT NULL,
	id_conta INTEGER NOT NULL,
	id_tipo_transacao INTEGER NOT NULL,
	id_operacao_origem INTEGER,
	PRIMARY KEY (id)
);

CREATE TABLE tipo_transacao(
	id SERIAL NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

ALTER TABLE agencia
	ADD CONSTRAINT fk_endereco 
	FOREIGN KEY (id_endereco) 
	REFERENCES endereco(id);

ALTER TABLE agencia
	ADD CONSTRAINT fk_banco
	FOREIGN KEY (id_banco) 
	REFERENCES banco(id);

ALTER TABLE cliente
	ADD CONSTRAINT fk_endereco
	FOREIGN KEY (id_endereco) 
	REFERENCES endereco(id);

ALTER TABLE endereco
	ADD CONSTRAINT fk_cidade
	FOREIGN KEY (id_cidade) 
	REFERENCES cidade(id);
		
ALTER TABLE cidade
	ADD CONSTRAINT fk_estado
	FOREIGN KEY (id_estado) 
	REFERENCES estado(id);	

ALTER TABLE estado
	ADD CONSTRAINT fk_pais
	FOREIGN KEY (id_pais) 
	REFERENCES pais(id);
	
ALTER TABLE conta
	ADD CONSTRAINT fk_tipo_conta
	FOREIGN KEY (id_tipo_conta) 
	REFERENCES tipo_conta(id);	

ALTER TABLE conta
	ADD CONSTRAINT fk_cliente
	FOREIGN KEY (id_cliente) 
	REFERENCES cliente(id);
	
ALTER TABLE conta
	ADD CONSTRAINT fk_agencia
	FOREIGN KEY (id_agencia) 
	REFERENCES agencia(numero_agencia);

ALTER TABLE transacoes
	ADD CONSTRAINT fk_tipo_transacao
	FOREIGN KEY (id_tipo_transacao) 
	REFERENCES tipo_transacao(id);

ALTER TABLE transacoes
	ADD CONSTRAINT fk_conta
	FOREIGN KEY (id_conta)
	REFERENCES conta(id);

ALTER TABLE transacoes
	ADD CONSTRAINT fk_origem 
	FOREIGN KEY (id_operacao_origem) 
	REFERENCES transacoes(id);
