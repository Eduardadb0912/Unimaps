-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/11/2023 às 01:28
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste`
--

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

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `locais`
--
ALTER TABLE `locais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
