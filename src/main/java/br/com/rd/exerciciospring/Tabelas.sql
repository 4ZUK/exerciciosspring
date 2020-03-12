-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/03/2020 às 19:39
-- Versão do servidor: 10.4.11-MariaDB
-- Versão do PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `spring`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cupom`
--

CREATE TABLE `tb_cupom` (
  `ID_CUPOM` bigint(20) NOT NULL,
  `ID_CLIENTE` bigint(20) NOT NULL,
  `DT_VENDA` text NOT NULL,
  `VL_VENDA` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cupom_item`
--

CREATE TABLE `tb_cupom_item` (
  `ID_CUPOM_ITEM` bigint(20) NOT NULL,
  `ID_CUPOM` bigint(20) NOT NULL,
  `ID_PRODUTO` bigint(20) NOT NULL,
  `QT_PRODUTO` bigint(20) NOT NULL,
  `VL_PRODUTO` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tb_cupom_item`
--
ALTER TABLE `tb_cupom_item`
  ADD KEY `ID_CUPOM` (`ID_CUPOM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
