-- 1 - O banco deseja saber todas as contas do tipo 'Conta Corrente' existente na base de dados.
-- Listar conta(id, número, digito) e tipo(descricao).

SELECT conta.id, conta.numero_conta, conta.digito, tipo_conta.descricao
	FROM conta LEFT JOIN tipo_conta
	ON conta.id_tipo_conta = tipo_conta.id
	WHERE tipo_conta.descricao = 'corrente';

-- 2 - O banco deseja saber quais de seus clientes que residem na cidade de São Paulo.
-- Listar cliente(nome, cpf), conta(agência, número e dígito).

SELECT cliente.nome, cliente.cpf, conta.id_agencia, conta.numero_conta, conta.digito, cidade.descricao
	FROM conta 
	LEFT JOIN cliente ON cliente.id = conta.id_cliente
	LEFT JOIN endereco ON cliente.id_endereco = endereco.id
	LEFT JOIN cidade ON cidade.id = endereco.id_cidade
	WHERE cidade.descricao = 'São Paulo';

-- 3 - O banco deseja saber todas as operações que ocorreram no ano de 2022.
-- Listar conta(agência, número e digito), operação(tipo, data, valor). 

SELECT conta.id_agencia, conta.numero_conta, conta.digito, 
	transacoes.data_efetuada, transacoes.valor, tipo_transacao.descricao
	FROM conta
	LEFT JOIN transacoes ON conta.id = transacoes.id_conta
	LEFT JOIN tipo_transacao ON tipo_transacao.id = transacoes.id_tipo_transacao
	WHERE transacoes.data_efetuada BETWEEN '2022-01-01' AND '2022-12-31';

-- 4 - O banco deseja saber quais as contas que não transacionaram (não houve operações) no ano de 2022.
-- Listar cliente(nome, cpf), conta(agência, número, dígito).

SELECT cliente.nome, cliente.cpf, 
	conta.id_agencia, conta.numero_conta, conta.digito
	FROM conta
	LEFT JOIN cliente ON conta.id_cliente = cliente.id 
	WHERE conta.id NOT IN (
		SELECT transacoes.id_conta
		FROM transacoes 
		LEFT JOIN tipo_transacao ON tipo_transacao.id = transacoes.id_tipo_transacao
		WHERE transacoes.data_efetuada BETWEEN '2022-01-01' AND '2022-12-31')
	ORDER BY cliente.nome;