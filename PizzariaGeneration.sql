create database db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categorias (
  id_categoria INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao TEXT
);

CREATE TABLE tb_pizzas (
  id_pizza INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL,
  descricao TEXT,
  id_categoria INT,
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (id_categoria, nome, descricao) VALUES
  (1, 'Salgadas', 'Pizzas com recheio salgado'),
  (2, 'Doces', 'Pizzas com recheio doce'),
  (3, 'Vegeanas', 'Pizzas sem carne');

INSERT INTO tb_pizzas (id_pizza, nome, preco, descricao, id_categoria) VALUES
  (1, 'Calabresa', 36.50, 'Pizza de calabresa com cebola e azeitona', 1),
  (2, 'Mussarela', 37.00, 'Pizza de mussarela com molho de tomate', 1),
  (3, 'Pizza vegetariana de cogumelos com queijo', 50.00, 'Pizza de cogumelos e queijo vegano', 3),
  (4, 'Brigadeiro', 35.00, 'Pizza doce de brigadeiro', 2),
  (5, 'Romeu e Julieta', 39.00, 'Pizza doce de queijo com goiabada', 2),
  (6, 'Vegana', 55.00, 'Pizza com queijo vegano e legumes', 3),
  (7, '4 Queijos', 37.00, 'Pizza de mussarela, gorgonzola, provolone e parmesão', 1),
  (8, 'Frango com Catupiry', 35.00, 'Pizza de frango com requeijão cremoso', 1);
  
  SELECT * FROM tb_pizzas WHERE preco > 45.00;
  
  SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.*, c.nome as categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.*, c.nome as categoria 
FROM tb_p


