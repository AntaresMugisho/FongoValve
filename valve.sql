-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 17 juin 2024 à 17:06
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `valve`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_30_220910_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'd3cf241d5bf6cd352fe8046c1742761888c5d4957281d8a62e87d22b2515f7f8', '[\"*\"]', NULL, NULL, '2024-06-14 21:21:45', '2024-06-14 21:21:45'),
(2, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'a446d4bd1125fca5ba6b1ae784b4caf8636a511e07ab6df50847d362cf83ecb6', '[\"*\"]', NULL, NULL, '2024-06-14 21:28:32', '2024-06-14 21:28:32'),
(3, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '318dbc7e317db4c325ed53b03432abeb99c36360a730fed969a2c269873ae3af', '[\"*\"]', NULL, NULL, '2024-06-14 21:29:48', '2024-06-14 21:29:48'),
(4, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '6f2fc94eafcc13edb75987db2bab95145f1ee67fca32e4a86928fdce54c19aaf', '[\"*\"]', NULL, NULL, '2024-06-15 11:38:36', '2024-06-15 11:38:36'),
(5, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '1822a13970113a1c8063ab12bb7a523626ab7fdb2a816c86a4d3c8e1fddb2fac', '[\"*\"]', NULL, NULL, '2024-06-15 11:43:33', '2024-06-15 11:43:33'),
(6, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'b21a9d1f8cf72ab8057073f5a810647cdd6f0d7fdfdde5343e6ab6e1d0f2cfde', '[\"*\"]', NULL, NULL, '2024-06-15 11:43:39', '2024-06-15 11:43:39'),
(7, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '34e465a0ddef876b0e75a5888236a35f62e2618e4db5583728ffb5010760cb0e', '[\"*\"]', NULL, NULL, '2024-06-15 11:56:02', '2024-06-15 11:56:02'),
(8, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '4df69000015b2bf3fcf4ead82d7cf152396ef9e5f146af5f04c85eb3ea0085d8', '[\"*\"]', NULL, NULL, '2024-06-15 12:03:19', '2024-06-15 12:03:19'),
(9, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'cc43a541fcf0238c468f14f64c39c8f4ebacb21f5a0c70219b0afc02d603d5cc', '[\"*\"]', NULL, NULL, '2024-06-15 12:06:58', '2024-06-15 12:06:58'),
(10, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'f8c2538dda79fa61eb5cd28d3eb473ac7ecc5f5b758dc52f5933aecde08dd961', '[\"*\"]', NULL, NULL, '2024-06-15 12:08:44', '2024-06-15 12:08:44'),
(11, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '2857132d0423a31f46ff9d59e439589a85cc95c5a375aee3637883ad08ec83e2', '[\"*\"]', NULL, NULL, '2024-06-17 10:23:50', '2024-06-17 10:23:50'),
(12, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '8a26abdfc5beff779f19a1c81bda10e3c308e07621d6890e9e84e6f139d8ed45', '[\"*\"]', NULL, NULL, '2024-06-17 10:25:36', '2024-06-17 10:25:36'),
(13, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'a9636bd90c75ec0ef7b2532cc33de18c0cf72331bdf5ba79896eaa12393ecb74', '[\"*\"]', NULL, NULL, '2024-06-17 11:38:07', '2024-06-17 11:38:07'),
(14, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '93aac95ffe4479f82ced1f72b4abebdbba2c13d6fbab42d2d4354a2bd7f7211a', '[\"*\"]', NULL, NULL, '2024-06-17 11:38:15', '2024-06-17 11:38:15'),
(15, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'ae38bba95d66c13df61997192d0af4d753fd6729797b0e85e332ddc008bc248f', '[\"*\"]', NULL, NULL, '2024-06-17 11:39:02', '2024-06-17 11:39:02'),
(16, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '6a685ed9c523a63e69d888e45c2cb8dc464622d6395dee372662c7bb9c0ae366', '[\"*\"]', NULL, NULL, '2024-06-17 11:39:07', '2024-06-17 11:39:07'),
(17, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'ded3259fa314e6f6d580f24fd1995b327c5ea50f2f141d2d40c388708da69ceb', '[\"*\"]', NULL, NULL, '2024-06-17 11:39:12', '2024-06-17 11:39:12'),
(18, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'ab8d11904c719f79570b38dac16a32d1f6712e08288552d621d968e350e82895', '[\"*\"]', NULL, NULL, '2024-06-17 11:40:31', '2024-06-17 11:40:31'),
(19, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '4d5274c138e44e12088e70a2b3455256b50b004dfd76a9d96303d4b15e076130', '[\"*\"]', NULL, NULL, '2024-06-17 11:42:55', '2024-06-17 11:42:55'),
(20, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '2e5185850553522d49983172a4e7ae3f6bd26fc344d1e9597ea8c7a5ab08a598', '[\"*\"]', NULL, NULL, '2024-06-17 11:57:52', '2024-06-17 11:57:52'),
(21, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '3dabaec227ed1e212a3493c349111661194d66294e5f8a71b7901ae6d23db3e2', '[\"*\"]', NULL, NULL, '2024-06-17 12:21:05', '2024-06-17 12:21:05'),
(22, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'f5d4e6a6505b63ffa27d61585ffe0115b5a3c07169013e83e3793f7dbbc831d7', '[\"*\"]', NULL, NULL, '2024-06-17 12:21:06', '2024-06-17 12:21:06'),
(23, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'a44c5f43c26f8d00b3962b2c0dd140fca6ced7d74a572e4f45778da1751cb991', '[\"*\"]', NULL, NULL, '2024-06-17 12:25:53', '2024-06-17 12:25:53'),
(24, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '7598131e200ca2028fcf79c0fde8ac90e61cedb065e9d102ac2965021c34afdd', '[\"*\"]', NULL, NULL, '2024-06-17 12:26:04', '2024-06-17 12:26:04'),
(25, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'annonceToken', '1d4a2933b4de2c1b683abcfe33edef43d8b3da5d4f304aafdacf02bf55b74322', '[\"annonces:publish\"]', NULL, NULL, '2024-06-17 12:51:37', '2024-06-17 12:51:37'),
(26, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'annonceToken', '4988b76a4a2057d7e5b1c94307c12a5def5b706aada3b9a6e27e2f3f985f9cfc', '[\"annonces:publish\"]', NULL, NULL, '2024-06-17 12:52:39', '2024-06-17 12:52:39'),
(27, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'annonceToken', 'cd9552f84d22548cd152f8176388f98fccd3b239befa7412dfd5c2b5d82e79e9', '[\"annonces:publish\"]', NULL, NULL, '2024-06-17 12:52:45', '2024-06-17 12:52:45'),
(28, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', 'e2df8915a8ee8df4e17515d6bdfe9bf191ba61f34562f89648448b8bbe91d12d', '[\"*\"]', NULL, NULL, '2024-06-17 12:52:53', '2024-06-17 12:52:53'),
(29, 'App\\Models\\User', '9c47be47-c86d-4370-a916-27bac649d795', 'loginToken', '351c21eacdb8e7d7bdd87090d8b90fe5598afa43bb1adddd1e0c5edfd94997f5', '[\"*\"]', NULL, NULL, '2024-06-17 13:01:17', '2024-06-17 13:01:17');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3O9GZw7SqfON6Wb7JosiFMLxKaPzIbr3Ep1jcbnf', NULL, '127.0.0.1', 'insomnia/2023.4.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmtXMnlMWXduY1puRE9TNEs1VHFPWlJPSmFhOVkza3JDRVZHNnBwTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9fQ==', 1718400125),
('4fkUburH5A9uPIAVe3jsCQQDlXM4hX7sxxGVhZ3d', NULL, '127.0.0.1', 'insomnia/2023.4.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGVJTzgxajdLV210WFZNblc4OEhjcE45czNueWtkVjF1eGlxTDFYdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9fQ==', 1718405574),
('ppEM3MEssz66TKGNVNaMrDnEZmEpUJIld93a36Ey', NULL, '127.0.0.1', 'insomnia/2023.4.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVVQeTZkNkp2QTdTTnV4WUpNdjlaR2E1d0hIRXd4anE5eVpncHBFUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9fQ==', 1718405491),
('VBRVSHdiS1jW8OuZ80E77ei3Pz5TytmtrpgC87bK', NULL, '127.0.0.1', 'insomnia/2023.4.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUhPb3JpSW1UVjBpZDdaUHdheXpqU1NKT2twYWRyN2k2MkxlNzBRMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9fQ==', 1718400367),
('wJuPQ2uKHh9EldYfHUxR458smh8UKZJkHnFZK2pD', NULL, '127.0.0.1', 'insomnia/2023.4.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3BYQ2dGQ0Y4T0l1VW9pNWtzb0N4ejdGSzltRWdROHZIcHNsSTFiYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9fQ==', 1718400248),
('z74QAcAGZsfvrHy6D3SnwdVIe5r2Oz8OL8HsfARm', NULL, '127.0.0.1', 'insomnia/2023.4.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2Yya2Vua3NRejFoeWJ6SmZsaElkaGZvSlR2MVJMT3N1eFVweGgwRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9fQ==', 1718404413);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `promotion` varchar(255) NOT NULL,
  `depart` varchar(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `prenom`, `promotion`, `depart`, `matricule`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
('9c47be45-4d87-42e1-9897-835dadec4d5d', 'Philippe Pinto', 'Lecoq', '2024', 'OPHTA', '24120055', '$2y$12$t3DR.n04CNzZnEgygaolv.mZ/m86IaObVrnGewDRFIkuaPY98ABGC', NULL, 'nbK77u0Qfo', '2024-06-13 20:58:09', '2024-06-13 20:58:09'),
('9c47be47-c86d-4370-a916-27bac649d795', 'Thibaut Michaud', 'Bernard', '2024', 'SAE', '24300081', '$2y$12$1YPjj7xoOza5YtfYPiT4re0vwv0iif9LEtSSeSOC9KhXEqk9LQVXe', NULL, '8MibqvAXok', '2024-06-13 20:58:09', '2024-06-13 20:58:09'),
('9c47be47-df40-44f4-9a72-158e778fc2ee', 'Martine Le Hoareau', 'Merle', '2018', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '18350146', '$2y$12$yx42VuJjZaLpvgAI9pmENu7u9u.cqOiSkxjSt5yiPke5BGhbV3/0G', NULL, 'YDCyw8jjKE', '2024-06-13 20:58:09', '2024-06-13 20:58:09'),
('9c47be47-fd9e-4088-9e58-272159a9e68a', 'Bernard Pages', 'Cousin', '2017', 'SIF', '17400054', '$2y$12$/99.IfXKNKFxkSHo..CnteulJnxe0Eh7gdA1/fKNQeENifYPEj40O', NULL, 'k4J3HHGVLK', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-16e9-4555-869b-5983a63db12f', 'Jacqueline Hebert', 'Legrand', '2018', 'SAGE FEMME', '18220160', '$2y$12$WthB.4WvgFxulSdzA0zsHetHu22lXfqqbFFIWp2b8Wd9kImOHNHo2', NULL, 'UTT2vZWhbl', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-238c-445d-98a3-b532db0fb79b', 'Pierre Perrier', 'Riviere', '2015', 'GCV', '15200009', '$2y$12$tlIn8/FRv5YXXCabyjHx.eQVmPMc5NmIgkesWS4rmzAq4jiQdduCa', NULL, 'StRUIERG58', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-30ea-4131-b8f4-d3c7ae5df6e9', 'Dominique Payet-Mathieu', 'Lombard', '2016', 'SCIENCES INFORMATIQUES', '16650004', '$2y$12$m6b341iDolybnNnpRBqVqubK/R1Zaff2FdPvVQj6Wcwf09.RdSG8K', NULL, 'nk3sfu5nly', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-420e-4d83-bb3d-c6fc9386ce47', 'Jérôme-Marcel Pinto', 'Ribeiro', '2015', 'GCV', '15200124', '$2y$12$x1s1PIHsfNHxuvCq/DFLlevHk9ybMfTQNIWot2zzxwjCQ2qwnVt2y', NULL, 'UGRN5o73uf', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-4f43-4669-8ee5-e9204b9497da', 'Marie Simon-Berger', 'Allard', '2023', 'SIF', '23400021', '$2y$12$Ssrr3gcn8gb8unvRDwW/KeeTJsAIljz7GHpmSzpnMlXeDzofEKwvu', NULL, '5qNjKNF8sG', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-6006-44d1-88f3-f2296e923520', 'Suzanne Lefebvre', 'Godard', '2021', 'GGT', '21100030', '$2y$12$2LrlG0v2JS9rsQ7NY0UC6eD98xaS3ECQG4REeHY5.UYRFkvlgnyzC', NULL, 'MlBSF4osfn', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-6d59-4387-91c9-fe5c33a6317b', 'Margot Bruneau', 'Pons', '2024', 'MEDECINE', '24500085', '$2y$12$vd1hNnqocZDcG5Jqnb.vje3NCA4bQRnypxll/DTu79Jz6jpy7MXoa', NULL, 'Re3Jbw4vJJ', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-7a19-4cba-8066-6bebbd3fe4c0', 'Lucy Bonnin', 'Charrier', '2021', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '21350023', '$2y$12$1qivci87oVaJSvB5MT.12uZ619UGgyaaPT68n3QbxRrSyEr.KXixi', NULL, 'UyQCemk6Yb', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-a96e-4091-b1e4-02067f6e5d32', 'Christelle-Margaret Guillet', 'Pons', '2024', 'GCV', '24200140', '$2y$12$RX06yfkuwfEHnZbqdbGsEO3K2nj9jXhNQuzzS5a0Pjn3yO29whE6S', NULL, 'Cjy53MZhEm', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-b6ea-413d-ba47-92c394ac18f4', 'Thibaut-Hugues Durand', 'Cordier', '2021', 'SIF', '21400058', '$2y$12$seKaAxJyGWxELY6.4pW4kOpJeW5kE3hzrLMD8BTqi19JqfOWsXyBu', NULL, 'tV7y0dWUOa', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-cda7-41a2-8d07-023d928ec00e', 'Pierre Lopez', 'Garcia', '2024', 'ANR', '24600075', '$2y$12$UOVvk4JBLthuYxfeUAnXmeySyRE0hzUBrlxf.vgHZcshqmWlxzZnm', NULL, '2t8lcKZq6d', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-e6a3-45d0-a644-85d9fe8b99e1', 'Roger Salmon', 'Morel', '2016', 'MEDECINE', '16500074', '$2y$12$EMcKiJYBMqQsrEju2pW2Iud7VuvwbH85mg1dBASAaRG1DVp7P2pF6', NULL, 'gyBroLCnNo', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be48-f327-439b-90c6-6cb64b862240', 'Laetitia de la Hardy', 'Renaud', '2016', 'MEDECINE', '16500115', '$2y$12$1ZkOS1c/PZiX1TcZe1kj/.JDGfq77RH2B/ffIuoSzIkgZzFzzM4J.', NULL, 'Pi7FwnZ65Z', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be49-04f4-4516-9034-4caecd6c8164', 'Denise Cordier', 'Menard', '2024', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '24350147', '$2y$12$Vx5iS.Fo23D/anj6NN.LiOLbSik5s79mJoKZygBNuK/JeOSKv1ceW', NULL, 'WNgmBgMjW3', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be49-1164-44df-aeb3-7416d65059b6', 'Agathe de la Breton', 'Rousset', '2022', 'COMMUNICATION', '22550095', '$2y$12$PR4gO/JvPQJUHqU1x7XmKOr1KF7Xfg2eWPOuu98c6H8MNHq.SrN2e', NULL, '4gFgpLaWU3', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be49-1ed7-4aae-a5d2-ad7a58fbb02b', 'Constance de Dumas', 'Pelletier', '2019', 'GGT', '19100085', '$2y$12$XRLA8pJznAZ5HgToHindseUUMRJ46e8zs3e6w6Tav3e3PUzwqHFHO', NULL, 'TYMyyVrxq0', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be49-2b57-48a6-bb74-286e035ced8d', 'Martine Boucher-Vaillant', 'Camus', '2021', 'SIF', '21400161', '$2y$12$n4/D7Ga5ahIPqh4stPZGEu/kqNc4r5NunUREhgIPTUEYeHF6z547K', NULL, 'gjtasmlvOn', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be49-38ce-414f-aa0a-e24801f6a675', 'Benoît Weber-Caron', 'Leblanc', '2017', 'SIF', '17400067', '$2y$12$5id8iTRKpQz0lR5hVGUPuOUla9lQDIHdLku0ICm/ivX98gJqJ0s6e', NULL, 'iGHXOQ07k4', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be49-4e6b-4e8e-8e36-5e6d5e662e86', 'Yves Boulanger-Brun', 'Becker', '2021', 'MEDECINE', '21500092', '$2y$12$5H2eqDBfjaTLDqo34x17JuIrQbf/JYMMmSpamIKIZDNKhx08C/Aly', NULL, 'v4Sq2x9YH1', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be49-63f0-46ee-8693-4003eb653f9c', 'Richard Denis', 'Pasquier', '2020', 'COMMUNICATION', '20550144', '$2y$12$o/l5wZOkIFxQYwexCR7bl.A8emGMZ9aFUVqbVSZbrnsvt9Bl/4El.', NULL, 'hhXqWM3GqJ', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be49-706f-4752-992d-f00b8810009c', 'Jeannine Buisson', 'Boutin', '2015', 'DROIT', '15250159', '$2y$12$Pe.W/6TiWtqpeE3LOm6WG.1QioR8T5tA1/dJ6bAPSSbD1GIYUcZS6', NULL, 'fyLjWRLqEW', '2024-06-13 20:58:10', '2024-06-13 20:58:10'),
('9c47be49-902a-4a1e-8883-5ab8256d2e3f', 'Anouk Lebon-Perrot', 'Hubert', '2017', 'SAGE FEMME', '17220140', '$2y$12$xLAv5Ekx02oX/lUzpOhKHO5UqU5Zz.FjamUf2fBmMmW5GnaKsXEd2', NULL, 'boEsg0R2K2', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be49-a087-4137-91b7-cf5434e33520', 'Célina Faivre-Clement', 'Morvan', '2015', 'GGT', '15100198', '$2y$12$5dubu6N4q7weOAeQAp1RwOomza29v.b7aD5pXgq2byOrL8yhjK1Tq', NULL, 'Wr7J0YedyW', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be49-af78-4c6e-bf96-4922cc7647cc', 'Thomas Lefevre', 'Gaudin', '2022', 'DROIT', '22250182', '$2y$12$C6HLOchHHROFUF8xM/flZuA7DsYI4c95q86BVwbIAFbNvVVI.oomi', NULL, 'AHKhJPWEEd', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be49-beaf-4bde-9c63-d4ac2a541199', 'Jacques Leroy', 'Delannoy', '2016', 'SAE', '16300037', '$2y$12$giMtV2iyyGhUNryLJ3SaI.4FZqPZM7DT9FLoaQ/y877JmG6tcNkCa', NULL, 'Hg8fcRDkcu', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be49-d000-4858-9f64-b1c34ee5ebb5', 'Philippe Maillot-Boutin', 'Duhamel', '2023', 'DROIT', '23250181', '$2y$12$TbWcygCkuaZQAkg8ez0xpu8GyYByaOgbUKWUXpf33EmvtvMueZVCC', NULL, '1BfCGdUAER', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be49-dc99-430d-a0e6-562fcb6bfa28', 'Audrey Lemaire-Blanchard', 'Pruvost', '2024', 'SAE', '24300171', '$2y$12$SWAsoLbjpzTM/F.LflD3CewuK2/NXazLkrpi10PEKCUntxLoXBWXi', NULL, 'K5W2gpGkzD', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be49-e9f1-43b5-9c3e-d10f2dbe606e', 'Claudine Adam', 'Gimenez', '2023', 'OPHTA', '23120025', '$2y$12$vbPx6D4ryEowk44ogqeu1uCF2g1bfwPGXL20rd901AKWl12H4vKaC', NULL, 'SSRSS3CbiF', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be49-f673-4426-89cb-537af1bf202f', 'Édith Lemaire', 'Pottier', '2022', 'DROIT', '22250075', '$2y$12$.riuw.RUsAKrURrV6K.iXu4bvZUfV55Aha4Qd5xF4KZ.8ID3pG.fu', NULL, 'HhW4fOEuoB', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4a-03e6-4916-b8b4-c0f47d68b633', 'Zoé Diaz', 'Weber', '2024', 'SAE', '24300114', '$2y$12$.ELYcF8GL8Jig9g70VmSsucB3pM/dN0DDha0rwXCREZD0L1m.oEw2', NULL, 'kIPRELGCGU', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4a-1078-4c8d-a60c-784539612614', 'Alex Charles', 'Deschamps', '2019', 'SERVICE SOCIAL', '19450191', '$2y$12$k2s9iDCaA8lGtwcbEtDdOO1iOx1atqC5iAbjQYgE9dyypnusILE5S', NULL, 'MBQ8oWm8vq', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4a-1dec-4050-bcf3-9f6f534ef2a0', 'Thibaut Henry', 'Leblanc', '2017', 'SCIENCES INFORMATIQUES', '17650131', '$2y$12$6OoOGGMFXTxYTRhJOmqLxeEihixbSkCtqPJCV3O9xhly4ZkAKeWD.', NULL, '8hRgxcblf0', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4a-67b3-468f-8f02-54ceaa2a5c09', 'Laure Salmon-Lelievre', 'Marty', '2017', 'COMMUNICATION', '17550118', '$2y$12$GJXNy40yZX1ZNCmhEBE84eJKiczxGC4FDbTqnzAqa1vCG3hBgGuWe', NULL, 'SgIicr6ft2', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4a-96ae-4110-a7cf-5d2eb704c5b7', 'William Carpentier', 'Fournier', '2019', 'COMMUNICATION', '19550068', '$2y$12$4tr6XhH/zagvvNmnXB3Y5Ols.K6Cyc8E0SDITSSbLc9cuyCdFxT.q', NULL, 'CxXPHZyRa2', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4a-b121-442c-8505-395fe9e33cb1', 'Jacqueline Albert', 'Benard', '2024', 'OPHTA', '24120083', '$2y$12$9uMhtogulCdZ2ut03i8R9uf0kSkRUERRJLx3LhJ5YkFjJpn1alM3.', NULL, 'ASwrYdBcqH', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4a-cf5b-48e4-b65a-ab577e7b5ced', 'Augustin Seguin', 'Godard', '2019', 'SERVICE SOCIAL', '19450089', '$2y$12$qA3kr5EU/Q3Lh1NAA67/pOpoJSq.HBVE6N1xgZyG..DV2Rb3T2kRS', NULL, 'jHmATYTDlW', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4a-e0c0-4860-a73f-2e4ed67b41a9', 'André Merle', 'Hebert', '2019', 'MEDECINE', '19500097', '$2y$12$LUIdjt/whD1IT.2lwzG8eukQ7He.K.j62IsmvTOMxL2UjMCw7kRda', NULL, 'quimlHmi8o', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4a-f1fc-4382-8d03-1f1acd814d12', 'Eugène Briand', 'Jacquot', '2023', 'SERVICE SOCIAL', '23450090', '$2y$12$mZgzbcXzlP.3g2aoE/ZA2.EZZgMoTosETokSAHgIfYAIN9VKG80cK', NULL, 'Xqp6V3BIa6', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4b-0343-4044-8496-969af7a692b0', 'Maryse Ledoux-Dufour', 'Legrand', '2018', 'GGT', '18100013', '$2y$12$rhV4stJlva/xFN.IQV9T6uM92nVo2LgH3DQGhx8EMA9lnIqsEegdO', NULL, 'lXwOUZoaEK', '2024-06-13 20:58:11', '2024-06-13 20:58:11'),
('9c47be4b-18fe-43b4-8043-3fda38eb7e22', 'Paul Marty', 'Gay', '2015', 'GCV', '15200149', '$2y$12$mv5nbyuNQ7ArgGKZM..Zvu/ywRvHAb.GDHk6NHj8Ydh1lTk6Ipk8K', NULL, '3WZQGIKfQH', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-2a55-48f7-9571-f0f70d84c7b3', 'Virginie-Dominique Monnier', 'Jacques', '2019', 'SERVICE SOCIAL', '19450072', '$2y$12$BTMKq9rAq63vTHmPFer44eM8Ubj4GqnunDjvWXrwm1zqNzfa7x2Ji', NULL, '0qqmFwh7IB', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-3bba-4728-832c-308dbf7b87b7', 'François Dumas', 'Hebert', '2018', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '18350112', '$2y$12$2BV3RJSxcstENAE3nEjh3O.RnsbQue3gn0mgHEwIzKrJRij6k9Cyu', NULL, 'DDy6IJzp98', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-5078-4940-a114-6cce004c7f5e', 'Margot Michel-Cohen', 'Joubert', '2015', 'SIF', '15400091', '$2y$12$tW9QrVl2tDpn/iN/sUbZxeRVxLNemg7DSIE1k2GnV/nj9LW6/eEWa', NULL, 'KkJSUeEU8F', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-5de3-4c44-a707-06dedb440177', 'Jacques Hubert', 'Raynaud', '2018', 'DROIT', '18250104', '$2y$12$sU9JS7idZtW0yVX8MXk6YebHQ7QGCTnVpPd5fSe8ai0StQ3hcox8m', NULL, 'S8jSD1NlOL', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-6a89-41c5-b9f7-66b6ab71a224', 'Gérard Labbe', 'Renault', '2021', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '21350050', '$2y$12$ooGSe0YuMLCdDlVbEkCZxO/4eXyDqo.z9smWPBS3COqiRT6L/Xch6', NULL, 'gaZon36Wfp', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-7c2f-44b3-b25d-0ca8dd553e53', 'Françoise Hebert', 'Paris', '2019', 'GGT', '19100108', '$2y$12$QAOLuSDXv1.bbbD1eHsrPuDIPS8jbclKl9SUaaHZ7LcEw.6AmYNLi', NULL, 'rHGKmIfVPi', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-88c1-4412-b063-ed7ffa636f13', 'Valérie Martins', 'Maillard', '2022', 'GCV', '22200104', '$2y$12$agHuO49/Y41Ex3a3sIx65uHXOL5z9iuy74rOUN.5BxDV5zpmjthz6', NULL, 'vmZMzYe8VJ', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-961f-4fbb-ac93-915542fd9ad1', 'Philippe Maillet', 'Roy', '2017', 'MEDECINE', '17500083', '$2y$12$OOJRj6xB.qdMduIhvsf2MO3eQ.PLHj2wJYuyeVSf1G4pKmbqNSLt6', NULL, 'CoGcNVo0ph', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-a2b8-4e15-89bf-d5b673a8a4ab', 'Tristan Dumas', 'Boulay', '2016', 'SCIENCES INFORMATIQUES', '16650059', '$2y$12$yh5cfgF7daq8eWJJRl2SBeuNOZIHrgxU4qipJyUZKmGZhP/8EP0gW', NULL, 'pjxKOYVlW5', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-b8c7-4377-bdc4-cb0da934c327', 'Joseph Delattre', 'Maillard', '2017', 'SERVICE SOCIAL', '17450091', '$2y$12$dblk6JeSxPRb2o8HC5llvOILFeTPicLWTQh6T7musQSqLquSPyNdS', NULL, 'TcbUGBpPfr', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-db3b-4f9e-be5d-5525ca6d6356', 'Augustin Pichon-Le Gall', 'Bourdon', '2024', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '24350017', '$2y$12$SPU7e34NST5KWOcZmd8gcOfI/1m0JY9gy9O5lrl3OOK25Op.DP25i', NULL, 'RrFqvt9msz', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4b-f11f-4b19-808b-a3b18596d87a', 'Renée Bruneau', 'Delorme', '2019', 'COMMUNICATION', '19550116', '$2y$12$5Yp8jvVt36UHqM91nXb4DObpoHnTWrWAVQyjMOnipMsAvmrja0ISK', NULL, 'ZXFZhi0REZ', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4c-0adb-4758-9d89-d4ad1d14943b', 'David Baron', 'Hoareau', '2023', 'SIF', '23400101', '$2y$12$qK2pFphPF6eo3PGpHOspB.6C7jUo0pG0U8cPs14MUYxf785NtSbyy', NULL, '8Lv1yOc0Qq', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4c-17a7-4d23-bf70-465f1658e16f', 'Isaac-Arthur Ledoux', 'Guibert', '2023', 'MEDECINE', '23500196', '$2y$12$i6AnGttxdxxV1mpcPjGsAOrRIYbMFyX8n4X./2PRJ35VI3j8z4sgK', NULL, 'fz7HErgN2y', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4c-24d6-483b-97b9-67f89f324b2b', 'André Bonnet', 'Philippe', '2015', 'GCV', '15200095', '$2y$12$mu1hgU.KJIGZ8hEGc4TwJOa.PpjD24d5WdYIFGfBqeUb8gI1XG3Ve', NULL, 'DwBIfVDgep', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4c-31e8-489b-9463-8cc622c5dba0', 'Suzanne Rey-Adam', 'Lamy', '2017', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '17350057', '$2y$12$hFVLJoxinpp6KJW20zzxwe.M78RjuukGBI0Ccq8w2IHhABxsjbj4e', NULL, 'VekPKkp7fi', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4c-3ec5-45e8-b942-5fc35789439d', 'Lucie Costa', 'Hardy', '2016', 'GGT', '16100036', '$2y$12$8rBzYmlY5m3VpfqAx/KhmejlzjPkWl3EshddiBZMqm2kXbgLfQ1Iy', NULL, 'xBu1ttqtaE', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4c-4b63-4dda-aa47-b814011e88c8', 'Arthur de la Marechal', 'Guillet', '2022', 'SERVICE SOCIAL', '22450175', '$2y$12$Y78c/8fl/NKqD2OvNQv2a.KC1PqZAuvq7GrNCV.OVjbdkx3GNUxgC', NULL, 'wlR2wlOiuA', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4c-6160-4424-819b-4903d69ca9b2', 'Juliette Le Gall', 'Alves', '2020', 'GCV', '20200141', '$2y$12$/i.QAAqdB6tmKiUYhPi5ueXyoPZfgsWyhWDdQIUlxGZeZJJXK.JkS', NULL, 'YeTVH5TVSz', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4c-7b5b-4668-af87-7320d9bc7a8f', 'Frédéric Le Maury', 'Verdier', '2023', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '23350027', '$2y$12$3mImoI7Yh0uEker59rKZseUz2AuAy.z.zPFDnJFRXfFVMCxTnOiyS', NULL, '3QfsoFcz7z', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4c-8c71-42db-8e68-30682fea5a45', 'Amélie Berger', 'Ribeiro', '2018', 'SIF', '18400023', '$2y$12$SJj.od/62kadDMlhBgseUu.QWZkSK1Vi.e81OaRDNNeOweBIK2K52', NULL, 'DHKpCmUheD', '2024-06-13 20:58:12', '2024-06-13 20:58:12'),
('9c47be4c-a23a-4621-9e19-c996046c2a11', 'Gilles du Simon', 'Texier', '2015', 'SIF', '15400097', '$2y$12$.CuDa7b38SlguQ0jwV5kdOCWG/7FhsxqPGJa3goTqufnWFdo1R6e.', NULL, 'SeZDroOgUx', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4c-aef7-4f2e-9e21-5a4c7034b29d', 'Christophe Gauthier', 'Pages', '2020', 'MEDECINE', '20500064', '$2y$12$R8dKjxLOGGSXEcqE.myLueBmg2ChqZEm/BMKNRYG0ec2eYCSrxjfy', NULL, 'UXnbQFAvbz', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4c-bc32-488b-8b6f-249be02ca748', 'Roger Hebert', 'Mahe', '2021', 'SAE', '21300003', '$2y$12$H/fJm8iPLYJBVeAX2HeOm.Q1zh0odyjDLHHyh11cHpPmj3qFOaNM2', NULL, 'PgyfyfgCSE', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4c-c8e7-49b5-a366-040cc3429c72', 'Valérie Vallet-Raymond', 'Godard', '2023', 'ANR', '23600044', '$2y$12$nB1tvn1gwIhIUp7Zqw.Rv.pTEwv2cKFg549XTrL6UAjZRcIBgZ4EW', NULL, 'iJPPlyFROQ', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4c-da6d-487c-96bb-5f3b52aa3d73', 'Sébastien Gimenez', 'Roger', '2022', 'SAGE FEMME', '22220137', '$2y$12$aq.1PouKYr/fPYiJz20RweNFajXI77EjGSJZxcXsh6gQ6cxNg39qW', NULL, 'DuOYa02qKk', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4c-e725-4ddd-b19a-6de076ba087a', 'Thomas Le Da Silva', 'Mallet', '2021', 'OPHTA', '21120132', '$2y$12$ISz4UlG7rcgkOnj2zsagJOsAs8sozdu0gKSxLfeAznnUUUlmcAr5m', NULL, 'uU44ScYlBE', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4c-f45d-40ad-95ba-d3e4a143f534', 'Amélie de Descamps', 'Lambert', '2016', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '16350187', '$2y$12$vHx0BCTO7767xIvzMcb8GeeHJ1.WlzusVUFAXGLM4nYqR58JcpnxC', NULL, 'ZMV88rtCI8', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-05a9-49cd-bde0-20becf06a91c', 'David Aubry', 'Rey', '2019', 'GGT', '19100133', '$2y$12$s/yWpFt2/Sv/TO9yJQ6G9Om0GO64KVW1W33iuQAhN5TFUxBpW4Qfa', NULL, 'uzmdPHTMHX', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-1230-4fa2-8d01-7ded4cd1e5c3', 'Roland Cousin-Toussaint', 'Chauvin', '2020', 'SERVICE SOCIAL', '20450133', '$2y$12$2b4jkOO9Y9y.Pn7oVK.twu2xTmqIUkltL1TyGW5BTRrKA1lNHXg8i', NULL, 'MoxC5aUS7l', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-1f9a-42b7-9095-a740e3cd3106', 'Juliette Baron', 'Devaux', '2020', 'GGT', '20100026', '$2y$12$dBEBssD4Q.euJe0vlCXnKux8CxJ5ZGIPtBuVI4kNabTBNLOlx7Wxy', NULL, 'ziVzhXVbO9', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-2c22-44fa-a193-a12b235eee54', 'Adélaïde Moulin', 'Seguin', '2021', 'GGT', '21100036', '$2y$12$v/pdGTKcnSbDP.QKUMBu8u4l9VdpROTICEfPennFfIuh8IJQb/TK6', NULL, 'fbV5JKbp31', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-39a1-4ca9-822c-26cd4c437d16', 'Georges Le Peron', 'Lamy', '2019', 'SCIENCES INFORMATIQUES', '19650037', '$2y$12$3PRaflx5q41BFWay88g1sO1L96zciisJGs48ZDlDf0hoz6skZVUb2', NULL, '5xFi6E0DK4', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-4618-44cc-a4c4-997ec59f4539', 'Laurent Nguyen', 'Foucher', '2016', 'SAGE FEMME', '16220007', '$2y$12$rr8qWvjpspFaEOAeHLScyur3NetzBVsvD7/DZtGASOeHDZVX0MVjW', NULL, 'faMgtNTVMF', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-5390-47b7-9215-cf7027207305', 'Marthe Jacquot', 'Goncalves', '2022', 'GGT', '22100200', '$2y$12$6a2eMCOxJS54uTpUu6AUuu587wTO025leqM9rGn.Pk49wVDCBAy3.', NULL, '74TbSuTmsU', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-71c9-4e6d-903a-99dcf99e2533', 'Juliette Lemaitre', 'Schneider', '2018', 'SCIENCES INFORMATIQUES', '18650032', '$2y$12$4978fctqeNvq4mO/P5Ha6eiKAQnnqHcBMQBCoLdjQcZMgMtE28zLm', NULL, 'g4pFbMvQWE', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-82a1-4169-88db-08d3b22ab342', 'Joséphine Costa', 'Delorme', '2024', 'GGT', '24100043', '$2y$12$1Ejxm4eWwutdM3MHQFJtP.bAfW8QQgerFAr7I7WzvTnVCUdCNrF3a', NULL, 'wBLDMCCPEF', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-900b-454e-80e8-688aeec2bee3', 'Frédéric de la Bigot', 'Le Goff', '2017', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '17350053', '$2y$12$falVv5w4l/7MfRbJgLwv3.wOK/y1Oo0jiIUl2FUK2Xqzr0RGjeMVW', NULL, '7qUd9MHWFc', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-aa45-49c2-83bb-fdb953b88fb1', 'Grégoire Renard', 'Perret', '2020', 'MEDECINE', '20500008', '$2y$12$1r8ZqB8Bw4IgDAmPWRvuS.e2EI79maJoOhd4tnzfEWBDo00soiWKG', NULL, 'HLwbV5W6Ag', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-b6eb-4577-b4bc-f4c67a8ed17c', 'Guy Le Girard', 'Roy', '2019', 'GCV', '19200020', '$2y$12$iAv9v9a8yOqfqiRbrI.Z7eYHCVa8LHVlVR1V.vMenvJsuCu/B/2te', NULL, '3HuJd6uPnJ', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-c442-464f-972b-0df04a6b5629', 'Jacques-Christophe Pelletier', 'Blin', '2022', 'ANR', '22600129', '$2y$12$U07J1E7Q1XJguOXGnJSWV.mPU4hXCHGOI7s6LfS.4SfG7MK9Q.l6S', NULL, 'SzVTSWqZ6H', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-d0ff-451f-a9d4-cc025cd92e19', 'Isabelle Lejeune', 'Boyer', '2024', 'SCIENCES INFORMATIQUES', '24650194', '$2y$12$jaYsx1PZbZal4D.BIwFbd.5OmlliTlmXS3DtunbVKu.md4u7urvk.', NULL, '8yJIJazf5q', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-de29-4e32-bb45-f0b57f329ae1', 'Olivie-Gabrielle Jacques', 'Mace', '2018', 'SCIENCES INFORMATIQUES', '18650103', '$2y$12$lhCTsTQE/3IPe9j.c7TQ/Onym27VmSeyCS.jku3mSDi7Bw0M1oxLW', NULL, '2d2oqkdDZ4', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-ead3-45e7-a9dd-b6b1b9e1a970', 'Franck Laine', 'Hoarau', '2021', 'SERVICE SOCIAL', '21450185', '$2y$12$/.qgHYlZHar.PZ4AbU.TKuUC3JfKRSfDRlUPw3F2ZfVrcZmJYP8f6', NULL, 'O5aCiwjPTf', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4d-f81d-4e3e-a88e-d175fc5bf65d', 'Paul Muller', 'Perrin', '2019', 'SERVICE SOCIAL', '19450117', '$2y$12$5QAF/0lrsFIgTWq.EC59T.tCcEc7FZZr1sHONEfpnQ6GtGD/3TPty', NULL, 'vJpk65INuD', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4e-04c4-4ab6-aafc-b8e628b43924', 'Laurence Marchand', 'Tanguy', '2016', 'GGT', '16100156', '$2y$12$EJNsqHoIDEWdC.wuqZg9BujAz7mMY64EN8c0RrF.7cYedHEqZ1jfa', NULL, '8ujr49B4Dy', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4e-1212-4b5d-99bc-6a5b05cf8a10', 'Madeleine Moreau-Herve', 'Bouvier', '2019', 'DROIT', '19250133', '$2y$12$7eB1aoNwkb0IoYE0yHrz3uR856cz5KdIk4K8BcGFlTXmsTkZLkMi.', NULL, 'fnXaKjJmDm', '2024-06-13 20:58:13', '2024-06-13 20:58:13'),
('9c47be4e-1f14-44fa-bfc6-3d2f64108fee', 'Susan Le Valette', 'Vallet', '2018', 'GCV', '18200185', '$2y$12$XHXcaOmLOZ7h0yrkYWDjuOOrcluuDg.x0HI97wJhNwCJwgfQOMkoe', NULL, 'C7RUm36Udq', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-2c08-4a27-be02-40d2e706d606', 'Gilbert Maillot', 'Hoarau', '2017', 'OPHTA', '17120141', '$2y$12$gPvL3PqxmbHryZL1gqOXpeugwEurLe10ma8gjd1FGZKH85ekD.0pS', NULL, 'H7wbmOzM8s', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-38f0-469b-aa11-c69be67e1943', 'Vincent Godard', 'Lacombe', '2022', 'SAE', '22300075', '$2y$12$i7OhlsrQtyXfFqwBnZHh1e7JU/JI1iINj1PydpZ7mn6gkkQzasOlm', NULL, 'Sj1BfVOJFQ', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-4a3e-4231-9483-cad3467cfa2d', 'Susanne Boutin', 'Guillet', '2018', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '18350195', '$2y$12$X7KQnMzl1fL8vuZ4Edbvq.iRIf6fnx6JfjO25M1SYJtUE9KPMtMiq', NULL, '63jwhdzf4E', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-566b-452c-a2ee-b66a48add7b8', 'Henri-Michel Vidal', 'Samson', '2016', 'DROIT', '16250034', '$2y$12$ZUhyvCWPeg1n6MwrwRuZr.DvYqCgic9hDQAMW3dgRb9sUnML2.3Di', NULL, 'yZBUISTPe6', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-6423-4189-b7ef-ac6189f00a8e', 'Étienne-Eugène Blot', 'Fournier', '2024', 'SCIENCES INFORMATIQUES', '24650138', '$2y$12$zD1CMX7gHpum9ZRAQ.Q.3uwiPDlzUSveiv6UuKg4tWJygrC3YiZAi', NULL, 'V9hNOxoXhY', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-705d-4d6e-ae2c-d4bc69d51cba', 'Pierre Leveque', 'Robin', '2016', 'OPHTA', '16120080', '$2y$12$RuE1jvTGUp5ZLZSi.2LMV..R4OhS0u5dn8a2NNnC1V1EJ1dPCJHfG', NULL, 'wiewbcqxUf', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-7e13-44b8-b43e-f7926387a31e', 'Alexandre Robin', 'Colas', '2019', 'SERVICE SOCIAL', '19450088', '$2y$12$XaADXWobcJMe2ivKQN5Q0.gIUce/ESe4EFAR0U2eBTxZJcU0416sS', NULL, '74GnAcehwY', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-8a4f-41c1-92fe-4ef873505b18', 'Adrien Courtois', 'Bousquet', '2021', 'GCV', '21200109', '$2y$12$2cJo0J16wmCJs2GnnS8Ro.JWTbpzzMr7a4ikxDwVt6eGfQ2ixZC9u', NULL, '4YSOH2VLjl', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-9805-4d61-a4f2-04e7aae4861a', 'Charlotte Barbier', 'Blin', '2022', 'DROIT', '22250134', '$2y$12$yUfokZ20A5p8KRchzTQEreZyGYR/4KZac7GCR/PpzNFd4sntMGeMW', NULL, '0EhGO8vpSe', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-a446-4107-a60e-b066a09deae2', 'Pénélope Girard', 'Pelletier', '2015', 'SAE', '15300105', '$2y$12$NVHWTqAc3xkQScRp8uZL/uQQj0SQVqNPX/mVxH3r5r2ui37YRckLe', NULL, 'uZ2Ej2NfWF', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-b1ff-4afa-b031-c6c6fd878145', 'Alice Roux', 'Andre', '2017', 'SAE', '17300058', '$2y$12$XWoBFCLfI/Mt89snoSls8O.Il4aa28G3Zygl.eVnRK0zMrpkqIZdu', NULL, 'wyavoNk5oc', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4e-d899-460f-9379-37360bea80f6', 'Emmanuel-Alexandre Leclerc', 'Becker', '2021', 'SIF', '21400029', '$2y$12$OcP.aparfA7ogXIJEk6Pj.KDG/g2rm3ose4m2.QJyKmQzC/0PW/nm', NULL, '5RYmAY3KbE', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4f-1e34-430e-b459-3f655ad44bac', 'Aurélie Coste-Sanchez', 'Garcia', '2015', 'SCIENCES INFORMATIQUES', '15650138', '$2y$12$9DEQjYpll10mpnphBcvKVuoXh1DAPZNGaoM8Eh8/jtfDtiDcd3BVi', NULL, 'CPwuGZIBAb', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4f-2ec7-4314-8a60-5348ab085897', 'Stéphane du Joubert', 'Lenoir', '2016', 'SAE', '16300150', '$2y$12$.9o.s3UwbAXdXP2mKZ/H/.dWPjB/qc9mHBUcGeuRyDEJIOExsKEsq', NULL, 'Q2hCPdokiB', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4f-3ccf-4ae2-88df-74a6121f9770', 'Charles Gillet', 'Hardy', '2022', 'MEDECINE', '22500090', '$2y$12$ClHv5HHDSIK58x0ObuRar.bcjScdHZdLZ.036e4wVsv.wsuO9Eori', NULL, '4Ll3lr601t', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4f-4d18-40b0-a9d9-6a5f25dbcf1a', 'Édith Arnaud', 'Chretien', '2022', 'MEDECINE', '22500085', '$2y$12$oSzlWZ2JDopVnF.U/g/Ip.79IGBWD7AuwmGvJVi6Tyu0DtiJ8sEi2', NULL, 'j825agzuOJ', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4f-636d-4195-9a68-dedc378a184a', 'Catherine Guillou-Maillet', 'Julien', '2018', 'COMMUNICATION', '18550006', '$2y$12$BkeUHwORDytz0qhEFFJJfe/aXSoMDUHxp8paKEumndPOPB4vzhdlG', NULL, '2enrFqpBSt', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4f-6faa-4f5c-b8ac-596de2d54576', 'Frédéric Marques', 'De Oliveira', '2017', 'DROIT', '17250138', '$2y$12$bskIuOiixbquxCVsrBq7KO3I9mpTKV1D5W4BN3KHOzg5xZw/KBbFK', NULL, '4eVoY7FWX0', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4f-7d73-49be-ac9f-8dd942d149e9', 'Thomas Marchal', 'Delmas', '2016', 'MEDECINE', '16500008', '$2y$12$VJLle2559Tsrj7pms46AN.dShx0kK7xEjXR.OEQLbwKkTKj69dkve', NULL, 'CGLOjeQK9d', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4f-8dec-4969-9de6-f0384f4fad1c', 'Augustin Menard-Ramos', 'Traore', '2024', 'OPHTA', '24120150', '$2y$12$tYioNtIFsTck43DjNZKzNuGCLOLDq/sHHbKok2Gcl4fLPa41uqx2O', NULL, 'YDr4xBEyA6', '2024-06-13 20:58:14', '2024-06-13 20:58:14'),
('9c47be4f-9f40-401c-a9d6-bd1d706afb7c', 'Noël Barthelemy', 'Besson', '2022', 'SCIENCES INFORMATIQUES', '22650021', '$2y$12$9DeE23KLWlCOFkk.vQR8deDdwxpokK3Q.s6PaDtMfyJ0g51/iloPO', NULL, 'Mt37S5DiQg', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be4f-b567-45de-8311-a3e800335199', 'Olivie de Pons', 'Bernard', '2024', 'GGT', '24100126', '$2y$12$LmU8agsWjKpoY2qa/O/oo.u92J5EABHERhBzTlQRaQBVjClw3t8TO', NULL, 'Pir3zyb1cp', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be4f-c1dd-41bb-9d48-700116a2b75e', 'Paul Turpin', 'Guilbert', '2016', 'MEDECINE', '16500063', '$2y$12$3/v8tZvUS5DQlWpAu5SLguBehhzmlNpzlmUeVdA4k89S5yX4dnkgC', NULL, 'TUi9HFyDrr', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be4f-d3f4-4af1-9d80-bd01e6540b55', 'Laurent Ledoux', 'Pelletier', '2018', 'DROIT', '18250004', '$2y$12$yH0R.JDRNnIufmKbXHCdZ.Jhe4YZkcd75AxA5unxyiw5rJ0xI7D72', NULL, 'phkIBw0BaU', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be4f-e0b0-4638-a955-bffe4b043463', 'Jules du Mahe', 'Royer', '2022', 'DROIT', '22250171', '$2y$12$7xArfPWJXz793NFWJRMID.1FtLPSLab1NQKNTj5RQaWDWH37h.iZ.', NULL, 'atkz8jcCbP', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be4f-ecf1-4d12-9e7f-8052c78f8673', 'Paul Paul', 'Devaux', '2020', 'SAE', '20300107', '$2y$12$OHSR1MOBlU9W.KPeVGQ86es8cQAaGRsX2ha/AIGd8KVmLAXywtkcC', NULL, 'ATVP8nbpzt', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be4f-faaa-4386-8ff7-a1167c7dbfd0', 'Dorothée Auger', 'Dijoux', '2015', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '15350132', '$2y$12$5XIebeY/lsPGfvthJ/voQeNqouc8w/Fh6xg2pSbOHLbGYO885SXAG', NULL, 'ICTUZJdzJ9', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-1102-4b53-aa7b-10c4afb9f863', 'Vincent Georges', 'Guillet', '2024', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '24350033', '$2y$12$Q0CQzNb/uZVUPJIJpLmWH.6cRrcZZrvBQt2LNYVvH2UJuFn4C5GvC', NULL, 'FF8trmSYoO', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-2195-47e2-8388-c99489448f18', 'William Fontaine', 'Pineau', '2018', 'SERVICE SOCIAL', '18450091', '$2y$12$.bNV1iuT5wJ/2VoWVzzVZOjhf7h3odcdqFlt1ZfbZN2QTp3rj5FKy', NULL, '1y6DHMUR4E', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-369a-4c7a-8567-5c615bd380bb', 'Colette Hernandez', 'Marchal', '2017', 'ANR', '17600103', '$2y$12$sfsRPb92jDuMmEiQBIFore1rhZMTcYdaojG1.Grxzhnu1I8P3JZ6S', NULL, 'wGFRGO5Afm', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-48b7-4580-850f-08ca843df961', 'René-Augustin Leduc', 'Guillon', '2015', 'GCV', '15200181', '$2y$12$rq/4CYvh9DT9Ew1GB622w.cx8H.LYZ9GAZDt/HXcLS1e1EN8aNDF6', NULL, 'n9ifp7bPX2', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-54da-4bed-84e9-49deb4fa9849', 'Aimée Ferrand', 'Fernandes', '2016', 'SIF', '16400003', '$2y$12$mG6o6m5cxnUtBpkJaOjWq.d9lk71EWgg3XsZyLebMA8AKBQtBzXMm', NULL, 'thzcuJCnOX', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-628a-42cc-8760-dbbec1aeb043', 'Guillaume-Sébastien Poirier', 'Aubry', '2018', 'MEDECINE', '18500147', '$2y$12$DPpijx5RB0eUrpG23WxM5ORPlVuK2alp4QV6DJ6hVrWgcIClxisXC', NULL, 'jjo79dYS57', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-7857-4de9-9bb8-48ad2cf86f26', 'Olivier Martinez', 'Bigot', '2023', 'SERVICE SOCIAL', '23450118', '$2y$12$8IIABAbOXSQip5o.iWVL9..wI3LVXJqaUqZC2chnuSKQqU2G24sca', NULL, 'ocdImuRGQq', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-84ac-4728-9d08-1a4a3dd4bc8e', 'Vincent Jacques', 'Fournier', '2021', 'SERVICE SOCIAL', '21450055', '$2y$12$qDz.GdZ.faqNeKOKm9wUHOrVYotVMMl/5IuR3LWl2oAYuEf9cWLnS', NULL, 'W7bQnLXpZc', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-9231-43cd-a202-121c414762ae', 'Renée de la Roche', 'Mendes', '2024', 'SAE', '24300072', '$2y$12$Oldv8IkM77sNzHex8F/i/OxeELuKb3LFelclCc72PfoVVD9B2Ikg.', NULL, 'GB6BDCEOFN', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-9ecd-423b-8d3c-898118036a37', 'Marine Gillet-Gerard', 'Leconte', '2023', 'SIF', '23400170', '$2y$12$yUzYJyqc3GNa.i.jOVMG5u8e9yt/UU/Muv0RTsoFfQlfpoqPkJpGy', NULL, '08uniV2AZE', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-bd58-4bba-890a-445dcf731dd4', 'Valentine Voisin', 'Bazin', '2022', 'OPHTA', '22120103', '$2y$12$.oKuOd69/HCedNLwouQZpOfMruMKsYKWRLr4NLllDCRpuj1q0SynW', NULL, 'rG11da5NcP', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-c981-4a74-bca2-2554960bc6f4', 'David Dumont', 'Dupre', '2021', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '21350087', '$2y$12$q2fXguas4YXjy26nx/MSfuk5vaaHpDM.FylvLZRR9njH0vwe6P2ZK', NULL, 'KWeNAtZVFn', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-dfdc-4809-a035-23aa7330964a', 'Alfred-Raymond Clement', 'Raynaud', '2015', 'DROIT', '15250162', '$2y$12$HLy3GOoYloUU.ACMpvYHLujtXRrexQrmdhNYuQQ7Nv1BpPpoM0b0y', NULL, 'lZtqHu0XqM', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be50-f139-4eb9-90fc-a7dd7e9df1ba', 'Martin-Émile Thomas', 'Dupuis', '2017', 'SERVICE SOCIAL', '17450185', '$2y$12$s9ItTf18gZD1x.F9muz5juQZe1yDDNCVW7FCoySrWGG.ef2h3mWli', NULL, '4eXamog9I4', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be51-026e-41d7-bcd3-5ca9747d4243', 'Isabelle Charrier', 'Millet', '2021', 'GGT', '21100154', '$2y$12$9EoG5Ua3eYcioCiEH8mQ0.DpnvNK0yAhj8wrBunF/AND8qAaCS0X2', NULL, '3pi9U4D80s', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be51-180d-41cf-92f8-211525de237b', 'Corinne Guillon', 'Cousin', '2020', 'SAE', '20300136', '$2y$12$0dC6tLYpE6XvaVkt8.zxZet7mpY.mrEW6rDlHZ7qaQy5SYGGJEc2a', NULL, '0ybd2UeVpg', '2024-06-13 20:58:15', '2024-06-13 20:58:15'),
('9c47be51-2965-4eb3-88da-a9e655e3f02e', 'Julien Delorme', 'Roussel', '2017', 'OPHTA', '17120058', '$2y$12$41FolosgMoFeOLcwlNxKdu5cYusQcwJ63/iV8QjW/sqSpauSRa/zK', NULL, '3X8vrl1s3Q', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-3aac-4369-8c9b-473677118725', 'Édouard Jacob', 'Pascal', '2022', 'SAE', '22300026', '$2y$12$pLtwjHWxaux52JCSlBXC1.0SuaeSBtBZjR8emlvUQ6cjs/g3HvcXu', NULL, 'wZWm6Zqmde', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-4bf8-4c74-a40f-045b172be6ef', 'Capucine de la Richard', 'Maillot', '2019', 'MEDECINE', '19500195', '$2y$12$1CXYqG5b/EoYLmdYHfzBvOJ3vbYRhkfYyeSJbsTS8fxpYGgnR5Uy.', NULL, 'G2JSc7FCbR', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-60d4-4925-931a-27889f1d9a1e', 'Noël Bruneau', 'Pons', '2015', 'MEDECINE', '15500120', '$2y$12$UKM8Iir96We3G9wJaOqqNuvDIoXQWtUNvaEUrkX0BVqa2Qw9vgQ7K', NULL, 'AzMS6PFzBS', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-6e83-4771-89dd-5ad2ae3360d0', 'Aurore Faure-Lefebvre', 'Lemonnier', '2017', 'SCIENCES INFORMATIQUES', '17650085', '$2y$12$A2DKBJXrM6pNdMU6v2/1/u5oVMSPIz8xe673bUECQcn4/iE3zOIB.', NULL, 'sZPx6rItzT', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-842e-4d46-8589-04eb0a444818', 'Denis Dupuy', 'Vincent', '2024', 'SCIENCES INFORMATIQUES', '24650048', '$2y$12$Sjcn6fGfIigeQbM5QuJiOO24xHIYQv4JBotPZSpZjfleBuy8NJJgO', NULL, 'ndrKnvLMPw', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-90aa-4437-9b67-c5b916f264f8', 'Antoine Bigot', 'Lacombe', '2019', 'SERVICE SOCIAL', '19450195', '$2y$12$mEHkTWH547xj511HCtByne5zAaUdQ9NbmSzFe3wPq61F6N8yUpVTi', NULL, '4jdzOp8Ndb', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-a1bd-423a-b5da-fb5a48a0605e', 'Auguste Lacroix', 'Francois', '2024', 'DROIT', '24250147', '$2y$12$IaTriSVv5IIJnm9xGVdoSO4F.ax5mgPoAEqWAHceOssbXStV4E.Mu', NULL, 'RADj74MIyv', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-af6a-410b-8649-7743e89d0cad', 'Augustin Petitjean', 'Morel', '2015', 'COMMUNICATION', '15550199', '$2y$12$YYSAGY3fE7XlB9q/crtQeuQ7vOfxn7eqSXrKmfdCXPPsNMgkmHaHC', NULL, 'ct84iuUAdJ', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-bbae-411e-bce9-0828284d26fa', 'Anne-Marie Leclercq', 'Fouquet', '2022', 'COMMUNICATION', '22550009', '$2y$12$mKFeyzkkuvj1cdppmXQxhuJje87DOU.T7RJsc51M6A3oIV2295cKO', NULL, 'eCbniiY26h', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-c987-42ea-9af2-f0c4a60b6a5c', 'Sylvie-Lucy Maury', 'Da Costa', '2019', 'SCIENCES INFORMATIQUES', '19650166', '$2y$12$ijh/qmiyTGx56b7MyV841.dw4SlSR8ix0EfmfkIaqQUji8rterOOm', NULL, 'gp88gPRlir', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-d5c1-404a-b536-f0b084f29c16', 'Emmanuelle Coste', 'Teixeira', '2023', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '23350183', '$2y$12$CMHSgbbJ6jWNf.5sr1dylepVew8tqGUpqnqWcZyjyD85T0VZX1dyu', NULL, 'BvBgXOnwaD', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be51-e378-4522-8aab-58c8c5a6b4bb', 'Grégoire-Théodore Colas', 'Texier', '2017', 'OPHTA', '17120146', '$2y$12$o3iZNq.tTGj1HGz9hsibE.PhNtpjvGCDkTbJKU78a8iYLE5d2Ne3i', NULL, 'dp7mCKZsBa', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be52-2878-44a7-a466-97a02e377717', 'Dominique Fabre', 'Noel', '2019', 'MEDECINE', '19500070', '$2y$12$6E6ouCJCm7fshl1L6Bd3tO8ByIVxWKtNFSPDG6UowHTn2kfogBSDK', NULL, 'LnEanVo2xq', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be52-5348-4f63-a022-4fc34c540246', 'Josette Gimenez', 'Lagarde', '2021', 'GGT', '21100197', '$2y$12$3F3WuJ46vgEdGARJyXaAdOsD5PrRphr6UmKrwwQTDfUe/1ihsAAjW', NULL, 'IftXVJ2Sly', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be52-60c1-4934-b8df-14120d63377d', 'Denise Blin', 'Pascal', '2017', 'ANR', '17600100', '$2y$12$UASesThp1POS9w.UtuSiweQ3QGLPgsvyPqSSODt5wdpq0jj9fJUY2', NULL, 'UdbrFU2AIn', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be52-7201-4b20-b9a6-f2f98a0342b8', 'Mathilde Poulain-Hoareau', 'Vincent', '2023', 'SIF', '23400109', '$2y$12$zlRktgM4YOe8lWYFEd5S/eulBW2bnIgaHNlX1RyqEZUCxAKlg4UIW', NULL, 'TsmaxhL1cP', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be52-829d-4294-845c-bb1569026bde', 'Anouk Jacques', 'Barbier', '2015', 'COMMUNICATION', '15550160', '$2y$12$Umhvvc0wq1fuQvVPnBZupu29tsv58D1vp34cGU2.gNJbPCGp85joe', NULL, '3nYlxOyvHe', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be52-908e-49fd-9f47-710a68bdb9ac', 'Bernard-David Joly', 'Potier', '2016', 'SCIENCES INFORMATIQUES', '16650050', '$2y$12$VjPydQNSHMqLP0pVYj9ZruT57eeznoS4kp8jpO4pzz1idQg/EUs/y', NULL, 'FPm40jziua', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be52-a104-4357-99c4-fd84d1cef72b', 'Marc-Théophile Moreau', 'Riviere', '2016', 'GCV', '16200193', '$2y$12$MQpZxoNcsrcWi5VOf02mYeYAL.4MFuqPOeZygKXSL0NFUEuW1Dhlm', NULL, '8FE4QOyOek', '2024-06-13 20:58:16', '2024-06-13 20:58:16'),
('9c47be52-aeae-4ed3-a3c5-21626e3041f9', 'Laurent du Costa', 'Lenoir', '2017', 'SAGE FEMME', '17220073', '$2y$12$iJc/nllqmmvTui4KtwUuEu/lR4zhTbLnYcTUlwEhKvNYaQS6oCcSG', NULL, 'JQpAdgsaMc', '2024-06-13 20:58:17', '2024-06-13 20:58:17'),
('9c47be52-bb09-4ca9-bb6a-71057863ec4f', 'Éric-Paul Julien', 'Raynaud', '2020', 'SAGE FEMME', '20220062', '$2y$12$9nefrnrejuU2rOvBrE/gy.tHwWLLxoqCCURzh0ydOqFnATnk3bYry', NULL, 'OAZdGSbHVm', '2024-06-13 20:58:17', '2024-06-13 20:58:17'),
('9c47be52-c8a6-4aa6-8bea-36be1de84f21', 'Nicolas Gautier', 'Laporte', '2015', 'SAE', '15300004', '$2y$12$9CxLqVyEzjM3oatyUgcvHujcFzGFSGKhXkzb0X4lMcjl2Kedfx1yO', NULL, 'MmHMmVVosf', '2024-06-13 20:58:17', '2024-06-13 20:58:17'),
('9c47be52-d4ea-4810-ac6b-7ff8cc01e906', 'Raymond Le Rousset', 'Guillon', '2023', 'SIF', '23400095', '$2y$12$ItJzuq3okZoc7GX2AVbDU.CQ2Hx.usJTsErT1SyerAT5LkRCUj/je', NULL, 'T9J5ln0kzk', '2024-06-13 20:58:17', '2024-06-13 20:58:17'),
('9c47be52-e289-4f00-be59-c379bcd423a5', 'Étienne Hoareau', 'Royer', '2022', 'SIF', '22400001', '$2y$12$f04WOSP5fowifFySEvWUo.Zg3YqguGe9BJbAxapBdoN2DJt8z31ci', NULL, 'EmVNhjTizN', '2024-06-13 20:58:17', '2024-06-13 20:58:17'),
('9c47be52-eeba-4f54-a5d8-70184ca768ad', 'Margot Duhamel', 'Torres', '2020', 'SIF', '20400062', '$2y$12$FzivYjiszSk1dnBUDylWlOhJKehO5KFiD79nKjqdUqRYYVxcNckMG', NULL, 'xiVdLovTqf', '2024-06-13 20:58:17', '2024-06-13 20:58:17'),
('9c47be52-fc63-4168-8fd0-d7ccb97329e7', 'Marcel Vallee', 'Lacroix', '2017', 'ANR', '17600055', '$2y$12$zCtkOSV0i4uBGAlUFYzINOuF6LOKpzNm89fLKEs80/bNnxtOpY.Cu', NULL, 'JL3mZpAaik', '2024-06-13 20:58:17', '2024-06-13 20:58:17'),
('9c47be53-08ab-4ee8-9426-c12bc92e7285', 'Mathilde Rousset', 'Pelletier', '2018', 'ENTREPRENEURIAT ET GESTION DES AFFAIRES', '18350019', '$2y$12$Lsh649l/AhN1SJCROmSGLOQkJpn2xe1V76xlBWE7LXPevdJ4DZjNy', NULL, 'I3dzWdebsj', '2024-06-13 20:58:17', '2024-06-13 20:58:17'),
('9c47be53-1669-4295-9a35-cd967bf3f797', 'Martine Guillet-Pons', 'Leroy', '2024', 'COMMUNICATION', '24550094', '$2y$12$HQfXdmMHLpc5z0s/JfTqD.D3nRujbj9mCRXLr2qjoxwDg130PojJO', NULL, 'r7t1nOdYh7', '2024-06-13 20:58:17', '2024-06-13 20:58:17'),
('9c47be53-3905-4ff6-8a65-c5de887ea23c', 'Nicole-Constance Baudry', 'Courtois', '2016', 'SAE', '16300012', '$2y$12$dH1T46L9XUaOmuqy2THSseUj7ewiOiElSiYJ9fm/1du3jU4EipKfK', NULL, 'lZm3s6BXIF', '2024-06-13 20:58:17', '2024-06-13 20:58:17');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_matricule_unique` (`matricule`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;