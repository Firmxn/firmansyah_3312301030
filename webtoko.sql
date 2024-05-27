-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2024 at 01:35 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1zgcIXpnrLX3I8BeFbmlSuSL2S1EvCERQN8w2txN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUIwelprV0tGV2VOc3JHcUtiaUJXODhpZzMzeWlaVkZFbUJjRmpWMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9saXN0cHJvZHVrIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716773672);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduk`
--

CREATE TABLE `tblproduk` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblproduk`
--

INSERT INTO `tblproduk` (`id`, `nama`, `deskripsi`, `harga`) VALUES
(3, 'Headset Gaming SteelSeries Arctis 7', 'Headset nirkabel dengan kualitas suara superior dan kenyamanan saat dipakai lama.', 2500000),
(4, 'Perlengkapan Yoga Lululemon', 'Perlengkapan yoga yang nyaman dan fungsional, termasuk matras dan pakaian.', 1000000),
(5, 'Mouse Gaming Logitech G502 HERO', 'Mouse gaming dengan sensor optik canggih dan penyesuaian berat.', 800000),
(6, ' Drone DJI Mavic Air 2', 'Drone kamera dengan kualitas video 4K dan kemampuan terbang yang stabil.', 12000000),
(7, 'Set Alat Masak Stainless Steel', 'Set alat masak lengkap dengan panci, wajan, dan peralatan memasak lainnya.', 1200000),
(8, 'Kursi Kantor Ergonomic Herman Miller', ' Kursi kantor yang ergonomis dengan dukungan punggung yang baik dan bahan berkualitas.', 9000000),
(9, 'Earphone Sony WF-1000XM4', 'Earphone true wireless dengan fitur noise-cancelling adaptif dan kualitas suara premium.', 3500000),
(10, 'Printer Epson EcoTank L3110', 'Printer all-in-one dengan tangki tinta yang hemat dan hasil cetak berkualitas.', 2000000),
(11, 'Tas Ransel Laptop Urban Outfitters', ' Tas ransel dengan desain vintage dan lapisan pelindung untuk laptop.', 700000),
(12, 'Jam Tangan Casio G-Shock GA-2100', 'Jam tangan analog-digital dengan desain klasik dan tahan air.', 1800000),
(13, 'Mixer KitchenAid', 'Mixer listrik dengan desain elegan dan kuat, cocok untuk kebutuhan memasak sehari-hari.', 4000000),
(14, 'Buku \"Harry Potter and the Philosopher\'s Stone\"', 'Buku pertama dalam seri Harry Potter karya J.K. Rowling.', 150000),
(15, 'Kulkas Panasonic 2 Pintu', 'Kulkas dengan kapasitas besar dan teknologi Inverter untuk penghematan energi.', 8000000),
(16, 'Smart TV LG 55 inch', ' TV pintar dengan resolusi 4K UHD, dilengkapi dengan fitur AI ThinQ dan Google Assistant.', 15000000),
(17, 'Kamera Sony Alpha A7III', 'Kamera mirrorless full-frame dengan sensor 24MP dan kemampuan merekam video 4K.', 25000000),
(18, 'Sepatu Olahraga Nike Air Zoom Pegasus', 'Sepatu lari dengan teknologi Zoom Air untuk kenyamanan dan responsifitas maksimal.', 2000000),
(19, 'Meja Kantor IKEA', 'Meja kantor dengan desain minimalis dan kokoh, terbuat dari bahan kayu berkualitas.', 1000000),
(20, 'Smartphone Samsung Galaxy S20', 'Smartphone canggih dengan layar AMOLED 6.2 inci dan kamera utama 64MP.', 1000000),
(21, 'Set Koper Travel Samsonite', 'Set koper dengan desain ringan dan kokoh, cocok untuk bepergian jarak jauh.', 3000000),
(22, 'Headset Gaming SteelSeries Arctis 7', 'Headset nirkabel dengan kualitas suara superior dan kenyamanan saat dipakai lama.', 2500000),
(23, 'Perlengkapan Yoga Lululemon', 'Perlengkapan yoga yang nyaman dan fungsional, termasuk matras dan pakaian.', 1000000),
(24, 'Mouse Gaming Logitech G502 HERO', 'Mouse gaming dengan sensor optik canggih dan penyesuaian berat.', 800000),
(25, ' Drone DJI Mavic Air 2', 'Drone kamera dengan kualitas video 4K dan kemampuan terbang yang stabil.', 12000000),
(26, 'Set Alat Masak Stainless Steel', 'Set alat masak lengkap dengan panci, wajan, dan peralatan memasak lainnya.', 1200000),
(27, 'Kursi Kantor Ergonomic Herman Miller', ' Kursi kantor yang ergonomis dengan dukungan punggung yang baik dan bahan berkualitas.', 9000000),
(28, 'Earphone Sony WF-1000XM4', 'Earphone true wireless dengan fitur noise-cancelling adaptif dan kualitas suara premium.', 3500000),
(29, 'Printer Epson EcoTank L3110', 'Printer all-in-one dengan tangki tinta yang hemat dan hasil cetak berkualitas.', 2000000),
(30, 'Tas Ransel Laptop Urban Outfitters', ' Tas ransel dengan desain vintage dan lapisan pelindung untuk laptop.', 700000),
(31, 'Jam Tangan Casio G-Shock GA-2100', 'Jam tangan analog-digital dengan desain klasik dan tahan air.', 1800000),
(32, 'Mixer KitchenAid', 'Mixer listrik dengan desain elegan dan kuat, cocok untuk kebutuhan memasak sehari-hari.', 4000000),
(33, 'Buku \"Harry Potter and the Philosopher\'s Stone\"', 'Buku pertama dalam seri Harry Potter karya J.K. Rowling.', 150000),
(34, 'Kulkas Panasonic 2 Pintu', 'Kulkas dengan kapasitas besar dan teknologi Inverter untuk penghematan energi.', 8000000),
(35, 'Smart TV LG 55 inch', ' TV pintar dengan resolusi 4K UHD, dilengkapi dengan fitur AI ThinQ dan Google Assistant.', 15000000),
(36, 'Kamera Sony Alpha A7III', 'Kamera mirrorless full-frame dengan sensor 24MP dan kemampuan merekam video 4K.', 25000000),
(37, 'Sepatu Olahraga Nike Air Zoom Pegasus', 'Sepatu lari dengan teknologi Zoom Air untuk kenyamanan dan responsifitas maksimal.', 2000000),
(38, 'Meja Kantor IKEA', 'Meja kantor dengan desain minimalis dan kokoh, terbuat dari bahan kayu berkualitas.', 1000000),
(39, 'Smartphone Samsung Galaxy S20', 'Smartphone canggih dengan layar AMOLED 6.2 inci dan kamera utama 64MP.', 1000000),
(40, 'Susu milo', 'Susu milo kemasan', 1500),
(41, 'kopi hitam', 'kopi hitam kemasan', 1000),
(42, 'madu', 'madu rasa 150g', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tblproduk`
--
ALTER TABLE `tblproduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblproduk`
--
ALTER TABLE `tblproduk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
