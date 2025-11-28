-- Criação das tabelas do Mercado Ponto Mais

CREATE TABLE Fornecedor (
    id_fornecedor INT PRIMARY KEY,
    razao_social VARCHAR(100),
    cnpj VARCHAR(20),
    telefone VARCHAR(20)
);

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nome_completo VARCHAR(100),
    login VARCHAR(50),
    senha VARCHAR(50),
    perfil VARCHAR(20)
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    preco_venda DECIMAL(10,2),
    qtd_estoque INT,
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE Venda (
    id_venda INT PRIMARY KEY,
    data_hora DATETIME,
    valor_total_venda DECIMAL(10,2),
    forma_pagamento VARCHAR(50),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Item_Venda (
    id_venda INT,
    id_produto INT,
    quantidade INT,
    valor_unitario_aplicado DECIMAL(10,2),
    PRIMARY KEY (id_venda, id_produto),
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
