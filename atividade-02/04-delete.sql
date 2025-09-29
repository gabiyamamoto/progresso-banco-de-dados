DELETE FROM produtos
WHERE estoque < 200;

DELETE FROM produtos
WHERE preco < 100.00;

DELETE FROM produtos
WHERE marca = 'Principia';

DELETE FROM produtos
WHERE estoque > 250 AND estoque < 400;

DELETE FROM produtos
WHERE estoque BETWEEN 250 AND 450;