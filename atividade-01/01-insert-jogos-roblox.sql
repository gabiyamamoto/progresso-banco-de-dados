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
    ('Brookhaven RP', 'Roleplay', '59 bilhões', 2020, 4.7),
    ('Blox Fruits', 'Aventura / RPG', '46 bilhões', 2019, 4.6),
    ('Adopt Me!', 'Simulador / Roleplay', '39 bilhões', 2017, 4.5),
    ('Tower of Hell', 'Obby / Desafio', '24 bilhões', 2018, 4.4),
    ('Murder Mystery 2', 'Mistério / Terror', '19 bilhões', 2014, 4.5),
    ('MeepCity', 'Social / Roleplay', '16 bilhões', 2016, 4.2),
    ('Piggy', 'Terror / Sobrevivência', '13 bilhões', 2020, 4.4),
    ('The Strongest Battlegrounds', 'Luta / PvP', '10,5 bilhões', 2023, 4.6),
    ('Royale High', 'Roleplay / Fantasia', '10 bilhões', 2017, 4.3),
    ('BedWars', 'Estratégia / PvP', '9,5 bilhões', 2021, 4.5);