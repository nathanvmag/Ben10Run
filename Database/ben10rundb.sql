-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/11/2016 às 13:54
-- Versão do servidor: 10.1.9-MariaDB
-- Versão do PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ben10rundb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aliens`
--

CREATE TABLE `aliens` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `MaxAtaque` int(255) NOT NULL,
  `MaxDefesa` int(255) NOT NULL,
  `MaxHP` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `aliens`
--

INSERT INTO `aliens` (`ID`, `Nome`, `MaxAtaque`, `MaxDefesa`, `MaxHP`) VALUES
(1, 'Quatro Braços', 0, 0, 0),
(2, 'Diamante', 0, 0, 0),
(3, 'Massa Cinzenta', 0, 0, 0),
(4, 'Fera', 0, 0, 0),
(5, 'Chama', 0, 0, 0),
(6, 'Besta', 0, 0, 0),
(7, 'XLR8', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `caixadecapsulas`
--

CREATE TABLE `caixadecapsulas` (
  `Nickname` varchar(255) NOT NULL,
  `AlienID` int(11) NOT NULL,
  `Ataque` int(11) NOT NULL,
  `Defesa` int(11) NOT NULL,
  `Pontos_de_vida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `caixadecapsulas`
--

INSERT INTO `caixadecapsulas` (`Nickname`, `AlienID`, `Ataque`, `Defesa`, `Pontos_de_vida`) VALUES
('nathanvmag', 2, 30, 80, 200),
('jupotengy', 5, 20, 130, 120),
('ronaldd11', 4, 10, 200, 200),
('jupotengy', 1, 100, 100, 100),
('jupotengy', 7, 100, 90, 80);

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens`
--

CREATE TABLE `itens` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `itens`
--

INSERT INTO `itens` (`ID`, `Nome`) VALUES
(1, 'Poção de Cura'),
(2, 'Capsulas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mochila`
--

CREATE TABLE `mochila` (
  `Nickname` varchar(255) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `mochila`
--

INSERT INTO `mochila` (`Nickname`, `ItemID`, `Quantidade`) VALUES
('nathanvmag', 2, 20),
('jupotengy', 1, 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `player`
--

CREATE TABLE `player` (
  `Nickname` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Senha` varchar(255) NOT NULL,
  `XP` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `player`
--

INSERT INTO `player` (`Nickname`, `Email`, `Senha`, `XP`) VALUES
('jupotengy', 'jupotengy@gmail.com', 'euamoonogueira', 100),
('nathanvmag', 'nathanvmag@gmail.com', 'euamoamari', 250),
('ronaldd11', 'ronaldalbert1609@gmail.com', 'ronaldd+', 30);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `aliens`
--
ALTER TABLE `aliens`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`Nickname`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `aliens`
--
ALTER TABLE `aliens`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `itens`
--
ALTER TABLE `itens`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
