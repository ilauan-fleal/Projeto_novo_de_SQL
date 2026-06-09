
#I)Inserção de dados na tabela Agente de Custódia:


INSERT INTO `agente_de_custodia` VALUES

    ('1111111', 'A investimentos', DEFAULT, 'Banco A invest', 'Banco multiplo A', 'Corretora A'),
    ('2222222', 'B investimentos', DEFAULT, 'Banco B invest', 'Banco multiplo B', 'Corretora B'),
    ('3333333', 'C investimentos', DEFAULT, 'Banco C invest', 'Banco multiplo C', 'Corretora C'),
    ('4444444', 'D investimentos', DEFAULT, 'Banco D invest', 'Banco multiplo D', 'Corretora D'),
    ('5555555', 'E investimentos', DEFAULT, 'Banco E invest', 'Banco multiplo E', 'Corretora E'),
    ('6666666', 'F investimentos', DEFAULT, 'Banco F invest', 'Banco multiplo F', 'Corretora F'),
    ('7777777', 'G investimentos', DEFAULT, 'Banco G invest', 'Banco multiplo G', 'Corretora G'),
    ('8888888', 'H investimentos', DEFAULT, 'Banco H invest', 'Banco multiplo H', 'Corretora H'),
    ('9999999', 'I investimentos', DEFAULT, 'Banco I invest', 'Banco multiplo I', 'Corretora I'),
    ('1000000', 'J investimentos', DEFAULT, 'Banco J invest', 'Banco multiplo J', 'Corretora J')



#II)Inserção de dados na tabela Endereço-Agente:

INSERT INTO endereco_agente VALUES
    
    (DEFAULT , '1111111', '11', 'Rua A', 'cidade A', 'AA'),
    (DEFAULT , '2222222', '22', 'Rua B', 'cidade B', 'BB'),
    (DEFAULT , '3333333', '33', 'Rua C', 'cidade C', 'CC'),
    (DEFAULT , '4444444', '44', 'Rua D', 'cidade D', 'DD'),
    (DEFAULT , '5555555', '55', 'Rua E', 'cidade E', 'EE'),
    (DEFAULT , '6666666', '66', 'Rua F', 'cidade F', 'FF'),
    (DEFAULT , '7777777', '77', 'Rua G', 'cidade G', 'GG'),
    (DEFAULT , '8888888', '88', 'Rua H', 'cidade H', 'HH'),
    (DEFAULT , '9999999', '99', 'Rua I', 'cidade I', 'II'),
    (DEFAULT , '1000000', '10', 'Rua J', 'cidade J', 'JJ')

#III)Inserção de dados na tabela Tipo-Telefone:


INSERT INTO tipo_telefone VALUES


    (DEFAULT, 'celular'),
    (DEFAULT, 'fixo'),
    (DEFAULT, 'celular'),
    (DEFAULT, 'fixo'),
    (DEFAULT, 'celular'),
    (DEFAULT, 'fixo'),
    (DEFAULT, 'celular'),
    (DEFAULT, 'fixo'),
    (DEFAULT, 'celular'),
    (DEFAULT, 'fixo')




#Inserindo dados na tabela Tel_Agente:



INSERT INTO tel_agente VALUES

    (DEFAULT, '111111111', '11'),
    (DEFAULT, '222222222', '22'),
    (DEFAULT, '333333333', '33'),
    (DEFAULT, '444444444', '44'),
    (DEFAULT, '555555555', '55'),
    (DEFAULT, '666666666', '66'),
    (DEFAULT, '777777777', '77'),
    (DEFAULT, '888888888', '88'),
    (DEFAULT, '999999999', '99'),
    (DEFAULT, '100000000', '10')



#Inserindo dados na tabela correntista


INSERT INTO correntista VALUES

    (DEFAULT, STR_TO_DATE('05-11-1960', '%d-%m-%Y')),
    (DEFAULT, STR_TO_DATE('04-11-1965', '%d-%m-%Y')),
    (DEFAULT, STR_TO_DATE('05-10-1967', '%d-%m-%Y')),
    (DEFAULT, STR_TO_DATE('02-11-1968', '%d-%m-%Y')),
    (DEFAULT, STR_TO_DATE('01-11-1970', '%d-%m-%Y')),
    (DEFAULT, STR_TO_DATE('20-09-1969', '%d-%m-%Y')),
    (DEFAULT, STR_TO_DATE('10-08-1973', '%d-%m-%Y')),
    (DEFAULT, STR_TO_DATE('09-07-1970', '%d-%m-%Y')),
    (DEFAULT, STR_TO_DATE('08-05-1963', '%d-%m-%Y')),
    (DEFAULT, STR_TO_DATE('10-05-1959', '%d-%m-%Y'))




#Inserindo dados na tabela conta-corrente!

INSERT INTO conta_corrente VALUES
    (DEFAULT, 11111, 1800.90, STR_TO_DATE('01-01-1967', '%d-%m-%Y')),
    (DEFAULT, 22222, 1950.75, STR_TO_DATE('02-02-1967', '%d-%m-%Y')),
    (DEFAULT, 33333, 2300.75, STR_TO_DATE('03-03-1967', '%d-%m-%Y')),
    (DEFAULT, 44444, 2000.75, STR_TO_DATE('04-04-1967', '%d-%m-%Y')),
    (DEFAULT, 55555, 2300.75, STR_TO_DATE('05-05-1967', '%d-%m-%Y')),
    (DEFAULT, 66666, 2500.95, STR_TO_DATE('06-06-1967', '%d-%m-%Y')),
    (DEFAULT, 77777, 2250.65, STR_TO_DATE('07-07-1967', '%d-%m-%Y')),
    (DEFAULT, 88888, 2400.75, STR_TO_DATE('08-08-1967', '%d-%m-%Y')),
    (DEFAULT, 99999, 2600.75, STR_TO_DATE('02-02-1967', '%d-%m-%Y')),
    (DEFAULT, 10000, 2750.75, STR_TO_DATE('02-02-1967', '%d-%m-%Y'))
    
#Inserindo dados na tabela tipo!
    
INSERT INTO tipo VALUES
    (DEFAULT, 'PJ'),
    (DEFAULT, 'PF'),
    (DEFAULT, 'PJ'),
    (DEFAULT, 'PF'),
    (DEFAULT, 'PJ'),
    (DEFAULT, 'PF'),
    (DEFAULT, 'PF'),
    (DEFAULT, 'PJ'),
    (DEFAULT, 'PF'),
    (DEFAULT, 'PJ')


    
#Inserindo dados na tabela clientes!



INSERT INTO cliente VALUES
    (DEFAULT,'Cliente A', 'Empresa A', '282992209', '288292299', 'cliente_A@email.com', 1, '1234567',STR_TO_DATE('02-09-1958', '%d-%m-%Y')),
    (DEFAULT,'Cliente B', 'Empresa B', '282282992', '288292929', 'cliente_B@email.com', 2, '2314576',STR_TO_DATE('01-02-1948', '%d-%m-%Y')),
    (DEFAULT,'Cliente C', 'Empresa C', '292922992', '533222222', 'cliente_C@email.com', 3, '3215678',STR_TO_DATE('02-04-1960', '%d-%m-%Y')),
    (DEFAULT,'Cliente D', 'Empresa D', '123232321', '223121312', 'cliente_D@email.com', 4, '1232789',STR_TO_DATE('01-11-1970', '%d-%m-%Y')),
    (DEFAULT,'Cliente E', 'Empresa E', '322212312', '332321222', 'cliente_E@email.com', 5, '0192765',STR_TO_DATE('05-10-1958', '%d-%m-%Y')),
    (DEFAULT,'Cliente F', 'Empresa F', '212322321', '221221231', 'cliente_F@email.com', 6, '0182791',STR_TO_DATE('05-09-1968', '%d-%m-%Y')),
    (DEFAULT,'Cliente G', 'Empresa G', '222312312', '727828892', 'cliente_G@email.com', 7, '1172629',STR_TO_DATE('05-11-1960', '%d-%m-%Y')),
    (DEFAULT,'Cliente H', 'Empresa H', '981819919', '181818919', 'cliente_H@email.com', 8, '8228910',STR_TO_DATE('02-01-1962', '%d-%m-%Y')),
    (DEFAULT,'Cliente I', 'Empresa I', '189289200', '181771189', 'cliente_I@email.com', 9, '8812920',STR_TO_DATE('01-01-1969', '%d-%m-%Y')),
    (DEFAULT,'Cliente J', 'Empresa J', '289292920', '189191101', 'cliente_J@email.com', 10,'1119287',STR_TO_DATE('02-04-1966', '%d-%m-%Y'))



#Inserindo dados na tabela investidor


INSERT INTO investidor VALUES
    (DEFAULT, 10500.50, 30000.00, 'TI tech',    1000000.00, 1),
    (DEFAULT, 16500.50, 30000.00, 'Dev I',      1500000.00, 2),
    (DEFAULT, 27500.50, 35000.00, 'Dev II',     2500000.00, 3),
    (DEFAULT, 37500.50, 35000.00, 'Gerente',    3500000.00, 4),
    (DEFAULT, 47500.50, 45000.00, 'Diretor I',  4500000.00, 5),
    (DEFAULT, 43500.50, 43000.00, 'Analista',   900000.00,  6),
    (DEFAULT, 11500.50, 20000.00, 'Assistente', 2300000.00, 7),
    (DEFAULT, 27500.50, 2000.00,  'Estagiario',  100000.00, 8),
    (DEFAULT, 37500.50, 35000.00, 'Eng.',       8500000.00, 9),
    (DEFAULT, 57500.50, 55000.00, 'Diretor II', 10000000.00, 10)



#Preenchendo dados da tabela carteira-investimento:

#Preenchendo dados da tabela carteira-investimento:

INSERT INTO carteira_investimento VALUES

    (DEFAULT, 10000000.00, 10,  1),
    (DEFAULT, 20000000.00, 20,  2),
    (DEFAULT, 30000000.00, 30,  3),
    (DEFAULT, 40000000.00, 40,  4),
    (DEFAULT, 50000000.00, 50,  5),
    (DEFAULT, 60000000.00, 60,  6),
    (DEFAULT, 70000000.00, 70,  7),
    (DEFAULT, 80000000.00, 80,  8),
    (DEFAULT, 90000000.00, 90,  9),
    (DEFAULT, 10000000.00, 01, 10)


#Preenchendo tabela referente aos ativos

INSERT INTO ativos VALUES
    (DEFAULT, STR_TO_DATE('01-01-1967', '%d-%m-%Y'), 1),
    (DEFAULT, STR_TO_DATE('01-01-1965', '%d-%m-%Y'), 2),
    (DEFAULT, STR_TO_DATE('02-01-1964', '%d-%m-%Y'), 3),
    (DEFAULT, STR_TO_DATE('01-01-1963', '%d-%m-%Y'), 4),
    (DEFAULT, STR_TO_DATE('01-01-1962', '%d-%m-%Y'), 5),
    (DEFAULT, STR_TO_DATE('01-01-1961', '%d-%m-%Y'), 6),
    (DEFAULT, STR_TO_DATE('01-01-1960', '%d-%m-%Y'), 7),
    (DEFAULT, STR_TO_DATE('01-01-1959', '%d-%m-%Y'), 8),
    (DEFAULT, STR_TO_DATE('01-01-1958', '%d-%m-%Y'), 9),
    (DEFAULT, STR_TO_DATE('01-01-1957', '%d-%m-%Y'), 10)


#Inserindo dados na tabela de derivativos

INSERT INTO derivativos VALUES
    ('Papel A' , STR_TO_DATE('01-01-1968', '%d-%m-%Y'), 10000.50, 'ANDSJS', 'S898S', 'A8D8J',  1),
    ('Papel B' , STR_TO_DATE('01-01-1967', '%d-%m-%Y'), 3000.50,  'ADHU72', 'S9SUJ', 'AD8JA',  2),
    ('Papel C' , STR_TO_DATE('01-01-1966', '%d-%m-%Y'), 2000.50,  'Q88912', 'SS88A', 'A8DJY',  3),
    ('Papel D' , STR_TO_DATE('01-01-1965', '%d-%m-%Y'), 1500.50,  'U81872', 'S99JD', 'ADJ8J',  4),
    ('Papel E' , STR_TO_DATE('01-01-1964', '%d-%m-%Y'), 9000.50,  'S899WJ', 'AID9A', 'AD8JD',  5),
    ('Papel F' , STR_TO_DATE('01-01-1963', '%d-%m-%Y'), 8000.50,  '8A8DUU', 'AI9D9', 'A8DJ8',  6),
    ('Papel G' , STR_TO_DATE('01-01-1962', '%d-%m-%Y'), 7800.50,  'UNSUA8', 'A9D98', 'AD8JY',  7),
    ('Papel H' , STR_TO_DATE('01-01-1961', '%d-%m-%Y'), 6000.50,  'SU8AJA', 'A8D8J', 'SDJ08',  8),
    ('Papel I' , STR_TO_DATE('01-01-1959', '%d-%m-%Y'), 10000.50, 'SI99WU', 'A89D7', 'ADIMS',  9),
    ('Papel J' , STR_TO_DATE('01-01-1958', '%d-%m-%Y'), 9400.50,  'UDWY91', 'A7HD7', 'D8SJS', 10)

#Inserindo dados na tabela de renda_fixa:


INSERT INTO renda_fixa VALUES

    (DEFAULT, 25, 19, 10, 8, 11, 22, 30,STR_TO_DATE('01-03-1968', '%d-%m-%Y') ,'11.5',  1),
    (DEFAULT, 21, 90, 11, 9, 12, 23, 32,STR_TO_DATE('01-03-1961', '%d-%m-%Y') ,'12.75', 2),
    (DEFAULT, 21, 90, 11, 9, 12, 23, 33,STR_TO_DATE('01-03-1961', '%d-%m-%Y') ,'12.85', 3),
    (DEFAULT, 20, 80, 12, 9, 12, 23, 35,STR_TO_DATE('01-03-1961', '%d-%m-%Y') ,'10.5',  4),
    (DEFAULT, 21, 90, 11, 9, 12, 23, 59,STR_TO_DATE('01-03-1961', '%d-%m-%Y') ,'12.5',  5),
    (DEFAULT, 21, 80, 16, 18,77, 22, 90,STR_TO_DATE('01-03-1961', '%d-%m-%Y') ,'12.5',  6),
    (DEFAULT, 21, 90, 11, 9, 12, 23, 60,STR_TO_DATE('01-03-1961', '%d-%m-%Y') ,'11.5',  7),
    (DEFAULT, 21, 90, 11, 9, 12, 23, 65,STR_TO_DATE('01-03-1960', '%d-%m-%Y') ,'9.5',   8),
    (DEFAULT, 21, 90, 31, 9, 12, 23, 70,STR_TO_DATE('01-03-1961', '%d-%m-%Y') ,'13.5',  9),
    (DEFAULT, 22, 90, 11, 9, 12, 23, 76,STR_TO_DATE('01-03-1961', '%d-%m-%Y') ,'12.5',  10)


#Inserindo dados na tabela renda_variável


INSERT INTO renda_variavel VALUES
    ('WSHDSA' ,'ADIJD2A', 'A81H8A',  DEFAULT, 'A83HMS',  1),
    ('SDUSSB' ,'ADIJD2B', 'A882HB',  DEFAULT, 'DAU8D2',  2),
    ('AUDN92C','ADDJA9C', 'AD8U82C', DEFAULT, 'ADS788',  3),
    ('ADI822' ,'ADU82SD', 'AJD89JD', DEFAULT, 'SADUU2',  4),
    ('AHD822' ,'PD828AE', 'AS88J1E', DEFAULT, 'ADWAA5',  5),
    ('AYDH29' ,'ADI922F', 'FAD87YF', DEFAULT, 'SAD226',  6),
    ('AAYD72' ,'PIA982G', 'FAD820G', DEFAULT, 'SAS27',   7),
    ('AAYUD2' ,'PA829HH', 'FDS287H', DEFAULT, 'SQWQW8',  8),
    ('AAUD72' ,'PAD82JI', 'FA828SI', DEFAULT, '9SA81J',  9),
    ('AS8A8J' ,'PA822JJ', 'FAD828J', DEFAULT, 'S188J',  10)




#Inserindo dados na tabela end_clientes


INSERT INTO end_cliente VALUES
    (DEFAULT, 'A', 'Rua A', '11111', 'AA', 111),
    (DEFAULT, 'B', 'Rua B', '22222', 'BB', 222),
    (DEFAULT, 'C', 'Rua C', '33333', 'CC', 333),
    (DEFAULT, 'D', 'Rua D', '44444', 'DD', 444),
    (DEFAULT, 'E', 'Rua E', '55555', 'EE', 555),
    (DEFAULT, 'F', 'Rua F', '66666', 'FF', 666),
    (DEFAULT, 'G', 'Rua G', '77777', 'GG', 777),
    (DEFAULT, 'H', 'Rua H', '88888', 'HH', 888),
    (DEFAULT, 'I', 'Rua I', '99999', 'II', 999),
    (DEFAULT, 'J', 'Rua J', '10000', 'JJ', 100)



#Preeenchendo dados na tabela cliente-telefone:


INSERT INTO tel_cliente VALUES
    (DEFAULT, '11111111', '11', 1, 2),
    (DEFAULT, '22222222', '22', 2, 3),
    (DEFAULT, '33333333', '33', 3, 4),
    (DEFAULT, '44444444', '44', 5, 6),
    (DEFAULT, '55555555', '55', 7, 8),
    (DEFAULT, '66666666', '66', 9, 10),
    (DEFAULT, '77777777', '77', 11, 12),
    (DEFAULT, '88888888', '88', 13, 14),
    (DEFAULT, '99999999', '99', 15, 16),
    (DEFAULT, '10000000', '00', 17, 18)





