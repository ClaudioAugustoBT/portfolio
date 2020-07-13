-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 13-Jun-2019 às 01:50
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `db_posto`
--
CREATE DATABASE IF NOT EXISTS `db_posto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_posto`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_combustivel`
--

CREATE TABLE IF NOT EXISTS `tb_combustivel` (
  `cd_combustivel` int(11) NOT NULL AUTO_INCREMENT,
  `nm_combustivel` varchar(50) NOT NULL,
  `vl_combustivel` decimal(4,3) DEFAULT NULL,
  `qt_combustivel` decimal(9,3) DEFAULT NULL,
  PRIMARY KEY (`cd_combustivel`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `tb_combustivel`
--

INSERT INTO `tb_combustivel` (`cd_combustivel`, `nm_combustivel`, `vl_combustivel`, `qt_combustivel`) VALUES
(1, 'Gasolina', '4.369', '1000.363'),
(2, 'Gasolina Adtivada', '4.569', '1000.363'),
(3, 'Etanol', '3.569', '1000.363'),
(4, 'Diesel', '2.569', '1000.363'),
(5, 'GNV', '2.569', '1000.363');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto`
--

CREATE TABLE IF NOT EXISTS `tb_produto` (
  `cd_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nm_produto` varchar(50) DEFAULT NULL,
  `vl_preco` decimal(10,2) DEFAULT NULL,
  `ds_data` varchar(10) DEFAULT NULL,
  `cd_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_produto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tb_produto`
--

INSERT INTO `tb_produto` (`cd_produto`, `nm_produto`, `vl_preco`, `ds_data`, `cd_categoria`) VALUES
(1, 'Coca-Cola', '4.52', '12/06/2019', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `cd_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nm_usuario` varchar(50) DEFAULT NULL,
  `ds_senha` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cd_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`cd_usuario`, `nm_usuario`, `ds_senha`) VALUES
(1, 'adm', 'adm123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
