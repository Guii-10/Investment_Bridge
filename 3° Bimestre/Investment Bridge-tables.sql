CREATE DATABASE INVESTMENT_BRIDGE;
USE INVESTMENT_BRIDGE;


CREATE TABLE USUARIO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(50) UNIQUE NOT NULL,
    EMAIL VARCHAR(100) UNIQUE NOT NULL,
    SENHA VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) UNIQUE,
    CEP VARCHAR(10),
    TELEFONE VARCHAR(19) UNIQUE,
    FOTO VARCHAR(100) ,
	BIOGRAFIA TEXT,
    TIPO ENUM('Investidor', 'Usuario') NOT NULL DEFAULT 'Usuario'
);

CREATE TABLE PROJETOS (
    COD INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50) NOT NULL,
    DESCRICAO VARCHAR(200) NOT NULL,
    VALOR_TOTAL DOUBLE,
    IMAGEM VARCHAR(100)

);

CREATE TABLE USUARIO_PROJETO (
    FK_USUARIO_ID INT,
    FK_PROJETOS_COD INT,
    FOREIGN KEY (FK_USUARIO_ID) REFERENCES USUARIO(ID),
    FOREIGN KEY (FK_PROJETOS_COD) REFERENCES PROJETOS(COD),
    PRIMARY KEY (FK_USUARIO_ID, FK_PROJETOS_COD)
);

CREATE TABLE CHAT (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    REMETENTE_ID INT NOT NULL,
    DESTINATARIO_ID INT NOT NULL,
    MENSAGEM TEXT NOT NULL,
    DATA_HORA DATE,
    FOREIGN KEY (REMETENTE_ID) REFERENCES USUARIO(ID),
    FOREIGN KEY (DESTINATARIO_ID) REFERENCES USUARIO(ID)
);

CREATE TABLE FORMAS_PAGAMENTO (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(50) NOT NULL
);

CREATE TABLE PAGAMENTOS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FK_USUARIO_ID INT,
    FK_PROJETOS_COD INT,
    FK_FORMA_PAGAMENTO_ID INT,
    VALOR_PAGO DOUBLE NOT NULL,
    DATA_PAGAMENTO DATE,
    FOREIGN KEY (FK_USUARIO_ID) REFERENCES USUARIO(ID),
    FOREIGN KEY (FK_PROJETOS_COD) REFERENCES PROJETOS(COD),
    FOREIGN KEY (FK_FORMA_PAGAMENTO_ID) REFERENCES FORMAS_PAGAMENTO(ID)
);

CREATE TABLE DADOS_CARTAO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FK_USUARIO_ID INT NOT NULL,
    NOME_TITULAR VARCHAR(50) NOT NULL,
    NUMERO_CARTAO VARCHAR(16) NOT NULL,
    VALIDADE VARCHAR(7) NOT NULL, 
    CVV INT NOT NULL,
    FOREIGN KEY (FK_USUARIO_ID) REFERENCES USUARIO(ID)
);

CREATE TABLE CONTATOS (
ID INT AUTO_INCREMENT PRIMARY KEY,
FK_USUARIO_ID1 INT,
FOREIGN KEY (FK_USUARIO_ID1) REFERENCES USUARIO(ID),
FK_USUARIO_ID2 INT,
FOREIGN KEY (FK_USUARIO_ID2) REFERENCES USUARIO(ID)

); 