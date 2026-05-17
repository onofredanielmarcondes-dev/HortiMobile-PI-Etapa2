-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 23/03/2026 às 01:55
-- Versão do servidor: 5.7.11
-- Versão do PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hortimobile`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `preco_kg` decimal(10,2) DEFAULT NULL,
  `estoque_kg` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco_kg`, `estoque_kg`) VALUES
(1, 'Abacaxi Pérola', '8.90', '40.00'),
(2, 'Banana Prata', '6.50', '100.00'),
(3, 'Banana Nanica', '5.90', '80.00'),
(4, 'Maçã Gala', '10.80', '60.00'),
(5, 'Maçã Argentina', '14.50', '30.00'),
(6, 'Uva Vitória', '12.00', '40.00'),
(7, 'Manga Palmer', '7.50', '50.00'),
(8, 'Mamão Papaia', '5.50', '45.00'),
(9, 'Melancia Inteira', '22.00', '20.00'),
(10, 'Limão Taiti', '4.90', '70.00'),
(11, 'Morango Bandeja', '10.50', '60.00'),
(12, 'Pêra Willians', '15.00', '25.00'),
(13, 'Tangerina Ponkan', '6.80', '50.00'),
(14, 'Melão Amarelo', '6.50', '35.00'),
(15, 'Abacate', '7.20', '25.00'),
(16, 'Kiwi Importado', '15.90', '15.00'),
(17, 'Cereja Fresca', '45.00', '10.00'),
(18, 'Goiaba Vermelha', '6.50', '30.00'),
(19, 'Maracujá Azedo', '12.00', '20.00'),
(20, 'Carambola', '9.00', '15.00'),
(21, 'Batata Inglesa', '5.50', '200.00'),
(22, 'Cebola Branca', '5.80', '120.00'),
(23, 'Cenoura', '4.90', '90.00'),
(24, 'Tomate Italiano', '8.90', '100.00'),
(25, 'Abóbora Cabotiá', '4.50', '80.00'),
(26, 'Chuchu', '3.20', '60.00'),
(27, 'Abobrinha Italiana', '5.50', '40.00'),
(28, 'Beterraba', '4.80', '50.00'),
(29, 'Pepino Comum', '3.90', '45.00'),
(30, 'Pimentão Verde', '7.50', '30.00'),
(31, 'Alho Roxo', '35.00', '10.00'),
(32, 'Batata Doce', '4.50', '100.00'),
(33, 'Cebola Roxa', '8.50', '40.00'),
(34, 'Mandioca Descascada', '7.50', '50.00'),
(35, 'Berinjela', '5.00', '30.00'),
(36, 'Vagem', '12.00', '20.00'),
(37, 'Milho Verde (Bandeja)', '6.00', '25.00'),
(38, 'Brócolis Ninja', '9.00', '20.00'),
(39, 'Alface Crespa', '3.00', '40.00'),
(40, 'Couve Manteiga', '3.50', '50.00'),
(41, 'Contra Filé Kg', '45.90', '40.00'),
(42, 'Alcatra Kg', '39.90', '35.00'),
(43, 'Acém Moído Kg', '28.50', '50.00'),
(44, 'Peito de Frango Kg', '19.80', '45.00'),
(45, 'Linguiça Toscana', '22.00', '40.00'),
(46, 'Pão Francês Kg', '15.90', '40.00'),
(47, 'Pão de Forma', '8.50', '50.00'),
(48, 'Bolo de Fubá', '12.00', '10.00'),
(49, 'Coxinha de Frango', '6.50', '30.00'),
(50, 'Pão de Queijo 500g', '18.00', '20.00'),
(51, 'Arroz 5kg', '29.90', '100.00'),
(52, 'Feijão 1kg', '8.50', '150.00'),
(53, 'Açúcar 1kg', '4.20', '120.00'),
(54, 'Café 500g', '17.90', '80.00'),
(55, 'Óleo de Soja', '6.50', '200.00'),
(56, 'Leite Integral 1L', '5.20', '300.00'),
(57, 'Macarrão 500g', '4.20', '90.00'),
(58, 'Detergente', '2.50', '120.00'),
(59, 'Sabão em Pó 1kg', '14.90', '60.00'),
(60, 'Papel Higiênico 12un', '18.00', '50.00'),
(61, 'salgado frito ', '8.00', '30.00');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
