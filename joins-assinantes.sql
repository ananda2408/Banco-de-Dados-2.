SELECT 
    a.nm_assinante,
    e.ds_endereco,
    e.complemento,
    e.bairro,
    e.cep,-- Criação do banco de dados (opcional, dependendo do SGBD)
-- CREATE DATABASE sistema_assinantes;
-- USE sistema_assinantes;

-- Tabela de Municípios
CREATE TABLE Municipio (
    cd_municipio INT PRIMARY KEY,
    ds_municipio VARCHAR(100) NOT NULL
);

-- Tabela de Tipos de Assinante
CREATE TABLE Tipo_Assinante (
    cd_tipo INT PRIMARY KEY,
    ds_tipo VARCHAR(50) NOT NULL
);

-- Tabela de Ramos
CREATE TABLE Ramo (
    cd_ramo INT PR-- Inserindo dados na tabela Municipio
INSERT INTO Municipio (cd_municipio, ds_municipio) VALUES
(1, 'Pelotas'),
(2, 'Natal');

-- Inserindo dados na tabela Tipo_Assinante
INSERT INTO Tipo_Assinante (cd_tipo, ds_tipo) VALUES
(1, 'residencial'),
(2, 'comercial');

-- Inserindo dados na tabela Ramo
INSERT INTO Ramo (cd_ramo, ds_ramo) VALUES
(1, 'Alimentação'),
(2, 'Tecnologia');

-- Inserindo dados na tabela Endereco
INSERT INTO Endereco (cd_endereco, ds_endereco, complemento, bairro, cep, cd_municipio) VALUES
(1, 'Rua das Flores, 123', 'Apto 101', 'Centro', '96010000', 1),
(2, 'Av. Nevaldo Rocha, 1000', 'Sala 201', 'Tirol', '59020100', 2);

-- Inserindo dados na tabela Assinante
INSERT INTO Assinante (cd_assinante, nm_assinante, cd_endereco, cd_tipo, cd_ramo) VALUES
(1, 'João Silva', 1, 1, NULL),  -- Residencial sem ramo
(2, 'Empresa Tech Ltda', 2, 2, 2);  -- Comercial com ramo Tecnologia

-- Inserindo dados na tabela Telefone
INSERT INTO Telefone (cd_fone, dd, n_fone, cd_assinante) VALUES
(1, '53', '32221234', 1),
(2, '84', '987654321', 2),
(3, '53', '999888777', 1);  -- Segundo telefone para João SilvaIMARY KEY,
    ds_ramo VARCHAR(50) NOT NULL
);

-- Tabela de Endereços
CREATE TABLE Endereco (
    cd_endereco INT PRIMARY KEY,
    ds_endereco VARCHAR(100) NOT NULL,
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cep VARCHAR(10),
    cd_municipio INT NOT NULL,
    FOREIGN KEY (cd_municipio) REFERENCES Municipio(cd_municipio)
);

-- Tabela de Assinantes
CREATE TABLE Assinante (
    cd_assinante INT PRIMARY KEY,
    nm_assinante VARCHAR(100) NOT NULL,
    cd_endereco INT NOT NULL,
    cd_tipo INT NOT NULL,
    cd_ramo INT,
    FOREIGN KEY (cd_endereco) REFERENCES Endereco(cd_endereco),
    FOREIGN KEY (cd_tipo) REFERENCES Tipo_Assinante(cd_tipo),
    FOREIGN KEY (cd_ramo) REFERENCES Ramo(cd_ramo)
);

-- Tabela de Telefones
CREATE TABLE Telefone (
    cd_fone INT PRIMARY KEY,
    dd VARCHAR(3),
    n_fone VARCHAR(10) NOT NULL,
    cd_assinante INT NOT NULL,
    FOREIGN KEY (cd_assinante) REFERENCES Assinante(cd_assinante)
);
    m.ds_municipio,
    t.dd,
    t.n_fone
FROM Assinante a
JOIN Endereco e ON a.cd_endereco = e.cd_endereco
JOIN Municipio m ON e.cd_municipio = m.cd_municipio
LEFT JOIN Telefone t ON a.cd_assinante = t.cd_assinante;
SELECT 
    a.nm_assinante,
    r.ds_ramo
FROM Assinante a
LEFT JOIN Ramo r ON a.cd_ramo = r.cd_ramo
ORDER BY r.ds_ramo, a.nm_assinante;

SELECT A.cd_assinante, A.nm_assinante, E.ds_endereco, T.ds_tipo
FROM Assinante A
JOIN Endereco E ON A.cd_endereco = E.cd_endereco
JOIN Municipio M ON E.cd_municipio = M.cd_municipio
JOIN Tipo_Assinante T ON A.cd_tipo = T.cd_tipo
WHERE M.ds_municipio = 'Pelotas' AND T.ds_tipo = 'Residencial';

SELECT A.nm_assinante
FROM Assinante A
JOIN Telefone T ON A.cd_assinante = T.cd_assinante
GROUP BY A.nm_assinante
HAVING COUNT(T.cd_fone) > 1;
SELECT A.nm_assinante, T.n_fone, Tipo.ds_tipo, E.ds_endereco
FROM Assinante A
JOIN Telefone T ON A.cd_assinante = T.cd_assinante
JOIN Tipo_Assinante Tipo ON A.cd_tipo = Tipo.cd_tipo
JOIN Endereco E ON A.cd_endereco = E.cd_endereco
JOIN Municipio M ON E.cd_municipio = M.cd_municipio
WHERE Tipo.ds_tipo = 'Comercial' AND (M.ds_municipio = 'Natal' OR M.ds_municipio = 'João Câmara');

