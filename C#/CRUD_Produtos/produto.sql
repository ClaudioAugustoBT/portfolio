-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 18-Abr-2019 às 01:20
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `produtos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `cd_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nm_produto` varchar(50) DEFAULT NULL,
  `vl_preco` decimal(10,2) DEFAULT NULL,
  `ds_data` varchar(10) DEFAULT NULL,
  `cd_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_produto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`cd_produto`, `nm_produto`, `vl_preco`, `ds_data`, `cd_categoria`) VALUES
(1, 'Açucar', '10.00', '17-04-2019', 1),
(2, 'Sabão', '5.00', '17-04-2019', 2),
(3, 'Pão de Forma', '4.99', '17-04-2019', 3),
(5, 'Bombom', '1.78', '17-04-2019', 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
