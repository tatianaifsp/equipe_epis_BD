CREATE DATABASE IF NOT EXISTS sistema_epis0203;
USE sistema_epis0203;

CREATE TABLE setor (
id_setor    INT  AUTO_INCREMENT  PRIMARY KEY,
nome_setor  VARCHAR(80)  NOT NULL,
responsavel VARCHAR(100),
localizacao VARCHAR(100)
);

CREATE TABLE fornecedor(
id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome          VARCHAR(80) NOT NULL,
cnpj          CHAR(14) UNIQUE NOT NULL
);

CREATE TABLE funcionario(
id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
nome           VARCHAR(100) NOT NULL,
cpf            CHAR(11) UNIQUE NOT NULL,
cargo          VARCHAR(80),
id_setor       INT NOT NULL,
dt_admissao    DATE,
status         VARCHAR(20) DEFAULT 'Ativo',
FOREIGN KEY (id_setor)
REFERENCES setor(id_setor)
);

