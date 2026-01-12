-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/11/2025 às 15:49
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
  `nome` varchar(255) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `regiao` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comunidades_parceiras`
--

INSERT INTO `comunidades_parceiras` (`id`, `nome`, `latitude`, `longitude`, `regiao`, `data`, `created_at`, `updated_at`) VALUES
(1, 'Horta Lomba do Pinheiro', -30.10934500, -51.13678900, 'Lomba do Pinheiro', '2024-09-19', '2025-11-13 14:17:50', '2025-11-13 14:17:50'),
(2, 'Pracinha da Cultura', -30.11567800, -51.12789000, 'Restinga', '2024-10-24', '2025-11-13 14:17:50', '2025-11-13 14:17:50'),
(3, 'Emef Gabriel Obino', -30.09876500, -51.14567800, 'Glória', '2024-10-23', '2025-11-13 14:17:50', '2025-11-13 14:17:50'),
(4, 'Centro Vida', -30.10234500, -51.15432100, 'Eixo Baltazar', '2024-10-29', '2025-11-13 14:17:50', '2025-11-13 14:17:50'),
(5, 'EEEF David Canabarro', -30.10456700, -51.15234500, 'Eixo Baltazar', '2024-11-01', '2025-11-13 14:17:50', '2025-11-13 14:17:50'),
(6, 'Lar do Cego Idoso Acelb/Posto de Saúde Costa e Silva', -30.10789000, -51.14987600, 'Eixo Baltazar', '2024-11-07', '2025-11-13 14:17:50', '2025-11-13 14:17:50'),
(7, 'Amovas', -30.11234500, -51.13234500, 'Restinga', '2024-11-08', '2025-11-13 14:17:50', '2025-11-13 14:17:50'),
(8, 'EEEF Ana Neri', -30.09567800, -51.16789000, 'Noroeste', '2024-11-13', '2025-11-13 14:17:50', '2025-11-13 14:17:50'),
(9, 'Sport Vida', -30.08901200, -51.17890100, 'Centro-Sul', '2024-11-14', '2025-11-13 14:17:50', '2025-11-13 14:17:50'),
(10, 'Instituição de Ensino Infantil Prisma', -30.08654300, -51.16543200, 'Cruzeiro', '2024-11-26', '2025-11-13 14:17:50', '2025-11-13 14:17:50'),
(11, 'US Cruzeiro do Sul', -30.08654300, -51.16543200, 'Cruzeiro', '2024-11-26', '2025-11-13 14:20:53', '2025-11-13 14:20:53'),
(12, 'Emef Grande Oriente', -30.10234500, -51.15432100, 'Eixo Baltazar', '2024-11-02', '2025-11-13 14:20:53', '2025-11-13 14:20:53'),
(13, 'Grupo de Escoteiros Lídia Moschetti e Mulheres em Rede', -30.08901200, -51.17890100, 'Centro-Sul', '2024-12-04', '2025-11-13 14:20:53', '2025-11-13 14:20:53'),
(14, 'Centro de Eventos Vereador Ervino Besson', -30.08901200, -51.17890100, 'Centro-Sul', '2024-12-12', '2025-11-13 14:20:53', '2025-11-13 14:20:53'),
(15, 'Largo da Bandeira IAPI', -30.09567800, -51.16789000, 'Noroeste', '2024-12-12', '2025-11-13 14:20:53', '2025-11-13 14:20:53'),
(16, 'Jardim Continental', -30.08543200, -51.14321000, 'Leste', '2024-12-18', '2025-11-13 14:20:53', '2025-11-13 14:20:53'),
(17, 'Instituto Anjos do Cristal', -30.07890100, -51.18901200, 'Cristal', '2025-01-16', '2025-11-13 14:20:53', '2025-11-13 14:20:53'),
(18, 'Recanto dos Gaudérios', -30.09876500, -51.14567800, 'Glória', '2025-01-14', '2025-11-13 14:20:53', '2025-11-13 14:20:53'),
(19, 'Associação de Moradores/Unidade de Saúde Coinma', -30.08543200, -51.14321000, 'Leste', '2025-01-22', '2025-11-13 14:20:53', '2025-11-13 14:20:53'),
(20, 'Chácara do Primeiro (SMS)', -30.07345600, -51.15678900, 'Partenon', '2025-01-08', '2025-11-13 14:20:53', '2025-11-13 14:20:53'),
(21, 'Ester Mulher', -30.12098700, -51.19876500, 'Extremo Sul', '2025-01-24', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(22, 'Instituto Social do Cristal', -30.07890100, -51.18901200, 'Cristal', '2025-01-30', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(23, 'Madre Tierra', -30.12098700, -51.19876500, 'Extremo Sul', '2025-03-07', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(24, 'EMEF Rincão', -30.09876500, -51.14567800, 'Glória', '2025-03-14', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(25, 'Escola Tecnobaby/CRAS Humaitá', -30.09234500, -51.16789000, 'Humaitá', '2025-03-11', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(26, 'Creche Ilha das Flores', -30.06543200, -51.23456700, 'Ilhas', '2025-02-21', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(27, 'Horta do Centro Histórico', -30.03210900, -51.22890100, 'Centro', '2025-03-25', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(28, 'UBS Jenor Jarros', -30.04567800, -51.18765400, 'Norte', '2025-04-02', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(29, 'Horta Comunitária Morro da Cruz', -30.07345600, -51.15678900, 'Partenon', '2025-03-21', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(30, 'Associação Faça o Bem/US Morro Dos Sargentos', -30.08543200, -51.19876500, 'Sul', '0000-00-00', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(31, 'Horta Amor em Movimento/EMEF Vereador Martim Aranha', -30.08654300, -51.16543200, 'Cruzeiro', '2024-04-24', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(32, 'Projeto Pitu Canoa', -30.12098700, -51.19876500, 'Extremo Sul', '2025-04-10', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(33, 'Associação de Moradores da Vila Dona Teodora', -30.09234500, -51.16789000, 'Humaitá/Navegantes', '2025-04-16', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(34, 'Beco da Pedreira', -30.08543200, -51.14321000, 'Leste', '2025-04-01', '2025-11-13 14:21:10', '2025-11-13 14:21:10'),
(35, 'CRAS Hípica/Fundação Solidariedade', -30.08543200, -51.19876500, 'Sul', '2025-04-30', '2025-11-13 14:21:10', '2025-11-13 14:21:10');

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
  `nome` varchar(255) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `regiao` varchar(100) NOT NULL,
  `data_criacao` date NOT NULL,
  `horario_funcionamento` varchar(100) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `responsavel` varchar(100) DEFAULT NULL,
  `tipo_cultivo` varchar(100) DEFAULT NULL,
  `atividades` varchar(255) DEFAULT NULL,
  `status` enum('Ativa','Inativa','Em reforma') DEFAULT 'Ativa',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hortas_comunitarias`
--

INSERT INTO `hortas_comunitarias` (`id`, `nome`, `latitude`, `longitude`, `regiao`, `data_criacao`, `horario_funcionamento`, `endereco`, `telefone`, `responsavel`, `tipo_cultivo`, `atividades`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Horta Comunitária Lomba do Pinheiro', -30.10934500, -51.13678900, 'Lomba do Pinheiro', '2018-05-15', 'Segunda a Sexta: 8h-12h, 14h-18h', 'Rua São Manoel, 1250', '(51) 99999-9999', NULL, 'Orgânico', NULL, 'Ativa', '2025-11-13 14:36:28', '2025-11-13 14:36:28'),
(2, 'Horta do Centro Histórico', -30.03210900, -51.22890100, 'Centro', '2020-03-10', 'Terça a Sábado: 9h-17h', 'Largo Glênio Peres', '(51) 98888-8888', NULL, 'Agroecológico', NULL, 'Ativa', '2025-11-13 14:36:28', '2025-11-13 14:36:28'),
(3, 'Horta Comunitária Morro da Cruz', -30.07345600, -51.15678900, 'Partenon', '2019-08-22', 'Segunda a Sexta: 7h-11h, 15h-19h', 'Rua João Antônio Silveira', '(51) 97777-7777', NULL, 'Orgânico', NULL, 'Ativa', '2025-11-13 14:36:28', '2025-11-13 14:36:28'),
(4, 'Horta da Restinga', -30.11567800, -51.12789000, 'Restinga', '2021-02-14', 'Quarta a Domingo: 8h-16h', 'Av. João Wallig, 1644', '(51) 96666-6666', NULL, 'Sustentável', NULL, 'Ativa', '2025-11-13 14:36:28', '2025-11-13 14:36:28'),
(5, 'Horta Comunitária Jardim Botânico', -30.04876500, -51.17890100, 'Jardim Botânico', '2017-11-30', 'Terça a Domingo: 7h-12h, 14h-17h', 'Rua Dr. Salvador França, 1427', '(51) 95555-5555', NULL, 'Agroflorestal', NULL, 'Ativa', '2025-11-13 14:36:28', '2025-11-13 14:36:28'),
(6, 'Horta do Parque Germânia', -30.02543200, -51.19876500, 'Cidade Baixa', '2022-04-05', 'Todos os dias: 6h-20h', 'Rua Comendador Azevedo', '(51) 94444-4444', NULL, 'Comunitária', NULL, 'Ativa', '2025-11-13 14:36:28', '2025-11-13 14:36:28'),
(7, 'Horta da Vila Planetário', -30.06789000, -51.14321000, 'Partenon', '2020-09-18', 'Segunda a Sexta: 8h-12h, 13h-17h', 'Rua Vicente Monteggia', '(51) 93333-3333', NULL, 'Orgânico', NULL, 'Ativa', '2025-11-13 14:36:28', '2025-11-13 14:36:28'),
(8, 'Horta Comunitária Santa Tereza', -30.02890100, -51.21345600, 'Santa Tereza', '2019-12-03', 'Quinta a Domingo: 9h-18h', 'Rua Dona Laura, 123', '(51) 92222-2222', NULL, 'Permacultura', NULL, 'Ativa', '2025-11-13 14:36:28', '2025-11-13 14:36:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `materials_jardinagem`
--

CREATE TABLE `materials_jardinagem` (
  `id` int(11) NOT NULL,
  `nome_loja` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `localizacao_maps` varchar(500) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT 'Porto Alegre',
  `horario_funcionamento` varchar(100) DEFAULT NULL,
  `produtos_especialidade` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `tipo_loja` enum('Viveiro','Garden Center','Loja Especializada','Cooperativa','Outro') DEFAULT 'Loja Especializada',
  `status` enum('Ativa','Inativa','Fechada') DEFAULT 'Ativa',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `materials_jardinagem`
--

INSERT INTO `materials_jardinagem` (`id`, `nome_loja`, `telefone`, `email`, `localizacao_maps`, `endereco`, `bairro`, `cidade`, `horario_funcionamento`, `produtos_especialidade`, `site`, `tipo_loja`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Casa do Jardim', '(51) 3333-4444', 'contato@casadojardim.com.br', 'https://maps.app.goo.gl/example1', 'Av. Protásio Alves, 2000', 'Petrópolis', 'Porto Alegre', 'Seg-Sex: 8h-18h, Sáb: 8h-12h', 'Plantas ornamentais, vasos, fertilizantes', NULL, 'Garden Center', 'Ativa', '2025-11-13 14:41:37', '2025-11-13 14:41:37'),
(2, 'Flora Plantas e Jardins', '(51) 3222-5555', 'vendas@floraplantas.com.br', 'https://maps.app.goo.gl/example2', 'Rua Coronel Bordini, 350', 'Cristal', 'Porto Alegre', 'Seg-Sáb: 8h-19h', 'Mudas frutíferas, jardim vertical', NULL, 'Viveiro', 'Ativa', '2025-11-13 14:41:37', '2025-11-13 14:41:37'),
(3, 'Garden Center Porto Alegre', '(51) 3344-6677', 'atendimento@gardencenterpoa.com.br', 'https://maps.app.goo.gl/example3', 'BR-116, Km 10', 'Rubem Berta', 'Porto Alegre', 'Todos os dias: 7h-20h', 'Materiais para horta, composteiras', NULL, 'Garden Center', 'Ativa', '2025-11-13 14:41:37', '2025-11-13 14:41:37'),
(4, 'Viveiro Santa Rosa', '(51) 3245-7788', 'viveiro@santarosa.com.br', 'https://maps.app.goo.gl/example4', 'Rua Santana, 800', 'Santa Rosa', 'Porto Alegre', 'Seg-Sex: 8h-17h30', 'Plantas nativas, árvores frutíferas', NULL, 'Viveiro', 'Ativa', '2025-11-13 14:41:37', '2025-11-13 14:41:37'),
(5, 'Lojas Jardinetto', '(51) 3266-8899', 'sac@jardinetto.com.br', 'https://maps.app.goo.gl/example5', 'Av. Assis Brasil, 3500', 'São João', 'Porto Alegre', 'Seg-Sáb: 8h-18h', 'Ferramentas, substratos, irrigação', NULL, 'Loja Especializada', 'Ativa', '2025-11-13 14:41:37', '2025-11-13 14:41:37'),
(6, 'Horto Florestal', '(51) 3388-2233', 'hortoflorestal@hortopoa.com.br', 'https://maps.app.goo.gl/example6', 'Rua Dona Laura, 600', 'Moinhos de Vento', 'Porto Alegre', 'Seg-Sex: 8h-18h, Sáb: 8h-13h', 'Mudas ornamentais, sementes', NULL, 'Viveiro', 'Ativa', '2025-11-13 14:41:37', '2025-11-13 14:41:37'),
(7, 'Cooperativa dos Jardineiros', '(51) 3211-4455', 'coopjardineiros@coop.com.br', 'https://maps.app.goo.gl/example7', 'Rua João Pessoa, 450', 'Centro', 'Porto Alegre', 'Seg-Sex: 9h-17h', 'Ferramentas profissionais, adubos', NULL, 'Cooperativa', 'Ativa', '2025-11-13 14:41:37', '2025-11-13 14:41:37'),
(8, 'Mundo Verde Garden', '(51) 3399-3344', 'mundoverde@garden.com.br', 'https://maps.app.goo.gl/example8', 'Av. Bento Gonçalves, 2500', 'Partenon', 'Porto Alegre', 'Seg-Sáb: 8h-19h', 'Produtos orgânicos, compostagem', NULL, 'Loja Especializada', 'Ativa', '2025-11-13 14:41:37', '2025-11-13 14:41:37');

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
-- Índices de tabela `materials_jardinagem`
--
ALTER TABLE `materials_jardinagem`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `feiras_locais`
--
ALTER TABLE `feiras_locais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `hortas_comunitarias`
--
ALTER TABLE `hortas_comunitarias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `materials_jardinagem`
--
ALTER TABLE `materials_jardinagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
