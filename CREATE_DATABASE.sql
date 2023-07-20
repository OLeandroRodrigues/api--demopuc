
CREATE TABLE `produto_categoria` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `produto` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `categoriaId` varchar(45) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `preco` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `produto_categoria` (`nome`)
 VALUES ('tênis'), 
        ('meia');
        

INSERT INTO `produto` (`categoriaId`, `nome`, `descricao`, `preco`)
 VALUES (1, 'Nike Runner 10K', 'Ideal para corrida de longa distância', 800),
 (1, 'Adidas Runner 10K', 'Ideal para corrida de longa distância', 500),
 (1, 'Mizuno Runner', 'Ideal para não força muito o joelho', 700),
 (1, 'Adidas cano longo', 'Ideal correr no inverno', 40),
 (2, 'Nike cano curto', 'ideal para correr no verão', 60),
 (2, 'Nike cano longo', 'Nike cano longo', 80);

select * from produto_categoria; 
select * from produto;
