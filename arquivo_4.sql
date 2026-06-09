-- Active: 1778352516380@@127.0.0.1@3306@novo_banco

#Atualização dinâmica de tabela!

UPDATE agente_de_custodia  
SET nome = 'X investimentos' WHERE cod_registro = 1;

#Deleção de dados

DELETE FROM agente_de_custodia WHERE cod_registro = 2;

#Atualização de dados da tabela endereço_agente

UPDATE endereco_agente
SET cep = '0000000' WHERE id_endereco_agente = 1;

#Deleção de dados da tabela

DELETE FROM endereco_agente WHERE id_endereco_agente < 5;

#Atualização da tabela tipo_telefone


UPDATE tipo_telefone
SET tipo = 'fixo' WHERE id_tipo_tel > 1 and id_tipo_tel < 8;

#Atualização da tabela telefone_agente

DELETE FROM tel_agente WHERE id_tel_agente < 2 and id_tel_agente > 4;



#Atualização da tabela correntista!

UPDATE correntista
SET data_cadastro = STR_TO_DATE('07-07-1998', '%d-%m-%Y') WHERE cod_correntista > 1 and cod_correntista < 9;


#Atualização da tabela conta-corrente


UPDATE conta_corrente
SET agencia = '8888', saldo = 1600.90 WHERE cod_conta_corrente < 9 and cod_conta_corrente > 1;


DELETE FROM conta_corrente WHERE cod_conta_corrente = 0;

#Alteração da tabela tipo

UPDATE tipo
SET tipo = 'PJ' WHERE id_tipo = 2;


DELETE FROM tipo WHERE id_tipo > 4;


#Alteração da tabela cliente!

UPDATE cliente
set nome = 'Cliente U' where id_cliente = 1;

DELETE FROM cliente WHERE id_cliente > 1 and id_cliente < 6;


#Alteração da tabela investidor!


UPDATE investidor
SET profissao = 'Engenheiro de Computação' WHERE cod_investidor = 7;



#Alteração da tabela carteira de investimentos!

UPDATE carteira_investimento
SET valor_investido = 175000.75 WHERE cod_carteira = 1;




#Alteração da tabela derivativos

UPDATE derivativos
SET ativo_objeto = 'Papel X' WHERE ativo_objeto = 'Papel A';





#Alteração da tabela de renda fixa


UPDATE renda_fixa
SET lca = 25 WHERE id_renda_fixa > 1 and id_renda_fixa < 7;


#Alteração da tabela de renda variável!


DELETE FROM renda_variavel WHERE acao = 'WSHDSA';



#Alteração da tabela endereço-cliente!

UPDATE end_cliente
set cidade = 'cidade Y' WHERE id_end_cliente > 1 and id_end_cliente < 4;