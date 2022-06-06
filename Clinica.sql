-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Jun-2022 às 00:40
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ambulatorios`
--

CREATE TABLE `ambulatorios` (
  `nroa` int(11) NOT NULL,
  `andar` int(3) NOT NULL,
  `capacidade` smallint(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ambulatorios`
--

INSERT INTO `ambulatorios` (`nroa`, `andar`, `capacidade`) VALUES
(1, 1, 30),
(2, 1, 50),
(3, 2, 40),
(4, 2, 25),
(5, 2, 55);

-- --------------------------------------------------------

--
-- Estrutura da tabela `consultas`
--

CREATE TABLE `consultas` (
  `codm` int(11) NOT NULL,
  `codp` int(11) DEFAULT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `consultas`
--

INSERT INTO `consultas` (`codm`, `codp`, `data`, `hora`) VALUES
(3, 3, '2006-06-12', '10:00:00'),
(2, 1, '2006-06-13', '09:00:00'),
(1, 4, '2006-06-13', '11:00:00'),
(2, 2, '2006-06-13', '11:00:00'),
(2, 3, '2006-06-14', '14:00:00'),
(2, 4, '2006-06-14', '17:00:00'),
(3, 4, '2006-06-19', '13:00:00'),
(3, 1, '2006-06-19', '18:00:00'),
(4, 4, '2006-06-20', '13:00:00'),
(4, 4, '2006-06-22', '19:30:00'),
(1, 1, '2006-07-12', '14:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `codf` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `idade` smallint(3) NOT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `CPF` int(11) NOT NULL,
  `salario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`codf`, `nome`, `idade`, `cidade`, `CPF`, `salario`) VALUES
(1, 'Rita', 32, 'São Jose', 300000001, 1200),
(2, 'Maria', 55, 'Palhoca', 300000002, 1220),
(3, 'Caio', 45, 'Florianopolis', 300000003, 1100),
(4, 'Carlos', 44, 'Florianopolis', 300000004, 1200),
(5, 'Paula', 33, 'Florianopolis', 300000005, 2500);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicos`
--

CREATE TABLE `medicos` (
  `codm` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `idade` smallint(3) NOT NULL,
  `especialidade` char(20) DEFAULT NULL,
  `CPF` int(11) NOT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `nroa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `medicos`
--

INSERT INTO `medicos` (`codm`, `nome`, `idade`, `especialidade`, `CPF`, `cidade`, `nroa`) VALUES
(1, 'Joao', 40, 'ortopedia', 1000000000, 'Floríanopolis', 1),
(2, 'Maria', 42, 'Traumatologia', 1000000002, 'Blumenau', 2),
(3, 'Pedro', 51, 'Pediatria', 1000000003, 'São José', 2),
(4, 'Carlos', 28, 'Ortopedia', 1000000004, 'Joinville', NULL),
(5, 'Marcia', 33, 'Neurologia', 1000000005, 'Biguacu', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacientes`
--

CREATE TABLE `pacientes` (
  `codp` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `idade` smallint(3) NOT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `CPF` int(11) NOT NULL,
  `doenca` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pacientes`
--

INSERT INTO `pacientes` (`codp`, `nome`, `idade`, `cidade`, `CPF`, `doenca`) VALUES
(1, 'Ana', 20, 'Florianopolis', 2000000001, 'Gripe'),
(2, 'Paulo', 24, 'Ilhota', 2000000002, 'Fratura'),
(3, 'Lucia', 30, 'Biguacu', 2000000003, 'Tendinite'),
(4, 'Carlos', 28, 'Joinville', 2000000004, 'Sarampo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ambulatorios`
--
ALTER TABLE `ambulatorios`
  ADD PRIMARY KEY (`nroa`);

--
-- Índices para tabela `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`data`,`hora`,`codm`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`codf`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Índices para tabela `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`codm`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Índices para tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`codp`),
  ADD UNIQUE KEY `CPF` (`CPF`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
