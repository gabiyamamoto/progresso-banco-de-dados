UPDATE produtos SET preco = preco - (preco * 20/100)
WHERE categoria = 'skincare';

UPDATE produtos SET estoque = estoque + 50;

UPDATE produtos SET preco = preco + (preco * 15/100)
WHERE marca = 'The ordinary'

UPDATE produtos SET preco = preco - (preco * 10/100)
WHERE estoque > 100;

UPDATE produtos SET preco = preco - (preco * 30/100)
WHERE categoria = 'perfumes';

UPDATE produtos SET estoque = estoque + 25
WHERE preco > 150.00;