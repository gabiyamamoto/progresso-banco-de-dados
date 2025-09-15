-- Query para crição da tabela --
CREATE TABLE artistas (
    id SERIAL PRIMARY KEY, -- SERIAL: autoincremento e inteiro
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    membros INTEGER, -- ou só INT
    genero_musical VARCHAR(30),
    ano_lancamento INT,
    pais_origem VARCHAR(50),
    musica_famosa VARCHAR(50),
    ativo BOOLEAN
);

INSERT INTO artistas (nome, tipo, membros, genero_musical, ano_lancamento, pais_origem, musica_famosa, ativo)
VALUES
    ('Adele', 'Solo', 1, 'Pop', 2006, 'Reino Unido', 'Rolling in the Deep', TRUE),
    ('21 Pilots', 'Banda', 2, 'Rock Alternativo', 2009, 'EUA', 'Stressed Out', TRUE),
    ('Coldplay', 'Banda', 4, 'Rock Alternativo', 2000, 'Reino Unido', 'Yellow', TRUE),
    ('Beyoncé', 'Solo', 1, 'R&B/Pop', 2003, 'EUA', 'Crazy in Love', TRUE),
    ('Ed Sheeran', 'Solo', 1, 'Pop/Folk', 2011, 'Reino Unido', 'Shape of You', TRUE),
    ('Linkin Park', 'Banda', 6, 'Nu Metal/Rock', 2000, 'EUA', 'In the End', FALSE),
    ('Shakira', 'Solo', 1, 'Pop Latino', 1995, 'Colômbia', 'Hips Don’t Lie', TRUE),
    ('The Beatles', 'Banda', 4, 'Rock', 1960, 'Reino Unido', 'Hey Jude', FALSE),
    ('Billie Eilish', 'Solo', 1, 'Pop Alternativo', 2016, 'EUA', 'Bad Guy', TRUE),
    ('Rihanna', 'Solo', 1, 'Pop/R&B', 2005, 'Barbados', 'Umbrella', TRUE),
    ('Queen', 'Banda', 4, 'Rock', 1973, 'Reino Unido', 'Bohemian Rhapsody', FALSE),
    ('Eminem', 'Solo', 1, 'Hip-Hop', 1999, 'EUA', 'Lose Yourself', TRUE);