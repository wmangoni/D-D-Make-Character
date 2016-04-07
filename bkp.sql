/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.26 : Database - rpg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rpg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

/*Table structure for table `bba` */

CREATE TABLE `bba` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `bar` int(9) NOT NULL,
  `bad` int(9) NOT NULL,
  `cle` int(9) NOT NULL,
  `dru` int(9) NOT NULL,
  `gue` int(9) NOT NULL,
  `mon` int(9) NOT NULL,
  `pal` int(9) NOT NULL,
  `ran` int(9) NOT NULL,
  `lad` int(9) NOT NULL,
  `fei` int(9) NOT NULL,
  `mag` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `bba` */

insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (1,1,0,0,0,1,0,1,1,0,0,0);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (2,2,1,1,1,2,1,2,2,1,1,1);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (3,3,2,2,2,3,2,3,3,2,1,1);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (4,4,3,3,3,4,3,4,4,3,2,2);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (5,5,3,3,3,5,3,5,5,3,2,2);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (6,6,4,4,4,6,4,6,6,4,3,3);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (7,7,5,5,5,7,5,7,7,5,3,3);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (8,8,6,6,6,8,6,8,8,6,4,4);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (9,9,6,6,6,9,6,9,9,6,4,4);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (10,10,7,7,7,10,7,10,10,7,5,5);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (11,11,8,8,8,11,8,11,11,8,5,5);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (12,12,9,9,9,12,9,12,12,9,6,6);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (13,13,9,9,9,13,9,13,13,9,6,6);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (14,14,10,10,10,14,10,14,14,10,7,7);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (15,15,11,11,11,15,11,15,15,11,7,7);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (16,16,12,12,12,16,12,16,16,12,8,8);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (17,17,12,12,12,17,12,17,17,12,8,8);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (18,18,13,13,13,18,13,18,18,13,9,9);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (19,19,14,14,14,19,14,19,19,14,9,9);
insert  into `bba`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (20,20,15,15,15,20,15,20,20,15,10,10);

/*Table structure for table `classes` */

CREATE TABLE `classes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dv` int(2) NOT NULL,
  `bba_tipo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resistencia` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `classes` */

insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (1,'Bárbaro',12,'bom','fort');
insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (2,'Bardo',6,'medio','ref/von');
insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (3,'Clérigo',8,'medio','fort/von');
insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (4,'Druida',8,'medio','fort/von');
insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (5,'Guerreiro',10,'bom','fort');
insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (6,'Monge',8,'medio','fort/ref/von');
insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (7,'Paladino',10,'bom','fort');
insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (8,'Ranger',8,'bom','fort/ref');
insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (9,'Ladino',6,'medio','ref');
insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (10,'Feiticeiro',4,'ruim','von');
insert  into `classes`(`id`,`nome`,`dv`,`bba_tipo`,`resistencia`) values (11,'Mago',4,'ruim','von');

/*Table structure for table `magias` */

CREATE TABLE `magias` (
  `id` int(9) NOT NULL,
  `bar` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bad` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cle` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dru` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gue` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mon` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pal` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ran` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lad` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fei` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mag` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `magias` */

insert  into `magias`(`id`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (0,'','{0:2}','{0:3,1:2}','{0:3,1:1}','','','','','','{0:5,1:3}','{0:3,1:1}');

/*Table structure for table `pericias` */

CREATE TABLE `pericias` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atributo` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sem_treinamento` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bar` int(1) NOT NULL,
  `bad` int(1) NOT NULL,
  `cle` int(1) NOT NULL,
  `dru` int(1) NOT NULL,
  `gue` int(1) NOT NULL,
  `mon` int(1) NOT NULL,
  `pal` int(1) NOT NULL,
  `ran` int(1) NOT NULL,
  `lad` int(1) NOT NULL,
  `fei` int(1) NOT NULL,
  `mag` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pericias` */

insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (1,'Abrir Fechaduras','DES','N',0,0,0,0,0,0,1,0,0,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (2,'Acrobacias','DES','N',0,1,0,0,0,1,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (3,'Adestrar Animais','CAR','N',1,0,0,1,1,0,1,1,0,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (4,'Arte da Fuga','DES','S',0,1,0,0,0,1,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (5,'Atuação','CAR','S',0,1,0,0,0,1,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (6,'Avaliação','INT','S',0,1,0,0,0,0,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (7,'Blefar','CAR','S',0,1,0,0,0,0,0,0,1,1,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (8,'Cavalgar','DES','S',1,0,0,1,1,0,1,1,0,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (9,'Concentração','CON','S',0,1,1,1,0,1,1,1,0,1,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (10,'Conhecimento (arcano)','INT','N',0,1,1,0,0,1,0,0,0,1,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (11,'Conhecimento (arquitetura e engenharia)','INT','N',0,1,0,0,0,0,0,0,0,0,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (12,'Conhecimento (geografia)','INT','N',0,1,0,0,0,0,0,1,0,0,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (13,'Conhecimento (história)','INT','N',0,1,1,0,0,0,0,0,0,0,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (14,'Conhecimento (local)','INT','N',0,1,0,1,0,0,0,0,1,0,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (15,'Conhecimento (masmorras)','INT','N',0,1,0,0,0,0,0,1,0,0,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (16,'Conhecimento (natureza)','INT','N',0,1,0,0,0,0,0,1,0,0,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (17,'Conhecimento (nobreza e realeza)','INT','N',0,1,0,0,0,0,1,0,0,0,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (18,'Conhecimento (planos)','INT','N',0,1,1,0,0,0,0,0,0,0,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (19,'Conhecimento (religião)','INT','N',0,1,1,0,0,1,1,0,0,0,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (20,'Cura','SAB','S',0,0,1,1,0,0,1,1,0,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (21,'Decifrar Escrita','INT','N',0,1,0,0,0,0,0,0,1,0,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (22,'Diplomacia','CAR','S',0,1,1,1,0,1,1,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (23,'Disfarces','CAR','S',0,1,0,0,0,0,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (24,'Equilíbrio','DES','S',0,1,0,0,0,1,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (25,'Escalar','FOR','S',1,1,0,0,1,1,0,1,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (26,'Esconder-se','DES','S',0,1,0,0,0,1,0,1,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (27,'Falar Idioma','N/A','N',0,1,0,0,0,0,0,0,0,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (28,'Falsificação','INT','S',0,0,0,0,0,0,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (29,'Furtividade','DES','S',0,1,0,0,0,1,0,1,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (30,'Identificar Magia','INT','N',0,1,1,1,0,0,0,0,0,1,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (31,'Intimidação','CAR','S',1,0,0,0,1,0,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (32,'Natação','FOR','S',1,1,0,1,1,1,0,1,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (33,'Observar','SAB','S',0,0,0,1,0,1,0,1,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (34,'Obter Informação','CAR','S',0,1,0,0,0,0,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (35,'Ofícios','INT','S',1,1,1,1,1,1,1,1,1,1,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (36,'Operar Mecanismo','INT','N',0,0,0,0,0,0,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (37,'Ouvir','SAB','S',1,1,0,1,0,1,0,1,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (38,'Prestidigitação','DES','N',0,1,0,0,0,0,0,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (39,'Procurar','INT','S',0,0,0,0,0,0,0,1,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (40,'Profissão','SAB','N',0,1,1,1,0,1,1,1,1,1,1);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (41,'Saltar','FOR','S',1,1,0,0,1,1,0,1,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (42,'Sentir Motivação','SAB','S',0,1,0,0,0,1,1,0,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (43,'Sobrevivência','SAB','S',1,0,0,1,0,0,0,1,0,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (44,'Usar Cordas','DES','S',0,0,0,0,0,0,0,1,1,0,0);
insert  into `pericias`(`id`,`nome`,`atributo`,`sem_treinamento`,`bar`,`bad`,`cle`,`dru`,`gue`,`mon`,`pal`,`ran`,`lad`,`fei`,`mag`) values (45,'Usar Intrumento Mágico','CAR','N',0,1,0,0,0,0,0,0,1,0,0);

/*Table structure for table `personagem` */

CREATE TABLE `personagem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race_id` int(2) DEFAULT NULL,
  `classe_id` int(2) DEFAULT NULL,
  `jogador_id` int(11) DEFAULT NULL,
  `tendencia` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divindade` int(2) DEFAULT NULL,
  `nivel` int(9) NOT NULL,
  `idade` int(9) DEFAULT NULL,
  `sexo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `altura` float(9,2) NOT NULL,
  `peso` int(9) NOT NULL,
  `olhos` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabelos` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` int(9) NOT NULL,
  `des` int(9) NOT NULL,
  `con` int(9) NOT NULL,
  `int` int(9) NOT NULL,
  `sab` int(9) NOT NULL,
  `car` int(9) NOT NULL,
  `iniciativa` int(9) NOT NULL,
  `pvs` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personagem` */

insert  into `personagem`(`id`,`nome`,`race_id`,`classe_id`,`jogador_id`,`tendencia`,`divindade`,`nivel`,`idade`,`sexo`,`altura`,`peso`,`olhos`,`cabelos`,`for`,`des`,`con`,`int`,`sab`,`car`,`iniciativa`,`pvs`) values (1,'Jonh',1,5,1,'NB',NULL,4,29,'M',1.00,75,'castanhos','castanhos',18,14,15,16,16,12,0,42);

/*Table structure for table `races` */

CREATE TABLE `races` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus` int(2) DEFAULT NULL,
  `atributo_bonus` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desvantagem` int(11) DEFAULT NULL,
  `atributo_desvantagem` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tamanho` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe_favorecida` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `races` */

insert  into `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) values (1,'Humano',0,'',0,NULL,'Medio',NULL);
insert  into `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) values (2,'Anão',2,'CON',2,'CAR','Medio',NULL);
insert  into `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) values (3,'Elfo',2,'DES',2,'CON','Medio',NULL);
insert  into `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) values (4,'Gnomo',2,'CON',2,'FOR','Medio',NULL);
insert  into `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) values (5,'Meio-elfo',0,NULL,0,NULL,'Medio',NULL);
insert  into `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) values (6,'Meio-orc',2,'FOR',2,'CAR','Medio',NULL);
insert  into `races`(`id`,`nome`,`bonus`,`atributo_bonus`,`desvantagem`,`atributo_desvantagem`,`tamanho`,`classe_favorecida`) values (7,'Halfling',2,'DES',2,'FOR','Pequeno',NULL);

/*Table structure for table `talentos` */

CREATE TABLE `talentos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_requisito_id` int(9) DEFAULT NULL,
  `beneficio` text COLLATE utf8mb4_unicode_ci,
  `normal` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=493 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `talentos` */

insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (1,'MOSTRAR-SE VIGOROSO','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (2,'MOVIMENTO PRECISO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (3,'MURALHA ATRÁS','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (4,'MÚSICA ADICIONAL',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (5,'MÚSICA BLOQUEADORA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (6,'MÚSICA DE CRIAÇÃO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (7,'MÚSICA DE PROTEÇÃO REFLEXA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (8,'MÚSICA DO CAOS','ANÁRQUICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (9,'MÚSICA DO CRESCIMENTO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (10,'MÚSICA DO DRAGÃO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (11,'MÚSICA DOS DEUSES','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (12,'MÚSICA ENCANTADORA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (13,'MÚSICA ENSURDECEDORA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (14,'MÚSICA METAMÁGICA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (15,'MÚSICA PROLONGADA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (16,'NADAR COMO UM PEIXE','SELVAGEM',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (17,'NASCIDO DOS TRÊS TROVÕES','METAMÁGICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (18,'NASCIDO PARA VOAR',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (19,'NATAÇÃO APRIMORADA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (20,'NATAÇÃO VELOZ',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (21,'NATIVO DE NECRÓPOLE',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (22,'NECROPOTENTE','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (23,'NÊMESIS','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (24,'NENHUMA AMEAÇA PARA MIM',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (25,'NOBRE NATO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (26,'OBTER FAMILIAR',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (27,'OFENSIVA TEMERÁRIA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (28,'OFÍCIO DA TERRA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (29,'OLHAR PENETRANTE',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (30,'OLHOS NA NUCA','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (31,'OPORTUNISTA ESPERTO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (32,'ORELHA VERDE',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (33,'OSSOS VELOZES',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (34,'OUVIR O QUE NÃO É VISTO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (35,'PARASITA PROFANADOR DE VIDA','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (36,'PACTO DIABÓLICO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (37,'PALAVRAS DE CRIAÇÃO','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (38,'PARCEIRO APRIMORADO','LÍDER',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (39,'PARCEIRO TREINADO','LÍDER',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (40,'PASSOS AJUSTADO DEFENSIVO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (41,'PASSOS ESTÁVEIS','RACIAL',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (42,'PAU PARA TODA OBRA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (43,'PELE DE ELEFANTE','SELVAGEM',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (44,'PELE DRACÔNICA','DRACÔNICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (45,'PENETRAR COBERTURAS MÁGICAS','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (46,'PENETRAR PROTEÇÕES MAGICAS','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (47,'PENETRAR REDUÇÃO DE DANO','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (48,'PENSAMENTOS OCULTOS',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (49,'PERFURAR AS TREVAS','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (50,'PERSONALIDADE FORTE','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (51,'PERSONALIDADE SOCIÁVEL',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (52,'PERSONALIZAR DOMÍNIO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (53,'PÉS DO OCEANO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (54,'PÉS LEVES',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (55,'PESQUISADOR',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (56,'PETELECO NO PULSO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (57,'PODER DIVINO','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (58,'PODER DRACÔNICO','DRACÔNICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (59,'PODER NECROMÂNTICO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (60,'PODERIO ÉPICO','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (61,'POLIGLOTA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (62,'PONTADA COM CASCOS','ESTILO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (63,'PONTARIA AGUÇADA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (64,'PONTARIA EXTRAORDINÁRIA COM MAGIAS',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (65,'POTÊNCIA ABJURATIVA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (66,'POTENCIALIZAR EXPULSÃO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (67,'POTENCIALIZAR SÚBITO','METAMÁGICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (68,'PRECISÃO SOBRENATURAL','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (69,'PRIMATA ESTÁVEL',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (70,'POUCOS, PORÉM FELIZES','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (71,'PRECISÃO DIVINA','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (72,'PRECISÃO MORTAL',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (73,'PREPARAÇÃO ARCANA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (74,'PREPARAR TIRO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (75,'PRESA DO URSO','ESTILO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (76,'PRESENÇA AMEDRONTADORA','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (77,'PRESENÇA ASSUSTADORA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (78,'PRESENÇA DRACÔNICA','DRACÔNICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (79,'PRESENÇA NECROMANTICA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (80,'PRESENTE DE XORIAT',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (81,'PRESTEZA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (82,'PRESTÍGIO DE CLÃ',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (83,'PRODÍGIO EM CONJURAÇÕES',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (84,'PROTEÇÃO DA TERRA','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (85,'PROVOCADOR','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (86,'PUNHOS DA TERRA','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (87,'PUNHOS DE FERRO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (88,'PURIFICAÇÃO DIVINA','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (89,'RASTREADOR ASTRAL',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (90,'RASTREADOR DEDICADO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (91,'RASTREADOR LENDÁRIO','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (92,'RASTREAR URBANO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (93,'RATO DE TUNEL',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (94,'REALIDADE DAS SOMBRAS MELHORADA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (95,'RECARGA INSTANTÂNEA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (96,'RECONHECER IMPOSTOR',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (97,'RECONHECIMENTO RÁPIDO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (98,'REDE E TRIDENTE','ESTILO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (99,'REDUÇÃO DE DANO','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (100,'REDUÇÃO DE DANO DIVINA','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (101,'REFLETIR OBJETOS','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (102,'REFLEXOS AÉREOS',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (103,'REFLEXOS DE COMBATE APRIMORADOS','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (104,'REFLEXOS ÉPICOS','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (105,'REFLEXOS PERSPICAZES',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (106,'RELÍQUIA ANCESTRAL',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (107,'RELÍQUIA SANTIFICADA','CRIAÇÃO DE ITEM',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (108,'REJEITAR TOQUE MORTAL','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (109,'REMOVER DOÊNÇAS ADICIONAL','PURIFICAÇÃO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (110,'RÉQUIEM',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (111,'REPETIR MAGIA','METAMÁGICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (112,'REPUTAÇÃO ÉPICA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (113,'RESILIÊNCIA MAIOR',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (114,'RESILIÊNCIA VEEMÊNTE','PURIFICAÇÃO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (115,'RESISTÊNCIA À ENERGIA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (116,'RESISTÊNCIA À EVOCAÇÃO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (117,'RESISTÊNCIA À MAGIA APRIMORADA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (118,'RESISTÊNCIA DE CARVALHO','SELVAGEM',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (119,'RESISTÊNCIA DE UM CRIA DAS TUMBAS',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (120,'RESISTÊNCIA DIVINA','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (121,'RESISTÊNCIA DRACÔNICA','DRACÔNICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (122,'RESISTÊNCIA ENCORAJADORA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (123,'RESISTENTE A TELECINÉSE',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (124,'RETRIBUIÇÃO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (125,'RETRIBUIÇÃO DESTRUIDORA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (126,'RETROCESSO AÉREO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (127,'REUNIÃO ENCORAJADORA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (128,'RUÍNA DOS DRAGÕES',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (129,'RUÍNA DOS GIGANTES','TÁTICO, GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (130,'RUÍNA DOS INIMIGOS','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (131,'SABEDORIA MAIOR','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (132,'SÁBIO ANCIÃO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (133,'SALTADOR',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (134,'SALTADOR LENDÁRIO','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (135,'SALTEADOR CINZENTO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (136,'SALTEADOR VERDE',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (137,'SALTO DO LOUVA-A-DEUS',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (138,'SANGUE HUMANO','RACIAL',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (139,'SAÚDE PERFEITA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (140,'SEGUIDOR DRAGÃO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (141,'SEGUIDORES ADICIONAIS','LÍDER',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (142,'SEGUNDOS NOS BASTIDORES',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (143,'SEM GESTOS SÚBITO','METAMÁGICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (144,'SENHOR DO FRIO ABSOLUTO','METAMÁGICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (145,'SENSO DE PERIGO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (146,'SENSO DE YONDALLA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (147,'SENSO TERRESTRE',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (148,'SENTIDO CEGO','SELVAGEM',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (149,'SENTIDO DA AUDIÇÃO SUPERIOR','RACIAL',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (150,'SENTIDO DA VISÃO SUPERIOR','RACIAL',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (151,'SENTIDO DO OLFATO SUPERIOR','RACIAL',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (152,'SENTIDO DO PALADAR SUPERIOR','RACIAL',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (153,'SENTIDO DO TATO SUPERIOR','RACIAL',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (154,'SENTIR ARMADILHAS','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (155,'SENTIR FRAQUESA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (156,'SEPARAR À DISTÂNCIA','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (157,'SEPARAR ENFURECIDO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (158,'SERVO DE DRAGÃO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (159,'SERVO DOS CÉUS','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (160,'SILÊNCIO ADICIONAL',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (161,'SILÊNCIOSA SÚBITO','METAMÁGICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (162,'SOBREPUJAR ESCUDOS',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (163,'SOLIDEZ','RACIAL',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (164,'SONATA REPUGNANTE','MÚSICA DE BARDO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (165,'SOPRO DRACÔNICO','DRACÔNICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (166,'SOPRO PROFUNDO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (167,'SORTE DE DALLAH THAUN',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (168,'SORRISO DE MORADIN',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (169,'SUBSÔNICA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (170,'SUBSTITUIÇÃO DE ENERGIA','METAMÁGICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (171,'SUCESSO DECISIVO AVASSALADOR','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (172,'SUCESSO DECISIVO DEVASTADOR','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (173,'SUCESSO DECISIVO PODEROSO','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (174,'SUPERIORIDADE AÉREA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (175,'SUPREMAMENTE CONFIANTE','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (176,'SUPRIMIR O PROFANO','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (177,'SUSSURO DE HERESIA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (178,'TÁTICAS DE GRUPO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (179,'TÁTICAS DE MULTIDÃO','TÁTICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (180,'TELEPORTE PESADO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (181,'TEMPESTADE DE ARREMESSOS','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (182,'TEMPESTADE DE ATAQUES VOADORES','ESTILO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (183,'TENACIDADE DE JAVALI','SELVAGEM',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (184,'TERROR DO CADÁVER','METAMÁGICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (185,'TEURGÍSTA DRUÍDICO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (186,'TEURGÍSTA ELEMENTAL',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (187,'TEURGÍSTA POR TENDENCIA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (188,'TIRO À QUEIMA ROUPA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (189,'TIRO DE IMOBILIZAÇÃO','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (190,'TIRO LONGÍNQUO','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (191,'TIRO MÚLTIPLO APRIMORADO','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (192,'TIRO MÚLTIPLO MAIOR','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (193,'TIRO RÁPIDO APRIMORADO','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (194,'TOLERÂNCIA DIVINA','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (195,'TOLERÂNCIA PROFANA','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (196,'TOQUE DA DOR',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (197,'TOQUE DESENTOXIFICANTE','PURIFICAÇÃO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (198,'TOQUE DO ENFRAQUECIMENTO','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (199,'TOQUE DO FRIO DOURADO','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (200,'TOQUE SELVAGEM','ANÁRQUICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (201,'TÓTEM DA BESTA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (202,'TRAIÇÃO DO ESPÍRITO VINCULADO','MAGO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (203,'TRAPACEIRO DE CIDADE',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (204,'TREINAMENTO DE CAVALEIRO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (205,'TREINAMENTO DE NOME MONÁSTICO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (206,'TRÊS MONTANHAS','ESTILO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (207,'TROPA DE CHOQUE','TÁTICO, GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (208,'TROVÃO DEVASTADOR','ESTILO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (209,'TUTOR',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (210,'USAR ARMADURA DE ANÃO','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (211,'USAR ARMADURA EXÓTICA','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (212,'USAR BALESTRA','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (213,'USAR DUAS VARINHAS',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (214,'USAR ESCUDO EXÓTICO','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (215,'USAR VARINHA TEMERARIAMENTE',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (216,'VANTAGEM TÁTICA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (217,'VELOCIDADE DE GUEPARDO','SELVAGEM',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (218,'VELOCIDADE OFUSCANTE','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (219,'VELOCISTA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (220,'VENENO DE SERPENTE','SELVAGEM',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (221,'VIDA ENRIJECIDA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (222,'VIDA ESTENDIDA',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (223,'VÍNCULO TEÚRGICO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (224,'VINGANÇA SAGRADA','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (225,'VISÃO DE FALCÃO','SELVAGEM',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (226,'VISÃO DE PUMA','SELVAGEM',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (227,'VISÃO NA PENUMBRA APRIMORADA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (228,'VISÃO NO ESCURO APRIMORADA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (229,'VITALIDADE APRIMORADA','GUE',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (230,'VITALIDADE DE UM CRIA DAS TUMBAS',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (231,'VITALIDADE ÉPICA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (232,'VITALIDADE SAGRADA','DIVINO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (233,'VONTADE ÉPICA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (234,'VONTADE REFLEXA','ÉPICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (235,'VÔO APRIMORADO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (236,'VÔO DRACÔNICO','DRACÔNICO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (237,'VOTO DE ABSTINÊNCIA','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (238,'VOTO DE CASTIDADE','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (239,'VOTO DE NÃO À VIOLÊNCIA','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (240,'VOTO DE OBEDIÊNCIA','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (241,'VOTO DE PAZ','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (242,'VOTO DE POBREZA','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (243,'VOTO SAGRADO','EXALTADO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (244,'VOZ BLASFEMADORA','MÚSICA DE BARDO',NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (245,'VULTO URBANO',NULL,NULL,NULL,NULL);
insert  into `talentos`(`id`,`nome`,`tipo`,`pre_requisito_id`,`beneficio`,`normal`) values (246,'ZONA NEGATIVA','DIVINO, ÉPICO',NULL,NULL,NULL);

/*Table structure for table `usuario` */

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`nome`,`email`,`senha`,`created_at`,`updated_at`,`remember_token`) values (1,'William Richard Mangoni','willrpg@hotmail.com','a7ad924c22dc0819bb480953fcffad1c','2016-04-05','0000-00-00',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
