-- Tabela 1: Hóspedes do hotel
CREATE TABLE Hospedes (
    HospedeID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50),
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);

-- Tabela 2: Quartos disponíveis no hotel
CREATE TABLE Quartos (
    QuartoID INT PRIMARY KEY,
    TipoQuarto VARCHAR(50), -- Ex: 'Solteiro', 'Casal', 'Suíte'
    PrecoDiaria DECIMAL(10, 2)
);

-- Tabela 3: Conecta Hóspedes e Quartos
CREATE TABLE Reservas (
    ReservaID INT PRIMARY KEY,
    HospedeID INT,
    QuartoID INT,
    DataCheckIn DATE,
    DataCheckOut DATE,
    FOREIGN KEY (HospedeID) REFERENCES Hospedes(HospedeID),
    FOREIGN KEY (QuartoID) REFERENCES Quartos(QuartoID)
);

-- Inserindo dados de exemplo
INSERT INTO Hospedes (HospedeID, Nome, Sobrenome, Email, Telefone) VALUES
(1, 'Carlos', 'Silva', 'carlos.silva@email.com', '11987654321'),
(2, 'Ana', 'Pereira', 'ana.pereira@email.com', '21912345678'),
(3, 'Bruno', 'Costa', 'bruno.costa@email.com', '19988776655'),
(4, 'Helena', 'Martins', 'helena.m@email.com', '11955554444');

INSERT INTO Quartos (QuartoID, TipoQuarto, PrecoDiaria) VALUES
(101, 'Casal', 250.00),
(102, 'Suíte', 450.00),
(103, 'Solteiro', 180.00),
(201, 'Casal', 260.00);

INSERT INTO Reservas (ReservaID, HospedeID, QuartoID, DataCheckIn, DataCheckOut) VALUES
(1001, 1, 102, '2025-10-20', '2025-10-25'),
(1002, 2, 101, '2025-11-15', '2025-11-18'),
(1003, 1, 201, '2025-12-01', '2025-12-03'),
(1004, 3, 101, '2025-12-10', '2025-12-15');

-- Exercício 1: Criando uma Visão de Contato dos Hóspedes --
CREATE VIEW Vw_Contatos_Hospedes AS
SELECT
    Hospedes.Nome,
    Hospedes.Sobrenome,
    Hospedes.Email
FROM Hospedes

SELECT * FROM Vw_Contatos_Hospedes;

-- Exercício 2: Usando uma VIEW para Filtrar Dados --
CREATE VIEW Vw_Detalhes_Reservas AS
SELECT
    Reservas.ReservaID,
    Hospedes.Sobrenome,
    Quartos.QuartoID,
    Quartos.TipoQuarto,
    Quartos.PrecoDiaria,
    Reservas.DataCheckIn,
    Reservas.DataCheckOut
FROM Reservas
INNER JOIN Hospedes ON Reservas.HospedeID = Hospedes.HospedeID
INNER JOIN Quartos ON Reservas.QuartoID = Quartos.QuartoID;

SELECT * FROM Vw_Detalhes_Reservas
WHERE TipoQuarto = 'Casal';

-- Exercício 3: VIEW para um Catálogo Público --
CREATE VIEW Vw_Catalogo_Quartos AS
SELECT
    Quartos.QuartoID,
    Quartos.TipoQuarto
FROM Quartos;

SELECT * FROM Vw_Catalogo_Quartos;

-- Exercício 4: Encontrando Quartos Vagos --
CREATE VIEW Vw_Status_Quartos AS
SELECT
    Quartos.QuartoID,
    Quartos.TipoQuarto,
    Reservas.ReservaID
FROM Quartos
LEFT JOIN Reservas ON Quartos.QuartoID = Reservas.QuartoID;

SELECT *
FROM Vw_Status_Quartos
WHERE ReservaID IS NULL;