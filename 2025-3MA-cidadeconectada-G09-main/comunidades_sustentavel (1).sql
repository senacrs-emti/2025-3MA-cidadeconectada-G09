-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/11/2025 às 15:46
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
-- Banco de dados: `comunidades.sustentavel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `comunidades_parceiras`
--

CREATE TABLE `comunidades_parceiras` (
  `id` int(11) NOT NULL,
  `nome_comunidade` varchar(100) NOT NULL,
  `localizacao_maps` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `feiras_locais`
--

CREATE TABLE `feiras_locais` (
  `id` int(11) NOT NULL,
  `nome_feira` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `dias_funcionamento` varchar(50) DEFAULT NULL,
  `horario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `feiras_locais`
--

INSERT INTO `feiras_locais` (`id`, `nome_feira`, `latitude`, `longitude`, `endereco`, `dias_funcionamento`, `horario`) VALUES
(1, 'Feira Ecológica do Bom Fim', -30.03194400, -51.21388900, 'Avenida José Bonifácio, Bom Fim', 'Sábados', 'Manhã'),
(2, 'Feira dos Agricultores Ecologistas', -30.02805600, -51.22861100, 'Rua João Alfredo, Cidade Baixa', 'Sábados', 'Manhã'),
(3, 'Feira da Redenção (Brique)', -30.03861100, -51.21666700, 'Parque Farroupilha (Redenção)', 'Domingos', 'Manhã'),
(4, 'Feira do Produtor do Menino Deus', -30.04805600, -51.22138900, 'Av. Getúlio Vargas, Menino Deus', 'Sábados', 'Manhã'),
(5, 'Feira Orgânica da Carlos Gomes', -30.03000000, -51.22000000, 'Praça Carlos Gomes, Centro', 'Domingos', 'Manhã'),
(6, 'Feira do Bom Jesus', -30.06111100, -51.16861100, 'Rua Bom Jesus, Glória', 'Sábados', 'Tarde'),
(7, 'Feira Ecológica do Largo Zumbi', -30.05138900, -51.17861100, 'Largo Zumbi dos Palmares, Centro Histórico', 'Sextas', 'Manhã'),
(8, 'Feira da João Telles', -30.03555600, -51.20555600, 'Rua João Telles, Bom Fim', 'Domingos', 'Manhã'),
(9, 'Feira do Tristeza', -30.06472200, -51.24083300, 'Av. Otto Niemeyer, Tristeza', 'Sábados', 'Manhã'),
(10, 'Feira do Jardim Botânico', -30.05416700, -51.17500000, 'Av. Salvador França, Jardim Botânico', 'Domingos', 'Manhã');

-- --------------------------------------------------------

--
-- Estrutura para tabela `hortas_comunitarias`
--

CREATE TABLE `hortas_comunitarias` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `horario_funcionamento` varchar(50) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais_jardinagem`
--

CREATE TABLE `materiais_jardinagem` (
  `id` int(11) NOT NULL,
  `nome_loja` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `localizacao_maps` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oficinas`
--

CREATE TABLE `oficinas` (
  `id` int(11) NOT NULL,
  `nome_oficina` varchar(100) NOT NULL,
  `localizacao_maps` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `terrenos_disponiveis`
--

CREATE TABLE `terrenos_disponiveis` (
  `id` int(11) NOT NULL,
  `nome_dono` varchar(100) NOT NULL,
  `telefone_contato` varchar(20) DEFAULT NULL,
  `localizacao_maps` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `voluntarios`
--

CREATE TABLE `voluntarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `outros_contatos` text DEFAULT NULL,
  `dias_semana_disponiveis` varchar(100) DEFAULT NULL,
  `horarios_disponiveis` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `voluntarios`
--

INSERT INTO `voluntarios` (`id`, `nome`, `email`, `telefone`, `outros_contatos`, `dias_semana_disponiveis`, `horarios_disponiveis`, `created_at`) VALUES
(1, 'ANA CASTRO DE ARAUJO', 'ANINHA.JUANINHA@gamil.com', '99999999', NULL, NULL, NULL, '2025-10-07 13:16:25'),
(2, 'Leo Kalil', 'LILI.KAKA@gmail.com', '29371973692', 'oiii', NULL, NULL, '2025-10-14 11:56:38');

-- --------------------------------------------------------

--
-- Estrutura para tabela `voluntarios_disponibilidade`
--

CREATE TABLE `voluntarios_disponibilidade` (
  `id` int(11) NOT NULL,
  `voluntario_id` int(11) DEFAULT NULL,
  `dia_semana` enum('seg','ter','qua','qui','sex','sab','dom') DEFAULT NULL,
  `horario_inicio` time DEFAULT NULL,
  `horario_fim` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `comunidades_parceiras`
--
ALTER TABLE `comunidades_parceiras`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `feiras_locais`
--
ALTER TABLE `feiras_locais`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `hortas_comunitarias`
--
ALTER TABLE `hortas_comunitarias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `materiais_jardinagem`
--
ALTER TABLE `materiais_jardinagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `oficinas`
--
ALTER TABLE `oficinas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `terrenos_disponiveis`
--
ALTER TABLE `terrenos_disponiveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `voluntarios`
--
ALTER TABLE `voluntarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `voluntarios_disponibilidade`
--
ALTER TABLE `voluntarios_disponibilidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voluntario_id` (`voluntario_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comunidades_parceiras`
--
ALTER TABLE `comunidades_parceiras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `feiras_locais`
--
ALTER TABLE `feiras_locais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `hortas_comunitarias`
--
ALTER TABLE `hortas_comunitarias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `materiais_jardinagem`
--
ALTER TABLE `materiais_jardinagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oficinas`
--
ALTER TABLE `oficinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `terrenos_disponiveis`
--
ALTER TABLE `terrenos_disponiveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `voluntarios`
--
ALTER TABLE `voluntarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `voluntarios_disponibilidade`
--
ALTER TABLE `voluntarios_disponibilidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `voluntarios_disponibilidade`
--
ALTER TABLE `voluntarios_disponibilidade`
  ADD CONSTRAINT `voluntarios_disponibilidade_ibfk_1` FOREIGN KEY (`voluntario_id`) REFERENCES `voluntarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
