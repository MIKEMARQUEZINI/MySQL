create database db_generation_game_online;

use db_generation_game_online;

CREATE TABLE db_generation_game_online.tb_classes (
    id_classe INT PRIMARY KEY,
    nome_classe VARCHAR(50),
    tipo_arma VARCHAR(50),
    defesa_base INT
);

CREATE TABLE db_generation_game_online.tb_personagens (
    id_personagem INT PRIMARY KEY,
    nome_personagem VARCHAR(50),
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO db_generation_game_online.tb_classes (id_classe, nome_classe, tipo_arma, defesa_base) VALUES 
(1, 'Guerreiro', 'Espada', 200),
(2, 'Mago', 'Varinha', 100),
(3, 'Arqueiro', 'Arco', 150),
(4, 'Assassino', 'Luvas', 180),
(5, 'Druida', 'Livro', 250);

INSERT INTO db_generation_game_online.tb_personagens (id_personagem, nome_personagem, nivel, poder_ataque, poder_defesa, id_classe) VALUES 
(1, 'Thor', 10, 3000, 1500, 1),
(2, 'Gandalf', 8, 2500, 1200, 2),
(3, 'Legolas', 12, 2800, 1700, 3),
(4, 'Bruce Lee', 15, 3200, 2000, 4),
(5, 'Arthur', 11, 2700, 1600, 5),
(6, 'Conan', 9, 2300, 1800, 1),
(7, 'Merlin', 7, 1800, 900, 2),
(8, 'Robin Hood', 13, 2900, 1800, 3);

SELECT * FROM db_generation_game_online;

SELECT * FROM db_generation_game_online.tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM db_generation_game_online.tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM db_generation_game_online.tb_personagens WHERE nome_personagem LIKE '%C%';

SELECT tb_personagens.*, tb_classes.nome_classe, tb_classes.tipo_arma, tb_classes.defesa_base 
FROM db_generation_game_online.tb_personagens 
INNER JOIN db_generation_game_online.tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT tb_personagens.*, tb_classes.nome_classe, tb_classes.tipo_;