-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 04-Abr-2018 às 00:44
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`, `modified`, `user_id`) VALUES
(1, 'Tecnologia da Informação', '2018-04-03', '2018-04-03', 4),
(2, 'Segurança da Informação', '2018-04-03', '2018-04-03', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `name` varchar(45) NOT NULL,
  `text` text NOT NULL,
  `created` date NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comments`
--

INSERT INTO `comments` (`id`, `email`, `name`, `text`, `created`, `post_id`) VALUES
(1, 'teste@gmail.com', 'teste1', 'teste', '2018-04-03', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created` date NOT NULL,
  `modify` date NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `created`, `modify`, `image`, `category_id`, `user_id`) VALUES
(1, 'Watson O que é e como ele funciona?', 'Quando pensamos em tecnologia avançada, filmes de ficção científica dominam rapidamente nossa imaginação. Robôs poderosos, máquinas que pensam sozinhas, naves e gadgets que só existem em um futuro distante — mesmo no cinema. Pois... - \r\n\r\nVeja mais em https://www.uol/noticias/conteudo-publicitario/ibm-watson-como-funciona.htm#tematico-1', '2018-04-03', '2018-04-03', 'https://www.ibm.com/blogs/insights-on-business/government/wp-content/uploads/sites/20/2016/06/bbva-o', 1, 4),
(2, 'Por que segurança em software open source ainda é um desafio', 'A violação de segurança da Equifax foi um lembrete de que software e os componentes de código aberto representam um risco gigantesco para a segurança da empresa, apesar de seus diversos benefícios, especialmente quando não são mantidos adequadamente.\r\n\r\nEm abril, pesquisadores da Flashpoint Intelligence disseram que criminosos estavam usando ataques de senhas de força bruta contra a popular plataforma de comércio eletrônico Magento, aproveitando o acesso comprometido para roubar registros de cartão de crédito e instalar malwares focados na mineração com criptomoedas.\r\n\r\nfonte: http://computerworld.com.br/por-que-seguranca-em-software-open-source-ainda-e-um-desafio', '2018-04-03', '2018-04-03', 'http://computerworld.com.br/sites/beta.computerworld.com.br/files/news_articles/open_source.jpg', 2, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`) VALUES
(4, 'teste1', '$2y$10$tCjpLqcrLfDILa0X42JIee.XIceB0BfP0Wg6WOMSu68/MSpRkg7eG', 'teste', 'teste@teste.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
