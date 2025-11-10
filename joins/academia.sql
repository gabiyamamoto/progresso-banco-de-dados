CREATE TABLE GRUPOS_MUSCULARES (
	id_grupo SERIAL PRIMARY KEY,
	nome_grupo VARCHAR(50) NOT NULL
);

CREATE TABLE EXERCICIOS (
	id_exercicio SERIAL PRIMARY KEY,
	nome_exercicio VARCHAR(50) NOT NULL,
	id_grupo INT NOT NULL,
	series INT NOT NULL,
	repeticoes INT NOT NULL,

	CONSTRAINT FK_EXERCICIOS_GRUPOS_MUSCULARES
    FOREIGN KEY (id_grupo) REFERENCES GRUPOS_MUSCULARES (id_grupo)
);

CREATE TABLE TREINOS (
	id_treino SERIAL PRIMARY KEY,
	nome_treino VARCHAR(50) NOT NULL
);

CREATE TABLE TREINO_EXERCICIO (
    id_treino INT NOT NULL,
    id_exercicio INT NOT NULL,

    CONSTRAINT PK_TREINO_EXERCICIO PRIMARY KEY (id_treino, id_exercicio),

    CONSTRAINT FK_TREINO_TREINOS
        FOREIGN KEY (id_treino) REFERENCES TREINOS (id_treino),

    CONSTRAINT FK_TREINO_EXERCICIOS
        FOREIGN KEY (id_exercicio) REFERENCES EXERCICIOS (id_exercicio)
);

INSERT INTO GRUPOS_MUSCULARES (nome_grupo)
VALUES
	('Peito'),
	('Costas'),
	('Pernas');

INSERT INTO EXERCICIOS (nome_exercicio, id_grupo, series, repeticoes)
VALUES 
	('Supino reto', 1, 3, 12),
	('Supino inclinado', 1, 3, 12),
	('Remada curvada', 2, 3, 12),
	('Puxada frontal', 2, 3, 12),
	('Agachamento livre', 3, 3, 15),
	('Leg press', 3, 3, 15);

INSERT INTO TREINOS (nome_treino)
VALUES
	('Treino A'),
	('Treino B');

INSERT INTO TREINO_EXERCICIO (id_treino, id_exercicio)
VALUES
	(1, 1),
	(1, 2),
	(1, 3);

SELECT * FROM GRUPOS_MUSCULARES;

SELECT * FROM EXERCICIOS;

SELECT * FROM TREINOS;

SELECT * FROM TREINO_EXERCICIO;

-- Exercício 1: Listando Exercícios e Seus Grupos --
SELECT EXERCICIOS.nome_exercicio, GRUPOS_MUSCULARES.nome_grupo
FROM EXERCICIOS
INNER JOIN GRUPOS_MUSCULARES ON EXERCICIOS.id_grupo = GRUPOS_MUSCULARES.id_grupo;

-- Exercício 2: Filtrando por Grupo Muscular --
SELECT EXERCICIOS.nome_exercicio, GRUPOS_MUSCULARES.nome_grupo
FROM EXERCICIOS
INNER JOIN GRUPOS_MUSCULARES ON EXERCICIOS.id_grupo = GRUPOS_MUSCULARES.id_grupo
WHERE GRUPOS_MUSCULARES.nome_grupo = 'Costas';

-- Exercício 3: Mostrando a Ficha de Treino (Básico) --
SELECT EXERCICIOS.nome_exercicio, EXERCICIOS.series
FROM EXERCICIOS
INNER JOIN TREINO_EXERCICIO ON EXERCICIOS.id_exercicio = TREINO_EXERCICIO.id_exercicio
INNER JOIN TREINOS ON TREINO_EXERCICIO.id_treino = TREINOS.id_treino
WHERE TREINOS.nome_treino = 'Treino A';

-- Exercício 4: Verificando Todos os Exercícios --
SELECT EXERCICIOS.nome_exercicio, TREINOS.nome_treino
FROM EXERCICIOS
LEFT JOIN TREINO_EXERCICIO ON EXERCICIOS.id_exercicio = TREINO_EXERCICIO.id_exercicio
LEFT JOIN TREINOS  ON TREINO_EXERCICIO.id_treino = TREINOS.id_treino;

-- Exercício 5: Descobrindo o Exercício "Esquecido" --
SELECT EXERCICIOS.nome_exercicio
FROM EXERCICIOS
LEFT JOIN TREINO_EXERCICIO ON EXERCICIOS.id_exercicio = TREINO_EXERCICIO.id_exercicio
WHERE TREINO_EXERCICIO.id_treino IS NULL;

-- Exercício 6: A Ficha Completa do Aluno --
SELECT EXERCICIOS.nome_exercicio, GRUPOS_MUSCULARES.nome_grupo, EXERCICIOS.series, EXERCICIOS.repeticoes
FROM EXERCICIOS
INNER JOIN GRUPOS_MUSCULARES ON EXERCICIOS.id_grupo = GRUPOS_MUSCULARES.id_grupo
ORDER BY GRUPOS_MUSCULARES.nome_grupo;