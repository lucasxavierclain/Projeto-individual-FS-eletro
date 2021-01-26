CREATE SCHEMA `fullstack` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
use fullstack;

CREATE TABLE `fullstack`.`produtos` (
  `idprodutos` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NULL,
  `produto` VARCHAR(45) NULL,
  `descricao` VARCHAR(200) NULL,
  `preco` DECIMAL(8,2) NULL,
  `precoAnterior` DECIMAL(8,2) NULL,
  `nomeImagem` VARCHAR(70) NULL,
  PRIMARY KEY (`idprodutos`))
  ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


CREATE TABLE `fullstack`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NULL,
  `email` VARCHAR(50) NULL,
  `telefone` DECIMAL(11) NULL,
  PRIMARY KEY (`idusuario`))ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE `fullstack`.`pedido` (
  `idpedido` INT NOT NULL AUTO_INCREMENT,
  `idusuario` INT NULL,
  `idprodutos` INT NULL,
  `quantidade` INT NULL,
  `nome` VARCHAR(60) NULL,
  `email` VARCHAR(50) NULL,
  `telefone` DECIMAL(11) NULL,
  PRIMARY KEY (`idpedido`))
  ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;
  
ALTER TABLE `fullstack`.`pedido` 
ADD INDEX `idprodutos_idx` (`idprodutos` ASC) VISIBLE;
;
ALTER TABLE `fullstack`.`pedido` 
ADD CONSTRAINT `idprodutos`
  FOREIGN KEY (`idprodutos`)
  REFERENCES `fullstack`.`produtos` (`idprodutos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('celular', 'Celular','Motorola V8', '1200','2000', '/imagens/celular-motorola.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('celular', 'Celular','Samsung A23', '800', '5000','/imagens/celular-samsung.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('celular', 'Celular','Iphone 11', '1100', '1500','/imagens/celular-iphone.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('geladeira', 'Geladeira','Consul', '1000', '3000','/imagens/geladeira-consul.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('geladeira', 'Geladeira','Electrolux', '2000', '4000','/imagens/geladeira-electrolux-2.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('geladeira', 'Geladeira','Electrolux Inox', '3000','6000', '/imagens/geladeira-electrolux.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('televisao', 'TV','LG', '1500', '4000','/imagens/lg-tv.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('televisao', 'TV','Philco', '1200','2000', '/imagens/philco-tv.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('televisao', 'TV','Samsung', '2000','3500', '/imagens/samsung-tv.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('maquinaDeLavar', 'Maquina de lavar','Consul', '1200','2500', '/imagens/maquina-de-lavar-consul.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('microondas', 'Microondas','Electrolux', '800', '2000','/imagens/microondas-electrolux.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('microondas', 'Microondas','Ret', '900', '2000','/imagens/microondas-ret.png');
