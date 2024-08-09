-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2024 at 10:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_09_043517_create_teachers_table', 2),
(6, '2024_08_09_043701_create_students_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class_teacher_id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) NOT NULL,
  `admission_date` date NOT NULL,
  `yearly_fees` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `class_teacher_id`, `class`, `admission_date`, `yearly_fees`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prof. Joseph Kunze PhD', 11, 'B', '1979-07-22', 4723.76, '2024-08-08 23:43:21', '2024-08-09 02:54:45', NULL),
(2, 'Mr. Hyman Romaguera', 12, 'D', '1977-11-30', 4130.31, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(3, 'Cathy Hills', 13, 'C', '2010-08-22', 1243.66, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(4, 'Ms. Delfina Marquardt', 14, 'D', '2011-12-23', 1555.14, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(5, 'Willard Schuppe', 15, 'A', '2023-10-23', 4444.84, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(6, 'Osbaldo Leuschke', 16, 'D', '1999-05-09', 4165.98, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(7, 'Miss Jennyfer Romaguera', 17, 'A', '1992-03-20', 2182.07, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(8, 'Louie Haag MD', 18, 'B', '1983-11-20', 4178.73, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(9, 'Dr. Demario Heller PhD', 19, 'B', '2008-05-13', 4251.89, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(10, 'Manuel Kub', 20, 'C', '1981-09-17', 2626.68, '2024-08-08 23:43:21', '2024-08-09 03:02:03', '2024-08-09 03:02:03'),
(11, 'Dr. Jay O\'Connell PhD', 21, 'C', '2008-05-04', 1360.96, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(12, 'Prof. Zackary Monahan', 22, 'D', '1978-06-08', 3105.07, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(13, 'Betty Hegmann', 23, 'B', '2004-03-12', 1390.51, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(14, 'Rachael Oberbrunner', 24, 'B', '2016-09-24', 2613.63, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(15, 'Susanna Champlin', 25, 'A', '2007-03-23', 1268.83, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(16, 'Eleazar Wintheiser', 26, 'A', '1979-03-16', 4957.90, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(17, 'Kamille Boehm', 27, 'C', '2006-05-03', 3453.60, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(18, 'Cali Hills', 28, 'C', '1997-03-24', 1565.83, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(19, 'Nicolette Kiehn', 29, 'C', '1979-06-16', 1511.20, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(20, 'Prof. Jailyn Nader', 30, 'B', '2002-10-23', 4232.40, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(21, 'Sage Jones', 31, 'A', '1993-02-06', 2495.50, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(22, 'Javon Cole', 32, 'D', '2018-12-21', 1746.63, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(23, 'Dr. Jabari Graham', 33, 'A', '1998-05-22', 1748.89, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(24, 'Rosanna Buckridge', 34, 'A', '1981-09-06', 2240.52, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(25, 'Sidney White', 35, 'A', '1976-03-24', 4338.85, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(26, 'Alayna Gulgowski', 36, 'B', '2008-07-02', 2408.06, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(27, 'Jean DuBuque', 37, 'B', '2005-03-01', 3183.08, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(28, 'Royal Lueilwitz', 38, 'B', '2014-11-30', 3899.19, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(29, 'Cloyd Haag III', 39, 'D', '1988-12-17', 1361.27, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(30, 'Ernest Jerde PhD', 40, 'D', '2007-12-14', 4542.65, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(31, 'Bernhard Conroy', 41, 'B', '2011-03-18', 4620.66, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(32, 'Malinda Gleason IV', 42, 'D', '2022-03-09', 2109.34, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(33, 'Mr. Dejon Spencer II', 43, 'C', '1990-01-14', 1170.53, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(34, 'Mr. Bartholome Walker', 44, 'C', '2018-03-21', 4879.00, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(35, 'Carrie Moen', 45, 'C', '2000-12-15', 3715.52, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(36, 'Idella Gibson', 46, 'C', '1976-10-22', 2166.14, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(37, 'Idell Gerhold', 47, 'B', '1985-11-09', 3837.12, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(38, 'Alysson Powlowski', 48, 'C', '1973-07-22', 4944.41, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(39, 'Augustine Cartwright V', 49, 'B', '2015-08-15', 1382.23, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(40, 'Dolly Gerlach', 50, 'A', '2017-02-02', 3287.50, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(41, 'Charlene Bailey', 51, 'A', '2006-04-01', 1893.22, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(42, 'Roel Bradtke II', 52, 'B', '1993-03-19', 2912.90, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(43, 'Ernest Littel', 53, 'C', '1990-11-20', 2671.47, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(44, 'Roselyn Rodriguez', 54, 'C', '1980-07-23', 1958.44, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(45, 'Maiya Crist V', 55, 'A', '2018-09-28', 4205.19, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(46, 'Ms. Kavon Harber', 56, 'D', '2012-11-27', 2933.48, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(47, 'Dr. Jarrett Considine PhD', 57, 'D', '2003-09-02', 4106.34, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(48, 'Brett Kessler PhD', 58, 'C', '1995-01-31', 4060.96, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(49, 'Milo Hill', 59, 'C', '2006-09-16', 1489.14, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(50, 'Mr. Lionel Crona MD', 60, 'C', '1975-11-12', 2898.44, '2024-08-08 23:43:21', '2024-08-08 23:43:21', NULL),
(51, 'hitesh', 1, 'TYBSCIT', '2024-08-10', 10000.00, '2024-08-09 03:08:02', '2024-08-09 03:08:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher_name`, `created_at`, `updated_at`) VALUES
(1, 'Guillermo Haag', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(2, 'Mr. Kyle Beier V', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(3, 'Noemie Hessel', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(4, 'Felicia Stoltenberg Sr.', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(5, 'Tara Witting', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(6, 'Prof. Keshawn Abshire', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(7, 'Wyatt Cole', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(8, 'Maximillia Bahringer', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(9, 'Miss Alexane Rolfson', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(10, 'Bennie Towne', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(11, 'Prof. Rahsaan Blick II', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(12, 'Isaias Fritsch Sr.', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(13, 'Josue Will', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(14, 'Ms. Justine Hoppe PhD', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(15, 'Karolann O\'Keefe', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(16, 'Dejah Reilly', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(17, 'Alba Lind', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(18, 'Coty Stamm', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(19, 'Prof. Vilma Bernhard Jr.', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(20, 'Mr. Dwight Renner II', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(21, 'Miss Jaunita Roberts', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(22, 'Rebekah Lockman', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(23, 'Terrance Gislason', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(24, 'Jermain Shanahan', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(25, 'Dr. Harry Mayert', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(26, 'Mr. Cristian Lemke IV', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(27, 'Fern Deckow', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(28, 'Dr. Calista Shanahan DVM', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(29, 'Neha Huel', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(30, 'Bernita Predovic', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(31, 'Avery Schinner Jr.', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(32, 'Mr. Robin Johnston Jr.', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(33, 'Ms. Theodora Gleichner', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(34, 'Pattie Rau Sr.', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(35, 'Mr. Jean Jaskolski V', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(36, 'Caitlyn Leannon', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(37, 'Nellie Gislason', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(38, 'Morton Runolfsson', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(39, 'Dr. Cierra Streich PhD', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(40, 'Hulda Zemlak', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(41, 'Ally Moore', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(42, 'Seamus D\'Amore IV', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(43, 'Celestine Bins', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(44, 'Prof. Torrey Cummerata', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(45, 'Litzy Bechtelar', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(46, 'Torey Champlin DDS', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(47, 'Benedict Quigley', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(48, 'Idell Pacocha', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(49, 'Lorenzo Konopelski', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(50, 'Dr. Liza Davis Jr.', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(51, 'Mr. Price Denesik DVM', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(52, 'Leone Daugherty', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(53, 'Florian Walter', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(54, 'Gwendolyn Kohler MD', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(55, 'Ursula Raynor', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(56, 'Bobbie O\'Reilly', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(57, 'Janis Herman', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(58, 'Anastacio Yost', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(59, 'Shanny Breitenberg', '2024-08-08 23:43:21', '2024-08-08 23:43:21'),
(60, 'Prof. Andy Spencer', '2024-08-08 23:43:21', '2024-08-08 23:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arpit Bajpai', 'arpitbajpai@bidsinfosystems.com', NULL, '$2y$10$t5V2BbKJ/uCQ/pZzUtbv3u86eB/4j8dxVoc.Nl8OFP5gEh9rQDUWu', NULL, '2024-08-09 02:47:51', '2024-08-09 02:47:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_class_teacher_id_foreign` (`class_teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_teacher_id_foreign` FOREIGN KEY (`class_teacher_id`) REFERENCES `teachers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
