-- 1 - O banco deseja saber qual o saldo atual das contas. Como as formas normais recomendam que o saldo não seja gravado,
-- pois é um valor calculado, podemos trabalhar com uma view para atender essa necessidade. 
-- Então, para atender esse exercício, crie uma view chamada conta_saldo e nesta faça o calculo do saldo de cada conta. 
-- Lembre-se o saldo da conta é o soma de todas as operações que aconteceram.
-- Listar cliente(nome, cpf), conta(agência, número, dígito) e o saldo disponível para essa.
	
CREATE OR REPLACE VIEW conta_saldo AS
SELECT cliente.nome, cliente.cpf, conta.id_agencia, conta.numero_conta, conta.digito,
	SUM(transacoes.valor) AS saldo_atual
	FROM conta
	LEFT JOIN cliente ON conta.id_cliente = cliente.id
	LEFT JOIN transacoes ON conta.id = transacoes.id_conta
	GROUP BY cliente.nome, cliente.cpf, conta.id_agencia, conta.numero_conta, conta.digito
	ORDER BY cliente.nome;	
	
-- 2 - O banco deseja ter um histórico de transações das contas. 
-- Já deve haver uma tabela de operações na base. 
-- Então crie uma view que exiba essas operações, não precisa exibir saldo da conta.
-- Listar cliente(nome, cpf) conta(agência, número, dígito), transação(tipo, data, valor).	

CREATE OR REPLACE VIEW historico_transacoes AS
SELECT cliente.nome, cliente.cpf, conta.id_agencia, conta.numero_conta, conta.digito,
	tipo_transacao.descricao, transacoes.data_efetuada, transacoes.valor
	FROM conta
	LEFT JOIN cliente ON cliente.id = conta.id_cliente
	LEFT JOIN transacoes ON conta.id = transacoes.id_conta
	LEFT JOIN tipo_transacao ON tipo_transacao.id = transacoes.id_tipo_transacao
	ORDER BY cliente.nome, conta.numero_conta; 