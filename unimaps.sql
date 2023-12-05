-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/12/2023 às 15:59
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `unimaps`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `nome` varchar(35) DEFAULT NULL,
  `cpf` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`nome`, `cpf`, `email`, `celular`, `senha`) VALUES
('Maria Eduarda', 123, 'delboni.unimar@gmail.com', 0, '1234'),
('Lucas', 102030, 'lucas@gmail.com', 102030, '123'),
('Felipe', 302010, 'lucas@gmail.com', 102030, '123'),
('Pedro', 2143658, 'peguel@gmail.com', 1499993333, '0987'),
('Matheus', 87654321, 'mattheusdavid@gmail.com', 1499031983, '1234567'),
('Leonardo', 123456789, 'leomm@gmail.com', 2147483647, '12345'),
('Luna', 347651111, 'luna123@gmail.com', 1288882222, 'luna123'),
('henrique', 876543219, 'Henrique@gmail.com', 14, '1234'),
('Maria Eduarda', 2147483647, 'delboni.unimar@gmail.com', 0, 'Duda09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `locais`
--

CREATE TABLE `locais` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `bloco` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `locais`
--

INSERT INTO `locais` (`id`, `nome`, `tipo`, `descricao`, `referencia`, `bloco`) VALUES
(15, 'Biblioteca', 'Estudos', 'Local para adiquirir conhecimento', 'Ao lado do bloco 4, esquina da saida', NULL),
(16, 'Secretaria', 'Informativo', 'Local para sanar duvidas gerais', 'Bloco seguinte a medicina', 'Bloco 11'),
(17, 'Ginasio', 'Esportes', 'Possui quadras e materiais para diversos esportes', 'Em frente ao estacionamento', NULL),
(18, 'Piscina', 'Lazer/esportes', 'Area possui piscina com facil acesso', 'Atras do ginasio', NULL),
(19, 'Estacionamento', 'Estacionamento', 'Espaço para deixar seu veículo', 'Em frente ao ginasio', NULL),
(20, 'Lanchonete 1', 'Alimentação', 'Comercio de comidas e bebidas', 'Atras do bloco 4', NULL),
(21, 'Lanchonete 2', 'Alimentação', 'Comercio de comidas e bebidas', 'Perto do estacionamento', NULL),
(22, 'Sala 421', 'Aula/Estudos', 'Possui maquinas prontas para uso tecnico', 'Primeira sala à esquerda, vindo da Lanchonete 1', 'Bloco 4'),
(23, 'Sala 310', 'Aula/Estudos', 'Possui mesas com capacidade de uso para arquitetura e desenhos', 'Segunda sala à direita vindo do Ginasio', 'Bloco 4'),
(24, 'Bloco 4', 'Bloco', 'Tecnologia/Arquitetura', 'Em frente ao ginasio', 'Bloco 4'),
(25, 'Bloco 8', 'Bloco', 'Direito', 'Em frente à Lanchonete 1', 'Bloco 8'),
(26, 'Bloco 5', 'Bloco', 'Psicologia', 'Ao lado do Bloco 4, em frente as quadras ', 'Bloco 5'),
(27, 'Bloco 11', 'Bloco', 'Medicina', 'Ao lado da Secretaria', 'Bloco 11'),
(28, 'Bloco 10', 'Bloco', 'Ed. Fisica/Fisioterapia', 'Último Bloco', 'Bloco 10'),
(29, 'Laboratorio IA', 'Laboratorio', 'Laboratorio de Inteligencia Artificial', 'ao lado da sala 428', 'Bloco 4');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `SOBRENOME` varchar(50) DEFAULT NULL,
  `TELEFONE` varchar(15) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `SENHA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `NOME`, `SOBRENOME`, `TELEFONE`, `CEP`, `EMAIL`, `SENHA`) VALUES
(5, 'Leonardo Mendonça', '', '14998170380', '17501-370', 'leonardomoraes008@hotmail.com', 'xds'),
(6, 'Andre', '', '14998170380', '17501-370', 'leonardomoraes008@hotmail.com', 'SEDSDSDSD'),
(7, 'Andre', '', '14998170380', '17501-370', 'leonardomoraes008@hotmail.com', 'SEDSDSDSD'),
(8, 'Andre', '', '14998170380', '17501-370', 'leonardomoraes008@hotmail.com', 'SEDSDSDSD'),
(9, 'Leonardo', 'Silva', '14998170380', '17501-370', 'leonardomoraes008@hotmail.com', 'leo111111'),
(10, 'Leonardo', 'Silva', '14998170380', '17501-370', 'leonardomoraes008@hotmail.com', 'leo111111'),
(11, 'Leonardo', 'Moraes', '151236458', '17501370', 'leomm@gmail.com', '1505'),
(12, 'Leonardo', 'Moraes', '151236458', '17501370', 'leomm@gmail.com', '1505'),
(13, 'Leonardo', 'Moraes', '151236458', '17501370', 'leomm@gmail.com', '1505'),
(14, 'Andre', 'Moraes', '14998170380', '17525-070', 'dfdfdf', 'dfdfdf'),
(15, 'Andre', 'Moraes', '14998170380', '17525-070', 'dfdfdf', 'dfdfdf'),
(16, '', '', '', '', '', ''),
(17, 'Carlos', 'Eduardo', '1434331505', '17501370', 'leonardogg@gmail.com', '1505'),
(18, 'Carlos', 'Eduardo', '1434331505', '17501370', 'leonardogg@gmail.com', '1505'),
(19, 'Carlos', 'Eduardo', '1434331505', '17501370', 'leonardogg@gmail.com', '1505'),
(20, 'Carlos', 'Eduardo', '1434331505', '17501370', 'leonardogg@gmail.com', '1505'),
(21, 'Carlos', 'Eduardo', '1434331505', '17501370', 'leonardogg@gmail.com', '1505'),
(22, 'Carlos', 'Eduardo', '1434331505', '17501370', 'leonardogg@gmail.com', '1505'),
(23, 'Carlos', 'Eduardo', '1434331505', '17501370', 'leonardogg@gmail.com', '1505'),
(24, 'Silvia', 'Mendonca', '112861275612', '152348515', 'silviamm@gmail.com', '15051975'),
(25, 'Silvia', 'Mendonca', '112861275612', '152348515', 'silviamm@gmail.com', '15051975'),
(26, 'Silvia', 'Mendonca', '112861275612', '152348515', 'silviamm@gmail.com', '15051975'),
(27, 'Gabriel', 'Corno', '15262524', '1226272', 'canaleviado@gmail.com', '123456789'),
(28, 'Gabriel', 'Corno', '15262524', '1226272', 'canaleviado@gmail.com', '123456789'),
(29, '', '', '', '', '', ''),
(30, '', '', '', '', '', ''),
(31, '', '', '', '', '', ''),
(32, '', '', '', '', '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `locais`
--
ALTER TABLE `locais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
