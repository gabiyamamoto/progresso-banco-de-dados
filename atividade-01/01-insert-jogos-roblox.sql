-- Tabela: Jogos mais visitados do Roblox --
CREATE TABLE jogos_roblox (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(30),
    visitas_totais VARCHAR(20),
    ano_lancamento INT,
    avaliacao DECIMAL(10, 2)
);

INSERT INTO jogos_roblox (nome, genero, visitas_totais, ano_lancamento, avaliacao)
VALUES
    (1, 'Brookhaven RP', 'Roleplay', '59 bilhões', 2020, 4.7),
    (2, 'Blox Fruits', 'Aventura / RPG', '46 bilhões', 2019, 4.6),
    (3, 'Adopt Me!', 'Simulador / Roleplay', '39 bilhões', 2017, 4.5),
    (4, 'Tower of Hell', 'Obby / Desafio', '24 bilhões', 2018, 4.4),
    (5, 'Murder Mystery 2', 'Mistério / Terror', '19 bilhões', 2014, 4.5),
    (6, 'MeepCity', 'Social / Roleplay', '16 bilhões', 2016, 4.2),
    (7, 'Piggy', 'Terror / Sobrevivência', '13 bilhões', 2020, 4.4),
    (8, 'The Strongest Battlegrounds', 'Luta / PvP', '10,5 bilhões', 2023, 4.6),
    (9, 'Royale High', 'Roleplay / Fantasia', '10 bilhões', 2017, 4.3),
    (10, 'BedWars', 'Estratégia / PvP', '9,5 bilhões', 2021, 4.5);