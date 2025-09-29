SELECT * FROM produtos;

SELECT * FROM produtos
WHERE marca = 'The ordinary';

SELECT marca, COUNT(*) FROM produtos
GROUP BY marca;

SELECT COUNT(*) AS contagem FROM produtos;