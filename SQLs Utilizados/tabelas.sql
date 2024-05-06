CREATE DATABASE IF NOT EXISTS testeDB;
USE testeDB;

-- Tabela para armazenar informações sobre pacientes
CREATE TABLE Pacientsz (
    id_paciente INT PRIMARY KEY,
    nome VARCHAR(255),
    idade INT,
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    tipo_sanguineo VARCHAR(5),
    historico_medico TEXT
);

-- Tabela para armazenar informações sobre unidades de saúde
CREATE TABLE UntDeSaude (
    id_unidade INT PRIMARY KEY,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    tipo_unidade VARCHAR(50),
    capacidade_atendimento INT
);

-- Tabela para armazenar informações sobre produtos médicos
CREATE TABLE ProdsMedicoss (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(255),
    descricao TEXT,
    tipo_produto VARCHAR(50),
    quantidade_estoque INT,
    fornecedor VARCHAR(255),
    preco_unitario DECIMAL(10,2)
);

-- Tabela para armazenar informações sobre os veículos da frota
CREATE TABLE Veicul (
    id_veiculo INT PRIMARY KEY,
    tipo_veiculo VARCHAR(50),
    placa VARCHAR(20),
    capacidade_carga DECIMAL(10,2),
    disponivel BOOLEAN
);

-- Tabela para armazenar informações sobre os pedidos de transporte de pacientes
CREATE TABLE PedsTransporte (
    id_pedido INT PRIMARY KEY,
    id_paciente INT,
    id_unidade_origem INT,
    id_unidade_destino INT,
    data_pedido DATE,
    status_pedido VARCHAR(20),
    FOREIGN KEY (id_paciente) REFERENCES Pacientsz(id_paciente),
    FOREIGN KEY (id_unidade_origem) REFERENCES UntDeSaude(id_unidade),
    FOREIGN KEY (id_unidade_destino) REFERENCES UntDeSaude(id_unidade)
);

-- Tabela para armazenar informações sobre os pedidos de entrega de produtos médicos
CREATE TABLE PedisEntrega (
    id_pedido INT PRIMARY KEY,
    id_produto INT,
    id_unidade_destino INT,
    data_pedido DATE,
    status_pedido VARCHAR(20),
    FOREIGN KEY (id_produto) REFERENCES ProdsMedicoss(id_produto),
    FOREIGN KEY (id_unidade_destino) REFERENCES UntDeSaude(id_unidade)
);

-- Tabela para armazenar informações sobre as rotas de transporte otimizadas
CREATE TABLE RotaTransp (
    id_rota INT PRIMARY KEY,
    id_veiculo INT,
    id_pedido INT,
    data_rota DATE,
    tempo_estimado TIME,
    distancia_km DECIMAL(10,2),
    FOREIGN KEY (id_veiculo) REFERENCES Veicul(id_veiculo),
    FOREIGN KEY (id_pedido) REFERENCES PedsTransporte(id_pedido)
);
