-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Abr-2021 às 04:24
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ticketsuporte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamados`
--

CREATE TABLE `chamados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendedor_id` bigint(20) UNSIGNED NOT NULL,
  `assunto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_criacao_chamado` datetime DEFAULT NULL,
  `status` enum('aberto','andamento','resolvido','atrasado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aberto',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `chamados`
--

INSERT INTO `chamados` (`id`, `vendedor_id`, `assunto`, `descricao`, `data_criacao_chamado`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Financeiro', 'asdnajsbnfbahsjdhasbjhb', '2021-04-26 01:01:57', 'andamento', '2021-04-26 04:07:24', '2021-04-27 03:52:38'),
(2, 2, 'Suporte', 'askjbdkahsbdjashbdjahbsdhjasbd', '2021-04-26 01:01:57', 'andamento', '2021-04-26 04:07:38', '2021-04-27 03:52:49'),
(3, 2, 'Juridico', 'asjdnaksjbdahsb dkajs dakjsd lkjnd', '2021-04-26 23:52:42', 'andamento', '2021-04-27 02:52:52', '2021-04-27 03:54:09'),
(4, 2, 'Comercial', 'ashdbasbdjkasdbkjasbd kjabksdjbnkasjdbn', '2021-04-26 23:52:42', 'andamento', '2021-04-27 02:56:08', '2021-04-27 03:58:46'),
(5, 2, 'Testando', 'askdbaksjdbakjsndkjasndkjabsdkjb', NULL, 'andamento', '2021-04-27 04:03:38', '2021-04-27 04:26:17'),
(6, 2, 'Testeeeeeeee', 'adsjfdnaskfbakjfakjdfnkajdfkajdbf', NULL, 'aberto', '2021-04-27 04:34:30', '2021-04-27 04:34:30'),
(7, 2, 'kakbsdsbjkasbdkjasbdkjb', 'aknsdbjfsnjkasbfadfkajsbdkbujasbdk m', NULL, 'aberto', '2021-04-27 04:40:07', '2021-04-27 04:40:07'),
(8, 2, 'kakbsdsbjkasbdkjasbdkjb', 'aknsdbjfsnjkasbfadfkajsbdkbujasbdk m', NULL, 'aberto', '2021-04-27 04:40:52', '2021-04-27 04:40:52'),
(9, 2, 'kakbsdsbjkasbdkjasbdkjb', 'aknsdbjfsnjkasbfadfkajsbdkbujasbdk m', NULL, 'aberto', '2021-04-27 04:41:13', '2021-04-27 04:41:13'),
(10, 2, 'jhabskdhabskdjabnskjd askjd', 'kkljn', '2021-04-27 01:47:46', 'aberto', '2021-04-27 04:47:54', '2021-04-27 04:47:54'),
(11, 2, 'jhabskdhabskdjabnskjd askjd', 'kkljn', '2021-04-27 01:47:46', 'aberto', '2021-04-27 04:48:46', '2021-04-27 04:48:46'),
(12, 2, 'jhabskdhabskdjabnskjd askjd', 'kkljn', '2021-04-27 01:47:46', 'aberto', '2021-04-27 04:49:13', '2021-04-27 04:49:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_04_18_130512_create_vendedors_table', 1),
(10, '2021_04_18_130845_create_chamados_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hamilton', 'hamiltonmoraes64@gmai.com', NULL, '$2y$10$V5YKp4r/ZdnnlxDNj9or3Ozbs2s6fZHDkr6zADjJZyc/f0/3ikrQC', NULL, '2021-04-27 03:12:32', '2021-04-27 03:12:32'),
(2, 'ABSX Suporte', 'absx.suporte@mailinator.com', NULL, '12345678', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedors`
--

CREATE TABLE `vendedors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ativo','inativo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ativo',
  `qtd_chamados_aberto` int(11) NOT NULL DEFAULT 0,
  `qtd_chamados_andamentos` int(11) NOT NULL DEFAULT 0,
  `qtd_chamdos_resolvidos` int(11) NOT NULL DEFAULT 0,
  `qtd_chamados_atrasados` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vendedors`
--

INSERT INTO `vendedors` (`id`, `nome`, `email`, `telefone`, `status`, `qtd_chamados_aberto`, `qtd_chamados_andamentos`, `qtd_chamdos_resolvidos`, `qtd_chamados_atrasados`, `created_at`, `updated_at`) VALUES
(1, 'João', 'joao@email.com', '1615165361', 'ativo', 3, 2, 5, 2, NULL, NULL),
(2, 'Felipe', 'felipe@email.com', '616165168165165', 'ativo', 0, 3, 6, 5, NULL, '2021-04-27 03:58:46');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chamados`
--
ALTER TABLE `chamados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chamados_vendedor_id_foreign` (`vendedor_id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices para tabela `vendedors`
--
ALTER TABLE `vendedors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chamados`
--
ALTER TABLE `chamados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `vendedors`
--
ALTER TABLE `vendedors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `chamados`
--
ALTER TABLE `chamados`
  ADD CONSTRAINT `chamados_vendedor_id_foreign` FOREIGN KEY (`vendedor_id`) REFERENCES `vendedors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
