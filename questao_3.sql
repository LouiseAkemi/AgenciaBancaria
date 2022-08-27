-- Inserir dados na base criada na questão 2

BEGIN TRANSACTION;
INSERT INTO banco(nome, cnpj) VALUES('Banco do Brasil','00000000000000');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO pais (descricao) VALUES('Brasil');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO estado (id, descricao, id_pais) VALUES(1,'Santa Catarina',1);
INSERT INTO estado (id, descricao, id_pais) VALUES(2,'Paraná',1);
INSERT INTO estado (id, descricao, id_pais) VALUES(3,'São Paulo',1);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO cidade (descricao, id_estado) VALUES('Florianópolis',1);
INSERT INTO cidade (descricao, id_estado) VALUES('Videira',1);
INSERT INTO cidade (descricao, id_estado) VALUES('Curitiba',2);
INSERT INTO cidade (descricao, id_estado) VALUES('Foz do Iguaçu',2);
INSERT INTO cidade (descricao, id_estado) VALUES('São Paulo',3);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Moacir Pereira Júnior','30','Lagoa da Conceição',1);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Saul Brandalise','151',null,2);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Comendador Araújo','314','Galeria Glaser',3);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Avenida Brasil','1377',null,4);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Avenida Paulista','2163','Livraria Cultura',5);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Dunning', '147', 406, 3);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Tomscot', '058', 10, 3);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Mccormick', '0', 400, 4);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Ohio', '538', 801, 4);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Elka', '2', 347, 4);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Burrows', '36', 191, 5);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Mesta', null, null, 2);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Jay', null, null, 1);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Green Ridge', '39128', 88, 1);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Vidon', null, null, 1);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Forest', '91286', 250, 3);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Brown', '5560', 454, 3);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Judy', '91', 873, 4);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Lakewood', '123', 392, 5);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Valley Edge', '1211', 642, 1);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Ridge Oak', '66112', 319, 2);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Sunfield', '68064', 673, 1);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Farragut', '2197', 371, 3);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Nevada', '143', 283, 4);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Shoshone', '4812', 225, 5);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Tomscot', '6392', 812, 4);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('New Castle', '9', 545, 1);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Heffernan', '4615', 738, 1);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Washington', '66', 196, 4);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Vera', '4', 82, 2);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Arizona', '4', 868, 3);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Carpenter', '80', 57, 2);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('2nd', null, null, 5);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Lotheville', '810', 308, 1);
INSERT INTO endereco (logradouro, numero, complemento, id_cidade) VALUES ('Porter', '2974', 122, 3);
COMMIT TRANSACTION;

BEGIN TRANSACTION; 
INSERT INTO agencia (nome, id_endereco, id_banco) VALUES('BB - São Paulo', 5, 1);
INSERT INTO agencia (nome, id_endereco, id_banco) VALUES('BB - Centro Foz do Iguaçu', 4, 1);
INSERT INTO agencia (nome, id_endereco, id_banco) VALUES('BB - Lagoa da Conceição', 1, 1);
INSERT INTO agencia (nome, id_endereco, id_banco) VALUES('BB - Centro Videira', 2, 1);
INSERT INTO agencia (nome, id_endereco, id_banco) VALUES('BB - Comendador', 3, 1);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Amii Cleminson', '26117895497', '1971/07/11', '45142996750', 6, '687918');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Virgie Sharpus', '74804582112', '1929/07/24', '59578656446', 7, '735010');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Anna Insoll', '87755938768', '1976/02/12', '55733392505', 8, '391795');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Reg Rebbeck', '18677267841', '1972/11/15', '41645056441', 9, '228740');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Araldo Beneix', '77855544968', '1989/02/10', '75978434209', 10, '307317');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Brooke Restall', '67748289826', '1942/01/10', '45565896440', 11, '227479');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Worthy Masters', '11401734722', '1932/06/21', '84954878836', 12, '854947');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Hyacinthe Trollope', '67528383037', '1924/05/27', '59582011682', 13, '541636');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Zackariah Emblem', '83622961867', '1997/02/25', '73219569820', 14, '991038');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Freda Kahn', '04954039933', '1929/12/02', '41991756051', 15, '660327');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Lona Bonnell', '15101817541', '1944/11/27', '47491636910', 16, '679683');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Becki O''Loinn', '13065626053', '1972/11/11', '87540891069', 17, '631675');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Derick Mokes', '38884688573', '1944/02/29', '61425818793', 18, '657501');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Misty Eilles', '82971794262', '1927/02/08', '64983404604', 19, '750378');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Cherish Lapworth', '95186831473', '1944/06/12', '01357954332', 20, '343939');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Bryanty Biswell', '02051510538', '1948/11/06', '17657807357', 21, '675102');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Leeland Mannie', '48297611357', '1989/04/25', '87950458203', 22, '522486');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Gayle Bodsworth', '59718536162', '1959/05/06', '81616241693', 23, '098764');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Currey Rizziello', '90663914895', '1939/01/27', '23354285665', 24, '261425');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Luise Maxwale', '26114880965', '1980/08/22', '69513910859', 25, '005811');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Broderick Lewing', '17029142428', '1951/03/26', '28549191364', 26, '297706');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Anderson Shill', '43488098478', '1980/05/13', '97436066822', 27, '293284');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Hadlee Moquin', '41429708469', '1948/08/29', '32011452179', 28, '975637');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Keenan MacNamee', '65050840122', '1972/10/26', '46071018040', 29, '130337');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Giustina Bardnam', '25877118336', '1979/03/17', '14420209542', 30, '532454');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Margette Armin', '35107216646', '1944/01/07', '52137595234', 31, '062594');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Eberhard Klousner', '92461562598', '1941/02/18', '53973630351', 32, '123125');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Abbie Andover', '42732780803', '1989/12/10', '94567265950', 33, '931355');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Dawna Hamerton', '26878443781', '1932/07/18', '30467753844', 34, '804327');
INSERT INTO cliente (nome, cpf, data_nascimento, telefone, id_endereco, senha) VALUES ('Nels MacCallion', '28297438707', '1938/06/01', '13831165356', 35, '025884');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO tipo_transacao (descricao) VALUES ('Debito');
INSERT INTO tipo_transacao (descricao) VALUES ('Credito');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO tipo_conta (descricao) VALUES ('poupança');
INSERT INTO tipo_conta (descricao) VALUES ('salario');
INSERT INTO tipo_conta (descricao) VALUES ('corrente');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('17045564', '1997/03/09', 18, 4, 1, 2);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('47846926', '1987/07/16', 20, 1, 2, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('08816359', '2002/04/25', 7, 4, 3, 6);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('85379778', '1966/06/01', 28, 4, 3, 2);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('64043260', '1983/06/12', 15, 4, 1, 2);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('43678857', '1974/09/24', 20, 1, 1, 2);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('85550904', '1951/10/04', 21, 1, 1, 9);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('63247616', '1997/07/05', 23, 5, 1, 1);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('27108835', '1967/11/14', 23, 5, 1, 9);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('91415303', '1973/05/17', 23, 1, 1, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('81578754', '1999/02/15', 3, 2, 3, 3);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('85874427', '1995/12/01', 21, 2, 3, 0);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('23905438', '1951/07/03', 16, 5, 3, 5);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('17310736', '1992/12/12', 9, 5, 2, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('72802548', '1993/02/03', 7, 4, 3, 1);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('03294578', '1989/01/06', 27, 3, 2, 3);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('50244723', '2003/10/25', 18, 4, 3, 8);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('79839688', '1966/03/05', 14, 5, 3, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('61379370', '1950/08/30', 17, 1, 2, 4);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('08530172', '1986/07/09', 11, 1, 2, 5);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('09704371', '1980/02/03', 7, 2, 1, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('53668334', '1967/03/29', 27, 3, 2, 9);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('43933927', '1983/02/22', 3, 5, 1, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('81879460', '1956/08/02', 13, 5, 3, 9);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('03249545', '1986/02/24', 7, 1, 1, 4);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('24647780', '1949/01/03', 28, 3, 1, 6);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('56904175', '1993/06/02', 27, 1, 2, 1);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('34126136', '1983/11/04', 13, 1, 2, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('07076567', '2002/05/08', 16, 1, 1, 5);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('81298158', '1961/05/04', 19, 5, 1, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('71618276', '1999/02/26', 10, 1, 1, 1);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('59106547', '1998/12/20', 24, 4, 2, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('12465768', '1999/09/24', 24, 4, 2, 8);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('24340537', '1984/08/01', 4, 1, 1, 4);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('48298559', '1999/04/28', 8, 5, 1, 8);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('24199521', '1983/07/31', 28, 4, 3, 2);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('20985447', '1972/02/25', 17, 3, 3, 2);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('80837427', '1968/02/01', 16, 3, 2, 2);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('72879950', '1975/10/29', 30, 2, 2, 8);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('05621274', '1980/11/02', 19, 4, 3, 2);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('84407759', '1974/09/04', 11, 4, 1, 4);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('87087567', '1964/05/09', 10, 4, 2, 1);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('02387976', '2003/03/25', 6, 5, 2, 6);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('17854599', '1992/05/29', 16, 1, 3, 3);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('52140600', '1993/12/28', 23, 2, 3, 0);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('00880993', '1948/04/18', 16, 5, 2, 0);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('30885739', '1969/03/13', 28, 4, 2, 2);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('86801152', '2003/11/06', 5, 5, 2, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('79700679', '1952/03/14', 29, 3, 3, 7);
INSERT INTO conta (numero_conta, data_criacao, id_cliente, id_agencia, id_tipo_conta, digito) VALUES ('91978890', '1950/10/28', 13, 3, 3, 2);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2017/04/11 10:00:05', -500.00, 43, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2017/04/11 10:00:05', 500.00, 4, 2, 1);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/08/09 09:15:05', -63.69, 21, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/08/09 09:15:05', 63.69, 6, 2, 3);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2017/01/07 18:47:35', -133.79, 48, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2017/01/07 18:47:35', 133.79, 14, 2, 5);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/11/11 10:20:00', -439.41, 41, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/11/11 10:20:00', 439.41, 18, 2, 7);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/06/02 23:40:00', -863.74, 23, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/06/02 23:40:00', 863.74, 22, 2, 9);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/04/10 15:48:08', -824.5, 46, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/04/10 15:48:08', 824.5, 26, 2, 11);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/04/11 05:18:40', -35.65, 49, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/04/11 05:18:40', 35.65, 24, 2, 13);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/12/09 19:20:15', 811.6, 19, 2, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/06 18:06:14', 614.44, 44, 2, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/06/19 14:10:09', 149.05, 32, 2, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/09/01 18:45:10', -429.83, 1, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/09/01 18:45:10', 429.83, 32, 2, 18);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/12/09 11:11:05', -516.5, 8, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/12/09 11:11:05',  516.5, 30, 2, 20);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/10/15 12:22:03', 350.11, 10, 2, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/10/29 22:26:13', -350.11, 10, 1, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/09/11 10:25:45', -556.02, 22, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/09/11 10:25:45', 556.02, 48, 2, 24);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/09/11 10:25:52', -40.02, 50, 1, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/09/21 20:23:01', 632.94, 3, 2, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/04/15 13:15:08', 406.93, 47, 2, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/02/15 10:15:08', 1000.00, 47, 2, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/07 18:16:18', -537.6, 47, 1, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/02/10 19:20:45', -693.7, 13, 1, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/07/11 01:05:46', -269.51, 19, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/07/11 01:05:46', 269.51, 30, 2, 32);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/01/31 10:08:41', -808.38, 36, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/01/31 10:08:41', 808.38, 44, 2,  34);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/02/14 16:14:10', -680.45, 20, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/02/14 16:14:10', 680.45, 22, 2,  36);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/21 17:18:19', -120.67, 15, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/21 17:18:19', 120.67, 26, 2,  38);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/29 21:20:20', -906.85, 12, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/29 21:20:20',  906.85, 9, 2,  40);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/04/07 08:07:56', -925.14, 26, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/04/07 08:07:56', 925.14, 31, 2,  42);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/08/28 10:48:06', -691.49, 50, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/08/28 10:48:06',  691.49, 30, 2,  44);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/16 10:48:06', 710.00, 2, 2, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/16 10:48:06', 11.00, 5, 2, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/21 12:13:47', -10.00, 5, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/21 12:13:47',  10.00, 7, 2,  48);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/07 15:16:50', -879.42, 6, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/07 15:16:50',  879.42, 15, 2,  50);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/08/26 06:15:36', -430.53, 21, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/08/26 06:15:36', 430.53,  11, 2,  52);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/03/02 10:45:36', 1530.53,  16, 2,  null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/08/19 07:15:36', -80.11, 16, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/08/19 07:15:36', 80.11,  17, 2, 55);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/01 16:46:48', 269.51,  25, 2,  null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/10/08 07:56:15', 909.47,  27, 2,  null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/10 14:15:36', 511.09,  28, 2,  null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/14 16:11:36', 954.09,  29, 2,  null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/06/17 15:10:26', 684.87,  33, 2,  null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/11 19:08:07', 260.2,  34, 2,  null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/02/09 02:35:45', 118.12,  35, 2,  null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/29 14:46:18', -416.74, 44 , 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/29 14:46:18', 416.74,  38, 2, 64);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/29 12:46:18', -416.74, 44 , 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/29 12:46:18', 416.74,  37, 2, 66);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/03/29 12:46:18', -46.74, 22 , 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/03/29 12:46:18', 46.74,  38, 2, 68);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/09 12:46:18', -20.68, 12 , 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/09 12:46:18', 20.68,  39, 2, 70);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/15 16:54:56', -89.89, 46 , 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/15 16:54:56', 89.89,  40, 2, 72);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/05 18:56:54', -90.89, 4 , 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/05 18:56:54', 90.89,  42, 2, 74);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/07/29 03:16:45', -937.08, 3, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/07/29 03:16:45', 937.08, 45, 2, 76);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/08/21 16:56:47', -57.15, 18, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/08/21 16:56:47',  57.15, 45, 2, 78);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/21 15:48:36', -213.73, 37, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/21 15:48:36',  213.73, 45, 2, 80);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/21 14:48:36', -23.70, 37, 1, null);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/21 15:50:36', -2.73, 37, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/21 15:50:36',  2.73, 45, 2, 83);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/23 13:55:36', -22.83, 17, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/23 13:55:36',  22.83, 5, 2, 85);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/08/23 18:55:36', -222.83, 6, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/08/23 18:55:36',  222.83, 7, 2, 87);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/06/03 06:55:36', -544.78, 6, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/06/03 06:55:36',  544.78, 46, 2, 89);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/03 08:05:36', -242.54, 50, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/03 08:05:36',  242.54, 43, 2, 91);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/10/16 15:35:06', -516.31, 50, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/10/16 15:35:06', 516.31, 43, 2, 93);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/04/15 03:35:06', -50.31, 50, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/04/15 03:35:06', 50.31, 43, 2, 95);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/04/15 03:35:06', -45.31, 2, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2020/04/15 03:35:06', 45.31, 45, 2, 97);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/08/18 09:38:06', -365.24, 21, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/08/18 09:38:06',  365.24, 42, 2, 99);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/08/18 10:08:03', -15.89, 15, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/08/18 10:08:03',  15.89, 17, 2, 101);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/06/24 10:24:03', -423.89, 44, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/06/24 10:24:03',  423.89, 1, 2, 103);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/03/03 12:33:03', -43.89, 20, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/03/03 12:33:03',  43.89, 11, 2, 105);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/04/04 14:43:43', -44.44, 44, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/04/04 14:43:43',  44.44, 10, 2, 107);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/07/08 10:03:40', -10.44, 10, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/07/08 10:03:40',  10.44, 14, 2, 109);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/02/05 13:43:53', -45.47, 15, 1, null);

INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/02/05 13:43:53',  45.47,  19, 2, 111);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/06 21:43:53', 739.64, 34, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem)
VALUES ('2021/09/13 19:43:53', 56.01, 50, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/08/13 15:43:53', 178.26, 8, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/03/02 20:43:53', 186.88, 26, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/30 23:33:53', 79.71, 23, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/03/13 17:43:53', 201.38, 39, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/29 12:43:53', 459.72, 12, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/16 14:43:53', 892.57, 18, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/10/08 16:53:53', 79.58, 8, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/02/08 13:46:53', 401.18, 27, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/08/23 17:47:53', 238.37, 44, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/08 15:43:53', 403.06, 30, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/02/10 13:43:53', 102.69, 10, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/12/23 14:43:53', 643.26, 27, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/11 16:53:53', 892.13, 47, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/07/02 17:00:53', 659.77, 37, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/11/11 16:50:53', -661.3, 17, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/13 16:50:53', -290.1, 47, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/04 17:10:53', -691.41, 35, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/22 18:00:53', -397.4, 8, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/06/04 01:00:53', -35.53, 38, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/04/25 04:00:53', -517.82, 9, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/12 06:30:53', -791.2, 15, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/15 17:50:53', -801.36, 4, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/14 22:50:53', -484.14, 6, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/11/15 21:50:53', -819.26, 20, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/17 20:56:46', -632.01, 40, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/10/06 18:12:53', -223.71, 15, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/01/25 16:16:53', -51.66, 29, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/04/16 16:00:43', -991.12, 2, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2021/09/05 17:10:53', -959.85, 42, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/07/22 16:01:53', -881.51, 32, 1, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/06/28 15:01:53', 387.26, 22, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/02/20 14:01:53', 38.78, 42, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/07/25 12:01:53', 183.12, 5, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/06/24 13:01:53', 620.76, 39, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/05/22 15:01:53', 643.52, 15, 2, null);
INSERT INTO transacoes (data_efetuada, valor, id_conta, id_tipo_transacao, id_operacao_origem) 
VALUES ('2022/07/12 13:01:53', 61.57, 16, 2, null);
COMMIT TRANSACTION;

