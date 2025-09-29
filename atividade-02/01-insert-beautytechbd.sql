CREATE DATABASE beauty_tech_db;

-- SERIAL = INT AUTO INCREMENT
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    estoque INT DEFAULT 0
);

INSERT INTO produtos (nome, marca, preco, categoria, estoque)
VALUES
('Sérum antissinais', 'The ordinary', 119.00, 'skincare', 8),
('Gloss stick', 'Fenty Beauty', 120.00, 'maquiagem', 30),
('Mist perfumado', 'Rare Beauty', 259.00, 'cabelo', 12),
('Perfume sólido', 'Glossier', 217.00, 'perfume', 43),
('Máscara noturna', 'The ordinary', 269.00, 'skincare', 100),
('Hidratante Facial com Ácido Hialurônico', 'Sallve', 89.90, 'skincare', 25),
('Base Líquida Acabamento Matte', 'Mari Maria Makeup', 65.50, 'maquiagem', 50),
('Shampoo a Seco', 'Batiste', 35.00, 'cabelo', 75),
('Bruma Fixadora de Maquiagem', 'Bruna Tavares', 72.00, 'maquiagem', 40),
('Sérum Corretor de Manchas', 'Principia', 59.90, 'skincare', 30),
('Spray Protetor Térmico', 'Braé Hair Care', 98.00, 'cabelo', 20),
('Delineador em Gel Preto', 'MAC Cosmetics', 110.00, 'maquiagem', 15),
('Esfoliante Labial de Açúcar', 'Lush', 55.00, 'skincare', 60),
('Máscara de Hidratação Profunda', 'Wella Professionals', 135.00, 'cabelo', 22),
('Blush Cremoso Cor Pêssego', 'Nars', 189.00, 'maquiagem', 28),
('Protetor Solar Facial FPS 60', 'La Roche-Posay', 79.90, 'skincare', 90),
('Óleo Reparador de Pontas', 'Lola Cosmetics', 45.00, 'cabelo', 55),
('Iluminador Líquido Radiance', 'Kylie Cosmetics', 150.00, 'maquiagem', 18),
('Creme Hidratante Corporal', 'CeraVe', 68.00, 'skincare', 100),
('Batom Líquido Matte Vermelho', 'Dior', 249.00, 'maquiagem', 12);