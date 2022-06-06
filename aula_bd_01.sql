-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Maio-2022 às 02:33
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aula_bd_01`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `idPessoa` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `CPF` int(11) NOT NULL,
  `RG` int(10) NOT NULL,
  `CEP` int(9) DEFAULT NULL,
  `Endereco` varchar(60) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Vendedor_idVendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`idPessoa`, `Nome`, `CPF`, `RG`, `CEP`, `Endereco`, `Email`, `Vendedor_idVendedor`) VALUES
(1, 'Cristopher Machado', 12345, 123456, 95590000, 'Egon Hoffmeister', 'cristopherpiussi@gmail.com', 0),
(2, 'Cristopher Machado Piussi', 54321, 654321, 95590009, 'Egon Hoffmeister2', 'cristopherpiussi@gmail.com', 0),
(3, 'Cristopher Piussi', 1234, 12345, 95590000, 'Rua ruinha', 'email@gmail', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `Nome_produto` varchar(45) NOT NULL,
  `Valor_produto` int(10) NOT NULL,
  `Codigo_barras` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `Nome_produto`, `Valor_produto`, `Codigo_barras`) VALUES
(1, 'Peça1', 10, 1),
(2, 'Peça2', 20, 2),
(3, 'Peça3', 30, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `idVendedor` int(11) NOT NULL,
  `Nome_vendedor` varchar(45) NOT NULL,
  `Matricula` int(10) NOT NULL,
  `Empresa_compradora` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor_has_produto`
--

CREATE TABLE `vendedor_has_produto` (
  `Vendedor_idVendedor` int(11) NOT NULL,
  `Produto_idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`idPessoa`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`idVendedor`);

--
-- Índices para tabela `vendedor_has_produto`
--
ALTER TABLE `vendedor_has_produto`
  ADD PRIMARY KEY (`Vendedor_idVendedor`,`Produto_idProduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `idVendedor` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
