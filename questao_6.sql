-- Adicione os índices que forem necessário ao banco criado na questão 2

CREATE INDEX id_cliente_index ON conta (id_cliente);
CREATE INDEX id_conta_index ON transacoes (id_conta);