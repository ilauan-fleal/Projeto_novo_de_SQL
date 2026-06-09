-- Active: 1778352516380@@127.0.0.1@3306@novo_banco





CREATE DATABASE NOVO_BANCO;

USE NOVO_BANCO;

#Tabela para agente de custodia

CREATE TABLE `agente_de_custodia` (
  `cnpj_agente` VARCHAR(14) NOT NULL,
  `nome`VARCHAR(100) NOT NULL,
  `cod_registro` INT NOT NULL AUTO_INCREMENT,
  `banco_investimento` VARCHAR(100) NOT NULL,
  `banco_multiplo` VARCHAR(100) NOT NULL,
  `corretora` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cod_registro`)
);

#Tabela para endereço de agente de custódia

CREATE TABLE `endereco_agente` (
  `id_endereco_agente` INT NOT NULL AUTO_INCREMENT,
  `cep` VARCHAR(8) NOT NULL,
  `numero` INT(11) NOT NULL,
  `rua` VARCHAR(100) NOT NULL,
  `cidade` VARCHAR(100) NOT NULL,
  `uf` VARCHAR(2) NOT NULL,
   PRIMARY KEY (`id_endereco_agente`)
);


#Tabela para o tipo de telefone do agente de custódia!




CREATE TABLE `tipo_telefone` (
  `id_tipo_tel` INT NOT NULL AUTO_INCREMENT,
  `tipo` ENUM('Celular','Fixo') NOT NULL,
   PRIMARY KEY (`id_tipo_tel`)
);




ALTER TABLE `tipo_telefone`
ADD INDEX fk_tipo_idx
(id_tipo_tel ASC) VISIBLE;

ALTER TABLE tipo_telefone
ADD CONSTRAINT fk_tipo
FOREIGN KEY(id_tipo_tel)
REFERENCES tipo_telefone(id_tipo_tel);


#Tabela para o telefone do agente.

CREATE TABLE `tel_agente` (
  `id_tel_agente` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(15) NOT NULL,
  `ddd` VARCHAR(2) NOT NULL,
   PRIMARY KEY (`id_tel_agente`)
);


#Criando tabela para correntista
CREATE TABLE `correntista` (
  `cod_correntista` INT NOT NULL AUTO_INCREMENT,
  `data_cadastro` DATE NOT NULL,
   PRIMARY KEY (`cod_correntista`)
);

#Criando tabela para conta corrente



CREATE TABLE `conta_corrente` (
  `cod_conta_corrente` INT NOT NULL AUTO_INCREMENT,
  `agencia` VARCHAR(10) NOT NULL,
  `saldo` FLOAT(2) NOT NULL,
  `data_abertura` DATE NOT NULL,
   PRIMARY KEY (`cod_conta_corrente`)

);





ALTER TABLE conta_corrente
ADD INDEX fk_cod_conta_corrente_idx
(cod_Conta_Corrente ASC) VISIBLE;


ALTER TABLE conta_corrente
ADD CONSTRAINT fk_cod_conta_corrente
FOREIGN KEY(cod_Conta_Corrente) 
REFERENCES Conta_Corrente(cod_Conta_Corrente); 

#Criando tabela para o tipo de pessoa!


CREATE TABLE `tipo` (
  `id_tipo` INT NOT NULL AUTO_INCREMENT,
  `tipo` ENUM('PF','PJ') NOT NULL,
  PRIMARY KEY (`id_tipo`)
);





#Criando tabela para cliente

CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `nome_fantasia` VARCHAR(100) NOT NULL,
  `cpf_cliente` VARCHAR(11) NOT NULL,
  `cnpj_cliente` VARCHAR(14) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `id_tipo` INT(11) NOT NULL,
  `cnpj_agente` VARCHAR(14) NOT NULL,
  `data_ultima_atualizacao` DATE NOT NULL,
   PRIMARY KEY (`id_cliente`)
  

);

#Criando tabela para investidor

CREATE TABLE `investidor` (
  `cod_investidor` INT NOT NULL AUTO_INCREMENT,
  `salario` FLOAT(2) NOT NULL,
  `mov_financeira` DECIMAL(12,2) NOT NULL,
  `profissao` VARCHAR(100) NOT NULL,
  `patrimonio` FLOAT(2) NOT NULL,
  `id_cliente` INT(11) NOT NULL,
   PRIMARY KEY (`cod_investidor`)
);





#Criando tabela para carteira de investimentos

CREATE TABLE `carteira_investimento` (
  `cod_carteira` INT NOT NULL AUTO_INCREMENT,
  `valor_investido` FLOAT(2) NOT NULL,
  `quantidade_ativos` INT(11) NOT NULL,
   fk_cod_investidor INT NOT NULL,
   FOREIGN KEY(fk_cod_investidor) REFERENCES `investidor`(cod_investidor), 
   PRIMARY KEY (`cod_carteira`)



);

#Criando tabela para os ativos:

CREATE TABLE `ativos`(
  `cod_ativo` INT NOT NULL AUTO_INCREMENT,
  `data_emissao` DATE NOT NULL,
   fk_cod_carteira INT NOT NULL,
   FOREIGN KEY(fk_cod_carteira) REFERENCES carteira_investimento(cod_carteira),
   PRIMARY KEY (`cod_ativo`)

  
);


#Criando tabela para derivativos:


CREATE TABLE `derivativos` (
  
  `ativo_objeto` VARCHAR(100) NOT NULL,
  `data_venc` DATE NOT NULL,
  `valor_referencia` FLOAT(2) NOT NULL,
  `futuro` VARCHAR(100) NOT NULL,
  `swap` VARCHAR(100) NOT NULL,
  `termo` VARCHAR(100) NOT NULL,
   fk_cod_ativo INT NOT NULL,
   FOREIGN KEY(fk_cod_ativo) REFERENCES ativos(cod_ativo)
);


#Criando tabela para renda fixa!

CREATE TABLE `renda_fixa` (
  `id_renda_fixa` int(11) NOT NULL AUTO_INCREMENT,
  `lca` TINYINT(1) NOT NULL,
  `lci` TINYINT(1) NOT NULL,
  `cri` TINYINT(1) NOT NULL,
  `cra` TINYINT(1) NOT NULL,
  `titulo_publico` TINYINT(1) NOT NULL,
  `fidc` TINYINT(1) NOT NULL,
  `fundo_di` TINYINT(1) NOT NULL,
  `data_venc` DATE NOT NULL,
  `taxa_juros` FLOAT(2) NOT NULL,
  `cod_ativo` INT(11) NOT NULL,
   PRIMARY KEY (`id_renda_fixa`)
);


#Criando tabela para renda variável


CREATE TABLE `renda_variavel` (
  
  `acao` VARCHAR(100) NOT NULL,
  `papel_bolsa` VARCHAR(100) NOT NULL,
  `fundo_imobiliario` VARCHAR(100) NOT NULL,
  `cod_negociacao` INT NOT NULL AUTO_INCREMENT,
  `bolsa_valores` VARCHAR(100) NOT NULL,
   fk_ativos_cod_ativo INT NOT NULL,
   FOREIGN KEY(fk_ativos_cod_ativo) REFERENCES ativos(cod_ativo),
   PRIMARY KEY(`cod_negociacao`)
  
);


#Criando tabela para o endereço do cliente!



CREATE TABLE `end_cliente` (
  `id_end_cliente` INT NOT NULL AUTO_INCREMENT,
  `cidade` VARCHAR(100) NOT NULL,
  `rua` VARCHAR(11) NOT NULL,
  `cep` VARCHAR(11) NOT NULL,
  `uf` VARCHAR(2) NOT NULL,
  `numero` INT(3) NOT NULL,
   PRIMARY KEY (`id_end_cliente`)

);


#Criando tabela para o telefone do cliente!


CREATE TABLE `tel_cliente` (
  `id_tel_cliente` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(15) NOT NULL,
  `ddd` VARCHAR(2) NOT NULL,
  `id_tipo_tel` INT(11) NOT NULL,
  `id_cliente` INT(11) NOT NULL,
   PRIMARY KEY (`id_tel_cliente`)
);

