DELETE FROM usuarios
WHERE username = 'CheatCodeKing';

SELECT * FROM usuarios;

DELETE FROM usuarios
WHERE id = 13;

DELETE FROM usuarios
WHERE pontos < 2000;

SELECT COUNT(*) AS total_usuarios FROM usuarios;