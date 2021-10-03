/*Table structure for table `bba` */

CREATE TABLE `bba` (
  `id` INT(9) NOT NULL AUTO_INCREMENT,
  `bar` INT(9) NOT NULL,
  `bad` INT(9) NOT NULL,
  `cle` INT(9) NOT NULL,
  `dru` INT(9) NOT NULL,
  `gue` INT(9) NOT NULL,
  `mon` INT(9) NOT NULL,
  `pal` INT(9) NOT NULL,
  `ran` INT(9) NOT NULL,
  `lad` INT(9) NOT NULL,
  `fei` INT(9) NOT NULL,
  `mag` INT(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `bba` */

INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (1,1,0,0,0,1,0,1,1,0,0,0);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (2,2,1,1,1,2,1,2,2,1,1,1);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (3,3,2,2,2,3,2,3,3,2,1,1);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (4,4,3,3,3,4,3,4,4,3,2,2);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (5,5,3,3,3,5,3,5,5,3,2,2);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (6,6,4,4,4,6,4,6,6,4,3,3);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (7,7,5,5,5,7,5,7,7,5,3,3);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (8,8,6,6,6,8,6,8,8,6,4,4);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (9,9,6,6,6,9,6,9,9,6,4,4);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (10,10,7,7,7,10,7,10,10,7,5,5);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (11,11,8,8,8,11,8,11,11,8,5,5);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (12,12,9,9,9,12,9,12,12,9,6,6);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (13,13,9,9,9,13,9,13,13,9,6,6);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (14,14,10,10,10,14,10,14,14,10,7,7);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (15,15,11,11,11,15,11,15,15,11,7,7);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (16,16,12,12,12,16,12,16,16,12,8,8);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (17,17,12,12,12,17,12,17,17,12,8,8);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (18,18,13,13,13,18,13,18,18,13,9,9);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (19,19,14,14,14,19,14,19,19,14,9,9);
INSERT  INTO `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (20,20,15,15,15,20,15,20,20,15,10,10);

/*Table structure for table `classes` */

CREATE TABLE `classes` (
  `id` INT(9) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dv` INT(2) NOT NULL,
  `bba_tipo` VARCHAR(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resistencia` VARCHAR(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requisitos` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `classes` */

INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (1,'Bárbaro',12,'bom','fort','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (2,'Bardo',6,'medio','ref/von','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (3,'Clérigo',8,'medio','fort/von','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (4,'Druida',8,'medio','fort/von','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (5,'Guerreiro',10,'bom','fort','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (6,'Monge',8,'medio','fort/ref/von','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (7,'Paladino',10,'bom','fort','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (8,'Ranger',8,'bom','fort/ref','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (9,'Ladino',6,'medio','ref','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (10,'Feiticeiro',4,'ruim','von','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (11,'Mago',4,'ruim','von','Básica',NULL);
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (12,'Mestre dos Sete Mistérios da Necromancia',4,'ruim','fort/von','Prestígio','• Talentos: Foco em Magia ( Necromancia ) , Grande Foco em Magia ( Necromancia ) , dois talentos de criação de necromancia');
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (13,'Algoz',6,'bom','fort','Prestígio','• Bônus base de ataque: +5.\r\n• Perícias: treinado em Conhecimento (religião).\r\n• Talentos: Ataque Poderoso, Trespassar.\r\n• Tendência: qualquer Maligna.');
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (14,'Anão Protetor',6,'bom','fort','Prestígio','• Raça: anão. \r\n• Bônus base de ataque: +5.\r\n• Talentos: Vitalidade.\r\n• Tendência: qualquer Leal.');
INSERT  INTO `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`,`tipo`,`requisitos`) VALUES (15,'Arqueiro Arcano',6,'bom','ref/von','Prestígio','• Raça: elfo.\r\n• Bônus base de ataque: +4.\r\n• Talentos: Tiro Certeiro.\r\n• Magias: capacidade de lançar magias arcanas de 1º nível.\r\n');

/*Table structure for table `magias` */

CREATE TABLE `magias_classes` (
  `id` INT(9) NOT NULL,
  `bar` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bad` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cle` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dru` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gue` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mon` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pal` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ran` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lad` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fei` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mag` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `magias` */

INSERT  INTO `magias`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (0,'','{0:2}','{0:3,1:2}','{0:3,1:1}','','','','','','{0:5,1:3}','{0:3,1:1}');

/*Table structure for table `pericias` */

CREATE TABLE `pericias` (
  `id` INT(9) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atributo` VARCHAR(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sem_treinamento` VARCHAR(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bar` INT(1) NOT NULL,
  `bad` INT(1) NOT NULL,
  `cle` INT(1) NOT NULL,
  `dru` INT(1) NOT NULL,
  `gue` INT(1) NOT NULL,
  `mon` INT(1) NOT NULL,
  `pal` INT(1) NOT NULL,
  `ran` INT(1) NOT NULL,
  `lad` INT(1) NOT NULL,
  `fei` INT(1) NOT NULL,
  `mag` INT(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pericias` */

INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (1,'Abrir Fechaduras','DES','N',0,0,0,0,0,0,1,0,0,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (2,'Acrobacias','DES','N',0,1,0,0,0,1,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (3,'Adestrar Animais','CAR','N',1,0,0,1,1,0,1,1,0,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (4,'Arte da Fuga','DES','S',0,1,0,0,0,1,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (5,'Atuação','CAR','S',0,1,0,0,0,1,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (6,'Avaliação','INT','S',0,1,0,0,0,0,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (7,'Blefar','CAR','S',0,1,0,0,0,0,0,0,1,1,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (8,'Cavalgar','DES','S',1,0,0,1,1,0,1,1,0,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (9,'Concentração','CON','S',0,1,1,1,0,1,1,1,0,1,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (10,'Conhecimento (arcano)','INT','N',0,1,1,0,0,1,0,0,0,1,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (11,'Conhecimento (arquitetura e engenharia)','INT','N',0,1,0,0,0,0,0,0,0,0,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (12,'Conhecimento (geografia)','INT','N',0,1,0,0,0,0,0,1,0,0,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (13,'Conhecimento (história)','INT','N',0,1,1,0,0,0,0,0,0,0,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (14,'Conhecimento (local)','INT','N',0,1,0,1,0,0,0,0,1,0,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (15,'Conhecimento (masmorras)','INT','N',0,1,0,0,0,0,0,1,0,0,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (16,'Conhecimento (natureza)','INT','N',0,1,0,0,0,0,0,1,0,0,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (17,'Conhecimento (nobreza e realeza)','INT','N',0,1,0,0,0,0,1,0,0,0,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (18,'Conhecimento (planos)','INT','N',0,1,1,0,0,0,0,0,0,0,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (19,'Conhecimento (religião)','INT','N',0,1,1,0,0,1,1,0,0,0,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (20,'Cura','SAB','S',0,0,1,1,0,0,1,1,0,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (21,'Decifrar Escrita','INT','N',0,1,0,0,0,0,0,0,1,0,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (22,'Diplomacia','CAR','S',0,1,1,1,0,1,1,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (23,'Disfarces','CAR','S',0,1,0,0,0,0,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (24,'Equilíbrio','DES','S',0,1,0,0,0,1,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (25,'Escalar','FOR','S',1,1,0,0,1,1,0,1,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (26,'Esconder-se','DES','S',0,1,0,0,0,1,0,1,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (27,'Falar Idioma','N/A','N',0,1,0,0,0,0,0,0,0,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (28,'Falsificação','INT','S',0,0,0,0,0,0,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (29,'Furtividade','DES','S',0,1,0,0,0,1,0,1,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (30,'Identificar Magia','INT','N',0,1,1,1,0,0,0,0,0,1,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (31,'Intimidação','CAR','S',1,0,0,0,1,0,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (32,'Natação','FOR','S',1,1,0,1,1,1,0,1,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (33,'Observar','SAB','S',0,0,0,1,0,1,0,1,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (34,'Obter Informação','CAR','S',0,1,0,0,0,0,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (35,'Ofícios','INT','S',1,1,1,1,1,1,1,1,1,1,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (36,'Operar Mecanismo','INT','N',0,0,0,0,0,0,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (37,'Ouvir','SAB','S',1,1,0,1,0,1,0,1,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (38,'Prestidigitação','DES','N',0,1,0,0,0,0,0,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (39,'Procurar','INT','S',0,0,0,0,0,0,0,1,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (40,'Profissão','SAB','N',0,1,1,1,0,1,1,1,1,1,1);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (41,'Saltar','FOR','S',1,1,0,0,1,1,0,1,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (42,'Sentir Motivação','SAB','S',0,1,0,0,0,1,1,0,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (43,'Sobrevivência','SAB','S',1,0,0,1,0,0,0,1,0,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (44,'Usar Cordas','DES','S',0,0,0,0,0,0,0,1,1,0,0);
INSERT  INTO `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) VALUES (45,'Usar Intrumento Mágico','CAR','N',0,1,0,0,0,0,0,0,1,0,0);

/*Table structure for table `personagens` */

CREATE TABLE `personagens` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race_id` INT(2) DEFAULT NULL,
  `classe_id` INT(2) DEFAULT NULL,
  `jogador_id` INT(11) DEFAULT NULL,
  `tendencia` VARCHAR(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divindade` INT(2) DEFAULT NULL,
  `nivel` INT(9) NOT NULL,
  `idade` INT(9) DEFAULT NULL,
  `sexo` VARCHAR(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `altura` FLOAT(9,2) NOT NULL,
  `peso` INT(9) NOT NULL,
  `olhos` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabelos` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` INT(9) NOT NULL,
  `des` INT(9) NOT NULL,
  `con` INT(9) NOT NULL,
  `int` INT(9) NOT NULL,
  `sab` INT(9) NOT NULL,
  `car` INT(9) NOT NULL,
  `iniciativa` INT(9) NOT NULL,
  `pvs` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personagem` */

INSERT  INTO `personagem`(`id`,`nome`,`race_id`,`classe_id`,`jogador_id`,`tendencia`,`divindade`,`nivel`,`idade`,`sexo`,`altura`,`peso`,`olhos`,`cabelos`,`for`,`des`,`con`,`int`,`sab`,`car`,`iniciativa`,`pvs`) VALUES (1,'Jonh',1,5,1,'NB',NULL,4,29,'M',1.00,75,'castanhos','castanhos',18,14,15,16,16,12,0,42);

/*Table structure for table `races` */

CREATE TABLE `races` (
  `id` INT(9) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus` INT(2) DEFAULT NULL,
  `atributo_bonus` VARCHAR(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desvantagem` INT(11) DEFAULT NULL,
  `atributo_desvantagem` VARCHAR(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tamanho` VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe_favorecida` INT(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `races` */

INSERT  INTO `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) VALUES (1,'Humano',0,'',0,NULL,'Medio',NULL);
INSERT  INTO `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) VALUES (2,'Anão',2,'CON',2,'CAR','Medio',NULL);
INSERT  INTO `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) VALUES (3,'Elfo',2,'DES',2,'CON','Medio',NULL);
INSERT  INTO `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) VALUES (4,'Gnomo',2,'CON',2,'FOR','Medio',NULL);
INSERT  INTO `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) VALUES (5,'Meio-elfo',0,NULL,0,NULL,'Medio',NULL);
INSERT  INTO `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) VALUES (6,'Meio-orc',2,'FOR',2,'CAR','Medio',NULL);
INSERT  INTO `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) VALUES (7,'Halfling',2,'DES',2,'FOR','Pequeno',NULL);

/*Table structure for table `talentos` */

CREATE TABLE `talentos` (
  `id` INT(9) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` VARCHAR(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_requisito_id` INT(9) DEFAULT NULL,
  `beneficio` TEXT COLLATE utf8mb4_unicode_ci,
  `normal` TEXT COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `talentos` */

INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (1,'MOSTRAR-SE VIGOROSO','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (2,'MOVIMENTO PRECISO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (3,'MURALHA ATRÁS','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (4,'MÚSICA ADICIONAL',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (5,'MÚSICA BLOQUEADORA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (6,'MÚSICA DE CRIAÇÃO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (7,'MÚSICA DE PROTEÇÃO REFLEXA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (8,'MÚSICA DO CAOS','ANÁRQUICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (9,'MÚSICA DO CRESCIMENTO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (10,'MÚSICA DO DRAGÃO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (11,'MÚSICA DOS DEUSES','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (12,'MÚSICA ENCANTADORA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (13,'MÚSICA ENSURDECEDORA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (14,'MÚSICA METAMÁGICA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (15,'MÚSICA PROLONGADA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (16,'NADAR COMO UM PEIXE','SELVAGEM',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (17,'NASCIDO DOS TRÊS TROVÕES','METAMÁGICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (18,'NASCIDO PARA VOAR',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (19,'NATAÇÃO APRIMORADA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (20,'NATAÇÃO VELOZ',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (21,'NATIVO DE NECRÓPOLE',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (22,'NECROPOTENTE','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (23,'NÊMESIS','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (24,'NENHUMA AMEAÇA PARA MIM',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (25,'NOBRE NATO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (26,'OBTER FAMILIAR',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (27,'OFENSIVA TEMERÁRIA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (28,'OFÍCIO DA TERRA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (29,'OLHAR PENETRANTE',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (30,'OLHOS NA NUCA','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (31,'OPORTUNISTA ESPERTO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (32,'ORELHA VERDE',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (33,'OSSOS VELOZES',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (34,'OUVIR O QUE NÃO É VISTO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (35,'PARASITA PROFANADOR DE VIDA','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (36,'PACTO DIABÓLICO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (37,'PALAVRAS DE CRIAÇÃO','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (38,'PARCEIRO APRIMORADO','LÍDER',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (39,'PARCEIRO TREINADO','LÍDER',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (40,'PASSOS AJUSTADO DEFENSIVO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (41,'PASSOS ESTÁVEIS','RACIAL',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (42,'PAU PARA TODA OBRA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (43,'PELE DE ELEFANTE','SELVAGEM',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (44,'PELE DRACÔNICA','DRACÔNICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (45,'PENETRAR COBERTURAS MÁGICAS','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (46,'PENETRAR PROTEÇÕES MAGICAS','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (47,'PENETRAR REDUÇÃO DE DANO','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (48,'PENSAMENTOS OCULTOS',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (49,'PERFURAR AS TREVAS','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (50,'PERSONALIDADE FORTE','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (51,'PERSONALIDADE SOCIÁVEL',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (52,'PERSONALIZAR DOMÍNIO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (53,'PÉS DO OCEANO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (54,'PÉS LEVES',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (55,'PESQUISADOR',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (56,'PETELECO NO PULSO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (57,'PODER DIVINO','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (58,'PODER DRACÔNICO','DRACÔNICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (59,'PODER NECROMÂNTICO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (60,'PODERIO ÉPICO','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (61,'POLIGLOTA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (62,'PONTADA COM CASCOS','ESTILO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (63,'PONTARIA AGUÇADA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (64,'PONTARIA EXTRAORDINÁRIA COM MAGIAS',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (65,'POTÊNCIA ABJURATIVA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (66,'POTENCIALIZAR EXPULSÃO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (67,'POTENCIALIZAR SÚBITO','METAMÁGICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (68,'PRECISÃO SOBRENATURAL','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (69,'PRIMATA ESTÁVEL',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (70,'POUCOS, PORÉM FELIZES','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (71,'PRECISÃO DIVINA','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (72,'PRECISÃO MORTAL',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (73,'PREPARAÇÃO ARCANA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (74,'PREPARAR TIRO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (75,'PRESA DO URSO','ESTILO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (76,'PRESENÇA AMEDRONTADORA','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (77,'PRESENÇA ASSUSTADORA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (78,'PRESENÇA DRACÔNICA','DRACÔNICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (79,'PRESENÇA NECROMANTICA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (80,'PRESENTE DE XORIAT',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (81,'PRESTEZA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (82,'PRESTÍGIO DE CLÃ',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (83,'PRODÍGIO EM CONJURAÇÕES',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (84,'PROTEÇÃO DA TERRA','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (85,'PROVOCADOR','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (86,'PUNHOS DA TERRA','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (87,'PUNHOS DE FERRO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (88,'PURIFICAÇÃO DIVINA','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (89,'RASTREADOR ASTRAL',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (90,'RASTREADOR DEDICADO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (91,'RASTREADOR LENDÁRIO','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (92,'RASTREAR URBANO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (93,'RATO DE TUNEL',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (94,'REALIDADE DAS SOMBRAS MELHORADA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (95,'RECARGA INSTANTÂNEA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (96,'RECONHECER IMPOSTOR',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (97,'RECONHECIMENTO RÁPIDO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (98,'REDE E TRIDENTE','ESTILO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (99,'REDUÇÃO DE DANO','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (100,'REDUÇÃO DE DANO DIVINA','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (101,'REFLETIR OBJETOS','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (102,'REFLEXOS AÉREOS',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (103,'REFLEXOS DE COMBATE APRIMORADOS','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (104,'REFLEXOS ÉPICOS','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (105,'REFLEXOS PERSPICAZES',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (106,'RELÍQUIA ANCESTRAL',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (107,'RELÍQUIA SANTIFICADA','CRIAÇÃO DE ITEM',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (108,'REJEITAR TOQUE MORTAL','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (109,'REMOVER DOÊNÇAS ADICIONAL','PURIFICAÇÃO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (110,'RÉQUIEM',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (111,'REPETIR MAGIA','METAMÁGICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (112,'REPUTAÇÃO ÉPICA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (113,'RESILIÊNCIA MAIOR',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (114,'RESILIÊNCIA VEEMÊNTE','PURIFICAÇÃO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (115,'RESISTÊNCIA À ENERGIA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (116,'RESISTÊNCIA À EVOCAÇÃO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (117,'RESISTÊNCIA À MAGIA APRIMORADA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (118,'RESISTÊNCIA DE CARVALHO','SELVAGEM',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (119,'RESISTÊNCIA DE UM CRIA DAS TUMBAS',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (120,'RESISTÊNCIA DIVINA','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (121,'RESISTÊNCIA DRACÔNICA','DRACÔNICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (122,'RESISTÊNCIA ENCORAJADORA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (123,'RESISTENTE A TELECINÉSE',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (124,'RETRIBUIÇÃO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (125,'RETRIBUIÇÃO DESTRUIDORA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (126,'RETROCESSO AÉREO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (127,'REUNIÃO ENCORAJADORA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (128,'RUÍNA DOS DRAGÕES',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (129,'RUÍNA DOS GIGANTES','TÁTICO, GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (130,'RUÍNA DOS INIMIGOS','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (131,'SABEDORIA MAIOR','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (132,'SÁBIO ANCIÃO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (133,'SALTADOR',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (134,'SALTADOR LENDÁRIO','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (135,'SALTEADOR CINZENTO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (136,'SALTEADOR VERDE',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (137,'SALTO DO LOUVA-A-DEUS',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (138,'SANGUE HUMANO','RACIAL',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (139,'SAÚDE PERFEITA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (140,'SEGUIDOR DRAGÃO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (141,'SEGUIDORES ADICIONAIS','LÍDER',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (142,'SEGUNDOS NOS BASTIDORES',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (143,'SEM GESTOS SÚBITO','METAMÁGICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (144,'SENHOR DO FRIO ABSOLUTO','METAMÁGICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (145,'SENSO DE PERIGO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (146,'SENSO DE YONDALLA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (147,'SENSO TERRESTRE',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (148,'SENTIDO CEGO','SELVAGEM',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (149,'SENTIDO DA AUDIÇÃO SUPERIOR','RACIAL',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (150,'SENTIDO DA VISÃO SUPERIOR','RACIAL',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (151,'SENTIDO DO OLFATO SUPERIOR','RACIAL',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (152,'SENTIDO DO PALADAR SUPERIOR','RACIAL',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (153,'SENTIDO DO TATO SUPERIOR','RACIAL',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (154,'SENTIR ARMADILHAS','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (155,'SENTIR FRAQUESA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (156,'SEPARAR À DISTÂNCIA','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (157,'SEPARAR ENFURECIDO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (158,'SERVO DE DRAGÃO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (159,'SERVO DOS CÉUS','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (160,'SILÊNCIO ADICIONAL',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (161,'SILÊNCIOSA SÚBITO','METAMÁGICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (162,'SOBREPUJAR ESCUDOS',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (163,'SOLIDEZ','RACIAL',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (164,'SONATA REPUGNANTE','MÚSICA DE BARDO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (165,'SOPRO DRACÔNICO','DRACÔNICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (166,'SOPRO PROFUNDO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (167,'SORTE DE DALLAH THAUN',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (168,'SORRISO DE MORADIN',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (169,'SUBSÔNICA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (170,'SUBSTITUIÇÃO DE ENERGIA','METAMÁGICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (171,'SUCESSO DECISIVO AVASSALADOR','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (172,'SUCESSO DECISIVO DEVASTADOR','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (173,'SUCESSO DECISIVO PODEROSO','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (174,'SUPERIORIDADE AÉREA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (175,'SUPREMAMENTE CONFIANTE','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (176,'SUPRIMIR O PROFANO','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (177,'SUSSURO DE HERESIA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (178,'TÁTICAS DE GRUPO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (179,'TÁTICAS DE MULTIDÃO','TÁTICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (180,'TELEPORTE PESADO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (181,'TEMPESTADE DE ARREMESSOS','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (182,'TEMPESTADE DE ATAQUES VOADORES','ESTILO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (183,'TENACIDADE DE JAVALI','SELVAGEM',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (184,'TERROR DO CADÁVER','METAMÁGICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (185,'TEURGÍSTA DRUÍDICO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (186,'TEURGÍSTA ELEMENTAL',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (187,'TEURGÍSTA POR TENDENCIA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (188,'TIRO À QUEIMA ROUPA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (189,'TIRO DE IMOBILIZAÇÃO','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (190,'TIRO LONGÍNQUO','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (191,'TIRO MÚLTIPLO APRIMORADO','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (192,'TIRO MÚLTIPLO MAIOR','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (193,'TIRO RÁPIDO APRIMORADO','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (194,'TOLERÂNCIA DIVINA','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (195,'TOLERÂNCIA PROFANA','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (196,'TOQUE DA DOR',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (197,'TOQUE DESENTOXIFICANTE','PURIFICAÇÃO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (198,'TOQUE DO ENFRAQUECIMENTO','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (199,'TOQUE DO FRIO DOURADO','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (200,'TOQUE SELVAGEM','ANÁRQUICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (201,'TÓTEM DA BESTA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (202,'TRAIÇÃO DO ESPÍRITO VINCULADO','MAGO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (203,'TRAPACEIRO DE CIDADE',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (204,'TREINAMENTO DE CAVALEIRO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (205,'TREINAMENTO DE NOME MONÁSTICO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (206,'TRÊS MONTANHAS','ESTILO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (207,'TROPA DE CHOQUE','TÁTICO, GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (208,'TROVÃO DEVASTADOR','ESTILO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (209,'TUTOR',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (210,'USAR ARMADURA DE ANÃO','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (211,'USAR ARMADURA EXÓTICA','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (212,'USAR BALESTRA','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (213,'USAR DUAS VARINHAS',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (214,'USAR ESCUDO EXÓTICO','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (215,'USAR VARINHA TEMERARIAMENTE',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (216,'VANTAGEM TÁTICA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (217,'VELOCIDADE DE GUEPARDO','SELVAGEM',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (218,'VELOCIDADE OFUSCANTE','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (219,'VELOCISTA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (220,'VENENO DE SERPENTE','SELVAGEM',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (221,'VIDA ENRIJECIDA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (222,'VIDA ESTENDIDA',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (223,'VÍNCULO TEÚRGICO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (224,'VINGANÇA SAGRADA','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (225,'VISÃO DE FALCÃO','SELVAGEM',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (226,'VISÃO DE PUMA','SELVAGEM',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (227,'VISÃO NA PENUMBRA APRIMORADA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (228,'VISÃO NO ESCURO APRIMORADA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (229,'VITALIDADE APRIMORADA','GUE',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (230,'VITALIDADE DE UM CRIA DAS TUMBAS',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (231,'VITALIDADE ÉPICA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (232,'VITALIDADE SAGRADA','DIVINO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (233,'VONTADE ÉPICA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (234,'VONTADE REFLEXA','ÉPICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (235,'VÔO APRIMORADO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (236,'VÔO DRACÔNICO','DRACÔNICO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (237,'VOTO DE ABSTINÊNCIA','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (238,'VOTO DE CASTIDADE','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (239,'VOTO DE NÃO À VIOLÊNCIA','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (240,'VOTO DE OBEDIÊNCIA','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (241,'VOTO DE PAZ','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (242,'VOTO DE POBREZA','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (243,'VOTO SAGRADO','EXALTADO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (244,'VOZ BLASFEMADORA','MÚSICA DE BARDO',NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (245,'VULTO URBANO',NULL,NULL,NULL,NULL);
INSERT  INTO `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) VALUES (246,'ZONA NEGATIVA','DIVINO, ÉPICO',NULL,NULL,NULL);

/*Table structure for table `usuario` */

CREATE TABLE `usuarios` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` INT(2),
  `created_at` DATE NOT NULL,
  `updated_at` DATE DEFAULT NULL,
  `remember_token` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `usuario` */

INSERT  INTO `usuarios`(`id`,`nome`,`email`,`senha`,`status`,`created_at`,`updated_at`,`remember_token`) VALUES (1,'William Richard Mangoni','willrpg@hotmail.com','a7ad924c22dc0819bb480953fcffad1c',1,'2016-04-05','0000-00-00',NULL);


CREATE TABLE `tipo_requisito` (
  `id` INT(9) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `magias` (
  `id` INT(9) NOT NULL AUTO_INCREMENT,
  `nivel` INT(3) NOT NULL,
  `nome` VARCHAR(50)  COLLATE utf8mb4_unicode_ci  NOT NULL,
  `descricao` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `escola` VARCHAR(50)  COLLATE utf8mb4_unicode_ci  NOT NULL,
  `componentes` VARCHAR(50)  COLLATE utf8mb4_unicode_ci  NOT NULL,
  `tempo_execusao` VARCHAR(50)  COLLATE utf8mb4_unicode_ci  NOT NULL,
  `alcance` VARCHAR(50)  COLLATE utf8mb4_unicode_ci  NOT NULL,
  `alvo_efeito_area` VARCHAR(50)  COLLATE utf8mb4_unicode_ci  NOT NULL,
  `duracao` VARCHAR(50)  COLLATE utf8mb4_unicode_ci  NOT NULL,
  `tr` VARCHAR(50)  COLLATE utf8mb4_unicode_ci DEFAULT " - ",
  `rm` VARCHAR(50)  COLLATE utf8mb4_unicode_ci DEFAULT " - ",
  `material_foco` VARCHAR(50)  COLLATE utf8mb4_unicode_ci DEFAULT " - ",
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Abrir / Fechar" , "Abre / fecha objetos pequenos ou leves" , "Trans" , "V,G,F" , "1 A.P." , "Curto 7,5m+1,5m/2niv" , "Obj. até 15kg ou portal" , "Inst" , "Von anula" , "Sim" , "Chave de bronze");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Brilho" , "Ofusca uma criatura (-1 nas jogadas de ataque)" , "Evoc[Fogo]" , "V" , "1 AP" , "Curto 7,5m+1,5m/2niv" , "Explosão de luz" , "Inst" , "Fort anula" , "Sim" , "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Canção de Ninar" , "O alvo fica sonolento (-1 nos testes de Observar e Ouvir e -2 contra Sono)" , "Encan." , "V,G" , "1 AP", "Médio 30m+3m/niv 3m" , "raio" , "Conc. +1rod/nív", "Von anula" , "Sim", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Consertar" , "Faz pequenos reparos em um objeto" , "Trans" , "V,G" , "1 AP" , "3m" , "Obj. até 500g" , "Inst" , "Von anula" , "Sim" , "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Detectar Magia" , "Detecta magias e itens mágicos a menos de 18m" , "Univ" , "V,G" , "1 A.P." , "18m" , "Cone" , "Conc. 1min/niv (D)" , "Nenhum" , "Não" , "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Globos de Luz" , "Cria tochas ou outras luzes ilusórias" , "Evoc [luz]" , "V,G" , "1 AP" , "Médio 30m+3m/niv" , "até 4 chamas ilus." , "1 min (D)" , "Nenhum" , "Não" , "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Intuir Direção" , "Você sabe onde fica o Norte" , "Adiv" , "V,G" , "1 AP", "Pessoal" , "Você" , "Inst", "-" , "-" , "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Invocar Instrumento" , "Invoca um instrumento à escolha do conjurador" , "Conj (invoc)" , "V,G" , "1 rod" , "0 metros" , "1 instrum. Musical portátil" , "1 min/niv(D)" , "Nenhum" , "Não" , "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Ler Magias" , "Decifra pergaminhos ou grimórios" , "Adiv" , "V,G,F" , "1 AP" , "Pessoal" , "Você" , "10 min/niv" , "-" , "-" , "Cristal transp/prisma");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Luz" , "Um objeto brilha como uma tocha" , "Evoc [luz]" , "V,M/FD" , "1 AP" , "Toque" , "Obj. tocado" , "10 min/niv(D)" , "Nenhum" , "Não" , "1 vaga-lume/musgo fosfor.");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Mãos Mágicas" , "Telecinésia de 2,5 kg" , "Trans" , "V,G" , "1 AP", "Curto 7,5m+1,5m/2niv" , "1 obj até 2,5 kg" , "Conc", "Nenhum" , "Não", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Mensagem" , "Conversação em voz baixa à distância" , "Trans" , "V,G,F" , "1 AP" , "Médio 30m+3m/niv" , "1 criat/niv" , "10 min/niv" , "Nenhum" , "Não" , "Pedaço de fio de cobre");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Pasmar" , "Um humanóide (4 DV ou menos) perde sua próxima ação" , "Encan." , "V,G,M" , "1 AP", "Curto 7,5m+1,5m/2niv" , "1 criat hum. 4DV ou menos" , "1 rod" , "Von anula" , "Sim" , "lã ou algo parecido");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Prestidigitação" , "Realiza pequenas ilusões" , "Univ" , "V,G" , "1 AP" , "3m" , "texto" , "1 hora" , "texto" , "Não" , "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Resistência" , "Alvo recebe +1 para testes de resistência" , "Abjur" , "V,G,M/FD" , "1 AP", "Toque" , "Criatura tocada" , "1 minuto" , "Von anula" , "Sim" , "1 capa miniatur");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (0, "Som Fantasma" , "Imita sons" , "Ilus (idéia)" , "V,G,M" , "1 AP", "Curto 7,5m+1,5m/2niv" , "Sons ilusórios" , "1 rod/niv(D)" , "Von desacr.", "Não" , "1 pouco de lã ou 1 pedaço de cera");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Alarme", "Protege uma área durante 2 h/nível", "Abjur", "V,G,F/FD", "1 A.P.", "Curto 7,5m+1,5m/2niv", "6m raio", "2 h/niv (D)", "Nenhum", "Não", "Sino + fio de prata");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Animar Corda", "Faz com que uma corda se mova a seu comando", "Trans", "V,G", "1 AP", "Médio 30m+3m/niv", "Corda 15m+1,5m/niv", "1 rod/niv", "Nenhum", "Não", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Apagar", "Faz um escrito comum ou mágico desaparecer", "Trans", "V,G", "1 AP", "Curto 7,5m+1,5m/2niv", "1perg ou 2pgs", "Inst", "Texto", "Não", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Área Escorregadia", "Torna 3m quadrados ou um objeto escorregadio", "Conj", "V,G,M", "1 AP", "Curto 7,5m+1,5m/2niv", "Obj/quadr 3m", "1 rod/niv", "Texto", "Não", "Couro de porco/manteiga");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Aura Mágica de Nystul", "Concede uma aura mágica falsa a um objeto", "Ilus", "V,G,F", "1 AP", "Toque", "Obj 2,5kg/niv", "1 dia/niv(D)", "Nenhum", "Não", "Ped. Seda");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Boca Encantada", "Emite um recado quando ativada", "Ilus", "V,G,M", "1 AP", "Curto 7,5m+1,5m/2niv", "1 criat/obj", "Perm (D)", "Von anula", "Sim", "Jade 10PO + favos mel");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Causar Medo", "Uma criatura (5 DV ou menos) foge durante 1d4 rodadas", "Necr", "V,G", "1 AP", "Curto 7,5m+1,5m/2niv", "1 criat 5DV", "1d4 rod ou 1rod", "Von parcial", "Sim", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Compreender Idiomas", "Entenda todas as línguas faladas e escritas", "Adiv", "V,G,M/FD", "1 AP", "Pessoal", "Você", "10 min/niv", "-", "-", "Pitada fuligem + grãos sal ");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Confusão Menor", "Uma criatura fica confusa durante 1 rodada", "Encant", "V,G,FD", "-", "Curto 7,5m+1,5m/2niv", "1 criat viva", "1 rod", "Von anula", "Sim", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Curar Ferimentos Leves", "Cura 1d8+1/nível de dano (máximo +5)", "Conj [cura]", "V,G", "1 AP", "Toque", "Criatura tocada", "Inst", "Von metade", "Sim", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Detectar Portas Secretas", "Revela portas secretas que estejam a menos de 18m", "Adiv", "V,G", "1 AP", "18 m", "Emanação em cone", "Conc 1min/niv(D)", "Nenhum", "Não", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Dissimular Tendência", "Esconde uma tendência durante 24h", "Abjur", "V,G", "1 AP", "Curto 7,5m+1,5m/2niv", "1 criat/obj", "24 h", "Von anula", "Sim", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Enfeitiçar Pessoa", "Torna uma pessoa amigável", "Encant", "V,G", "1 AP", "Curto 7,5m+1,5m/2niv", "1 criatura humanóide", "1 h/niv", "Von anula", "Sim", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Hipnotismo", "Fascina 2d4 DV de criaturas", "Encant", "V,G", "1 rod", "Curto 7,5m+1,5m/2niv", "criats. A 9m de si", "2d4 rod(D)", "Von anula", "Sim", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Identificação", "Determina uma habilidade de um item mágico", "Adiv", "V,G,M/FD", "1 h", "Toque", "1 obj tocado", "Inst", "Nenhum", "Não", "Infusão pó perola(100PO) + vinho + pena coruja");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Imagem Silenciosa", "Cria uma ilusão menor", "Ilus [ideia]", "V,G,F", "1 AP", "Longo 120m+12m/niv", "ilus.vis. 4 cubos 3m+1 cubo 3m/niv (M)", "Conc", "Von desacr.", "Não", "um pouco de lã");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Invocar Criaturas I", "Invoca um ser extra-planar para auxiliar o conjurador", "Conj (invoc)", "V,G,F/FD", "1 rodada", "Curto 7,5m+1,5m/2niv", "1 criatura", "1 rod/niv(D)", "Nenhum", "Não", "1 pequena bolsa + 1 pequena vela");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Obscurecer Objeto", "Protege um objeto contra adivinhações", "Abjur", "V,G,M/FD", "1 AP", "Toque", "1 obj tocado de 50kg/niv", "8 horas (D)", "Von anula", "Sim", "1 pedaço de pele de camaleão");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Queda Suave", "Objetos ou criaturas caem lentamente", "Trans", "V", "1 Ação Simples", "Curto 7,5m+1,5m/2niv", "1 obj ou criat média / niv.", "1 rod/niv ou até aterrissar", "Von anula", "Sim", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Recuo Acelerado", "Soma +9m ao seu deslocamento", "Trans", "V,G", "1 AP", "Pessoal", "O conjurador", "1 min/niv(D)", "-", "-", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Remover Medo", "Anula ou concede +4 nos testes contra medo, 1 alvo/4 níveis", "Abjur", "V,G", "1 AP", "Curto 7,5m+1,5m/2niv", "1 criat. +1 a cada 4 niv.", "10 min", "Von anula", "Sim", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Riso Histérico de Tasha", "Alvo perde suas ações durante 1 rodada/nível", "Encant", "V,G,M", "1 AP", "Curto 7,5m+1,5m/2niv", "1 criatura", "1 rod/niv", "Von anula", "Sim", "pequenas tortas atiradas contra o alvo + 1 pena agitada no ar");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Servo Invisível", "Cria uma força invisível que obedece a suas ordens", "Conj (criação)", "V,G,M", "1 AP", "Curto 7,5m+1,5m/2niv", "1 servo invisível sem mente ou forma", "1 hora/niv", "Nenhum", "Não", "1 pedaço de barbante e de madeira ");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Sono", "4 DV de criaturas caem num sono parecido com o coma", "Encant", "V,G,M", "1 rodada", "Médio 30m+3m/niv", "explosão 3m raio", "1 minuto/niv", "Von anula", "Sim", "1 pouco areia fina, pétalas de rosa ou 1 grilo vivo ");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Transformação Momentânea", "Muda sua aparência", "Ilus (sensação)", "V,G", "1 AP", "Pessoal", "O conjurador", "10 min/niv(D)", "-", "-", "-");
INSERT INTO `magias` (`nivel`, `nome`, `descricao`, `escola`, `componentes`, `tempo_execusao`, `alcance`, `alvo_efeito_area`, `duracao`, `tr`, `rm`, `material_foco`) VALUES (1, "Ventriloquismo", "Projeta sua voz durante 1 min/nível", "Ilus (idéia)", "V,F", "1 AP", "Curto 7,5m+1,5m/2niv", "Som inteligivel, geralmente fala", "1 min/niv(D)", "Von desacr.", "Não", "1 pergaminho enrolado formando um cone");

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
