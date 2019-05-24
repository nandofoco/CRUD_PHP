-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Maio-2019 às 15:51
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pdo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_alunos`
--

CREATE TABLE `tb_alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `modalidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_alunos`
--

INSERT INTO `tb_alunos` (`id`, `nome`, `tel`, `email`, `modalidade`) VALUES
(1, 'Ariana Carla', '(24)999830477', 'ariana@gmail.com', 2),
(2, 'Ana gabriela', '(24)999814587', 'anagabriela@gmail.comtb_modalidadestb_alunos', 1),
(3, 'Dan Almeida', '(24)999830477', 'dalvanvr@gmail.com', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_modalidades`
--

CREATE TABLE `tb_modalidades` (
  `id` int(11) NOT NULL,
  `modalidade` varchar(255) NOT NULL,
  `mensalidade` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_modalidades`
--

INSERT INTO `tb_modalidades` (`id`, `modalidade`, `mensalidade`) VALUES
(1, 'Zumba', '89.90'),
(2, 'Musculação', '100.00'),
(3, 'Ginastica', '69.90'),
(4, 'MMA', '120.00'),
(5, 'Judo', '139.90'),
(6, '100.00', '0.00'),
(9, '50.00', '0.00'),
(10, '50', '0.00'),
(12, '10', '0.00'),
(13, 'teste', '10.00'),
(14, 'Jiu-jitsu', '100.00'),
(15, 'Bale', '100.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alunos`
--
ALTER TABLE `tb_alunos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `modalidade` (`modalidade`);

--
-- Indexes for table `tb_modalidades`
--
ALTER TABLE `tb_modalidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modalidade` (`modalidade`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_alunos`
--
ALTER TABLE `tb_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_modalidades`
--
ALTER TABLE `tb_modalidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_alunos`
--
ALTER TABLE `tb_alunos`
  ADD CONSTRAINT `tb_alunos_ibfk_1` FOREIGN KEY (`modalidade`) REFERENCES `tb_modalidades` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
