-- Adicione os �ndices que forem necess�rio ao banco criado na quest�o 2

CREATE INDEX id_cliente_index ON conta (id_cliente);
CREATE INDEX id_conta_index ON transacoes (id_conta);