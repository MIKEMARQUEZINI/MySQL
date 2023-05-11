create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
  id_categoria INT PRIMARY KEY,
  nome_categoria VARCHAR(50),
  descricao_categoria VARCHAR(100)
);

CREATE TABLE tb_produtos (
  id_produto INT PRIMARY KEY,
  nome_produto VARCHAR(50),
  descricao_produto VARCHAR(100),
  preco_produto DECIMAL(10,2),
  qtd_estoque INT,
  id_categoria INT,
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (id_categoria, nome_categoria, descricao_categoria)
VALUES
  (1, 'Medicamentos', 'Produtos para tratamento de saúde'),
  (2, 'Higiene', 'Produtos para higiene pessoal'),
  (3, 'Cosméticos', 'Produtos para beleza e cuidados pessoais'),
  (4, 'Nutrição', 'Produtos para suplementação alimentar'),
  (5, 'Perfumaria', 'Produtos para perfumaria e fragrâncias');

INSERT INTO tb_produtos (id_produto, nome_produto, descricao_produto, preco_produto, qtd_estoque, id_categoria)
VALUES
  (1, 'Paracetamol', 'Medicamento para dor e febre', 10.50, 100, 1),
  (2, 'Creme dental', 'Para escovação diária', 5.80, 50, 2),
  (3, 'Sabonete líquido', 'Para banho diário', 8.75, 80, 2),
  (4, 'Shampoo', 'Para cabelos oleosos', 15.30, 30, 2),
  (5, 'Condicionador', 'Para cabelos secos', 18.90, 20, 2),
  (6, 'Protetor solar', 'Para proteção contra raios', 58.50, 40, 3),
  (7, 'Batom', 'Para lábios hidratados e coloridos', 10.75, 15, 3),
  (8, 'Suplemento vitamínico', 'Para suplementação de nutrientes', 51.99, 10, 4);

SELECT * FROM tb_produtos WHERE preco_produto > 50;

SELECT * FROM tb_produtos WHERE preco_produto BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';


SELECT p.*, c.nome_categoria 
FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

