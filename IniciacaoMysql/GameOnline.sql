
USE db_generation_games_online;

CREATE TABLE tb_classe(
	id_classe INT AUTO_INCREMENT,
    nome_classe VARCHAR(255),
    habilidade VARCHAR(255),
    PRIMARY KEY(id_classe)
);

CREATE TABLE tb_personagem(
	id_personagem INT AUTO_INCREMENT,
	nome VARCHAR(255),
    cor_cabelo VARCHAR(255),
    fk_classe INT,
    PRIMARY KEY(id_personagem),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);

CREATE TABLE tb_dano(
	id_dano INT AUTO_INCREMENT,
    dano_fisico INT,
    dano_magico INT,
    defesa INT,
    fk_classe INT,
    PRIMARY KEY (id_dano),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);
INSERT INTO tb_classe (nome_classe, habilidade) 
VALUES
('Mago','Cajado'),
('Assassino','Knife'),
('Eapadachim','Espada'),
('Arqueiro','Arco e flecha');

INSERT INTO tb_dano (dano_fisico, dano_magico, defesa, fk_classe)
VALUES
(100,2000,500,1),
(300,100,1000,2),
(2000,100,1000,3),
(250,100,2000,4);

INSERT INTO tb_personagem (nome, cor_cabelo)
VALUES
('Trafalgar Law','Preto'),
('Eustass Kid','Vermelho'),
('Big Mom','Rosa');

INSERT INTO tb_personagem (nome, cor_cabelo, fk_classe)
VALUES
('Ussop','Branco', 1),
('Luffy','Amarelo', 2),
('Edward Newgate','Careca', 1);

SELECT tb_personagem.nome, tb_classe.nome_classe, tb_dano.dano_fisico, tb_dano.dano_magico, tb_dano.defesa
FROM tb_personagem 
INNER JOIN tb_classe 
ON tb_classe.id_classe = tb_personagem.fk_classe
INNER JOIN tb_dano 
ON tb_dano.fk_classe = tb_classe.id_classe;

SELECT tb_personagem.nome, tb_classe.nome_classe
FROM tb_personagem
LEFT JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe;

SELECT * FROM tb_personagem
LEFT JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe
UNION
SELECT * FROM tb_personagem
RIGHT JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe;