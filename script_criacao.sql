CREATE DATABASE narahoteis;

USE narahoteis;

CREATE TABLE canais (
	id INT PRIMARY KEY,
    nome VARCHAR(300),
    comissao DECIMAL(6,2)
);

CREATE TABLE unidades (
	id INT PRIMARY KEY,
    nome VARCHAR(300),
    cidade VARCHAR(300),
    regiao VARCHAR(300),
    categoria VARCHAR(300),
    num_quartos_total INT 
);

CREATE TABLE tipos_quarto (
	id INT PRIMARY KEY,
    descricao VARCHAR(200),
    capacidade_max INT,
    valor_diaria DECIMAL(8,2)
);

CREATE TABLE clientes (
	id INT PRIMARY KEY,
    nome VARCHAR(200),
    cidade_origem VARCHAR(200),
    estado_origem VARCHAR(100),
    faixa_etaria VARCHAR(100),
    tipo_cliente VARCHAR(150)
);

CREATE TABLE funcionarios (
	id INT PRIMARY KEY,
    id_unidade INT,
    nome VARCHAR(200),
    cargo VARCHAR(200),
    departamento VARCHAR(150),
    salario DECIMAL(8,2),
    data_admissao DATE,
    FOREIGN KEY (id_unidade)
		REFERENCES unidades(id)
);

CREATE TABLE reservas (
	id INT PRIMARY KEY,
    id_unidade INT,
    id_quarto INT,
    id_cliente INT,
    id_canal INT,
    data_checkin DATE,
    data_checkout DATE,
    qtd_diarias INT,
    num_hospedes INT,
    avaliacao_hospede DECIMAL(6,2),
    status_reserva VARCHAR(150),
    forma_pagamento VARCHAR(200),
    FOREIGN KEY (id_unidade)
		REFERENCES unidades(id),
	FOREIGN KEY (id_quarto)
		REFERENCES tipos_quarto(id),
	FOREIGN KEY (id_cliente)
		REFERENCES clientes(id),
	FOREIGN KEY (id_canal)
		REFERENCES canais(id)
);

SET GLOBAL local_infile = 1;

-- Só colar o resto do caminho atras do narahoteis/dados/
LOAD DATA LOCAL INFILE "narahoteis/dados/clean/canais.csv"
INTO TABLE canais
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(id, nome, comissao);

LOAD DATA LOCAL INFILE "narahoteis/dados/clean/unidades.csv"
INTO TABLE unidades
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(id, nome, cidade, regiao, categoria, num_quartos_total);

LOAD DATA LOCAL INFILE "narahoteis/dados/clean/tipos_quarto.csv"
INTO TABLE tipos_quarto
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(id, descricao, capacidade_max, valor_diaria);

LOAD DATA LOCAL INFILE "narahoteis/dados/clean/clientes.csv"
INTO TABLE clientes
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(id, nome, cidade_origem, estado_origem, faixa_etaria, tipo_cliente);

LOAD DATA LOCAL INFILE "narahoteis/dados/clean/funcionarios.csv"
INTO TABLE funcionarios
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(id, id_unidade, nome, cargo, departamento, salario, data_admissao);

LOAD DATA LOCAL INFILE "narahoteis/dados/clean/reservas.csv"
INTO TABLE reservas
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(id, id_unidade, id_quarto, id_cliente, id_canal, data_checkin, data_checkout, qtd_diarias, num_hospedes, avaliacao_hospede, status_reserva, forma_pagamento);

