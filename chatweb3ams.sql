-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Out-2024 às 15:49
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `chatweb3ams`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('1038b437-e3d8-4fdd-8608-9e2fede667b5', 2, 3, 'oi best', NULL, 1, '2024-10-01 16:35:27', '2024-10-01 16:35:39'),
('292eb563-1d20-4918-8c66-c83a568dd7d2', 3, 1, 'Ol&aacute; amiguinho', NULL, 1, '2024-10-01 16:33:08', '2024-10-01 16:33:20'),
('2eb42061-0641-4134-b3ae-7af74ad7b9b6', 2, 1, 'Ol&aacute; Miguxu', NULL, 1, '2024-10-01 16:31:29', '2024-10-01 16:31:39'),
('6e285120-0a64-4f61-b5a2-6de7d59e4a46', 2, 1, '❤️❤️❤️', NULL, 1, '2024-10-01 16:35:14', '2024-10-01 16:41:14'),
('6fc70f25-90c4-4fd2-8970-72e7f3270300', 3, 2, 'Nosaaaaa, terminamos amigaaaa', NULL, 1, '2024-10-01 16:42:34', '2024-10-01 16:42:56'),
('8e3126b8-8c44-4a54-8876-16dec42c8b30', 2, 3, 'Gabriela, nossa li&ccedil;&atilde;o est&aacute; funcionandoooo', NULL, 1, '2024-10-01 16:42:17', '2024-10-01 16:42:21'),
('9b0c58b3-1c5a-4498-95f5-7dc2b1b3468b', 1, 2, 'Oi amigaaaaa', NULL, 1, '2024-10-01 16:33:58', '2024-10-01 16:35:00'),
('c1799e7f-613d-4a39-b44d-caa834adb0d7', 1, 2, 'Ol&aacute;, olha nossa atividade funcionandooooo', NULL, 1, '2024-10-01 16:41:31', '2024-10-01 16:41:44'),
('cd5d9a4e-c5b9-4ca6-a8b8-f0758be93da4', 3, 1, 'Te amo amigo, voc&ecirc; &eacute; muito inteligenteeeee', NULL, 0, '2024-10-01 16:42:49', '2024-10-01 16:42:49'),
('e77023d5-7cd8-4448-bc2e-5eff7bf03aea', 3, 2, 'oi bestizinha', NULL, 1, '2024-10-01 16:35:44', '2024-10-01 16:39:46'),
('ea65dc2f-a1bd-4f61-9609-cf0ef73c10af', 1, 2, '😇😇😇', NULL, 1, '2024-10-01 16:41:38', '2024-10-01 16:41:44'),
('ea95afe3-07e3-4091-91d7-9114c1e2726d', 2, 1, 'Mentiraaaaaa, somos inteligentes', NULL, 1, '2024-10-01 16:42:00', '2024-10-01 16:42:22'),
('f5d06212-aa84-44e8-9274-731abcb6081c', 1, 3, 'Oi amorzinho', NULL, 1, '2024-10-01 16:34:34', '2024-10-01 16:35:00'),
('f8122c7c-9c33-4bdf-aa7e-6031a29b6d56', 1, 2, '😀', NULL, 1, '2024-10-01 16:34:08', '2024-10-01 16:35:00');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_01_999999_add_active_status_to_users', 2),
(6, '2024_10_01_999999_add_avatar_to_users', 2),
(7, '2024_10_01_999999_add_dark_mode_to_users', 2),
(8, '2024_10_01_999999_add_messenger_color_to_users', 2),
(9, '2024_10_01_999999_create_chatify_favorites_table', 2),
(10, '2024_10_01_999999_create_chatify_messages_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, 'Lucas Marcal', 'lucasmarcal220207@gmail.com', NULL, '$2y$12$S.4ckk74CuEmPTNf7FrlWeA2HQbpwKUmBdAEgr8nLSDYJiRxm.AAu', NULL, '2024-10-01 15:48:58', '2024-10-01 16:33:00', 1, 'avatar.png', 0, NULL),
(2, 'Julia Lopes', 'julialopessil12@gmail.com', NULL, '$2y$12$OkGFkWBZSFn17zKsV7QYv.xWY9XcEAPDvFU9fvEYO3DwXflkdkjoq', NULL, '2024-10-01 16:31:02', '2024-10-01 16:33:44', 1, 'avatar.png', 0, NULL),
(3, 'Gabriela do Carmo', 'gabrielacsilva2018@gmail.com', NULL, '$2y$12$w/lQH8HRx3onTn7uoYfAhO320TAUJcmgbN3qEcwa250fS7pTVNs8G', NULL, '2024-10-01 16:32:48', '2024-10-01 16:33:44', 1, 'avatar.png', 0, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

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
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

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
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
