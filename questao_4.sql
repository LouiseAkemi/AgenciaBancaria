-- 1 - O banco deseja saber todas as contas do tipo 'Conta Corrente' existente na base de dados.
-- Listar conta(id, n�mero, digito) e tipo(descricao).

SELECT conta.id, conta.numero_conta, conta.digito, tipo_conta.descricao
	FROM conta LEFT JOIN tipo_conta
	ON conta.id_tipo_conta = tipo_conta.id
	WHERE tipo_conta.descricao = 'corrente';

-- 2 - O banco deseja saber quais de seus clientes que residem na cidade de S�o Paulo.
-- Listar cliente(nome, cpf), conta(ag�ncia, n�mero e d�gito).

SELECT cliente.nome, cliente.cpf, conta.id_agencia, conta.numero_conta, conta.digito, cidade.descricao
	FROM conta 
	LEFT JOIN cliente ON cliente.id = conta.id_cliente
	LEFT JOIN endereco ON cliente.id_endereco = endereco.id
	LEFT JOIN cidade ON cidade.id = endereco.id_cidade
	WHERE cidade.descricao = 'S�o Paulo';

-- 3 - O banco deseja saber todas as opera��es que ocorreram no ano de 2022.
-- Listar conta(ag�ncia, n�mero e digito), opera��o(tipo, data, valor). 

SELECT conta.id_agencia, conta.numero_conta, conta.digito, 
	transacoes.data_efetuada, transacoes.valor, tipo_transacao.descricao
	FROM conta
	LEFT JOIN transacoes ON conta.id = transacoes.id_conta
	LEFT JOIN tipo_transacao ON tipo_transacao.id = transacoes.id_tipo_transacao
	WHERE transacoes.data_efetuada BETWEEN '2022-01-01' AND '2022-12-31';

-- 4 - O banco deseja saber quais as contas que n�o transacionaram (n�o houve opera��es) no ano de 2022.
-- Listar cliente(nome, cpf), conta(ag�ncia, n�mero, d�gito).

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