-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2025 at 10:43 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u772652625_Marathi_ott1`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(191) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) DEFAULT NULL,
  `causer_type` varchar(191) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_line_1` varchar(191) NOT NULL,
  `address_line_2` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `latitude` double NOT NULL DEFAULT 1,
  `longitude` double NOT NULL DEFAULT 1,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `addressable_type` varchar(191) NOT NULL,
  `addressable_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `file_url` text DEFAULT NULL,
  `poster_url` text DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `type_id` varchar(191) DEFAULT NULL,
  `type_name` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `banner_for` varchar(20) DEFAULT 'home',
  `poster_tv_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `file_url`, `poster_url`, `type`, `type_id`, `type_name`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`, `banner_for`, `poster_tv_url`) VALUES
(1, NULL, 'minions_portrait_6927e6da50fe0.jpg', 'minions_portrait_6927e6da50fe0.jpg', 'movie', '27', 'The Daring Player', 1, 2, 1, NULL, '2024-10-07 23:48:48', '2025-11-27 05:51:36', NULL, 'home', 'minions_portrait_6927e6da50fe0.jpg'),
(2, NULL, 'gameofhero_portrait_6927e693a5d7a.jpg', 'gameofhero_portrait_6927e693a5d7a.jpg', 'tvshow', '1', 'The Smiling Shadows', 1, 2, 1, NULL, '2024-10-07 23:49:29', '2025-11-27 05:50:27', NULL, 'home', 'gameofhero_portrait_6927e693a5d7a.jpg'),
(3, NULL, 'the_gunfighters_redemption_poster.png', 'the_gunfighters_redemption_thumb.webp', 'movie', '23', 'The Gunfighter\'s Redemption', 1, 2, 1, NULL, '2024-10-07 23:50:16', '2025-04-22 05:25:00', NULL, 'movie', 'the_gunfighters_redemption_thumb.webp'),
(4, NULL, 'daizys_enchanted_journey_poster.png', 'daizys_enchanted_journey_thumb.webp', 'movie', '24', 'Daizy\'s Enchanted Journey', 1, 2, 1, NULL, '2024-10-07 23:50:53', '2025-04-22 05:24:48', NULL, 'movie', 'daizys_enchanted_journey_thumb.webp'),
(5, NULL, 'seize_your_life.png', 'seize_your_life.png', 'video', '2', 'Seize Your Life - Powerful Motivational Speech', 1, 1, 1, NULL, '2025-04-22 05:24:11', '2025-04-22 05:24:11', NULL, 'video', 'seize_your_life.png'),
(6, NULL, 'mystery_6927e81998c65.jpeg', 'mystery_6927e81998c65.jpeg', 'video', '20', 'Life Changing Fitness Habits - Daily Healthy Tips', 1, 1, 1, NULL, '2025-04-22 05:24:25', '2025-11-27 05:56:55', NULL, 'video', 'mystery_6927e81998c65.jpeg'),
(7, NULL, 'fast_furious_portrait_6927e6b5e9875.jpg', 'fast_furious_portrait_6927e6b5e9875.jpg', 'video', '7', 'Victory Vibes', 1, 1, 1, NULL, '2025-04-22 05:24:36', '2025-11-27 05:51:04', NULL, 'home', 'fast_furious_portrait_6927e6b5e9875.jpg'),
(8, NULL, 'veil_of_darkness_thumb.png', 'veil_of_darkness_poster.png', 'tvshow', '5', 'Veil of Darkness', 1, 1, 1, NULL, '2025-04-22 05:25:18', '2025-04-22 05:25:18', NULL, 'tv_show', 'veil_of_darkness_thumb.png'),
(9, NULL, 'mcdoll_mayhem_thumb.png', 'mcdoll_mayhem_poster.png', 'tvshow', '15', 'McDoll Mayhem', 1, 1, 1, NULL, '2025-04-22 05:25:31', '2025-04-22 05:25:31', NULL, 'tv_show', 'mcdoll_mayhem_thumb.png');

-- --------------------------------------------------------

--
-- Table structure for table `cast_crew`
--

CREATE TABLE `cast_crew` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `file_url` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `tmdb_id` varchar(191) DEFAULT NULL,
  `bio` longtext DEFAULT NULL,
  `place_of_birth` varchar(191) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cast_crew`
--

INSERT INTO `cast_crew` (`id`, `name`, `file_url`, `type`, `tmdb_id`, `bio`, `place_of_birth`, `dob`, `designation`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Michael Johnson', 'Rectangle_4873_69283ce704e8b.jpg', 'actor', NULL, 'Versatile actor known for his dynamic roles in action and drama films. 🎬', 'New York, USA', '1985-04-13', 'Main Actor', NULL, 1, NULL, NULL, '2025-11-20 07:04:46', '2025-11-27 11:58:39'),
(2, 'James Williams', 'Rectangle_4874_69283d0d2d025.jpg', 'actor', NULL, 'Acclaimed actor with a knack for bringing complex characters to life. 🎭', 'Los Angeles, USA', '1980-04-14', 'Main Actor', NULL, 1, NULL, NULL, '2025-11-20 07:04:46', '2025-11-27 11:59:15'),
(3, 'Robert Brown', 'Rectangle_4875_69283d39316a8.jpg', 'actor', NULL, 'Renowned actor famed for his powerful performances in thrillers. 🔪', 'Chicago, USA', '1990-02-07', 'Actor', NULL, 1, NULL, NULL, '2025-11-20 07:04:46', '2025-11-27 11:59:58'),
(4, 'David Jones', 'Rectangle_4877_69283d58a18fa.jpg', 'actor', NULL, 'Award-winning actor known for his captivating roles in historical dramas. 📜', 'London, UK', '1985-08-04', 'Actor', NULL, 1, NULL, NULL, '2025-11-20 07:04:46', '2025-11-27 12:00:32'),
(5, 'John Miller', 'Rectangle_4879_69283d7fba76b.jpg', 'actor', NULL, 'Charismatic actor celebrated for his comedic timing and charm. 😂', 'Toronto, Canada', '1982-12-09', 'Actor', NULL, 1, NULL, NULL, '2025-11-20 07:04:46', '2025-11-27 12:01:10'),
(6, 'Daniel Anderson', 'daniel_anderson.png', 'actor', NULL, 'Talented actor known for his intense and compelling performances in horror films. 👻', 'Sydney, Australia', '1990-09-07', 'Voice Actor', NULL, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46'),
(7, 'Matthew Clark', 'matthew_clark.png', 'actor', NULL, 'Dynamic actor recognized for his roles in inspirational and motivational films. 🌟', 'Dublin, Ireland', '1980-01-10', 'Voice Actor', NULL, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46'),
(8, 'Andrew Martinez', 'andrew_martinez.png', 'actor', NULL, 'Acclaimed actor with a strong presence in romantic films. 💖', 'Madrid, Spain', '1986-01-23', 'Actor', NULL, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:47'),
(9, 'Joshua Rodriguez', 'joshua_rodriguez.png', 'actor', NULL, 'Renowned for his action-packed roles and high-energy performances. 💥', 'Mexico City, Mexico', '1985-07-19', 'Actor', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(10, 'Christopher Lopez', 'christopher_lopez.png', 'actor', NULL, 'Versatile actor known for his roles in both comedy and drama. 🎭', 'Buenos Aires, Argentina', '1991-06-13', 'Main Actor', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(11, 'Emily Johnson', 'emily_johnson.png', 'actor', NULL, 'Talented actress known for her captivating performances in dramas. 🎬', 'New York, USA', '1993-01-05', 'Main Actress', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(12, 'Laura Turner', 'laura_turner.png', 'actor', NULL, 'Renowned actress with a flair for bringing historical characters to life. 📜', 'Los Angeles, USA', '1990-08-18', 'Main Actress', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(13, 'Olivia Martinez', 'olivia_martinez.png', 'actor', NULL, 'Acclaimed actress known for her dynamic roles in romantic films. 💖', 'Madrid, Spain', '1992-03-10', 'Actress', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(14, 'Isabella Brown', 'isabella_brown.png', 'actor', NULL, 'Versatile actress with a talent for both comedy and drama. 😂', 'London, UK', '1995-06-08', 'Actress', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(15, 'Lily Clark', 'lily_clark.png', 'actor', NULL, 'Celebrated actress known for her intense performances in thrillers. 🔪', 'Toronto, Canada', '1997-05-06', 'Voice Actress', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(16, 'Charlotte Garcia', 'charlotte_garcia.png', 'actor', NULL, 'Acclaimed actress renowned for her roles in horror films. 👻', 'Sydney, Australia', '1991-02-05', 'Voice Actress', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(17, 'Amelia Martinez', 'Rectangle_4881_69283e8f02c6f.jpg', 'actor', NULL, 'Dynamic actress recognized for her roles in inspirational movies. 🌟', 'Mexico City, Mexico', '1994-07-21', 'Actress', NULL, 1, NULL, NULL, '2025-11-20 07:04:47', '2025-11-27 12:05:41'),
(18, 'Jessica Adams', 'jessica_adams.png', 'actor', NULL, 'Talented actress known for her compelling performances in action films. 💥', 'Dublin, Ireland', '1992-08-15', 'Actress', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(19, 'Megan Collins', 'megan_collins.png', 'actor', NULL, 'Versatile actress known for her roles in both romantic and drama films. 💖', 'Seoul, South Korea', '1988-03-08', 'Actress', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(20, 'Grace Taylor', 'grace_taylor.png', 'actor', NULL, 'Acclaimed actress celebrated for her performances in historical dramas. 📜', 'Cape Town, South Africa', '1989-02-11', 'Actress', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(21, 'Thomas Smith', 'thomas_smith.png', 'director', NULL, 'Visionary director known for his innovative storytelling and cinematic techniques. 🎬', 'New York, USA', '1985-04-13', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(22, 'William Johnson', 'Rectangle_4876_69283e008a33e.jpg', 'director', NULL, 'Acclaimed director with a flair for intense action sequences. 💥', 'Los Angeles, USA', '1980-04-14', 'Director', NULL, 1, NULL, NULL, '2025-11-20 07:04:47', '2025-11-27 12:03:18'),
(23, 'Henry Taylor', 'henry_taylor.png', 'director', NULL, 'Renowned director known for his compelling historical dramas. 📜', 'Chicago, USA', '1990-02-07', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(24, 'Charles Wilson', 'charles_wilson.png', 'director', NULL, 'Award-winning director famous for his work in horror films. 👻', 'London, UK', '1985-08-04', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(25, 'George Harris', 'george_harris.png', 'director', NULL, 'Innovative director known for his unique approach to comedy. 😂', 'Toronto, Canada', '1982-12-09', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(26, 'Anthony Clark', 'anthony_clark.png', 'director', NULL, 'Talented director celebrated for his inspirational and motivational films. 🌟', 'Sydney, Australia', '1980-04-18', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(27, 'Edward Lewis', 'edward_lewis.png', 'director', NULL, 'Dynamic director recognized for his work in romantic films. 💖', 'Dublin, Ireland', '1982-01-11', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(28, 'Daniel Walker', 'daniel_walker.png', 'director', NULL, 'Acclaimed director known for his thrilling and suspenseful films. 🔪', 'Madrid, Spain', '1981-05-12', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(29, 'Matthew Collins', 'matthew_collins.png', 'director', NULL, 'Renowned for his action-packed films and high-energy direction. 🎥', 'Mexico City, Mexico', '1983-02-18', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(30, 'Richard King', 'richard_king.png', 'director', NULL, 'Celebrated director known for his masterful storytelling in drama. 🎭', 'Buenos Aires, Argentina', '1987-03-27', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(31, 'Sophia Williams', 'sophia_williams.png', 'director', NULL, 'Acclaimed director known for her profound and emotional storytelling. 🎬', 'New York, USA', '1989-06-15', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(32, 'Emma Thompson', 'emma_thompson.png', 'director', NULL, 'Visionary director celebrated for her work in romantic films. 💖', 'Los Angeles, USA', '1990-08-16', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(33, 'Abigail Thompson', 'Rectangle_4878_69283e2318c1d.jpg', 'director', NULL, 'Renowned director known for her historical dramas and biopics. 📜', 'Madrid, Spain', '1992-06-21', 'Director', NULL, 1, NULL, NULL, '2025-11-20 07:04:47', '2025-11-27 12:03:53'),
(34, 'Natalie Parker', 'natalie_parker.png', 'director', NULL, 'Award-winning director famous for her suspenseful thrillers. 🔪', 'London, UK', '1991-07-25', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(35, 'Mili Davis', 'mili_davis.png', 'director', NULL, 'Talented director known for her innovative approach to comedy. 😂', 'Toronto, Canada', '1988-08-10', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(36, 'Chloe Mitchell', 'Rectangle_4880_69283e4815e65.jpg', 'director', NULL, 'Dynamic director recognized for her powerful horror films. 👻', 'Sydney, Australia', '1989-12-25', 'Director', NULL, 1, NULL, NULL, '2025-11-20 07:04:47', '2025-11-27 12:04:38'),
(37, 'Sarah Foster', 'sarah_foster.png', 'director', NULL, 'Acclaimed director known for her inspirational and motivational films. 🌟', 'Mexico City, Mexico', '1987-08-24', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(38, 'Victoria Evans', 'victoria_evans.png', 'director', NULL, 'Visionary director celebrated for her thrilling and suspenseful films. 🔪', 'London, UK', '1986-11-27', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47'),
(39, 'Ava Brown', 'Rectangle_4882_69283eb8db167.jpg', 'director', NULL, 'Renowned for her action-packed and high-energy films. 💥', 'Toronto, Canada', '1988-09-06', 'Director', NULL, 1, NULL, NULL, '2025-11-20 07:04:47', '2025-11-27 12:06:23'),
(40, 'Sophia Lee', 'sophia_lee.png', 'director', NULL, 'Celebrated director known for her compelling drama films. 🎭', 'Sydney, Australia', '1991-08-30', 'Director', NULL, NULL, NULL, NULL, '2025-11-20 07:04:47', '2025-11-20 07:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `state_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `constants`
--

CREATE TABLE `constants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(191) NOT NULL,
  `value` longtext NOT NULL,
  `sequence` int(11) NOT NULL DEFAULT 0,
  `sub_type` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `constants`
--

INSERT INTO `constants` (`id`, `name`, `type`, `value`, `sequence`, `sub_type`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'x265', 'upload_type', 'x265', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:31', '2025-11-20 07:04:31', NULL),
(2, 'Embedded', 'upload_type', 'Embedded', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:31', '2025-11-20 07:04:31', NULL),
(3, 'x265', 'STREAM_TYPE', 'x265', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:31', '2025-11-20 07:04:31', NULL),
(4, 'English', 'language', 'en', 1, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(5, 'বাংলা', 'language', 'br', 2, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(6, 'العربی', 'language', 'ar', 3, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(7, 'Vietnamese', 'language', 'vi', 4, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(8, 'Paid', 'PAYMENT_STATUS', '1', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(9, 'Pending', 'PAYMENT_STATUS', '0', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(10, 'Pending', 'PAYMENT_STATUS', '0', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(11, 'Local', 'upload_type', 'Local', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(12, 'URL', 'upload_type', 'URL', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(13, 'YouTube', 'upload_type', 'YouTube', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(14, 'HLS', 'upload_type', 'HLS', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(15, 'Vimeo', 'upload_type', 'Vimeo', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(16, 'x265', 'upload_type', 'x265', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(17, 'English', 'movie_language', 'english', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(18, 'Hindi', 'movie_language', 'hindi', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(19, 'Tamil', 'movie_language', 'tamil', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(20, 'Telugu', 'movie_language', 'telugu', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(21, 'Malayalam', 'movie_language', 'malayalam', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(22, 'Spanish', 'movie_language', 'spanish', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(23, 'French', 'movie_language', 'french', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(24, 'Arabic', 'movie_language', 'arabic', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(25, 'German', 'movie_language', 'german', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(26, '480p', 'video_quality', '480p', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(27, '720p', 'video_quality', '720p', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(28, '1080p', 'video_quality', '1080p', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(29, '1440p', 'video_quality', '1440p', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(30, '2K', 'video_quality', '2K', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(31, '4K', 'video_quality', '4K', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(32, '8K', 'video_quality', '8K', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(33, 'URL', 'STREAM_TYPE', 'URL', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(34, 'YouTube', 'STREAM_TYPE', 'YouTube', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(35, 'HLS', 'STREAM_TYPE', 'HLS', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(36, 'Vimeo', 'STREAM_TYPE', 'Vimeo', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(37, 'Embedded', 'STREAM_TYPE', 'Embedded', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(38, 'x265', 'STREAM_TYPE', 'x265', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(39, 'English', 'subtitle_language', 'en', 1, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(40, 'French', 'subtitle_language', 'fr', 2, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(41, 'Arebic', 'subtitle_language', 'ar', 3, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(42, 'Vietnamese', 'subtitle_language', 'vi', 4, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(43, 'Spanish', 'subtitle_language', 'es', 5, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(44, 'Dutch', 'subtitle_language', 'nl', 7, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(45, 'Portuguese', 'subtitle_language', 'pt', 6, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(46, 'Chnage Password', 'notification_type', 'change_password', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(47, 'Forget Email/Password', 'notification_type', 'forget_email_password', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(48, 'ID', 'notification_param_button', 'id', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(49, 'User Name', 'notification_param_button', 'user_name', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(50, 'Description / Note', 'notification_param_button', 'description', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(51, 'Your Name', 'notification_param_button', 'logged_in_user_fullname', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(52, 'Your Position', 'notification_param_button', 'logged_in_user_role', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(53, 'User\' ID', 'notification_param_button', 'user_id', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(54, 'User Password', 'notification_param_button', 'user_password', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(55, 'Link', 'notification_param_button', 'link', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(56, 'Site URL', 'notification_param_button', 'site_url', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(57, 'User', 'notification_to', 'user', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(58, 'Admin', 'notification_to', 'admin', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(59, 'Demo Admin', 'notification_to', 'demo_admin', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(60, 'TV Show Add', 'notification_type', 'tv_show_add', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(61, 'Movie Add', 'notification_type', 'movie_add', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(62, 'Episode Add', 'notification_type', 'episode_add', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(63, 'Season Add', 'notification_type', 'season_add', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(64, 'New Subscription', 'notification_type', 'new_subscription', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(65, 'Purchase Video', 'notification_type', 'purchase_video', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(66, 'Rent Video', 'notification_type', 'rent_video', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(67, 'Rent Expiry Reminder', 'notification_type', 'rent_expiry_reminder', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(68, 'Purchase Expiry Reminder', 'notification_type', 'purchase_expiry_reminder', 0, NULL, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `continue_watch`
--

CREATE TABLE `continue_watch` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `entertainment_type` varchar(191) DEFAULT NULL,
  `watched_time` varchar(191) DEFAULT NULL,
  `total_watched_time` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `episode_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `continue_watch`
--

INSERT INTO `continue_watch` (`id`, `entertainment_id`, `user_id`, `profile_id`, `entertainment_type`, `watched_time`, `total_watched_time`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`, `episode_id`) VALUES
(1, 28, 3, 3, 'movie', '00:03:00', '00:03:00', 3, 3, NULL, '2024-09-26 05:42:14', '2024-09-26 05:42:14', NULL, NULL),
(2, 99, 3, 3, 'movie', '00:06:00', '00:06:00', 3, 3, NULL, '2024-09-26 05:43:01', '2024-09-26 05:43:01', NULL, NULL),
(3, 87, 3, 3, 'movie', '00:02:00', '00:02:00', 3, 3, NULL, '2024-09-26 05:43:37', '2024-09-26 05:43:37', NULL, NULL),
(4, 13, 3, 3, 'tvshow', '00:04:00', '00:04:00', 3, 3, NULL, '2024-09-26 05:44:40', '2024-09-26 05:44:40', NULL, 41),
(5, 4, 3, 3, 'tvshow', '00:05:00', '00:05:00', 3, 3, NULL, '2024-09-26 05:45:31', '2024-09-26 05:45:31', NULL, 15),
(6, 1, 3, 3, 'tvshow', '00:01:00', '00:01:00', 3, 3, NULL, '2024-09-26 05:46:55', '2024-09-26 05:50:23', NULL, 1),
(7, 18, 3, 3, 'tvshow', '00:05:00', '00:05:00', 3, 3, NULL, '2024-09-26 05:47:54', '2024-09-26 05:47:54', NULL, 61),
(8, 26, 3, 3, 'movie', '00:02:00', '00:02:00', 3, 3, NULL, '2024-09-26 05:48:35', '2024-09-26 05:48:35', NULL, NULL),
(9, 30, 3, 3, 'movie', '00:03:00', '00:03:00', 3, 3, NULL, '2024-09-26 05:49:18', '2024-09-26 05:49:18', NULL, NULL),
(10, 2, 3, 3, 'tvshow', '00:04:00', '00:04:00', 3, 3, NULL, '2024-09-26 05:49:38', '2024-09-26 05:49:38', NULL, 9),
(11, 80, 14, 14, 'movie', '00:03:00', '00:03:00', 14, 14, NULL, '2024-09-26 05:52:09', '2024-09-26 05:52:09', NULL, NULL),
(12, 83, 14, 14, 'movie', '00:04:00', '00:04:00', 14, 14, NULL, '2024-09-26 05:53:03', '2024-09-26 05:53:03', NULL, NULL),
(13, 63, 14, 14, 'movie', '00:02:00', '00:02:00', 14, 14, NULL, '2024-09-26 05:54:10', '2024-09-26 05:54:10', NULL, NULL),
(14, 1, 14, 14, 'tvshow', '00:01:00', '00:01:00', 14, 14, NULL, '2024-09-26 05:55:25', '2024-09-26 05:55:25', NULL, 8),
(15, 20, 14, 14, 'tvshow', '00:03:00', '00:03:00', 14, 14, NULL, '2024-09-26 05:56:16', '2024-09-26 05:56:16', NULL, 70),
(16, 19, 14, 14, 'tvshow', '00:02:00', '00:02:00', 14, 14, NULL, '2024-09-26 05:56:39', '2024-09-26 05:56:39', NULL, 64),
(17, 22, 1, NULL, 'movie', '00:00:02', '00:00:02', 1, 1, NULL, '2025-11-27 10:49:19', '2025-11-27 10:49:45', NULL, NULL),
(18, 25, 1, NULL, 'movie', '00:00:00', '00:00:00', 1, 1, NULL, '2025-11-27 10:53:36', '2025-11-27 10:53:36', NULL, NULL),
(19, 103, 1, NULL, 'movie', '00:00:05', '00:00:05', 1, 1, NULL, '2025-11-27 11:30:02', '2025-11-27 11:30:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `dial_code` int(11) DEFAULT NULL,
  `currency_name` varchar(191) DEFAULT NULL,
  `symbol` varchar(191) DEFAULT NULL,
  `currency_code` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `dial_code`, `currency_name`, `symbol`, `currency_code`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AF', 'Afghanistan', 93, 'Afghan Afghani', '؋', 'AFN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(2, 'AL', 'Albania', 355, 'Albanian Lek', 'Lek', 'ALL', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(3, 'DZ', 'Algeria', 213, 'Algerian Dinar', 'د.ج', 'DZD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(4, 'AS', 'American Samoa', 1684, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(5, 'AD', 'Andorra', 376, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(6, 'AO', 'Angola', 244, 'Angolan Kwanza', 'Kz', 'AOA', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(7, 'AI', 'Anguilla', 1264, 'East Caribbean Dollar', '$', 'XCD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(8, 'AQ', 'Antarctica', 0, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(9, 'AG', 'Antigua And Barbuda', 1268, 'East Caribbean Dollar', '$', 'XCD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(10, 'AR', 'Argentina', 54, 'Argentine Peso', '$', 'ARS', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(11, 'AM', 'Armenia', 374, 'Armenian Dram', '֏', 'AMD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(12, 'AW', 'Aruba', 297, 'Aruban Florin', 'ƒ', 'AWG', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(13, 'AU', 'Australia', 61, 'Australian Dollar', '$', 'AUD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(14, 'AT', 'Austria', 43, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(15, 'AZ', 'Azerbaijan', 994, 'Azerbaijani Manat', '₼', 'AZN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(16, 'BS', 'Bahamas The', 1242, 'Bahamian Dollar', '$', 'BSD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(17, 'BH', 'Bahrain', 973, 'Bahraini Dinar', 'ب.د', 'BHD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(18, 'BD', 'Bangladesh', 880, 'Bangladeshi Taka', '৳', 'BDT', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(19, 'BB', 'Barbados', 1246, 'Barbadian Dollar', '$', 'BBD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(20, 'BY', 'Belarus', 375, 'Belarusian Ruble', 'Br', 'BYN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(21, 'BE', 'Belgium', 32, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(22, 'BZ', 'Belize', 501, 'Belize Dollar', '$', 'BZD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(23, 'BJ', 'Benin', 229, 'West African CFA franc', 'Fr', 'XOF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(24, 'BM', 'Bermuda', 1441, 'Bermudian Dollar', '$', 'BMD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(25, 'BT', 'Bhutan', 975, 'Bhutanese Ngultrum', 'Nu.', 'BTN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(26, 'BO', 'Bolivia', 591, 'Bolivian Boliviano', 'Bs.', 'BOB', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(27, 'BA', 'Bosnia and Herzegovina', 387, 'Bosnia and Herzegovina Convertible Mark', 'КМ', 'BAM', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(28, 'BW', 'Botswana', 267, 'Botswana Pula', 'P', 'BWP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(29, 'BV', 'Bouvet Island', 0, 'Norwegian Krone', 'kr', 'NOK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(30, 'BR', 'Brazil', 55, 'Brazilian Real', 'R$', 'BRL', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(31, 'IO', 'British Indian Ocean Territory', 246, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(32, 'BN', 'Brunei', 673, 'Brunei Dollar', '$', 'BND', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(33, 'BG', 'Bulgaria', 359, 'Bulgarian Lev', 'лв.', 'BGN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(34, 'BF', 'Burkina Faso', 226, 'West African CFA franc', 'Fr', 'XOF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(35, 'BI', 'Burundi', 257, 'Burundian Franc', 'Fr', 'BIF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(36, 'KH', 'Cambodia', 855, 'Cambodian Riel', '៛', 'KHR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(37, 'CM', 'Cameroon', 237, 'Central African CFA franc', 'Fr', 'XAF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(38, 'CA', 'Canada', 1, 'Canadian Dollar', '$', 'CAD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(39, 'CV', 'Cape Verde', 238, 'Cape Verdean Escudo', '$', 'CVE', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(40, 'KY', 'Cayman Islands', 1345, 'Cayman Islands Dollar', '$', 'KYD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(41, 'CF', 'Central African Republic', 236, 'Central African CFA franc', 'Fr', 'XAF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(42, 'TD', 'Chad', 235, 'Central African CFA franc', 'Fr', 'XAF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(43, 'CL', 'Chile', 56, 'Chilean Peso', '$', 'CLP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(44, 'CN', 'China', 86, 'Chinese Yuan', '¥', 'CNY', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(45, 'CX', 'Christmas Island', 61, 'Australian Dollar', '$', 'AUD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(46, 'CC', 'Cocos (Keeling) Islands', 672, 'Australian Dollar', '$', 'AUD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(47, 'CO', 'Colombia', 57, 'Colombian Peso', '$', 'COP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(48, 'KM', 'Comoros', 269, 'Comorian Franc', 'Fr', 'KMF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(49, 'CG', 'Republic Of The Congo', 242, 'Central African CFA franc', 'Fr', 'XAF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(50, 'CD', 'Democratic Republic Of The Congo', 242, 'Congolese Franc', 'Fr', 'CDF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(51, 'CK', 'Cook Islands', 682, 'New Zealand Dollar', '$', 'NZD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(52, 'CR', 'Costa Rica', 506, 'Costa Rican Colon', '₡', 'CRC', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, 'West African CFA franc', 'Fr', 'XOF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(54, 'HR', 'Croatia (Hrvatska)', 385, 'Croatian Kuna', 'kn', 'HRK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(55, 'CU', 'Cuba', 53, 'Cuban Peso', '$', 'CUP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(56, 'CY', 'Cyprus', 357, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(57, 'CZ', 'Czech Republic', 420, 'Czech Koruna', 'Kč', 'CZK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(58, 'DK', 'Denmark', 45, 'Danish Krone', 'kr', 'DKK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(59, 'DJ', 'Djibouti', 253, 'Djiboutian Franc', 'Fr', 'DJF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(60, 'DM', 'Dominica', 1767, 'East Caribbean Dollar', '$', 'XCD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(61, 'DO', 'Dominican Republic', 1809, 'Dominican Peso', '$', 'DOP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(62, 'TP', 'East Timor', 670, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(63, 'EC', 'Ecuador', 593, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(64, 'EG', 'Egypt', 20, 'Egyptian Pound', 'E£', 'EGP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(65, 'SV', 'El Salvador', 503, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(66, 'GQ', 'Equatorial Guinea', 240, 'Central African CFA franc', 'Fr', 'XAF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(67, 'ER', 'Eritrea', 291, 'Eritrean Nakfa', 'Nfk', 'ERN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(68, 'EE', 'Estonia', 372, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(69, 'ET', 'Ethiopia', 251, 'Ethiopian Birr', 'Br', 'ETB', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(70, 'XA', 'External Territories of Australia', 61, 'Australian Dollar', '$', 'AUD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(71, 'FK', 'Falkland Islands', 500, 'Falkland Islands Pound', '£', 'FKP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(72, 'FO', 'Faroe Islands', 298, 'Danish Krone', 'kr', 'DKK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(73, 'FJ', 'Fiji Islands', 679, 'Fijian Dollar', '$', 'FJD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(74, 'FI', 'Finland', 358, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(75, 'FR', 'France', 33, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(76, 'GF', 'French Guiana', 594, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(77, 'PF', 'French Polynesia', 689, 'CFP Franc', 'Fr', 'XPF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(78, 'TF', 'French Southern Territories', 0, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(79, 'GA', 'Gabon', 241, 'Central African CFA franc', 'Fr', 'XAF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(80, 'GM', 'Gambia The', 220, 'Gambian Dalasi', 'D', 'GMD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(81, 'GE', 'Georgia', 995, 'Georgian Lari', 'ლ', 'GEL', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(82, 'DE', 'Germany', 49, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(83, 'GH', 'Ghana', 233, 'Ghanaian Cedi', '₵', 'GHS', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(84, 'GI', 'Gibraltar', 350, 'Gibraltar Pound', '£', 'GIP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(85, 'GR', 'Greece', 30, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(86, 'GL', 'Greenland', 299, 'Danish Krone', 'kr', 'DKK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(87, 'GD', 'Grenada', 1473, 'East Caribbean Dollar', '$', 'XCD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(88, 'GP', 'Guadeloupe', 590, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(89, 'GU', 'Guam', 1671, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(90, 'GT', 'Guatemala', 502, 'Guatemalan Quetzal', 'Q', 'GTQ', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(91, 'XU', 'Guernsey and Alderney', 44, 'Pound Sterling', '£', 'GBP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(92, 'GN', 'Guinea', 224, 'Guinean Franc', 'Fr', 'GNF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(93, 'GW', 'Guinea-Bissau', 245, 'West African CFA franc', 'Fr', 'XOF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(94, 'GY', 'Guyana', 592, 'Guyanaese Dollar', '$', 'GYD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(95, 'HT', 'Haiti', 509, 'Haitian Gourde', 'G', 'HTG', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(96, 'HM', 'Heard and McDonald Islands', 0, 'Australian Dollar', '$', 'AUD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(97, 'HN', 'Honduras', 504, 'Honduran Lempira', 'L', 'HNL', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(98, 'HK', 'Hong Kong S.A.R.', 852, 'Hong Kong Dollar', '$', 'HKD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(99, 'HU', 'Hungary', 36, 'Hungarian Forint', 'Ft', 'HUF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(100, 'IS', 'Iceland', 354, 'Icelandic Krona', 'kr', 'ISK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(101, 'IN', 'India', 91, 'Indian Rupee', '₹', 'INR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(102, 'ID', 'Indonesia', 62, 'Indonesian Rupiah', 'Rp', 'IDR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(103, 'IR', 'Iran', 98, 'Iranian Rial', '﷼', 'IRR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(104, 'IQ', 'Iraq', 964, 'Iraqi Dinar', 'ع.د', 'IQD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(105, 'IE', 'Ireland', 353, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(106, 'IL', 'Israel', 972, 'Israeli New Shekel', '₪', 'ILS', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(107, 'IT', 'Italy', 39, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(108, 'JM', 'Jamaica', 1876, 'Jamaican Dollar', '$', 'JMD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(109, 'JP', 'Japan', 81, 'Japanese Yen', '¥', 'JPY', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(110, 'XJ', 'Jersey', 44, 'Pound Sterling', '£', 'GBP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(111, 'JO', 'Jordan', 962, 'Jordanian Dinar', 'د.ا', 'JOD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(112, 'KZ', 'Kazakhstan', 7, 'Kazakhstani Tenge', '〒', 'KZT', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(113, 'KE', 'Kenya', 254, 'Kenyan Shilling', 'Sh', 'KES', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(114, 'KI', 'Kiribati', 686, 'Australian Dollar', '$', 'AUD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(115, 'KP', 'Korea North', 850, 'North Korean Won', '₩', 'KPW', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(116, 'KR', 'Korea South', 82, 'South Korean Won', '₩', 'KRW', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(117, 'KW', 'Kuwait', 965, 'Kuwaiti Dinar', 'د.ك', 'KWD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(118, 'KG', 'Kyrgyzstan', 996, 'Kyrgyzstani Som', 'с', 'KGS', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(119, 'LA', 'Laos', 856, 'Lao Kip', '₭', 'LAK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(120, 'LV', 'Latvia', 371, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(121, 'LB', 'Lebanon', 961, 'Lebanese Pound', 'ل.ل', 'LBP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(122, 'LS', 'Lesotho', 266, 'Lesotho Loti', 'L', 'LSL', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(123, 'LR', 'Liberia', 231, 'Liberian Dollar', '$', 'LRD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(124, 'LY', 'Libya', 218, 'Libyan Dinar', 'ل.د', 'LYD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(125, 'LI', 'Liechtenstein', 423, 'Swiss Franc', 'Fr', 'CHF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(126, 'LT', 'Lithuania', 370, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(127, 'LU', 'Luxembourg', 352, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(128, 'MO', 'Macau S.A.R.', 853, 'Macanese Pataca', 'MOP$', 'MOP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(129, 'MK', 'Macedonia', 389, 'Macedonian Denar', 'ден', 'MKD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(130, 'MG', 'Madagascar', 261, 'Malagasy Ariary', 'Ar', 'MGA', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(131, 'MW', 'Malawi', 265, 'Malawian Kwacha', 'MK', 'MWK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(132, 'MY', 'Malaysia', 60, 'Malaysian Ringgit', 'RM', 'MYR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(133, 'MV', 'Maldives', 960, 'Maldivian Rufiyaa', '.ރ', 'MVR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(134, 'ML', 'Mali', 223, 'West African CFA franc', 'Fr', 'XOF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(135, 'MT', 'Malta', 356, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(136, 'XM', 'Man (Isle of)', 44, 'Pound Sterling', '£', 'GBP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(137, 'MH', 'Marshall Islands', 692, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(138, 'MQ', 'Martinique', 596, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(139, 'MR', 'Mauritania', 222, 'Mauritanian Ouguiya', 'UM', 'MRU', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(140, 'MU', 'Mauritius', 230, 'Mauritian Rupee', '₨', 'MUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(141, 'YT', 'Mayotte', 269, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(142, 'MX', 'Mexico', 52, 'Mexican Peso', '$', 'MXN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(143, 'FM', 'Micronesia', 691, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(144, 'MD', 'Moldova', 373, 'Moldovan Leu', 'L', 'MDL', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(145, 'MC', 'Monaco', 377, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(146, 'MN', 'Mongolia', 976, 'Mongolian Tugrik', '₮', 'MNT', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(147, 'MS', 'Montserrat', 1664, 'East Caribbean Dollar', '$', 'XCD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(148, 'MA', 'Morocco', 212, 'Moroccan Dirham', 'DH', 'MAD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(149, 'MZ', 'Mozambique', 258, 'Mozambican Metical', 'MT', 'MZN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(150, 'MM', 'Myanmar', 95, 'Myanmar Kyat', 'Ks', 'MMK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(151, 'NA', 'Namibia', 264, 'Namibian Dollar', '$', 'NAD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(152, 'NR', 'Nauru', 674, 'Australian Dollar', '$', 'AUD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(153, 'NP', 'Nepal', 977, 'Nepalese Rupee', '₨', 'NPR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(154, 'AN', 'Netherlands Antilles', 599, 'Netherlands Antillean Guilder', 'ƒ', 'ANG', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(155, 'NL', 'Netherlands The', 31, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(156, 'NC', 'New Caledonia', 687, 'CFP Franc', 'Fr', 'XPF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(157, 'NZ', 'New Zealand', 64, 'New Zealand Dollar', '$', 'NZD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(158, 'NI', 'Nicaragua', 505, 'Nicaraguan Cordoba', 'C$', 'NIO', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(159, 'NE', 'Niger', 227, 'West African CFA franc', 'Fr', 'XOF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(160, 'NG', 'Nigeria', 234, 'Nigerian Naira', '₦', 'NGN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(161, 'NU', 'Niue', 683, 'New Zealand Dollar', '$', 'NZD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(162, 'NF', 'Norfolk Island', 672, 'Australian Dollar', '$', 'AUD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(163, 'MP', 'Northern Mariana Islands', 1670, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(164, 'NO', 'Norway', 47, 'Norwegian Krone', 'kr', 'NOK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(165, 'OM', 'Oman', 968, 'Omani Rial', 'ر.ع.', 'OMR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(166, 'PK', 'Pakistan', 92, 'Pakistani Rupee', '₨', 'PKR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(167, 'PW', 'Palau', 680, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(168, 'PS', 'Palestinian Territory Occupied', 970, 'Israeli New Shekel', '₪', 'ILS', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(169, 'PA', 'Panama', 507, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(170, 'PG', 'Papua new Guinea', 675, 'Papua New Guinean Kina', 'K', 'PGK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(171, 'PY', 'Paraguay', 595, 'Paraguayan Guarani', '₲', 'PYG', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(172, 'PE', 'Peru', 51, 'Peruvian Nuevo Sol', 'S/.', 'PEN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(173, 'PH', 'Philippines', 63, 'Philippine Peso', '₱', 'PHP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(174, 'PN', 'Pitcairn Island', 0, 'New Zealand Dollar', '$', 'NZD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(175, 'PL', 'Poland', 48, 'Polish Zloty', 'zł', 'PLN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(176, 'PT', 'Portugal', 351, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(177, 'PR', 'Puerto Rico', 1787, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(178, 'QA', 'Qatar', 974, 'Qatari Rial', 'ر.ق', 'QAR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(179, 'RE', 'Reunion', 262, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(180, 'RO', 'Romania', 40, 'Romanian Leu', 'lei', 'RON', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(181, 'RU', 'Russia', 7, 'Russian Ruble', '₽', 'RUB', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(182, 'RW', 'Rwanda', 250, 'Rwandan Franc', 'Fr', 'RWF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(183, 'SH', 'Saint Helena', 290, 'Saint Helena Pound', '£', 'SHP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(184, 'KN', 'Saint Kitts And Nevis', 1869, 'East Caribbean Dollar', '$', 'XCD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(185, 'LC', 'Saint Lucia', 1758, 'East Caribbean Dollar', '$', 'XCD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(186, 'PM', 'Saint Pierre and Miquelon', 508, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, 'East Caribbean Dollar', '$', 'XCD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(188, 'WS', 'Samoa', 684, 'Samoan Tala', 'T', 'WST', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(189, 'SM', 'San Marino', 378, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(190, 'ST', 'Sao Tome and Principe', 239, 'Sao Tome and Principe Dobra', 'Db', 'STN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(191, 'SA', 'Saudi Arabia', 966, 'Saudi Riyal', 'ر.س', 'SAR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(192, 'SN', 'Senegal', 221, 'West African CFA franc', 'Fr', 'XOF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(193, 'RS', 'Serbia', 381, 'Serbian Dinar', 'дин.', 'RSD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(194, 'SC', 'Seychelles', 248, 'Seychellois Rupee', '₨', 'SCR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(195, 'SL', 'Sierra Leone', 232, 'Sierra Leonean Leone', 'Le', 'SLL', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(196, 'SG', 'Singapore', 65, 'Singapore Dollar', '$', 'SGD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(197, 'SK', 'Slovakia', 421, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(198, 'SI', 'Slovenia', 386, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(199, 'SB', 'Solomon Islands', 677, 'Solomon Islands Dollar', '$', 'SBD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(200, 'SO', 'Somalia', 252, 'Somali Shilling', 'Sh', 'SOS', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(201, 'ZA', 'South Africa', 27, 'South African Rand', 'R', 'ZAR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(202, 'GS', 'South Georgia', 0, 'British Pound Sterling', '£', 'GBP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(203, 'SS', 'South Sudan', 211, 'South Sudanese Pound', '£', 'SSP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(204, 'ES', 'Spain', 34, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(205, 'LK', 'Sri Lanka', 94, 'Sri Lankan Rupee', '₨', 'LKR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(206, 'SD', 'Sudan', 249, 'Sudanese Pound', 'ج.س.', 'SDG', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(207, 'SR', 'Suriname', 597, 'Surinamese Dollar', '$', 'SRD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(208, 'SJ', 'Svalbard And Jan Mayen Islands', 47, 'Norwegian Krone', 'kr', 'NOK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(209, 'SZ', 'Swaziland', 268, 'Swazi Lilangeni', 'L', 'SZL', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(210, 'SE', 'Sweden', 46, 'Swedish Krona', 'kr', 'SEK', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(211, 'CH', 'Switzerland', 41, 'Swiss Franc', 'Fr', 'CHF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(212, 'SY', 'Syria', 963, 'Syrian Pound', '£', 'SYP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(213, 'TW', 'Taiwan', 886, 'Taiwan Dollar', 'NT$', 'TWD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(214, 'TJ', 'Tajikistan', 992, 'Tajikistani Somoni', 'ЅМ', 'TJS', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(215, 'TZ', 'Tanzania', 255, 'Tanzanian Shilling', 'Sh', 'TZS', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(216, 'TH', 'Thailand', 66, 'Thai Baht', '฿', 'THB', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(217, 'TG', 'Togo', 228, 'West African CFA franc', 'Fr', 'XOF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(218, 'TK', 'Tokelau', 690, 'New Zealand Dollar', '$', 'NZD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(219, 'TO', 'Tonga', 676, 'Tongan Pa\'anga', 'T$', 'TOP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(220, 'TT', 'Trinidad And Tobago', 1868, 'Trinidad and Tobago Dollar', '$', 'TTD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(221, 'TN', 'Tunisia', 216, 'Tunisian Dinar', 'د.ت', 'TND', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(222, 'TR', 'Turkey', 90, 'Turkish Lira', '₺', 'TRY', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(223, 'TM', 'Turkmenistan', 993, 'Turkmenistani Manat', 'm', 'TMT', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(224, 'TC', 'Turks And Caicos Islands', 1649, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(225, 'TV', 'Tuvalu', 688, 'Australian Dollar', '$', 'AUD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(226, 'UG', 'Uganda', 256, 'Ugandan Shilling', 'Sh', 'UGX', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(227, 'UA', 'Ukraine', 380, 'Ukrainian Hryvnia', '₴', 'UAH', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(228, 'AE', 'United Arab Emirates', 971, 'United Arab Emirates Dirham', 'د.إ', 'AED', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(229, 'GB', 'United Kingdom', 44, 'British Pound Sterling', '£', 'GBP', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(230, 'US', 'United States', 1, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(231, 'UM', 'United States Minor Outlying Islands', 1, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(232, 'UY', 'Uruguay', 598, 'Uruguayan Peso', '$', 'UYU', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(233, 'UZ', 'Uzbekistan', 998, 'Uzbekistani Som', 'лв', 'UZS', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(234, 'VU', 'Vanuatu', 678, 'Vanuatu Vatu', 'VT', 'VUV', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(235, 'VA', 'Vatican City State (Holy See)', 39, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(236, 'VE', 'Venezuela', 58, 'Venezuelan Bolivar', 'Bs.', 'VES', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(237, 'VN', 'Vietnam', 84, 'Vietnamese Dong', '₫', 'VND', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(238, 'VG', 'Virgin Islands (British)', 1284, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(239, 'VI', 'Virgin Islands (US)', 1340, 'United States Dollar', '$', 'USD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(240, 'WF', 'Wallis And Futuna Islands', 681, 'CFP Franc', 'Fr', 'XPF', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(241, 'EH', 'Western Sahara', 212, 'Moroccan Dirham', 'DH', 'MAD', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(242, 'YE', 'Yemen', 967, 'Yemeni Rial', '﷼', 'YER', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(243, 'YU', 'Yugoslavia', 38, 'Yugoslavian Dinar', 'дин.', 'YUN', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(244, 'ZM', 'Zambia', 260, 'Zambian Kwacha', 'ZK', 'ZMW', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(245, 'ZW', 'Zimbabwe', 263, 'Zimbabwean Dollar', '$', 'ZWL', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(246, 'AX', 'Åland Islands', 358, 'Euro', '€', 'EUR', 1, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `discount_type` enum('fixed','percentage') NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_subscription_plan`
--

CREATE TABLE `coupon_subscription_plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_plan_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_name` varchar(191) NOT NULL,
  `currency_symbol` varchar(191) DEFAULT NULL,
  `currency_code` varchar(191) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `currency_position` enum('left','right','left_with_space','right_with_space') NOT NULL DEFAULT 'left',
  `no_of_decimal` int(10) UNSIGNED NOT NULL,
  `thousand_separator` varchar(191) DEFAULT NULL,
  `decimal_separator` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `currency_symbol`, `currency_code`, `is_primary`, `currency_position`, `no_of_decimal`, `thousand_separator`, `decimal_separator`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'United States Dollar', '$', 'USD', 1, 'left', 2, ',', '.', 2, 2, NULL, '2024-07-30 01:48:52', '2024-07-30 01:49:18', NULL),
(2, 'Euro', '€', 'EUR', 0, 'left', 2, ',', '.', 2, 2, NULL, '2024-07-30 01:49:08', '2024-07-30 01:49:08', NULL),
(3, 'Indian Rupee', '₹', 'INR', 0, 'left', 2, ',', '.', 2, 2, NULL, '2024-07-30 01:49:52', '2024-07-30 01:49:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_ads_setting`
--

CREATE TABLE `custom_ads_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `url_type` varchar(191) NOT NULL,
  `placement` varchar(191) DEFAULT NULL,
  `media` varchar(191) DEFAULT NULL,
  `redirect_url` varchar(191) DEFAULT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `skip_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `skip_after` varchar(191) DEFAULT NULL,
  `target_content_type` varchar(191) DEFAULT NULL,
  `target_categories` longtext DEFAULT NULL,
  `max_views` int(11) DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_ads_setting`
--

INSERT INTO `custom_ads_setting` (`id`, `name`, `type`, `url_type`, `placement`, `media`, `redirect_url`, `duration`, `skip_enabled`, `skip_after`, `target_content_type`, `target_categories`, `max_views`, `is_enable`, `status`, `start_date`, `end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BigSale', 'image', 'local', 'home_page', 'pexels-kyle-loftus-1280314238-32439172.jpg', NULL, NULL, 0, NULL, NULL, '[]', NULL, 0, 1, '2025-11-20', '2026-11-20', '2025-08-12 02:08:23', '2025-11-20 07:05:07', NULL),
(2, 'MovieTicket', 'image', 'local', 'home_page', 'pexels-kyle-loftus-1280314238-32439172.jpg', NULL, NULL, 0, NULL, NULL, '[]', NULL, 0, 1, '2025-11-20', '2026-11-20', '2025-08-12 02:09:08', '2025-11-20 07:05:07', NULL),
(3, 'EpisodePromo', 'image', 'local', 'home_page', 'pexels-minhle17vn-3062545.jpg', NULL, NULL, 0, NULL, NULL, '[]', NULL, 0, 1, '2025-11-20', '2026-11-20', '2025-08-12 02:10:35', '2025-11-20 07:05:07', NULL),
(4, 'ServicePromo', 'image', 'local', 'home_page', 'pexels-ron-lach-9627162.jpg', NULL, NULL, 0, NULL, NULL, '[]', NULL, 0, 1, '2025-11-20', '2026-11-20', '2025-08-12 02:11:21', '2025-11-20 07:05:07', NULL),
(5, 'GamingEvent', 'image', 'local', 'player', 'pexels-ron-lach-9627169.jpg', NULL, NULL, 0, NULL, 'movie', '[29,31,34,36,42,83]', NULL, 0, 1, '2025-11-20', '2026-11-20', '2025-08-12 02:13:53', '2025-11-20 07:05:07', NULL),
(6, 'FashionLine', 'image', 'local', 'player', 'pexels-minhle17vn-3062545.jpg', NULL, NULL, 0, NULL, 'video', '[7,8,9,11,31,32,33,34]', NULL, 0, 1, '2025-11-20', '2026-11-20', '2025-08-12 02:21:40', '2025-11-20 07:05:07', NULL),
(7, 'NewMusicAlbum', 'image', 'local', 'banner', 'pexels-kyle-loftus-1280314238-32439172.jpg', NULL, NULL, 0, NULL, 'movie', '[88,89,91,103]', NULL, 0, 1, '2025-11-20', '2026-11-20', '2025-08-12 02:23:36', '2025-11-20 07:05:07', NULL),
(8, 'StreamingSvc', 'image', 'local', 'banner', 'pexels-ron-lach-9627169.jpg', NULL, NULL, 0, NULL, 'video', '[12,15,16]', NULL, 0, 1, '2025-11-20', '2026-11-20', '2025-08-12 02:25:05', '2025-11-20 07:05:07', NULL),
(9, 'GamingPromo', 'image', 'local', 'banner', 'pexels-ron-lach-9627162.jpg', NULL, NULL, 0, NULL, 'tvshow', '[15,16,21,22]', NULL, 0, 1, '2025-11-20', '2026-11-20', '2025-08-12 02:26:26', '2025-11-20 07:05:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device_id` varchar(191) DEFAULT NULL,
  `device_name` varchar(191) DEFAULT NULL,
  `active_profile` varchar(191) DEFAULT NULL,
  `platform` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entertainments`
--

CREATE TABLE `entertainments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `tmdb_id` varchar(191) DEFAULT NULL,
  `thumbnail_url` text DEFAULT NULL,
  `poster_url` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `trailer_url_type` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `trailer_url` text DEFAULT NULL,
  `movie_access` varchar(191) DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `language` varchar(191) DEFAULT NULL,
  `IMDb_rating` varchar(191) DEFAULT NULL,
  `content_rating` longtext DEFAULT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT 0,
  `video_upload_type` varchar(191) DEFAULT NULL,
  `video_url_input` text DEFAULT NULL,
  `video_quality_url` text DEFAULT NULL,
  `enable_quality` tinyint(1) NOT NULL DEFAULT 0,
  `download_status` tinyint(1) NOT NULL DEFAULT 0,
  `download_type` varchar(191) DEFAULT NULL,
  `download_url` text DEFAULT NULL,
  `enable_download_quality` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `poster_tv_url` text DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `purchase_type` varchar(191) DEFAULT NULL,
  `access_duration` int(11) DEFAULT NULL,
  `discount` varchar(191) DEFAULT NULL,
  `available_for` int(11) DEFAULT NULL,
  `subtitle_file` varchar(191) DEFAULT NULL,
  `enable_subtitle` tinyint(1) NOT NULL DEFAULT 0,
  `subtitle_language` varchar(191) DEFAULT NULL,
  `is_default_subtitle` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `seo_image` varchar(191) DEFAULT NULL,
  `google_site_verification` varchar(191) DEFAULT NULL,
  `canonical_url` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entertainments`
--

INSERT INTO `entertainments` (`id`, `name`, `tmdb_id`, `thumbnail_url`, `poster_url`, `description`, `trailer_url_type`, `type`, `trailer_url`, `movie_access`, `plan_id`, `language`, `IMDb_rating`, `content_rating`, `duration`, `release_date`, `is_restricted`, `video_upload_type`, `video_url_input`, `video_quality_url`, `enable_quality`, `download_status`, `download_type`, `download_url`, `enable_download_quality`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`, `poster_tv_url`, `price`, `purchase_type`, `access_duration`, `discount`, `available_for`, `subtitle_file`, `enable_subtitle`, `subtitle_language`, `is_default_subtitle`, `meta_title`, `meta_keywords`, `meta_description`, `seo_image`, `google_site_verification`, `canonical_url`, `short_description`) VALUES
(1, 'The Smiling Shadows', NULL, 'download_(1)_69283b52840b2.jpeg', 'download_(1)_69283b52840b2.jpeg', '<p>A chilling tale where sinister smiles hide dark secrets and haunting mysteries. 😱👻</p>', 'YouTube', 'tvshow', 'https://youtu.be/7_MJp5AbSwA?si=Mtx9h0wlxtn4o_2Q', 'free', NULL, 'english', '7.5', 'TV-MA (Mature Audiences)', '05:20', '2019-04-23', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:47', '2025-11-27 11:52:03', NULL, 'download_(1)_69283b52840b2.jpeg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Gunslinger\'s Justice', NULL, 'download_(2)_69283b82d3859.jpeg', 'download_(2)_69283b82d3859.jpeg', '<p>Witness the relentless quest of a gunslinger for justice in a town plagued by corruption and violence. 🌵🔫</p>', 'YouTube', 'tvshow', 'https://youtu.be/ob8iKn-gLFI?si=sUpU_bMpIDocTFZ6', 'paid', 1, 'english', '8', 'TV-MA (Mature Audiences)', '03:21', '2025-12-07', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:48', '2025-11-27 11:52:52', NULL, 'download_(2)_69283b82d3859.jpeg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Raziel\'s Daring Rescue', NULL, 'download_(6)_69283bb3dba6b.jpeg', 'download_(6)_69283bb3dba6b.jpeg', '<p>In this tv show, embark on a magical journey with Raziel, a courageous young hero, who sets out to rescue his friend from the clutches of the wicked Gothel. Alongside a band of loyal companions, Raziel navigates enchanted forests, treacherous mountains, and mystical realms, overcoming obstacles and discovering the true meaning of friendship and bravery. This captivating adventure, filled with breathtaking animation and heartwarming moments, will enchant viewers of all ages. 🌟🏰✨</p>', 'YouTube', 'tvshow', 'https://youtu.be/y-OP1mCiJ5M?si=wtaEPe357ZkqQ3Xo', 'paid', 2, 'english', '7.8', 'PG (Parental Guidance Suggested)', '04:25', '2025-12-02', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:48', '2025-11-27 11:53:40', NULL, 'download_(6)_69283bb3dba6b.jpeg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Shadow Pursuit', NULL, 'download_69283be7124bf.jpeg', 'download_69283be7124bf.jpeg', '<p>With each clue, the mystery deepens, leading to shocking revelations and deadly encounters. As James races against time, he discovers that the chase is personal, and failure is not an option. 🔍🕵️&zwj;♂️</p>', 'YouTube', 'tvshow', 'https://youtu.be/T5UokLYVJMI?si=7DVFmcXSmf5zVGKj', 'paid', 3, 'english', '8.2', 'TV-MA (Mature Audiences)', '05:50', '2022-08-05', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:48', '2025-11-27 11:54:29', NULL, 'download_69283be7124bf.jpeg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Veil of Darkness', NULL, 'veil_of_darkness_thumb.png', 'veil_of_darkness_poster.png', 'Veil of Darkness plunges viewers into the mysterious and haunted town of Ravenwood, where malevolent forces lurk in the shadows. As the residents uncover the town\'s dark secrets, they must confront their deepest fears and battle against the growing evil that threatens to consume them. With each revelation, the veil of darkness grows thicker, challenging their courage and will to survive. 🖤👻', 'YouTube', 'tvshow', 'https://youtu.be/Lz2pAf-nuQE?si=2W0a6QbgwZjxWmk5', 'paid', 4, 'english', '4', 'TV-MA (Mature Audiences)', '08:50', '2023-09-14', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL, 'veil_of_darkness_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'The Hidden Truth', NULL, 'images_(1)_69283c312dd3d.jpeg', 'images_(1)_69283c312dd3d.jpeg', '<p>Investigator Alex Reed delves into a labyrinth of hidden truths and deception, uncovering layers of betrayal that threaten to unravel everything he holds dear. As he pieces together the puzzle, Reed faces dangerous adversaries and uncovers shocking secrets, leading to a gripping tale of trust, treachery, and the relentless pursuit of justice. 🔍🕵️&zwj;♂️</p>', 'YouTube', 'tvshow', 'https://youtu.be/em1ec7BZHJw?si=MSD31eT22XrZ7ohu', 'free', NULL, 'english', '8.1', 'TV-MA (Mature Audiences)', '09:50', '2024-01-11', 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:48', '2025-11-27 11:55:51', NULL, 'images_(1)_69283c312dd3d.jpeg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'The Forgotten Road', NULL, 'the_forgotten_road_thumb.png', 'the_forgotten_road_poster.png', '🌪️ In a twisted reimagining of the Wizard of Oz, Dorothy’s granddaughter Emily is summoned to confront the terrors of a cursed realm that has haunted her family for generations. \"The Forgotten Road\" takes you into a nightmarish version of Oz where the whimsical magic has decayed into darkness. Dorothy Gale, now an elderly woman haunted by her past encounters, watches helplessly as her granddaughter Emily is called into the sinister world. With paranormal forces lurking in every corner, Emily must navigate a crumbling land of danger and secrets to end the torment that has plagued her family for decades. The yellow brick road leads to terror, and survival is anything but guaranteed. 🌕🖤⚡', 'YouTube', 'tvshow', 'https://youtu.be/LALlUFEGdeE?si=pG5fTkaYGyGBNMr2', 'paid', 1, 'english', '8', 'TV-MA (Mature Audiences)', '06:50', '2024-01-17', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL, 'the_forgotten_road_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Wolfbound', NULL, 'images_69283c6ae147e.jpeg', 'images_69283c6ae147e.jpeg', '<p>🐺 Maddy, a young girl who knows her wolfblood heritage, meets Rhydian, a mysterious boy who smells like her pack. Is he one of them? Uncover secrets, face dangers, and forge unlikely bonds in this thrilling action-packed adventure! 🌕⚔️</p>', 'YouTube', 'tvshow', 'https://youtu.be/6sxnOLRGkhw?si=WrBfEDVah3Z-vFwO', 'free', NULL, 'english', '8', 'TV-MA (Mature Audiences)', '08:50', '2024-02-16', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:48', '2025-11-27 11:56:42', NULL, 'images_69283c6ae147e.jpeg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Legacy of the Tribes', NULL, 'legacy_of_the_tribes_thumb.png', 'legacy_of_the_tribes_poster.png', '🛡️ In the ancient world, tribal nations face an overwhelming threat as invaders seek to destroy their sacred lands. With their survival and heritage on the line, the tribes set aside differences and unite for a common cause. Guided by the strength of their ancestors, they embark on an epic journey of warfare, unity, and bravery. Together, they must defend their homeland against ruthless enemies, forging a legacy that will be remembered for generations. Their battles, bonds, and sacrifice will shape the future of their people and echo through eternity. ⚔️🔥🌟', 'YouTube', 'tvshow', 'https://youtu.be/GKq7QlNz3CA?si=E6fnSD4CvpEPcMu7', 'free', NULL, 'english', '9', 'TV-MA (Mature Audiences)', '09:50', '2024-02-20', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL, 'legacy_of_the_tribes_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Valiant Horizons', NULL, 'valiant_horizons_thumb.png', 'valiant_horizons_poster.png', '⚔️ \"Valiant Horizons\" plunges viewers into a world of fierce conflict and heroic quests. The series chronicles the journey of brave warriors as they confront powerful adversaries and navigate treacherous landscapes. Each episode highlights their struggles and triumphs, revealing the profound impact of their bravery on their land and people. As they face daunting challenges and forge alliances, their actions determine the fate of their world, making \"Valiant Horizons\" a riveting tale of honor, strategy, and relentless courage. 🌟🔥⚔️', 'YouTube', 'tvshow', 'https://youtu.be/aDyQxtg0V2w?si=ydtmf91vHvNuvVMX', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '04:25', '2024-03-01', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:49', NULL, 'valiant_horizons_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'War Chronicles', NULL, 'war_chronicles_thumb.png', 'war_chronicles_poster.png', '🛡️ \"War Chronicles\" takes viewers deep into the heart of historical and futuristic battles, where the fate of nations hangs in the balance. Each episode explores different warfare scenarios, highlighting the bravery of soldiers, the devastating power of weaponry, and the strategic maneuvers that determine victory or defeat. From tank battles to secret vaults of apocalyptic weapons, the series delves into the minds of those who fight, sacrifice, and innovate in the most extreme circumstances. \"War Chronicles\" is a gripping exploration of human courage, technological evolution, and the relentless quest for survival in the theater of war. 🔥⚔️🚀', 'YouTube', 'tvshow', 'https://youtu.be/f6KdMY08WkU?si=xQSRjml8PcX3l_1Z', 'free', NULL, 'hindi', '8', 'TV-MA (Mature Audiences)', '05:40', '2024-03-16', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL, 'war_chronicles_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Journey to the Core', NULL, 'journey_to_the_core_thumb.png', 'journey_to_the_core_poster.png', '\"Journey to the Core\" is a thrilling action-packed TV series that follows a group of elite scientists and adventurers as they embark on a perilous mission to explore the depths of the Earth. What begins as a scientific endeavor quickly turns into a fight for survival as they encounter ancient civilizations, powerful forces, and hidden dangers buried within the Earth\'s core. With the fate of humanity hanging in the balance, the team must band together to face challenges that could change the course of history. This show weaves together elements of discovery, intense action, and the clash of empires in a breathtaking journey that pushes the limits of human endurance and ingenuity. 🌋⚔️🔍', 'YouTube', 'tvshow', 'https://youtu.be/XI8uxmTSBWo?si=U5qJDxWja_3l4Vp9', 'paid', 1, 'english', '9', 'TV-MA (Mature Audiences)', '05:31', '2024-04-13', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL, 'journey_to_the_core_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Snip & Spy: The Cutthroat Mission', NULL, 'snip_spy_the_cutthroat_mission_thumb.png', 'snip_spy_the_cutthroat_mission_poster.png', '\"Snip & Spy: The Cutthroat Mission\" is a thrilling blend of action, espionage, and comedy, centered around Ethan, a former elite special ops agent who has swapped guns for scissors. Now living a peaceful life as a barber, Ethan\'s world is turned upside down when his old enemy resurfaces, using his barbershop as a front for a deadly arms deal. Armed with his wit, barber tools, and quick reflexes, Ethan must battle waves of ruthless criminals while protecting his clients and his shop. As secrets unravel with each snip of his scissors, Ethan finds himself thrust back into the chaotic world of espionage where every haircut could be his last. Filled with explosive action and unexpected twists, this series is a hair-raising ride. ✂️💈💥🕶️', 'YouTube', 'tvshow', 'https://youtu.be/eH7EyPs_Va8?si=BRcgB15dMbdoEj7G', 'paid', 3, 'english', '3', 'TV-MA (Mature Audiences)', '05:25', '2024-04-28', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL, 'snip_spy_the_cutthroat_mission_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Road to Reconnection', NULL, 'road_to_reconnection_thumb.png', 'road_to_reconnection_poster.png', 'June Stevenson embarks on a deeply emotional and humorous road trip along the Pacific Coast, dragging her estranged sisters along to make amends with their difficult father. What starts as a trip full of distractions—picturesque landmarks, craft breweries, and charming men—soon reveals the hidden truths behind their family’s distance. With each stop, June uncovers more about her siblings, herself, and the complex web of love, regret, and misunderstandings that have kept them apart for years. \"Road to Reconnection\" is an inspirational story of family, healing, and the rocky but rewarding path to forgiveness. 🌟❤️🌊', 'YouTube', 'tvshow', 'https://youtu.be/AW0A_VE245c?si=msNsH9EnTnvesnDH', 'free', NULL, 'english', '4', 'TV-MA (Mature Audiences)', '06:50', '2024-05-02', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL, 'road_to_reconnection_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'McDoll Mayhem', NULL, 'mcdoll_mayhem_thumb.png', 'mcdoll_mayhem_poster.png', 'David McDoll’s lavish life turns uproarious when his six rambunctious grandchildren shake up his world, leading to a comedy of errors and heartfelt moments. 🏰👶😂', 'YouTube', 'tvshow', 'https://youtu.be/skl7gYRZHwE?si=kiekCHcihmEJH54D', 'free', NULL, 'english', '5', 'TV-MA (Mature Audiences)', '08:30', '2024-06-21', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL, 'mcdoll_mayhem_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Enigma of the Heart', NULL, 'enigma_of_the_heart_thumb.png', 'enigma_of_the_heart_poster.png', 'A high-profile celebrity journalist with a notorious reputation for fast flings and superficial romances meets his match in a stunning model who harbors secrets of her own. Drawn into her mysterious world, he’s forced to confront his own past choices, questioning the life he’s been leading. As they navigate their complicated relationship, their hearts begin to unravel hidden truths, ultimately showing them that love is more powerful—and more complex—than either of them had ever anticipated. This captivating love story is one of redemption, transformation, and the search for true meaning in life and love. 💘✨💑', 'YouTube', 'tvshow', 'https://youtu.be/rS15OQLyWIs?si=9TIyww8T6LJCFSrr', 'paid', 1, 'english', '4', 'TV-MA (Mature Audiences)', '09:20', '2024-07-10', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL, 'enigma_of_the_heart_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'The Reckoning of Blackthorn', NULL, 'the_reckoning_of_blackthorn_thumb.png', 'the_reckoning_of_blackthorn_poster.png', '\"The Reckoning of Blackthorn\" follows Father James, a Catholic priest whose faith has been shattered by a tragic event he could not prevent—a young girl’s suicide. Months after her death, he is drawn back to Blackthorn Manor, the abandoned mansion where she took her life. Trapped in the mansion overnight, James begins to believe that the ghosts of the girl and her stepfather have returned from the grave to demand retribution. As he faces these vengeful spirits and his inner demons, James embarks on a harrowing journey for redemption, battling forces both supernatural and psychological in a race against time. This thrilling show explores themes of guilt, redemption, and the darkness that can lurk in one’s soul. 👻🏚️🩸', 'YouTube', 'tvshow', 'https://youtu.be/bvDArsKoTOE?si=2wx6GVga2c-afd7y', 'paid', 1, 'english', '8', 'TV-MA (Mature Audiences)', '08:10', '2024-08-12', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL, 'the_reckoning_of_blackthorn_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Heritage Hijinks', NULL, 'heritage_hijinks_thumb.png', 'heritage_hijinks_poster.png', 'The life of an African American college student who has been raised by a progressive white family. As he begins to question his cultural identity, he embarks on a comical and heartfelt journey with the help of his well-meaning white best friend. Together, they navigate the awkward, humorous, and often chaotic situations that arise when their families, with contrasting beliefs, come face to face. From navigating cultural misunderstandings to unearthing the meaning of family, this comedy is a funny yet poignant exploration of identity, self-acceptance, and the beauty of embracing one’s roots. 🌍🎉👫', 'YouTube', 'tvshow', 'https://youtu.be/WXpBN_31-Cw?si=xg1UJ2J5chVUWHdY', 'free', NULL, 'english', '7', 'TV-MA (Mature Audiences)', '06:45', '2024-09-05', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL, 'heritage_hijinks_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Evil Awakening', NULL, 'evil_awakening_thumb.png', 'evil_awakening_poster.png', 'A group of friends stumbles upon a mysterious and cursed relic, unleashing ancient evil forces upon the unsuspecting city. What begins as a casual discovery quickly spirals into terror as flesh-possessing demons wreak havoc, targeting anyone in their path. This gripping horror series pits the group against unimaginable horrors, as they must fight for their lives while uncovering dark secrets about the relic\'s origins. Estranged sisters and friends will have to confront their pasts, band together, and face their worst fears in a desperate battle for survival. With each episode unraveling new mysteries and terrifying encounters, \"Evil Awakening\" brings relentless scares and intense thrills to the screen. 😱🏙️', 'YouTube', 'tvshow', 'https://youtu.be/6LiKKFZyhRU?si=1al4KGEcQdP3LTQ1', 'free', NULL, 'english', '4', 'TV-MA (Mature Audiences)', '05:50', '2024-09-26', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL, 'evil_awakening_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'The Forsaken Cabin', NULL, 'the_forsaken_cabin_thumb.png', 'the_forsaken_cabin_poster.png', 'Four estranged friends—Esme, Hannah, Ben, and Shan—come together for a weekend of relaxation in a secluded cabin. But as they settle in, strange events begin to unfold, hinting that they are not alone. Their once peaceful retreat becomes a nightmare when they discover an ancient, malevolent force stalking them in the wilderness. As fear grips the group, hidden secrets from their past emerge, causing rifts in their friendship and forcing them to confront not only the evil outside but also the darkness within. Each episode intensifies the tension as the friends fight to escape the clutches of both supernatural horrors and their own buried regrets. 🕵️‍♀️🌲', 'YouTube', 'tvshow', 'https://youtu.be/O9i2vmFhSSY?si=YYmzH5_dw63-BeNU', 'free', NULL, 'english', '5', 'TV-MA (Mature Audiences)', '05:40', '2024-10-16', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL, 'the_forsaken_cabin_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Operation Viper', NULL, 'Container_692842429123f.jpg', 'Container_692842429123f.jpg', '<p>A covert team embarks on a high-stakes mission to thwart a dangerous terrorist organization. With explosive action and intense suspense, the team must navigate deadly traps and uncover hidden secrets to save the world from imminent catastrophe. 💥🔍</p>', 'YouTube', 'movie', 'https://youtu.be/5zSPGLoN9lQ?si=vIAtP5OnEQ4gnMV8', 'free', NULL, 'english', '6.2', 'TV-MA (Mature Audiences)', '03:00', '2010-04-23', 0, 'YouTube', 'https://youtu.be/WVDNqc3TUVQ?si=osLuuOFoALDKcKEJ', NULL, 1, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:50', '2025-11-27 12:21:35', NULL, 'Container_692842429123f.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'The Cure: Final Redemption', NULL, 'Container_1_692838be554e5.jpg', 'Container_1_692838be554e5.jpg', '<p>A team of elite agents races against time to uncover a deadly conspiracy, where the cure for a global pandemic holds the key to humanity\'s survival. As they navigate through treacherous terrain and face formidable foes, they must decide who to trust and how far they are willing to go to secure The Cure. 🌍💉</p>', 'YouTube', 'movie', 'https://youtu.be/eg8HPCKz6Rk?si=xDPYMcHMHIuLaJJn', 'paid', 2, 'english', '7.5', 'PG-13', '02:45', '2025-12-08', 0, 'YouTube', 'https://youtu.be/PdxPlbKFkaM?si=H_nwgJKc4Ioqj1tR', NULL, 1, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:50', '2025-11-27 11:41:06', NULL, 'Container_1_692838be554e5.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'The Gunfighter\'s Redemption', NULL, 'Container_1_69283fadaece2.jpg', 'Container_1_69283fadaece2.jpg', '<p>A retired gunslinger is forced back into action when his peaceful life is shattered by ruthless outlaws. He must confront his past and fight for justice one last time. 🤠🔫</p>', 'YouTube', 'movie', 'https://youtu.be/ob8iKn-gLFI?si=sUpU_bMpIDocTFZ6', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:30', '2012-03-08', 0, 'YouTube', 'https://youtu.be/Nu6v2u4-sM0?si=M1DvBg8vC42fHx4C', NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:50', '2025-11-27 12:22:46', NULL, 'Container_1_69283fadaece2.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Daizy\'s Enchanted Journey', NULL, 'Container_2_69283fe00c7c6.jpg', 'Container_2_69283fe00c7c6.jpg', '<p>Join Daizy on an enchanting adventure as she discovers the world beyond her tower. With her magical hair and unwavering spirit, she teams up with a charming rogue and a cast of quirky characters to uncover the secrets of her past and embrace her destiny. This heartwarming tale of bravery, friendship, and self-discovery will captivate audiences of all ages. 🌟🧚&zwj;♀️</p>', 'YouTube', 'movie', 'https://youtu.be/1c3O3-sVFC0?si=p7TI-JkU7E5LB5HJ', 'free', NULL, 'english', '7.1', 'PG (Parental Guidance Suggested)', '03:06', '2014-07-06', 1, 'YouTube', 'https://youtu.be/aGjRYObE5Vw?si=7Q99VNk-J4Q5yWAC', NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:50', '2025-11-27 12:23:43', NULL, 'Container_2_69283fe00c7c6.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Secrets of Zambezia', NULL, 'Container_3_6928400caf54f.jpg', 'Container_3_6928400caf54f.jpg', '<p>In Secrets of Zambezia, a spirited young falcon named Kai leaves his remote outpost to explore Zambezia, a majestic city hidden in the heart of Africa. Here, he discovers a vibrant community of birds from all over the world, each with their own unique talents and traditions. As Kai learns about friendship, courage, and the importance of diversity, he uncovers ancient secrets that could change Zambezia forever. Filled with stunning animation and heartwarming moments, this adventure will enchant audiences of all ages. 🌍🦅</p>', 'YouTube', 'movie', 'https://youtu.be/gxslnpqFwOs?si=fRi0Wnbd4qUCw43i', 'free', NULL, 'english', '7.5', 'PG (Parental Guidance Suggested)', '02:15', '2016-06-04', 1, 'YouTube', 'https://youtu.be/qWCKqFWPjAY?si=a2c6hq4yTIKlYFJ4', NULL, 0, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:50', '2025-11-27 12:24:24', NULL, 'Container_3_6928400caf54f.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'The New Empire', NULL, 'Container_2_6928329e0701b.jpg', 'Container_2_6928329e0701b.jpg', '<p>The New Empire brings an exhilarating clash of the titans, where Godzilla and Kong must join forces to defend their realm against an unprecedented threat. In this animated adventure, the balance of power shifts as a new, formidable adversary emerges, threatening to plunge their world into chaos. With stunning visuals and heart-pounding action, \"The New Empire\" explores themes of unity, courage, and the primal struggle for survival. Join Godzilla and Kong on a journey filled with breathtaking battles, unexpected alliances, and the ultimate test of strength and resilience. 🌍🦖🦍</p>', 'YouTube', 'movie', 'https://youtu.be/jSGlwLzjHpI?si=le4MKsQdLAyXjTpm', 'paid', 2, 'english', '9.1', 'PG (Parental Guidance Suggested)', '03:56', '2017-08-14', 1, 'YouTube', 'https://youtu.be/hlKFxyxOWIQ?si=Avo5stG4_o4UiUOe', NULL, 1, 0, NULL, NULL, 0, 1, 1, 1, NULL, '2025-11-20 07:04:50', '2025-11-27 11:45:49', NULL, 'Container_2_6928329e0701b.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'The Daring Player', NULL, 'the_daring_player_thumb.webp', 'the_daring_player_poster.png', 'The Daring Playe is a comedic tale of an intrepid athlete with a knack for finding himself in the most absurd and laugh-inducing predicaments. With a heart full of courage and a head full of unconventional ideas, our hero tackles everything from high-stakes competitions to everyday mishaps. Along the way, he encounters a quirky cast of characters who add to the chaos and fun. Packed with laughter, excitement, and heartwarming moments, this movie is a delightful journey through the world of a true daredevil. 🏅🤣', 'YouTube', 'movie', 'https://youtu.be/OPQogQKVeTk?si=YOmW1cKIiWOZqq34', 'paid', 3, 'hindi', '6.5', 'TV-MA (Mature Audiences)', '02:50', '2019-03-07', 0, 'YouTube', 'https://youtu.be/U-KfnCpEEl4?si=fQOoRWLbiIVBaL1k', NULL, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:51', NULL, 'the_daring_player_thumb.webp', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'The Monkey King: Kingdom of Shadows', NULL, 'Container_3_692832eb1332c.jpg', 'Container_3_692832eb1332c.jpg', '<p>The Monkey King: Kingdom of Shadows\" follows the legendary Monkey King as he faces his greatest challenge yet. When an ancient evil emerges, casting a dark shadow over his kingdom, the Monkey King must summon all his strength and cunning to protect his realm. Alongside a band of loyal companions, he ventures into treacherous territories, confronts formidable enemies, and uncovers hidden secrets. This gripping thriller blends epic battles with supernatural intrigue, delivering a heart-pounding adventure that will keep audiences on the edge of their seats. 🐒⚔️🌑</p>', 'YouTube', 'movie', 'https://youtu.be/Ssu5XsVngDI?si=le5P47hemzqTawW4', 'paid', 2, 'hindi', '8.5', 'TV-MA (Mature Audiences)', '02:55', '2020-01-10', 0, 'YouTube', 'https://youtu.be/7QbM6edqrr8?si=cxJkQJPoga1k3GBH', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-27 11:47:22', NULL, 'Container_3_692832eb1332c.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Deep Sea Mysteries', NULL, 'download_(1)_69283363cd900.jpeg', 'download_(1)_69283363cd900.jpeg', '<p>In Deep Sea Mysteries, an elite team of scientists and explorers embarks on a high-stakes underwater expedition to uncover the ocean\'s most guarded secrets. As they venture deeper into uncharted territories, they encounter breathtaking wonders and formidable creatures. However, the thrill of discovery quickly turns into a fight for survival as they stumble upon a long-lost civilization\'s dark secrets. With danger lurking at every turn, the team must navigate treacherous waters, solve ancient puzzles, and confront their deepest fears to unravel the mysteries of the deep sea. This thrilling adventure is a gripping tale of courage, discovery, and the relentless pursuit of truth. 🌊🦈⚓</p>', 'YouTube', 'movie', 'https://youtu.be/WwSsikrAN-E?si=0G6UPDm-H7LW3Not', 'paid', 3, 'hindi', '8.8', 'TV-MA (Mature Audiences)', '01:50', '2020-03-15', 0, 'YouTube', 'https://youtu.be/so2XtxcSLHQ?si=3AkAW4QC9aZOpGKA', NULL, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-27 11:48:03', NULL, 'download_(1)_69283363cd900.jpeg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'The Wacky Adventures of Tim and Tom', NULL, 'Container_4_6928432875e01.jpg', 'Container_4_6928432875e01.jpg', '<p>Get ready for non-stop laughter with \"The Wacky Adventures of Tim and Tom.\" This comedy movie follows two lifelong friends, Tim and Tom, whose penchant for wild schemes and hilarious mishaps constantly lands them in the most outrageous situations. Whether they\'re attempting to start a dubious business, navigating the pitfalls of modern dating, or embarking on a spontaneous road trip, their friendship is the one constant that keeps them grounded amidst the chaos. With a mix of slapstick humor, witty dialogue, and heartwarming moments, \"The Wacky Adventures of Tim and Tom\" is a feel-good film that celebrates the enduring power of friendship and the joy of embracing life\'s unpredictability. Join Tim and Tom on their laugh-out-loud journey where every day is a new adventure filled with endless comedy. 😂🚗🍿</p>', 'YouTube', 'movie', 'https://youtu.be/Mmq_NVwLN_g?si=JfALgqlfHlZgaoZP', 'free', NULL, 'english', '7', 'PG (Parental Guidance Suggested)', '02:40', '2025-11-21', 0, 'YouTube', 'https://youtu.be/dXiLaNVaRyw?si=an3a6I7K8ocDdA-A', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-27 12:25:27', NULL, 'Container_4_6928432875e01.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Laugh Out Loud', NULL, 'Container_5_6928435292e8c.jpg', 'Container_5_6928435292e8c.jpg', '<p>Follow the uproarious escapades of a group of mismatched friends as they navigate life\'s absurdities. From wild parties to chaotic road trips, their misfortunes and misunderstandings lead to a series of laugh-out-loud moments. With each friend bringing their own quirky personality to the mix, they find themselves in hilariously unpredictable situations. Through it all, their camaraderie and the power of laughter keep them together, reminding us that sometimes the best way to handle life\'s challenges is to just laugh out loud. 😂🚗🌟</p>', 'YouTube', 'movie', 'https://youtu.be/fEzWvEoD9ew?si=YNoDNhX0EOQ4oXsH', 'free', NULL, 'english', '9', 'TV-MA (Mature Audiences)', '02:35', '2020-04-04', 0, 'YouTube', 'https://youtu.be/zW3f0TYKJqw?si=X2K5WpJXtcS_6Pav', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-27 12:26:05', NULL, 'Container_5_6928435292e8c.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Frank and Fearless Adventures', NULL, 'frank_and_fearless_adventures_thumb.png', 'frank_and_fearless_adventures_poster.png', 'Frank and Fearless Adventures is a heartwarming and hilarious family comedy that follows the unlikely duo of Frank, a bumbling but lovable inventor, and Fearless, a daring young adventurer with a knack for getting into trouble. Together, they embark on a series of misadventures that take them from their quiet hometown to the wilds of the jungle, the depths of the ocean, and even outer space. Along the way, they encounter quirky characters, outlandish obstacles, and plenty of laughs. With its blend of humor, excitement, and touching moments, \"Frank and Fearless Adventures\" is a feel-good film that promises to entertain audiences of all ages. 🌟😂🛠️', 'YouTube', 'movie', 'https://youtu.be/_8slPqV-16w?si=oCMjQ4pRqCEBc-fF', 'free', NULL, 'english', '6.7', 'PG (Parental Guidance Suggested)', '02:58', '2020-06-11', 0, 'YouTube', 'https://youtu.be/RnqIF9ZHxKk?si=CcqAkQHgZBnpZ9nC', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL, 'frank_and_fearless_adventures_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Haunting Shadows', NULL, 'haunting_shadows_thumb.png', 'haunting_shadows_poster.png', 'A bone-chilling horror movie, a group of investigators explores the dark and twisted history of an abandoned orphanage shrouded in mystery. As they uncover the sinister events that transpired within its walls, they encounter restless spirits and malevolent forces determined to keep their secrets hidden. Battling their own fears and the supernatural, they must find a way to escape before they become the next victims. \"Haunting Shadows\" delivers a harrowing and suspenseful experience that will leave viewers on the edge of their seats. 👻🏚️', 'YouTube', 'movie', 'https://youtu.be/_XV764KWBrA?si=dX3daijNvpduGGKR', 'free', NULL, 'english', '7.2', 'TV-MA (Mature Audiences)', '02:40', '2020-07-03', 0, 'YouTube', 'https://youtu.be/ATi3GdospAo?si=KVHj8EF_1AFOkci5', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL, 'haunting_shadows_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Echoes of Terror', NULL, 'echoes_of_terror_thumb.png', 'echoes_of_terror_poster.png', 'A spine-tingling horror movie, a once-peaceful town is haunted by a series of terrifying events linked to a dark and ancient curse. As a group of brave investigators unravels the sinister history behind the curse, they encounter vengeful spirits and malevolent forces. Battling their own fears and the supernatural, they must race against time to uncover the truth and put an end to the terror. \"Echoes of Terror\" is a harrowing journey into the unknown, filled with suspense and chilling moments that will leave viewers breathless. 😱👹', 'YouTube', 'movie', 'https://youtu.be/smTK_AeAPHs?si=UQAlhFHgP-j1YSjG', 'free', NULL, 'english', '7.5', 'TV-MA (Mature Audiences)', '02:50', '2021-07-08', 0, 'YouTube', 'https://youtu.be/wTGqBmUTCMQ?si=jTuwff4Q6CDdEN5H', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL, 'echoes_of_terror_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Origins of Civilization: The Dawn of Empires', NULL, 'origins_civilization_thumb.png', 'origins_civilization_poster.png', 'Origins of Civilization: The Dawn of Empires is a captivating historical documentary that explores the emergence of the world\'s first great civilizations. Journey through ancient Mesopotamia, Egypt, the Indus Valley, and China as the film uncovers the remarkable innovations, cultural achievements, and pivotal moments that shaped human history. With stunning visuals and expert insights, this documentary brings to life the stories of the pioneering societies that laid the foundation for modern civilization. Discover how these ancient empires rose to greatness, overcame challenges, and left an enduring legacy that continues to influence our world today. 🌍🏛️', 'YouTube', 'movie', 'https://youtu.be/W0_55mECsa4?si=b_AlIpdvNC_wZ5Zr', 'free', NULL, 'english', '5.5', 'TV-MA (Mature Audiences)', '02:56', '2025-12-06', 0, 'YouTube', 'https://youtu.be/7jbO8ToJTko?si=cHMWBfwPFObg3wma', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL, 'origins_civilization_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Legacy of Antiquity: Origins of Civilization', NULL, 'legacy_of_antiquity_thumb.png', 'legacy_of_antiquity_poster.png', 'Legacy of Antiquity: Origins of Civilization is a comprehensive historical documentary that journeys back to the dawn of human civilization. From the ancient cities of Sumer and the monumental architecture of Egypt to the philosophical enlightenment of Greece and the engineering marvels of Rome, this film unravels the complex tapestry of early societies and their enduring legacies. Through expert analysis, immersive storytelling, and breathtaking visuals, uncover the cultural, political, and technological advancements that defined these pivotal periods in history. Legacy of Antiquity invites viewers to explore the origins of human achievement and the profound impact of ancient civilizations on our modern world. 🏛️🌍', 'YouTube', 'movie', 'https://youtu.be/JZAkVbZVPTg?si=6ruDm6DJxmgWCnyJ', 'free', NULL, 'english', '7.5', 'TV-MA (Mature Audiences)', '02:45', '2022-07-24', 0, 'YouTube', 'https://youtu.be/WltJPKFo_J4?si=L4BpLkhhHu3Yk5SS', NULL, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL, 'legacy_of_antiquity_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Rise Above', NULL, 'rise_above_thumb.png', 'rise_above_poster.png', 'In Rise Above, an inspirational short film, we follow the journey of a young individual who faces immense challenges and setbacks. Through determination, resilience, and the support of loved ones, they rise above adversity to achieve their dreams. This heartwarming and motivational story reminds us that no matter how difficult the path, success is within reach if we believe in ourselves and never give up. 🌟💪', 'YouTube', 'movie', 'https://youtu.be/4v7bSmTqx-Y?si=Oa05Nt5KpiD59vYN', 'free', NULL, 'english', '9', 'TV-MA (Mature Audiences)', '02:35', '2023-08-04', 0, 'YouTube', 'https://youtu.be/4v7bSmTqx-Y?si=hVcCSbCyThkDg503', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL, 'rise_above_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'A Journey of Triumph', NULL, 'a_journey_of_triumph_thumb.png', 'a_journey_of_triumph_poster.png', 'A Journey of Triumph is an uplifting and motivational film that chronicles the extraordinary stories of individuals who have faced insurmountable odds and emerged victorious. Through powerful narratives and moving testimonials, the film highlights the unwavering spirit, determination, and courage required to rise above adversity. With breathtaking visuals and heartfelt moments, A Journey of Triumph inspires viewers to believe in their own potential and strive for greatness, no matter the obstacles. 🌟💪', 'YouTube', 'movie', 'https://youtu.be/gJxRD-092rI?si=Yi-PuPoYEKRicQHv', 'free', NULL, 'english', '7.5', 'TV-MA (Mature Audiences)', '01:25', '2023-08-10', 0, 'YouTube', 'https://youtu.be/6WxscBX09Xs?si=rDk_v2tbG_G0Yup7', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL, 'a_journey_of_triumph_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Forever and a Day', NULL, 'forever_and_a_day_thumb.png', 'forever_and_a_day_poster.png', 'Forever and a Day is a captivating romantic film that tells the enchanting story of two souls destined to be together across lifetimes. When a modern-day writer discovers the love letters of a long-lost couple, she becomes entwined in their timeless romance. As their story unfolds, she embarks on a journey to find her own true love, realizing that some connections are meant to last forever. Filled with heartfelt moments, breathtaking scenery, and an unforgettable love story, \"Forever and a Day\" is a beautiful ode to enduring love. 💖⏳', 'YouTube', 'movie', 'https://youtu.be/NTAzn4W48gc?si=WCToq6upXzjdetux', 'free', NULL, 'english', '6.2', 'TV-MA (Mature Audiences)', '01:30', '2024-04-04', 0, 'YouTube', 'https://youtu.be/KitwmpvZ2GU?si=0PZuT_sk6eTIDDkB', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL, 'forever_and_a_day_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Forever in My Heart', NULL, 'forever_in_my_heart_thumb.png', 'forever_in_my_heart_poster.png', 'Forever in My Heart tells the enchanting story of two soulmates whose love endures the test of time and distance. When Sarah and Michael meet, it\'s love at first sight, but life circumstances soon separate them. Despite the miles and years that come between them, their connection remains unbroken. Through letters, dreams, and unexpected reunions, they navigate life\'s challenges, always finding their way back to each other. This romantic tale is a celebration of enduring love, hope, and the belief that true love is forever. ❤️💑', 'YouTube', 'movie', 'https://youtu.be/p3PboMzVt8c?si=_tM07Z7p7k1LqjDH', 'free', NULL, 'english', '7.5', 'TV-MA (Mature Audiences)', '02:30', '2024-05-11', 0, 'YouTube', 'https://youtu.be/22l6w8n9iCc?si=u2fUQaTyOLUyTvhh', NULL, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL, 'forever_in_my_heart_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Milo\'s Ocean Adventure', NULL, 'milos_ocean_adventure_thumb.png', 'milos_ocean_adventure_poster.png', 'In the vibrant world beneath the waves, Milo, a curious young sea creature, sets off on an adventure to explore the ocean\'s wonders. Along the way, he meets new friends, faces exciting challenges, and uncovers hidden treasures. Together, they learn the power of friendship and courage, making this a heartwarming tale of discovery and bravery. 🌊🦑✨', 'YouTube', 'movie', 'https://youtu.be/mYfJxlgR2jw?si=3O8vMOR3lcDfwHqq', 'paid', 2, 'english', '2', 'PG (Parental Guidance Suggested)', '01:45', '2024-05-16', 1, 'YouTube', 'https://youtu.be/UxtCBVCz_ew?si=QSXxLB6Hwt8or0KT', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL, 'milos_ocean_adventure_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'The Treasure of Zandara', NULL, 'the_treasure_of_zandara_thumb.png', 'the_treasure_of_zandara_poster.png', 'Brave explorer Leo and spirited adventurer Kara embark on a daring mission to find Kara\'s missing father, an archaeologist who has vanished while seeking the fabled treasure of Zandara. Along their journey through enchanted jungles and ancient temples, they face mythical creatures, cunning foes, and wild adventures to unlock the secrets of the legendary treasure. 🗺️🐘🌿', 'YouTube', 'movie', 'https://youtu.be/TAFWnX6tsHg?si=u3UMgA6W8IT5WuN7', 'paid', 4, 'english', '3', 'TV-MA (Mature Audiences)', '02:00', '2024-05-21', 0, 'YouTube', 'https://youtu.be/IUyHsIocEAg?si=4wMxTZXcE1CNZPVY', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL, 'the_treasure_of_zandara_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Braveheart of the Highlands', NULL, 'braveheart_of_the_highlands_thumb.png', 'braveheart_of_the_highlands_poster.png', 'Young Robert, a courageous warrior, finds himself injured and on the run from an invading army. Rescued by a humble family in the Highlands, he regains his strength and rallies his people to fight for the freedom of their beloved land. 🌄🛡️⚔️', 'YouTube', 'movie', 'https://youtu.be/LALlUFEGdeE?si=pG5fTkaYGyGBNMr2', 'paid', 2, 'english', '4', 'TV-MA (Mature Audiences)', '02:30', '2024-05-22', 0, 'YouTube', 'https://youtu.be/LYtpcCqeG1c?si=MmNmSQxQQ5em-LPR', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL, 'braveheart_of_the_highlands_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Spooky Roommate Ruckus', NULL, 'spooky_roommate_ruckus_thumb.png', 'spooky_roommate_ruckus_poster.png', 'A musician\'s quiet evening is turned upside down when his sleepwalking roommate begins unraveling the haunted house\'s eerie secrets. The film offers a comedic twist on ghostly encounters as the musician tries to manage both the spooky happenings and the humorous chaos caused by his sleepwalking roommate. It’s a laugh-out-loud comedy that mixes musical elements with supernatural shenanigans. 🎤🎃', 'YouTube', 'movie', 'https://youtu.be/2X7G6p-oNG8?si=Y2MRnmG1oRRQI0yV', 'paid', 4, 'english', '5', 'TV-MA (Mature Audiences)', '01:30', '2024-05-24', 0, 'YouTube', 'https://youtu.be/SX1LiKN4ZcQ?si=6uJZt7OGt6EUzHD_', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL, 'spooky_roommate_ruckus_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Run With Purpose', NULL, 'run_with_purpose_thumb.png', 'run_with_purpose_poster.png', 'Fresh out of college, a determined young coach takes on the challenge of transforming a struggling cross-country team at an all-girls Christian school. With their eyes set on their first state title, the coach teaches her runners not only how to compete but how to navigate the hurdles life throws their way. As each girl faces her own personal struggles—ranging from self-doubt, family pressures, and identity—the coach’s wisdom and guidance help them find their inner strength and purpose. Through hard work, faith, and unity, they come to realize that winning isn’t just about crossing the finish line but about growing as individuals. A heartwarming, inspirational story about overcoming adversity and embracing life’s challenges. 🌟👟🏅', 'YouTube', 'movie', 'https://youtu.be/FjcgE_neMmU?si=UZfRlev5Mi0bB7HW', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:30', '2024-05-28', 0, 'YouTube', 'https://youtu.be/BEzc5hlAIbU?si=bnIMGym2NTPq7aYo', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL, 'run_with_purpose_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Guardians of the Abyss: The Beast Awakens', NULL, 'guardians_of_the_abyss_the_beast_awakens_thumb.png', 'guardians_of_the_abyss_the_beast_awakens_poster.png', 'The Beast Awakens, a brave sailor embarks on a perilous journey across the high seas to stop a terrifying sea monster from destroying the ocean’s balance. Along the way, they form alliances with magical sea creatures and uncover secrets of the deep. This thrilling animated story is filled with heartwarming friendships, breathtaking battles, and awe-inspiring underwater worlds. 🐋⚓✨', 'YouTube', 'movie', 'https://youtu.be/c5QG-yZX2TI?si=HhK6G54dA40AShBt', 'free', NULL, 'english', '6', 'PG (Parental Guidance Suggested)', '01:44', '2024-06-01', 1, 'YouTube', 'https://youtu.be/hOj1RQMn37A?si=M0uQ8CMhvU6ohz-T', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL, 'guardians_of_the_abyss_the_beast_awakens_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Journey to the Abyss', NULL, 'journey_to_the_abyss_thumb.png', 'journey_to_the_abyss_poster.png', '\"Journey to the Abyss\" follows a determined scientist, his brave nephew, and a fearless mountain guide as they venture into a mysterious and perilous lost world deep beneath the Earth\'s surface. Facing ancient creatures, treacherous landscapes, and deadly challenges, their quest for the truth becomes a thrilling race for survival. 🧭🌋🦖', 'YouTube', 'movie', 'https://youtu.be/GKq7QlNz3CA?si=E6fnSD4CvpEPcMu7', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '03:00', '2024-05-04', 0, 'YouTube', 'https://youtu.be/M6h5AS971hY?si=T7Sf0Gjetp_7Ld2C', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL, 'journey_to_the_abyss_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Lost in Ephesus', NULL, 'lost_in_ephesus_thumb.png', 'lost_in_ephesus_poster.png', '❤️ \"Lost in Ephesus\" follows tourists Hope and Jeb as they find themselves stranded in Ephesus, Turkey, after their tour bus leaves without them. With Hope\'s belongings—including her purse, phone, and passport—on the bus, and Jeb facing a looming job crisis, they must navigate their way back to Istanbul with limited resources. As they traverse picturesque landscapes and tackle various obstacles, their journey turns into a heartfelt adventure. 🌟🚶‍♂️🚶‍♀️💖', 'YouTube', 'movie', 'https://youtu.be/CqTGjC4RExk?si=C_OT-SR1w98Au2Ut', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '02:45', '2024-05-05', 0, 'YouTube', 'https://youtu.be/PMeHdc25BGE?si=KPYxB7skuFDfsyHf', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL, 'lost_in_ephesus_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `entertainments` (`id`, `name`, `tmdb_id`, `thumbnail_url`, `poster_url`, `description`, `trailer_url_type`, `type`, `trailer_url`, `movie_access`, `plan_id`, `language`, `IMDb_rating`, `content_rating`, `duration`, `release_date`, `is_restricted`, `video_upload_type`, `video_url_input`, `video_quality_url`, `enable_quality`, `download_status`, `download_type`, `download_url`, `enable_download_quality`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`, `poster_tv_url`, `price`, `purchase_type`, `access_duration`, `discount`, `available_for`, `subtitle_file`, `enable_subtitle`, `subtitle_language`, `is_default_subtitle`, `meta_title`, `meta_keywords`, `meta_description`, `seo_image`, `google_site_verification`, `canonical_url`, `short_description`) VALUES
(49, 'Broken Sanctuary', NULL, 'broken_sanctuary_thumb.png', 'broken_sanctuary_poster.png', 'David and Ana, two souls burdened by their histories who find hope in a quiet town. But when ruthless criminals invade their sanctuary, they must unite to protect their future. 🔥💀🔗🏚️', 'YouTube', 'movie', 'https://youtu.be/Mtah8SplQCA?si=4DqJPL6641jUR03m', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '02:30', '2024-05-06', 0, 'YouTube', 'https://youtu.be/ySpuxKC8SDU?si=KrIXIN7awcW8cGNI', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL, 'broken_sanctuary_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Wings of Kindness', NULL, 'wings_of_kindness_thumb.png', 'wings_of_kindness_poster.png', 'Young Lincoln, tormented by bullies, escapes his harsh reality by imagining a powerful superhero who embodies the strength he wishes he had. Meanwhile, a lonely man, adrift in life, finds hope and a new sense of purpose when he rescues a stray puppy. 🌟🐶👦', 'YouTube', 'movie', 'https://youtu.be/C7OQHIpDlvA?si=9srUjEIEX9bJ6eCB', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '03:06', '2024-05-07', 0, 'YouTube', 'https://youtu.be/RtU8nBnpFVE?si=Jti3mTLnWOb2958N', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL, 'wings_of_kindness_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Mistaken for Love', NULL, 'mistaken_for_love_thumb.png', 'mistaken_for_love_poster.png', '💖 \"Mistaken for Love\" centers on Tenley, a horticulturist who bravely decides to meet her online crush, Jared, in person. However, a mix-up leads Jared’s family to believe that Tenley is his wife. 🌹🌿💑', 'YouTube', 'movie', 'https://youtu.be/PU0W26k_ZDI?si=QRf-PbREZT7MeIUt', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '02:15', '2024-05-08', 1, 'YouTube', 'https://youtu.be/Z_jpDH5Nx7I?si=hh1FXhTPcLtx8HYx', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL, 'mistaken_for_love_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Blade of Chaos', NULL, 'download_(1)_692843e8bd707.jpeg', 'download_(1)_692843e8bd707.jpeg', '<p>The story of Charlie, a clumsy but well-meaning man who steps in to help at a local barbershop. Little does he know, the barbershop is a front for a secret spy organization, and now Charlie finds himself in the middle of an intense action-packed mission. With dangerous criminals on his tail and only a pair of scissors as his weapon, Charlie must navigate a world of chaos and high-stakes adventures. ✂️🕵️&zwj;♂️💥🚗</p>', 'YouTube', 'movie', 'https://youtu.be/-Qv6p6pTz5I?si=aeaLICb9s9VAgl4W', 'paid', 4, 'english', '6', 'PG (Parental Guidance Suggested)', '03:56', '2024-05-09', 0, 'YouTube', 'https://youtu.be/OthBEy73VQ4?si=PdWE8bicX90lhHKb', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-27 12:28:53', NULL, 'download_(1)_692843e8bd707.jpeg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Ayla: Path of the Lost Spirits', NULL, 'ayla_path_of_the_lost_spirits_thumb.png', 'ayla_path_of_the_lost_spirits_poster.png', 'In a vibrant world filled with ancient magic, Ayla, a young spirit guide, must navigate through dangerous lands and uncover hidden secrets. With the help of enchanted creatures, she sets out to reunite lost souls with the spirit world, battling dark forces that threaten to destroy the balance. A heartwarming and thrilling animated adventure where courage, friendship, and magic come together. 🌟🌀💫', 'YouTube', 'movie', 'https://youtu.be/V44I1TSFpOc?si=lbXNFs5EFCGc0Md4', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '02:50', '2024-05-10', 1, 'YouTube', 'https://youtu.be/D43QEntzVfc?si=5AKtXouoSSVyM5N1', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL, 'ayla_path_of_the_lost_spirits_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Warfront: Age of Reckoning', NULL, 'warfront_age_of_reckoning_thumb.png', 'warfront_age_of_reckoning_poster.png', 'The fragile peace between the Alliance and Horde shatters, plunging two mighty factions into a brutal war. As battles rage on land and sea, legendary heroes rise, forging alliances and clashing in epic confrontations that will decide the fate of entire kingdoms. Will peace ever return, or will chaos reign supreme? ⚔️🔥🌍', 'YouTube', 'movie', 'https://youtu.be/jSJr3dXZfcg?si=oUT5AA1E5p9d2GMy', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '02:55', '2024-05-10', 0, 'YouTube', 'https://youtu.be/gkBEd41mOIo?si=c-V7-nm68ZUGuQZM', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL, 'warfront_age_of_reckoning_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Fang of the Steppe', NULL, '1920x7703ce516e3ec12450a9c1f32f8ac169d60_692837f149d63.jpg', '1920x7703ce516e3ec12450a9c1f32f8ac169d60_692837f149d63.jpg', '<p>In this fantasy adventure, set in 800 BC, a brave warrior from the steppe embarks on an epic journey to unite 33 tribes against those who plunder and destroy their sacred lands. Mixing truth and fantasy, this tale reveals the origins of the fierce nomadic warriors who would shape history. 🏜️🐺⚔️</p>', 'YouTube', 'movie', 'https://youtu.be/PI4Z7t3AZ5E?si=QNKYohZ1ZgLol_OP', 'pay-per-view', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '01:50', '2024-05-11', 0, 'YouTube', 'https://youtu.be/A5fBmZHgcT0?si=n8vuYfPWIsQCkMwg', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-27 11:37:38', NULL, '1920x7703ce516e3ec12450a9c1f32f8ac169d60_692837f149d63.jpg', 15.00, 'rental', 5, '10', 20, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Back to the Heartland', NULL, 'download_(2)_6928442e5a8bf.jpeg', 'download_(2)_6928442e5a8bf.jpeg', '<p>🌾 \"Back to the Heartland\" follows Paisley, a spirited country girl determined to save her beloved grandfather&rsquo;s ranch after being denied crucial funding. She reunites with her ex-boyfriend Josh, a marketing executive who has been temporarily suspended from his job. Despite their past, they join forces to brainstorm fundraising ideas for the ranch. Adding to the mix is Josh&rsquo;s brother Sam, a close friend of Paisley&rsquo;s, who returns to town just as Paisley and Josh begin to rekindle their relationship. As they face challenges and reminisce about old times, Paisley and Josh find that their love, which was always just beneath the surface, blooms once more. 🌹🚜💞</p>', 'YouTube', 'movie', 'https://youtu.be/8jR2tLjciVg?si=ESb3SwaecBjcp7QX', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:40', '2024-05-14', 0, 'YouTube', 'https://youtu.be/BxHvI5BVBf4?si=HVJgCYw3t1FqmdiW', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-27 12:29:44', NULL, 'download_(2)_6928442e5a8bf.jpeg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Isolated Tides', NULL, 'isolated_tides_thumb.png', 'isolated_tides_poster.png', '🌊 Two estranged sisters must put aside their differences to survive on a deserted island after a hot air balloon ride goes terribly wrong. These two sisters Emma and Sofia, estranged for years, are reunited by fate and disaster when their hot air balloon crash lands on a remote Mediterranean island. Stranded with no communication and limited resources, the sisters must navigate treacherous terrain, natural dangers, and their own bitter conflicts. As they battle for survival alongside trapped locals, they rediscover the power of family and their inner resilience. 🌅⛰️🏴‍☠️', 'YouTube', 'movie', 'https://youtu.be/hJo91wpGrz8?si=uVKgkkeEcNQjnp1r', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '02:35', '2024-05-18', 0, 'YouTube', 'https://youtu.be/jwErAY9QjMA?si=bQ4MmYEq__pR6yjy', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL, 'isolated_tides_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Sleepwalking Scares and Musical Mishaps', NULL, 'sleepwalking_scares_and_musical_mishaps_thumb.png', 'sleepwalking_scares_and_musical_mishaps_poster.png', 'A musician\'s serene evening is upended when he discovers his roommate sleepwalking and causing a ruckus in their haunted house. The house’s eerie secrets and the musician’s attempts to deal with the bizarre happenings lead to a comedy of errors and spooky mishaps. This film combines musical humor with ghostly antics for a laugh-out-loud spooky adventure. 🎹🕵️‍♂️', 'YouTube', 'movie', 'https://youtu.be/j2Fec39AHJ8?si=c9WEIe5NXoF_tmrE', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '02:58', '2024-05-21', 0, 'YouTube', 'https://youtu.be/rGsXo6cjKyE?si=sfVESt1ZmLTxMHrK', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL, 'sleepwalking_scares_and_musical_mishaps_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Grace Through the Storm', NULL, 'grace_through_the_storm_thumb.png', 'grace_through_the_storm_poster.png', 'In the wake of a devastating tragedy, Dave Corwin is left shattered, struggling to comprehend the loss of his beloved wife. His grief drives a wedge between him and his son Steven, the only one left in their home who holds onto his Christian faith. As bitterness toward God festers in Dave, Steven is torn, desperate to bring healing to their relationship but unsure how to reach his father. With the guidance of prayer and the support of their community, Steven begins a journey to remind his father of God’s enduring love and purpose, even in the face of unimaginable grief. \"Grace Through the Storm\" is a touching story about faith, forgiveness, and the power of God’s sovereignty in times of struggle. 💫🙏🌿', 'YouTube', 'movie', 'https://youtu.be/edpVp4wZkbw?si=8mmVi8XE8m39aEur', 'paid', 3, 'english', '6', 'TV-MA (Mature Audiences)', '02:40', '2024-05-23', 0, 'YouTube', 'https://youtu.be/QL9vpp5MFiM?si=-DDQcUxVkapnSfoG', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL, 'grace_through_the_storm_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Elevator to the Heart', NULL, 'elevator_to_the_heart_thumb.png', 'elevator_to_the_heart_poster.png', '❤️ \"Elevator to the Heart\" follows Claire, a dedicated nurse who is struggling with a difficult supervisor. On a rare night off, she ends up stuck in an elevator with a charming and charismatic man, sparking a genuine connection between them. However, when she encounters him again the next day, he doesn\'t remember their previous encounter. As Claire navigates her challenging work life and tries to rekindle the magic of their chance meeting, she faces the ultimate test of fate and love. ❤️', 'YouTube', 'movie', 'https://youtu.be/bKuRQdEw5ZM?si=-6qzw0ljqmEiCLUR', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '02:50', '2024-05-26', 0, 'YouTube', 'https://youtu.be/72gTHNo9b5E?si=HkVSUTVT-QWHNUtd', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL, 'elevator_to_the_heart_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Taru\'s Quest', NULL, 'taru_quest_thumb.png', 'taru_quest_poster.png', 'Taru, a young zebra born without his back stripes, embarks on a courageous journey to the Sacred River, where it\'s believed his stripes will be completed. Along the way, he faces challenges and learns the true meaning of belonging. 🦓✨', 'YouTube', 'movie', 'https://youtu.be/j-cbM0NVs9o?si=xufUqhULsS_kmKNf', 'paid', 3, 'english', '6', 'PG (Parental Guidance Suggested)', '02:56', '2024-05-27', 1, 'YouTube', 'https://youtu.be/MCMhi9Rv-qg?si=qYrc7wreVnidDzvy', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:55', NULL, 'taru_quest_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Twisted Trails', NULL, 'twisted_trails_thumb.png', 'twisted_trails_poster.png', 'A novice camper, as his peaceful escape into nature spirals into chaos. When he stumbles upon a woman trapped in a car, his survival instincts kick in—but as he becomes the target of a ruthless killer, he realizes the true mystery is far more complex. With every turn revealing new twists, the truth of the events remains elusive until the shocking final moments. This fast-paced thriller will leave you questioning every character’s motives. 🌲🛶❓', 'YouTube', 'movie', 'https://youtu.be/FXOtkvx25gI?si=iD3LrO0BIQv7Fz4d', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:45', '2024-05-28', 0, 'YouTube', 'https://youtu.be/nujakIrBDCU?si=cXGG42k3lquWC2It', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL, 'twisted_trails_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Mystic Isle', NULL, 'mystic_isle_thumb.png', 'mystic_isle_poster.png', 'On a remote, mystical island, General Wang Sheng rescues the enchanting Xiao Wei, unaware of her hidden powers. As romance blossoms, strange and terrifying events begin to unfold, and a brave demon hunter uncovers the truth—Xiao Wei is no ordinary woman but a powerful spirit with a dangerous past. 🌿💫🌀', 'YouTube', 'movie', 'https://youtu.be/H0u8yO9kiAA?si=V__ZIHm_Pu3yCqI8', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:35', '2024-05-30', 0, 'YouTube', 'https://youtu.be/5ZB6dhrgtxc?si=plIOjL9dVPa3hDm7', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL, 'mystic_isle_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Guided Through Grief', NULL, 'guided_through_grief_thumb.png', 'guided_through_grief_poster.png', '🌟 \"Guided Through Grief\" stars Clifton Powell and delves into the lives of two individuals from distinct backgrounds who are profoundly affected by sudden family deaths. As they grapple with their grief and seek meaning in their pain, they form a bond that helps them navigate the complexities of their sorrow. Their journey is a powerful testament to how shared experiences can bring solace and understanding in the darkest times. 🌟💔', 'YouTube', 'movie', 'https://youtu.be/dbmvLoZKx_o?si=ZwVTkx1D4AJZ7QZG', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '01:25', '2024-05-31', 0, 'YouTube', 'https://youtu.be/F8IPzpcuPGs?si=QVeVrBUAdescWzfs', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL, 'guided_through_grief_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Rogue Redemption', NULL, 'rogue_redemption_thumb.png', 'rogue_redemption_poster.png', '🌊 Cai Yan, a fearless pirate leader, is struck by amnesia and finds refuge in the Southern Shaolin Temple. As he recovers, he discovers the monks\' ongoing struggle against a powerful threat. With new purpose, Cai Yan decides to defend the temple, mastering both combat and his forgotten past. 🌊⚔️🛕', 'YouTube', 'movie', 'https://youtu.be/5RF3ER2knsc?si=oS_l1s_w1WkRMVUj', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:50', '2024-06-01', 0, 'YouTube', 'https://youtu.be/kfVIRmx3saM?si=hcZcQ_-hIZwJQBnw', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL, 'rogue_redemption_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Spectral Surprises', NULL, 'spectral_surprises_thumb.png', 'spectral_surprises_poster.png', '👻 In \"Spectral Surprises,\" Sanaya\'s life of continuous misfortune takes a dark turn when she becomes the vessel for a restless and vengeful spirit. While the ghost seems to improve her luck with a series of eerie yet positive changes, Sanaya soon suspects that the spirit harbors a more sinister secret. As she uncovers the ghost\'s true motives, she must confront the chilling reality of its dark purpose. 👻🕯️', 'YouTube', 'movie', 'https://youtu.be/Jxq13WJxLDY?si=AjKX1zULDPQ-Lqiw', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '01:30', '2024-06-03', 0, 'YouTube', 'https://youtu.be/gmO2_FcfhgY?si=5eBx8QyzklYCih-R', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL, 'spectral_surprises_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'Gramps and the Grandkid Circus', NULL, 'download_69283733e6788.jpeg', 'download_69283733e6788.jpeg', '<p>👴 When wealthy and self-centered David McDoll inherits his six rambunctious grandchildren, his once orderly life devolves into uproarious chaos. As he struggles to adapt to his new role as a grandfather, his lavish lifestyle is turned upside down by the kids\' wild antics. Through hilarious misadventures and family bonding, David learns the true meaning of love and appreciation. 👴👧😂🚗</p>', 'YouTube', 'movie', 'https://youtu.be/mJ_Tex6KT6w?si=0bhjIh5zYTZlk9EU', 'pay-per-view', NULL, 'english', '6', 'PG (Parental Guidance Suggested)', '02:30', '2024-06-05', 0, 'YouTube', 'https://youtu.be/k7tijaEzqTI?si=mgGFABOYEtuH9axM', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-27 11:34:27', NULL, 'download_69283733e6788.jpeg', 22.00, 'rental', 2, '10', 20, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Texting for Love', NULL, 'images_69283770b4a64.jpeg', 'images_69283770b4a64.jpeg', '<p>💌 \"Texting for Love\" is a charming romantic comedy where Mira Ray, struggling with the loss of her fianc&eacute;, starts sending romantic texts to his old cell phone number, now belonging to Rob Burns. Rob, a journalist enchanted by the sincere messages, teams up with megastar Celine Dion to help find Mira. As Rob navigates the path to Mira\'s heart with Celine\'s guidance, the story unfolds into a heartwarming journey of love and destiny. 🌟📱💖</p>', 'YouTube', 'movie', 'https://youtu.be/CQDXtD2HJAs?si=p9loI6UOGTOniMbO', 'pay-per-view', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '03:00', '2024-06-06', 0, 'YouTube', 'https://youtu.be/9QL07ep7HA0?si=dYpRYVGRwmuXa9r2', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-27 11:35:30', NULL, 'images_69283770b4a64.jpeg', 16.00, 'rental', 3, '10', 20, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Vengeance in the Wild', NULL, '1920x7700a2ca372b1834c769d68a339fd512bf0b0c4da09bf6c4370a92f3e327d64bbe6_692837bb9d984.jpg', '1920x7700a2ca372b1834c769d68a339fd512bf0b0c4da09bf6c4370a92f3e327d64bbe6_692837bb9d984.jpg', '<p>🌾 A young refugee girl must navigate the deadly Australian wilderness while being hunted by a man seeking revenge for his son&rsquo;s death. ⛰️🏴&zwj;☠️</p>', 'YouTube', 'movie', 'https://youtu.be/EbrTRE96wS0?si=GVHICrYbbCTkGA35', 'pay-per-view', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:45', '2024-06-10', 0, 'YouTube', 'https://youtu.be/jUg6dBuRR88?si=8HWEw7cT5rHWugg4', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-27 11:36:43', NULL, '1920x7700a2ca372b1834c769d68a339fd512bf0b0c4da09bf6c4370a92f3e327d64bbe6_692837bb9d984.jpg', 22.00, 'rental', 4, '10', 20, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Phantom\'s Deception', NULL, 'phantoms_deception_thumb.png', 'phantoms_deception_poster.png', '👻 In \"Phantom\'s Deception,\" Sanaya’s life takes an unsettling turn when she becomes the host for a malevolent spirit. While the ghost appears to bring unexpected good fortune into her life, its true purpose slowly emerges as a web of deception and terror. As Sanaya navigates through her newfound luck, she must uncover the ghost’s hidden motives before it’s too late. This horror film intertwines supernatural elements with psychological suspense, creating a gripping tale of hidden dangers and eerie surprises. 👻🕵️‍♀️🔮', 'YouTube', 'movie', 'https://youtu.be/melKmunBhBs?si=A7WVsdnCLWShLBJk', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '02:30', '2024-06-12', 0, 'YouTube', 'https://youtu.be/k7tLllmRVu4?si=ApNtZFl8hs-Bfptf', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:56', NULL, 'phantoms_deception_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Sniper\'s Redemption', NULL, 'snipers_redemption_thumb.png', 'snipers_redemption_poster.png', 'Ace Sniper Brandon Beckett joins forces with the Global Response & Intelligence Team (G.R.I.T.) to rescue a kidnapped agent and thwart a deadly international terrorist cult. Racing against time, the team infiltrates Malta and engages in high-stakes battles to stop the cult leader and save the world from chaos. 🧨🎯🌍', 'YouTube', 'movie', 'https://youtu.be/AAT4TCet1KQ?si=-zAAC3C_mGI4Bzco', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '03:06', '2024-06-14', 0, 'YouTube', 'https://youtu.be/9E1SkxFhSP4?si=_Dd3oLFGHpu9t4gS', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL, 'snipers_redemption_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Camera Capers: The Great Identity Mix-Up', NULL, 'camera_capers_the_great_identity_mix_up_thumb.png', 'camera_capers_the_great_identity_mix_up_poster.png', 'A bumbling amateur photographer\'s brand-new camera is swiped, setting off a riotous chase filled with humorous mix-ups and unlikely suspects. As he stumbles from one comedic situation to the next, he learns that sometimes the best detective is the one who can\'t stop tripping over their own feet. 📷😂🕵️‍♂️', 'YouTube', 'movie', 'https://youtu.be/7mT8El4mBVw?si=QURW5DdZ0HMm1wOm', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '02:15', '2024-06-15', 1, 'YouTube', 'https://youtu.be/MCkqzUQOdUo?si=kGz6iHjGq5qa2L0t', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL, 'camera_capers_the_great_identity_mix_up_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Harbor of Hearts', NULL, 'harbor_of_hearts_thumb.png', 'harbor_of_hearts_poster.png', '🌊 \"Harbor of Hearts\" tells the story of Lily, an interior designer who returns to her family’s marina-side bed and breakfast to assist her aunt Maggie. While there, she meets Marcus, a handsome seaplane pilot who delivers rescue dogs. As they work closely together, Lily learns that the real meaning of home and love goes beyond physical places, finding her heart anchored in unexpected connections and newfound romance. 🏡❤️🛩️', 'YouTube', 'movie', 'https://youtu.be/zF9YIYc0d7w?si=XRdhC2qJ7y5yfAmL', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '03:56', '2024-06-18', 0, 'YouTube', 'https://youtu.be/p8egZga9Fqs?si=Lbo-6CacHJMkLEYB', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL, 'harbor_of_hearts_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Fatal Obsession', NULL, 'fatal_obsession_thumb.png', 'fatal_obsession_poster.png', 'Tobias believes he\'s finally found \"the one,\" but his romance soon transforms into a nightmare as strange accidents and eerie coincidences plague his life. Each incident seems connected to his new love, whose mysterious past holds terrifying secrets. What starts as passion turns into a gripping game of survival, as Tobias uncovers the truth behind the deadly events surrounding him. This thriller will keep you guessing until the shocking conclusion. 😱🔪😨💔', 'YouTube', 'movie', 'https://youtu.be/nRPFGrwDlwU?si=Ag-sZc1wjieY2sDu', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:50', '2024-06-20', 0, 'YouTube', 'https://youtu.be/-KP8vE35DkU?si=MwTMLbfZtgzfp-Sj', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL, 'fatal_obsession_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Forsaken Battalion', NULL, 'forsaken_battalion_thumb.png', 'forsaken_battalion_poster.png', 'A group of German soldiers finds themselves abandoned by their retreating comrades in the heat of battle. Cut off from their main forces and surrounded by enemies, they must band together and fight against overwhelming odds in a desperate attempt to survive and reclaim their honor. 💥⚔️🏞️', 'YouTube', 'movie', 'https://youtu.be/aDyQxtg0V2w?si=ydtmf91vHvNuvVMX', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '02:55', '2024-06-20', 0, 'YouTube', 'https://youtu.be/PdxPlbKFkaM?si=H_nwgJKc4Ioqj1tR', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL, 'forsaken_battalion_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'The Charlie Game: Shadows Unleashed', NULL, 'the_charlie_game_shadows_unleashed_thumb.png', 'the_charlie_game_shadows_unleashed_poster.png', 'The Charlie Game: Shadows Unleashed follows Lily, whose attempt to play the eerie Charlie Charlie game leads to a nightmarish encounter with the supernatural. As the pencils eerily respond to her questions, the room transforms into a haunted labyrinth of flickering candlelight and menacing shadows. With each movement, the tension escalates, and Lily’s once innocent curiosity turns into a battle against unseen horrors. This chilling short film promises a heart-pounding experience with unexpected twists and ghostly frights. 👻🔮🕯️🎲', 'YouTube', 'movie', 'https://youtu.be/mIaKS3OtqEg?si=-qrD6nVQxrTGsSm-', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '01:50', '2024-06-21', 0, 'YouTube', 'https://youtu.be/G8ngi-HhojM?si=A5PlBdA0msPJKt3o', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL, 'the_charlie_game_shadows_unleashed_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Warriors of the Eternal Realm', NULL, 'download_(4)_692836febc7ed.jpeg', 'download_(4)_692836febc7ed.jpeg', '<p>In an ancient world filled with legendary heroes and mythical creatures, a group of young warriors must unite to protect their realm from an impending invasion. Armed with powerful abilities and guided by ancient prophecies, they embark on a thrilling journey to save their homeland from dark forces threatening to engulf it. ⚔️🌍✨</p>', 'YouTube', 'movie', 'https://youtu.be/7VXOHmaTd7g?si=Qjm-q92VPXnVG5NN', 'pay-per-view', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:40', '2024-06-22', 0, 'YouTube', 'https://youtu.be/RhBJ5qrGvGI?si=I5F5ozAIp1jRbJDH', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-27 11:33:38', NULL, 'download_(4)_692836febc7ed.jpeg', 30.00, 'rental', 1, '10', 20, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'London Love Revisited', NULL, 'download_(3)_69284451e0688.jpeg', 'download_(3)_69284451e0688.jpeg', '<p>&ldquo;London Love Revisited&rdquo; follows Edie, who finds the love of her life in London just before her return to the US. Although they are separated by miles and time, fate intervenes and reunites them six years later in America. Their love story unfolds as they navigate the twists and turns of life and love, proving that true connections withstand the test of time and distance. 💕🗺️✨</p>', 'YouTube', 'movie', 'https://youtu.be/cT_FWfIz4Q8?si=g-i6T9exs8tycqbw', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '02:35', '2024-06-28', 0, 'YouTube', 'https://youtu.be/Wx0wO9WD9Zg?si=wbvgSHuoDu4Rk25V', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-27 12:30:22', NULL, 'download_(3)_69284451e0688.jpeg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Wild Spring Break with Grandpa', NULL, 'wild_spring_break_with_grandpa_thumb.png', 'wild_spring_break_with_grandpa_poster.png', 'The hilarious misadventures of Jason Kelly, a buttoned-up lawyer-to-be, who gets roped into a wild road trip with his outrageous grandfather. As they hit the road for Daytona Beach, chaos ensues with outrageous parties, karaoke showdowns, and unexpected life lessons. Through all the madness, both Jason and his \"dirty\" grandpa learn about family, fun, and embracing life\'s wild side. 🚗🍻🎤', 'YouTube', 'movie', 'https://youtu.be/skl7gYRZHwE?si=kiekCHcihmEJH54D', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '02:58', '2024-06-29', 0, 'YouTube', 'https://youtu.be/sAmbtZrV72g?si=6GnXgyZRZNlDKV9Y', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL, 'wild_spring_break_with_grandpa_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Into the Wilderness', NULL, 'into_the_wilderness_thumb.png', 'into_the_wilderness_poster.png', 'In \"Into the Wilderness,\" four childhood friends reunite at a secluded cabin to rekindle their bond after years apart. What begins as a peaceful retreat quickly turns into a suspenseful nightmare when they realize something sinister lurks in the surrounding woods. As the tension builds, their friendship is tested, and survival becomes the only priority. This family-friendly thriller is packed with mystery, unexpected twists, and heart-pounding moments that will keep you on the edge of your seat. 🏞️🕯️🌲', 'YouTube', 'movie', 'https://youtu.be/pAxGJfEYuJI?si=phHEzZJDHV0q3pjb', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '02:40', '2024-06-30', 0, 'YouTube', 'https://youtu.be/7oWMBl-NJXs?si=w1qoW7qYWfAsU2oV', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL, 'into_the_wilderness_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Colors of Hope', NULL, 'colors_of_hope_thumb.png', 'colors_of_hope_poster.png', '“Colors of Hope” tells the story of Winter Knight, a young girl with a vibrant artistic talent, who is weighed down by the challenges of dyslexia. As she struggles to navigate school, friendships, and daily life, she begins to feel defined by her limitations rather than her abilities. Overwhelmed by feelings of hopelessness, Winter loses sight of her unique gifts. However, her journey takes a transformative turn as she discovers that her struggles have shaped her into someone extraordinary. With perseverance, faith, and support, Winter learns that her pain has a greater purpose, and through her art, she can inspire others. 🎨🌈💪', 'YouTube', 'movie', 'https://youtu.be/BSWw80zzB48?si=zXTNQ2i0W30uBb2k', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '02:50', '2024-07-01', 0, 'YouTube', 'https://youtu.be/sCwxAxeTymc?si=I2LZLF1h6CvIRvNK', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL, 'colors_of_hope_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Wolves of the Dawn', NULL, 'download_(1)_69283363cd900.jpeg', 'download_(1)_69283363cd900.jpeg', '<p>Many tribes unite to defend their homeland against invaders who desecrate their sacred grounds. Through fierce battles and legendary alliances, they fight to preserve their future, giving rise to a powerful legacy that will echo throughout history. ⚔️🐺🌄</p>', 'YouTube', 'movie', 'https://youtu.be/MAFsRmx6pPo?si=CJjoeRbHVtKJt9oC', 'pay-per-view', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:56', '2024-07-04', 0, 'YouTube', 'https://youtu.be/VOwUgraDBFI?si=1IUq1nOWZzSogcE8', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-27 11:18:12', NULL, 'download_(1)_69283363cd900.jpeg', 40.00, 'onetime', NULL, '10', 20, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Legends of the Eternal Flame', NULL, 'download_(2)_6928339a461b3.jpeg', 'download_(2)_6928339a461b3.jpeg', '<p>A historical animated adventure set in an ancient kingdom, where mythical creatures, brave warriors, and powerful magic collide. The story follows a young warrior on a quest to protect a legendary flame that holds the balance of the kingdom\'s fate. Along the journey, he learns about courage, friendship, and the responsibilities of wielding great power. 🌋⚔️</p>', 'YouTube', 'movie', 'https://youtu.be/nzzq4V2I6hE?si=wkokzDNAvvxLY9Tm', 'pay-per-view', NULL, 'english', '6', 'PG (Parental Guidance Suggested)', '02:45', '2024-07-06', 1, 'YouTube', 'https://youtu.be/QAYFz3owVRk?si=pSWSgkzyodKbfomo', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-27 11:25:23', NULL, 'download_(2)_6928339a461b3.jpeg', 40.00, 'onetime', NULL, '10', 20, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'The House of Last Respite', NULL, 'download_(3)_6928368d293bf.jpeg', 'download_(3)_6928368d293bf.jpeg', '<p>🏚️ \"The House of Last Respite\" follows two families who stumble upon a seemingly perfect farmhouse, only to find themselves trapped in a horrifying nightmare. When they rescue a mute girl with a brutal past, they discover that every escape attempt leads them back to the same sinister house. As they face the wrath of a malevolent former owner, their unity unravels into chaos and terror. The house demands a horrifying choice: only one family will survive and claim it as their home. 😱🔪🏠</p>', 'YouTube', 'movie', 'https://youtu.be/WaewToFT59c?si=204R6vnVc3NfrrN5', 'pay-per-view', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:35', '2024-07-08', 0, 'YouTube', 'https://youtu.be/XimvdthKNas?si=ICjfDs44I0_nmK-k', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-27 11:31:42', NULL, 'download_(3)_6928368d293bf.jpeg', 40.00, 'onetime', NULL, '10', 20, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'The Monarch\'s Last Hope', NULL, 'the_monarchs_last_hope_thumb.png', 'the_monarchs_last_hope_poster.png', 'When the king is kidnapped, a team of skilled beauty agents is called upon to rescue him. Their mission takes them across treacherous landscapes and through deadly battles as they fight to bring the king back before it\'s too late. ⚔️👑🚁', 'YouTube', 'movie', 'https://youtu.be/Z5W1aLsgAMI?si=BgYhG4m-47JoIzvZ', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '01:25', '2024-07-09', 0, 'YouTube', 'https://youtu.be/zWY_vGKN2kE?si=7LQnMTbm_zoEjTDJ', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL, 'the_monarchs_last_hope_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Aunt Nell\'s Babysitting Blues', NULL, 'aunt_nells_babysitting_blues_thumb.png', 'aunt_nells_babysitting_blues_poster.png', 'Nell\'s hilarious attempts to bond with her indifferent niece, Tilly. When Nell feels overshadowed by Tilly\'s fascination with a new friend, Edward, her babysitting gig turns into a series of comedic mishaps. 🍕🎈', 'YouTube', 'movie', 'https://youtu.be/AqW9MGeauOs?si=4kwGJ3ecgU96WKaH', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '01:30', '2024-07-11', 0, 'YouTube', 'https://youtu.be/7ij1BulfHWU?si=v30_ZzB99dmfUTiG', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL, 'aunt_nells_babysitting_blues_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'The Iron Cavalry', NULL, 'the_iron_cavalry_thumb.png', 'the_iron_cavalry_poster.png', 'Captain Balram Singh Mehta and his 45 Cavalry regiment face fierce battles on the eastern front during the 1971 Indo-Pakistani War. Named after the Russian PT-76 tank, the film captures Mehta\'s journey from a determined soldier to a hero fighting for Bangladesh’s freedom. The story highlights courage and sacrifice amidst a pivotal historical conflict. 🎖️🔥', 'YouTube', 'movie', 'https://youtu.be/i2vFwRTOKa4?si=zsyLY5PNUnb7SAlL', 'free', NULL, 'hindi', '6', 'TV-MA (Mature Audiences)', '02:30', '2024-07-12', 0, 'YouTube', 'https://youtu.be/vAp-9i4mFBQ?si=53kE_c6K8fftINMb', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL, 'the_iron_cavalry_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'The Cavern of Titans', NULL, 'the_cavern_of_titans_thumb.png', 'the_cavern_of_titans_poster.png', 'The tale of a daring expedition into a subterranean realm, where colossal creatures and forgotten civilizations thrive. As the explorers face unimaginable dangers, they must rely on their courage and wits to uncover the secrets of the deep and return to the world above. 🏔️🐉🌪️', 'YouTube', 'movie', 'https://youtu.be/iJkspWwwZLM?si=chtl8vdmLqPNKPfE', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '01:25', '2024-07-15', 0, 'YouTube', 'https://youtu.be/16TqpaRYTd8?si=l2tsBSCpD3fLwIFU', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL, 'the_cavern_of_titans_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Family Feud Fiasco', NULL, '00movie192183215775429881577a1ad6512311c4c54a24ade6841caf1e8_69282bbbd700e.jpg', '00movie192183215775429881577a1ad6512311c4c54a24ade6841caf1e8_69282bbbd700e.jpg', '<p>When the Jones family\'s estranged patriarch dies unexpectedly on their doorstep. As a well-meaning paramedic tries to ease tensions and win over the grumpy Jean Jones, old family disputes flare up during the funeral, leading to a series of comical and awkward situations. Amidst the chaos, the family must confront their past and find a way to come together, all while navigating hilarious mishaps and misunderstandings. 🏠🚑🎉</p>', 'YouTube', 'movie', 'https://youtu.be/0Ji6i79LiL8?si=IIG3-D6Jl72oJq0_', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '01:30', '2024-07-18', 0, 'YouTube', 'https://youtu.be/JAoR9u85DQ0?si=JggaatJIEG5HxlOm', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-27 10:45:40', NULL, '00movie192183215775429881577a1ad6512311c4c54a24ade6841caf1e8_69282bbbd700e.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Voice of Freedom: The Hero\'s Journey', NULL, 'voice_of_freedom_the_heros_journey_thumb.png', 'voice_of_freedom_the_heros_journey_poster.png', 'Set in ancient times, this historical animated film tells the inspiring story of a young boy, enslaved and torn from his homeland, who dreams of becoming a great warrior. Facing oppression and hardship, he discovers his inner strength and courage to fight for his freedom and that of his people. Through his unwavering faith and determination, he becomes a symbol of hope and liberation for his entire community. 🗡️🕊️', 'YouTube', 'movie', 'https://youtu.be/VhrZBHwOMUs?si=1tIuoknprcIy9m5T', 'paid', 3, 'english', '6', 'PG (Parental Guidance Suggested)', '02:30', '2024-07-20', 0, 'YouTube', 'https://youtu.be/yXtO-h7BVKw?si=Ub5VP8epIf2rAKo9', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL, 'voice_of_freedom_the_heros_journey_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'The Silent Sentinel', NULL, 'the_silent_sentinel_thumb.png', 'the_silent_sentinel_poster.png', 'In a gripping portrayal of the Indo-Pak War, \"The Silent Sentinel\" follows two Indian Army soldiers—a sniper and his spotter—trapped in a moral conflict as they face off against their adversaries. This historical thriller explores the depths of war\'s impact with suspenseful drama and an evocative soundtrack. 🎖️🕊️', 'YouTube', 'movie', 'https://youtu.be/QROfT5dT_yQ?si=6BjCzjHBnjfg6CWG', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '03:00', '2024-07-24', 0, 'YouTube', 'https://youtu.be/JEKCMP3w9zs?si=ylfFHdeYPonn4_8t', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL, 'the_silent_sentinel_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Unspoken Bonds', NULL, 'unspoken_bonds_thumb.png', 'unspoken_bonds_poster.png', '\"Unspoken Bonds\" follows Hannah and her daughter Esme, whose days are numbered due to a devastating illness. Hoping for a final chance to connect, they retreat to an isolated family farm. As they struggle to find peace, unspoken truths emerge, creating tension and suspense that grips both mother and daughter. This emotional thriller reveals that sometimes the darkest secrets are the ones buried deep within, and they must confront their pain to truly find each other before it\'s too late. 🌾💔', 'YouTube', 'movie', 'https://youtu.be/O9i2vmFhSSY?si=c-irbe19bosTBub6', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:45', '2024-07-27', 0, 'YouTube', 'https://youtu.be/6CqyAbUm43E?si=8PbEm_syEkAGmIGe', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL, 'unspoken_bonds_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Against All Odds', NULL, 'against_all_odds_thumb.png', 'against_all_odds_poster.png', '🏅🔥 \"Against All Odds\" tells the inspiring true story of Gail Devers, a world-class sprinter whose career was nearly derailed by a life-threatening illness. Faced with the possibility of never running again, Gail’s future looked uncertain. But her incredible willpower, perseverance, and unwavering belief in herself led her to a stunning victory at the 1992 Barcelona Olympics, where she claimed the Gold Medal in the 100-meter sprint. \"Against All Odds\" is a testament to the human spirit’s ability to rise above adversity and achieve greatness, no matter the obstacles. 🏆💪🌟', 'YouTube', 'movie', 'https://youtu.be/pRH5u5lpArQ?si=JZPYWGGJDohHxmQf', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '02:30', '2024-07-30', 0, 'YouTube', 'https://youtu.be/F2nO-6mzCF8?si=QxOosE72QHcl5nrT', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL, 'against_all_odds_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Hearts of Valor', NULL, 'hearts_of_valor_thumb.png', 'hearts_of_valor_poster.png', 'Set in a dynamic animated world, \"Hearts of Valor\" reimagines Shakespeare\'s timeless tale of love and tragedy, capturing the intensity and purity of young love. Targeted for pre-teens and young teens, this action-packed retelling balances romance with thrilling sword fights and daring escapes. 💘⚔️🌹', 'YouTube', 'movie', 'https://youtu.be/NqSn5AOdybg?si=XbMfERZkJebDIscn', 'free', NULL, 'english', '6', 'PG (Parental Guidance Suggested)', '02:50', '2024-07-31', 1, 'YouTube', 'https://youtu.be/kIqzT7HIu-I?si=TV3gUqGaPWBNqkYO', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL, 'hearts_of_valor_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Charlotte\'s Curse', NULL, 'Container_1_69283235715cd.jpg', 'Container_1_69283235715cd.jpg', '<p>When a family unknowingly brings home an antique doll, they become entangled in a chilling and haunting experience. The spirit of Charlotte, a vengeful girl trapped in the doll, begins to torment them. Unsettling occurrences grow into a full-blown terror as the family discovers Charlotte&rsquo;s tragic and sinister history. As they try to rid themselves of the doll, the evil attached to it only tightens its grip, threatening to destroy them all. Will they survive, or will Charlotte&rsquo;s curse claim them one by one? Prepare for a terrifying journey of suspense, fear, and the unknown in this spine-tingling horror thriller. 👻🕯️🎭</p>', 'YouTube', 'movie', 'https://youtu.be/TY6X-vXSZjU?si=avF0vLQtTLiOzjRb', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:55', '2024-08-01', 0, 'YouTube', 'https://youtu.be/G8ngi-HhojM?si=V8aeIpX390vOu7MS', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-27 11:13:34', NULL, 'Container_1_69283235715cd.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Cultural Clash Comedy', NULL, 'Container_2_6928329e0701b.jpg', 'Container_2_6928329e0701b.jpg', '<p>The journey of a college student who, despite being raised in a white liberal household, seeks to connect with his African American heritage. With the comedic assistance of his white best friend, they navigate the complexities of identity and family expectations. The film portrays the comedic and poignant moments as the new couple faces their parents\' conflicting views on their relationship and cultural explorations. 🎬💥</p>', 'YouTube', 'movie', 'https://youtu.be/pCMHc-IFAB0?si=vIVQzT73CoPjbEio', 'paid', 3, 'english', '6', 'TV-MA (Mature Audiences)', '01:50', '2024-08-03', 0, 'YouTube', 'https://youtu.be/DJ0_rhsljpc?si=6KwFhULBBgZ0mKEG', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-27 11:14:55', NULL, 'Container_2_6928329e0701b.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Crossroads of Conflict', NULL, '1920x7700864fedcdbcc408c90af2686914aa2bf44f1a21adee44c44845b2c7eee271892_692830d03a765.jpg', '1920x7700864fedcdbcc408c90af2686914aa2bf44f1a21adee44c44845b2c7eee271892_692830d03a765.jpg', '<p>\"Crossroads of Conflict\" explores the lives of three men, each in a different war, who find themselves at a moral crossroads. As they battle on the frontlines, they must grapple with shifting alliances, moral dilemmas, and the unpredictable nature of war. Their fates are tied together in a world where violence reigns, but all is not as it seems. 🌍⚔️</p>', 'YouTube', 'movie', 'https://youtu.be/s2-1hz1juBI?si=OG5eOFO6QnSfLiFb', 'paid', 4, 'english', '6', 'TV-MA (Mature Audiences)', '02:40', '2024-08-06', 0, 'YouTube', 'https://youtu.be/AWuxeDm1SGA?si=5rZ3rc4LnLYtmJ2u', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-27 11:07:14', NULL, '1920x7700864fedcdbcc408c90af2686914aa2bf44f1a21adee44c44845b2c7eee271892_692830d03a765.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Faithful Survival', NULL, '1920x7702462de77f2a947f1ba668bc9ca226736978a7f129ab74465b3ee624f2baac5bd8e41064f78934fc5989e291351b433f5_6928314e8ca32.jpg', '1920x7702462de77f2a947f1ba668bc9ca226736978a7f129ab74465b3ee624f2baac5bd8e41064f78934fc5989e291351b433f5_6928314e8ca32.jpg', '<p>🌟 \"Faithful Survival\" tells the inspiring story of 16-year-old Dior, who, after losing her family in a tragic accident, must navigate the harsh realities of life on her own. Armed with her faith and a strong sense of self, Dior faces the challenges of homelessness, prejudice, and isolation. As she struggles to make a better life for herself, she finds unexpected allies and discovers the power of hope, perseverance, and community. This powerful drama highlights the strength of the human spirit in the face of adversity and is a reminder of the transformative power of belief and resilience. 🌈💪</p>', 'YouTube', 'movie', 'https://youtu.be/QKjZSOjzChg?si=_GIkyvBk5D53D9nJ', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:35', '2024-08-07', 0, 'YouTube', 'https://youtu.be/J39ntOPVDE8?si=lPqdMSdD3Ham5RUh', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-27 11:09:29', NULL, '1920x7702462de77f2a947f1ba668bc9ca226736978a7f129ab74465b3ee624f2baac5bd8e41064f78934fc5989e291351b433f5_6928314e8ca32.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `entertainments` (`id`, `name`, `tmdb_id`, `thumbnail_url`, `poster_url`, `description`, `trailer_url_type`, `type`, `trailer_url`, `movie_access`, `plan_id`, `language`, `IMDb_rating`, `content_rating`, `duration`, `release_date`, `is_restricted`, `video_upload_type`, `video_url_input`, `video_quality_url`, `enable_quality`, `download_status`, `download_type`, `download_url`, `enable_download_quality`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`, `poster_tv_url`, `price`, `purchase_type`, `access_duration`, `discount`, `available_for`, `subtitle_file`, `enable_subtitle`, `subtitle_language`, `is_default_subtitle`, `meta_title`, `meta_keywords`, `meta_description`, `seo_image`, `google_site_verification`, `canonical_url`, `short_description`) VALUES
(99, 'Beneath the Surface', NULL, '1920x77066af350882a94592bfac2c1ee2ad9b35c0d6f8b961ed443c802c249dbef2e290_69282c1184511.jpg', '1920x77066af350882a94592bfac2c1ee2ad9b35c0d6f8b961ed443c802c249dbef2e290_69282c1184511.jpg', '<p>💘 A famed womanizer\'s world shifts when he meets a model whose mysterious life challenges him to reconsider his choices. As secrets are revealed, both realize that love is not just about chemistry&mdash;it\'s about vulnerability and trust. Together, they embark on a journey of self-discovery, learning that real love means facing the truth beneath the surface. 💖🌊 🌹✨💑</p>', 'YouTube', 'movie', 'https://youtu.be/l3P2vrcKiXs?si=PG6Yj6Bff7KrDaeB', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:58', '2024-08-10', 0, 'YouTube', 'https://youtu.be/rzR3KkzKwCY?si=jJN2ZFJz2afzdeqa', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-27 10:46:56', NULL, '1920x77066af350882a94592bfac2c1ee2ad9b35c0d6f8b961ed443c802c249dbef2e290_69282c1184511.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Nowhere to Hide', NULL, '1920x7706851981f79344cbe8b66856219924863689004e768d1489289626fb9be4a81f2_6928318bb5ee7.jpg', '1920x7706851981f79344cbe8b66856219924863689004e768d1489289626fb9be4a81f2_6928318bb5ee7.jpg', '<p>\"Nowhere to Hide\" tells the chilling story of Sarah, who goes to extreme lengths to escape her abusive husband by staging her death. Believing she&rsquo;s safe, Sarah starts over under a new identity, but the peace is short-lived when her husband learns of her survival. With her life hanging by a thread, Sarah must stay one step ahead of her dangerous pursuer, leading to a heart-stopping showdown where survival is the only option. 🖤🎯🌫️</p>', 'YouTube', 'movie', 'https://youtu.be/7EzpvriIQ3I?si=32wWLtYpLoOf7QuP', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:50', '2024-08-17', 0, 'YouTube', 'https://youtu.be/BrDKY3RRg-g?si=SJgkbOqPdgCZCCOs', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-27 11:10:42', NULL, '1920x7706851981f79344cbe8b66856219924863689004e768d1489289626fb9be4a81f2_6928318bb5ee7.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'The Haunting Veil', NULL, 'the_haunting_veil_thumb.png', 'the_haunting_veil_poster.png', '👻 \"The Haunting Veil\" follows Tobias\' newfound romance that spirals into terror as strange accidents and unexplainable coincidences plague his life. His lover’s past is cloaked in dark secrets that, one by one, manifest as deadly forces. As Tobias unravels the mystery behind the horrifying occurrences, he finds himself trapped in a haunting web of danger and deception. Will he escape the sinister forces, or will love consume him entirely? A spine-chilling journey through love, betrayal, and supernatural horror. 👻💔🔮', 'YouTube', 'movie', 'https://youtu.be/BruiisujNJY?si=GGnUUVXqX0BfCTQC', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:56', '2024-08-20', 0, 'YouTube', 'https://youtu.be/ln4lDjT8Ab0?si=LIretoN3T65HTieV', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL, 'the_haunting_veil_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Dead Zone Heist', NULL, '1920x77070e4a9ce8eb841aaa7961e003b9fb9c8233d3aa31157440d81f86388c09b68e5_69282c5d0a6e8.jpg', '1920x77070e4a9ce8eb841aaa7961e003b9fb9c8233d3aa31157440d81f86388c09b68e5_69282c5d0a6e8.jpg', '<p>A former war hero leads a group of mercenaries into a zombie-infested Las Vegas to retrieve a fortune hidden beneath the Strip. With time running out before the city is obliterated, the team must battle intelligent zombies and survive the ultimate heist. 💀💰🧟&zwj;♂️⏳</p>', 'YouTube', 'movie', 'https://youtu.be/HHJkUQGm2H8?si=azs9wdvXt22o54B3', 'paid', 2, 'english', '6', 'TV-MA (Mature Audiences)', '02:40', '2024-08-23', 0, 'YouTube', 'https://youtu.be/iwA8ooWRNBs?si=JqXh28NIx2Dgk8aA', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-27 10:48:19', NULL, '1920x77070e4a9ce8eb841aaa7961e003b9fb9c8233d3aa31157440d81f86388c09b68e5_69282c5d0a6e8.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'The Cursed Frontier', NULL, 'Container_3_692832eb1332c.jpg', 'Container_3_692832eb1332c.jpg', '<p>In a desolate horrible town, a group of friends encounters a menacing pack of wild creatures. Surrounded and threatened, they must confront their fears and work together to overcome the danger and escape the curse of the frontier. 🏜️🦝⚔️</p>', 'YouTube', 'movie', 'https://youtu.be/6sxnOLRGkhw?si=WrBfEDVah3Z-vFwO', 'free', NULL, 'english', '6', 'TV-MA (Mature Audiences)', '02:45', '2024-08-27', 0, 'YouTube', 'https://youtu.be/ln4lDjT8Ab0?si=LIretoN3T65HTieV', NULL, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-27 11:16:09', NULL, 'Container_3_692832eb1332c.jpg', NULL, 'rental', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entertainment_country_mapping`
--

CREATE TABLE `entertainment_country_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` bigint(20) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entertainment_country_mapping`
--

INSERT INTO `entertainment_country_mapping` (`id`, `entertainment_id`, `country_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 5, 19, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(16, 5, 46, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(17, 5, 88, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(18, 5, 246, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(22, 7, 111, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(23, 7, 158, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(24, 7, 68, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(25, 7, 95, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(29, 9, 5, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(30, 9, 145, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(31, 10, 122, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(32, 10, 118, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(33, 10, 128, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(34, 11, 221, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(35, 12, 200, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(36, 12, 100, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(37, 13, 99, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(38, 13, 199, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(39, 14, 9, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(40, 14, 19, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(41, 14, 29, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(42, 15, 8, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(43, 15, 18, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(44, 15, 28, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(45, 16, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(46, 16, 17, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(47, 16, 27, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(48, 16, 37, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(49, 17, 47, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(50, 17, 57, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(51, 17, 67, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(52, 18, 177, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(53, 18, 167, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(54, 18, 157, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(55, 19, 197, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(56, 20, 187, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(57, 20, 137, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(74, 27, 221, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(75, 27, 227, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(76, 27, 117, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(77, 27, 37, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(87, 32, 199, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(88, 32, 69, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(89, 33, 129, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(90, 33, 77, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(91, 34, 48, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(92, 34, 12, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(93, 35, 224, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(94, 36, 268, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(95, 37, 46, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(96, 37, 246, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(97, 38, 222, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(98, 39, 169, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(99, 39, 78, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(100, 40, 168, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(101, 40, 72, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(102, 41, 18, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(103, 41, 49, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(104, 41, 167, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(105, 42, 154, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(106, 42, 137, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(107, 43, 125, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(108, 43, 197, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(109, 44, 197, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(110, 45, 139, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(111, 45, 101, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(112, 46, 160, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(113, 46, 170, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(114, 47, 145, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(115, 48, 117, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(116, 48, 101, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(117, 49, 2, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(118, 49, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(119, 50, 72, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(120, 50, 76, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(121, 51, 101, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(124, 53, 19, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(125, 53, 72, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(126, 54, 37, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(127, 54, 49, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(132, 57, 101, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(133, 57, 208, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(134, 58, 209, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(135, 58, 206, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(136, 59, 212, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(137, 59, 219, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(138, 60, 229, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(139, 60, 224, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(140, 61, 101, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(141, 61, 29, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(142, 62, 36, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(143, 62, 45, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(144, 63, 220, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(145, 64, 7, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(146, 64, 180, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(147, 65, 19, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(148, 65, 80, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(149, 66, 70, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(150, 66, 99, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(157, 70, 78, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(158, 70, 49, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(159, 70, 58, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(160, 71, 7, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(161, 71, 17, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(162, 71, 27, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(163, 71, 37, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(164, 72, 7, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(165, 72, 17, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(166, 72, 27, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(167, 73, 70, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(168, 73, 17, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(169, 73, 246, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(170, 74, 101, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(171, 75, 240, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(172, 76, 49, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(173, 76, 28, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(179, 79, 46, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(180, 79, 28, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(181, 80, 10, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(182, 80, 20, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(183, 81, 49, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(184, 81, 2, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(190, 85, 210, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(191, 85, 187, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(192, 86, 120, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(193, 86, 180, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(194, 87, 230, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(195, 87, 17, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(196, 88, 2, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(197, 88, 9, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(200, 90, 220, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(201, 90, 77, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(202, 91, 27, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(203, 91, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(204, 92, 2, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(205, 92, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(206, 93, 27, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(207, 93, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(208, 94, 27, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(209, 94, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(221, 101, 27, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(222, 101, 37, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(227, 89, 27, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(228, 89, 37, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(229, 99, 27, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(230, 99, 37, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(231, 102, 27, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(232, 102, 37, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(233, 97, 27, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(234, 97, 37, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(235, 98, 27, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(236, 98, 37, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(237, 100, 27, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(238, 100, 37, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(240, 95, 37, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(241, 96, 27, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(242, 96, 37, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(243, 103, 27, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(244, 103, 37, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(245, 82, 17, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(246, 83, 7, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(247, 83, 25, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(248, 84, 27, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(249, 84, 37, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(250, 77, 74, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(251, 77, 82, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(252, 67, 30, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(253, 67, 40, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(254, 68, 70, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(255, 68, 80, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(256, 69, 37, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(257, 69, 79, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(258, 55, 139, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(259, 55, 239, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(260, 22, 1, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(261, 22, 100, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(262, 22, 225, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(263, 26, 101, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(264, 26, 212, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(265, 26, 220, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(266, 28, 24, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(267, 28, 34, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(268, 28, 154, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(269, 28, 174, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(270, 29, 244, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(271, 1, 1, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(272, 1, 25, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(273, 1, 45, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(274, 1, 78, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(275, 2, 12, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(276, 2, 35, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(277, 2, 55, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(278, 3, 2, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(279, 3, 8, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(280, 3, 20, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(281, 4, 1, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(282, 4, 23, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(283, 4, 64, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(284, 4, 78, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(285, 6, 152, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(286, 6, 188, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(287, 6, 225, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(288, 8, 83, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(289, 8, 96, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(290, 8, 110, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(291, 21, 1, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(292, 21, 91, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(293, 21, 100, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(294, 21, 225, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(295, 23, 126, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(296, 23, 226, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(297, 24, 26, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(298, 24, 46, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(299, 25, 101, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(300, 25, 221, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(301, 30, 144, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(302, 30, 156, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(303, 31, 58, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(304, 31, 177, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(305, 52, 38, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(306, 52, 49, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(307, 56, 231, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(308, 56, 238, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(309, 78, 38, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(310, 78, 49, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(311, 78, 101, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entertainment_downloads`
--

CREATE TABLE `entertainment_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `entertainment_type` varchar(191) DEFAULT NULL,
  `is_download` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(191) DEFAULT NULL,
  `quality` varchar(191) DEFAULT NULL,
  `device_id` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entertainment_download_mapping`
--

CREATE TABLE `entertainment_download_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `quality` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entertainment_gener_mapping`
--

CREATE TABLE `entertainment_gener_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` bigint(20) NOT NULL,
  `genre_id` bigint(20) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entertainment_gener_mapping`
--

INSERT INTO `entertainment_gener_mapping` (`id`, `entertainment_id`, `genre_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 5, 5, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(14, 5, 3, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(15, 5, 4, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(19, 7, 4, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(20, 7, 7, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(21, 7, 8, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(25, 9, 2, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(26, 9, 7, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(27, 9, 8, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(28, 10, 4, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(29, 10, 8, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(30, 10, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(31, 10, 6, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(32, 11, 1, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(33, 11, 3, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(34, 11, 5, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(35, 12, 1, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(36, 12, 3, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(37, 12, 5, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(38, 13, 3, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(39, 13, 4, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(40, 13, 2, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(41, 14, 6, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(42, 14, 1, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(43, 14, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(44, 15, 3, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(45, 15, 5, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(46, 15, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(47, 16, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(48, 16, 5, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(49, 16, 6, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(50, 16, 8, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(51, 17, 8, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(52, 17, 1, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(53, 17, 2, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(54, 17, 4, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(55, 18, 3, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(56, 18, 5, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(57, 18, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(58, 18, 6, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(59, 19, 5, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(60, 19, 6, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(61, 19, 8, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(62, 19, 1, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(63, 20, 8, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(64, 20, 6, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(65, 20, 5, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(84, 27, 3, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(85, 27, 5, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(98, 32, 3, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(99, 32, 4, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(100, 32, 2, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(101, 33, 5, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(102, 33, 4, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(103, 33, 2, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(104, 34, 5, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(105, 34, 8, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(106, 34, 7, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(107, 35, 4, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(108, 35, 6, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(109, 35, 8, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(110, 36, 4, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(111, 36, 5, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(112, 37, 6, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(113, 37, 7, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(114, 37, 4, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(115, 38, 6, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(116, 38, 2, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(117, 38, 3, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(118, 39, 7, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(119, 39, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(120, 39, 2, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(121, 40, 7, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(122, 40, 4, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(123, 40, 5, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(124, 41, 2, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(125, 41, 5, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(126, 41, 7, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(127, 42, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(128, 42, 2, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(129, 42, 3, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(130, 43, 4, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(131, 43, 5, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(132, 43, 6, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(133, 44, 7, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(134, 44, 8, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(135, 45, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(136, 45, 6, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(137, 45, 7, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(138, 46, 2, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(139, 46, 8, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(140, 46, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(141, 47, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(142, 47, 5, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(143, 47, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(144, 48, 7, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(145, 48, 5, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(146, 48, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(147, 49, 8, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(148, 49, 6, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(149, 49, 5, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(150, 50, 6, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(151, 50, 3, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(152, 50, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(153, 51, 7, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(154, 51, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(155, 51, 5, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(159, 53, 2, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(160, 53, 3, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(161, 53, 4, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(162, 54, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(163, 54, 4, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(164, 54, 6, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(171, 57, 4, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(172, 57, 5, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(173, 57, 6, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(174, 58, 5, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(175, 58, 6, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(176, 59, 4, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(177, 59, 5, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(178, 60, 7, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(179, 60, 8, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(180, 61, 2, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(181, 61, 6, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(182, 61, 7, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(183, 62, 8, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(184, 62, 7, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(185, 62, 5, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(186, 63, 4, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(187, 63, 3, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(188, 63, 6, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(189, 64, 6, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(190, 64, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(191, 64, 2, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(192, 65, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(193, 65, 4, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(194, 65, 5, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(195, 66, 5, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(196, 66, 2, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(197, 66, 3, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(207, 70, 5, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(208, 70, 3, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(209, 70, 4, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(210, 71, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(211, 71, 2, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(212, 71, 6, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(213, 72, 3, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(214, 72, 5, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(215, 73, 7, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(216, 73, 6, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(217, 74, 8, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(218, 74, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(219, 75, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(220, 75, 6, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(221, 75, 7, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(222, 76, 5, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(223, 76, 3, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(224, 76, 2, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(231, 79, 3, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(232, 79, 6, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(233, 79, 7, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(234, 80, 8, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(235, 80, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(236, 80, 2, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(237, 81, 6, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(238, 81, 4, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(239, 81, 5, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(248, 85, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(249, 85, 5, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(250, 85, 6, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(251, 86, 3, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(252, 86, 6, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(253, 86, 8, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(254, 87, 4, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(255, 87, 7, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(256, 88, 6, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(257, 88, 5, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(258, 88, 8, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(261, 90, 2, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(262, 90, 4, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(263, 91, 4, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(264, 91, 8, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(265, 92, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(266, 92, 8, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(267, 93, 4, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(268, 93, 7, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(269, 93, 6, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(270, 94, 2, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(271, 94, 5, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(272, 94, 8, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(291, 101, 3, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(292, 101, 4, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(293, 101, 5, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(300, 89, 1, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(301, 89, 3, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(302, 99, 3, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(303, 99, 4, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(304, 99, 7, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(305, 102, 2, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(306, 102, 7, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(307, 102, 8, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(308, 97, 4, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(309, 97, 5, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(310, 97, 7, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(311, 98, 2, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(312, 98, 3, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(313, 98, 6, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(314, 100, 5, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(315, 100, 6, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(316, 100, 8, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(320, 95, 2, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(321, 95, 3, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(322, 95, 5, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(323, 96, 3, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(324, 96, 4, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(325, 96, 5, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(326, 103, 1, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(327, 103, 7, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(328, 103, 8, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(329, 82, 1, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(330, 82, 4, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(331, 82, 5, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(332, 83, 2, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(333, 83, 4, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(334, 83, 5, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(335, 84, 3, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(336, 84, 5, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(337, 77, 1, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(338, 77, 4, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(339, 77, 6, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(340, 67, 3, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(341, 67, 4, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(342, 67, 7, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(343, 68, 5, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(344, 68, 6, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(345, 68, 7, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(346, 69, 1, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(347, 69, 2, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(348, 69, 8, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(349, 55, 5, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(350, 55, 6, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(351, 55, 7, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(352, 22, 1, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(353, 22, 4, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(354, 22, 5, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(355, 26, 2, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(356, 26, 5, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(357, 26, 6, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(358, 28, 6, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(359, 28, 7, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(360, 28, 8, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(361, 29, 5, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(362, 29, 6, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(363, 29, 8, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(364, 1, 1, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(365, 1, 3, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(366, 1, 5, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(367, 2, 2, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(368, 2, 4, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(369, 2, 6, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(370, 3, 2, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(371, 3, 7, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(372, 3, 8, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(373, 4, 4, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(374, 4, 6, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(375, 4, 8, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(376, 6, 6, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(377, 6, 7, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(378, 6, 8, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(379, 8, 1, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(380, 8, 2, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(381, 8, 3, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(382, 21, 1, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(383, 21, 2, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(384, 21, 3, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(385, 23, 1, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(386, 23, 5, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(387, 23, 6, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(388, 24, 2, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(389, 24, 4, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(390, 24, 5, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(391, 25, 2, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(392, 25, 8, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(393, 30, 3, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(394, 30, 5, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(395, 30, 7, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(396, 31, 3, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(397, 31, 5, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(398, 31, 7, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(399, 52, 1, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(400, 52, 2, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(401, 52, 3, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(402, 56, 3, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(403, 56, 7, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(404, 56, 8, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(405, 78, 4, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(406, 78, 7, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(407, 78, 8, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entertainment_stream_content_mapping`
--

CREATE TABLE `entertainment_stream_content_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `quality` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entertainment_stream_content_mapping`
--

INSERT INTO `entertainment_stream_content_mapping` (`id`, `entertainment_id`, `type`, `quality`, `url`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 27, 'YouTube', '480p', 'https://youtu.be/U-KfnCpEEl4?si=Vc70N3_zFcBD0yR4', NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(14, 27, 'YouTube', '720p', 'https://youtu.be/U-KfnCpEEl4?si=HUmROBp9MupZ_mAa', NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(15, 27, 'YouTube', '1080p', 'https://youtu.be/U-KfnCpEEl4?si=Wd3qSh7kodL-LvxC', NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(16, 27, 'YouTube', '1440p', 'https://youtu.be/U-KfnCpEEl4?si=QcjXOGpAHgsq1IJl', NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(20, 36, 'YouTube', '480p', 'https://youtu.be/WltJPKFo_J4?si=zz4-zHhey7CK-d3N', NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(21, 36, 'YouTube', '720p', 'https://youtu.be/WltJPKFo_J4?si=0wIlovLv2RVlfjxt6', NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(22, 36, 'YouTube', '1080p', 'https://youtu.be/WltJPKFo_J4?si=BvEAyAoOkOdLnFr4', NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(23, 40, 'YouTube', '480p', 'https://youtu.be/22l6w8n9iCc?si=ojEDxNeMZ9DEFg8J', NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(24, 40, 'YouTube', '720p', 'https://youtu.be/22l6w8n9iCc?si=4gAqMfc4DUSUyg3G', NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(25, 40, 'YouTube', '1080p', 'https://youtu.be/22l6w8n9iCc?si=gVdCokIa76dm3gJy', NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(26, 22, 'YouTube', '480p', 'https://youtu.be/PdxPlbKFkaM?si=NydEmXECOvT1blJL', 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(27, 22, 'YouTube', '720p', 'https://youtu.be/PdxPlbKFkaM?si=zaa1bCmFWRbSxZEB', 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(28, 22, 'YouTube', '1080p', 'https://youtu.be/PdxPlbKFkaM?si=zlHHbalMgDJWz9Tp', 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(29, 22, 'YouTube', '2K', 'https://youtu.be/PdxPlbKFkaM?si=qaZ1H82OVU3sVx0V', 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(30, 26, 'YouTube', '480p', 'https://youtu.be/hlKFxyxOWIQ?si=d5nuCs6BYaIZJhSn', 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(31, 26, 'YouTube', '720p', 'https://youtu.be/hlKFxyxOWIQ?si=0NmD4yAoShQigs07', 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(32, 26, 'YouTube', '1080p', 'https://youtu.be/hlKFxyxOWIQ?si=_KagBhO3OxIJxdyx', 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(33, 26, 'YouTube', '1440p', 'https://youtu.be/hlKFxyxOWIQ?si=H096nrbHzq3_2hWF', 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(34, 29, 'YouTube', '480p', 'https://youtu.be/so2XtxcSLHQ?si=ac0V29WoRwQyTNc7', 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(35, 29, 'YouTube', '720p', 'https://youtu.be/so2XtxcSLHQ?si=N97AW29RFILE1nZ0', 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(36, 29, 'YouTube', '1080p', 'https://youtu.be/so2XtxcSLHQ?si=yk7Cvs-MlKkT8MQy', 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(37, 21, 'YouTube', '480p', 'https://youtu.be/5zSPGLoN9lQ?si=-BRLpMNIEJrnKm6f', 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(38, 21, 'YouTube', '720p', 'https://youtu.be/5zSPGLoN9lQ?si=sygr-NcCZcS00O0p', 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(39, 21, 'YouTube', '1080p', 'https://youtu.be/5zSPGLoN9lQ?si=eckyQwNdCsW6Pao6', 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(40, 21, 'YouTube', '2K', 'https://youtu.be/5zSPGLoN9lQ?si=eckyQwNdCsW6Pao6', 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entertainment_talent_mapping`
--

CREATE TABLE `entertainment_talent_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` bigint(20) NOT NULL,
  `talent_id` bigint(20) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entertainment_talent_mapping`
--

INSERT INTO `entertainment_talent_mapping` (`id`, `entertainment_id`, `talent_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(102, 5, 3, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(103, 5, 5, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(104, 5, 6, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(105, 5, 7, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(106, 5, 8, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(107, 5, 9, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(108, 5, 10, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(109, 5, 11, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(110, 5, 12, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(111, 5, 16, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(112, 5, 17, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(113, 5, 18, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(114, 5, 21, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(115, 5, 23, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(116, 5, 24, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(117, 5, 26, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(118, 5, 28, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(119, 5, 30, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(120, 5, 32, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(121, 5, 34, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(122, 5, 35, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(123, 5, 36, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(124, 5, 37, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(125, 5, 38, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(126, 5, 39, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(127, 5, 40, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(151, 7, 3, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(152, 7, 4, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(153, 7, 5, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(154, 7, 6, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(155, 7, 7, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(156, 7, 10, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(157, 7, 11, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(158, 7, 14, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(159, 7, 15, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(160, 7, 16, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(161, 7, 17, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(162, 7, 18, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(163, 7, 23, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(164, 7, 24, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(165, 7, 25, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(166, 7, 26, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(167, 7, 28, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(168, 7, 29, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(169, 7, 30, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(170, 7, 32, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(171, 7, 33, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(172, 7, 34, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(173, 7, 35, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(174, 7, 36, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(175, 7, 37, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(176, 7, 39, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(202, 9, 2, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(203, 9, 5, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(204, 9, 6, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(205, 9, 7, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(206, 9, 9, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(207, 9, 11, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(208, 9, 12, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(209, 9, 13, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(210, 9, 15, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(211, 9, 16, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(212, 9, 17, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(213, 9, 18, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(214, 9, 22, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(215, 9, 23, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(216, 9, 25, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(217, 9, 28, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(218, 9, 29, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(219, 9, 30, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(220, 9, 31, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(221, 9, 33, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(222, 9, 34, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(223, 9, 36, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(224, 9, 37, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(225, 9, 39, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(226, 9, 40, NULL, NULL, NULL, '2025-11-20 07:04:48', '2025-11-20 07:04:48', NULL),
(227, 10, 4, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(228, 10, 8, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(229, 10, 9, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(230, 10, 10, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(231, 10, 12, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(232, 10, 13, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(233, 10, 16, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(234, 10, 17, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(235, 10, 18, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(236, 10, 19, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(237, 10, 20, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(238, 10, 23, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(239, 10, 24, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(240, 10, 25, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(241, 10, 26, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(242, 10, 27, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(243, 10, 28, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(244, 10, 30, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(245, 10, 32, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(246, 10, 33, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(247, 10, 34, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(248, 10, 35, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(249, 10, 36, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(250, 10, 37, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(251, 10, 39, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(252, 11, 1, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(253, 11, 2, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(254, 11, 5, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(255, 11, 6, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(256, 11, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(257, 11, 10, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(258, 11, 11, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(259, 11, 12, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(260, 11, 13, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(261, 11, 14, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(262, 11, 15, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(263, 11, 16, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(264, 11, 17, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(265, 11, 24, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(266, 11, 25, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(267, 11, 26, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(268, 11, 27, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(269, 11, 28, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(270, 11, 29, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(271, 11, 30, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(272, 11, 31, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(273, 11, 32, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(274, 11, 34, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(275, 11, 36, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(276, 11, 37, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(277, 11, 38, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(278, 11, 40, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(279, 12, 2, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(280, 12, 3, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(281, 12, 4, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(282, 12, 8, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(283, 12, 9, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(284, 12, 10, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(285, 12, 13, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(286, 12, 14, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(287, 12, 16, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(288, 12, 18, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(289, 12, 19, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(290, 12, 20, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(291, 12, 21, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(292, 12, 23, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(293, 12, 24, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(294, 12, 26, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(295, 12, 28, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(296, 12, 30, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(297, 12, 32, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(298, 12, 34, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(299, 12, 35, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(300, 12, 36, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(301, 12, 37, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(302, 12, 38, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(303, 12, 39, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(304, 12, 40, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(305, 13, 1, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(306, 13, 3, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(307, 13, 4, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(308, 13, 5, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(309, 13, 6, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(310, 13, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(311, 13, 9, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(312, 13, 10, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(313, 13, 11, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(314, 13, 12, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(315, 13, 15, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(316, 13, 16, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(317, 13, 17, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(318, 13, 22, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(319, 13, 24, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(320, 13, 25, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(321, 13, 27, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(322, 13, 29, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(323, 13, 31, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(324, 13, 32, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(325, 13, 33, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(326, 13, 34, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(327, 13, 35, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(328, 13, 36, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(329, 13, 37, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(330, 14, 3, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(331, 14, 4, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(332, 14, 5, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(333, 14, 6, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(334, 14, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(335, 14, 8, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(336, 14, 10, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(337, 14, 11, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(338, 14, 14, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(339, 14, 15, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(340, 14, 16, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(341, 14, 17, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(342, 14, 18, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(343, 14, 23, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(344, 14, 24, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(345, 14, 25, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(346, 14, 26, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(347, 14, 27, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(348, 14, 28, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(349, 14, 30, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(350, 14, 32, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(351, 14, 33, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(352, 14, 34, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(353, 14, 35, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(354, 14, 36, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(355, 14, 37, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(356, 14, 39, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(357, 15, 1, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(358, 15, 2, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(359, 15, 3, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(360, 15, 4, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(361, 15, 8, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(362, 15, 9, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(363, 15, 10, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(364, 15, 11, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(365, 15, 13, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(366, 15, 14, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(367, 15, 16, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(368, 15, 19, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(369, 15, 20, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(370, 15, 24, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(371, 15, 25, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(372, 15, 26, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(373, 15, 27, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(374, 15, 28, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(375, 15, 29, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(376, 15, 30, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(377, 15, 31, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(378, 15, 32, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(379, 15, 34, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(380, 15, 36, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(381, 15, 37, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(382, 15, 38, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(383, 15, 40, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(384, 16, 2, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(385, 16, 5, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(386, 16, 6, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(387, 16, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(388, 16, 9, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(389, 16, 11, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(390, 16, 12, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(391, 16, 13, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(392, 16, 15, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(393, 16, 16, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(394, 16, 17, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(395, 16, 18, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(396, 16, 21, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(397, 16, 22, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(398, 16, 25, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(399, 16, 26, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(400, 16, 27, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(401, 16, 28, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(402, 16, 29, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(403, 16, 30, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(404, 16, 34, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(405, 16, 35, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(406, 16, 36, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(407, 16, 39, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(408, 16, 40, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(409, 17, 1, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(410, 17, 2, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(411, 17, 4, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(412, 17, 6, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(413, 17, 7, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(414, 17, 10, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(415, 17, 11, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(416, 17, 12, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(417, 17, 13, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(418, 17, 14, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(419, 17, 15, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(420, 17, 16, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(421, 17, 17, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(422, 17, 22, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(423, 17, 23, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(424, 17, 25, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(425, 17, 28, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(426, 17, 29, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(427, 17, 30, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(428, 17, 31, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(429, 17, 33, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(430, 17, 34, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(431, 17, 36, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(432, 17, 37, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(433, 17, 39, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(434, 17, 40, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(435, 18, 2, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(436, 18, 3, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(437, 18, 5, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(438, 18, 8, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(439, 18, 9, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(440, 18, 10, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(441, 18, 13, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(442, 18, 14, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(443, 18, 16, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(444, 18, 18, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(445, 18, 19, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(446, 18, 20, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(447, 18, 23, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(448, 18, 24, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(449, 18, 25, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(450, 18, 26, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(451, 18, 28, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(452, 18, 29, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(453, 18, 30, NULL, NULL, NULL, '2025-11-20 07:04:49', '2025-11-20 07:04:49', NULL),
(454, 18, 32, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(455, 18, 33, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(456, 18, 34, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(457, 18, 35, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(458, 18, 36, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(459, 18, 37, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(460, 18, 39, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(461, 19, 1, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(462, 19, 3, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(463, 19, 4, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(464, 19, 5, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(465, 19, 6, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(466, 19, 7, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(467, 19, 9, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(468, 19, 10, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(469, 19, 11, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(470, 19, 12, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(471, 19, 15, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(472, 19, 16, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(473, 19, 17, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(474, 19, 21, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(475, 19, 22, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(476, 19, 25, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(477, 19, 26, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(478, 19, 27, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(479, 19, 28, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(480, 19, 29, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(481, 19, 30, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(482, 19, 34, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(483, 19, 35, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(484, 19, 36, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(485, 19, 39, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(486, 19, 40, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(487, 20, 2, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(488, 20, 5, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(489, 20, 6, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(490, 20, 7, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(491, 20, 9, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(492, 20, 11, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(493, 20, 12, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(494, 20, 13, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(495, 20, 15, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(496, 20, 16, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(497, 20, 17, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(498, 20, 18, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(499, 20, 22, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(500, 20, 23, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(501, 20, 25, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(502, 20, 28, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(503, 20, 29, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(504, 20, 30, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(505, 20, 31, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(506, 20, 33, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(507, 20, 34, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(508, 20, 36, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(509, 20, 37, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(510, 20, 39, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(511, 20, 40, NULL, NULL, NULL, '2025-11-20 07:04:50', '2025-11-20 07:04:50', NULL),
(662, 27, 2, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(663, 27, 5, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(664, 27, 6, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(665, 27, 7, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(666, 27, 9, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(667, 27, 11, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(668, 27, 12, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(669, 27, 13, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(670, 27, 15, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(671, 27, 16, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(672, 27, 17, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(673, 27, 18, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(674, 27, 21, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(675, 27, 24, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(676, 27, 25, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(677, 27, 26, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(678, 27, 27, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(679, 27, 28, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(680, 27, 29, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(681, 27, 30, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(682, 27, 34, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(683, 27, 35, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(684, 27, 36, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(685, 27, 39, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(686, 27, 40, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(792, 32, 4, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(793, 32, 5, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(794, 32, 6, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(795, 32, 7, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(796, 32, 11, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(797, 32, 12, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(798, 32, 13, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(799, 32, 16, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(800, 32, 17, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(801, 32, 19, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(802, 32, 20, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(803, 32, 22, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(804, 32, 24, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(805, 32, 25, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(806, 32, 27, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(807, 32, 29, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(808, 32, 31, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(809, 32, 32, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(810, 32, 33, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(811, 32, 34, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(812, 32, 35, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(813, 32, 36, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(814, 32, 37, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(815, 33, 1, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(816, 33, 3, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(817, 33, 4, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(818, 33, 5, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(819, 33, 6, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(820, 33, 8, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(821, 33, 10, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(822, 33, 11, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(823, 33, 12, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(824, 33, 13, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(825, 33, 14, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(826, 33, 17, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(827, 33, 18, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(828, 33, 23, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(829, 33, 24, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(830, 33, 25, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(831, 33, 26, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(832, 33, 28, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(833, 33, 29, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(834, 33, 30, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(835, 33, 32, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(836, 33, 33, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(837, 33, 34, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(838, 33, 35, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(839, 33, 36, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(840, 33, 37, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(841, 33, 39, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(842, 34, 2, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(843, 34, 4, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(844, 34, 7, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(845, 34, 8, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(846, 34, 9, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(847, 34, 12, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(848, 34, 13, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(849, 34, 14, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(850, 34, 15, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(851, 34, 16, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(852, 34, 19, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(853, 34, 20, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(854, 34, 21, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(855, 34, 22, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(856, 34, 25, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(857, 34, 26, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(858, 34, 27, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(859, 34, 28, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(860, 34, 29, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(861, 34, 30, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(862, 34, 34, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(863, 34, 35, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(864, 34, 36, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(865, 34, 39, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(866, 34, 40, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(867, 35, 1, NULL, NULL, NULL, '2025-11-20 07:04:51', '2025-11-20 07:04:51', NULL),
(868, 35, 2, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(869, 35, 4, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(870, 35, 8, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(871, 35, 11, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(872, 35, 12, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(873, 35, 13, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(874, 35, 14, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(875, 35, 15, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(876, 35, 19, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(877, 35, 20, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(878, 35, 22, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(879, 35, 23, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(880, 35, 25, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(881, 35, 28, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(882, 35, 29, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(883, 35, 30, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(884, 35, 31, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(885, 35, 33, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(886, 35, 34, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(887, 35, 36, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(888, 35, 37, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(889, 35, 39, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(890, 35, 40, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(891, 36, 3, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(892, 36, 4, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(893, 36, 5, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(894, 36, 6, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(895, 36, 7, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(896, 36, 10, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(897, 36, 11, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(898, 36, 14, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(899, 36, 15, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(900, 36, 16, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(901, 36, 17, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(902, 36, 18, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(903, 36, 23, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(904, 36, 24, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(905, 36, 25, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(906, 36, 26, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(907, 36, 27, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(908, 36, 28, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(909, 36, 30, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(910, 36, 32, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(911, 36, 33, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(912, 36, 34, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(913, 36, 35, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(914, 36, 36, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(915, 36, 37, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(916, 36, 39, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(917, 37, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(918, 37, 3, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(919, 37, 4, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(920, 37, 8, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(921, 37, 9, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(922, 37, 10, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(923, 37, 11, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(924, 37, 13, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(925, 37, 14, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(926, 37, 16, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(927, 37, 19, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(928, 37, 20, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(929, 37, 24, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(930, 37, 25, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(931, 37, 26, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(932, 37, 27, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(933, 37, 28, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(934, 37, 29, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(935, 37, 30, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(936, 37, 31, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(937, 37, 32, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(938, 37, 34, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(939, 37, 36, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(940, 37, 37, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(941, 37, 38, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(942, 37, 40, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(943, 38, 2, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(944, 38, 5, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(945, 38, 6, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(946, 38, 7, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(947, 38, 9, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(948, 38, 11, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(949, 38, 12, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(950, 38, 13, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(951, 38, 15, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(952, 38, 16, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(953, 38, 17, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(954, 38, 18, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(955, 38, 21, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(956, 38, 23, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(957, 38, 24, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(958, 38, 26, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(959, 38, 28, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(960, 38, 30, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(961, 38, 32, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(962, 38, 34, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(963, 38, 35, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(964, 38, 36, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(965, 38, 37, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(966, 38, 38, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(967, 38, 39, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(968, 38, 40, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(969, 39, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(970, 39, 2, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(971, 39, 3, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(972, 39, 8, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(973, 39, 9, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(974, 39, 10, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(975, 39, 13, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(976, 39, 14, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(977, 39, 15, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(978, 39, 18, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(979, 39, 20, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(980, 39, 22, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(981, 39, 24, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(982, 39, 25, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(983, 39, 27, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(984, 39, 29, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(985, 39, 31, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(986, 39, 32, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(987, 39, 33, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(988, 39, 34, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(989, 39, 35, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(990, 39, 36, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(991, 39, 37, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(992, 40, 4, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(993, 40, 5, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(994, 40, 6, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(995, 40, 7, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(996, 40, 11, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(997, 40, 12, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(998, 40, 13, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(999, 40, 16, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1000, 40, 17, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1001, 40, 19, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1002, 40, 20, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1003, 40, 23, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1004, 40, 24, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1005, 40, 25, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1006, 40, 26, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL);
INSERT INTO `entertainment_talent_mapping` (`id`, `entertainment_id`, `talent_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1007, 40, 27, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1008, 40, 28, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1009, 40, 30, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1010, 40, 32, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1011, 40, 33, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1012, 40, 34, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1013, 40, 35, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1014, 40, 36, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1015, 40, 37, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1016, 40, 39, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1017, 41, 1, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1018, 41, 2, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1019, 41, 4, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1020, 41, 8, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1021, 41, 11, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1022, 41, 12, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1023, 41, 13, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1024, 41, 14, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1025, 41, 15, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1026, 41, 19, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1027, 41, 20, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1028, 41, 23, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1029, 41, 24, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1030, 41, 25, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1031, 41, 26, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1032, 41, 28, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1033, 41, 29, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1034, 41, 30, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1035, 41, 32, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1036, 41, 33, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1037, 41, 34, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1038, 41, 35, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1039, 41, 36, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1040, 41, 37, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1041, 41, 39, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1042, 42, 3, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1043, 42, 4, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1044, 42, 5, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1045, 42, 6, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1046, 42, 7, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1047, 42, 10, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1048, 42, 11, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1049, 42, 14, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1050, 42, 15, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1051, 42, 16, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1052, 42, 17, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1053, 42, 18, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1054, 42, 21, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1055, 42, 22, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1056, 42, 25, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1057, 42, 26, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1058, 42, 27, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1059, 42, 28, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1060, 42, 29, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1061, 42, 30, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1062, 42, 34, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1063, 42, 35, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1064, 42, 36, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1065, 42, 39, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1066, 42, 40, NULL, NULL, NULL, '2025-11-20 07:04:52', '2025-11-20 07:04:52', NULL),
(1067, 43, 9, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1068, 43, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1069, 43, 10, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1070, 43, 7, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1071, 43, 11, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1072, 43, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1073, 43, 12, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1074, 43, 39, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1075, 43, 24, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1076, 43, 30, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1077, 43, 33, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1078, 43, 31, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1079, 43, 38, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1080, 43, 27, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1081, 44, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1082, 44, 3, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1083, 44, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1084, 44, 8, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1085, 44, 9, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1086, 44, 10, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1087, 44, 11, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1088, 44, 13, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1089, 44, 14, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1090, 44, 16, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1091, 44, 19, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1092, 44, 20, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1093, 44, 22, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1094, 44, 23, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1095, 44, 25, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1096, 44, 28, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1097, 44, 29, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1098, 44, 30, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1099, 44, 31, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1100, 44, 33, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1101, 44, 34, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1102, 44, 36, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1103, 44, 37, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1104, 44, 39, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1105, 44, 40, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1106, 45, 2, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1107, 45, 5, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1108, 45, 6, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1109, 45, 7, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1110, 45, 9, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1111, 45, 11, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1112, 45, 12, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1113, 45, 13, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1114, 45, 15, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1115, 45, 16, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1116, 45, 17, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1117, 45, 18, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1118, 45, 24, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1119, 45, 25, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1120, 45, 26, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1121, 45, 27, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1122, 45, 28, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1123, 45, 29, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1124, 45, 30, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1125, 45, 31, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1126, 45, 32, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1127, 45, 34, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1128, 45, 36, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1129, 45, 37, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1130, 45, 38, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1131, 45, 40, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1132, 46, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1133, 46, 2, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1134, 46, 5, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1135, 46, 6, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1136, 46, 7, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1137, 46, 10, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1138, 46, 11, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1139, 46, 12, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1140, 46, 13, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1141, 46, 14, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1142, 46, 15, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1143, 46, 16, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1144, 46, 17, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1145, 46, 22, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1146, 46, 24, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1147, 46, 25, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1148, 46, 27, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1149, 46, 29, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1150, 46, 31, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1151, 46, 32, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1152, 46, 33, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1153, 46, 34, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1154, 46, 35, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1155, 46, 36, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1156, 46, 37, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1157, 47, 2, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1158, 47, 3, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1159, 47, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1160, 47, 8, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1161, 47, 9, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1162, 47, 10, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1163, 47, 13, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1164, 47, 14, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1165, 47, 16, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1166, 47, 18, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1167, 47, 19, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1168, 47, 20, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1169, 47, 24, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1170, 47, 25, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1171, 47, 26, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1172, 47, 27, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1173, 47, 28, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1174, 47, 29, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1175, 47, 30, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1176, 47, 31, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1177, 47, 32, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1178, 47, 34, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1179, 47, 36, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1180, 47, 37, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1181, 47, 38, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1182, 47, 40, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1183, 48, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1184, 48, 3, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1185, 48, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1186, 48, 5, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1187, 48, 6, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1188, 48, 7, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1189, 48, 9, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1190, 48, 10, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1191, 48, 11, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1192, 48, 12, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1193, 48, 15, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1194, 48, 16, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1195, 48, 17, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1196, 48, 21, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1197, 48, 22, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1198, 48, 25, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1199, 48, 26, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1200, 48, 27, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1201, 48, 28, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1202, 48, 29, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1203, 48, 30, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1204, 48, 34, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1205, 48, 35, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1206, 48, 36, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1207, 48, 39, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1208, 48, 40, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1209, 49, 3, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1210, 49, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1211, 49, 5, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1212, 49, 6, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1213, 49, 7, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1214, 49, 8, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1215, 49, 10, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1216, 49, 11, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1217, 49, 14, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1218, 49, 15, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1219, 49, 16, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1220, 49, 17, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1221, 49, 18, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1222, 49, 22, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1223, 49, 23, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1224, 49, 25, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1225, 49, 28, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1226, 49, 29, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1227, 49, 30, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1228, 49, 31, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1229, 49, 33, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1230, 49, 34, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1231, 49, 36, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1232, 49, 37, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1233, 49, 39, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1234, 49, 40, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1235, 50, 1, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1236, 50, 2, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1237, 50, 3, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1238, 50, 4, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1239, 50, 8, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1240, 50, 9, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1241, 50, 10, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1242, 50, 11, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1243, 50, 13, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1244, 50, 14, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1245, 50, 16, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1246, 50, 19, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1247, 50, 20, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1248, 50, 24, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1249, 50, 25, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1250, 50, 26, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1251, 50, 27, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1252, 50, 28, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1253, 50, 29, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1254, 50, 30, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1255, 50, 31, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1256, 50, 32, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1257, 50, 34, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1258, 50, 36, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1259, 50, 37, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1260, 50, 38, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1261, 50, 40, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1262, 51, 2, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1263, 51, 5, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1264, 51, 6, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1265, 51, 7, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1266, 51, 9, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1267, 51, 11, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1268, 51, 12, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1269, 51, 13, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1270, 51, 15, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1271, 51, 16, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1272, 51, 17, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1273, 51, 18, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1274, 51, 21, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1275, 51, 22, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1276, 51, 25, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1277, 51, 26, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1278, 51, 27, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1279, 51, 28, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1280, 51, 29, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1281, 51, 30, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1282, 51, 34, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1283, 51, 35, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1284, 51, 36, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1285, 51, 39, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1286, 51, 40, NULL, NULL, NULL, '2025-11-20 07:04:53', '2025-11-20 07:04:53', NULL),
(1313, 53, 2, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1314, 53, 3, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1315, 53, 5, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1316, 53, 8, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1317, 53, 9, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1318, 53, 10, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1319, 53, 13, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1320, 53, 14, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1321, 53, 16, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1322, 53, 18, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1323, 53, 19, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1324, 53, 20, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1325, 53, 21, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1326, 53, 22, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1327, 53, 25, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1328, 53, 26, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1329, 53, 27, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1330, 53, 28, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1331, 53, 29, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1332, 53, 30, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1333, 53, 34, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1334, 53, 35, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1335, 53, 36, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1336, 53, 39, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1337, 53, 40, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1338, 54, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1339, 54, 3, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1340, 54, 4, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1341, 54, 5, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1342, 54, 6, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1343, 54, 7, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1344, 54, 9, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1345, 54, 10, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1346, 54, 11, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1347, 54, 12, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1348, 54, 15, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1349, 54, 16, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1350, 54, 17, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1351, 54, 21, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1352, 54, 24, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1353, 54, 25, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1354, 54, 26, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1355, 54, 27, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1356, 54, 28, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1357, 54, 29, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1358, 54, 30, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1359, 54, 34, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1360, 54, 35, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1361, 54, 36, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1362, 54, 39, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1363, 54, 40, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1416, 57, 2, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1417, 57, 5, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1418, 57, 6, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1419, 57, 7, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1420, 57, 9, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1421, 57, 11, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1422, 57, 12, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1423, 57, 13, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1424, 57, 15, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1425, 57, 16, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1426, 57, 17, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1427, 57, 18, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1428, 57, 24, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1429, 57, 25, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1430, 57, 26, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1431, 57, 27, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1432, 57, 28, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1433, 57, 29, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1434, 57, 30, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1435, 57, 31, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1436, 57, 32, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1437, 57, 34, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1438, 57, 36, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1439, 57, 37, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1440, 57, 38, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1441, 57, 40, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1442, 58, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1443, 58, 2, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1444, 58, 4, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1445, 58, 6, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1446, 58, 7, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1447, 58, 10, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1448, 58, 11, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1449, 58, 12, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1450, 58, 13, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1451, 58, 14, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1452, 58, 15, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1453, 58, 16, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1454, 58, 17, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1455, 58, 21, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1456, 58, 23, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1457, 58, 24, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1458, 58, 26, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1459, 58, 28, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1460, 58, 30, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1461, 58, 32, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1462, 58, 34, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1463, 58, 35, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1464, 58, 36, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1465, 58, 37, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1466, 58, 38, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1467, 58, 39, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1468, 58, 40, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1469, 59, 2, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1470, 59, 3, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1471, 59, 5, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1472, 59, 8, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1473, 59, 9, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1474, 59, 10, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1475, 59, 13, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1476, 59, 14, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1477, 59, 16, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1478, 59, 18, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1479, 59, 19, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1480, 59, 20, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1481, 59, 22, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1482, 59, 24, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1483, 59, 25, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1484, 59, 27, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1485, 59, 29, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1486, 59, 31, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1487, 59, 32, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1488, 59, 33, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1489, 59, 34, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1490, 59, 35, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1491, 59, 36, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1492, 59, 37, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1493, 60, 1, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1494, 60, 3, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1495, 60, 4, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1496, 60, 5, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1497, 60, 6, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1498, 60, 7, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1499, 60, 9, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1500, 60, 10, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1501, 60, 11, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1502, 60, 12, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1503, 60, 15, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1504, 60, 16, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1505, 60, 17, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1506, 60, 22, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1507, 60, 23, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1508, 60, 25, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1509, 60, 28, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1510, 60, 29, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1511, 60, 30, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1512, 60, 31, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1513, 60, 33, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1514, 60, 34, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1515, 60, 36, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1516, 60, 37, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1517, 60, 39, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1518, 60, 40, NULL, NULL, NULL, '2025-11-20 07:04:54', '2025-11-20 07:04:54', NULL),
(1519, 61, 2, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1520, 61, 4, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1521, 61, 7, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1522, 61, 8, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1523, 61, 9, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1524, 61, 12, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1525, 61, 13, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1526, 61, 14, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1527, 61, 15, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1528, 61, 16, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1529, 61, 19, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1530, 61, 20, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1531, 61, 24, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1532, 61, 25, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1533, 61, 26, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1534, 61, 27, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1535, 61, 28, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1536, 61, 29, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1537, 61, 30, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1538, 61, 31, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1539, 61, 32, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1540, 61, 34, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1541, 61, 36, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1542, 61, 37, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1543, 61, 38, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1544, 61, 40, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1545, 62, 3, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1546, 62, 5, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1547, 62, 6, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1548, 62, 7, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1549, 62, 8, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1550, 62, 9, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1551, 62, 10, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1552, 62, 11, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1553, 62, 12, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1554, 62, 16, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1555, 62, 17, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1556, 62, 18, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1557, 62, 21, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1558, 62, 23, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1559, 62, 24, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1560, 62, 26, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1561, 62, 28, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1562, 62, 30, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1563, 62, 32, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1564, 62, 34, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1565, 62, 35, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1566, 62, 36, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1567, 62, 37, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1568, 62, 38, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1569, 62, 39, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1570, 62, 40, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1571, 63, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1572, 63, 2, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1573, 63, 4, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1574, 63, 8, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1575, 63, 11, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1576, 63, 12, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1577, 63, 13, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1578, 63, 14, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1579, 63, 15, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1580, 63, 19, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1581, 63, 20, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1582, 63, 22, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1583, 63, 24, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1584, 63, 25, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1585, 63, 27, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1586, 63, 29, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1587, 63, 31, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1588, 63, 32, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1589, 63, 33, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1590, 63, 34, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1591, 63, 35, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1592, 63, 36, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1593, 63, 37, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1594, 64, 3, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1595, 64, 4, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1596, 64, 5, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1597, 64, 6, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1598, 64, 7, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1599, 64, 10, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1600, 64, 11, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1601, 64, 14, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1602, 64, 15, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1603, 64, 16, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1604, 64, 17, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1605, 64, 18, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1606, 64, 24, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1607, 64, 25, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1608, 64, 26, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1609, 64, 27, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1610, 64, 28, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1611, 64, 29, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1612, 64, 30, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1613, 64, 31, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1614, 64, 32, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1615, 64, 34, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1616, 64, 36, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1617, 64, 37, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1618, 64, 38, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1619, 64, 40, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1620, 65, 1, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1621, 65, 2, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1622, 65, 3, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1623, 65, 8, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1624, 65, 9, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1625, 65, 10, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1626, 65, 13, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1627, 65, 14, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1628, 65, 15, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1629, 65, 18, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1630, 65, 20, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1631, 65, 21, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1632, 65, 22, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1633, 65, 25, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1634, 65, 26, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1635, 65, 27, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1636, 65, 28, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1637, 65, 29, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1638, 65, 30, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1639, 65, 34, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1640, 65, 35, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1641, 65, 36, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1642, 65, 39, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1643, 65, 40, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1644, 66, 4, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1645, 66, 5, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1646, 66, 6, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1647, 66, 7, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1648, 66, 11, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1649, 66, 12, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1650, 66, 13, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1651, 66, 16, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1652, 66, 17, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1653, 66, 19, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1654, 66, 20, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1655, 66, 21, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1656, 66, 22, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1657, 66, 25, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1658, 66, 26, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1659, 66, 27, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1660, 66, 28, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1661, 66, 29, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1662, 66, 30, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1663, 66, 34, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1664, 66, 35, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1665, 66, 36, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1666, 66, 39, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1667, 66, 40, NULL, NULL, NULL, '2025-11-20 07:04:55', '2025-11-20 07:04:55', NULL),
(1745, 70, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1746, 70, 2, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1747, 70, 4, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1748, 70, 8, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1749, 70, 11, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1750, 70, 12, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1751, 70, 13, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1752, 70, 14, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1753, 70, 15, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1754, 70, 19, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1755, 70, 20, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL);
INSERT INTO `entertainment_talent_mapping` (`id`, `entertainment_id`, `talent_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1756, 70, 22, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1757, 70, 23, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1758, 70, 25, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1759, 70, 28, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1760, 70, 29, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1761, 70, 30, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1762, 70, 31, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1763, 70, 33, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1764, 70, 34, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1765, 70, 36, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1766, 70, 37, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1767, 70, 39, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1768, 70, 40, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1769, 71, 2, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1770, 71, 4, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1771, 71, 7, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1772, 71, 8, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1773, 71, 9, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1774, 71, 12, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1775, 71, 13, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1776, 71, 14, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1777, 71, 15, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1778, 71, 16, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1779, 71, 19, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1780, 71, 20, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1781, 71, 21, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1782, 71, 22, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1783, 71, 25, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1784, 71, 26, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1785, 71, 27, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1786, 71, 28, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1787, 71, 29, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1788, 71, 30, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1789, 71, 34, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1790, 71, 35, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1791, 71, 36, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1792, 71, 39, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1793, 71, 40, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1794, 72, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1795, 72, 2, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1796, 72, 3, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1797, 72, 4, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1798, 72, 8, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1799, 72, 9, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1800, 72, 10, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1801, 72, 11, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1802, 72, 13, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1803, 72, 14, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1804, 72, 16, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1805, 72, 19, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1806, 72, 20, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1807, 72, 21, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1808, 72, 24, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1809, 72, 25, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1810, 72, 26, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1811, 72, 27, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1812, 72, 28, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1813, 72, 29, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1814, 72, 30, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1815, 72, 34, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1816, 72, 35, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1817, 72, 36, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1818, 72, 39, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1819, 72, 40, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1820, 73, 2, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1821, 73, 5, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1822, 73, 6, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1823, 73, 7, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1824, 73, 9, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1825, 73, 11, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1826, 73, 12, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1827, 73, 13, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1828, 73, 15, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1829, 73, 16, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1830, 73, 17, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1831, 73, 18, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1832, 73, 22, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1833, 73, 23, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1834, 73, 24, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1835, 73, 28, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1836, 73, 29, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1837, 73, 30, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1838, 73, 31, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1839, 73, 32, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1840, 73, 34, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1841, 73, 36, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1842, 73, 37, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1843, 73, 38, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1844, 73, 40, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1845, 74, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1846, 74, 2, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1847, 74, 4, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1848, 74, 6, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1849, 74, 7, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1850, 74, 10, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1851, 74, 11, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1852, 74, 12, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1853, 74, 13, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1854, 74, 14, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1855, 74, 15, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1856, 74, 16, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1857, 74, 17, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1858, 74, 23, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1859, 74, 24, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1860, 74, 25, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1861, 74, 26, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1862, 74, 27, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1863, 74, 28, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1864, 74, 30, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1865, 74, 32, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1866, 74, 33, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1867, 74, 34, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1868, 74, 35, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1869, 74, 36, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1870, 74, 37, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1871, 74, 39, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1872, 75, 2, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1873, 75, 3, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1874, 75, 5, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1875, 75, 8, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1876, 75, 9, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1877, 75, 10, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1878, 75, 13, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1879, 75, 14, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1880, 75, 16, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1881, 75, 18, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1882, 75, 19, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1883, 75, 20, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1884, 75, 24, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1885, 75, 25, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1886, 75, 26, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1887, 75, 27, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1888, 75, 28, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1889, 75, 29, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1890, 75, 30, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1891, 75, 31, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1892, 75, 32, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1893, 75, 34, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1894, 75, 36, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1895, 75, 37, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1896, 75, 38, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1897, 75, 40, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1898, 76, 1, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1899, 76, 3, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1900, 76, 4, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1901, 76, 5, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1902, 76, 6, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1903, 76, 7, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1904, 76, 9, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1905, 76, 10, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1906, 76, 11, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1907, 76, 12, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1908, 76, 15, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1909, 76, 16, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1910, 76, 17, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1911, 76, 21, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1912, 76, 23, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1913, 76, 24, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1914, 76, 26, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1915, 76, 28, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1916, 76, 30, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1917, 76, 32, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1918, 76, 34, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1919, 76, 35, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1920, 76, 36, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1921, 76, 37, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1922, 76, 38, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1923, 76, 39, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1924, 76, 40, NULL, NULL, NULL, '2025-11-20 07:04:56', '2025-11-20 07:04:56', NULL),
(1975, 79, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1976, 79, 2, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1977, 79, 4, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1978, 79, 8, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1979, 79, 11, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1980, 79, 12, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1981, 79, 13, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1982, 79, 14, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1983, 79, 15, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1984, 79, 19, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1985, 79, 20, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1986, 79, 22, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1987, 79, 24, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1988, 79, 25, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1989, 79, 27, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1990, 79, 29, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1991, 79, 31, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1992, 79, 32, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1993, 79, 33, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1994, 79, 34, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1995, 79, 35, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1996, 79, 36, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1997, 79, 37, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1998, 80, 3, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(1999, 80, 4, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2000, 80, 5, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2001, 80, 6, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2002, 80, 7, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2003, 80, 10, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2004, 80, 11, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2005, 80, 14, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2006, 80, 15, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2007, 80, 16, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2008, 80, 17, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2009, 80, 18, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2010, 80, 24, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2011, 80, 25, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2012, 80, 26, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2013, 80, 27, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2014, 80, 28, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2015, 80, 29, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2016, 80, 30, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2017, 80, 31, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2018, 80, 32, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2019, 80, 34, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2020, 80, 36, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2021, 80, 37, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2022, 80, 38, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2023, 80, 40, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2024, 81, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2025, 81, 2, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2026, 81, 3, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2027, 81, 4, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2028, 81, 8, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2029, 81, 9, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2030, 81, 10, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2031, 81, 11, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2032, 81, 13, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2033, 81, 14, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2034, 81, 16, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2035, 81, 19, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2036, 81, 20, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2037, 81, 21, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2038, 81, 22, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2039, 81, 25, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2040, 81, 26, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2041, 81, 27, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2042, 81, 28, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2043, 81, 29, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2044, 81, 30, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2045, 81, 34, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2046, 81, 35, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2047, 81, 36, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2048, 81, 39, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2049, 81, 40, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2127, 85, 1, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2128, 85, 3, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2129, 85, 4, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2130, 85, 5, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2131, 85, 6, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2132, 85, 7, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2133, 85, 9, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2134, 85, 10, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2135, 85, 11, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2136, 85, 12, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2137, 85, 15, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2138, 85, 16, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2139, 85, 17, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2140, 85, 22, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2141, 85, 23, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2142, 85, 24, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2143, 85, 28, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2144, 85, 29, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2145, 85, 30, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2146, 85, 31, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2147, 85, 32, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2148, 85, 34, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2149, 85, 36, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2150, 85, 37, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2151, 85, 38, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2152, 85, 40, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2153, 86, 2, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2154, 86, 4, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2155, 86, 7, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2156, 86, 8, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2157, 86, 9, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2158, 86, 12, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2159, 86, 13, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2160, 86, 14, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2161, 86, 15, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2162, 86, 16, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2163, 86, 19, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2164, 86, 20, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2165, 86, 23, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2166, 86, 24, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2167, 86, 25, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2168, 86, 26, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2169, 86, 27, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2170, 86, 28, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2171, 86, 30, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2172, 86, 32, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2173, 86, 33, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2174, 86, 34, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2175, 86, 35, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2176, 86, 36, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2177, 86, 37, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2178, 86, 39, NULL, NULL, NULL, '2025-11-20 07:04:57', '2025-11-20 07:04:57', NULL),
(2179, 87, 3, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2180, 87, 5, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2181, 87, 6, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2182, 87, 7, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2183, 87, 8, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2184, 87, 9, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2185, 87, 10, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2186, 87, 11, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2187, 87, 12, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2188, 87, 16, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2189, 87, 17, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2190, 87, 18, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2191, 87, 24, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2192, 87, 25, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2193, 87, 26, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2194, 87, 27, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2195, 87, 28, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2196, 87, 29, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2197, 87, 30, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2198, 87, 31, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2199, 87, 32, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2200, 87, 34, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2201, 87, 36, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2202, 87, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2203, 87, 38, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2204, 87, 40, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2205, 88, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2206, 88, 2, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2207, 88, 4, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2208, 88, 8, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2209, 88, 11, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2210, 88, 12, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2211, 88, 13, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2212, 88, 14, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2213, 88, 15, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2214, 88, 19, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2215, 88, 20, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2216, 88, 21, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2217, 88, 23, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2218, 88, 24, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2219, 88, 26, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2220, 88, 28, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2221, 88, 30, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2222, 88, 32, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2223, 88, 34, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2224, 88, 35, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2225, 88, 36, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2226, 88, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2227, 88, 38, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2228, 88, 39, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2229, 88, 40, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2256, 90, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2257, 90, 3, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2258, 90, 4, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2259, 90, 5, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2260, 90, 6, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2261, 90, 7, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2262, 90, 9, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2263, 90, 10, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2264, 90, 11, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2265, 90, 12, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2266, 90, 15, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2267, 90, 16, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2268, 90, 17, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2269, 90, 24, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2270, 90, 25, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2271, 90, 26, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2272, 90, 27, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2273, 90, 28, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2274, 90, 29, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2275, 90, 30, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2276, 90, 31, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2277, 90, 32, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2278, 90, 34, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2279, 90, 36, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2280, 90, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2281, 90, 38, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2282, 90, 40, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2283, 91, 2, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2284, 91, 4, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2285, 91, 7, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2286, 91, 8, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2287, 91, 9, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2288, 91, 12, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2289, 91, 13, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2290, 91, 14, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2291, 91, 15, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2292, 91, 16, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2293, 91, 19, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2294, 91, 20, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2295, 91, 21, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2296, 91, 23, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2297, 91, 24, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2298, 91, 26, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2299, 91, 28, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2300, 91, 30, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2301, 91, 32, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2302, 91, 34, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2303, 91, 35, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2304, 91, 36, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2305, 91, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2306, 91, 38, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2307, 91, 39, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2308, 91, 40, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2309, 92, 3, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2310, 92, 5, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2311, 92, 6, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2312, 92, 7, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2313, 92, 8, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2314, 92, 9, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2315, 92, 10, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2316, 92, 11, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2317, 92, 12, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2318, 92, 16, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2319, 92, 17, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2320, 92, 18, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2321, 92, 22, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2322, 92, 24, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2323, 92, 25, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2324, 92, 27, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2325, 92, 29, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2326, 92, 31, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2327, 92, 32, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2328, 92, 33, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2329, 92, 34, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2330, 92, 35, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2331, 92, 36, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2332, 92, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2333, 93, 1, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2334, 93, 2, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2335, 93, 4, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2336, 93, 8, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2337, 93, 11, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2338, 93, 12, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2339, 93, 13, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2340, 93, 14, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2341, 93, 15, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2342, 93, 19, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2343, 93, 20, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2344, 93, 23, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2345, 93, 24, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2346, 93, 25, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2347, 93, 26, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2348, 93, 27, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2349, 93, 28, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2350, 93, 30, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2351, 93, 32, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2352, 93, 33, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2353, 93, 34, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2354, 93, 35, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2355, 93, 36, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2356, 93, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2357, 93, 39, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2358, 94, 3, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2359, 94, 4, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2360, 94, 5, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2361, 94, 6, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2362, 94, 7, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2363, 94, 10, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2364, 94, 11, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2365, 94, 14, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2366, 94, 15, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2367, 94, 16, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2368, 94, 17, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2369, 94, 18, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2370, 94, 24, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2371, 94, 25, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2372, 94, 26, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2373, 94, 27, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2374, 94, 28, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2375, 94, 29, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2376, 94, 30, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2377, 94, 31, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2378, 94, 32, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2379, 94, 34, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2380, 94, 36, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2381, 94, 37, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2382, 94, 38, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2383, 94, 40, NULL, NULL, NULL, '2025-11-20 07:04:58', '2025-11-20 07:04:58', NULL),
(2520, 101, 2, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2521, 101, 4, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2522, 101, 7, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2523, 101, 8, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2524, 101, 9, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2525, 101, 12, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2526, 101, 13, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2527, 101, 14, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2528, 101, 15, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2529, 101, 16, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2530, 101, 19, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2531, 101, 20, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2532, 101, 23, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2533, 101, 24, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2534, 101, 25, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2535, 101, 26, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2536, 101, 27, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2537, 101, 28, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2538, 101, 30, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2539, 101, 32, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2540, 101, 33, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2541, 101, 34, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2542, 101, 35, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2543, 101, 36, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2544, 101, 37, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2545, 101, 39, NULL, NULL, NULL, '2025-11-20 07:04:59', '2025-11-20 07:04:59', NULL),
(2600, 89, 3, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2601, 89, 4, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2602, 89, 5, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2603, 89, 6, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2604, 89, 7, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2605, 89, 10, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2606, 89, 11, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2607, 89, 14, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2608, 89, 15, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2609, 89, 16, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2610, 89, 17, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2611, 89, 18, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2612, 89, 23, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2613, 89, 24, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2614, 89, 25, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2615, 89, 26, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2616, 89, 27, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2617, 89, 28, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2618, 89, 30, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2619, 89, 32, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2620, 89, 33, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2621, 89, 34, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2622, 89, 35, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2623, 89, 36, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2624, 89, 37, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2625, 89, 39, 1, 1, NULL, '2025-11-27 10:45:40', '2025-11-27 10:45:40', NULL),
(2626, 99, 3, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2627, 99, 5, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2628, 99, 6, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2629, 99, 7, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2630, 99, 8, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2631, 99, 9, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2632, 99, 10, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2633, 99, 11, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2634, 99, 12, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2635, 99, 16, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2636, 99, 17, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2637, 99, 18, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2638, 99, 21, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2639, 99, 24, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2640, 99, 25, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2641, 99, 26, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2642, 99, 27, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2643, 99, 28, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2644, 99, 29, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2645, 99, 30, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2646, 99, 34, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2647, 99, 35, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2648, 99, 36, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2649, 99, 39, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2650, 99, 40, 1, 1, NULL, '2025-11-27 10:46:56', '2025-11-27 10:46:56', NULL),
(2651, 102, 1, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2652, 102, 2, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2653, 102, 3, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2654, 102, 4, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2655, 102, 8, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2656, 102, 9, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2657, 102, 10, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2658, 102, 11, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2659, 102, 13, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2660, 102, 14, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2661, 102, 16, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2662, 102, 19, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2663, 102, 20, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2664, 102, 24, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2665, 102, 25, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2666, 102, 26, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2667, 102, 27, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2668, 102, 28, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2669, 102, 29, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2670, 102, 30, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2671, 102, 31, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2672, 102, 32, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2673, 102, 34, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2674, 102, 36, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2675, 102, 37, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2676, 102, 38, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2677, 102, 40, 1, 1, NULL, '2025-11-27 10:48:19', '2025-11-27 10:48:19', NULL),
(2678, 97, 1, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2679, 97, 3, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2680, 97, 4, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2681, 97, 5, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2682, 97, 6, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2683, 97, 8, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2684, 97, 10, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2685, 97, 11, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2686, 97, 12, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2687, 97, 13, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2688, 97, 14, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2689, 97, 17, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2690, 97, 18, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2691, 97, 24, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2692, 97, 25, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2693, 97, 26, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2694, 97, 27, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2695, 97, 28, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2696, 97, 29, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2697, 97, 30, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2698, 97, 31, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2699, 97, 32, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL);
INSERT INTO `entertainment_talent_mapping` (`id`, `entertainment_id`, `talent_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2700, 97, 34, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2701, 97, 36, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2702, 97, 37, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2703, 97, 38, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2704, 97, 40, 1, 1, NULL, '2025-11-27 11:07:14', '2025-11-27 11:07:14', NULL),
(2705, 98, 2, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2706, 98, 4, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2707, 98, 7, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2708, 98, 8, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2709, 98, 9, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2710, 98, 12, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2711, 98, 13, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2712, 98, 14, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2713, 98, 15, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2714, 98, 16, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2715, 98, 19, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2716, 98, 20, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2717, 98, 21, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2718, 98, 22, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2719, 98, 25, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2720, 98, 26, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2721, 98, 27, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2722, 98, 28, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2723, 98, 29, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2724, 98, 30, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2725, 98, 34, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2726, 98, 35, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2727, 98, 36, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2728, 98, 39, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2729, 98, 40, 1, 1, NULL, '2025-11-27 11:09:29', '2025-11-27 11:09:29', NULL),
(2730, 100, 1, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2731, 100, 2, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2732, 100, 4, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2733, 100, 8, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2734, 100, 11, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2735, 100, 12, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2736, 100, 13, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2737, 100, 14, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2738, 100, 15, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2739, 100, 19, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2740, 100, 20, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2741, 100, 22, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2742, 100, 23, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2743, 100, 24, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2744, 100, 28, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2745, 100, 29, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2746, 100, 30, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2747, 100, 31, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2748, 100, 32, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2749, 100, 34, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2750, 100, 36, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2751, 100, 37, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2752, 100, 38, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2753, 100, 40, 1, 1, NULL, '2025-11-27 11:10:42', '2025-11-27 11:10:42', NULL),
(2766, 95, 5, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2767, 95, 6, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2768, 95, 11, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2769, 95, 12, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2770, 95, 13, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2771, 95, 14, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2772, 95, 25, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2773, 95, 26, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2774, 95, 27, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2775, 95, 33, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2776, 95, 34, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2777, 95, 35, 1, 1, NULL, '2025-11-27 11:13:34', '2025-11-27 11:13:34', NULL),
(2778, 96, 1, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2779, 96, 2, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2780, 96, 3, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2781, 96, 8, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2782, 96, 9, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2783, 96, 10, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2784, 96, 13, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2785, 96, 14, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2786, 96, 15, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2787, 96, 18, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2788, 96, 20, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2789, 96, 22, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2790, 96, 24, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2791, 96, 25, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2792, 96, 27, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2793, 96, 29, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2794, 96, 31, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2795, 96, 32, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2796, 96, 33, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2797, 96, 34, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2798, 96, 35, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2799, 96, 36, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2800, 96, 37, 1, 1, NULL, '2025-11-27 11:14:55', '2025-11-27 11:14:55', NULL),
(2801, 103, 1, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2802, 103, 3, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2803, 103, 4, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2804, 103, 5, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2805, 103, 6, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2806, 103, 8, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2807, 103, 10, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2808, 103, 11, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2809, 103, 12, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2810, 103, 13, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2811, 103, 14, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2812, 103, 17, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2813, 103, 18, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2814, 103, 21, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2815, 103, 23, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2816, 103, 24, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2817, 103, 26, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2818, 103, 28, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2819, 103, 30, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2820, 103, 32, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2821, 103, 34, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2822, 103, 35, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2823, 103, 36, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2824, 103, 37, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2825, 103, 38, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2826, 103, 39, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2827, 103, 40, 1, 1, NULL, '2025-11-27 11:16:09', '2025-11-27 11:16:09', NULL),
(2828, 82, 2, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2829, 82, 5, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2830, 82, 6, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2831, 82, 7, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2832, 82, 9, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2833, 82, 11, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2834, 82, 12, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2835, 82, 13, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2836, 82, 15, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2837, 82, 16, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2838, 82, 17, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2839, 82, 18, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2840, 82, 22, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2841, 82, 23, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2842, 82, 25, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2843, 82, 28, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2844, 82, 29, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2845, 82, 30, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2846, 82, 31, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2847, 82, 33, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2848, 82, 34, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2849, 82, 36, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2850, 82, 37, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2851, 82, 39, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2852, 82, 40, 1, 1, NULL, '2025-11-27 11:18:12', '2025-11-27 11:18:12', NULL),
(2853, 83, 1, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2854, 83, 2, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2855, 83, 4, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2856, 83, 6, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2857, 83, 7, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2858, 83, 10, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2859, 83, 11, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2860, 83, 12, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2861, 83, 13, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2862, 83, 14, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2863, 83, 15, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2864, 83, 16, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2865, 83, 17, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2866, 83, 23, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2867, 83, 24, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2868, 83, 25, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2869, 83, 26, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2870, 83, 28, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2871, 83, 29, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2872, 83, 30, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2873, 83, 32, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2874, 83, 33, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2875, 83, 34, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2876, 83, 35, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2877, 83, 36, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2878, 83, 37, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2879, 83, 39, 1, 1, NULL, '2025-11-27 11:25:23', '2025-11-27 11:25:23', NULL),
(2880, 84, 2, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2881, 84, 3, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2882, 84, 5, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2883, 84, 8, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2884, 84, 9, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2885, 84, 10, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2886, 84, 13, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2887, 84, 14, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2888, 84, 16, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2889, 84, 18, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2890, 84, 19, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2891, 84, 20, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2892, 84, 21, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2893, 84, 24, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2894, 84, 25, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2895, 84, 26, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2896, 84, 27, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2897, 84, 28, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2898, 84, 29, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2899, 84, 30, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2900, 84, 34, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2901, 84, 35, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2902, 84, 36, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2903, 84, 39, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2904, 84, 40, 1, 1, NULL, '2025-11-27 11:31:42', '2025-11-27 11:31:42', NULL),
(2905, 77, 2, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2906, 77, 4, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2907, 77, 7, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2908, 77, 8, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2909, 77, 9, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2910, 77, 12, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2911, 77, 13, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2912, 77, 14, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2913, 77, 15, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2914, 77, 16, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2915, 77, 19, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2916, 77, 20, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2917, 77, 22, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2918, 77, 24, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2919, 77, 25, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2920, 77, 27, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2921, 77, 29, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2922, 77, 31, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2923, 77, 32, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2924, 77, 33, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2925, 77, 34, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2926, 77, 35, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2927, 77, 36, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2928, 77, 37, 1, 1, NULL, '2025-11-27 11:33:38', '2025-11-27 11:33:38', NULL),
(2929, 67, 1, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2930, 67, 3, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2931, 67, 4, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2932, 67, 5, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2933, 67, 6, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2934, 67, 8, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2935, 67, 10, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2936, 67, 11, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2937, 67, 12, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2938, 67, 13, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2939, 67, 14, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2940, 67, 17, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2941, 67, 18, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2942, 67, 22, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2943, 67, 23, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2944, 67, 25, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2945, 67, 28, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2946, 67, 29, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2947, 67, 30, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2948, 67, 31, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2949, 67, 33, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2950, 67, 34, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2951, 67, 36, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2952, 67, 37, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2953, 67, 39, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2954, 67, 40, 1, 1, NULL, '2025-11-27 11:34:27', '2025-11-27 11:34:27', NULL),
(2955, 68, 2, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2956, 68, 4, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2957, 68, 7, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2958, 68, 8, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2959, 68, 9, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2960, 68, 12, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2961, 68, 13, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2962, 68, 14, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2963, 68, 15, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2964, 68, 16, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2965, 68, 19, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2966, 68, 20, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2967, 68, 24, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2968, 68, 25, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2969, 68, 26, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2970, 68, 27, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2971, 68, 28, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2972, 68, 29, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2973, 68, 30, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2974, 68, 31, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2975, 68, 32, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2976, 68, 34, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2977, 68, 36, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2978, 68, 37, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2979, 68, 38, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2980, 68, 40, 1, 1, NULL, '2025-11-27 11:35:30', '2025-11-27 11:35:30', NULL),
(2981, 69, 3, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2982, 69, 5, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2983, 69, 6, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2984, 69, 7, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2985, 69, 8, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2986, 69, 9, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2987, 69, 10, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2988, 69, 11, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2989, 69, 12, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2990, 69, 16, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2991, 69, 17, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2992, 69, 18, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2993, 69, 21, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2994, 69, 22, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2995, 69, 25, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2996, 69, 26, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2997, 69, 27, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2998, 69, 28, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(2999, 69, 29, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(3000, 69, 30, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(3001, 69, 34, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(3002, 69, 35, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(3003, 69, 36, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(3004, 69, 39, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(3005, 69, 40, 1, 1, NULL, '2025-11-27 11:36:43', '2025-11-27 11:36:43', NULL),
(3006, 55, 2, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3007, 55, 5, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3008, 55, 6, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3009, 55, 7, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3010, 55, 9, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3011, 55, 11, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3012, 55, 12, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3013, 55, 13, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3014, 55, 15, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3015, 55, 16, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3016, 55, 17, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3017, 55, 18, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3018, 55, 22, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3019, 55, 23, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3020, 55, 24, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3021, 55, 28, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3022, 55, 29, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3023, 55, 30, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3024, 55, 31, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3025, 55, 32, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3026, 55, 34, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3027, 55, 36, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3028, 55, 37, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3029, 55, 38, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3030, 55, 40, 1, 1, NULL, '2025-11-27 11:37:38', '2025-11-27 11:37:38', NULL),
(3031, 22, 4, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3032, 22, 5, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3033, 22, 6, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3034, 22, 7, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3035, 22, 11, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3036, 22, 12, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3037, 22, 13, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3038, 22, 16, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3039, 22, 17, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3040, 22, 19, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3041, 22, 20, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3042, 22, 22, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3043, 22, 24, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3044, 22, 25, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3045, 22, 27, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3046, 22, 29, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3047, 22, 31, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3048, 22, 32, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3049, 22, 33, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3050, 22, 34, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3051, 22, 35, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3052, 22, 36, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3053, 22, 37, 1, 1, NULL, '2025-11-27 11:41:06', '2025-11-27 11:41:06', NULL),
(3054, 26, 1, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3055, 26, 2, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3056, 26, 4, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3057, 26, 8, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3058, 26, 11, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3059, 26, 12, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3060, 26, 13, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3061, 26, 14, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3062, 26, 15, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3063, 26, 19, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3064, 26, 20, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3065, 26, 23, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3066, 26, 24, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3067, 26, 25, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3068, 26, 26, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3069, 26, 28, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3070, 26, 29, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3071, 26, 30, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3072, 26, 32, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3073, 26, 33, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3074, 26, 34, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3075, 26, 35, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3076, 26, 36, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3077, 26, 37, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3078, 26, 39, 1, 1, NULL, '2025-11-27 11:45:49', '2025-11-27 11:45:49', NULL),
(3079, 28, 1, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3080, 28, 2, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3081, 28, 3, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3082, 28, 4, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3083, 28, 8, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3084, 28, 9, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3085, 28, 10, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3086, 28, 11, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3087, 28, 13, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3088, 28, 14, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3089, 28, 16, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3090, 28, 19, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3091, 28, 20, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3092, 28, 22, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3093, 28, 23, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3094, 28, 24, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3095, 28, 28, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3096, 28, 29, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3097, 28, 30, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3098, 28, 31, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3099, 28, 32, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3100, 28, 34, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3101, 28, 36, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3102, 28, 37, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3103, 28, 38, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3104, 28, 40, 1, 1, NULL, '2025-11-27 11:47:22', '2025-11-27 11:47:22', NULL),
(3105, 29, 2, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3106, 29, 5, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3107, 29, 6, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3108, 29, 7, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3109, 29, 9, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3110, 29, 11, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3111, 29, 12, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3112, 29, 13, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3113, 29, 15, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3114, 29, 16, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3115, 29, 17, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3116, 29, 18, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3117, 29, 23, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3118, 29, 24, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3119, 29, 25, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3120, 29, 26, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3121, 29, 27, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3122, 29, 28, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3123, 29, 30, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3124, 29, 32, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3125, 29, 33, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3126, 29, 34, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3127, 29, 35, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3128, 29, 36, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3129, 29, 37, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3130, 29, 39, 1, 1, NULL, '2025-11-27 11:48:03', '2025-11-27 11:48:03', NULL),
(3131, 1, 1, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3132, 1, 2, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3133, 1, 3, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3134, 1, 8, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3135, 1, 9, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3136, 1, 10, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3137, 1, 13, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3138, 1, 14, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3139, 1, 15, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3140, 1, 18, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3141, 1, 20, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3142, 1, 21, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3143, 1, 24, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3144, 1, 25, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3145, 1, 26, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3146, 1, 27, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3147, 1, 28, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3148, 1, 29, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3149, 1, 30, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3150, 1, 34, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3151, 1, 35, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3152, 1, 36, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3153, 1, 39, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3154, 1, 40, 1, 1, NULL, '2025-11-27 11:52:03', '2025-11-27 11:52:03', NULL),
(3155, 2, 4, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3156, 2, 5, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3157, 2, 6, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3158, 2, 7, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3159, 2, 11, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3160, 2, 12, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3161, 2, 13, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3162, 2, 16, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3163, 2, 17, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3164, 2, 19, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3165, 2, 20, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3166, 2, 22, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3167, 2, 23, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3168, 2, 24, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3169, 2, 28, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3170, 2, 29, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3171, 2, 30, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3172, 2, 31, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3173, 2, 32, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3174, 2, 34, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3175, 2, 36, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3176, 2, 37, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3177, 2, 38, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3178, 2, 40, 1, 1, NULL, '2025-11-27 11:52:52', '2025-11-27 11:52:52', NULL),
(3179, 3, 1, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3180, 3, 3, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3181, 3, 4, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3182, 3, 5, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3183, 3, 6, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3184, 3, 8, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3185, 3, 10, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3186, 3, 11, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3187, 3, 12, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3188, 3, 13, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3189, 3, 14, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3190, 3, 17, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3191, 3, 18, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3192, 3, 23, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3193, 3, 24, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3194, 3, 25, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3195, 3, 26, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3196, 3, 27, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3197, 3, 28, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3198, 3, 30, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3199, 3, 32, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3200, 3, 33, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3201, 3, 34, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3202, 3, 35, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3203, 3, 36, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3204, 3, 37, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3205, 3, 39, 1, 1, NULL, '2025-11-27 11:53:40', '2025-11-27 11:53:40', NULL),
(3206, 4, 2, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3207, 4, 4, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3208, 4, 7, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3209, 4, 8, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3210, 4, 9, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3211, 4, 12, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3212, 4, 13, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3213, 4, 14, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3214, 4, 15, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3215, 4, 16, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3216, 4, 19, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3217, 4, 20, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3218, 4, 24, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3219, 4, 25, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3220, 4, 26, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3221, 4, 27, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3222, 4, 28, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3223, 4, 29, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3224, 4, 30, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3225, 4, 31, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3226, 4, 32, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3227, 4, 34, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3228, 4, 36, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3229, 4, 37, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3230, 4, 38, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3231, 4, 40, 1, 1, NULL, '2025-11-27 11:54:29', '2025-11-27 11:54:29', NULL),
(3232, 6, 1, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3233, 6, 2, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3234, 6, 4, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3235, 6, 8, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3236, 6, 11, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3237, 6, 12, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3238, 6, 13, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3239, 6, 14, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3240, 6, 15, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3241, 6, 19, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3242, 6, 20, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3243, 6, 22, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3244, 6, 24, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3245, 6, 25, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3246, 6, 27, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3247, 6, 29, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3248, 6, 31, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3249, 6, 32, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3250, 6, 33, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3251, 6, 34, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3252, 6, 35, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3253, 6, 36, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3254, 6, 37, 1, 1, NULL, '2025-11-27 11:55:51', '2025-11-27 11:55:51', NULL),
(3255, 8, 1, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3256, 8, 3, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3257, 8, 4, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3258, 8, 8, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3259, 8, 9, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3260, 8, 10, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3261, 8, 11, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3262, 8, 13, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3263, 8, 14, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3264, 8, 16, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3265, 8, 19, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3266, 8, 20, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3267, 8, 21, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3268, 8, 22, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3269, 8, 25, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3270, 8, 26, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3271, 8, 27, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3272, 8, 28, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3273, 8, 29, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3274, 8, 30, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3275, 8, 34, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3276, 8, 35, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3277, 8, 36, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3278, 8, 39, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3279, 8, 40, 1, 1, NULL, '2025-11-27 11:56:42', '2025-11-27 11:56:42', NULL),
(3280, 21, 1, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3281, 21, 2, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3282, 21, 3, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3283, 21, 8, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3284, 21, 9, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3285, 21, 10, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3286, 21, 13, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3287, 21, 14, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3288, 21, 15, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3289, 21, 18, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3290, 21, 20, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3291, 21, 21, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3292, 21, 23, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3293, 21, 24, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3294, 21, 26, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3295, 21, 28, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3296, 21, 30, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3297, 21, 32, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3298, 21, 34, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3299, 21, 35, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3300, 21, 36, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3301, 21, 37, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3302, 21, 38, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3303, 21, 39, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3304, 21, 40, 1, 1, NULL, '2025-11-27 12:21:35', '2025-11-27 12:21:35', NULL),
(3305, 23, 1, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3306, 23, 3, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3307, 23, 4, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3308, 23, 5, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3309, 23, 6, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3310, 23, 8, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3311, 23, 10, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3312, 23, 11, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3313, 23, 12, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3314, 23, 13, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3315, 23, 14, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3316, 23, 17, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3317, 23, 18, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3318, 23, 24, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3319, 23, 25, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3320, 23, 26, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3321, 23, 27, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3322, 23, 28, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3323, 23, 29, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3324, 23, 30, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3325, 23, 31, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3326, 23, 32, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3327, 23, 34, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3328, 23, 36, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3329, 23, 37, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3330, 23, 38, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3331, 23, 40, 1, 1, NULL, '2025-11-27 12:22:46', '2025-11-27 12:22:46', NULL),
(3332, 24, 2, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3333, 24, 4, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3334, 24, 7, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3335, 24, 8, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3336, 24, 9, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3337, 24, 12, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3338, 24, 13, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3339, 24, 14, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3340, 24, 15, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3341, 24, 16, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3342, 24, 19, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3343, 24, 20, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3344, 24, 21, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3345, 24, 22, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3346, 24, 25, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3347, 24, 26, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3348, 24, 27, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3349, 24, 28, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3350, 24, 29, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3351, 24, 30, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3352, 24, 34, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL);
INSERT INTO `entertainment_talent_mapping` (`id`, `entertainment_id`, `talent_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3353, 24, 35, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3354, 24, 36, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3355, 24, 39, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3356, 24, 40, 1, 1, NULL, '2025-11-27 12:23:43', '2025-11-27 12:23:43', NULL),
(3357, 25, 3, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3358, 25, 5, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3359, 25, 6, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3360, 25, 7, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3361, 25, 8, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3362, 25, 9, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3363, 25, 10, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3364, 25, 11, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3365, 25, 12, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3366, 25, 16, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3367, 25, 17, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3368, 25, 18, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3369, 25, 22, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3370, 25, 23, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3371, 25, 25, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3372, 25, 28, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3373, 25, 29, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3374, 25, 30, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3375, 25, 31, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3376, 25, 33, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3377, 25, 34, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3378, 25, 36, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3379, 25, 37, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3380, 25, 39, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3381, 25, 40, 1, 1, NULL, '2025-11-27 12:24:24', '2025-11-27 12:24:24', NULL),
(3382, 30, 1, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3383, 30, 2, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3384, 30, 4, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3385, 30, 6, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3386, 30, 7, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3387, 30, 10, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3388, 30, 11, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3389, 30, 12, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3390, 30, 13, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3391, 30, 14, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3392, 30, 15, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3393, 30, 16, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3394, 30, 17, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3395, 30, 24, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3396, 30, 25, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3397, 30, 26, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3398, 30, 27, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3399, 30, 28, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3400, 30, 29, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3401, 30, 30, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3402, 30, 31, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3403, 30, 32, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3404, 30, 34, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3405, 30, 36, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3406, 30, 37, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3407, 30, 38, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3408, 30, 40, 1, 1, NULL, '2025-11-27 12:25:27', '2025-11-27 12:25:27', NULL),
(3409, 31, 2, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3410, 31, 3, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3411, 31, 5, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3412, 31, 8, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3413, 31, 9, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3414, 31, 10, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3415, 31, 13, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3416, 31, 14, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3417, 31, 16, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3418, 31, 18, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3419, 31, 19, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3420, 31, 20, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3421, 31, 21, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3422, 31, 23, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3423, 31, 24, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3424, 31, 26, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3425, 31, 28, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3426, 31, 30, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3427, 31, 32, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3428, 31, 34, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3429, 31, 35, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3430, 31, 36, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3431, 31, 37, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3432, 31, 38, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3433, 31, 39, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3434, 31, 40, 1, 1, NULL, '2025-11-27 12:26:05', '2025-11-27 12:26:05', NULL),
(3435, 52, 1, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3436, 52, 2, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3437, 52, 4, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3438, 52, 6, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3439, 52, 7, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3440, 52, 10, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3441, 52, 11, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3442, 52, 12, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3443, 52, 13, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3444, 52, 14, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3445, 52, 15, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3446, 52, 16, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3447, 52, 17, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3448, 52, 22, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3449, 52, 23, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3450, 52, 25, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3451, 52, 28, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3452, 52, 29, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3453, 52, 30, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3454, 52, 31, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3455, 52, 33, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3456, 52, 34, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3457, 52, 36, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3458, 52, 37, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3459, 52, 39, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3460, 52, 40, 1, 1, NULL, '2025-11-27 12:28:53', '2025-11-27 12:28:53', NULL),
(3461, 56, 1, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3462, 56, 2, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3463, 56, 3, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3464, 56, 4, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3465, 56, 8, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3466, 56, 9, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3467, 56, 10, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3468, 56, 11, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3469, 56, 13, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3470, 56, 14, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3471, 56, 16, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3472, 56, 19, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3473, 56, 20, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3474, 56, 23, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3475, 56, 24, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3476, 56, 25, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3477, 56, 26, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3478, 56, 27, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3479, 56, 28, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3480, 56, 30, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3481, 56, 32, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3482, 56, 33, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3483, 56, 34, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3484, 56, 35, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3485, 56, 36, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3486, 56, 37, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3487, 56, 39, 1, 1, NULL, '2025-11-27 12:29:44', '2025-11-27 12:29:44', NULL),
(3488, 78, 3, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3489, 78, 5, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3490, 78, 6, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3491, 78, 7, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3492, 78, 8, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3493, 78, 9, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3494, 78, 10, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3495, 78, 11, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3496, 78, 12, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3497, 78, 16, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3498, 78, 17, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3499, 78, 18, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3500, 78, 21, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3501, 78, 23, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3502, 78, 24, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3503, 78, 26, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3504, 78, 28, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3505, 78, 30, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3506, 78, 32, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3507, 78, 34, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3508, 78, 35, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3509, 78, 36, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3510, 78, 37, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3511, 78, 38, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3512, 78, 39, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL),
(3513, 78, 40, 1, 1, NULL, '2025-11-27 12:30:22', '2025-11-27 12:30:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entertainment_views`
--

CREATE TABLE `entertainment_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entertainment_views`
--

INSERT INTO `entertainment_views` (`id`, `entertainment_id`, `user_id`, `profile_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 99, 4, 4, NULL, NULL, NULL, '2025-04-15 23:49:17', '2025-08-10 04:14:11', NULL),
(2, 95, 5, 5, NULL, NULL, NULL, '2024-04-12 01:26:39', '2024-04-12 01:26:39', NULL),
(3, 35, 6, 6, NULL, NULL, NULL, '2024-05-12 01:26:46', '2024-05-12 01:26:46', NULL),
(4, 49, 7, 7, NULL, NULL, NULL, '2024-07-12 01:27:19', '2024-07-12 01:27:19', NULL),
(5, 69, 3, 3, NULL, NULL, NULL, '2024-06-12 01:27:44', '2024-06-12 01:27:44', NULL),
(6, 76, 8, 8, NULL, NULL, NULL, '2024-04-12 01:27:44', '2024-04-12 01:27:44', NULL),
(7, 89, 9, 9, NULL, NULL, NULL, '2025-03-15 19:27:10', '2025-02-01 07:22:48', NULL),
(8, 102, 10, 10, NULL, NULL, NULL, '2024-05-12 01:27:44', '2024-05-12 01:27:44', NULL),
(9, 94, 11, 11, NULL, NULL, NULL, '2025-10-11 14:35:13', '2025-02-17 10:02:38', NULL),
(10, 22, 12, 12, NULL, NULL, NULL, '2024-06-20 01:27:44', '2024-06-20 01:27:44', NULL),
(11, 25, 13, 13, NULL, NULL, NULL, '2024-01-01 01:27:44', '2024-01-01 01:27:44', NULL),
(12, 35, 4, 4, NULL, NULL, NULL, '2025-10-29 08:45:19', '2025-03-20 01:42:32', NULL),
(13, 40, 5, 5, NULL, NULL, NULL, '2024-02-20 01:27:44', '2024-02-20 01:27:44', NULL),
(14, 55, 6, 6, NULL, NULL, NULL, '2024-01-12 01:27:44', '2024-01-12 01:27:44', NULL),
(15, 62, 7, 7, NULL, NULL, NULL, '2025-08-21 10:27:48', '2025-10-16 06:24:43', NULL),
(16, 68, 3, 3, NULL, NULL, NULL, '2024-04-12 01:27:44', '2024-04-12 01:27:44', NULL),
(17, 75, 10, 10, NULL, NULL, NULL, '2025-08-23 20:40:36', '2025-10-31 23:33:23', NULL),
(18, 83, 12, 12, NULL, NULL, NULL, '2024-09-12 01:27:44', '2024-09-12 01:27:44', NULL),
(19, 89, 13, 13, NULL, NULL, NULL, '2024-10-12 01:27:44', '2024-10-12 01:27:44', NULL),
(20, 93, 15, 15, NULL, NULL, NULL, '2025-09-04 01:24:37', '2025-02-07 20:51:18', NULL),
(21, 99, 4, 4, NULL, NULL, NULL, '2024-09-12 01:27:44', '2024-09-12 01:27:44', NULL),
(22, 101, 5, 5, NULL, NULL, NULL, '2025-09-06 18:05:20', '2025-04-10 07:46:53', NULL),
(23, 102, 12, 12, NULL, NULL, NULL, '2025-10-05 14:02:13', '2025-08-10 00:04:31', NULL),
(24, 25, 1, NULL, 1, 1, NULL, '2025-11-27 10:53:29', '2025-11-27 10:53:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `poster_url` text DEFAULT NULL,
  `entertainment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `season_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trailer_url_type` varchar(191) DEFAULT NULL,
  `trailer_url` text DEFAULT NULL,
  `access` varchar(191) DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `IMDb_rating` varchar(191) DEFAULT NULL,
  `content_rating` longtext DEFAULT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT 0,
  `short_desc` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `enable_quality` tinyint(1) NOT NULL DEFAULT 0,
  `video_upload_type` varchar(191) DEFAULT NULL,
  `video_url_input` text DEFAULT NULL,
  `download_status` tinyint(1) NOT NULL DEFAULT 0,
  `download_type` varchar(191) DEFAULT NULL,
  `download_url` text DEFAULT NULL,
  `enable_download_quality` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `video_quality_url` text DEFAULT NULL,
  `tmdb_id` varchar(191) DEFAULT NULL,
  `tmdb_season` varchar(191) DEFAULT NULL,
  `episode_number` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `poster_tv_url` text DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `purchase_type` varchar(191) DEFAULT NULL,
  `access_duration` int(11) DEFAULT NULL,
  `discount` varchar(191) DEFAULT NULL,
  `available_for` int(11) DEFAULT NULL,
  `enable_subtitle` tinyint(1) NOT NULL DEFAULT 0,
  `subtitle_file` varchar(191) DEFAULT NULL,
  `subtitle_language` varchar(191) DEFAULT NULL,
  `is_default_subtitle` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `seo_image` varchar(191) DEFAULT NULL,
  `google_site_verification` varchar(191) DEFAULT NULL,
  `canonical_url` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `name`, `poster_url`, `entertainment_id`, `season_id`, `trailer_url_type`, `trailer_url`, `access`, `plan_id`, `IMDb_rating`, `content_rating`, `duration`, `release_date`, `is_restricted`, `short_desc`, `description`, `enable_quality`, `video_upload_type`, `video_url_input`, `download_status`, `download_type`, `download_url`, `enable_download_quality`, `status`, `created_by`, `updated_by`, `deleted_by`, `video_quality_url`, `tmdb_id`, `tmdb_season`, `episode_number`, `created_at`, `updated_at`, `deleted_at`, `poster_tv_url`, `price`, `purchase_type`, `access_duration`, `discount`, `available_for`, `enable_subtitle`, `subtitle_file`, `subtitle_language`, `is_default_subtitle`, `meta_title`, `meta_keywords`, `meta_description`, `seo_image`, `google_site_verification`, `canonical_url`, `short_description`) VALUES
(1, 'S1 E1 The Awakening', 's1_e1_the_awakening_thumb.png', 1, 1, 'YouTube', 'https://youtu.be/7_MJp5AbSwA?si=Mtx9h0wlxtn4o_2Q', 'free', NULL, NULL, 'TV-MA (Mature Audiences)', '02:56', '2019-04-23', 1, 'A series of mysterious events awaken an ancient evil. 😱', 'The team must uncover the truth behind these occurrences before it\'s too late. A series of mysterious events awaken an ancient evil. 😱', 0, 'YouTube', 'https://youtu.be/mBYGUn6Q7tQ?si=2ijlo4497ab-ZMpU', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e1_the_awakening_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'S1 E2 The Haunted', 's1_e2_the_haunted_thumb.png', 1, 1, 'YouTube', 'https://www.youtube.com/watch?v=mBYGUn6Q7tQ&t=17s', 'free', NULL, NULL, 'TV-MA (Mature Audiences)', '05:13', '2019-04-24', 1, 'The team discovers a haunted house with a dark secret. 🏚️', 'As they explore, they encounter terrifying apparitions and uncover the house\'s grim history. The team discovers a haunted house with a dark secret. 🏚️', 0, 'YouTube', 'https://youtu.be/oZDzZNm4k6M?si=Hv33WihW-44xFvkm', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e1_the_awakening_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'S1 E3 The Possession', 's1_e3_the_possession_thumb.png', 1, 1, 'YouTube', 'https://www.youtube.com/watch?v=mBYGUn6Q7tQ&t=17s', 'free', NULL, '1', 'TV-MA (Mature Audiences)', '02:09', '2019-04-25', 1, 'One of the investigators becomes possessed by a malevolent spirit. 👻', 'The team struggles to save their friend and find a way to expel the dark force. One of the investigators becomes possessed by a malevolent spirit. 👻', 0, 'YouTube', 'https://youtu.be/ng9BW-vQ_2k?si=z-uDACI2iFie0-HY', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e3_the_possession_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'S1 E4 The Ritual', 's1_e4_the_ritual_thumb.png', 1, 1, 'YouTube', 'https://www.youtube.com/watch?v=mBYGUn6Q7tQ&t=17s', 'pay-per-view', NULL, '2', 'TV-MA (Mature Audiences)', '03:20', '2019-04-26', 1, 'The team uncovers a ritual that could banish the evil entity. 🕯️', 'The team uncovers a ritual that could banish the evil entity. They must perform it correctly amidst mounting supernatural threats. 🕯️', 0, 'YouTube', 'https://youtu.be/M6EMl7HPw6M?si=b5GV20LyRV6xd5Cn', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e4_the_ritual_thumb.png', 40.00, 'onetime', NULL, '10', 20, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'S1 E5 The Final Confrontation', 's1_e5_the_final_confrontation_thumb.png', 1, 1, 'YouTube', 'https://www.youtube.com/watch?v=mBYGUn6Q7tQ&t=17s', 'pay-per-view', NULL, '3', 'TV-MA (Mature Audiences)', '03:28', '2019-04-27', 1, 'A climactic battle to defeat the ancient evil once and for all. ⚔️', 'A climactic battle to defeat the ancient evil once and for all. The team faces their greatest challenge yet, risking everything to save humanity. ⚔️', 0, 'YouTube', 'https://youtu.be/WHBOBgDTLak?si=zrUg1McYVIr9POWc', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e5_the_final_confrontation_thumb.png', 40.00, 'onetime', NULL, '10', 20, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'S2 E1 The Return', 's2_e1_the_return_thumb.png', 1, 2, 'YouTube', 'https://youtu.be/1sCBEzxF_K4?si=B-rZUby9EXaMWkKD', 'free', NULL, '4', 'TV-MA (Mature Audiences)', '02:43', '2019-06-08', 1, 'The ancient evil returns, more powerful than ever. 🔥', 'The ancient evil returns, more powerful than ever. The team must regroup and devise a new plan to confront this formidable foe. 🔥', 0, 'YouTube', 'https://youtu.be/_U7wKRtf8C4?si=nGKAxMOgs9YDMEPq', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's2_e1_the_return_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'S2 E2 The Darkness Within', 's2_e2_the_darkness_within_thumb.png', 1, 2, 'YouTube', 'https://youtu.be/_U7wKRtf8C4?si=nGKAxMOgs9YDMEPq', 'free', NULL, '5', 'TV-MA (Mature Audiences)', '04:08', '2019-06-09', 1, 'The team faces their darkest fears and inner demons. 🌑', 'The team faces their darkest fears and inner demons. As they battle the rising shadows, personal struggles threaten to tear them apart. 🌑', 0, 'YouTube', 'https://youtu.be/1sCBEzxF_K4?si=B-rZUby9EXaMWkKD', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's2_e2_the_darkness_within_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'S2 E3 The Last Stand', 's2_e3_the_last_stand_thumb.png', 1, 2, 'YouTube', 'https://youtu.be/_U7wKRtf8C4?si=nGKAxMOgs9YDMEPq', 'pay-per-view', NULL, '6', 'TV-MA (Mature Audiences)', '03:53', '2019-06-10', 1, 'A desperate struggle to save humanity from eternal darkness. 🛡️', 'A desperate struggle to save humanity from eternal darkness. The team unites for a final stand, determined to vanquish the evil once and for all. 🛡️', 0, 'YouTube', 'https://youtu.be/7_MJp5AbSwA?si=Mtx9h0wlxtn4o_2Q', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's2_e3_the_last_stand_thumb.png', 40.00, 'onetime', NULL, '10', 20, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'S1 E1 The Gunslinger Rides Again', 's1_e1_the_gunslinger_rides_again_thumb.png', 2, 3, 'YouTube', 'https://youtu.be/ob8iKn-gLFI?si=sUpU_bMpIDocTFZ6', 'paid', 1, '7', 'PG-13', '02:00', '2020-05-03', 0, 'A legendary gunslinger returns to a lawless town, determined to restore order and seek redemption. 🏜️💥', 'A legendary gunslinger returns to the lawless town he once fled. Haunted by his past and driven by a desire to restore order, he confronts a landscape rife with crime and corruption. As he reclaims his old territory, the townsfolk look to him as their last hope against the rampant lawlessness. But his arrival stirs up old enemies, setting the stage for a fierce struggle for control. 🌵💥', 0, 'YouTube', 'https://youtu.be/8AHMiNxUuPE?si=uUIiune3aZFQPc56', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e1_the_gunslinger_rides_again_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'S1 E2 Showdown at High Noon', 's1_e2_showdown_at_high_noon_thumb.png', 2, 3, 'YouTube', 'https://youtu.be/iABaiZO5Vjs?si=-86t28oJD4cIwkY0', 'paid', 1, '8', 'PG-14', '03:25', '2020-05-10', 0, 'Tensions escalate as the gunslinger faces off against a notorious gang leader in a deadly showdown. 🕛🔥', 'The gunslinger\'s return shakes the town\'s criminal underbelly, culminating in a high-stakes showdown at high noon. The notorious gang leader, determined to maintain his grip on the town, challenges the gunslinger to a deadly duel. As the sun reaches its zenith, tensions explode in a brutal face-off that will determine the town’s future. The gunslinger must draw on all his skills and courage to survive and restore justice. 🕛🔥', 0, 'YouTube', 'https://youtu.be/XvJRBXhRBWo?si=MQ9HEGeXtrhyvi5o', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e2_showdown_at_high_noon_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'S1 E1 Into the Enchanted Forest', 's1_e1_into_the_enchanted_forest_thumb.png', 3, 4, 'YouTube', 'https://youtu.be/G44HxQpAcI4?si=_k-CjJMC436eRDsV', 'paid', 2, '9', 'PG (Parental Guidance Suggested)', '01:25', '2021-06-09', 0, 'Raziel enters the mystical forest, beginning his heroic journey. 🌲✨', 'Raziel steps into the enchanted forest, facing magical creatures and mysterious challenges. With determination and courage, he starts his quest to rescue his friend, encountering allies and enemies along the way. 🌲✨', 0, 'YouTube', 'https://youtu.be/w2wIsq-M1Ac?si=ui48aPEbC14IbJgV', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e1_into_the_enchanted_forest_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'S1 E2 The Guardian\'s Challenge', 's1_e2_the_guardians_challenge_thumb.png', 3, 4, 'YouTube', 'https://youtu.be/yGkGMzupaVs?si=O0EBto49niZjBm_e', 'paid', 2, '5', 'PG (Parental Guidance Suggested)', '02:20', '2021-06-16', 0, 'Raziel must pass a trial set by the forest guardian. 🛡️🌟', 'As Raziel ventures deeper into the forest, he encounters a wise guardian who sets a challenging trial. To prove his worthiness, Raziel must solve riddles and overcome obstacles, showcasing his bravery and intelligence. 🛡️🌟', 0, 'YouTube', 'https://youtu.be/1c3O3-sVFC0?si=8rPDiNHndDz_XIa-', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e2_the_guardians_challenge_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'S2 E1 The Hidden Fortress', 's2_e1_the_hidden_fortress_thumb.png', 3, 5, 'YouTube', 'https://youtu.be/0R3YS_k6a5E?si=k1-dG2Wqap3vkvGQ', 'paid', 2, '6', 'PG (Parental Guidance Suggested)', '01:05', '2021-07-08', 0, 'Raziel discovers Gothel\'s secret fortress and plans his next move. 🏰🔍', 'Raziel uncovers the location of Gothel\'s hidden fortress, a dark and formidable structure. With newfound allies, he devises a daring plan to infiltrate the fortress and rescue his friend, facing greater dangers than ever before. 🏰🔍', 0, 'YouTube', 'https://youtu.be/M2aTryFM6Kg?si=aK8poGJaCpbR5J86', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's2_e1_the_hidden_fortress_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'S2 E2 The Final Showdown', 's2_e2_the_final_showdown_thumb.png', 3, 5, 'YouTube', 'https://youtu.be/UwsbkXkEyOE?si=tNhFI_T6RWg77WNq', 'paid', 2, '3', 'PG (Parental Guidance Suggested)', '01:15', '2021-07-09', 0, 'Raziel confronts Gothel in an epic battle to save his friend. ⚔️🔥', 'In a climactic showdown, Raziel faces Gothel in a battle of wits and strength. With everything on the line, Raziel must summon all his courage and skills to defeat Gothel and free his friend, bringing his daring rescue mission to a thrilling conclusion. ⚔️🔥', 0, 'YouTube', 'https://youtu.be/iw_0KFjRY_Y?si=WjsPaMtnVjHO7x8N', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's2_e2_the_final_showdown_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'S1 E1 The Midnight Chase', 's1_e1_the_midnight_chase_thumb.png', 4, 6, 'YouTube', 'https://youtu.be/T5UokLYVJMI?si=7DVFmcXSmf5zVGKj', 'paid', 3, '4', 'TV-MA (Mature Audiences)', '02:18', '2022-08-05', 1, 'Detective Black tracks a vital lead through the dark city streets. 🌃🚔', 'The Midnight Chase plunges viewers into a heart-pounding pursuit through the city. Detective Black, following a crucial lead, navigates the underbelly of the metropolis, facing danger at every turn. As he gets closer to uncovering The Phantom’s next move, the stakes grow higher, and the chase more perilous. 🌃🚔', 0, 'YouTube', 'https://youtu.be/DwXrfN_-GuE?si=v4uz4roJylb8w3tx', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e1_the_midnight_chase_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'S1 E2 Web of Deceit', 's1_e2_web_of_deceit_thumb.png', 4, 6, 'YouTube', 'https://youtu.be/T5UokLYVJMI?si=7DVFmcXSmf5zVGKj', 'paid', 3, '5', 'TV-MA (Mature Audiences)', '01:10', '2022-08-07', 1, 'A tangled web of lies puts Detective Black in grave danger. 🕸️⚠️', 'In Web of Deceit, Detective Black uncovers a complex network of deception that threatens his mission. With allies turning into enemies and truth entwined with lies, he must tread carefully to avoid deadly traps. The episode is a thrilling exploration of trust, betrayal, and the relentless quest for justice. 🕸️⚠️', 0, 'YouTube', 'https://youtu.be/alT7IxwYd6U?si=hmf8B75acVelyLS3', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e2_web_of_deceit_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'S2 E1 Shadows in the Dark', 's2_e1_shadows_in_the_dark_thumb.png', 4, 7, 'YouTube', 'https://youtu.be/N5d16cUKqu0?si=xGfISG2Yw1ho9bzj', 'paid', 3, '9', 'TV-MA (Mature Audiences)', '01:08', '2022-08-09', 1, 'Detective Black uncovers hidden clues in the darkest corners of the city. 🕵️‍♂️🌑', 'In Shadows in the Dark, Detective Black ventures into the most dangerous and obscure parts of the city to uncover hidden clues that could lead to The Phantom. As he navigates through abandoned buildings and forgotten alleyways, he encounters unexpected allies and faces deadly ambushes. Each discovery brings him closer to understanding The Phantom\'s master plan, but the journey is fraught with peril and intrigue. 🕵️‍♂️🌑', 0, 'YouTube', 'https://youtu.be/EiHzphCFBqE?si=OfKTr8nEozYOd5wP', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's2_e1_shadows_in_the_dark_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'S1 E1 The Haunted Arrival', 's1_e1_the_haunted_arrival_thumb.png', 5, 8, 'YouTube', 'https://youtu.be/bX-PTsk0SPQ?si=joyPGPGvhXxxRi2o', 'paid', 4, '7', 'TV-MA (Mature Audiences)', '02:08', '2023-09-14', 1, 'New residents experience eerie occurrences as they settle into their home. 🏚️👀', 'In The Haunted Arrival, a new family moves into an old mansion in Ravenwood, unaware of the horrors that await them. Strange noises, ghostly apparitions, and unexplainable events soon plague their daily lives. As they seek help from locals, they begin to unravel the mansion\'s dark past and the malevolent spirit that resides within. 🏚️👀', 0, 'YouTube', 'https://youtu.be/mPtCeemqdE0?si=vfZgZoBE4QPdlfp4', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e1_the_haunted_arrival_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'S1 E2 Echoes of the Past', 's1_e2_echoes_of_the_past_thumb.png', 5, 8, 'YouTube', 'https://youtu.be/V6wWKNij_1M?si=T0CX05U6pKcEyyOM', 'paid', 4, '5', 'TV-MA (Mature Audiences)', '03:08', '2023-09-15', 1, 'Residents uncover hidden secrets in an old diary that leads to terrifying revelations. 📖😱', 'Echoes of the Past follows the residents as they find an old diary hidden in the mansion\'s attic. The diary reveals chilling accounts of previous inhabitants and the horrors they faced. As they read further, the current residents realize that the malevolent spirit is more powerful and dangerous than they imagined. With each page, the terror escalates, bringing them closer to the truth and deeper into danger. 📖😱', 0, 'YouTube', 'https://youtu.be/2ODO6tIIzN0?si=2mobmPhb3V_vS58g', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e2_echoes_of_the_past_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'S1 E3 Whispers in the Shadows', 's1_e3_whispers_in_the_shadows_thumb.png', 5, 8, 'YouTube', 'https://youtu.be/7FfGW-2dpx8?si=ed1gFGTajO5jkQ0t', 'paid', 4, '2', 'TV-MA (Mature Audiences)', '04:08', '2023-09-22', 1, 'Mysterious voices haunt the residents of Ravenwood, foretelling ominous events. 🗣️🌑', 'Whispers in the Shadows explores the unsettling phenomenon plaguing Ravenwood\'s inhabitants as eerie voices echo through the town, hinting at dark and foreboding events to come. As paranoia grips the community and tensions rise, the residents must decipher the cryptic messages before they fall prey to the malevolent forces lurking in the shadows. The episode unravels layers of fear and intrigue, pushing the characters to confront their deepest fears in a race against time to uncover the truth behind the whispered omens. 🗣️🌑', 0, 'YouTube', 'https://youtu.be/2ul2vOA39cU?si=jrg8Y0eur17V8A8r', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_e3_whispers_in_the_shadows_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'S2 E1 The Return of Darkness', 's2_e1_the_return_of_darkness_thumb.png', 5, 9, 'YouTube', 'https://youtu.be/2X7G6p-oNG8?si=m0TREbT6RB_rppT_', 'paid', 4, '3', 'TV-MA (Mature Audiences)', '05:08', '2023-11-03', 1, 'Dark forces grow stronger, and the town faces renewed terror. 🖤🕯️', 'In The Return of Darkness, the malevolent forces in Ravenwood grow even stronger, casting a deeper shadow over the town. The residents, now aware of the historical curses, find themselves facing new and more terrifying manifestations. As they fight to protect their loved ones, they uncover more about the nature of the darkness that plagues their home. 🖤🕯️', 0, 'YouTube', 'https://youtu.be/Bfdirk3dCew?si=MVE2OfPUWhjY7bQX', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's2_e1_the_return_of_darkness_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'S2 E2 The Shadow\'s Grasp', 's2_e2_the_shadows_grasp_thumb.png', 5, 9, 'YouTube', 'https://youtu.be/IuqaXBFS0ug?si=Gz7n0cIeja5gCuOu', 'paid', 4, '6', 'TV-MA (Mature Audiences)', '06:08', '2023-11-10', 1, 'The town\'s residents struggle against the encroaching darkness as secrets come to light. 🌑🖤', 'In The Shadow\'s Grasp, the encroaching darkness begins to engulf Ravenwood, causing widespread fear and chaos. As the town\'s residents fight to survive, they uncover more secrets about the malevolent forces and their connection to the town\'s history. The episode highlights their desperate attempts to combat the evil while dealing with personal sacrifices and unexpected revelations. 🌑🖤', 0, 'YouTube', 'https://youtu.be/9ZXFaaQJb0c?si=mErWWDpqEFzijyRA', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's2_e2_the_shadows_grasp_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'S1 E1 The Silent Witness', 's1_e1_the_silent_witness_thumb.png', 6, 10, 'YouTube', 'https://youtu.be/em1ec7BZHJw?si=MSD31eT22XrZ7ohu', 'free', NULL, '1', 'TV-MA (Mature Audiences)', '03:28', '2024-01-11', 1, 'Investigator Reed finds a crucial clue from an unexpected silent witness. 🕵️‍♂️🔎', 'In The Silent Witness, Investigator Reed discovers a crucial clue from an unexpected source — a silent witness whose testimony could unravel the mystery. As he pieces together the information, he uncovers a pattern that points to a much larger conspiracy. The episode is filled with tension and the slow, deliberate uncovering of hidden truths. 🕵️‍♂️🔎', 0, 'YouTube', 'https://youtu.be/_2un1aU7mT0?si=Ztan6plG7Is5osDt', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_the_silent_witness_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'S1 E2 Web of Lies', 's1_e2_web_of_lies_thumb.png', 6, 10, 'YouTube', 'https://youtu.be/m1J8sqBex18?si=SqY0DIpLR7Lr13Sk', 'pay-per-view', NULL, '6', 'TV-MA (Mature Audiences)', '02:43', '2024-01-18', 1, 'Reed navigates a tangled web of lies to find the truth behind a high-profile crime. 🕸️⚖️', 'Web of Lies sees Investigator Reed diving deep into a complex network of deception surrounding a high-profile crime. As he navigates through false leads and deceitful informants, he gets closer to the truth, but also finds himself in greater danger. The episode is a thrilling exploration of the lengths people will go to keep their secrets hidden. 🕸️⚖️', 0, 'YouTube', 'https://youtu.be/epVRE3nWWAg?si=pLxJXbcPhmIuLYe0', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_web_of_lies_thumb.png', 10.00, 'rental', 5, '10', 20, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'S1 E3 The Hidden Code', 's1_e3_the_hidden_code_thumb.png', 6, 10, 'YouTube', 'https://youtu.be/SjkcA2ZCmDU?si=F9hJLcsxVvJCfDta', 'pay-per-view', NULL, '4', 'TV-MA (Mature Audiences)', '03:20', '2024-01-25', 1, 'Reed deciphers a cryptic code that leads him closer to the heart of the conspiracy. 🔍🗝️', 'In The Hidden Code, Investigator Reed discovers a cryptic code embedded in seemingly unrelated pieces of evidence. As he deciphers the code, it leads him closer to the heart of the conspiracy, revealing connections he never expected. The episode is a thrilling blend of puzzle-solving and suspense, as Reed races against time to stay ahead of those who would do anything to keep the secrets hidden. 🔍🗝️', 0, 'YouTube', 'https://youtu.be/-WzB5wqpkbg?si=snkkYmtcH9TuuUEb', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e3_the_hidden_code_thumb.png', 10.00, 'rental', 5, '10', 20, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'S1 E1 Echoes of the Emerald', 's1_e1_echoes_of_the_emerald_thumb.png', 7, 11, 'YouTube', 'https://youtu.be/7VXOHmaTd7g?si=Qjm-q92VPXnVG5NN', 'paid', 1, '2', 'TV-MA (Mature Audiences)', '03:28', '2024-02-01', 0, 'Emily is drawn into Oz after receiving cryptic messages, discovering that her grandmother’s past is not just a story, but a nightmare waiting for her.', 'Emily Gale receives mysterious messages linked to her grandmother’s past, leading her to a cursed book left behind by Dorothy. Curious yet fearful, she follows the clues, only to find herself trapped in a decaying version of Oz. There, she is haunted by visions of a once-great land, now overrun with dangerous shadows and monstrous creatures. As she struggles to understand her grandmother’s connection to the forgotten world, Emily realizes that her fate is intertwined with the horrors that now lurk within. 🌪️📜🖤', 0, 'YouTube', 'https://youtu.be/A5fBmZHgcT0?si=n8vuYfPWIsQCkMwg', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_echoes_of_the_emerald_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'S1 E2 The Curse Unveiled', 's1_e2_the_curse_unveiled_thumb.png', 7, 11, 'YouTube', 'https://youtu.be/H0u8yO9kiAA?si=V__ZIHm_Pu3yCqI8', 'paid', 1, '7', 'TV-MA (Mature Audiences)', '02:43', '2024-02-08', 0, 'Emily encounters a mysterious figure from her grandmother’s past, who reveals the true nature of the curse that haunts the Gale family.', 'Emily comes face to face with a figure who claims to have fought alongside her grandmother, Dorothy, in a battle to contain the dark forces of Oz. This stranger reveals the shocking truth: Dorothy never truly defeated the evil lurking in Oz; she merely contained it. Now, with Dorothy gone, the evil has been unleashed again, and it is hungry for revenge. Emily learns that her journey is not just one of survival, but of destiny. As the darkness grows around her, Emily must decide whether to embrace her family’s legacy or fall victim to the curse. 🌑🔮🖋️', 0, 'YouTube', 'https://youtu.be/7-Sy9azQIC8?si=fFrb5lgs0BTcLzs6', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_the_curse_unveiled_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'S2 E1 The Forgotten Kingdom', 's2_e1_the_forgotten_kingdom_thumb.png', 7, 12, 'YouTube', 'https://youtu.be/PI4Z7t3AZ5E?si=QNKYohZ1ZgLol_OP', 'paid', 1, '9', 'TV-MA (Mature Audiences)', '03:20', '2024-02-11', 0, 'Emily stumbles upon the ruins of the Emerald City, where she faces her first true battle against the creatures of Oz and uncovers a shocking revelation about her grandmother.', '\"The Forgotten Kingdom\" sees Emily journey deeper into the haunted lands of Oz, where she discovers the ruins of the once-glorious Emerald City. The streets are empty, and the city’s vibrant green glow has faded into a lifeless grey. As she explores the eerie remnants of the kingdom, Emily encounters dangerous creatures—twisted versions of the characters her grandmother once knew. In a harrowing battle, she is forced to rely on her instincts and newfound strength. Amid the chaos, Emily uncovers a hidden journal that reveals secrets about Dorothy’s time in Oz and the real reason behind the family curse. 🏰🌲⚔️', 0, 'YouTube', 'https://youtu.be/-I2mVPRZ2_c?si=rb2c2k8wXRepTp5v', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's2_e1_the_forgotten_kingdom_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'S1 E1 The New Moon', 's1_e1_the_new_moon_thumb.png', 8, 13, 'YouTube', 'https://youtu.be/MAFsRmx6pPo?si=CJjoeRbHVtKJt9oC', 'free', NULL, '8', 'TV-MA (Mature Audiences)', '03:28', '2024-02-15', 0, '🌑 Maddy’s life takes a dramatic turn when she meets Rhydian, a boy with an unknown connection to her wolfblood pack.', '🌑 Maddy, a confident young wolfblood, is used to keeping her secret hidden from the world. But everything changes when a new boy, Rhydian, arrives at her school. He smells like her pack, yet he’s completely unaware of his wolfblood nature. Suspicious and intrigued, Maddy decides to uncover his secrets, leading her into a world of danger she never expected. Will Rhydian accept his true identity, or will his rebellious streak threaten them both? 🐺⚔️', 0, 'YouTube', 'https://youtu.be/cYCcnV0YO1U?si=ZLrL3UVoHmf9JY4V', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_the_new_moon_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'S1 E2 Pack Bonds', 's1_e2_pack_bonds_thumb.png', 8, 13, 'YouTube', 'https://youtu.be/GKq7QlNz3CA?si=E6fnSD4CvpEPcMu7', 'pay-per-view', NULL, '4', 'TV-MA (Mature Audiences)', '02:43', '2024-02-15', 0, '🐺 Rhydian struggles to come to terms with his new reality as Maddy tries to teach him the ways of the wolfbloods.', '🐺 As Rhydian begins to process the truth about his wolfblood heritage, Maddy steps in to guide him through the transformation process. But things aren’t easy—Rhydian’s rebellious nature causes friction, and the dangers of exposure grow as strange happenings around town raise suspicion. With hunters lurking nearby, Maddy must help Rhydian quickly adapt, or they’ll both risk the safety of their pack. Bonds of trust will be tested, and survival depends on their ability to work together. 🌕🔥👣', 0, 'YouTube', 'https://youtu.be/2c1X2wmqxZs?si=-BhAYJvr_f8AUpGj', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_pack_bonds_thumb.png', 10.00, 'rental', 5, '10', 20, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'S1 E1 Call of the Ancestors', 's1_e1_call_of_the_ancestors_thumb.png', 9, 14, 'YouTube', 'https://youtu.be/iJkspWwwZLM?si=chtl8vdmLqPNKPfE', 'free', NULL, '6', 'TV-MA (Mature Audiences)', '03:08', '2024-02-20', 0, '🌿 As invaders approach, tribal leaders must decide whether to unite or face destruction alone.', '🌿 In the opening episode, the tribes are scattered and in disarray. When the threat of invaders looms on the horizon, ancient prophecies begin to unfold. A young warrior from the Mountain Tribe receives a vision from his ancestors, urging him to unite the tribes. However, distrust and rivalry run deep among the leaders. As the invaders draw nearer, the tribes must decide whether to join forces or perish alone. The episode sets the stage for the epic struggle ahead, filled with suspense, political intrigue, and the first hints of war. ⚔️🌄🔥', 0, 'YouTube', 'https://youtu.be/VOwUgraDBFI?si=1IUq1nOWZzSogcE8', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_call_of_the_ancestors_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'S1 E2 Forging Alliances', 's1_e2_forging_alliances_thumb.png', 9, 14, 'YouTube', 'https://youtu.be/6sxnOLRGkhw?si=WrBfEDVah3Z-vFwO', 'pay-per-view', NULL, '9', 'TV-MA (Mature Audiences)', '04:02', '2024-02-21', 0, 'Tribes unite to protect their sacred land from invaders, forging a timeless legacy of courage and unity. 🛡️🔥🌄', 'Amidst the rugged terrain of ancient lands, many tribes rise against the threats that seek to desecrate their sacred homeland. As they fight to preserve their heritage, their bravery and unity carve an enduring legacy that will resonate through the ages. 🐺🌟⚔️', 0, 'YouTube', 'https://youtu.be/o0OkTEK9KKs?si=BDW4TC4uDF7VluOz', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_forging_alliances_thumb.png', 10.00, 'rental', 5, '10', 20, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'S1 E1 The Final Watch', 's1_e1_the_final_watch_thumb.png', 10, 15, 'YouTube', 'https://youtu.be/QROfT5dT_yQ?si=jt4LxdBIIe5h7xY_', 'paid', 4, '4', 'TV-MA (Mature Audiences)', '02:50', '2024-03-01', 0, 'During the Indo-Pak War, \"The Final Watch\" follows a sniper and his spotter grappling with moral dilemmas as they hunt their enemies amidst intense conflict. 🎯', 'In \"The Final Watch,\" set against the backdrop of the Indo-Pak War, a sniper and his spotter are embroiled in a moral struggle while navigating the battlefield. The film delves into the complexities of war, showcasing suspense, drama, and a hauntingly beautiful soundtrack that resonates with the film\'s themes of sacrifice and duty. 🎖️🔥', 0, 'YouTube', 'https://youtu.be/JEKCMP3w9zs?si=psaIC0wKC3akDOqp', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_the_final_watch_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'S1 E2 The Silent Marksman', 's1_e2_the_silent_marksman_thumb.png', 10, 15, 'YouTube', 'https://youtu.be/s2-1hz1juBI?si=OG5eOFO6QnSfLiFb', 'paid', 4, '6', 'TV-MA (Mature Audiences)', '03:45', '2024-03-08', 0, 'In \"The Silent Marksman,\" a sniper and his spotter face a moral dilemma while hunting their enemies during the Indo-Pak War, set against a dramatic and suspenseful backdrop. 🎯', 'The Silent Marksman follows a sniper and his spotter as they navigate the complexities of war during the Indo-Pak conflict. As they engage in high-stakes combat, they must confront their own moral questions and the harsh realities of their mission. With a gripping narrative and a poignant musical score, the film provides a deep exploration of duty and sacrifice. 🎖️💔', 0, 'YouTube', 'https://youtu.be/AWuxeDm1SGA?si=5rZ3rc4LnLYtmJ2u', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_the_silent_marksman_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'S1 E3 Last Stand: Retreat of Valor', 's1_e3_last_stand_retreat_of_valor_thumb.png', 10, 15, 'YouTube', 'https://youtu.be/hf8EYbVxtCY?si=ayaY0YZtZu4seFnF', 'paid', 4, '8', 'TV-MA (Mature Audiences)', '04:15', '2024-03-15', 0, 'Abandoned by their retreating army, a group of soldiers makes a heroic last stand in the face of danger. 🛡️🔥', 'Last Stand: Retreat of Valor follows a brave group of German soldiers who are left stranded after their army retreats. As they face betrayal, relentless enemies, and dwindling supplies, they must summon their inner strength and make their final stand in a war-torn battlefield. 🛡️🔥⚔️', 0, 'YouTube', 'https://youtu.be/PdxPlbKFkaM?si=H_nwgJKc4Ioqj1tR', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e3_last_stand_retreat_of_valor_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'S1 E1 The Battle of PT-76', 's1_e1_the_battle_of_pt_76_thumb.png', 11, 16, 'YouTube', 'https://youtu.be/5dTtuN5BceI?si=rQukzFVuulLJY3K4', 'free', NULL, '4', 'TV-MA (Mature Audiences)', '05:20', '2024-03-16', 0, 'Captain Balram Singh Mehta’s heroic efforts with the Indian 45 Cavalry during the 1971 Indo-Pakistani War, leading the charge for Bangladesh’s independence. 🚩🌟', 'The Battle of PT-76 tells the gripping story of Captain Balram Singh Mehta and his regiment as they engage in crucial battles during the 1971 Indo-Pakistani War. Named after the amphibious PT-76 tank, the film showcases Mehta’s rise to prominence as he navigates the trials of war and strives to secure Bangladesh\'s freedom. A tale of valor and dedication, underscoring a significant historical moment. 🏆🚀', 0, 'YouTube', 'https://youtu.be/vAp-9i4mFBQ?si=53kE_c6K8fftINMb', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_the_battle_of_pt_76_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'S1 E2 Apocalypse Vault', 's1_e2_apocalypse_vault_thumb.png', 11, 16, 'YouTube', 'https://youtu.be/HHJkUQGm2H8?si=ciuK8Jd5Mp4vyHTe', 'pay-per-view', NULL, '7', 'TV-MA (Mature Audiences)', '06:45', '2024-03-17', 0, 'A crew of mercenaries must pull off an impossible heist in a zombie-infested Las Vegas before the city is nuked. 🧟‍♂️🔥💵', 'A group of elite thieves is tasked with infiltrating a walled-off, zombie-overrun Las Vegas to retrieve $200 million. With the clock ticking and deadly Alpha zombies closing in, this high-stakes mission becomes a race for survival. 🧟‍♂️🔥💣💵', 0, 'YouTube', 'https://youtu.be/iwA8ooWRNBs?si=JqXh28NIx2Dgk8aA', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_apocalypse_vault_thumb.png', 10.00, 'rental', 5, '10', 20, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'S1 E1 Depths of Discovery', 's1_e1_depths_of_discovery_thumb.png', 12, 17, 'YouTube', 'https://youtu.be/rze8QYwWGMs?si=UQIYYM4LQtxLTILi', 'paid', 1, '1', 'TV-MA (Mature Audiences)', '03:10', '2024-04-13', 0, 'The team descends into the Earth’s core, unveiling ancient secrets and battling unknown forces in their quest to unlock the mysteries of the planet\'s inner depths. 🌋🌪️', 'A thrilling expedition into the Earth’s core unearths a dangerous, ancient world in this action-packed adventure. 🌍⚒️ In \"Depths of Discovery,\" a scientist, his curious nephew, and an experienced mountain guide descend into the earth’s core on a daring mission to find his missing brother. What awaits them is an extraordinary world filled with prehistoric creatures, uncharted landscapes, and unknown dangers. Their journey turns into a heart-pounding adventure of survival and self-discovery. 🌍🦕⚒️', 0, 'YouTube', 'https://youtu.be/M6h5AS971hY?si=T7Sf0Gjetp_7Ld2C', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_depths_of_discovery_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'S1 E2 Into the Earth\'s Core', 's1_e2_into_the_earths_core_thumb.png', 12, 17, 'YouTube', 'https://youtu.be/jzQn0-WH4WM?si=BLrfsFpVGzCttbRF', 'paid', 1, '6', 'TV-MA (Mature Audiences)', '04:15', '2024-04-14', 0, 'A scientist and his companions uncover a dangerous lost world hidden beneath the Earth\'s surface, fighting to survive in an epic action-adventure. 🌋🦕', 'Into the Earth\'s Core follows a group of explorers as they delve into the unknown in search of a missing brother. What begins as a scientific quest soon transforms into a perilous journey, where danger lurks around every corner and survival is far from guaranteed. Facing monstrous creatures and earth-shattering discoveries, they must push beyond their limits to make it back alive. 🌋⚠️🦖', 0, 'YouTube', 'https://youtu.be/gkBEd41mOIo?si=yItQlzbz60lijY9m', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_into_the_earths_core_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'S1 E3 Clash of Empires', 's1_e3_clash_of_empires_thumb.png', 12, 17, 'YouTube', 'https://youtu.be/rFq52e7wYws?si=n4XnFfiHBI3pBko4', 'paid', 1, '3', 'PG (Parental Guidance Suggested)', '02:50', '2024-04-15', 0, 'Clash of Empires unfolds in a world torn apart by conflict between rival factions. The Alliance and Horde engage in a fierce struggle, with legendary warriors, powerful magic, and unstoppable armies driving the chaos. 🏰⚔️💥', 'The ultimate battle for supremacy erupts as two powerful factions clash in a world-altering war. 🏰💥⚔️', 0, 'YouTube', 'https://youtu.be/AWuxeDm1SGA?si=5rZ3rc4LnLYtmJ2u', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e3_clash_of_empires_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'S1 E1 Cutting Edge Chaos', 's1_e1_cutting_edge_chaos_thumb.png', 13, 18, 'YouTube', 'https://youtu.be/hSxLUd8aly4?si=ishR_1RLpsgRm1R_', 'paid', 3, '1', 'PG (Parental Guidance Suggested)', '03:20', '2024-04-28', 1, 'The Razor\'s Edge - A janitor-turned-barber accidentally stumbles into a world of espionage, where every haircut leads to explosive action. ✂️🕶️💣', 'When an unsuspecting janitor, Jack, is mistaken for the new barber at an underground espionage hideout, he’s thrust into a whirlwind of high-octane action. Armed only with barber tools, Jack must fight off international spies and uncover hidden secrets, all while delivering the sharpest haircuts of his life. ✂️💣🕵️‍♂️💥', 0, 'YouTube', 'https://youtu.be/OthBEy73VQ4?si=PdWE8bicX90lhHKb', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_cutting_edge_chaos_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'S1 E2 Snip & Strike', 's1_e2_snip_strike_thumb.png', 13, 18, 'YouTube', 'https://youtu.be/OxLQZVmKWEo?si=RYQIiu7LQpnSfdRf', 'paid', 3, '4', 'PG (Parental Guidance Suggested)', '03:28', '2024-04-29', 1, 'A hairstylist becomes an unlikely hero as he battles criminals in a salon over a hidden microchip. Snips turn into strikes in this thrilling action adventure! ✂️🕶️⚔️', 'Leo, a mild-mannered hairstylist, is forced to become a hero when a gang of criminals invade his salon, looking for a hidden microchip that could change the world. Using only his barber skills and quick wit, Leo must outsmart the villains and save the day, turning an ordinary haircut into a high-stakes showdown. ✂️💥💈🕵️‍♂️', 0, 'YouTube', 'https://youtu.be/13FLawVtwSc?si=Wsdj4GsSHoCq0VsP', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_snip_strike_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'S1 E3 The Barber\'s Edge', 's1_e3_the_barbers_edge_thumb.png', 13, 18, 'YouTube', 'https://youtu.be/-Qv6p6pTz5I?si=aeaLICb9s9VAgl4W', 'paid', 3, '5', 'PG (Parental Guidance Suggested)', '02:43', '2024-04-30', 1, 'Mr. Cool must defend his barbershop and secret hair formula from enemy agents, using only his quirky charm and barber tools. ✂️💣💇‍♂️', 'Mr. Cool is unwittingly caught in a conspiracy involving a top-secret hair formula hidden in his barbershop. Chaos ensues when rival agents and dangerous criminals come after him, forcing Bean to fight back using only barber tools and his incredible knack for slapstick combat. ✂️🕶️💣💇‍♂️', 0, 'YouTube', 'https://youtu.be/QTli1HU9axY?si=wgvnUQBuY2rVXJn0', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e3_the_barbers_edge_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'S1 E4 Cut to the Chase', 's1_e4_cut_to_the_chase_thumb.png', 13, 18, 'YouTube', 'https://youtu.be/dKkT8_RGDYg?si=4gdepK-sTlGcxcPw', 'paid', 3, '6', 'PG (Parental Guidance Suggested)', '03:08', '2024-05-01', 1, 'Mr. Bean\'s bad haircut turns into a wild chase as he accidentally gets involved in a spy mission, running from both criminals and the law! ✂️🚗🔥', 'Cut to the Chase sees Mr. Bean accidentally tangled in an international spy ring when a client he gives a terrible haircut to turns out to be a wanted criminal. Now, with both criminals and law enforcement after him, Bean must dodge bullets and hair clippers as he races through the city in his Mini, turning every barber shop into a battleground. 🚗✂️🕶️🔥', 0, 'YouTube', 'https://youtu.be/kSGrk5gVkmM?si=YJbvb2tBrC490XKe', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e4_cut_to_the_chase_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'S2 E1 Blade Runner: Salon Showdown', 's2_e1_blade_runner_salon_showdown_thumb.png', 13, 19, 'YouTube', 'https://youtu.be/7mT8El4mBVw?si=QURW5DdZ0HMm1wOm', 'paid', 3, '9', 'PG (Parental Guidance Suggested)', '03:20', '2024-05-02', 1, 'Ethan, a former special ops agent turned barber, is pulled back into action when his old nemesis resurfaces, targeting his salon as the front for a dangerous arms deal. 💈✂️💥🕵️‍♂️', 'A retired special ops agent turned barber must fend off a criminal syndicate using only his skills and tools in an epic salon showdown. ✂️💣💈', 0, 'YouTube', 'https://youtu.be/FG3ohfDASao?si=urEsRJhkQmg5YDI4', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's2_e1_blade_runner_salon_showdown_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'S2 E2 Lens Lunacy: The Great Camera Caper', 's2_e2_lens_lunacy_the_great_camera_caper_thumb.png', 13, 19, 'YouTube', 'https://youtu.be/eH7EyPs_Va8?si=BRcgB15dMbdoEj7G', 'paid', 3, '5', 'PG (Parental Guidance Suggested)', '04:15', '2024-05-03', 1, 'When a beloved camera goes missing, a well-meaning but hapless amateur sleuth takes on the challenge of finding it. With a mix of slapstick humor and endearing blunders, he navigates through a series of comedic escapades, learning that sometimes laughter is the best tool for solving a mystery. 📸🎭🔎', 'A bumbling detective’s quest to recover his stolen camera turns into a comedy of errors and mishaps. 📷😂🕵️‍♂️', 0, 'YouTube', 'https://youtu.be/UD-22FD3GQo?si=ROszF3zF7jHwcBgb', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's2_e2_lens_lunacy_the_great_camera_caper_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'S1 E1 Waves of the Past', 's1_e1_waves_of_the_past_thumb.png', 14, 20, 'YouTube', 'https://youtu.be/xqzR_h3_84c?si=bpYToPY4e4uZ76oV', 'free', NULL, '7', 'TV-MA (Mature Audiences)', '06:45', '2024-05-02', 0, 'A legendary football star confronts his past mistakes while teaching a group of kids the fundamentals of baseball. As he learns from their determination, he starts to see life in a new light. ⚾🏆🌊', 'In \"Waves of the Past\", the star athlete, once a pro football legend, takes on the daunting task of coaching a ragtag team of kids in baseball. With little experience in the sport, he struggles to connect with the kids, haunted by his own past failures. As the children begin to open up to him, the waves of his past mistakes start to surface, pushing him to face the life lessons he’s avoided for years. In teaching the kids how to win on the field, he learns valuable lessons on how to find redemption and inner strength. ⚾🏆🌊', 0, 'YouTube', 'https://youtu.be/XbP-Mc1RDEg?si=RFJqHSXMUkvCfmnZ', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_waves_of_the_past_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'S1 E2 Pit Stops and Breakdowns', 's1_e2_pit_stops_and_breakdowns_thumb.png', 14, 20, 'YouTube', 'https://youtu.be/pRH5u5lpArQ?si=ld4xRo9ELtLQXzbN', 'free', NULL, NULL, 'TV-MA (Mature Audiences)', '03:10', '2024-05-04', 0, 'After a tough start, the coach faces new challenges both on and off the field. When things fall apart, the kids teach him that the journey is just as important as the destination. 🛠️⚾🛑', 'In \"Pit Stops and Breakdowns\", the coach’s frustration reaches a breaking point as the baseball team faces multiple setbacks during their early training sessions. Off the field, his personal life begins to unravel, mirroring the chaos on the diamond. The kids, however, show him that perseverance, even through small pit stops and breakdowns, is the key to success. Through their humor and resilience, the coach starts to realize that life, much like the game, is about bouncing back from mistakes and enjoying the ride, not just focusing on the final score. 🛠️⚾🛑', 0, 'YouTube', 'https://youtu.be/F2nO-6mzCF8?si=V3pk2XavKdRQSa5Z', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_pit_stops_and_breakdowns_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'S1 E3 Bridges and Boundaries', 's1_e3_bridges_and_boundaries_thumb.png', 14, 20, 'YouTube', 'https://youtu.be/5eQKOr6sFgk?si=aGYzXoiBPFTf1XtA', 'free', NULL, '9', 'TV-MA (Mature Audiences)', '04:15', '2024-05-06', 0, 'As relationships grow, the coach struggles with setting boundaries while building emotional bridges with the kids. Their bond becomes the key to success both on and off the field. 🌉⚾❤️', 'In \"Bridges and Boundaries\", the coach finds himself balancing the growing bond between himself and the kids, while still trying to keep professional boundaries. As the team begins to show progress, personal conflicts arise, forcing the coach to question how deeply he should involve himself in their lives. Through moments of tension and heartfelt revelations, he begins to build emotional bridges with the kids, discovering that strong relationships are the foundation of success, whether in sports or in life. As the team starts to come together, so does the coach’s understanding of what it means to truly lead and inspire. 🌉⚾❤️', 0, 'YouTube', 'https://youtu.be/nohSnrV2CgE?si=6HiPnf176gJ9VNdm', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e3_bridges_and_boundaries_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'S1 E1 Grandpa\'s Hectic Heirlooms', 's1_e1_grandpas_hectic_heirlooms_thumb.png', 15, 21, 'YouTube', 'https://youtu.be/mJ_Tex6KT6w?si=0bhjIh5zYTZlk9EU', 'free', NULL, '4', 'TV-MA (Mature Audiences)', '02:50', '2024-06-21', 0, 'A wealthy man’s glamorous life turns chaotic with the arrival of his six lively grandchildren, leading to hilarious lessons in family values. 👴👨‍👩‍👧‍👦🤣', 'David McDoll’s posh life hits a comedic snag when he inherits six energetic grandchildren. His once-perfect world is thrown into delightful chaos as the kids upend his lavish lifestyle. Amidst the laughter and mayhem, David discovers the joys of family life and the value of putting loved ones first. 👴🎢🏡😂', 0, 'YouTube', 'https://youtu.be/4hA2ZuK5axU?si=0koN4EoSNXUXaXaH', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_grandpas_hectic_heirlooms_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `episodes` (`id`, `name`, `poster_url`, `entertainment_id`, `season_id`, `trailer_url_type`, `trailer_url`, `access`, `plan_id`, `IMDb_rating`, `content_rating`, `duration`, `release_date`, `is_restricted`, `short_desc`, `description`, `enable_quality`, `video_upload_type`, `video_url_input`, `download_status`, `download_type`, `download_url`, `enable_download_quality`, `status`, `created_by`, `updated_by`, `deleted_by`, `video_quality_url`, `tmdb_id`, `tmdb_season`, `episode_number`, `created_at`, `updated_at`, `deleted_at`, `poster_tv_url`, `price`, `purchase_type`, `access_duration`, `discount`, `available_for`, `enable_subtitle`, `subtitle_file`, `subtitle_language`, `is_default_subtitle`, `meta_title`, `meta_keywords`, `meta_description`, `seo_image`, `google_site_verification`, `canonical_url`, `short_description`) VALUES
(51, 'S1 E2 Chaos at the McDoll Mansion', 's1_e2_chaos_at_the_mcdoll_mansion_thumb.png', 15, 21, 'YouTube', 'https://youtu.be/bgeRUptdlqU?si=xylQNW3eZdIDQ-_Y', 'free', NULL, '7', 'TV-MA (Mature Audiences)', '03:20', '2024-06-22', 0, 'A wealthy man’s life is hilariously transformed when his six grandkids turn his mansion into a comedic playground, teaching him the true meaning of family. 🏰👨‍👩‍👧‍👦😂', 'David McDoll’s opulent world is turned upside down when his six spirited grandchildren move in. From fancy cars to family feuds, the mansion becomes a whirlwind of laughter and mishaps. David’s journey from a self-absorbed tycoon to a loving grandfather is packed with humor and heart. 🏰👶🚗😂', 0, 'YouTube', 'https://youtu.be/X0K5cA2hS6g?si=dCiATYDWrJmKK86q', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_chaos_at_the_mcdoll_mansion_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'S1 E3 Grandpa\'s Wild Ride', 's1_e3_grandpas_wild_ride_thumb.png', 15, 21, 'YouTube', 'https://youtu.be/skl7gYRZHwE?si=kiekCHcihmEJH54D', 'free', NULL, '6', 'TV-MA (Mature Audiences)', '03:28', '2024-06-23', 0, 'Jason Kelly’s meticulously planned life takes a hilarious detour when he’s roped into driving his rambunctious grandfather, Dick, to Daytona Beach. What starts as a routine trip becomes a wild adventure full of raucous parties, unexpected encounters, and karaoke chaos. 🚗🎉🎤', 'A straight-laced groom-to-be finds his life upended by his wild grandfather’s outrageous spring break escapades, leading to a comedy-filled journey of discovery and family bonding. 🚗😂🎉', 0, 'YouTube', 'https://youtu.be/D7vcG9bHtJI?si=ndF6thZ6eEMZ79-v', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e3_grandpas_wild_ride_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'S1 E4 Funeral Frenzy', 's1_e4_funeral_frenzy_thumb.png', 15, 21, 'YouTube', 'https://youtu.be/0Ji6i79LiL8?si=IIG3-D6Jl72oJq0_', 'free', NULL, '9', 'TV-MA (Mature Audiences)', '02:43', '2024-06-24', 0, 'A family patriarch\'s doorstep death turns into a hilarious fiasco. Amid old family feuds and a well-meaning paramedic\'s attempts to help, the funeral becomes a comedy of errors and misunderstandings, leaving everyone in stitches. 💔🚨😂', 'Funeral Frenzy kicks off with the sudden death of the estranged Jones family patriarch right on their doorstep. As a well-intentioned paramedic tries to assist, he finds himself in the midst of a whirlwind of old family feuds and unresolved conflicts. The funeral turns into a series of hilarious escapades and mishaps as the family grapples with their differences and attempts to navigate through the chaos. Prepare for a comedy of errors and family revelations that will leave everyone in stitches! 💔🎩🚨😂', 0, 'YouTube', 'https://youtu.be/JAoR9u85DQ0?si=JggaatJIEG5HxlOm', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e4_funeral_frenzy_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'S1 E1 Beneath the Mask', 's1_e1_beneath_the_mask_thumb.png', 16, 22, 'YouTube', 'https://youtu.be/WTLgg8oRSBE?si=SDS3_CB0MY1zNzko', 'paid', 1, '5', 'TV-MA (Mature Audiences)', '05:20', '2024-07-10', 0, 'The journalist uncovers startling truths about the model’s hidden life, forcing both to confront the barriers they’ve built around their hearts. 🖤💔', 'In \"Beneath the Mask\", the walls of secrecy start to crumble as the journalist begins to piece together the model’s hidden past. What starts as a lighthearted romance quickly deepens into something far more complex when he learns that her seemingly glamorous life is filled with shadows and secrets. As they both struggle to maintain their facades, their growing connection forces them to confront the emotional masks they’ve been wearing. Vulnerability, fear, and longing come to the forefront in this pivotal episode, as they realize that love requires more than attraction—it demands honesty and trust. Will they be brave enough to reveal their true selves, or will their hidden lives tear them apart? 🖤💔🌹', 0, 'YouTube', 'https://youtu.be/lYyPmA_nuDE?si=aMi1KgykEpC9KDEf', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e1_beneath_the_mask_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'S1 E2 Veil of Deception', 's1_e2_veil_of_deception_thumb.png', 16, 22, 'YouTube', 'https://youtu.be/2vrTz4kC6Ls?si=jzIQOzSIoExlyheH', 'paid', 1, '4', 'TV-MA (Mature Audiences)', '06:45', '2024-07-10', 0, 'The journalist’s pursuit of truth puts him on a collision course with the model’s double life, where love and betrayal walk a fine line. 💔🕵️‍♂️', 'The stakes rise as the journalist delves deeper into the model’s mysterious past, uncovering secrets that threaten to shatter the fragile bond they’ve built. As he gets closer to the truth, the model\'s carefully constructed facade begins to unravel, revealing hidden motives and unexpected connections. Torn between his desire for the woman he’s grown to care for and his instinct to expose the truth, the journalist must decide if love is worth the risk of betrayal. This episode explores the tension between trust and deceit, as both characters struggle to protect their hearts from the fallout of a love built on lies. 💔🕵️‍♂️🌹', 0, 'YouTube', 'https://youtu.be/M1J-uv6oNYg?si=_3Auidh-lwrk5ll2', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e2_veil_of_deception_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'S1 E3 Whispers of Her World', 's1_e3_whispers_of_her_world_thumb.png', 16, 22, 'YouTube', 'https://youtu.be/zF9YIYc0d7w?si=qy32xEf0hsJD9jyz', 'paid', 1, '3', 'TV-MA (Mature Audiences)', '03:10', '2024-07-17', 0, 'A smooth-talking journalist is shaken when a mysterious model with a secret life opens his heart, challenging him to rethink everything he believed about love.', 'A well-known womanizer who’s used to fast romances. But when he meets a beautiful model leading a double life, his world is turned upside down. Her enigma draws him in, making him reflect on his own life and what truly matters. As they unravel each other’s truths, love takes center stage in a story of redemption and transformation. 💑🎭💫', 0, 'YouTube', 'https://youtu.be/rzR3KkzKwCY?si=jJN2ZFJz2afzdeqa', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e3_whispers_of_her_world_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'S1 E4 Double Hearts', 's1_e4_double_hearts_thumb.png', 16, 22, 'YouTube', 'https://youtu.be/l3P2vrcKiXs?si=PG6Yj6Bff7KrDaeB', 'paid', 1, '6', 'TV-MA (Mature Audiences)', '04:15', '2024-07-17', 0, 'A charming celebrity journalist known for his carefree lifestyle is swept off his feet by a mysterious model. As he uncovers her secret double life, he begins to question his own choices, discovering that love may be more than just a fleeting moment. ✨💑', '“Double Hearts” tells the story of a celebrity journalist with a reputation for being a womanizer. His life takes an unexpected turn when he falls for a captivating model, only to learn she leads a double life filled with secrets. As their relationship deepens, he finds himself reevaluating his past decisions and confronting his feelings in a way he never expected. In this romantic journey of self-discovery, love proves to be more complex than he ever imagined. 🌹✨💑', 0, 'YouTube', 'https://youtu.be/H6UjfiD1iZs?si=V092vd-AZko1XB3N', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:02', NULL, 's1_e4_double_hearts_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'S1 E1 Echoes of Guilt', 's1_e1_echoes_of_guilt_thumb.png', 17, 23, 'YouTube', 'https://youtu.be/O9i2vmFhSSY?si=YYmzH5_dw63-BeNU', 'paid', 1, '9', 'TV-MA (Mature Audiences)', '02:43', '2024-08-12', 0, 'Father James returns to Blackthorn Manor, where the memories of the tragic suicide resurface, and the first eerie signs of paranormal activity begin to haunt him. 👻⛪', 'In the series opener, \"Echoes of Guilt,\" Father James is drawn back to Blackthorn Manor after months of avoiding it. The dilapidated mansion brings back painful memories of the young girl he failed to save. As night falls, unsettling occurrences begin to unfold—whispers in the dark, shadowy figures, and chilling cold spots. James questions whether he’s losing his mind or if the spirits of the girl and her stepfather are indeed lurking in the shadows. The tension builds as he starts to sense a supernatural presence watching him, setting the stage for the terror that’s about to be unleashed. 👻🏚️🩸', 0, 'YouTube', 'https://youtu.be/HvZKVGFVT5A?si=vAazBlRh1t_rhCK0', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:02', '2025-11-20 07:05:03', NULL, 's1_e1_echoes_of_guilt_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'S1 E2 The Stepfather’s Revenge', 's1_e2_the_stepfathers_revenge_thumb.png', 17, 23, 'YouTube', 'https://youtu.be/hJo91wpGrz8?si=uVKgkkeEcNQjnp1r', 'paid', 1, '4', 'TV-MA (Mature Audiences)', '03:08', '2024-08-19', 0, 'As the night deepens, Father James encounters the vengeful spirit of the stepfather, who begins to reveal dark secrets about the girl’s death and demands justice. 💀⚰️', 'In \"The Stepfather’s Revenge,\" Father James is confronted by the spirit of the girl’s violent stepfather, who accuses him of being complicit in her death. The ghostly figure torments James with cryptic messages, unsettling visions, and violent outbursts. The priest must piece together the sinister truth about the stepfather’s role in the tragedy, all while enduring terrifying hauntings that blur the line between reality and the supernatural. As the horrors escalate, James starts to unravel emotionally, grappling with his responsibility and the malevolent forces that now surround him. 🕯️💀👻', 0, 'YouTube', 'https://youtu.be/jwErAY9QjMA?si=WE3i0QOSQ7BBfe5b', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e2_the_stepfathers_revenge_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'S1 E3 Night of the Damned', 's1_e3_night_of_the_damned_thumb.png', 17, 23, 'YouTube', 'https://youtu.be/rZQQbtK8wHk?si=EzoFuBhf2hR7LDcG', 'paid', 1, '7', 'TV-MA (Mature Audiences)', '03:20', '2024-08-26', 0, 'Father James faces the full wrath of the spirits in a climactic battle for his life and soul, as the mansion reveals its final horrifying secrets. 🔥🩸', 'In \"Night of the Damned,\" Father James’ ordeal reaches its terrifying peak. The spirits of the girl and her stepfather become increasingly violent, unleashing supernatural chaos that threatens to consume the priest. As James fights to survive, the truth about what really happened in Blackthorn Manor is revealed in a shocking twist. The priest is forced to confront not only the spirits but his own guilt, as the lines between redemption and damnation blur. With the dawn fast approaching, James must find a way to escape the haunted mansion—or be trapped there forever. 💀🏚️🔥', 0, 'YouTube', 'https://youtu.be/nujakIrBDCU?si=cXGG42k3lquWC2It', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e3_night_of_the_damned_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'S1 E1 The Blackness Project', 's1_e1_the_blackness_project_thumb.png', 18, 24, 'YouTube', 'https://youtu.be/pCMHc-IFAB0?si=vIVQzT73CoPjbEio', 'free', NULL, '9', 'TV-MA (Mature Audiences)', '06:45', '2024-09-05', 0, 'The main character starts his journey to reconnect with his African American roots, but his well-meaning white best friend’s ideas about culture lead to hilarious missteps. 🏫🎭', 'In \"The Blackness Project,\" the main character embarks on his quest to understand his African American heritage, starting with simple research into his cultural roots. His white best friend eagerly offers advice, but their attempts to engage with black culture lead to a series of funny and awkward encounters. From cultural festivals to botched conversations, their journey quickly turns into a comedic exploration of identity, misunderstandings, and unexpected revelations. Amidst the laughter, both friends begin to realize that finding one\'s cultural roots is far more complex—and amusing—than they ever imagined. 🌍🎉', 0, 'YouTube', 'https://youtu.be/DJ0_rhsljpc?si=6KwFhULBBgZ0mKEG', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e1_the_blackness_project_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'S1 E2 Roots and Revelations', 's1_e2_roots_and_revelations_thumb.png', 18, 24, 'YouTube', 'https://youtu.be/eazggD_i7T0?si=6Gm4KeZo4sO2kP8b', 'free', NULL, '5', 'TV-MA (Mature Audiences)', '03:10', '2024-09-12', 0, 'The families finally meet, leading to a clash of perspectives as the main character’s white liberal family and African American relatives attempt to connect, creating comedic tensions. 👪🎭', 'The main character’s worlds collide as his white adoptive family and African American relatives come together for the first time. What starts as a well-intentioned family gathering quickly spirals into chaos as differing viewpoints, cultural misunderstandings, and personal quirks lead to a series of comical mishaps. From awkward cultural references to unintentional faux pas, both families struggle to connect, making the main character question his place within both. The episode is a laugh-out-loud exploration of what happens when two families, with vastly different cultural backgrounds, attempt to come together under one roof. 🎉👫', 0, 'YouTube', 'https://youtu.be/gchPb1y3iMM?si=M1NGoZ7pbFDNTgK3', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e2_roots_and_revelations_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'S1 E3 Family Fusion Frenzy', 's1_e3_family_fusion_frenzy_thumb.png', 18, 24, 'YouTube', 'https://youtu.be/7lSzGK5HR1M?si=ltOK7kx6m3IIWv2b', 'free', NULL, '6', 'TV-MA (Mature Audiences)', '04:15', '2024-09-19', 0, 'In this episode, the best friends take on an ambitious cultural project that goes hilariously wrong, bringing both families into the mix for a chaotic but heartwarming conclusion. 💥😂', 'The main character and his best friend decide to create a cultural project aimed at bringing both their families together. However, things quickly go awry as their overly ambitious ideas result in humorous disasters. From a mishandled food fusion experiment to a poorly planned family talent show, the duo\'s well-meaning efforts only heighten the chaos. The episode brings all the characters together in a whirlwind of laughter, with each family member’s quirks adding to the madness. By the end of the episode, amidst the chaos and confusion, the families share a moment of understanding and connection, realizing that despite their differences, they can laugh—and learn—together. 🎭👪', 0, 'YouTube', 'https://youtu.be/qcP2BpG4Ido?si=egp_pGrIpPMi51kH', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e3_family_fusion_frenzy_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'S1 E1 Haunted Harmony and Sleepwalking Antics', 's1_e1_haunted_harmony_and_sleepwalking_antics_thumb.png', 19, 25, 'YouTube', 'https://youtu.be/2X7G6p-oNG8?si=Y2MRnmG1oRRQI0yV', 'free', NULL, '2', 'TV-MA (Mature Audiences)', '02:50', '2024-09-26', 0, 'When a group of friends unintentionally awakens an ancient evil, eerie harmonies and bizarre sleepwalking incidents begin to plague their lives. As the horrors intensify, the group struggles to grasp the full extent of the terror they’ve unleashed. 👻🎶', 'The group of young adults stumbles upon the cursed Necronomicon while exploring an old, abandoned mansion. Their discovery unknowingly awakens ancient, flesh-hungry demons that begin to haunt their lives in strange and terrifying ways. What starts as harmless sleepwalking and strange harmonies soon escalates into supernatural chaos. As each member of the group experiences bizarre incidents, they realize something far more sinister is lurking in the shadows. The once-peaceful atmosphere of their lives turns into a horrifying nightmare as they confront the first signs of the demonic presence they’ve unleashed. 😨📖🎵', 0, 'YouTube', 'https://youtu.be/CasA8WERLo8?si=B16VsXQTnRwn2vcc', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e1_haunted_harmony_and_sleepwalking_antics_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'S1 E2 Ghostly Giggles and Sleepwalking Shenanigans', 's1_e2_ghostly_giggles_and_sleepwalking_shenanigans_thumb.png', 19, 25, 'YouTube', 'https://youtu.be/smTK_AeAPHs?si=_DHZCV-kD4mjwIKd', 'free', NULL, '6', 'TV-MA (Mature Audiences)', '03:20', '2024-10-01', 0, 'A seemingly harmless sleepwalking incident spirals into chaos as the awakened demons begin to manipulate the group’s every move, using ghostly tricks to break their spirits. 🎭👹', 'After the strange events of the previous episode, the group is further tormented by sleepwalking pranks and eerie ghostly laughter that echo throughout their surroundings. The demons, now unleashed, toy with the group’s fears and insecurities, slowly breaking their mental resolve. As the sleepwalking escalates into dangerous actions, the group begins to lose control, realizing that the demonic forces are manipulating them from within. Every corner they turn, they are met with chilling laughter and ghostly pranks that remind them of the horrifying evil they’ve awakened. As the group struggles to maintain their sanity, their bond begins to crack under the relentless pressure. 👻🎶😱', 0, 'YouTube', 'https://youtu.be/FZAafmCPSjs?si=9G_CjrZlb3vwFPTC', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e2_ghostly_giggles_and_sleepwalking_shenanigans_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'S1 E3 Sleepwalker Shenanigans and Ghostly Giggles', 's1_e3_sleepwalker_shenanigans_and_ghostly_giggles_thumb.png', 19, 25, 'YouTube', 'https://youtu.be/Jxq13WJxLDY?si=AjKX1zULDPQ-Lqiw', 'free', NULL, '1', 'TV-MA (Mature Audiences)', '03:28', '2024-10-05', 0, 'The demonic forces step up their game, using nightmarish sleepwalking to pit the group against each other in a series of terrifying and deadly pranks. 👻🕵️‍♂️', 'The group is plunged deeper into chaos as the demons grow stronger, amplifying their control over the friends\' subconscious minds. Sleepwalking becomes a terrifying tool used by the demons to turn the group against one another. With every prank, the lines between reality and the supernatural blur, causing mistrust and paranoia to fester. The group’s attempts to break the demonic curse are foiled by increasingly dangerous antics orchestrated by the demons, who delight in their suffering. As friendships begin to fracture, the group is pushed to its limits, realizing that they are no longer just fighting supernatural forces—they are fighting for their lives. 👹🎭🔪', 0, 'YouTube', 'https://youtu.be/SX1LiKN4ZcQ?si=6uJZt7OGt6EUzHD_', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e3_sleepwalker_shenanigans_and_ghostly_giggles_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'S1 E4 Haunting Beneath the Luck', 's1_e4_haunting_beneath_the_luck_thumb.png', 19, 25, 'YouTube', 'https://youtu.be/bhYh4_FWxNo?si=UGh5bJqr6gta9Nhb', 'free', NULL, '2', 'TV-MA (Mature Audiences)', '02:43', '2024-10-15', 0, 'A string of unexpected fortune hides a sinister secret as the group uncovers the dark truth behind the curse, forcing them to confront the demons head-on. 🕵️‍♀️👻', 'In this chilling episode, the group experiences a bizarre twist in their fortunes—everything seems to suddenly go their way, but beneath the surface lies a terrifying truth. The demonic forces, now fully unleashed, offer the group moments of false hope, lulling them into a sense of security. However, this “luck” is nothing more than a twisted game. As they delve deeper into the mystery, the group uncovers the haunting connection between their newfound luck and the vengeful spirits they’ve awakened. With time running out and the true nature of the curse revealed, the group must face the horrifying reality of the demons’ endgame. What started as a seemingly harmless discovery has turned into a fight for their souls. 😨🍀👹', 0, 'YouTube', 'https://youtu.be/gmO2_FcfhgY?si=eu8bv_GcLKxlkXrs', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e4_haunting_beneath_the_luck_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'S1 E1 Crimson Divide', 's1_e1_crimson_divide_thumb.png', 20, 26, 'YouTube', 'https://youtu.be/HO4uLABrIuc?si=_JUkCi82TFa6KaVT', 'free', NULL, '6', 'TV-MA (Mature Audiences)', '02:50', '2024-10-16', 0, 'The reunion starts with joy, but eerie signs in the wilderness begin to unsettle the group, hinting at something sinister watching them from the shadows. 😨🌲', 'The four friends—Esme, Hannah, Ben, and Shan—arrive at the remote cabin for their long-awaited reunion. At first, everything seems perfect: laughter, memories, and the beauty of the wilderness. However, subtle signs of danger emerge as strange noises, shadows in the forest, and unsettling feelings creep in. What starts as a fun getaway quickly turns into a night filled with dread. Tensions rise as the group senses that something is wrong, setting the stage for the escalating horror to come. 🌑👀', 0, 'YouTube', 'https://youtu.be/AmpLWp_9YtU?si=CfCfsRUnffhTZSgL', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e1_crimson_divide_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'S1 E2 Torn Horizons', 's1_e2_torn_horizons_thumb.png', 20, 26, 'YouTube', 'https://youtu.be/pAxGJfEYuJI?si=usPEgPrVvANZVl8F', 'free', NULL, '3', 'TV-MA (Mature Audiences)', '03:20', '2024-10-17', 0, 'As the group struggles to make sense of the strange occurrences, secrets from their pasts begin to surface, tearing them apart emotionally while the threat outside intensifies. 💥🌳', 'In Torn Horizons, the group’s unity is tested as old wounds reopen, revealing the complicated history between the friends. Meanwhile, the eerie happenings grow more aggressive, with cryptic messages and terrifying encounters in the woods. Esme and Hannah find themselves at odds as they face their unresolved issues, while Ben and Shan uncover a clue that suggests they may not be the first visitors to fall victim to the mysterious force in the wilderness. The physical and emotional divide between them widens as they race to survive, leading to explosive confrontations and deepening suspense. 🔥🕵️‍♀️', 0, 'YouTube', 'https://youtu.be/h-Y77SQeMD4?si=OMij7ddBHRDtKwgz', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e2_torn_horizons_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'S1 E3 Fading Light', 's1_e3_fading_light_thumb.png', 20, 26, 'YouTube', 'https://youtu.be/FXOtkvx25gI?si=iD3LrO0BIQv7Fz4d', 'free', NULL, '7', 'TV-MA (Mature Audiences)', '03:28', '2024-10-18', 0, 'With nightfall approaching and the danger closing in, the group’s hope dwindles. Desperation takes hold as they struggle to find a way out of the woods. 🌒⚔️', 'As night falls in Fading Light, the group’s fear intensifies, and they realize that their chances of survival are growing slimmer. With their escape route cut off and the presence in the woods becoming more menacing, Esme and her friends face their darkest hour. They begin to understand that they are not just being hunted but manipulated by an unseen force. As paranoia grows, the friends turn on each other, unsure of who they can trust. The chilling atmosphere of the episode creates a sense of inescapable dread, as the group struggles to find light—both literal and metaphorical—in the enveloping darkness. 🕯️🌘', 0, 'YouTube', 'https://youtu.be/nujakIrBDCU?si=cXGG42k3lquWC2It', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e3_fading_light_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'S1 E4 Silent Betrayal', 's1_e4_silent_betrayal_thumb.png', 12, 1, 'YouTube', 'https://youtu.be/7EzpvriIQ3I?si=32wWLtYpLoOf7QuP', 'free', NULL, '8', 'TV-MA (Mature Audiences)', '02:43', '2024-10-19', 0, 'A shocking betrayal comes to light, fracturing the group as they face the ultimate confrontation with the malevolent force in the woods. 😱💔', 'In the intense finale, Silent Betrayal, the group’s fragile trust is shattered when a long-buried secret is revealed. This revelation causes chaos among the friends, just as they are forced to confront the malevolent entity that has been haunting them. Esme takes charge as they prepare for the final showdown, but the betrayal weighs heavily on her. With their friendship in tatters, the group must decide whether to stand together or let the darkness consume them. As the true nature of the evil in the woods is unveiled, they face a deadly choice: fight for their lives or fall prey to the horrors lurking in the shadows. 🔪🌲', 0, 'YouTube', 'https://youtu.be/BrDKY3RRg-g?si=SJgkbOqPdgCZCCOs', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 's1_e4_silent_betrayal_thumb.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `episode_download_mapping`
--

CREATE TABLE `episode_download_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `episode_id` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `quality` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episode_stream_content_mapping`
--

CREATE TABLE `episode_stream_content_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `episode_id` bigint(20) UNSIGNED NOT NULL,
  `quality` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) NOT NULL,
  `answer` longtext NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1. What is Streamit Laravel?', 'Streamit Laravel is a cutting-edge streaming platform developed by Iqonic Design that allows users to watch movies, TV shows, and live content seamlessly. It provides a feature-rich experience with personalized recommendations, multiple subscription plans, and high-quality streaming.', 1, 2, 2, NULL, '2024-09-28 01:13:30', '2024-09-28 01:13:30', NULL),
(2, '2. How can I create an account on Streamit Laravel?', 'To create an account, simply click on the \"Sign Up\" button on the homepage, enter your details, and follow the on-screen instructions. Once registered, you can start exploring our extensive content library.', 1, 2, 2, NULL, '2024-09-28 01:14:16', '2024-09-28 01:14:16', NULL),
(3, '3. What subscription plans are available?', 'We offer multiple subscription plans tailored to your needs:\n- Basic Plan: Weekly subscription.\n- Premium Plan: Monthly subscription.\n- Ultimate Plan: Quarterly subscription.\n- Elite Plan: Yearly subscription.\nEach plan offers different features such as HD streaming, multi-device support, and download options. Visit our Subscription Plans page for more details.', 1, 2, 2, NULL, '2024-09-28 01:14:36', '2024-09-28 01:14:36', NULL),
(4, '4. What payment methods do you accept?', 'We accept a variety of payment gateways for your convenience:\n- Stripe\n- RazorPay\n- Paystack\n- PayPal\n- FlutterWave\nYou can choose your preferred method at checkout.', 1, 2, 2, NULL, '2024-09-28 01:14:57', '2024-09-28 01:14:57', NULL),
(5, '5. How can I manage my subscription?', 'To manage your subscription, log into your account, go to the \"Account Settings\" section, and select \"Subscription.\" From there, you can upgrade, downgrade, or cancel your plan at any time.', 1, 2, 2, NULL, '2024-09-28 01:15:14', '2024-09-28 01:15:14', NULL),
(6, '6. How can I add content to my watchlist?', 'While browsing movies or TV shows, simply click on the \"Add to Watchlist\" button. You can view your watchlist anytime under the \"My Watchlist\" section of your account dashboard.', 1, 2, 2, NULL, '2024-09-28 01:15:33', '2024-09-28 01:15:33', NULL),
(7, '7. Can I download content for offline viewing?', 'Yes, Streamit Laravel allows you to download selected content for offline viewing, depending on your subscription plan. This feature is available for both mobile and tablet devices.', 1, 2, 2, NULL, '2024-09-28 01:15:48', '2024-09-28 01:15:48', NULL),
(8, '8. Does Streamit Laravel support multiple devices?', 'Yes, you can stream on multiple devices based on your subscription plan. The higher the plan, the more devices you can use simultaneously.', 1, 2, 2, NULL, '2024-09-28 01:16:05', '2024-09-28 01:16:05', NULL),
(9, '9. How does the recommendation system work?', 'Our platform uses a smart recommendation engine that suggests content based on your viewing history and preferences. The more you watch, the better the recommendations get!', 1, 2, 2, NULL, '2024-09-28 01:16:21', '2024-09-28 01:16:21', NULL),
(10, '10. Is there a free trial available?', 'Yes, we offer a limited-time free trial for new users. During the trial, you can explore all the features of the platform and decide if you want to subscribe to a full plan.', 1, 2, 2, NULL, '2024-09-28 01:16:40', '2024-09-28 01:16:40', NULL),
(11, '11. How does the referral program work?', 'Our referral program rewards you for inviting friends to join Streamit Laravel. For each friend who subscribes using your referral link, you both receive a discount on your next billing cycle. Check the referral section in your account for more details!', 1, 2, 2, NULL, '2024-09-28 01:21:25', '2024-09-28 01:21:25', NULL),
(12, '12. What types of content are available on Streamit Laravel?', 'Streamit Laravel offers a diverse range of content, including movies, TV shows, documentaries, and live events across various genres. You\'ll find everything from action and comedy to horror and romance!', 1, 2, 2, NULL, '2024-09-28 01:21:47', '2024-09-28 01:21:47', NULL),
(13, '13. Can I change my subscription plan later?', 'Absolutely! You can change your subscription plan at any time through your account settings. Simply select a different plan, and your new billing will take effect at the end of your current billing cycle.', 1, 2, 2, NULL, '2024-09-28 01:22:05', '2024-09-28 01:22:05', NULL),
(14, '14. What should I do if I forget my password?', 'If you forget your password, click on the \"Forgot Password?\" link on the login page. Follow the instructions to reset your password via the email associated with your account.', 1, 2, 2, NULL, '2024-09-28 01:22:21', '2024-09-28 01:22:21', NULL),
(15, '15. Is there any age restriction for using Streamit Laravel?', 'Yes, users must be at least 13 years old to create an account. We recommend parental guidance for users under 18, as some content may not be suitable for younger viewers.', 1, 2, 2, NULL, '2024-09-28 01:22:38', '2024-09-28 01:22:38', NULL),
(16, '16. Can I share my account with family members?', 'Yes, depending on your subscription plan, you can share your account with family members. However, please note that simultaneous streaming may be limited based on your chosen plan.', 1, 2, 2, NULL, '2024-09-28 01:22:56', '2024-09-28 01:22:56', NULL),
(17, '17. How often is new content added to the platform?', 'We regularly update our library with new content! You can expect new movies, TV shows, and episodes added every week, so there\'s always something fresh to watch.', 1, 2, 2, NULL, '2024-09-28 01:23:14', '2024-09-28 01:23:14', NULL),
(18, '18. Does Streamit Laravel offer subtitles or closed captions?', 'Yes, many of our titles offer subtitles and closed captions in various languages. You can enable them through the video player settings while watching content.', 1, 2, 2, NULL, '2024-09-28 01:24:30', '2024-09-28 01:24:30', NULL),
(19, '19. What should I do if I encounter a streaming issue?', 'If you experience buffering or streaming issues, first check your internet connection. If the problem persists, try clearing your cache or refreshing the page. If you continue to have issues, please contact our support team for assistance.', 1, 2, 2, NULL, '2024-09-28 01:24:44', '2024-09-28 01:24:44', NULL),
(20, '20. How do I use the parental controls on Streamit?', 'To use parental controls on Streamit, navigate to your account settings. Here, you can set age restrictions for various content types and block specific shows or movies. Additionally, you can create custom profiles for family members with tailored controls. For added security, consider setting a PIN or password.', 1, 2, 2, NULL, '2024-09-28 01:28:39', '2024-09-28 01:28:39', NULL),
(21, '21. How do I enable subtitles or closed captions?', 'To enable subtitles or closed captions while watching content on Streamit, look for the \"Subtitles\" or \"CC\" icon on the video player. Click on it, and you can choose your preferred language for subtitles. This feature enhances your viewing experience and accessibility.', 1, 2, 2, NULL, '2024-09-28 01:29:10', '2024-09-28 01:29:10', NULL),
(22, '22. How do I customize my Streamit homepage?', 'To customize your Streamit homepage, log into your account and navigate to the \"Settings\" section. From there, you can personalize your homepage by selecting your favorite genres, organizing your watchlist, and adjusting display preferences to see content that interests you most.', 1, 2, 2, NULL, '2024-09-28 01:29:36', '2024-09-28 01:29:36', NULL),
(23, '23. How do I download videos for offline viewing?', 'To download videos for offline viewing on Streamit, find the desired movie or show and look for the download icon. Click it, and the content will be saved to your device for offline access. Note that the ability to download may depend on your subscription plan.', 1, 2, 2, NULL, '2024-09-28 01:30:06', '2024-09-28 01:30:06', NULL),
(24, '24. Can I delete my account?', 'Yes, you can delete your account at any time. To do this, log into your account, navigate to the \"Account Settings\" section, and select \"Delete Account.\" Please note that this action is irreversible, and all your data will be permanently removed.', 1, 2, 2, NULL, '2024-09-28 01:30:40', '2024-09-28 01:30:40', NULL),
(25, '25. How can I contact customer support?', 'If you need assistance, you can reach our customer support team via email at hello@iqonic.design. We\'re here to help!', 1, 2, 2, NULL, '2024-09-28 01:30:53', '2024-09-28 01:32:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filemanagers`
--

CREATE TABLE `filemanagers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_url` varchar(191) NOT NULL DEFAULT '',
  `file_name` varchar(191) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filemanagers`
--

INSERT INTO `filemanagers` (`id`, `file_url`, `file_name`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'temp/gameofhero_portrait_6920444462dfe.jpg', 'gameofhero_portrait_6920444462dfe.jpg', 1, 1, NULL, '2025-11-21 05:21:48', '2025-11-21 05:21:48', NULL),
(2, 'temp/fast_furious_portrait_69204524a233d.jpg', 'fast_furious_portrait_69204524a233d.jpg', 1, 1, NULL, '2025-11-21 05:25:32', '2025-11-21 05:25:32', NULL),
(3, 'temp/minions_portrait_6920456690c4a.jpg', 'minions_portrait_6920456690c4a.jpg', 1, 1, NULL, '2025-11-21 05:26:38', '2025-11-21 05:26:38', NULL),
(11, 'temp/action_new_692719a0ba478.png', 'action_new_692719a0ba478.png', 1, 1, NULL, '2025-11-26 15:15:44', '2025-11-26 15:15:44', NULL),
(12, 'temp/action_69271aec58ff6.jpeg', 'action_69271aec58ff6.jpeg', 1, 1, NULL, '2025-11-26 15:21:16', '2025-11-26 15:21:16', NULL),
(13, 'temp/adventure_69271b6469fcd.jpeg', 'adventure_69271b6469fcd.jpeg', 1, 1, NULL, '2025-11-26 15:23:16', '2025-11-26 15:23:16', NULL),
(14, 'temp/crime_69271c4184183.jpeg', 'crime_69271c4184183.jpeg', 1, 1, NULL, '2025-11-26 15:26:57', '2025-11-26 15:26:57', NULL),
(15, 'temp/gameofhero_portrait_69271cfa92a63.jpg', 'gameofhero_portrait_69271cfa92a63.jpg', 1, 1, NULL, '2025-11-26 15:30:02', '2025-11-26 15:30:02', NULL),
(16, 'temp/fast_furious_portrait_69271d4edb21d.jpg', 'fast_furious_portrait_69271d4edb21d.jpg', 1, 1, NULL, '2025-11-26 15:31:26', '2025-11-26 15:31:26', NULL),
(17, 'temp/minions_portrait_69271d8c91463.jpg', 'minions_portrait_69271d8c91463.jpg', 1, 1, NULL, '2025-11-26 15:32:28', '2025-11-26 15:32:28', NULL),
(18, 'temp/kit_6927d7461e530.png', 'kit_6927d7461e530.png', 1, 1, NULL, '2025-11-27 04:44:54', '2025-11-27 04:44:54', NULL),
(19, 'temp/action_new_6927e13a2809c.jpeg', 'action_new_6927e13a2809c.jpeg', 1, 1, NULL, '2025-11-27 05:27:22', '2025-11-27 05:27:22', NULL),
(20, 'temp/horror_6927e6127b7d5.jpeg', 'horror_6927e6127b7d5.jpeg', 1, 1, NULL, '2025-11-27 05:48:02', '2025-11-27 05:48:02', NULL),
(21, 'temp/gameofhero_portrait_6927e693a5d7a.jpg', 'gameofhero_portrait_6927e693a5d7a.jpg', 1, 1, NULL, '2025-11-27 05:50:11', '2025-11-27 05:50:11', NULL),
(22, 'temp/fast_furious_portrait_6927e6b5e9875.jpg', 'fast_furious_portrait_6927e6b5e9875.jpg', 1, 1, NULL, '2025-11-27 05:50:45', '2025-11-27 05:50:45', NULL),
(23, 'temp/minions_portrait_6927e6da50fe0.jpg', 'minions_portrait_6927e6da50fe0.jpg', 1, 1, NULL, '2025-11-27 05:51:22', '2025-11-27 05:51:22', NULL),
(24, 'temp/mystery_6927e81998c65.jpeg', 'mystery_6927e81998c65.jpeg', 1, 1, NULL, '2025-11-27 05:56:41', '2025-11-27 05:56:41', NULL),
(25, 'temp/00movie192183215775429881577a1ad6512311c4c54a24ade6841caf1e8_69282bbbd700e.jpg', '00movie192183215775429881577a1ad6512311c4c54a24ade6841caf1e8_69282bbbd700e.jpg', 1, 1, NULL, '2025-11-27 10:45:15', '2025-11-27 10:45:15', NULL),
(26, 'temp/1920x77066af350882a94592bfac2c1ee2ad9b35c0d6f8b961ed443c802c249dbef2e290_69282c1184511.jpg', '1920x77066af350882a94592bfac2c1ee2ad9b35c0d6f8b961ed443c802c249dbef2e290_69282c1184511.jpg', 1, 1, NULL, '2025-11-27 10:46:41', '2025-11-27 10:46:41', NULL),
(27, 'temp/1920x77070e4a9ce8eb841aaa7961e003b9fb9c8233d3aa31157440d81f86388c09b68e5_69282c5d0a6e8.jpg', '1920x77070e4a9ce8eb841aaa7961e003b9fb9c8233d3aa31157440d81f86388c09b68e5_69282c5d0a6e8.jpg', 1, 1, NULL, '2025-11-27 10:47:57', '2025-11-27 10:47:57', NULL),
(28, 'temp/1920x7700864fedcdbcc408c90af2686914aa2bf44f1a21adee44c44845b2c7eee271892_692830d03a765.jpg', '1920x7700864fedcdbcc408c90af2686914aa2bf44f1a21adee44c44845b2c7eee271892_692830d03a765.jpg', 1, 1, NULL, '2025-11-27 11:06:56', '2025-11-27 11:06:56', NULL),
(29, 'temp/1920x7702462de77f2a947f1ba668bc9ca226736978a7f129ab74465b3ee624f2baac5bd8e41064f78934fc5989e291351b433f5_6928314e8ca32.jpg', '1920x7702462de77f2a947f1ba668bc9ca226736978a7f129ab74465b3ee624f2baac5bd8e41064f78934fc5989e291351b433f5_6928314e8ca32.jpg', 1, 1, NULL, '2025-11-27 11:09:02', '2025-11-27 11:09:02', NULL),
(30, 'temp/1920x7706851981f79344cbe8b66856219924863689004e768d1489289626fb9be4a81f2_6928318bb5ee7.jpg', '1920x7706851981f79344cbe8b66856219924863689004e768d1489289626fb9be4a81f2_6928318bb5ee7.jpg', 1, 1, NULL, '2025-11-27 11:10:03', '2025-11-27 11:10:03', NULL),
(31, 'temp/Container_1_69283235715cd.jpg', 'Container_1_69283235715cd.jpg', 1, 1, NULL, '2025-11-27 11:12:53', '2025-11-27 11:12:53', NULL),
(32, 'temp/Container_2_6928329e0701b.jpg', 'Container_2_6928329e0701b.jpg', 1, 1, NULL, '2025-11-27 11:14:38', '2025-11-27 11:14:38', NULL),
(33, 'temp/Container_3_692832eb1332c.jpg', 'Container_3_692832eb1332c.jpg', 1, 1, NULL, '2025-11-27 11:15:55', '2025-11-27 11:15:55', NULL),
(34, 'temp/download_(1)_69283363cd900.jpeg', 'download_(1)_69283363cd900.jpeg', 1, 1, NULL, '2025-11-27 11:17:55', '2025-11-27 11:17:55', NULL),
(36, 'temp/download_(2)_6928339a461b3.jpeg', 'download_(2)_6928339a461b3.jpeg', 1, 1, NULL, '2025-11-27 11:18:50', '2025-11-27 11:18:50', NULL),
(37, 'temp/download_(3)_6928368d293bf.jpeg', 'download_(3)_6928368d293bf.jpeg', 1, 1, NULL, '2025-11-27 11:31:25', '2025-11-27 11:31:25', NULL),
(38, 'temp/download_(4)_692836febc7ed.jpeg', 'download_(4)_692836febc7ed.jpeg', 1, 1, NULL, '2025-11-27 11:33:18', '2025-11-27 11:33:18', NULL),
(39, 'temp/download_69283733e6788.jpeg', 'download_69283733e6788.jpeg', 1, 1, NULL, '2025-11-27 11:34:11', '2025-11-27 11:34:11', NULL),
(40, 'temp/images_69283770b4a64.jpeg', 'images_69283770b4a64.jpeg', 1, 1, NULL, '2025-11-27 11:35:12', '2025-11-27 11:35:12', NULL),
(41, 'temp/1920x7700a2ca372b1834c769d68a339fd512bf0b0c4da09bf6c4370a92f3e327d64bbe6_692837bb9d984.jpg', '1920x7700a2ca372b1834c769d68a339fd512bf0b0c4da09bf6c4370a92f3e327d64bbe6_692837bb9d984.jpg', 1, 1, NULL, '2025-11-27 11:36:27', '2025-11-27 11:36:27', NULL),
(42, 'temp/1920x7703ce516e3ec12450a9c1f32f8ac169d60_692837f149d63.jpg', '1920x7703ce516e3ec12450a9c1f32f8ac169d60_692837f149d63.jpg', 1, 1, NULL, '2025-11-27 11:37:21', '2025-11-27 11:37:21', NULL),
(43, 'temp/Container_1_692838be554e5.jpg', 'Container_1_692838be554e5.jpg', 1, 1, NULL, '2025-11-27 11:40:46', '2025-11-27 11:40:46', NULL),
(44, 'temp/download_(1)_69283b52840b2.jpeg', 'download_(1)_69283b52840b2.jpeg', 1, 1, NULL, '2025-11-27 11:51:46', '2025-11-27 11:51:46', NULL),
(45, 'temp/download_(2)_69283b82d3859.jpeg', 'download_(2)_69283b82d3859.jpeg', 1, 1, NULL, '2025-11-27 11:52:34', '2025-11-27 11:52:34', NULL),
(46, 'temp/download_(6)_69283bb3dba6b.jpeg', 'download_(6)_69283bb3dba6b.jpeg', 1, 1, NULL, '2025-11-27 11:53:23', '2025-11-27 11:53:23', NULL),
(47, 'temp/download_69283be7124bf.jpeg', 'download_69283be7124bf.jpeg', 1, 1, NULL, '2025-11-27 11:54:15', '2025-11-27 11:54:15', NULL),
(48, 'temp/images_(1)_69283c312dd3d.jpeg', 'images_(1)_69283c312dd3d.jpeg', 1, 1, NULL, '2025-11-27 11:55:29', '2025-11-27 11:55:29', NULL),
(50, 'temp/images_69283c6ae147e.jpeg', 'images_69283c6ae147e.jpeg', 1, 1, NULL, '2025-11-27 11:56:26', '2025-11-27 11:56:26', NULL),
(51, 'temp/Rectangle_4873_69283ce704e8b.jpg', 'Rectangle_4873_69283ce704e8b.jpg', 1, 1, NULL, '2025-11-27 11:58:31', '2025-11-27 11:58:31', NULL),
(52, 'temp/Rectangle_4874_69283d0d2d025.jpg', 'Rectangle_4874_69283d0d2d025.jpg', 1, 1, NULL, '2025-11-27 11:59:09', '2025-11-27 11:59:09', NULL),
(53, 'temp/Rectangle_4875_69283d39316a8.jpg', 'Rectangle_4875_69283d39316a8.jpg', 1, 1, NULL, '2025-11-27 11:59:53', '2025-11-27 11:59:53', NULL),
(54, 'temp/Rectangle_4877_69283d58a18fa.jpg', 'Rectangle_4877_69283d58a18fa.jpg', 1, 1, NULL, '2025-11-27 12:00:24', '2025-11-27 12:00:24', NULL),
(55, 'temp/Rectangle_4879_69283d7fba76b.jpg', 'Rectangle_4879_69283d7fba76b.jpg', 1, 1, NULL, '2025-11-27 12:01:03', '2025-11-27 12:01:03', NULL),
(56, 'temp/Rectangle_4876_69283e008a33e.jpg', 'Rectangle_4876_69283e008a33e.jpg', 1, 1, NULL, '2025-11-27 12:03:12', '2025-11-27 12:03:12', NULL),
(57, 'temp/Rectangle_4878_69283e2318c1d.jpg', 'Rectangle_4878_69283e2318c1d.jpg', 1, 1, NULL, '2025-11-27 12:03:47', '2025-11-27 12:03:47', NULL),
(58, 'temp/Rectangle_4880_69283e4815e65.jpg', 'Rectangle_4880_69283e4815e65.jpg', 1, 1, NULL, '2025-11-27 12:04:24', '2025-11-27 12:04:24', NULL),
(60, 'temp/Rectangle_4881_69283e8f02c6f.jpg', 'Rectangle_4881_69283e8f02c6f.jpg', 1, 1, NULL, '2025-11-27 12:05:35', '2025-11-27 12:05:35', NULL),
(61, 'temp/Rectangle_4882_69283eb8db167.jpg', 'Rectangle_4882_69283eb8db167.jpg', 1, 1, NULL, '2025-11-27 12:06:16', '2025-11-27 12:06:16', NULL),
(62, 'temp/Container_69283f640515b.jpg', 'Container_69283f640515b.jpg', 1, 1, NULL, '2025-11-27 12:09:08', '2025-11-27 12:09:08', NULL),
(63, 'temp/Container_1_69283fadaece2.jpg', 'Container_1_69283fadaece2.jpg', 1, 1, NULL, '2025-11-27 12:10:21', '2025-11-27 12:10:21', NULL),
(64, 'temp/Container_2_69283fe00c7c6.jpg', 'Container_2_69283fe00c7c6.jpg', 1, 1, NULL, '2025-11-27 12:11:12', '2025-11-27 12:11:12', NULL),
(65, 'temp/Container_3_6928400caf54f.jpg', 'Container_3_6928400caf54f.jpg', 1, 1, NULL, '2025-11-27 12:11:56', '2025-11-27 12:11:56', NULL),
(66, 'temp/Container_692840a51fb36.jpg', 'Container_692840a51fb36.jpg', 1, 1, NULL, '2025-11-27 12:14:29', '2025-11-27 12:14:29', NULL),
(67, 'temp/Container_1_692840c90dac5.jpg', 'Container_1_692840c90dac5.jpg', 1, 1, NULL, '2025-11-27 12:15:05', '2025-11-27 12:15:05', NULL),
(68, 'temp/Container_2_692840f700425.jpg', 'Container_2_692840f700425.jpg', 1, 1, NULL, '2025-11-27 12:15:51', '2025-11-27 12:15:51', NULL),
(69, 'temp/Container_3_6928411f80baf.jpg', 'Container_3_6928411f80baf.jpg', 1, 1, NULL, '2025-11-27 12:16:31', '2025-11-27 12:16:31', NULL),
(70, 'temp/Container_4_6928414610f5b.jpg', 'Container_4_6928414610f5b.jpg', 1, 1, NULL, '2025-11-27 12:17:10', '2025-11-27 12:17:10', NULL),
(71, 'temp/Gradient_692841747c93b.jpg', 'Gradient_692841747c93b.jpg', 1, 1, NULL, '2025-11-27 12:17:56', '2025-11-27 12:17:56', NULL),
(72, 'temp/Container_692842429123f.jpg', 'Container_692842429123f.jpg', 1, 1, NULL, '2025-11-27 12:21:22', '2025-11-27 12:21:22', NULL),
(73, 'temp/Container_4_6928432875e01.jpg', 'Container_4_6928432875e01.jpg', 1, 1, NULL, '2025-11-27 12:25:12', '2025-11-27 12:25:12', NULL),
(74, 'temp/Container_5_6928435292e8c.jpg', 'Container_5_6928435292e8c.jpg', 1, 1, NULL, '2025-11-27 12:25:54', '2025-11-27 12:25:54', NULL),
(75, 'temp/download_(1)_692843e8bd707.jpeg', 'download_(1)_692843e8bd707.jpeg', 1, 1, NULL, '2025-11-27 12:28:24', '2025-11-27 12:28:24', NULL),
(76, 'temp/download_(2)_6928442e5a8bf.jpeg', 'download_(2)_6928442e5a8bf.jpeg', 1, 1, NULL, '2025-11-27 12:29:34', '2025-11-27 12:29:34', NULL),
(77, 'temp/download_(3)_69284451e0688.jpeg', 'download_(3)_69284451e0688.jpeg', 1, 1, NULL, '2025-11-27 12:30:09', '2025-11-27 12:30:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `file_url` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `slug`, `file_url`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Action', 'action', 'horror_6927e6127b7d5.jpeg', 'Action movies are packed with high-energy sequences, intense battles, and thrilling adventures. These films deliver non-stop excitement and adrenaline-pumping scenes that captivate audiences. 💥🏃‍♂️', 1, NULL, 1, NULL, '2025-11-20 07:04:46', '2025-11-27 05:48:48', NULL),
(2, 'Animation', 'animation', 'a_journey_of_triumph_thumb.png', 'Captivating animated stories that bring imaginative worlds and characters to life. These films use creative visuals and storytelling to enchant audiences of all ages. 🎨✨', 1, NULL, 1, NULL, '2025-11-20 07:04:46', '2025-11-27 05:48:36', NULL),
(3, 'Comedy', 'comedy', 'a_journey_of_triumph_poster.png', 'Light-hearted films designed to entertain and amuse with humor and wit. These movies offer a delightful escape filled with laughter and joy. 😂🎬', 1, NULL, 1, NULL, '2025-11-20 07:04:46', '2025-11-27 05:48:23', NULL),
(4, 'Historical', 'historical', 'action_new_6927e13a2809c.jpeg', 'Movies that delve into significant historical events, figures, and eras. They offer a glimpse into the past, bringing history to life with compelling narratives. 📜🏰', 1, NULL, 1, NULL, '2025-11-20 07:04:46', '2025-11-27 05:48:08', NULL),
(5, 'Horror', 'horror', 'horror_genre.png', 'Spine-chilling movies that evoke fear and suspense, often featuring supernatural elements. These films are designed to haunt and thrill viewers. 👻🕯️', 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(6, 'Inspirational', 'inspirational', 'inspirational_genre.png', 'Uplifting films that motivate and inspire with stories of courage, perseverance, and triumph. They often highlight the resilience of the human spirit. 🌟💪', 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(7, 'Romantic', 'romantic', 'romantic_genre.png', 'Heartwarming stories focusing on love, relationships, and the complexities of romance. These films explore the beauty and challenges of romantic connections. 💖🌹', 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL),
(8, 'Thriller', 'thriller', 'thriller_genre.png', 'High-stakes scenarios and intense suspense that keep you on the edge of your seat. Expect unexpected twists and heart-pounding moments. 🔪🎬', 1, NULL, NULL, NULL, '2025-11-20 07:04:46', '2025-11-20 07:04:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `installers`
--

CREATE TABLE `installers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_batches`
--

INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('a068dc2f-5ed4-47ad-a19c-61617220fa6b', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1763722312, 1763722316),
('a068dd81-2a1c-4753-b36b-0ee7ec191b1b', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1763722532, 1763722533),
('a068dde5-c3b7-402a-8405-3888b3f016cf', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1763722598, 1763722599),
('a073260b-050e-40c8-8b16-bd03518618a1', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764164199, 1764164199),
('a07328a2-e3ea-46ed-a589-f9fd46cb5287', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764164634, 1764164634),
('a073294b-2363-4cc3-a656-7f63c4ba2b62', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764164744, 1764164744),
('a0732c75-f3ff-480f-a2a2-c1a7c3850e63', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764165276, 1764165276),
('a07332e9-0bcd-4e89-a463-e2e01f933d57', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764166358, 1764166358),
('a0733392-bf1c-4adb-ad7a-96629fa6f41e', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764166469, 1764166469),
('a07334f5-cc4b-449d-bf4c-86116ac8ab75', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764166702, 1764166702),
('a073497a-f53c-4ace-b568-dd8f9e2d3784', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764170144, 1764170144),
('a0734b74-ebbd-46c0-aeb5-fda02c85ea75', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764170476, 1764170476),
('a0734c2c-21ce-4b9c-ac9b-d00ed5be71c8', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764170596, 1764170596),
('a0734d7d-83a2-4bb3-af9a-388dacff2ac9', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764170817, 1764170817),
('a0734e97-e4ab-410d-981e-9a71d54890ae', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764171002, 1764171002),
('a0734f18-8507-4570-aa03-b23830217607', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764171086, 1764171086),
('a0734f76-a97f-4cd9-8d20-9572ef45c85c', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764171148, 1764171148),
('a0746adb-6a50-421c-a0c3-80813ed84c13', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764218694, 1764218694),
('a0747a0b-6aa5-4434-ad9b-e1c8023c0856', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764221242, 1764221242),
('a0748170-02d6-454a-9c9b-6957638d4b42', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764222482, 1764222482),
('a0748235-18f8-4511-be42-4a2b05959c24', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764222611, 1764222611),
('a0748269-6673-4776-ac13-9d789e733df6', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764222645, 1764222645),
('a07482a0-e78e-4a54-b67d-50a31948bb74', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764222682, 1764222682),
('a0748488-1bc8-40a4-a598-2b17fc7c4e3c', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764223001, 1764223001),
('a074ebbb-995e-451b-9f15-1db0ddb7bb8a', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764240315, 1764240315),
('a074ec3e-462c-4c11-afc3-67f00169700f', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764240401, 1764240401),
('a074ecb1-7a84-4732-9eb0-2ffd26326507', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764240477, 1764240477),
('a074f37b-c125-4467-877f-1caa9272d218', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764241616, 1764241616),
('a074f43c-87bc-4d45-9e18-d9a5ef48b5c0', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764241742, 1764241742),
('a074f499-dec2-46e1-b09d-78493e70bba1', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764241803, 1764241803),
('a074f59c-d667-4793-b232-283cd9a75f64', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764241973, 1764241973),
('a074f63c-644e-4a93-9896-f0f759ec43f0', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764242078, 1764242078),
('a074f6b1-f5cf-44ef-9ab1-f0d513a4400b', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764242155, 1764242155),
('a074f76a-3ac0-41f1-8bf8-69b3be860f19', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764242275, 1764242275),
('a074f7bd-4e19-40c1-a53d-ec3b57453ab3', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764242330, 1764242330),
('a074f7bd-4e19-4f80-991f-0225102b7b1d', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764242330, 1764242330),
('a074fc3d-30e6-4576-84d4-48933e4f59bb', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764243085, 1764243085),
('a074fcea-823f-415a-9f14-9728eff45ea3', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764243198, 1764243198),
('a074fd3b-a452-406f-9f0e-b71be07f9347', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764243251, 1764243251),
('a074fd98-68fd-4a53-82b8-229e2340eaf0', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764243312, 1764243312),
('a074fe0a-b4eb-4732-bf97-720d588465b1', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764243387, 1764243387),
('a074fe5c-947a-45f5-9853-6ed83705c638', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764243441, 1764243441),
('a074ff95-751c-4b91-8884-93b062753a59', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764243646, 1764243646),
('a0750384-d473-4079-b7bd-b1201bf6a069', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244306, 1764244306),
('a07503ce-915a-4099-ba41-d223e3d0fc91', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244354, 1764244354),
('a0750419-6334-4ecb-b92e-0afd09c89c68', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244403, 1764244403),
('a0750467-7968-4c7a-add3-df5fcf73062a', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244455, 1764244455),
('a07504d8-8f9a-4b09-9769-ecb7d4eba96e', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244529, 1764244529),
('a07504d8-8fc5-4935-8f55-4c659c1e7e8a', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244529, 1764244529),
('a0750530-a852-455b-91dc-e5b4292911f0', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244586, 1764244586),
('a07505ee-0434-4aea-9337-456e89287477', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244711, 1764244711),
('a0750628-400f-45b4-9124-658e62d28cb7', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244749, 1764244749),
('a075066b-6a5b-4164-9380-4079019d7343', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244793, 1764244793),
('a075069b-6b4a-4544-b0b2-9dd03b7a0c1a', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244824, 1764244824),
('a07506d7-15f4-4fa8-9f4d-fcdc70d228c9', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244863, 1764244863),
('a075079b-9ef1-4180-858e-0edbe9ff8a30', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764244992, 1764244992),
('a07507d0-5125-4764-bcec-8d888e24e043', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245027, 1764245027),
('a0750808-c1cb-4a17-bdc7-c1eb2ada4cc9', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245064, 1764245064),
('a0750808-f7e7-4cdb-af9d-cf6e5791a117', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245064, 1764245064),
('a0750874-f9d6-4993-90a6-14f8dd5d578f', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245135, 1764245135),
('a07508b4-e327-46be-a73b-ba4d20024683', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245176, 1764245176),
('a07509ba-00dc-435f-a1bc-89a87ed1d667', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245348, 1764245348),
('a0750a2a-73a3-49c4-9186-ced11e452ff7', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245421, 1764245421),
('a0750a77-41ee-45f7-9e96-d3c14f4b2dfd', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245472, 1764245472),
('a0750abb-69c8-4266-8c30-a45ea3d253bb', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245516, 1764245516),
('a0750ba3-f9b8-4e35-8ea0-f25da59cebc5', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245669, 1764245669),
('a0750bda-cb69-46cb-b0c0-5c18842761b9', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245705, 1764245705),
('a0750c20-e6ab-4b63-915f-9394f20d3915', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245751, 1764245751),
('a0750c5e-bd34-47c8-ac9b-dda05ce2ab8d', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245791, 1764245791),
('a0750c99-8cde-4fb9-a865-9b91e3ee4972', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245830, 1764245830),
('a0750ce0-6a4a-4c82-ae1d-9d7afab0efac', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764245876, 1764245876),
('a0750e1a-df4a-4e34-aced-1e25a7f2d4b3', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764246082, 1764246082),
('a0750f79-a76e-4c1b-8017-7a7a4b363c43', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764246312, 1764246312),
('a0750fb9-ec3c-4d01-bd74-cdb99d9ba42b', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764246354, 1764246354),
('a075109f-11b9-44ba-ad48-d76cb16b66c4', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764246504, 1764246504),
('a0751109-4332-45f8-8df0-8dd749d25f8f', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764246574, 1764246574),
('a075113f-8137-49f7-a71b-292142659438', '', 1, 0, 0, '[]', 'a:0:{}', NULL, 1764246609, 1764246609);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `language` varchar(191) NOT NULL,
  `file` varchar(191) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_like` tinyint(1) NOT NULL DEFAULT 0,
  `profile_id` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `entertainment_id`, `user_id`, `is_like`, `profile_id`, `type`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 6, 1, 6, 'tvshow', 6, 6, NULL, '2024-09-25 09:53:07', '2024-09-25 09:53:07', NULL),
(2, 5, 6, 1, 6, 'tvshow', 6, 6, NULL, '2024-09-25 09:54:20', '2024-09-25 09:54:20', NULL),
(3, 10, 4, 1, 4, 'tvshow', 3, 3, NULL, '2024-09-25 09:54:27', '2024-09-25 09:54:27', NULL),
(4, 14, 4, 1, 4, 'tvshow', 3, 3, NULL, '2024-09-25 09:54:45', '2024-09-25 09:54:45', NULL),
(5, 94, 4, 1, 4, 'movie', 4, 4, NULL, '2024-09-25 09:56:42', '2024-09-25 09:56:42', NULL),
(6, 45, 10, 1, 10, 'movie', 3, 3, NULL, '2024-09-25 09:57:07', '2024-09-25 09:57:07', NULL),
(7, 90, 12, 1, 12, 'movie', 4, 4, NULL, '2024-09-25 09:57:19', '2024-09-25 09:57:19', NULL),
(8, 95, 12, 1, 12, 'movie', 6, 6, NULL, '2024-09-25 09:57:31', '2024-09-25 09:57:31', NULL),
(9, 95, 7, 1, 7, 'movie', 7, 7, NULL, '2024-09-25 09:59:34', '2024-09-25 09:59:34', NULL),
(10, 102, 7, 1, 7, 'movie', 7, 7, NULL, '2024-09-25 10:00:12', '2024-09-25 10:00:12', NULL),
(11, 101, 7, 1, 7, 'movie', 7, 7, NULL, '2024-09-25 10:00:24', '2024-09-25 10:00:24', NULL),
(12, 99, 7, 1, 7, 'video', 7, 7, NULL, '2024-09-25 10:00:29', '2024-09-25 10:00:29', NULL),
(13, 14, 7, 1, 7, 'video', 7, 7, NULL, '2024-09-25 10:00:46', '2024-09-25 10:00:46', NULL),
(14, 10, 8, 1, 8, 'video', 7, 7, NULL, '2024-09-25 10:00:53', '2024-09-25 10:00:53', NULL),
(15, 5, 9, 1, 9, 'video', 7, 7, NULL, '2024-09-25 10:01:02', '2024-09-25 10:01:02', NULL),
(16, 1, 14, 1, 14, 'tvshow', 7, 7, NULL, '2024-09-25 10:01:10', '2024-09-25 10:01:10', NULL),
(17, 1, 5, 1, 5, 'tvshow', 5, 5, NULL, '2024-09-25 10:02:25', '2024-09-25 10:02:25', NULL),
(18, 5, 5, 1, 5, 'tvshow', 5, 5, NULL, '2024-09-25 10:02:38', '2024-09-25 10:02:38', NULL),
(19, 89, 5, 1, 5, 'movie', 5, 5, NULL, '2024-09-25 10:02:43', '2024-09-25 10:02:43', NULL),
(20, 101, 5, 1, 5, 'move', 5, 5, NULL, '2024-09-25 10:02:49', '2024-09-25 10:02:49', NULL),
(21, 87, 5, 1, 5, 'movie', 5, 5, NULL, '2024-09-25 10:02:53', '2024-09-25 10:02:53', NULL),
(22, 102, 5, 1, 5, 'movie', 5, 5, NULL, '2024-09-25 10:02:57', '2024-09-25 10:02:57', NULL),
(23, 97, 5, 1, 5, 'movie', 5, 5, NULL, '2024-09-25 10:03:06', '2024-09-25 10:03:06', NULL),
(24, 98, 5, 1, 5, 'movie', 5, 5, NULL, '2024-09-25 10:03:13', '2024-09-25 10:03:13', NULL),
(25, 103, 5, 1, 5, 'movie', 5, 5, NULL, '2024-09-25 10:03:26', '2024-09-25 10:03:26', NULL),
(26, 100, 3, 1, 3, 'movie', 5, 5, NULL, '2024-09-25 10:03:26', '2024-09-25 10:03:26', NULL),
(27, 25, 3, 1, 3, 'movie', 5, 5, NULL, '2024-09-25 10:03:26', '2024-09-25 10:03:26', NULL),
(28, 16, 3, 1, 3, 'movie', 5, 5, NULL, '2024-09-25 10:03:26', '2024-09-25 10:03:26', NULL),
(29, 22, 1, 0, NULL, 'movie', 1, 1, NULL, '2025-11-27 10:49:12', '2025-11-27 10:49:42', NULL),
(30, 25, 1, 1, NULL, 'movie', 1, 1, NULL, '2025-11-27 10:53:34', '2025-11-27 10:53:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `livetvs`
--

CREATE TABLE `livetvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_category`
--

CREATE TABLE `live_tv_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `file_url` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_tv_category`
--

INSERT INTO `live_tv_category` (`id`, `name`, `file_url`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'News & Current Affairs', 'news_current_affairs.png', 'Stay informed with the latest updates from around the world. This category brings you live news broadcasts, in-depth analysis, and breaking news coverage. From politics to finance, and global events to local happenings, never miss a moment of what\'s happening. 📰🌍🕒', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(2, 'Sports & Action', 'sports_action.png', 'Catch all the live sports action from your favorite games and tournaments. Whether it\'s football, basketball, tennis, or any other sport, this category covers live matches, expert commentary, and thrilling highlights. Cheer for your teams and witness unforgettable moments. 🏆⚽🏀', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(3, 'Entertainment & Variety', 'entertainment_variety.png', 'Enjoy a diverse range of live entertainment shows, from reality TV and talent competitions to talk shows and award ceremonies. This category offers something for everyone, featuring your favorite stars and hosts bringing you laughter, drama, and excitement. 🎤🎬🎉', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(4, 'Music & Concerts', 'music_concerts.png', 'Experience live music like never before with concerts, festivals, and exclusive performances from top artists. This category brings the stage to your screen, allowing you to enjoy your favorite genres and discover new talents from the comfort of your home. 🎸🎤🎶', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(5, 'Educational & Documentary', 'educational_documentary.png', 'Expand your knowledge with live educational programs and documentaries covering a wide range of topics. From science and history to nature and technology, this category provides informative content that enlightens and inspires. Ideal for curious minds of all ages. 📚🔬🌿', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_channel`
--

CREATE TABLE `live_tv_channel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `poster_url` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `thumb_url` text DEFAULT NULL,
  `access` varchar(191) DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `poster_tv_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_tv_channel`
--

INSERT INTO `live_tv_channel` (`id`, `name`, `poster_url`, `category_id`, `thumb_url`, `access`, `plan_id`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`, `poster_tv_url`) VALUES
(1, 'Aaj Kal LIVE TV', 'aaj_kal_live_tv.png', 1, NULL, 'free', NULL, 'Stay informed with live news broadcasts and in-depth analysis on Aaj Kal LIVE TV. Never miss a moment of the latest updates from around the world.', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL, 'aaj_kal_live_tv.png'),
(2, 'ABP Sports', 'abp_sports.png', 2, NULL, 'paid', 1, 'Catch all the live sports action on ABP Sports, covering your favorite games and tournaments with expert commentary and thrilling highlights.', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL, 'abp_sports.png'),
(3, 'DN TV', 'dn_tv.png', 3, NULL, 'paid', 2, 'Enjoy a variety of entertainment shows on DN TV, featuring reality TV, talent competitions, talk shows, and award ceremonies.', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:06', NULL, 'dn_tv.png'),
(4, '9xm', '9xm.png', 4, NULL, 'paid', 3, 'Music & Concerts channel featuring live performances and more.', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, '9xm.png'),
(5, 'BBP', 'bbp.png', 5, NULL, 'paid', 4, 'Educational & Documentary channel with a wide range of informative content.', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'bbp.png'),
(6, 'M TV', 'm_tv.png', 4, NULL, 'free', NULL, 'Free Music & Concerts channel with live performances and more.', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'm_tv.png'),
(7, 'ZNews 24/7', 'znews_247.png', 1, NULL, 'free', NULL, 'Round-the-clock coverage of global news and current events to keep you informed all day. 🌍🕓', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'znews_247.png'),
(8, 'Sports Max', 'sports_max.png', 2, NULL, 'paid', 1, 'The ultimate channel for live sports events, from football to cricket, with non-stop action. 🏆📢', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'sports_max.png'),
(9, 'Vibe TV', 'vibe_tv.png', 3, NULL, 'paid', 2, 'The hottest variety of live entertainment, from reality shows to talk shows and much more. 🎭🔥', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'vibe_tv.png'),
(10, 'Beat Box', 'beat_box.png', 4, NULL, 'free', NULL, 'Feel the beat with live music performances, DJ sets, and non-stop tunes. 🎧🎵', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'beat_box.png'),
(11, 'Brain TV', 'brain_tv.png', 5, NULL, 'paid', 4, 'Dive into a world of learning with live educational shows and insightful documentaries. 🧠📺', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'brain_tv.png'),
(12, 'Khabar NOW', 'khabar_now.png', 1, NULL, 'paid', 2, 'Instant access to real-time news and headlines that matter most, bringing the world to your screen. 📰📢', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'khabar_now.png'),
(13, 'Goal TV', 'goal_tv.png', 2, NULL, 'free', NULL, 'Your destination for all things football, with live coverage of matches, interviews, and goals. ⚽🎥', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'goal_tv.png'),
(14, 'Star Bliss', 'star_bliss.png', 3, NULL, 'free', NULL, 'Bringing you a star-studded lineup of live entertainment, talk shows, and celebrity interviews. ⭐🎬', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'star_bliss.png'),
(15, 'Groove LIVE', 'groove_live.png', 4, NULL, 'free', NULL, 'Get into the groove with live music shows, concerts, and your favorite artists. 🎼🎸', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'groove_live.png'),
(16, 'Docu Vision', 'docu_vision.png', 5, NULL, 'paid', 4, 'Explore fascinating live documentaries on a range of topics, from history to science. 📚🎬', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'docu_vision.png'),
(17, 'Vision TV', 'vision_tv.png', 1, NULL, 'free', NULL, 'Sharp and focused news, providing clear insights into the events shaping the world today. 🔍📺', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'vision_tv.png'),
(18, 'Win Sports', 'win_sports.png', 2, NULL, 'paid', 1, 'Bringing the winning moments from the biggest sporting events, straight to your screen, live. 🎖️📺', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'win_sports.png'),
(19, 'Buzz LIVE', 'buzz_live.png', 3, NULL, 'free', NULL, 'All the buzzworthy content in one place, from live interviews to fun, energetic shows. 🎤⚡', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'buzz_live.png'),
(20, 'Tune IN', 'tune_in.png', 4, NULL, 'paid', 3, 'Stay tuned to the latest live music performances and the freshest beats from top artists. 🎙️📻', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'tune_in.png'),
(21, 'DiscoverX', 'discoverx.png', 5, NULL, 'paid', 4, 'Uncover the unknown with live explorations and educational content from around the globe. 🌍🔎', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'discoverx.png'),
(22, 'HeadlineX', 'headlinex.png', 1, NULL, 'free', NULL, 'Your go-to for breaking headlines and live updates, keeping you in the know. 🗞️🎯', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'headlinex.png'),
(23, 'Xtreme Sports', 'xtreme_sports.png', 2, NULL, 'paid', 2, 'Tune in for adrenaline-pumping sports events, from extreme sports to intense competition. 🏄‍♂️🔥', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'xtreme_sports.png'),
(24, 'Fun Box', 'fun_box.png', 3, NULL, 'free', NULL, 'A playful mix of live comedy, gameshows, and entertainment to keep you laughing. 🤣📺', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'fun_box.png'),
(25, 'Sound Wave', 'sound_wave.png', 4, NULL, 'paid', 2, 'Feel the pulse of live music as you experience concerts and performances from the world’s best artists. 🎤🌊', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'sound_wave.png'),
(26, 'Learn LIVE', 'learn_live.png', 5, NULL, 'paid', 4, 'Interactive educational programming, live lectures, and documentaries to spark your curiosity. 🎓📡', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'learn_live.png'),
(27, 'Live Line', 'live_line.png', 1, NULL, 'free', NULL, 'Breaking news, live updates, and in-depth analysis at the speed of live broadcast. 📡⚡', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'live_line.png'),
(28, 'Pro Play', 'pro_play.png', 2, NULL, 'paid', 3, 'Watch your favorite athletes and teams go head-to-head in thrilling live action. 🏅🎬', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'pro_play.png'),
(29, 'Show MAX', 'show_max.png', 3, NULL, 'paid', 2, 'Maximize your entertainment with live shows, contests, and endless variety! 🎭💫', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL, 'show_max.png'),
(30, 'RhythmX', 'rhythmx.png', 4, NULL, 'free', NULL, 'Tune in for live performances, chart-topping hits, and music from around the world. 🎶🎧', 1, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:07', NULL, 'rhythmx.png'),
(31, 'Insight TV', 'insight_tv.png', 5, NULL, 'free', NULL, 'Dive deep into thought-provoking live content that educates and inspires, from documentaries to expert talks. 📘🔍', 1, NULL, NULL, NULL, '2025-11-20 07:05:07', '2025-11-20 07:05:07', NULL, 'insight_tv.png');

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_stream_content_mapping`
--

CREATE TABLE `live_tv_stream_content_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tv_channel_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `stream_type` varchar(191) DEFAULT NULL,
  `embedded` longtext DEFAULT NULL,
  `server_url` text DEFAULT NULL,
  `server_url1` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_tv_stream_content_mapping`
--

INSERT INTO `live_tv_stream_content_mapping` (`id`, `tv_channel_id`, `type`, `stream_type`, `embedded`, `server_url`, `server_url1`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(2, 2, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(3, 3, 't_url', 'URL', NULL, 'https://abplivetv.akamaized.net/hls/live/2043010/hindi/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(4, 4, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(5, 5, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(6, 6, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(7, 7, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(8, 8, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(9, 9, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(10, 10, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(11, 11, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(12, 12, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(13, 13, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(14, 14, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(15, 15, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(16, 16, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(17, 17, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(18, 18, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(19, 19, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(20, 20, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(21, 21, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(22, 22, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(23, 23, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(24, 24, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(25, 25, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(26, 26, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(27, 27, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(28, 28, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(29, 29, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:06', '2025-11-20 07:05:06', NULL),
(30, 30, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:07', '2025-11-20 07:05:07', NULL),
(31, 31, 't_url', 'URL', NULL, 'https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8', NULL, NULL, NULL, NULL, '2025-11-20 07:05:07', '2025-11-20 07:05:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `mime_type` varchar(191) DEFAULT NULL,
  `disk` varchar(191) NOT NULL,
  `conversions_disk` varchar(191) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Filemanager\\Models\\Filemanager', 1, 'eb103ae8-ca73-4c41-a1fc-5384d61baedf', 'filemanager', 'med4234', 'gameofhero_portrait_6920444462dfe.jpg', 'image/jpeg', 'media', 'media', 112626, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-21 05:21:54', '2025-11-21 05:21:58'),
(2, 'Modules\\Filemanager\\Models\\Filemanager', 2, 'f6000bc5-6027-42d4-853e-6bfc6ac7792d', 'filemanager', 'med9876', 'fast_furious_portrait_69204524a233d.jpg', 'image/jpeg', 'media', 'media', 113902, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-21 05:25:32', '2025-11-21 05:25:33'),
(3, 'Modules\\Filemanager\\Models\\Filemanager', 3, '7d0bf7fa-14cf-435b-bd22-6aae6f8ef92f', 'filemanager', 'med99FB', 'minions_portrait_6920456690c4a.jpg', 'image/jpeg', 'media', 'media', 117499, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-21 05:26:38', '2025-11-21 05:26:39'),
(11, 'Modules\\Filemanager\\Models\\Filemanager', 11, '7ad406e5-5242-4790-a1ed-eb7a06e99936', 'filemanager', 'media-libraryslEcz7', 'action_new_692719a0ba478.png', 'image/png', 'media', 'media', 92132, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-26 15:15:44', '2025-11-26 15:15:44'),
(12, 'Modules\\Filemanager\\Models\\Filemanager', 12, '4a9feee4-ed2a-48b6-9a32-25d118a1865f', 'filemanager', 'media-libraryFkql6t', 'action_69271aec58ff6.jpeg', 'image/jpeg', 'media', 'media', 11271, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-26 15:21:16', '2025-11-26 15:21:16'),
(13, 'Modules\\Filemanager\\Models\\Filemanager', 13, '77a81fec-c329-46eb-b093-9404eec74624', 'filemanager', 'media-library6P9KLi', 'adventure_69271b6469fcd.jpeg', 'image/jpeg', 'media', 'media', 13089, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-26 15:23:16', '2025-11-26 15:23:16'),
(14, 'Modules\\Filemanager\\Models\\Filemanager', 14, '174500bd-3095-4fa7-a171-57d69a25d7f9', 'filemanager', 'media-libraryqblc36', 'crime_69271c4184183.jpeg', 'image/jpeg', 'media', 'media', 11882, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-26 15:26:57', '2025-11-26 15:26:57'),
(15, 'Modules\\Filemanager\\Models\\Filemanager', 15, '9f65e332-40df-45cf-8242-bc8dc1a31eff', 'filemanager', 'media-libraryUszFVO', 'gameofhero_portrait_69271cfa92a63.jpg', 'image/jpeg', 'media', 'media', 112626, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-26 15:30:02', '2025-11-26 15:30:02'),
(16, 'Modules\\Filemanager\\Models\\Filemanager', 16, '1e60f3a0-dc51-40c7-a82b-cb1fc65d36e1', 'filemanager', 'media-libraryPZpjO4', 'fast_furious_portrait_69271d4edb21d.jpg', 'image/jpeg', 'media', 'media', 113902, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-26 15:31:26', '2025-11-26 15:31:26'),
(17, 'Modules\\Filemanager\\Models\\Filemanager', 17, '853425e5-d289-410b-9d23-4be1718fd846', 'filemanager', 'media-library7r1JlV', 'minions_portrait_69271d8c91463.jpg', 'image/jpeg', 'media', 'media', 117499, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-26 15:32:28', '2025-11-26 15:32:28'),
(18, 'Modules\\Filemanager\\Models\\Filemanager', 18, 'e0b95f18-aa95-4a49-8495-0ef2850c7aba', 'filemanager', 'media-libraryGW8sEx', 'kit_6927d7461e530.png', 'image/png', 'media', 'media', 1162338, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 04:44:54', '2025-11-27 04:44:54'),
(19, 'Modules\\Filemanager\\Models\\Filemanager', 19, '1312678b-577d-4310-b991-7d961659fc14', 'filemanager', 'media-librarynDoMl0', 'action_new_6927e13a2809c.jpeg', 'image/jpeg', 'media', 'media', 10342, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 05:27:22', '2025-11-27 05:27:22'),
(20, 'Modules\\Filemanager\\Models\\Filemanager', 20, 'f52a62a4-ca5e-45b4-9778-6196e4836db8', 'filemanager', 'media-libraryr4OagE', 'horror_6927e6127b7d5.jpeg', 'image/jpeg', 'media', 'media', 9234, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 05:48:02', '2025-11-27 05:48:02'),
(21, 'Modules\\Filemanager\\Models\\Filemanager', 21, 'dbf759a3-60cc-4465-a438-5d64c3aed156', 'filemanager', 'media-libraryoLx53k', 'gameofhero_portrait_6927e693a5d7a.jpg', 'image/jpeg', 'media', 'media', 112626, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 05:50:11', '2025-11-27 05:50:11'),
(22, 'Modules\\Filemanager\\Models\\Filemanager', 22, 'b9f08991-9f6c-465a-a23a-582b23f3c065', 'filemanager', 'media-libraryCVbUpm', 'fast_furious_portrait_6927e6b5e9875.jpg', 'image/jpeg', 'media', 'media', 113902, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 05:50:45', '2025-11-27 05:50:46'),
(23, 'Modules\\Filemanager\\Models\\Filemanager', 23, '1aa99c7f-8824-46f5-b032-0b1006b5433e', 'filemanager', 'media-librarypDGDum', 'minions_portrait_6927e6da50fe0.jpg', 'image/jpeg', 'media', 'media', 117499, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 05:51:22', '2025-11-27 05:51:22'),
(24, 'Modules\\Filemanager\\Models\\Filemanager', 24, '87721459-3916-416c-a03e-603e34f41054', 'filemanager', 'media-libraryqcVM2F', 'mystery_6927e81998c65.jpeg', 'image/jpeg', 'media', 'media', 10051, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 05:56:41', '2025-11-27 05:56:41'),
(25, 'Modules\\Filemanager\\Models\\Filemanager', 25, 'cc05b8d4-1717-4372-a4d9-9f18c30a34a7', 'filemanager', 'media-libraryq2LGse', '00movie192183215775429881577a1ad6512311c4c54a24ade6841caf1e8_69282bbbd700e.jpg', 'image/png', 'media', 'media', 251685, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 10:45:15', '2025-11-27 10:45:16'),
(26, 'Modules\\Filemanager\\Models\\Filemanager', 26, '508017ce-aa8b-47f8-84b2-75b962795b38', 'filemanager', 'media-libraryauEcmk', '1920x77066af350882a94592bfac2c1ee2ad9b35c0d6f8b961ed443c802c249dbef2e290_69282c1184511.jpg', 'image/png', 'media', 'media', 238889, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 10:46:41', '2025-11-27 10:46:41'),
(27, 'Modules\\Filemanager\\Models\\Filemanager', 27, '189848c8-c21a-4ea2-9881-4b81b3abf672', 'filemanager', 'media-library18H5Fw', '1920x77070e4a9ce8eb841aaa7961e003b9fb9c8233d3aa31157440d81f86388c09b68e5_69282c5d0a6e8.jpg', 'image/png', 'media', 'media', 289485, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 10:47:57', '2025-11-27 10:47:57'),
(28, 'Modules\\Filemanager\\Models\\Filemanager', 28, '79648975-b4af-4c0a-ae07-95bce20a8d04', 'filemanager', 'media-librarylmrptU', '1920x7700864fedcdbcc408c90af2686914aa2bf44f1a21adee44c44845b2c7eee271892_692830d03a765.jpg', 'image/png', 'media', 'media', 223451, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:06:56', '2025-11-27 11:06:56'),
(29, 'Modules\\Filemanager\\Models\\Filemanager', 29, '7dc8172a-395d-4bc3-a340-cb71ff3cd6b1', 'filemanager', 'media-libraryfOT76S', '1920x7702462de77f2a947f1ba668bc9ca226736978a7f129ab74465b3ee624f2baac5bd8e41064f78934fc5989e291351b433f5_6928314e8ca32.jpg', 'image/png', 'media', 'media', 314482, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:09:02', '2025-11-27 11:09:02'),
(30, 'Modules\\Filemanager\\Models\\Filemanager', 30, '8c92e276-8d8d-4927-a00e-490ca8a56924', 'filemanager', 'media-librarytVKLLA', '1920x7706851981f79344cbe8b66856219924863689004e768d1489289626fb9be4a81f2_6928318bb5ee7.jpg', 'image/png', 'media', 'media', 285060, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:10:03', '2025-11-27 11:10:03'),
(31, 'Modules\\Filemanager\\Models\\Filemanager', 31, 'b6e76fea-a944-4020-8d15-51d1de829b9b', 'filemanager', 'media-libraryRyzE4p', 'Container_1_69283235715cd.jpg', 'image/jpeg', 'media', 'media', 604573, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:12:53', '2025-11-27 11:12:53'),
(32, 'Modules\\Filemanager\\Models\\Filemanager', 32, 'ca770848-51a4-446a-804b-1e08c22caa53', 'filemanager', 'media-libraryTTDgYl', 'Container_2_6928329e0701b.jpg', 'image/jpeg', 'media', 'media', 587687, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:14:38', '2025-11-27 11:14:38'),
(33, 'Modules\\Filemanager\\Models\\Filemanager', 33, 'bd62d1ea-1457-47ad-a043-136a52395457', 'filemanager', 'media-library28cUqE', 'Container_3_692832eb1332c.jpg', 'image/jpeg', 'media', 'media', 511558, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:15:55', '2025-11-27 11:15:55'),
(34, 'Modules\\Filemanager\\Models\\Filemanager', 34, 'e94db63c-81c4-40b4-8f1a-ad2ce435c0ae', 'filemanager', 'media-libraryJXTRUU', 'download_(1)_69283363cd900.jpeg', 'image/jpeg', 'media', 'media', 9607, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:17:55', '2025-11-27 11:17:55'),
(35, 'Modules\\Filemanager\\Models\\Filemanager', 36, '634125c8-fd24-4b45-bd1a-58ce71fe7af4', 'filemanager', 'media-libraryhYScw1', 'download_(2)_6928339a461b3.jpeg', 'image/jpeg', 'media', 'media', 9535, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:18:50', '2025-11-27 11:18:50'),
(37, 'Modules\\Filemanager\\Models\\Filemanager', 37, '9b6943c2-0635-419d-988e-88b55800c8e0', 'filemanager', 'media-libraryKtAUsp', 'download_(3)_6928368d293bf.jpeg', 'image/jpeg', 'media', 'media', 5899, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:31:25', '2025-11-27 11:31:25'),
(38, 'Modules\\Filemanager\\Models\\Filemanager', 38, '65383113-6d0c-4106-bfe9-e42d2979eddb', 'filemanager', 'media-libraryH2ZRF6', 'download_(4)_692836febc7ed.jpeg', 'image/jpeg', 'media', 'media', 9356, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:33:18', '2025-11-27 11:33:18'),
(39, 'Modules\\Filemanager\\Models\\Filemanager', 39, '1b33f4d6-b7e3-4175-a3be-64073f77a871', 'filemanager', 'media-libraryIqfXb6', 'download_69283733e6788.jpeg', 'image/jpeg', 'media', 'media', 6372, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:34:11', '2025-11-27 11:34:12'),
(40, 'Modules\\Filemanager\\Models\\Filemanager', 40, '649ff86b-ebac-4524-b606-ac68bf11dfc8', 'filemanager', 'media-librarycLTf4c', 'images_69283770b4a64.jpeg', 'image/jpeg', 'media', 'media', 6869, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:35:12', '2025-11-27 11:35:12'),
(41, 'Modules\\Filemanager\\Models\\Filemanager', 41, '9cae2c80-fc22-4a31-8cdb-ec1f6bec7a1b', 'filemanager', 'media-librarygOA954', '1920x7700a2ca372b1834c769d68a339fd512bf0b0c4da09bf6c4370a92f3e327d64bbe6_692837bb9d984.jpg', 'image/png', 'media', 'media', 271757, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:36:27', '2025-11-27 11:36:27'),
(42, 'Modules\\Filemanager\\Models\\Filemanager', 42, 'fe36c9c8-98be-476d-b30b-27c0477d79dc', 'filemanager', 'media-libraryICS9lm', '1920x7703ce516e3ec12450a9c1f32f8ac169d60_692837f149d63.jpg', 'image/png', 'media', 'media', 264266, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:37:21', '2025-11-27 11:37:21'),
(43, 'Modules\\Filemanager\\Models\\Filemanager', 43, 'ebe6d751-0e57-4486-8372-0ae894a02f1e', 'filemanager', 'media-librarywT65rW', 'Container_1_692838be554e5.jpg', 'image/jpeg', 'media', 'media', 604573, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:40:46', '2025-11-27 11:40:46'),
(44, 'Modules\\Filemanager\\Models\\Filemanager', 44, '08434512-1119-4a4e-8474-f0bac4b3e79a', 'filemanager', 'media-libraryp0nJzy', 'download_(1)_69283b52840b2.jpeg', 'image/jpeg', 'media', 'media', 7832, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:51:46', '2025-11-27 11:51:46'),
(45, 'Modules\\Filemanager\\Models\\Filemanager', 45, '623f99a4-d3f2-421b-a734-eb10bb2c7ba2', 'filemanager', 'media-libraryxPgtbE', 'download_(2)_69283b82d3859.jpeg', 'image/jpeg', 'media', 'media', 9232, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:52:34', '2025-11-27 11:52:34'),
(46, 'Modules\\Filemanager\\Models\\Filemanager', 46, '17bdfd7e-13ce-49e3-a2dd-7fbb3b239fb6', 'filemanager', 'media-libraryjEFI56', 'download_(6)_69283bb3dba6b.jpeg', 'image/jpeg', 'media', 'media', 9155, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:53:23', '2025-11-27 11:53:23'),
(47, 'Modules\\Filemanager\\Models\\Filemanager', 47, 'f91509d4-af39-4f78-bdaa-d5b409afd8c5', 'filemanager', 'media-libraryBr0VtS', 'download_69283be7124bf.jpeg', 'image/jpeg', 'media', 'media', 7787, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:54:15', '2025-11-27 11:54:15'),
(48, 'Modules\\Filemanager\\Models\\Filemanager', 48, 'd7d96de4-987e-4f7f-b2f0-e86d73489ad4', 'filemanager', 'media-librarysmJ2qP', 'images_(1)_69283c312dd3d.jpeg', 'image/jpeg', 'media', 'media', 14370, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:55:29', '2025-11-27 11:55:29'),
(50, 'Modules\\Filemanager\\Models\\Filemanager', 50, '9be255ef-804e-406a-a3eb-6be4e38efd0c', 'filemanager', 'media-libraryvOOnBB', 'images_69283c6ae147e.jpeg', 'image/jpeg', 'media', 'media', 14563, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:56:26', '2025-11-27 11:56:27'),
(51, 'Modules\\Filemanager\\Models\\Filemanager', 51, '46b046f4-f0cd-4b71-9fd7-ce7e546596d9', 'filemanager', 'media-libraryKhRc6W', 'Rectangle_4873_69283ce704e8b.jpg', 'image/jpeg', 'media', 'media', 283484, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:58:31', '2025-11-27 11:58:31'),
(52, 'Modules\\Filemanager\\Models\\Filemanager', 52, '61884ef9-994a-4cc4-bf84-15145e00cc38', 'filemanager', 'media-library6gITyr', 'Rectangle_4874_69283d0d2d025.jpg', 'image/jpeg', 'media', 'media', 368303, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:59:09', '2025-11-27 11:59:09'),
(53, 'Modules\\Filemanager\\Models\\Filemanager', 53, '2fb531f7-b7df-413e-aa4e-515dfb24ee27', 'filemanager', 'media-libraryssIaDi', 'Rectangle_4875_69283d39316a8.jpg', 'image/jpeg', 'media', 'media', 157696, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 11:59:53', '2025-11-27 11:59:53'),
(54, 'Modules\\Filemanager\\Models\\Filemanager', 54, 'af28aea1-6419-49ab-b2a8-086690d427b3', 'filemanager', 'media-libraryNVHrZp', 'Rectangle_4877_69283d58a18fa.jpg', 'image/jpeg', 'media', 'media', 228647, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:00:24', '2025-11-27 12:00:24'),
(55, 'Modules\\Filemanager\\Models\\Filemanager', 55, 'a2d5734f-a075-41ac-8e9f-ab90f03d6b33', 'filemanager', 'media-library8nQMe0', 'Rectangle_4879_69283d7fba76b.jpg', 'image/jpeg', 'media', 'media', 279996, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:01:03', '2025-11-27 12:01:03'),
(56, 'Modules\\Filemanager\\Models\\Filemanager', 56, '0a4cd0bd-3fc0-41f2-94b2-fa73bc2da85a', 'filemanager', 'media-libraryXLbB1V', 'Rectangle_4876_69283e008a33e.jpg', 'image/jpeg', 'media', 'media', 202896, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:03:12', '2025-11-27 12:03:12'),
(57, 'Modules\\Filemanager\\Models\\Filemanager', 57, 'd8d3c74d-9044-43c3-9ea2-3e45361ab905', 'filemanager', 'media-libraryZMSEfA', 'Rectangle_4878_69283e2318c1d.jpg', 'image/jpeg', 'media', 'media', 233275, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:03:47', '2025-11-27 12:03:47'),
(58, 'Modules\\Filemanager\\Models\\Filemanager', 58, 'b9b05a6d-14dd-4527-a377-1f391293680b', 'filemanager', 'media-libraryoUBQkT', 'Rectangle_4880_69283e4815e65.jpg', 'image/jpeg', 'media', 'media', 185974, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:04:24', '2025-11-27 12:04:24'),
(60, 'Modules\\Filemanager\\Models\\Filemanager', 60, '5e086537-a127-4788-8334-40421202e15d', 'filemanager', 'media-librarylOE283', 'Rectangle_4881_69283e8f02c6f.jpg', 'image/jpeg', 'media', 'media', 243427, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:05:35', '2025-11-27 12:05:35'),
(61, 'Modules\\Filemanager\\Models\\Filemanager', 61, 'b83dc5a4-55f5-40e1-adef-141a5ccb4d03', 'filemanager', 'media-librarysxR2LR', 'Rectangle_4882_69283eb8db167.jpg', 'image/jpeg', 'media', 'media', 289130, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:06:16', '2025-11-27 12:06:16'),
(62, 'Modules\\Filemanager\\Models\\Filemanager', 62, '80e71a7d-018a-4616-b3c5-bb48722124b2', 'filemanager', 'media-libraryN03PFW', 'Container_69283f640515b.jpg', 'image/jpeg', 'media', 'media', 705100, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:09:08', '2025-11-27 12:09:08'),
(63, 'Modules\\Filemanager\\Models\\Filemanager', 63, '9b3d27ac-2670-474b-a773-d5f23304fc4f', 'filemanager', 'media-librarynTCtJP', 'Container_1_69283fadaece2.jpg', 'image/jpeg', 'media', 'media', 555614, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:10:21', '2025-11-27 12:10:21'),
(64, 'Modules\\Filemanager\\Models\\Filemanager', 64, 'daa10634-26d0-4f44-87b6-2a42b8be752f', 'filemanager', 'media-libraryByhsnW', 'Container_2_69283fe00c7c6.jpg', 'image/jpeg', 'media', 'media', 657402, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:11:12', '2025-11-27 12:11:12'),
(65, 'Modules\\Filemanager\\Models\\Filemanager', 65, '1d10e487-bf0f-40b3-bf93-eebc7918a4aa', 'filemanager', 'media-library1JUER3', 'Container_3_6928400caf54f.jpg', 'image/jpeg', 'media', 'media', 506816, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:11:56', '2025-11-27 12:11:56'),
(66, 'Modules\\Filemanager\\Models\\Filemanager', 66, 'b0ccc8ac-5fc0-409d-b675-8db6fa2ce13b', 'filemanager', 'media-libraryY85xEp', 'Container_692840a51fb36.jpg', 'image/jpeg', 'media', 'media', 753867, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:14:29', '2025-11-27 12:14:29'),
(67, 'Modules\\Filemanager\\Models\\Filemanager', 67, 'abd9d2d6-d243-4102-b342-bd652d3c5414', 'filemanager', 'media-libraryFJnfY4', 'Container_1_692840c90dac5.jpg', 'image/jpeg', 'media', 'media', 574010, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:15:05', '2025-11-27 12:15:05'),
(68, 'Modules\\Filemanager\\Models\\Filemanager', 68, '0d9c8847-a5de-4eb4-a124-66f970f53bab', 'filemanager', 'media-libraryP3EkZ0', 'Container_2_692840f700425.jpg', 'image/jpeg', 'media', 'media', 501626, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:15:51', '2025-11-27 12:15:51'),
(69, 'Modules\\Filemanager\\Models\\Filemanager', 69, '000db3c7-c1ae-4eae-9c3d-94024269f298', 'filemanager', 'media-libraryaQkuOU', 'Container_3_6928411f80baf.jpg', 'image/jpeg', 'media', 'media', 596240, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:16:31', '2025-11-27 12:16:31'),
(70, 'Modules\\Filemanager\\Models\\Filemanager', 70, 'c9d91ab6-222b-4fa0-91b9-e39a81816391', 'filemanager', 'media-library1YfS71', 'Container_4_6928414610f5b.jpg', 'image/jpeg', 'media', 'media', 619217, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:17:10', '2025-11-27 12:17:10'),
(71, 'Modules\\Filemanager\\Models\\Filemanager', 71, '73486b63-246a-4ab4-a5fc-89c506be452e', 'filemanager', 'media-libraryD6W6Qc', 'Gradient_692841747c93b.jpg', 'image/jpeg', 'media', 'media', 555549, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:17:56', '2025-11-27 12:17:56'),
(72, 'Modules\\Filemanager\\Models\\Filemanager', 72, 'd132a1b4-3126-4045-83d8-abc8597de30d', 'filemanager', 'media-libraryy7A3Zq', 'Container_692842429123f.jpg', 'image/jpeg', 'media', 'media', 705100, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:21:22', '2025-11-27 12:21:22'),
(73, 'Modules\\Filemanager\\Models\\Filemanager', 73, '8427c580-6c84-4ec2-b02d-38bdb80e7780', 'filemanager', 'media-libraryZhvjW1', 'Container_4_6928432875e01.jpg', 'image/jpeg', 'media', 'media', 602440, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:25:12', '2025-11-27 12:25:12'),
(74, 'Modules\\Filemanager\\Models\\Filemanager', 74, '4888da6e-bba7-4fc5-82fb-385f8962a341', 'filemanager', 'media-library8VGbqv', 'Container_5_6928435292e8c.jpg', 'image/jpeg', 'media', 'media', 652507, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:25:54', '2025-11-27 12:25:54'),
(75, 'Modules\\Filemanager\\Models\\Filemanager', 75, '851b0421-35ca-462f-bf99-5d421e8b4e7b', 'filemanager', 'media-librarywK9CvO', 'download_(1)_692843e8bd707.jpeg', 'image/jpeg', 'media', 'media', 12635, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:28:24', '2025-11-27 12:28:24'),
(76, 'Modules\\Filemanager\\Models\\Filemanager', 76, '0441d4c6-dc9b-489c-ba9c-8905d81e5b43', 'filemanager', 'media-librarypwkFpH', 'download_(2)_6928442e5a8bf.jpeg', 'image/jpeg', 'media', 'media', 10293, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:29:34', '2025-11-27 12:29:34'),
(77, 'Modules\\Filemanager\\Models\\Filemanager', 77, '84f628bf-14e5-46db-a697-e15d095454a6', 'filemanager', 'media-libraryakeMnx', 'download_(3)_69284451e0688.jpeg', 'image/jpeg', 'media', 'media', 7405, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2025-11-27 12:30:09', '2025-11-27 12:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_01_01_000010_create_users_table', 1),
(3, '2023_01_01_000012_create_user_providers_table', 1),
(4, '2023_01_01_000020_create_password_resets_table', 1),
(5, '2023_01_01_000021_create_permission_tables', 1),
(6, '2023_01_01_000040_create_settings_table', 1),
(7, '2023_01_01_000041_create_notifications_table', 1),
(8, '2023_01_01_000200_create_media_table', 1),
(9, '2023_01_01_000400_create_activity_log_table', 1),
(10, '2023_01_01_000400_create_failed_jobs_table', 1),
(11, '2023_01_27_141241_create_service_providers_table', 1),
(12, '2023_01_27_190720_create_addresses_table', 1),
(13, '2023_04_11_120721_create_notificationtemplates_table', 1),
(14, '2023_04_11_140938_NotificationTemplateContentMapping', 1),
(15, '2023_04_27_113639_create_planlimitation_table', 1),
(16, '2023_05_02_111101_create_plan_table', 1),
(17, '2023_05_02_111622_create_planlimitation_mapping_table', 1),
(18, '2023_05_06_160755_create_subscriptions_table', 1),
(19, '2023_05_06_160843_create_subscriptions_transactions_table', 1),
(20, '2023_06_17_075047_create_webhook_calls_table', 1),
(21, '2023_06_17_121725_create_jobs_table', 1),
(22, '2023_06_21_170019_create_user_profiles_table', 1),
(23, '2023_06_24_050019_create_modules_table', 1),
(24, '2023_07_22_080045_create_languages_table', 1),
(25, '2023_08_07_132655_alter_module_table', 1),
(26, '2024_05_20_095807_create_countries_table', 1),
(27, '2024_05_20_095808_create_cities_table', 1),
(28, '2024_05_20_095809_create_states_table', 1),
(29, '2024_06_02_114414_create_genres_table', 1),
(30, '2024_06_03_074305_create_cast_crew_table', 1),
(31, '2024_06_06_073505_create_constants_table', 1),
(32, '2024_06_06_120151_create_taxes_table', 1),
(33, '2024_06_06_121650_create_devices_table', 1),
(34, '2024_06_06_121909_create_worlds_table', 1),
(35, '2024_06_07_085105_create_entertainments_table', 1),
(36, '2024_06_07_092336_create_currencies_table', 1),
(37, '2024_06_07_095208_create_livetvs_table', 1),
(38, '2024_06_07_095529_create_live_tv_category_table', 1),
(39, '2024_06_08_043704_create_watchlists_table', 1),
(40, '2024_06_08_054515_create_entertainment_gener_mapping_table', 1),
(41, '2024_06_08_054936_create_entertainment_talent_mapping_table', 1),
(42, '2024_06_08_055333_create_entertainment_stream_content_mapping_table', 1),
(43, '2024_06_08_065711_create_reviews_table', 1),
(44, '2024_06_08_091320_create_settings_table', 1),
(45, '2024_06_11_050857_create_seasons_table', 1),
(46, '2024_06_11_084656_create_episodes_table', 1),
(47, '2024_06_11_090807_create_episode_stream_content_mapping_table', 1),
(48, '2024_06_13_073417_create_continue_watch_table', 1),
(49, '2024_06_13_092807_create_likes_table', 1),
(50, '2024_06_13_120109_create_videos_table', 1),
(51, '2024_06_13_121428_create_video_stream_content_mapping_table', 1),
(52, '2024_06_14_044624_create_entertainment_downloads_table', 1),
(53, '2024_06_14_061737_create_live_tv_channel_table', 1),
(54, '2024_06_14_062751_create_live_tv_stream_content_mapping_table', 1),
(55, '2024_06_14_115456_create_filemanagers_table', 1),
(56, '2024_06_15_083524_create_entertainment_download_mapping_table', 1),
(57, '2024_06_18_041529_create_banners_table', 1),
(58, '2024_06_20_094819_create_job_batches_table', 1),
(59, '2024_06_21_070413_create_dashboard_settings_table', 1),
(60, '2024_06_25_051445_create_user_reminder_table', 1),
(61, '2024_06_26_054413_create_entertainment_views_table', 1),
(62, '2024_07_01_075814_create_episode_download_mapping_table', 1),
(63, '2024_07_03_122744_create_pages_table', 1),
(64, '2024_07_09_094304_create_video_download_mappings_table', 1),
(65, '2024_09_13_122239_create_faqs_table', 1),
(66, '2024_09_18_111806_create_user_multi_profiles_table', 1),
(67, '2024_09_19_072214_create_user_search_histories_table', 1),
(68, '2024_09_19_084000_create_user_watch_histories_table', 1),
(69, '2024_09_24_095445_create_entertainment_country_mapping_table', 1),
(70, '2024_09_24_111520_create_sessions_table', 1),
(71, '2024_11_06_121652_create_installers_table', 1),
(72, '2024_12_17_053218_create_alter_continue_watch_table', 1),
(73, '2025_01_22_113233_create_alter_review_table', 1),
(74, '2025_03_26_173650_alter_user_multi_profiles_table', 1),
(75, '2025_03_27_121756_alter_poster_tv_image_table', 1),
(76, '2025_03_29_065106_alter_users_table_add_pin_otp_column', 1),
(77, '2025_03_30_152325_index_for_profile_detail', 1),
(78, '2025_03_31_112851_create_alter_episode_poster_tv_image_table', 1),
(79, '2025_03_31_121344_create_alter_season_poster_tv_image_table', 1),
(80, '2025_04_01_045818_add_banner_for_to_banners_table', 1),
(81, '2025_04_01_162912_index_for_entertainments_table', 1),
(82, '2025_04_02_072249_create_video_poster_tv_image_table', 1),
(83, '2025_04_02_101553_create_tvchannel_poster_tv_image_table', 1),
(84, '2025_04_02_104434_create_banner_poster_tv_image_table', 1),
(85, '2025_04_04_161627_add_index_selected_table', 1),
(86, '2025_04_14_093857_Coupon', 1),
(87, '2025_04_15_071822_coupon_subscription_plan', 1),
(88, '2025_04_17_052158_UserCouponRedeem', 1),
(89, '2025_04_19_095303_add_parental_flag_users', 1),
(90, '2025_05_02_074312_add_pricing_fields_to_entertainments_table', 1),
(91, '2025_05_02_095730_add_pricing_fields_to_videos_table', 1),
(92, '2025_05_02_111741_add_pricing_fields_to_seasons_table', 1),
(93, '2025_05_02_115012_add_pricing_fields_to_episodes_table', 1),
(94, '2025_05_05_040137_alter_entertainment_subtitle_table', 1),
(95, '2025_05_06_094938_create_pay_per_views_table', 1),
(96, '2025_05_07_040757_create_payperviewstransactions_table', 1),
(97, '2025_05_09_091111_create_tv_login_sessions_table', 1),
(98, '2025_05_10_034958_alter_subscriptions_table', 1),
(99, '2025_05_10_091146_add_coupon_discount_to_subscriptions_table', 1),
(100, '2025_05_13_114620_add_column_to_entertainment_table', 1),
(101, '2025_05_16_103735_add_column_to_video_table', 1),
(102, '2025_05_16_104824_add_column_to_video_table_subtitle_file', 1),
(103, '2025_05_16_112032_add_column_to_episode_table_', 1),
(104, '2025_05_19_094309_create_subtitle_tabel', 1),
(105, '2025_05_22_055600_create_ads_table', 1),
(106, '2025_05_22_055800_create_vast_ads_setting', 1),
(107, '2025_05_22_083413_create_custom_ads_setting', 1),
(108, '2025_05_23_000000_add_dates_to_vast_ads_setting', 1),
(109, '2025_06_19_100923_add_start_end_date_to_custom_ads_setting_table', 1),
(110, '2025_07_08_100927_create_seo_table', 1),
(111, '2025_07_11_110337_add_columns_to_entertainments_table', 1),
(112, '2025_07_14_100351_add_seo_fields_to_seasons_table', 1),
(113, '2025_07_14_124514_add_seo_fields_to_epispdes_table', 1),
(114, '2025_07_15_103922_add_seo_fields_to_videos_table', 1),
(115, '2025_08_19_084841_alter_role_permission_table', 1),
(116, '2025_08_21_054322_alter_seo_cloumns_remove', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_settings`
--

CREATE TABLE `mobile_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_settings`
--

INSERT INTO `mobile_settings` (`id`, `name`, `slug`, `position`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Banner', 'banner', 1, '1', '2024-07-12 04:58:06', '2025-11-21 06:54:45', NULL),
(2, 'Continue Watching', 'continue-watching', 2, '1', '2024-07-12 04:58:21', '2024-07-12 04:58:21', NULL),
(3, 'top 10 movies to watch', 'top-10', 3, '[\"89\",\"99\",\"102\"]', '2024-07-12 04:58:33', '2025-11-21 06:22:28', NULL),
(4, 'Advertisement', 'advertisement', 4, '1', '2024-07-12 04:58:47', '2024-07-12 04:58:47', NULL),
(5, 'Only on Streamit', 'latest-movies', 5, '[\"103\",\"102\",\"100\",\"98\",\"97\",\"96\",\"95\"]', '2024-07-12 04:59:02', '2025-11-21 06:23:59', NULL),
(6, 'Popular language', 'enjoy-in-your-native-tongue', 6, '[\"16\",\"17\",\"18\",\"19\",\"20\" ,\"21\",\"22\",\"23\"]', '2024-07-12 04:59:20', '2024-07-12 05:03:08', NULL),
(7, 'Popular Movies', 'popular-movies', 7, '[\"22\",\"25\",\"26\",\"28\",\"29\",\"31\",\"34\",\"36\",\"37\",\"40\",\"38\"]', '2024-07-12 04:59:36', '2024-07-12 05:18:33', NULL),
(8, 'Live', 'top-channels', 8, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"]', '2024-07-12 05:00:54', '2025-11-26 01:31:33', NULL),
(9, 'your favourite personality', 'your-favorite-personality', 9, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"]', '2024-07-12 05:01:08', '2025-11-25 23:42:04', NULL),
(10, 'Free Movies', '500-free-movies', 10, '[\"21\",\"23\",\"24\",\"25\",\"30\",\"31\",\"32\",\"34\",\"33\",\"35\"]', '2024-07-12 05:01:38', '2024-07-12 05:17:34', NULL),
(11, 'movie geners', 'genre', 11, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"]', '2024-07-12 05:01:52', '2025-11-25 23:43:44', NULL),
(12, 'Rate our app', 'rate-our-app', 12, '1', '2024-07-12 05:02:08', '2024-07-12 05:02:08', NULL),
(13, 'Popular TV Show', 'popular-tvshows', 13, '[4,6,1,2,3,8,10,12]', '2024-07-12 04:59:36', '2024-07-12 05:18:33', NULL),
(14, 'recommended for you', 'popular-videos', 14, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"12\",\"14\",\"15\",\"17\",\"18\",\"19\",\"20\",\"25\",\"35\"]', '2024-07-12 04:59:36', '2025-11-25 23:49:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `more_permission` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_custom_permission` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `label` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `to` longtext DEFAULT NULL,
  `bcc` longtext DEFAULT NULL,
  `cc` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `channels` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `name`, `label`, `description`, `type`, `to`, `bcc`, `cc`, `status`, `channels`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'change_password', 'Change Password', NULL, 'change_password', NULL, NULL, NULL, 1, '{\"IS_MAIL\":\"0\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL),
(2, 'forget_email_password', 'Forget Email/Password', NULL, 'forget_email_password', NULL, NULL, NULL, 1, '{\"IS_MAIL\":\"0\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(3, 'tv_show_add', 'TV Show Added', NULL, 'tv_show_add', '[\"user\",\"admin\",\"demo_admin\"]', NULL, NULL, 1, '{\"IS_MAIL\":\"0\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(4, 'movie_add', 'Movie Added', NULL, 'movie_add', '[\"user\",\"admin\",\"demo_admin\"]', NULL, NULL, 1, '{\"IS_MAIL\":\"0\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(5, 'episode_add', 'Episode Added', NULL, 'episode_add', '[\"user\",\"admin\",\"demo_admin\"]', NULL, NULL, 1, '{\"IS_MAIL\":\"0\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(6, 'season_add', 'Season Added', NULL, 'season_add', '[\"user\",\"admin\",\"demo_admin\"]', NULL, NULL, 1, '{\"IS_MAIL\":\"0\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(7, 'new_subscription', 'New User Subscribed', NULL, 'new_subscription', '[\"admin\",\"demo_admin\",\"user\"]', NULL, NULL, 1, '{\"IS_MAIL\":\"0\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(8, 'cancle_subscription', 'User Cancel Subscription', NULL, 'cancle_subscription', '[\"admin\",\"demo_admin\",\"user\"]', NULL, NULL, 1, '{\"IS_MAIL\":\"0\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(9, 'purchase_video', 'Purchase Video', NULL, 'purchase_video', '[\"user\"]', NULL, NULL, 1, '{\"IS_MAIL\":\"1\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(10, 'rent_video', 'Rent Video', NULL, 'rent_video', '[\"user\"]', NULL, NULL, 1, '{\"IS_MAIL\":\"1\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(11, 'rent_expiry_reminder', 'Rent Expiry Reminder', NULL, 'rent_expiry_reminder', '[\"user\"]', NULL, NULL, 1, '{\"IS_MAIL\":\"1\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(12, 'purchase_expiry_reminder', 'Purchase Expiry Reminder', NULL, 'purchase_expiry_reminder', '[\"user\"]', NULL, NULL, 1, '{\"IS_MAIL\":\"1\",\"PUSH_NOTIFICATION\":\"1\",\"IS_CUSTOM_WEBHOOK\":\"0\"}', NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_template_content_mapping`
--

CREATE TABLE `notification_template_content_mapping` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `language` varchar(191) DEFAULT NULL,
  `template_detail` longtext DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `notification_message` varchar(191) DEFAULT NULL,
  `notification_link` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_template_content_mapping`
--

INSERT INTO `notification_template_content_mapping` (`id`, `template_id`, `language`, `template_detail`, `subject`, `notification_message`, `notification_link`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', '\n            <p>Subject: Password Change Confirmation</p>\n            <p>Dear [[ user_name ]],</p>\n            <p>&nbsp;</p>\n            <p>We wanted to inform you that a recent password change has been made for your account. If you did not initiate this change, please take immediate action to secure your account.</p>\n            <p>&nbsp;</p>\n            <p>To regain control and secure your account:</p>\n            <p>&nbsp;</p>\n            <p>Visit [[ link ]].</p>\n            <p>Follow the instructions to verify your identity.</p>\n            <p>Create a strong and unique password.</p>\n            <p>Update passwords for any other accounts using similar credentials.</p>\n            <p>If you have any concerns or need assistance, please contact our customer support team.</p>\n            <p>&nbsp;</p>\n            <p>Thank you for your attention to this matter.</p>\n            <p>&nbsp;</p>\n            <p>Best regards,</p>\n            <p>[[ logged_in_user_fullname ]]<br />[[ logged_in_user_role ]]<br />[[ company_name ]]</p>\n            <p>[[ company_contact_info ]]</p>\n          ', 'Change Password', '', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(2, 2, 'en', '\n            <p>Subject: Password Reset Instructions</p>\n            <p>&nbsp;</p>\n            <p>Dear [[ user_name ]],</p>\n            <p>A password reset request has been initiated for your account. To reset your password:</p>\n            <p>&nbsp;</p>\n            <p>Visit [[ link ]].</p>\n            <p>Enter your email address.</p>\n            <p>Follow the instructions provided to complete the reset process.</p>\n            <p>If you did not request this reset or need assistance, please contact our support team.</p>\n            <p>&nbsp;</p>\n            <p>Thank you.</p>\n            <p>&nbsp;</p>\n            <p>Best regards,</p>\n            <p>[[ logged_in_user_fullname ]]<br />[[ logged_in_user_role ]]<br />[[ company_name ]]</p>\n            <p>[[ company_contact_info ]]</p>\n            <p>&nbsp;</p>\n          ', 'Forget Email/Password', '', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(3, 3, 'en', '<p>Thank you for choosing Us for your recent order. We are delighted to confirm that your order has been successfully placed.!</p>', 'TV Show Added!', 'Thank you for choosing Us for your recent order. We are delighted to confirm that your order has been successfully placed.!', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(4, 4, 'en', '<p>We\'re excited to let you know that your order is now being prepared and will soon be on its way to satisfy your taste buds!</p>', 'Movie Added!', 'We\'re excited to let you know that your order is now being prepared and will soon be on its way to satisfy your taste buds!', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(5, 5, 'en', '<p>We\'re delighted to inform you that your order has been successfully delivered to your doorstep.</p>', 'Episode Added!', 'We\'re delighted to inform you that your order has been successfully delivered to your doorstep.', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(6, 6, 'en', '<p>We regret to inform you that your recent order has been cancelled.</p>', 'Season Added!', 'We regret to inform you that your recent order has been cancelled.', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(7, 7, 'en', 'A new user has subscribed', 'New User is subscribe!', 'A new user has subscribed', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(8, 8, 'en', 'A user has cancle subscription', 'A User is cancle subscribe!', 'A user has cancle subscription', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(9, 9, 'en', '\n                <p>Dear [[ user_name ]],</p>\n                <p>Thank you for purchasing the [[ content_type ]] \"<strong>[[ name ]]</strong>\" on our platform.</p>\n                <p>You now have full access starting from <strong>[[ start_date ]] to [[ end_date ]]</strong>.</p>\n                <p>We hope you enjoy your viewing experience!</p>\n                <p>Best regards,</p>\n            ', 'You have successfully purchased!', 'You have successfully purchased [[ content_type ]]\"[[ name ]]\"', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(10, 10, 'en', '\n                <p>Dear [[ user_name ]],</p>\n                <p>Thank you for renting the [[ content_type ]] \"<strong>[[ name ]]</strong>\" from our platform.</p>\n                <p>Your rental starts on <strong>[[ start_date ]]</strong> and will be available until <strong>[[ end_date ]]</strong>.</p>\n                <p>Be sure to complete watching it before your rental expires!</p>\n               \n            ', 'You have successfully rent!', 'You have successfully rent [[ content_type ]]\"[[ name ]]\"', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(11, 11, 'en', '\n                <p>Hi [[ user_name ]],</p>\n                <p>This is a reminder that your rental access to the [[ content_type ]] \"<strong>[[ name ]]</strong>\" will expire in <strong>[[ end_date ]]</strong>.</p>\n                <p>If you haven’t finished watching it yet, please make sure to complete it before your rental period ends.</p>\n                <p>Enjoy your content,<br>\n            ', 'Rent Is Expire Soon!', 'Reminder: Your access to [[ content_type ]] \"[[ name ]]\" will expire in [[ end_date ]].', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL),
(12, 12, 'en', '\n                <p>Hello [[ user_name ]],</p>\n                <p>This is a reminder that your access to the purchased [[ type ]] \"<strong>[[ name ]]</strong>\" will expire in <strong>[[ end_date ]]</strong>.</p>\n                <p>Please ensure you complete watching it before your access period ends.</p>\n            ', 'Purchase Is Expire Soon!', 'Reminder: Your access to purchased [[ type ]] \"[[ name ]]\" will expire in [[ end_date ]].', '', 1, NULL, NULL, NULL, '2025-11-20 07:05:05', '2025-11-20 07:05:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `sequence`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Privacy Policy', 'privacy-policy', NULL, '<p data-pm-slice=\"0 0 []\">Iqonic Design Streamit Laravel (&ldquo;we,&rdquo; &ldquo;our,&rdquo; or &ldquo;us&rdquo;) is committed to protecting your privacy. At Iqonic Design, we are committed to protecting your privacy and ensuring that your personal information is handled securely.</p>\n<p>This Privacy Policy applies to our website, and its associated subdomains (collectively, our &ldquo;Service&rdquo;) alongside our application, Iqonic Design Streamit Laravel. By accessing or using our Service, you signify that you have read, understood, and agree to our collection described in this Privacy Policy and our Terms of Service.</p>\n<p>This Privacy Policy outlines how we collect, use, and safeguard your data when you use Streamit Laravel.</p>\n<p><strong>1. Introduction </strong></p>\n<p>At Iqonic Design, we are dedicated to safeguarding your privacy and ensuring your personal data is handled securely. This Privacy Policy explains how we collect, use, and protect your information when you use our services through the Streamit Laravel platform, including our website and associated applications. By accessing or using our services, you acknowledge that you have read and understood this Privacy Policy and agree to its terms.</p>\n<p><strong>2. Information We Collect </strong></p>\n<p>We may collect several types of information when you use Streamit Laravel, including:</p>\n<p><strong>- Personal Information:</strong> Information you provide, such as your name, email address, payment information (e.g., credit card details), and any other personal information required for account creation and subscription services.</p>\n<p><strong>- Usage Data:</strong> Details about how you interact with the platform, such as your IP address, browser type, device details, pages you visit, and your streaming activity. This data helps us optimize your experience and improve our service.</p>\n<p><strong>- Cookies and Tracking Technologies:</strong> We use cookies and similar technologies to track user preferences, enhance your experience, and analyze traffic. You can manage your cookie settings through your browser.</p>\n<p><strong>3. How We Use Your Information </strong></p>\n<p>We collect and use your information to:</p>\n<p><strong>- Provide Streaming Services:</strong> To deliver content, manage user accounts, and personalize recommendations based on your viewing habits.</p>\n<p><strong>- Process Transactions:</strong> For managing subscriptions, handling payments securely, and maintaining transaction histories.</p>\n<p><strong>- Improve User Experience:</strong> Analyze how users interact with the platform to improve navigation, content suggestions, and overall performance.</p>\n<p><strong>- Communications:</strong> Send important notifications related to service updates, billing, and personalized marketing content based on your preferences (you can opt out of marketing communications).</p>\n<p><strong>- Security:</strong> Use collected information to ensure the security of the platform, prevent fraud, and monitor potential misuse.</p>\n<p><strong>4. Data Sharing and Disclosure </strong></p>\n<p>WWe value your privacy and do not sell, rent, or disclose your personal information to third parties except in the following circumstances:</p>\n<p><strong>- Service Providers:</strong> We may share your data with third-party service providers, such as payment processors or cloud storage providers, solely to help us deliver our services. These providers are bound by strict confidentiality agreements and are only authorized to use your information for the purpose of providing services to us.</p>\n<p><strong>- Legal Requirements:</strong> We will only disclose your personal information if required by law, such as to comply with a legal obligation, or in response to valid legal processes like subpoenas, court orders, or other government demands. This will only occur when we have a legal basis to do so.</p>\n<p>-<strong> Business Transfers (If Applicable):</strong> In the event that Iqonic Design undergoes a business transition such as a merger, acquisition, or sale of all or part of our assets, your information may be transferred as part of the transaction. If such a transfer occurs, we will notify you and ensure that the new entity adheres to this Privacy Policy or offers similar protections.</p>\n<p><strong>5. Your Rights </strong></p>\n<p>You have certain rights regarding your personal information, including:</p>\n<p><strong>- Streamit LaravelAccess and CorrectionStreamit Laravel:</strong> You may access, correct, or update your personal data through your account settings.</p>\n<p><strong>- Streamit LaravelDeletionStreamit Laravel:</strong> You may request the deletion of your account and associated data by contacting our support team.</p>\n<p><strong>- Streamit LaravelData PortabilityStreamit Laravel:</strong> You have the right to request your personal data in a structured, machine-readable format to transfer to another service provider.</p>\n<p><strong>- Streamit LaravelOpting Out of Marketing CommunicationsStreamit Laravel:</strong> You can opt out of receiving promotional emails or other communications at any time by adjusting your account settings or contacting us.</p>\n<p><strong>6. Data Security </strong></p>\n<p>We take the protection of your personal data very seriously and prioritize its security using a range of industry-standard security measures. These measures are designed to safeguard your information from unauthorized access, disclosure, or misuse. Our security practices include the use of encryption, secure data storage systems, firewalls, and regular security audits to detect vulnerabilities. In addition to these technical measures, we employ strict internal policies to control access to sensitive data, ensuring that only authorized personnel can handle it.</p>\n<p>Despite our efforts to implement strong security systems, it\'s important to recognize that no method of transmission over the internet or method of electronic storage is completely secure. As such, while we are committed to doing our utmost to protect your personal information, we cannot guarantee absolute security. If you suspect any breach or unauthorized access to your account, please notify us immediately so we can take appropriate action to secure your data.</p>\n<p><strong> 7. Children&rsquo;s Privacy </strong></p>\n<p>The Streamit Laravel platform is designed for use by individuals aged 13 and older. We are committed to protecting the privacy of children and do not knowingly collect personal information from individuals under the age of 13. In compliance with the Children&rsquo;s Online Privacy Protection Act (COPPA) and similar regulations, we take precautions to avoid collecting any data from minors.</p>\n<p>If you are a parent or guardian and become aware that your child has provided us with personal information without your consent, please contact us immediately. Upon receiving such a request, we will promptly review and remove the child\'s information from our system to ensure it is not used or stored. We take the privacy of minors seriously, and we will act quickly to address any concerns.</p>\n<p><strong>8. Changes to This Privacy Policy </strong></p>\n<p>Our privacy practices may evolve over time as we introduce new features, services, or update our operational procedures. To ensure transparency, we reserve the right to make changes to this Privacy Policy from time to time. Such updates may reflect changes in legal requirements, our business practices, or the introduction of new technologies.</p>\n<p>In the event of any significant modifications to the way we collect, use, or store your data, we will provide you with clear notification either via email or by placing a prominent notice on our platform. We encourage you to review this Privacy Policy periodically to stay informed of any updates or changes. Your continued use of our services after changes have been made constitutes your acceptance of the updated policy.</p>\n<p><strong>9. Contact Us </strong></p>\n<p>If you have any questions, concerns, or require further clarification regarding this Privacy Policy, our team is here to help. We value open communication with our users and are committed to addressing any concerns related to your personal data and privacy.</p>\n<p>You can contact us via the following email:</p>\n<p><strong>- Email:</strong> hello@iqonic.design</p>\n<p>We aim to respond to all queries in a timely manner and ensure that your privacy concerns are addressed effectively.</p>\n<p><strong>10. Data Deletion Request </strong></p>\n<p>We are committed to providing you with control over your personal information and ensuring that your data is handled in accordance with your preferences. If at any time you wish to request the deletion of your personal data from our servers, we offer a straightforward process to facilitate this.</p>\n<p>To request the deletion of your data, please send an email from your registered email address to our dedicated privacy inbox at hello@iqonic.design. Include the subject line \"Data Deletion Request\" and provide any necessary details regarding your account. Upon receiving your request, our team will thoroughly review the provided information, verify your identity, and proceed with the deletion of your data as required by our privacy policies and applicable legal obligations.</p>\n<p>Please note that certain legal requirements or regulatory obligations may require us to retain certain information for a specified period, even after a deletion request has been made. However, we will ensure that any retained data is handled securely and in compliance with relevant privacy laws.</p>\n<p>&nbsp;</p>\n<p><strong>This privacy policy helps ensure transparency and clarity about how Iqonic Design handles your data within Streamit Laravel. </strong></p>\n<p><strong>Thank you for using Streamit Laravel. Your privacy is important to us, and we are committed to safeguarding your personal information.&nbsp;&nbsp;</strong></p>', 1, NULL, 1, NULL, '2024-09-27 22:19:15', '2024-10-17 06:37:43', NULL),
(2, 'Terms & Conditions', 'terms-conditions', NULL, '<p>Welcome to Streamit Laravel, a premier streaming platform developed by Iqonic Design. By accessing or using our services, you agree to comply with and be bound by these Terms and Conditions. These terms outline your rights and responsibilities when using our platform, and we encourage you to read them carefully. If you do not agree with these terms, please refrain from using the service.</p>\n<p><strong>1. Acceptance of Terms</strong></p>\n<p>By using Streamit Laravel, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions. This agreement serves as a legally binding contract between you and Iqonic Design. If you do not agree to any of these terms, please refrain from using our services. We reserve the right to update these terms at any time, and it is your responsibility to review them periodically for changes.</p>\n<p><strong>2. Eligibility</strong></p>\n<p>To access and use Streamit Laravel, you must be at least 18 years old or the age of majority in your jurisdiction. If you are under 18, you may only use the service under the supervision of a parent or legal guardian who agrees to these Terms and Conditions. By using the service, you represent that you meet these eligibility requirements and that you are legally able to enter into this agreement. We reserve the right to terminate your account if you do not meet these criteria.</p>\n<p><strong>3. User Accounts</strong></p>\n<p>To access certain features of Streamit Laravel, you may be required to create a user account. When creating an account, you agree to provide accurate, complete, and up-to-date information, including your name, email address, and any other required details. You are responsible for maintaining the confidentiality of your account information, including your password. Any activity performed using your account is your responsibility, and you agree to notify us immediately of any unauthorized use of your account or any other breach of security. We are not liable for any loss or damage arising from your failure to comply with these requirements.</p>\n<p><strong>4. Subscription Plans</strong></p>\n<p>Streamit Laravel offers a variety of subscription plans, each with different features and benefits tailored to meet the needs of our diverse user base. By subscribing, you agree to pay the applicable fees associated with your chosen plan, which will be billed in advance on a recurring basis. Subscription fees are non-refundable, except as specified in our refund policy. The specific features of each subscription plan are detailed on our platform. We reserve the right to modify, enhance, or discontinue any plan at our discretion, ensuring that we continuously provide value to our users.</p>\n<p><strong>5. Payment and Billing</strong></p>\n<p>Payments for subscriptions are processed through secure third-party payment gateways, including Stripe, RazorPay, Paystack, PayPal, and FlutterWave. You are responsible for providing accurate and complete payment information. If the payment is not successfully processed due to insufficient funds, expired card information, or any other reason, we reserve the right to suspend or terminate your account. All fees are subject to applicable taxes, and you are responsible for paying any additional charges incurred in your region. By providing payment information, you authorize us to charge the payment method for the subscription fees and any other applicable charges.</p>\n<p><strong>6. Content Access and Usage</strong></p>\n<p>Upon subscribing, you are granted a limited, non-exclusive, non-transferable license to access and view the content available on Streamit Laravel for personal, non-commercial use. This license is intended solely for your enjoyment and personal viewing. You may not reproduce, distribute, modify, publicly display, publicly perform, republish, download, or store any content from the service without obtaining prior written consent from us. All content remains the property of Iqonic Design or its content providers, and unauthorized use of the content may result in legal action.</p>\n<p><strong>7. Intellectual Property</strong></p>\n<p>All content available on Streamit Laravel, including but not limited to movies, TV shows, graphics, logos, software, and any associated trademarks, is protected by copyright, trademark, and other intellectual property laws. You agree not to infringe, violate, or misuse any intellectual property rights belonging to Iqonic Design or third-party content providers. Unauthorized use of the content may lead to civil and criminal penalties. If you wish to use any content for commercial purposes, you must obtain prior written permission from the rightful owner.</p>\n<p><strong>8. Prohibited Activities</strong></p>\n<p>While using Streamit Laravel, you agree not to engage in any unlawful activities or conduct that violates these Terms and Conditions. This includes, but is not limited to:</p>\n<p>- Uploading or distributing malicious software, viruses, or any other harmful code.</p>\n<p>- Interfering with the security of the service or the experience of other users.</p>\n<p>- Attempting to bypass any content protection mechanisms or access restricted areas of the platform.</p>\n<p>- Sharing your login credentials with others or using another user\'s account without permission. Engaging in any of these prohibited activities may result in immediate termination of your account and potential legal action.</p>\n<p><strong>9. Third-Party Links</strong></p>\n<p>Streamit Laravel may contain links to third-party websites or services that are not owned or controlled by Iqonic Design. We have no control over, and assume no responsibility for, the content, privacy policies, or practices of any third-party sites. Your interactions with these third-party services are governed by their own terms and policies. We encourage you to read the terms and conditions of any third-party website you visit. Iqonic Design is not responsible for any damages or losses caused by your use of these third-party services.</p>\n<p><strong>10. Termination of Service</strong></p>\n<p>We reserve the right to suspend or terminate your access to Streamit Laravel at any time, with or without notice, if you breach these Terms and Conditions or engage in conduct that we deem harmful to the platform or other users. In the event of termination, your right to use the service will immediately cease, and you may lose access to any content associated with your account. We will not be liable to you or any third party for any termination of your access to the service. Upon termination, any provisions of these terms that, by their nature, should survive termination shall remain in effect.</p>\n<p><strong>11. Limitation of Liability</strong></p>\n<p>In no event shall Iqonic Design or its affiliates be liable for any indirect, incidental, special, or consequential damages arising from your use or inability to use the Streamit Laravel service. This includes, but is not limited to, damages for loss of profits, data, or other intangible losses, even if we have been advised of the possibility of such damages. Your sole remedy for dissatisfaction with the service is to stop using it. Our liability for any claims arising out of these Terms and Conditions shall not exceed the total amount paid by you for the service during the twelve (12) months preceding the claim.</p>\n<p><strong>12. Disclaimer of Warranties</strong></p>\n<p>The Streamit Laravel service is provided \"as is\" and \"as available.\" Iqonic Design makes no warranties or representations about the accuracy, reliability, or availability of the service. We disclaim all warranties, whether express or implied, including but not limited to implied warranties of merchantability, fitness for a particular purpose, and non-infringement. We do not guarantee that the service will be uninterrupted, secure, or error-free, and we are not responsible for any interruptions or errors in the service. Your use of the service is at your own risk.</p>\n<p><strong>13. Modifications to Terms</strong></p>\n<p>We reserve the right to modify these Terms and Conditions at any time. Any changes will be effective immediately upon posting on our platform. Your continued use of the service after the changes means you accept the new terms. We encourage you to review these Terms regularly to stay informed of any updates. If you do not agree with any changes, you should stop using the service. Continued access to Streamit Laravel after modifications indicates your acceptance of the updated terms.</p>\n<p><strong>14. Governing Law</strong></p>\n<p>These Terms and Conditions shall be governed by and construed in accordance with the laws of the jurisdiction in which Iqonic Design operates. Any legal actions arising from these terms must be filed in the appropriate courts of that jurisdiction. If any provision of these terms is found to be unenforceable, the remaining provisions will remain in full force and effect. By using Streamit Laravel, you consent to the exclusive jurisdiction of the courts located in that jurisdiction.</p>\n<p><strong>15. Contact Us</strong></p>\n<p>If you have any questions, concerns, or comments about these Terms and Conditions, please contact us at:</p>\n<p>- Email: hello@iqonic.design</p>\n<p><strong>We appreciate your cooperation and understanding of these Terms and Conditions. They are designed to protect both your rights and those of our users, ensuring a secure and enjoyable streaming experience on Streamit Laravel.</strong></p>\n<p>&nbsp;</p>', 1, NULL, 1, NULL, '2024-09-27 22:19:15', '2024-10-17 06:38:56', NULL),
(3, 'Help and Support', 'help-and-support', NULL, '<p>Welcome to Streamit Laravel Help &amp; Support! At Iqonic Design, we strive to offer you the best streaming experience possible. Should you have any questions, concerns, or need assistance with Streamit Laravel, you&rsquo;ve come to the right place. Our dedicated support team is here to help you with technical issues, general queries, and everything in between. We are committed to ensuring a smooth and enjoyable streaming experience.</p>\n<p><strong>Frequently Asked Questions (FAQs)</strong></p>\n<p>Before contacting us, we highly recommend checking our [FAQ Page] for common issues and their solutions. We continuously update this page to address frequently asked user queries, offering you the quickest route to a solution.</p>\n<p><strong>Contact Support</strong></p>\n<p>If you need further assistance, feel free to contact our support team at:</p>\n<p>📧 <strong>Email: hello@iqonic.design</strong></p>\n<p>We aim to respond to all queries within 24 to 48 hours (Monday through Friday). Our priority is resolving your issue as swiftly as possible.</p>\n<p><strong>How Can We Assist You?</strong></p>\n<p>Our support services include:</p>\n<p><strong>1. Account &amp; Subscription Issues&nbsp;&nbsp;</strong></p>\n<p>&nbsp; &nbsp;- Experiencing issues with your account setup, subscription, or payments? We&rsquo;re available to assist with any difficulties you encounter during the process of managing your account or subscription plan.</p>\n<p><strong>2. App Navigation &amp; Features&nbsp;&nbsp;</strong></p>\n<p>&nbsp; &nbsp;- Whether you\'re a new user or need help with specific features, we can guide you. Streamit Laravel is designed with user-friendly features, and we are here to help you make the most out of them.</p>\n<p><strong>3. Technical Support&nbsp;&nbsp;</strong></p>\n<p>&nbsp; &nbsp;- Facing technical difficulties with the app? Our technical team is prepared to assist with any malfunctions, connectivity problems, or performance issues to ensure that your streaming experience is uninterrupted.</p>\n<p><strong>4. Content Inquiries&nbsp;</strong>&nbsp;</p>\n<p>&nbsp; &nbsp;- Do you have questions about our content? We&rsquo;re happy to clarify any concerns regarding the availability, features, or quality of the content in our library.</p>\n<p><strong>5. Feedback &amp; Suggestions&nbsp;&nbsp;</strong></p>\n<p>&nbsp; &nbsp;- We value your feedback! Your input helps us improve your experience, and we carefully consider all suggestions and reported issues.</p>\n<p><strong>Quick Assistance Steps</strong></p>\n<p><strong>For a faster response, follow these steps:</strong></p>\n<p>1. Check our FAQ page to see if your issue has already been addressed.</p>\n<p>2. Email us at hello@iqonic.design with your query.</p>\n<p>3. Include the following details for faster resolution:</p>\n<p>- Your device model and operating system (OS) version.</p>\n<p>- A brief description of the issue.</p>\n<p>- Screenshots or steps to replicate the problem (if applicable).</p>\n<p><strong>Help Us Help You</strong></p>\n<p>To help us serve you better, please provide the following information in your support request:</p>\n<p>- Your registered email address associated with Streamit Laravel.</p>\n<p>- A detailed description of the issue you\'re experiencing.</p>\n<p>- Any relevant steps to replicate the problem, including device and app information.</p>\n<p>&nbsp;</p>\n<p><strong>We are committed to ensuring your experience is smooth and enjoyable. Our team works diligently to resolve all queries and technical issues, helping you return to your seamless streaming experience as quickly as possible.</strong></p>\n<p><strong>Thank you for choosing Streamit Laravel! Your satisfaction is our top priority, and we&rsquo;re always here to assist you with any concerns or questions.</strong></p>', 1, NULL, 1, NULL, '2024-09-27 22:19:15', '2024-10-17 06:44:35', NULL),
(4, 'Refund and Cancellation Policy', 'refund-and-cancellation-policy', NULL, '<p>At Iqonic Design, we strive to ensure our customers have a seamless experience with Streamit Laravel. Please read our Refund and Cancellation Policy carefully to understand your rights and obligations.</p>\n<p><strong>1. Subscription Cancellations</strong></p>\n<p>You may cancel your subscription to Streamit Laravel at any time. Upon cancellation:</p>\n<p><strong>- Continued Access:</strong> You will retain access to premium content and services until the end of your current billing cycle. There will be no disruption in service during this period.</p>\n<p><strong>- No Refund for Partial Periods:</strong> We do not provide refunds for unused portions of the subscription period. Your access will remain until the next billing date.</p>\n<p><strong>- How to Cancel:</strong> To cancel your subscription, visit your account settings in the app or contact our support team at hello@iqonic.design. Ensure that you follow the instructions clearly to avoid any confusion regarding cancellation timing.</p>\n<p><strong>2. Refund Eligibility</strong></p>\n<p><strong>Refunds may be granted under the following circumstances:</strong></p>\n<p><strong>- Accidental Billing:</strong> If you were incorrectly charged due to a technical error or duplicate billing, please contact us immediately to resolve the issue.</p>\n<p><strong>- Unauthorized Transactions:</strong> In the event your account was used without your permission, please notify us within 7 days of the transaction to be eligible for a refund.</p>\n<p><strong>Non-Refundable Cases:</strong></p>\n<p>Refunds will not be provided under the following circumstances:</p>\n<p><strong>- Change of Mind:</strong> If you decide you no longer want the subscription after purchase, we cannot provide a refund.</p>\n<p><strong>- Dissatisfaction with Content:</strong> Refunds will not be given solely based on dissatisfaction with the available content unless the service is defective or significantly misrepresented.</p>\n<p><strong>- Lack of Usage:</strong> If you do not use the service after subscribing, you will not be eligible for a refund.</p>\n<p><strong>3. Refund Process</strong></p>\n<p>If you qualify for a refund, the process will be as follows:</p>\n<p><strong>- Contact Support:</strong> Email us at hello@iqonic.design with the following details:</p>\n<p>&nbsp; * Your registered email address.</p>\n<p>&nbsp; * Subscription details (Plan name, Payment Date).</p>\n<p>&nbsp; * Reason for the refund request.</p>\n<p><strong>- Verification Process:</strong> We will review your request and confirm your eligibility for a refund. Additional information may be requested to complete this verification.</p>\n<p><strong>- Processing Time:</strong> Once approved, refunds will be processed within 7&ndash;10 business days. The refunded amount will be credited to the original payment method used during the transaction.</p>\n<p><strong>4. Free Trials</strong></p>\n<p>If you sign up for a free trial and choose not to continue with a paid subscription, you must cancel before the trial period ends to avoid being charged. No refunds will be provided if the subscription is not canceled before the trial expiration date. Ensure you monitor your trial period closely to avoid unwanted charges.</p>\n<p><strong>5. Changes to This Policy</strong></p>\n<p>Iqonic Design reserves the right to update or modify this Refund and Cancellation Policy at any time. We will notify users of any significant changes via email or in-app notifications. Continued use of Streamit Laravel after changes are made will signify your acceptance of the revised policy.</p>\n<p><strong>6. Contact Us</strong></p>\n<p>If you have any questions about this policy or need further assistance, please reach out to us at:</p>\n<p><strong>📧 Email: hello@iqonic.design&nbsp;&nbsp;</strong></p>\n<p><strong>We are always available to assist with any concerns you may have about refunds or cancellations. Your satisfaction is important to us, and we strive to address any issues promptly.</strong></p>\n<p><strong>Thank you for choosing Streamit Laravel and for being a valued customer of Iqonic Design!</strong></p>\n<p>Company:<strong>&nbsp;Iqonic Design&nbsp;&nbsp;</strong></p>\n<p>Product:<strong>&nbsp;Streamit Laravel&nbsp;&nbsp;</strong></p>\n<p>Support Contact:<strong>&nbsp;hello@iqonic.design</strong></p>', 1, NULL, 1, NULL, '2024-09-27 22:19:15', '2024-10-17 07:04:17', NULL),
(5, 'Data Deletion Request', 'data-deletation-request', NULL, '<p>At Iqonic Design, we value the privacy of our users and are committed to ensuring your personal data is handled securely. If you wish to request the deletion of your data associated with Streamit Laravel, please review the following guidelines.</p>\n<p><strong>1. Right to Data Deletion</strong></p>\n<p>In accordance with global data protection laws, you have the right to request the deletion of your personal data stored within our systems. Once your request is verified, we will remove your data from our servers unless certain legal obligations require us to retain it.</p>\n<p><strong>2. Information We Delete</strong></p>\n<p>When submitting a data deletion request, the following data will be removed:</p>\n<p><strong>* Personal Information:</strong> Name, email address, phone number, and any other personally identifiable information.</p>\n<p><strong>* Account Details:</strong> Subscription history, payment details, and usage data.</p>\n<p><strong>* Watchlists and Preferences:</strong> Any watchlist, preferences, or custom content recommendations.</p>\n<p><strong>**Please note: After the data is deleted, you will no longer have access to your Streamit Laravel account, and the action is irreversible**</strong></p>\n<p><strong>3. How to Submit a Data Deletion Request</strong></p>\n<p>To request the deletion of your data:</p>\n<p><strong>* Email Request:</strong> Send an email to hello@iqonic.design with the subject line \"Data Deletion Request.\"</p>\n<p><strong>* Required Information:</strong> Include the following details in your email:</p>\n<p>&nbsp; &nbsp;- Your full name.</p>\n<p>&nbsp; &nbsp;- Your registered email address.</p>\n<p>&nbsp; &nbsp;- Reason for your data deletion request (optional).</p>\n<p><strong>* Verification:</strong> We may contact you to verify your identity before proceeding with the deletion.</p>\n<p><strong>4. Processing Time</strong></p>\n<p>Upon receiving and verifying your request, we will process the deletion within 30 days. You will be notified once your data has been successfully deleted.</p>\n<p><strong>5. Exceptions to Data Deletion</strong></p>\n<p>Certain data may not be eligible for deletion if:</p>\n<p>- Legal Obligations: We are required to retain your data for legal, regulatory, or contractual reasons.</p>\n<p>- Ongoing Transactions: If there are any unresolved issues such as pending transactions, your data may be retained until those issues are resolved.</p>\n<p><strong>6. Impact of Data Deletion</strong></p>\n<p>Once your data is deleted:</p>\n<p>- You will lose access to your Streamit Laravel account.</p>\n<p>- Any remaining subscription time will be forfeited, and no refunds will be issued.</p>\n<p>- You will need to create a new account if you wish to use our services again in the future.</p>\n<p><strong>7. Contact Us</strong></p>\n<p>If you have any questions about this policy or need assistance with your data deletion request, please reach out to us at:</p>\n<p>📧 Email: hello@iqonic.design&nbsp;&nbsp;</p>\n<p>&nbsp;</p>\n<p><strong>Our team is here to help you with any concerns related to your personal data and privacy.</strong></p>\n<p><strong>Thank you for using Streamit Laravel, and for trusting Iqonic Design with your privacy.</strong></p>', 1, NULL, 1, NULL, '2024-09-27 22:19:15', '2024-10-17 07:04:36', NULL),
(6, 'About Us', 'about-us', NULL, '<p><strong>About Streamit Laravel by Iqonic Design</strong></p>\n<p>Welcome to Streamit Laravel, a next-generation streaming platform proudly developed by Iqonic Design. We specialize in creating cutting-edge digital solutions, and Streamit Laravel is our latest breakthrough in the world of online entertainment. Whether you\'re a movie lover, a TV show binge-watcher, or enjoy live events, our platform is designed to deliver high-quality content directly to your device, ensuring a seamless, uninterrupted experience. Streamit Laravel combines advanced technology with a user-friendly interface to cater to audiences worldwide.</p>\n<p><strong>Our Mission</strong></p>\n<p>Our mission at Iqonic Design is to reshape how digital content is consumed by creating a streaming platform that prioritizes speed, reliability, and personalization. Streamit Laravel is built using the latest technologies to provide users with superior streaming quality, customized recommendations, and an easy-to-use content management system. We are committed to making entertainment accessible and enjoyable for all audiences, whether you\'re at home or on the go.</p>\n<p><strong>Why Choose Streamit Laravel?</strong></p>\n<p>- Top-Tier Streaming Experience: Dive into high-definition and 4K content with smooth playback, ensuring no buffering even during high-traffic periods.</p>\n<p>- Personalized Content Recommendations: Our AI-driven recommendation system curates content based on your viewing history, making it easy to discover your next favorite show or movie.</p>\n<p>- Multi-Device Compatibility: Enjoy Streamit Laravel on your mobile, tablet, smart TV, or desktop, with seamless syncing across all devices.</p>\n<p>- Exclusive Content &amp; Features: Gain access to exclusive shows, movies, and live events that are unavailable on other platforms, along with features like offline downloads and customizable viewing settings.</p>\n<p>- Scalable &amp; Customizable for Developers: Streamit Laravel offers a flexible architecture that developers can tailor to specific needs, with options for scalability and integrations with other platforms.</p>\n<p>- Comprehensive Content Management: Our platform is designed for content creators and streamers, allowing them to efficiently manage their movies, TV shows, episodes, and live TV in one easy-to-use dashboard.</p>\n<p>- Enhanced Security &amp; Privacy: We employ cutting-edge encryption and security protocols to safeguard your data and protect against unauthorized access or breaches.</p>\n<p><strong>Our Vision&nbsp;&nbsp;</strong></p>\n<p>We envision a world where entertainment is no longer bound by geographical or technological limitations. With Streamit Laravel, we aim to revolutionize digital content consumption, offering users the flexibility to watch anything, anywhere, at any time. Our vision extends beyond just entertainment&mdash;we seek to empower creators by providing a dynamic platform where they can showcase their content to a global audience while maintaining full control over their media. As technology evolves, so does Streamit Laravel, constantly improving to meet the demands of today&rsquo;s and tomorrow&rsquo;s viewers.</p>\n<p><strong>What Sets Us Apart?</strong></p>\n<p><strong>- Adaptive Streaming Technology:</strong> Our adaptive bitrate streaming automatically adjusts video quality based on your internet connection, ensuring uninterrupted playback at the highest quality your network supports.</p>\n<p><strong>- Collaborative Content Creation:</strong> Streamit Laravel allows content creators to collaborate, share, and co-produce projects, fostering a community of innovation and creativity.</p>\n<p><strong>- Immersive Viewing Experience:</strong> Our platform offers advanced features like multi-language subtitles, customizable captions, and interactive content for an enhanced viewing experience.</p>\n<p><strong>- Diverse Genre Library:</strong> Explore a wide range of genres, from action and thrillers to romance, horror, and documentaries. Whatever your preference, there&rsquo;s something for everyone on Streamit Laravel.</p>\n<p><strong>- Real-Time Notifications &amp; Updates:</strong> Stay updated with new releases, exclusive content, and upcoming live events with personalized notifications based on your preferences.</p>\n<p><strong>Connect with Us&nbsp;&nbsp;</strong></p>\n<p>We value our community and encourage feedback to help us improve. If you have any questions, suggestions, or require assistance, our support team is ready to help:</p>\n<p><strong>📧 Support Email: hello@iqonic.design</strong></p>\n<p>Join us in our journey to transform the entertainment landscape with Streamit Laravel&mdash;where technology and creativity come together to offer the ultimate streaming experience.</p>\n<p>Company:&nbsp;<strong>Iqonic Design&nbsp;&nbsp;</strong></p>\n<p>Product:&nbsp;<strong>Streamit Laravel&nbsp;&nbsp;</strong></p>\n<p>Support Contact:&nbsp;<strong>hello@iqonic.design</strong></p>', 1, NULL, 1, NULL, '2024-09-27 22:19:15', '2024-10-17 07:03:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payperviewstransactions`
--

CREATE TABLE `payperviewstransactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_type` varchar(191) NOT NULL,
  `payment_status` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `pay_per_view_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_per_views`
--

CREATE TABLE `pay_per_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `content_price` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_percentage` decimal(5,2) DEFAULT NULL,
  `first_play_date` datetime DEFAULT NULL,
  `view_expiry_date` timestamp NULL DEFAULT NULL,
  `access_duration` int(11) DEFAULT NULL,
  `available_for` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `is_fixed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `is_fixed`, `created_at`, `updated_at`) VALUES
(1, 'edit_settings', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(2, 'view_logs', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(3, 'view_blogs', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(4, 'add_blogs', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(5, 'edit_blogs', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(6, 'delete_blogs', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(7, 'restore_blogs', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(8, 'force_delete_blogs', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(9, 'view_genres', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(10, 'add_genres', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(11, 'edit_genres', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(12, 'delete_genres', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(13, 'restore_genres', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(14, 'force_delete_genres', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(15, 'view_movies', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(16, 'add_movies', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(17, 'edit_movies', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(18, 'delete_movies', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(19, 'restore_movies', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(20, 'force_delete_movies', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(21, 'view_tvshows', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(22, 'add_tvshows', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(23, 'edit_tvshows', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(24, 'delete_tvshows', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(25, 'restore_tvshows', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(26, 'force_delete_tvshows', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(27, 'view_seasons', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(28, 'add_seasons', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(29, 'edit_seasons', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(30, 'delete_seasons', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(31, 'restore_seasons', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(32, 'force_delete_seasons', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(33, 'view_episodes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(34, 'add_episodes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(35, 'edit_episodes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(36, 'delete_episodes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(37, 'restore_episodes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(38, 'force_delete_episodes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(39, 'view_videos', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(40, 'add_videos', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(41, 'edit_videos', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(42, 'delete_videos', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(43, 'restore_videos', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(44, 'force_delete_videos', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(45, 'view_tvcategory', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(46, 'add_tvcategory', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(47, 'edit_tvcategory', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(48, 'delete_tvcategory', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(49, 'restore_tvcategory', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(50, 'force_delete_tvcategory', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(51, 'view_tvchannel', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(52, 'add_tvchannel', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(53, 'edit_tvchannel', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(54, 'delete_tvchannel', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(55, 'restore_tvchannel', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(56, 'force_delete_tvchannel', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(57, 'view_actor', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(58, 'add_actor', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(59, 'edit_actor', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(60, 'delete_actor', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(61, 'restore_actor', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(62, 'force_delete_actor', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(63, 'view_director', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(64, 'add_director', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(65, 'edit_director', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(66, 'delete_director', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(67, 'restore_director', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(68, 'force_delete_director', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(69, 'view_plans', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(70, 'add_plans', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(71, 'edit_plans', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(72, 'delete_plans', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(73, 'restore_plans', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(74, 'force_delete_plans', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(75, 'view_planlimitation', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(76, 'add_planlimitation', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(77, 'edit_planlimitation', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(78, 'delete_planlimitation', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(79, 'restore_planlimitation', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(80, 'force_delete_planlimitation', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(81, 'view_subscriptions', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(82, 'add_subscriptions', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(83, 'edit_subscriptions', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(84, 'delete_subscriptions', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(85, 'restore_subscriptions', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(86, 'force_delete_subscriptions', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(87, 'view_banners', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(88, 'add_banners', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(89, 'edit_banners', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(90, 'delete_banners', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(91, 'restore_banners', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(92, 'force_delete_banners', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(93, 'view_currency', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(94, 'add_currency', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(95, 'edit_currency', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(96, 'delete_currency', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(97, 'restore_currency', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(98, 'force_delete_currency', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(99, 'view_notification', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(100, 'add_notification', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(101, 'edit_notification', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(102, 'delete_notification', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(103, 'restore_notification', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(104, 'force_delete_notification', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(105, 'view_notification_template', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(106, 'add_notification_template', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(107, 'edit_notification_template', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(108, 'delete_notification_template', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(109, 'restore_notification_template', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(110, 'force_delete_notification_template', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(111, 'view_country', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(112, 'add_country', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(113, 'edit_country', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(114, 'delete_country', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(115, 'restore_country', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(116, 'force_delete_country', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(117, 'view_city', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(118, 'add_city', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(119, 'edit_city', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(120, 'delete_city', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(121, 'restore_city', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(122, 'force_delete_city', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(123, 'view_location', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(124, 'add_location', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(125, 'edit_location', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(126, 'delete_location', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(127, 'restore_location', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(128, 'force_delete_location', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(129, 'view_state', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(130, 'add_state', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(131, 'edit_state', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(132, 'delete_state', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(133, 'restore_state', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(134, 'force_delete_state', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(135, 'view_constant', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(136, 'add_constant', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(137, 'edit_constant', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(138, 'delete_constant', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(139, 'restore_constant', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(140, 'force_delete_constant', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(141, 'view_world', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(142, 'add_world', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(143, 'edit_world', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(144, 'delete_world', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(145, 'restore_world', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(146, 'force_delete_world', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(147, 'view_subscription', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(148, 'add_subscription', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(149, 'edit_subscription', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(150, 'delete_subscription', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(151, 'restore_subscription', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(152, 'force_delete_subscription', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(153, 'view_castcrew', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(154, 'add_castcrew', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(155, 'edit_castcrew', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(156, 'delete_castcrew', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(157, 'restore_castcrew', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(158, 'force_delete_castcrew', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(159, 'view_livetv', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(160, 'add_livetv', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(161, 'edit_livetv', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(162, 'delete_livetv', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(163, 'restore_livetv', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(164, 'force_delete_livetv', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(165, 'view_video', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(166, 'add_video', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(167, 'edit_video', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(168, 'delete_video', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(169, 'restore_video', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(170, 'force_delete_video', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(171, 'view_media', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(172, 'add_media', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(173, 'edit_media', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(174, 'delete_media', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(175, 'restore_media', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(176, 'force_delete_media', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(177, 'view_tvshow', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(178, 'add_tvshow', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(179, 'edit_tvshow', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(180, 'delete_tvshow', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(181, 'restore_tvshow', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(182, 'force_delete_tvshow', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(183, 'view_taxes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(184, 'add_taxes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(185, 'edit_taxes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(186, 'delete_taxes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(187, 'restore_taxes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(188, 'force_delete_taxes', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(189, 'view_page', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(190, 'add_page', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(191, 'edit_page', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(192, 'delete_page', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(193, 'restore_page', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(194, 'force_delete_page', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(195, 'view_dashboard_setting', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(196, 'add_dashboard_setting', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(197, 'edit_dashboard_setting', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(198, 'delete_dashboard_setting', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(199, 'restore_dashboard_setting', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(200, 'force_delete_dashboard_setting', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(201, 'view_app_config', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(202, 'add_app_config', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(203, 'edit_app_config', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(204, 'delete_app_config', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(205, 'restore_app_config', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(206, 'force_delete_app_config', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(207, 'view_constants', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(208, 'add_constants', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(209, 'edit_constants', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(210, 'delete_constants', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(211, 'restore_constants', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(212, 'force_delete_constants', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(213, 'view_coupon', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(214, 'add_coupon', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(215, 'edit_coupon', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(216, 'delete_coupon', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(217, 'restore_coupon', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(218, 'force_delete_coupon', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(219, 'view_setting', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(220, 'add_setting', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(221, 'edit_setting', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(222, 'delete_setting', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(223, 'restore_setting', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(224, 'force_delete_setting', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(225, 'setting_bussiness', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(226, 'setting_misc', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(227, 'setting_custom_code', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(228, 'setting_customization', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(229, 'setting_mail', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(230, 'setting_notification', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(231, 'setting_intigrations', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(232, 'setting_language', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(233, 'setting_invoice', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(234, 'setting_module', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(235, 'setting_app_setting', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(236, 'view_ads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(237, 'add_ads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(238, 'edit_ads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(239, 'delete_ads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(240, 'restore_ads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(241, 'force_delete_ads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(242, 'view_vastads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(243, 'add_vastads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(244, 'edit_vastads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(245, 'delete_vastads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(246, 'restore_vastads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(247, 'force_delete_vastads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(248, 'view_customads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(249, 'add_customads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(250, 'edit_customads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(251, 'delete_customads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(252, 'restore_customads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35'),
(253, 'force_delete_customads', 'web', 1, '2025-11-20 07:04:35', '2025-11-20 07:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` longtext DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `identifier` varchar(191) NOT NULL,
  `android_identifier` varchar(191) DEFAULT NULL,
  `apple_identifier` varchar(191) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_percentage` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `level` bigint(20) NOT NULL DEFAULT 0,
  `duration` varchar(191) DEFAULT NULL,
  `duration_value` bigint(20) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `identifier`, `android_identifier`, `apple_identifier`, `price`, `discount`, `discount_percentage`, `total_price`, `level`, `duration`, `duration_value`, `status`, `description`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 'basic', NULL, NULL, 5, 0, NULL, 5, 1, 'week', 1, 1, 'The Basic Plan offers access to a limited selection of content on a weekly basis, perfect for casual viewers.', 2, 2, NULL, NULL, '2024-07-10 23:12:21', '2024-07-10 23:12:21'),
(2, 'Premium Plan', 'premium_plan', NULL, NULL, 20, 0, NULL, 20, 2, 'month', 1, 1, '<p>The Premium Plan provides monthly access to a wider range of content, including exclusive shows and features.</p>', 2, 2, NULL, NULL, '2024-07-10 23:13:13', '2024-10-08 03:58:11'),
(3, 'Ultimate Plan', 'ultimate_plan', NULL, NULL, 50, 0, NULL, 50, 3, 'month', 3, 1, 'The Ultimate Plan offers quarterly access with additional perks, such as early access to new releases and special content.', 2, 2, NULL, NULL, '2024-07-10 23:15:14', '2024-07-10 23:15:14'),
(4, 'Elite Plan', 'elite_plan', NULL, NULL, 80, 0, NULL, 80, 4, 'year', 1, 1, 'The Elite Plan grants yearly access to all content, including premium and exclusive features, perfect for avid viewers.', 2, 2, NULL, NULL, '2024-07-10 23:15:51', '2024-07-10 23:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `planlimitation`
--

CREATE TABLE `planlimitation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planlimitation`
--

INSERT INTO `planlimitation` (`id`, `title`, `slug`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Video Cast', 'video-cast', 'Enhance your viewing experience with our Video Cast feature. Seamlessly stream your favorite shows and movies from your device to your TV or other compatible screens. Enjoy high-quality playback and easy controls for a truly immersive entertainment experience.', 1, 2, 2, NULL, '2024-07-10 05:43:04', '2024-07-10 05:43:04', NULL),
(2, 'Ads', 'ads', 'Discover a new way to enjoy content with minimal interruptions through our Ads feature. Our strategically placed advertisements are designed to provide relevant and engaging information without overwhelming your viewing experience.', 1, 2, 2, NULL, '2024-07-10 05:44:45', '2024-07-10 05:44:45', NULL),
(3, 'Device Limit', 'device-limit', 'Manage your device connections effortlessly with our Device Limit feature. Easily monitor and control the number of devices linked to your account, ensuring a secure and personalized streaming experience.', 1, 2, 2, NULL, '2024-07-10 05:46:10', '2024-07-10 05:46:10', NULL),
(4, 'Download Status', 'download-status', 'Keep track of your content downloads with our Download Status feature. View the progress of your current downloads, check completed files, and manage your storage efficiently. This feature provides real-time updates, allowing you to pause, resume, or cancel downloads as needed, ensuring you have access to your favorite content anytime, even offline.', 1, 2, 2, NULL, '2024-07-10 05:47:41', '2024-07-10 05:47:41', NULL),
(5, 'Supported Device Type', 'supported-device-type', 'Our platform supports a wide range of devices including smartphones, tablets, smart TVs, and gaming consoles. Enjoy seamless streaming on any device with optimized performance and high-quality playback.', 1, 2, 2, NULL, '2024-07-10 05:50:00', '2024-07-10 05:50:00', NULL),
(6, 'Profile Limit', 'profile-limit', 'Manage and customize your streaming experience with our Profile Limit feature. Set limits on the number of profiles that can be created under a single account, ensuring each user enjoys a personalized experience while keeping account usage within your preferred parameters.', 1, 2, 2, NULL, '2024-09-19 06:30:00', '2024-09-19 06:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `planlimitation_mapping`
--

CREATE TABLE `planlimitation_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `planlimitation_id` int(11) DEFAULT NULL,
  `limitation_slug` varchar(191) DEFAULT NULL,
  `limitation_value` int(11) DEFAULT NULL,
  `limit` longtext DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planlimitation_mapping`
--

INSERT INTO `planlimitation_mapping` (`id`, `plan_id`, `planlimitation_id`, `limitation_slug`, `limitation_value`, `limit`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'video-cast', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 2, 'ads', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 3, 'device-limit', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 4, 'download-status', 1, '{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":0,\"2K\":0,\"4K\":0,\"8K\":0}', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, 1, 'video-cast', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, 2, 'ads', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 2, 3, 'device-limit', 1, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 2, 4, 'download-status', 1, '{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":1,\"2K\":0,\"4K\":0,\"8K\":0}', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 3, 1, 'video-cast', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 3, 2, 'ads', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 3, 3, 'device-limit', 1, '5', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 3, 4, 'download-status', 1, '{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":1,\"2K\":1,\"4K\":0,\"8K\":0}', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 4, 1, 'video-cast', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 4, 2, 'ads', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 4, 3, 'device-limit', 1, '8', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 4, 4, 'download-status', 1, '{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":1,\"2K\":1,\"4K\":1,\"8K\":1}', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, 5, 'supported-device-type', 1, '{\"tablet\":\"0\",\"laptop\":\"0\",\"mobile\":\"1\",\"tv\":\"0\"}', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, 6, 'profile-limit', 1, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 2, 5, 'supported-device-type', 1, '{\"tablet\":\"1\",\"laptop\":\"0\",\"mobile\":\"1\",\"tv\":\"0\"}', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 2, 6, 'profile-limit', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 3, 5, 'supported-device-type', 1, '{\"tablet\":\"0\",\"laptop\":\"1\",\"mobile\":\"1\",\"tv\":\"1\"}', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 3, 6, 'profile-limit', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 4, 5, 'supported-device-type', 1, '{\"tablet\":\"1\",\"laptop\":\"1\",\"mobile\":\"1\",\"tv\":\"1\"}', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 4, 6, 'profile-limit', 1, '4', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `review` longtext DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `entertainment_id`, `user_id`, `rating`, `review`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 12, 5, 'A gripping storyline with unexpected twists. Keeps you hooked till the very end. 🤯🔥', NULL, NULL, NULL, '2025-04-03 07:04:59', '2025-04-03 07:04:59', NULL),
(2, 5, 13, 4, 'Amazing atmosphere and spooky vibes. Perfect for horror fans! 👁️🌑', NULL, NULL, NULL, '2025-08-10 07:05:00', '2025-08-10 07:05:00', NULL),
(3, 14, 8, 4, 'Keeps you guessing with every turn. The Monkey King\'s journey is riveting and intense. 🤯👀', NULL, NULL, NULL, '2025-09-28 07:05:00', '2025-09-28 07:05:00', NULL),
(4, 8, 11, 5, 'Non-stop action from start to finish! The fight scenes were incredible. 🎬💥', NULL, NULL, NULL, '2025-08-21 07:05:00', '2025-08-21 07:05:00', NULL),
(5, 2, 10, 4, 'Absolutely loved the showdown scenes! The tension is palpable throughout. 🥳🎬', NULL, NULL, NULL, '2025-03-21 07:05:00', '2025-03-21 07:05:00', NULL),
(6, 13, 9, 4, 'The cinematography and special effects are top-notch. A visual treat for action enthusiasts. 🌟🎥', NULL, NULL, NULL, '2025-09-17 07:05:00', '2025-09-17 07:05:00', NULL),
(7, 6, 14, 5, 'Absolutely gripping from the first episode! The suspense is incredible. 🕵️‍♂️🔍', NULL, NULL, NULL, '2025-02-15 07:05:00', '2025-02-15 07:05:00', NULL),
(8, 17, 7, 4, 'Hilarious from start to finish! Couldn\'t stop laughing! 😂👏', NULL, NULL, NULL, '2024-12-27 07:05:00', '2024-12-27 07:05:00', NULL),
(9, 6, 6, 3, 'Brilliantly executed with superb acting. A must-watch for thriller fans. 🎭🌟', NULL, NULL, NULL, '2025-06-27 07:05:00', '2025-06-27 07:05:00', NULL),
(10, 7, 3, 4, 'Fantastic choreography and intense combat sequences. Top-notch action film! 💪🎥', NULL, NULL, NULL, '2025-10-18 07:05:00', '2025-10-18 07:05:00', NULL),
(11, 4, 5, 4, 'Each episode leaves you wanting more. The storyline is so gripping! 🎉🕶️', NULL, NULL, NULL, '2025-02-18 07:05:00', '2025-02-18 07:05:00', NULL),
(12, 1, 4, 5, 'Perfectly blends psychological horror with supernatural elements, keeping you on the edge of your seat and craving for more after each episode. 🔮😱', NULL, NULL, NULL, '2025-08-22 07:05:00', '2025-08-22 07:05:00', NULL),
(13, 9, 9, 5, 'A thrilling ride that keeps you hooked with its intense plot twists and stunning visuals. 🎬🌟', NULL, NULL, NULL, '2025-09-26 07:05:00', '2025-09-26 07:05:00', NULL),
(14, 10, 13, 5, 'Loved the creativity and imagination in every scene. It\'s a delightful watch! 🌈✨', NULL, NULL, NULL, '2025-02-14 07:05:00', '2025-02-14 07:05:00', NULL),
(15, 1, 3, 4, 'A chilling series that grips you from the first scene to the last, leaving you haunted by its eerie atmosphere and suspenseful plot twists. 👻🌑', NULL, NULL, NULL, '2025-06-13 07:05:00', '2025-06-13 07:05:00', NULL),
(16, 6, 5, 4, 'The suspense is unbearable! Can’t wait for the next episode. 😬🚀', NULL, NULL, NULL, '2025-10-09 07:05:00', '2025-10-09 07:05:00', NULL),
(17, 3, 8, 5, 'My favorite show this season! The Guardian\'s Challenge episode was thrilling! 🛡️🚀', NULL, NULL, NULL, '2025-11-03 07:05:00', '2025-11-03 07:05:00', NULL),
(18, 10, 3, 4, 'A magical adventure with charming characters and beautiful animation! 🌼🌟', NULL, NULL, NULL, '2025-09-17 07:05:00', '2025-09-17 07:05:00', NULL),
(19, 8, 4, 5, 'Amazing cinematography and special effects! Truly a visual treat. 🎥✨', NULL, NULL, NULL, '2025-01-19 07:05:00', '2025-01-19 07:05:00', NULL),
(20, 11, 10, 4, 'Secrets of Zambezia delivers a powerful message with humor and adventure. 🌍😄', NULL, NULL, NULL, '2025-07-07 07:05:00', '2025-07-07 07:05:00', NULL),
(21, 16, 5, 4, 'Couldn\'t stop laughing! The antics of Tim and Tom are pure genius. 🤣🎉', NULL, NULL, NULL, '2025-04-12 07:05:00', '2025-04-12 07:05:00', NULL),
(22, 7, 7, 5, 'A thrilling ride with non-stop adrenaline! Couldn\'t take my eyes off the screen. 🚁🔥', NULL, NULL, NULL, '2025-10-24 07:05:00', '2025-10-24 07:05:00', NULL),
(23, 5, 4, 5, 'The suspense and horror elements are top-notch. Can\'t wait for more! 👻🔪', NULL, NULL, NULL, '2025-05-13 07:05:00', '2025-05-13 07:05:00', NULL),
(24, 15, 8, 5, 'Deep Sea Mysteries keeps you at the edge of your seat. Unveiling secrets of the deep has never been more thrilling! 🚢💀', NULL, NULL, NULL, '2025-07-02 07:05:00', '2025-07-02 07:05:00', NULL),
(25, 9, 7, 5, 'Loved the character development and the emotional depth. It\'s more than just action- it\'s a redemption story! 👍🎥', NULL, NULL, NULL, '2025-01-21 07:05:00', '2025-01-21 07:05:00', NULL),
(26, 5, 8, 5, 'Each episode gets better and scarier. Highly recommend! 🕸️🕷️', NULL, NULL, NULL, '2025-01-30 07:05:00', '2025-01-30 07:05:00', NULL),
(27, 9, 14, 3, 'The Gunfighter\'s Redemption is a true masterpiece of action cinema. It leaves you wanting more with its gripping storyline and epic showdowns. 🏆🌌', NULL, NULL, NULL, '2025-04-16 07:05:00', '2025-04-16 07:05:00', NULL),
(28, 10, 4, 3, 'Daizy\'s Enchanted Journey brings a smile to your face with its enchanting story. 🌸😄', NULL, NULL, NULL, '2025-03-08 07:05:00', '2025-03-08 07:05:00', NULL),
(29, 6, 3, 4, 'Twists and turns at every corner! Keeps you guessing until the end. 🤯🔎', NULL, NULL, NULL, '2025-11-02 07:05:00', '2025-11-02 07:05:00', NULL),
(30, 2, 9, 4, 'An intense start with plenty of action and a gripping storyline. Can\'t wait for more! 🤠🔥', NULL, NULL, NULL, '2025-05-29 07:05:00', '2025-05-29 07:05:00', NULL),
(31, 5, 3, 3, 'A chilling start that kept me hooked from the first episode. So creepy! 😱🖤', NULL, NULL, NULL, '2024-12-08 07:05:00', '2024-12-08 07:05:00', NULL),
(32, 9, 10, 5, 'The Gunfighter\'s quest for redemption is both heart-wrenching and exhilarating. Captivating from the first shot to the last. 💔🔫', NULL, NULL, NULL, '2025-06-23 07:05:00', '2025-06-23 07:05:00', NULL),
(33, 1, 5, 4, 'An immersive journey into darkness where every shadow hides a secret, keeping you guessing and terrified until the very end. 🕯️😨', NULL, NULL, NULL, '2025-06-26 07:05:00', '2025-06-26 07:05:00', NULL),
(34, 22, 14, 5, 'Impressive cinematography and a storyline that keeps you hooked till the end. 🎥👌', NULL, NULL, NULL, '2025-07-29 07:05:00', '2025-07-29 07:05:00', NULL),
(35, 14, 5, 5, 'Gripping storyline with unexpected twists and heart-pounding action scenes! 🐒👑', NULL, NULL, NULL, '2025-02-05 07:05:00', '2025-02-05 07:05:00', NULL),
(36, 13, 3, 4, 'Loved the protagonist\'s charisma and the intense plot twists. Keeps you guessing! 🔥🕵️‍♂️', NULL, NULL, NULL, '2025-02-11 07:05:00', '2025-02-11 07:05:00', NULL),
(37, 6, 4, 5, 'The plot is so intricate and well-crafted. A real edge-of-your-seat thriller. 😲🔥', NULL, NULL, NULL, '2025-04-26 07:05:00', '2025-04-26 07:05:00', NULL),
(38, 2, 11, 4, 'The characters are well-developed and the plot keeps you on the edge of your seat. 👍🕵️‍♂️', NULL, NULL, NULL, '2025-02-22 07:05:00', '2025-02-22 07:05:00', NULL),
(39, 3, 10, 4, 'Raziel\'s journey is inspiring and beautifully animated. Can\'t wait for more! 🎉🦄', NULL, NULL, NULL, '2025-05-20 07:05:00', '2025-05-20 07:05:00', NULL),
(40, 7, 9, 3, 'Heart-pounding action with a hint of suspense. Action movie buffs will enjoy every moment. 🎞️👏', NULL, NULL, NULL, '2025-06-18 07:05:00', '2025-06-18 07:05:00', NULL),
(41, 4, 12, 4, 'The suspense in every episode keeps me hooked! Can\'t get enough of it. 🔍🎬', NULL, NULL, NULL, '2025-10-28 07:05:00', '2025-10-28 07:05:00', NULL),
(42, 10, 5, 5, 'Perfect for family movie night - captivating and full of wonder! 🍿👪', NULL, NULL, NULL, '2024-11-24 07:05:00', '2024-11-24 07:05:00', NULL),
(43, 5, 7, 5, 'The storyline is gripping and the scares are genuine. Loving it! 🎃💀', NULL, NULL, NULL, '2025-04-23 07:05:00', '2025-04-23 07:05:00', NULL),
(44, 12, 8, 4, 'A visually stunning adventure that captivates from start to finish! 🎬🌟', NULL, NULL, NULL, '2024-11-29 07:05:00', '2024-11-29 07:05:00', NULL),
(45, 22, 11, 5, 'Educational yet entertaining, perfect for history buffs and casual viewers alike. 📚📺', NULL, NULL, NULL, '2025-01-28 07:05:00', '2025-01-28 07:05:00', NULL),
(46, 5, 6, 4, 'Edge-of-your-seat horror with a captivating plot. So intense! 🥶🏚️', NULL, NULL, NULL, '2025-04-06 07:05:00', '2025-04-06 07:05:00', NULL),
(47, 8, 3, 5, 'The characters were so well-developed, and the plot was intense. Loved every moment! 👍🌟', NULL, NULL, NULL, '2025-07-23 07:05:00', '2025-07-23 07:05:00', NULL),
(48, 6, 8, 5, 'The characters are compelling, and the mystery deepens with each episode. 👏🕵️‍♀️', NULL, NULL, NULL, '2024-12-17 07:05:00', '2024-12-17 07:05:00', NULL),
(49, 11, 6, 5, 'Loved the soundtrack! It perfectly complements the magical atmosphere of Zambezia. 🎵🎶', NULL, NULL, NULL, '2025-09-14 07:05:00', '2025-09-14 07:05:00', NULL),
(50, 15, 4, 5, 'The ocean depths come alive with mystery and danger. Riveting from start to finish. 🌊🦑', NULL, NULL, NULL, '2025-06-14 07:05:00', '2025-06-14 07:05:00', NULL),
(51, 6, 9, 3, 'Each episode unveils more secrets and keeps you hooked. Fantastic storytelling! 📚🎬', NULL, NULL, NULL, '2025-02-08 07:05:00', '2025-02-08 07:05:00', NULL),
(52, 7, 6, 4, 'Action-packed from start to finish! The stunts were mind-blowing. 🎬💥', NULL, NULL, NULL, '2025-06-25 07:05:00', '2025-06-25 07:05:00', NULL),
(53, 8, 13, 5, 'The pacing was perfect, never a dull moment. Can\'t wait for a sequel! 🚀🎉', NULL, NULL, NULL, '2025-04-23 07:05:00', '2025-04-23 07:05:00', NULL),
(54, 16, 14, 3, 'Tim and Tom\'s chemistry is unbeatable. I wish there were more movies like this! 🌟👬', NULL, NULL, NULL, '2025-10-29 07:05:00', '2025-10-29 07:05:00', NULL),
(55, 9, 6, 5, 'Action-packed and emotionally charged—this movie delivers on all fronts. A must-watch for action enthusiasts! 💥🎞️', NULL, NULL, NULL, '2025-04-20 07:05:00', '2025-04-20 07:05:00', NULL),
(56, 18, 11, 4, 'I couldn\'t get enough of the comedic timing in this film. Pure comedy gold! ⏱️😄', NULL, NULL, NULL, '2025-03-02 07:05:00', '2025-03-02 07:05:00', NULL),
(57, 8, 14, 5, 'A thrilling ride with heart-pounding moments. Definitely recommend it to action fans! 🎢👏', NULL, NULL, NULL, '2025-08-03 07:05:00', '2025-08-03 07:05:00', NULL),
(58, 11, 7, 5, 'The storyline is engaging, and the characters are lovable. A must-watch animation! 🐦💖', NULL, NULL, NULL, '2025-11-04 07:05:00', '2025-11-04 07:05:00', NULL),
(59, 5, 9, 5, 'The acting and special effects are fantastic. Truly terrifying! 🌲🧟‍♀️', NULL, NULL, NULL, '2025-08-25 07:05:00', '2025-08-25 07:05:00', NULL),
(60, 12, 14, 5, 'Clever humor and heartfelt moments make this a timeless classic. Highly recommend! 😄👏', NULL, NULL, NULL, '2025-01-23 07:05:00', '2025-01-23 07:05:00', NULL),
(61, 22, 4, 5, 'The costumes and set designs transport you back in time. A visual feast! 🎨✨', NULL, NULL, NULL, '2025-05-10 07:05:00', '2025-05-10 07:05:00', NULL),
(62, 9, 5, 4, 'Gripping action from start to finish! The Gunfighter\'s journey is packed with adrenaline-pumping scenes. 🤠🔥', NULL, NULL, NULL, '2025-07-31 07:05:00', '2025-07-31 07:05:00', NULL),
(63, 26, 14, 4, 'The scenery and music complement the story beautifully. It\'s a visual and emotional treat. 🎵🎥', NULL, NULL, NULL, '2025-01-15 07:05:00', '2025-01-15 07:05:00', NULL),
(64, 15, 11, 4, 'Intriguing characters and a plot that sinks its hooks deep. Thrills and suspense galore! 👀🎥', NULL, NULL, NULL, '2025-10-26 07:05:00', '2025-10-26 07:05:00', NULL),
(65, 17, 6, 5, 'Clever humor and witty dialogue make this a must-watch comedy! 🎭👍', NULL, NULL, NULL, '2025-01-06 07:05:00', '2025-01-06 07:05:00', NULL),
(66, 13, 14, 4, 'Gripping storyline with unexpected turns. I couldn\'t look away for a second! 🤯🔫', NULL, NULL, NULL, '2025-08-23 07:05:00', '2025-08-23 07:05:00', NULL),
(67, 19, 11, 5, 'Creepy atmosphere and unexpected twists make it a standout horror film. 🌑🕯️', NULL, NULL, NULL, '2025-11-01 07:05:00', '2025-11-01 07:05:00', NULL),
(68, 7, 8, 3, 'Explosive scenes and gripping storyline. Kept me at the edge of my seat throughout. 🌟🔫', NULL, NULL, NULL, '2025-02-04 07:05:00', '2025-02-04 07:05:00', NULL),
(69, 16, 10, 4, 'A delightful comedy that had me giggling throughout. Tim and Tom are my new favorites! 🎈😁', NULL, NULL, NULL, '2025-01-06 07:05:00', '2025-01-06 07:05:00', NULL),
(70, 7, 10, 5, 'Loved the plot twists and the lead actor\'s performance. Definitely worth watching! 👍🎬', NULL, NULL, NULL, '2025-08-22 07:05:00', '2025-08-22 07:05:00', NULL),
(71, 11, 3, 4, 'Captivating animation and a heartwarming storyline that keeps you engaged till the end. 🌟🎬', NULL, NULL, NULL, '2025-06-02 07:05:00', '2025-06-02 07:05:00', NULL),
(72, 16, 13, 5, 'A feel-good movie with endless laughs. Perfect for a movie night with friends! 🍿😆', NULL, NULL, NULL, '2024-12-03 07:05:00', '2024-12-03 07:05:00', NULL),
(73, 11, 11, 5, 'Beautifully crafted characters and stunning visuals. A delight for all ages! 🦅🎨', NULL, NULL, NULL, '2025-01-28 07:05:00', '2025-01-28 07:05:00', NULL),
(74, 23, 8, 5, 'A feel-good film that leaves you motivated and optimistic. 🎥🌻', NULL, NULL, NULL, '2025-04-26 07:05:00', '2025-04-26 07:05:00', NULL),
(75, 12, 12, 5, 'The animation is top-notch, and the plot is both engaging and thought-provoking. 🎥🤔', NULL, NULL, NULL, '2025-09-26 07:05:00', '2025-09-26 07:05:00', NULL),
(76, 13, 7, 3, 'Perfect blend of action and suspense. It kept me at the edge of my seat throughout. 👏🎭', NULL, NULL, NULL, '2025-01-30 07:05:00', '2025-01-30 07:05:00', NULL),
(77, 18, 14, 4, 'Frank and Fearless bring laughter and charm to the screen. Thoroughly entertaining! 😂🎉', NULL, NULL, NULL, '2025-06-17 07:05:00', '2025-06-17 07:05:00', NULL),
(78, 13, 4, 5, 'Action-packed from start to finish! The stunts and fight scenes are mind-blowing. 🎬💥', NULL, NULL, NULL, '2025-05-26 07:05:00', '2025-05-26 07:05:00', NULL),
(79, 17, 5, 3, 'The cast nailed it! Each scene had me in stitches. 🤣🎬', NULL, NULL, NULL, '2025-07-28 07:05:00', '2025-07-28 07:05:00', NULL),
(80, 15, 12, 5, 'Captivating storyline with chilling moments that leave you breathless. A must-watch for thriller enthusiasts! 😱🎬', NULL, NULL, NULL, '2025-03-20 07:05:00', '2025-03-20 07:05:00', NULL),
(81, 13, 13, 4, 'Heart-pounding adrenaline rush! The Daring Player sets a new standard for action movies. 🚀👊', NULL, NULL, NULL, '2025-04-03 07:05:00', '2025-04-03 07:05:00', NULL),
(82, 14, 11, 5, 'Impressive cinematography and a plot that keeps you on the edge of your seat. Bravo! 🌟👏', NULL, NULL, NULL, '2025-09-25 07:05:00', '2025-09-25 07:05:00', NULL),
(83, 19, 4, 5, 'A terrifying rollercoaster of fear and suspense. 🎢😨', NULL, NULL, NULL, '2025-11-15 07:05:00', '2025-11-15 07:05:00', NULL),
(84, 21, 10, 4, 'Engrossing narratives and stunning visuals make history come alive! 🎥✨', NULL, NULL, NULL, '2025-03-08 07:05:00', '2025-03-08 07:05:00', NULL),
(85, 25, 13, 5, 'I couldn\'t stop smiling throughout! A perfect feel-good movie for any day. 😊🎥', NULL, NULL, NULL, '2025-07-19 07:05:00', '2025-07-19 07:05:00', NULL),
(86, 14, 10, 4, 'The suspense builds up perfectly. I couldn\'t take my eyes off the screen! 🎥🔍', NULL, NULL, NULL, '2025-04-13 07:05:00', '2025-04-13 07:05:00', NULL),
(87, 1, 6, 4, 'Masterfully crafted with spine-tingling moments that linger long after you\'ve finished watching. A must-watch for horror aficionados! 🎬👻', NULL, NULL, NULL, '2025-10-26 07:05:00', '2025-10-26 07:05:00', NULL),
(88, 15, 3, 5, 'Gripping plot twists and eerie underwater suspense! Keeps you guessing till the end. 🌊🔍', NULL, NULL, NULL, '2025-06-09 07:05:00', '2025-06-09 07:05:00', NULL),
(89, 26, 5, 4, 'A perfect movie for a cozy evening. It\'s romantic, emotional, and uplifting. 🍿🎬', NULL, NULL, NULL, '2025-02-01 07:05:00', '2025-02-01 07:05:00', NULL),
(90, 21, 13, 5, 'Detailed and enlightening! It\'s like stepping back in time. 🕰️📜', NULL, NULL, NULL, '2025-05-31 07:05:00', '2025-05-31 07:05:00', NULL),
(91, 19, 7, 3, 'Hauntingly good! The suspense builds up perfectly. 🕰️🔦', NULL, NULL, NULL, '2025-07-15 07:05:00', '2025-07-15 07:05:00', NULL),
(92, 16, 9, 4, 'Hilarious from start to finish! Tim and Tom are comedy gold. 😂👌', NULL, NULL, NULL, '2025-11-11 07:05:00', '2025-11-11 07:05:00', NULL),
(93, 24, 13, 5, 'An emotional rollercoaster with a powerful message of perseverance. 🎢💫', NULL, NULL, NULL, '2025-01-04 07:05:00', '2025-01-04 07:05:00', NULL),
(94, 23, 5, 4, 'Rise Above is a testament to the human spirit\'s ability to overcome challenges. 🌠🙌', NULL, NULL, NULL, '2025-07-20 07:05:00', '2025-07-20 07:05:00', NULL),
(95, 26, 12, 5, 'This movie reminds us that love conquers all. It\'s a must-watch for romantics! 🌹💫', NULL, NULL, NULL, '2025-06-09 07:05:00', '2025-06-09 07:05:00', NULL),
(96, 16, 6, 5, 'Quirky and entertaining, this movie brightened my day. Highly recommend! 🌈❤️', NULL, NULL, NULL, '2025-10-25 07:05:00', '2025-10-25 07:05:00', NULL),
(97, 17, 3, 5, 'Perfect pick-me-up comedy for any day of the week. 😄🎥', NULL, NULL, NULL, '2025-10-24 07:05:00', '2025-10-24 07:05:00', NULL),
(98, 15, 7, 5, 'Atmospheric and hauntingly beautiful. Dive into this thriller for an unforgettable ride. 🌊🎞️', NULL, NULL, NULL, '2025-05-05 07:05:00', '2025-05-05 07:05:00', NULL),
(99, 17, 10, 3, 'A feel-good comedy that delivers non-stop laughs. Highly recommend! 🌟🎉', NULL, NULL, NULL, '2025-06-19 07:05:00', '2025-06-19 07:05:00', NULL),
(100, 24, 8, 5, 'Inspirational from start to finish. It reminds us to never give up on our dreams. 🌟🎬', NULL, NULL, NULL, '2025-04-26 07:05:00', '2025-04-26 07:05:00', NULL),
(101, 18, 9, 5, 'The chemistry between the characters is spot-on. Enjoyable and witty! 👏😆', NULL, NULL, NULL, '2025-11-02 07:05:00', '2025-11-02 07:05:00', NULL),
(102, 21, 6, 3, 'Each episode is a treasure trove of knowledge. Highly recommend for all ages! 🎓🌟', NULL, NULL, NULL, '2025-02-20 07:05:00', '2025-02-20 07:05:00', NULL),
(103, 23, 11, 5, 'The performances are outstanding, making the message even more impactful. 👍🎭', NULL, NULL, NULL, '2025-04-16 07:05:00', '2025-04-16 07:05:00', NULL),
(104, 26, 3, 4, 'Such a heartwarming story! It\'s a beautiful journey of love and second chances. 💖😊', NULL, NULL, NULL, '2025-06-15 07:05:00', '2025-06-15 07:05:00', NULL),
(105, 21, 7, 5, 'A must-watch for history buffs! The storytelling is impeccable. 🤓🎬', NULL, NULL, NULL, '2025-10-04 07:05:00', '2025-10-04 07:05:00', NULL),
(106, 24, 6, 5, 'A beautiful story of resilience and triumph against all odds. 🎥🌟', NULL, NULL, NULL, '2025-05-12 07:05:00', '2025-05-12 07:05:00', NULL),
(107, 20, 10, 5, 'Perfect blend of suspense and horror. Hauntingly good! 👀🔪', NULL, NULL, NULL, '2025-09-12 07:05:00', '2025-09-12 07:05:00', NULL),
(108, 26, 8, 5, 'Forever in My Heart touched my soul. It\'s a timeless love story that stays with you. 💞📽️', NULL, NULL, NULL, '2025-02-17 07:05:00', '2025-02-17 07:05:00', NULL),
(109, 12, 13, 4, 'An imaginative world that brings out the child in everyone. Loved every moment! 🌈👶', NULL, NULL, NULL, '2025-02-14 07:05:00', '2025-02-14 07:05:00', NULL),
(110, 19, 6, 4, 'Couldn\'t look away despite being scared out of my wits! 👀😳', NULL, NULL, NULL, '2025-08-20 07:05:00', '2025-08-20 07:05:00', NULL),
(111, 18, 12, 5, 'Clever writing and great performances make this movie a joy to watch. 📝🎥', NULL, NULL, NULL, '2025-01-15 07:05:00', '2025-01-15 07:05:00', NULL),
(112, 12, 3, 4, 'The New Empire sets a new standard for animated movies. Truly magical! 🌠🎉', NULL, NULL, NULL, '2025-03-05 07:05:00', '2025-03-05 07:05:00', NULL),
(113, 19, 9, 5, 'Spine-chilling! Kept me awake all night. 😱👻', NULL, NULL, NULL, '2025-06-08 07:05:00', '2025-06-08 07:05:00', NULL),
(114, 23, 9, 5, 'This movie reminds us that anything is possible with determination and courage. 🌟💪', NULL, NULL, NULL, '2025-11-18 07:05:00', '2025-11-18 07:05:00', NULL),
(115, 20, 5, 5, 'Kept me on the edge of my seat the entire time! Terrifying twists and turns. 😱👻', NULL, NULL, NULL, '2025-03-01 07:05:00', '2025-03-01 07:05:00', NULL),
(116, 25, 7, 5, 'A timeless romance that sweeps you off your feet. Pure cinematic bliss! 🎬💞', NULL, NULL, NULL, '2024-12-20 07:05:00', '2024-12-20 07:05:00', NULL),
(117, 21, 12, 4, 'A fascinating exploration of ancient history, beautifully presented. 🌍🏛️', NULL, NULL, NULL, '2025-07-07 07:05:00', '2025-07-07 07:05:00', NULL),
(118, 20, 4, 5, 'The atmosphere was eerie, and the scares were genuinely frightening. Bravo! 🌑🎬', NULL, NULL, NULL, '2025-08-18 07:05:00', '2025-08-18 07:05:00', NULL),
(119, 26, 4, 5, 'The chemistry between the leads is undeniable. I couldn\'t stop smiling throughout! 💑🌟', NULL, NULL, NULL, '2025-06-19 07:05:00', '2025-06-19 07:05:00', NULL),
(120, 22, 3, 5, 'Captivating portrayal of ancient civilizations, rich in detail and authenticity. 🏛️📜', NULL, NULL, NULL, '2025-10-26 07:05:00', '2025-10-26 07:05:00', NULL),
(121, 23, 3, 5, 'Rise Above delivers a powerful message of perseverance and resilience. 🌈👏', NULL, NULL, NULL, '2025-06-11 07:05:00', '2025-06-11 07:05:00', NULL),
(122, 22, 8, 5, 'A fascinating journey through history, beautifully depicted with stellar performances. 🎭🌍', NULL, NULL, NULL, '2025-09-02 07:05:00', '2025-09-02 07:05:00', NULL),
(123, 24, 12, 3, 'Touching and motivational. It\'s a journey everyone should experience. 🚀😊', NULL, NULL, NULL, '2024-12-19 07:05:00', '2024-12-19 07:05:00', NULL),
(124, 23, 14, 3, 'A deeply inspiring movie that touches the heart and uplifts the spirit. 🌟😊', NULL, NULL, NULL, '2025-04-24 07:05:00', '2025-04-24 07:05:00', NULL),
(125, 22, 9, 5, 'Engrossing narrative that brings the past to life with every scene. 🕰️🔍', NULL, NULL, NULL, '2025-09-02 07:05:00', '2025-09-02 07:05:00', NULL),
(126, 23, 4, 3, 'The storyline is moving, and the characters\' journeys are truly inspirational. 🎬❤️', NULL, NULL, NULL, '2024-11-20 07:05:00', '2024-11-20 07:05:00', NULL),
(127, 25, 6, 3, 'Heartwarming and beautifully romantic, a love story that stays with you forever. 💖🌟', NULL, NULL, NULL, '2025-01-28 07:05:00', '2025-01-28 07:05:00', NULL),
(128, 24, 3, 4, 'This movie inspired me deeply. A powerful reminder of the strength within us all. 🌟🙌', NULL, NULL, NULL, '2025-10-12 07:05:00', '2025-10-12 07:05:00', NULL),
(129, 20, 12, 4, 'Creepy and atmospheric. It\'s a horror fan\'s dream come true! 🌌🏚️', NULL, NULL, NULL, '2025-07-15 07:05:00', '2025-07-15 07:05:00', NULL),
(130, 21, 3, 5, 'An epic journey through the origins of civilization. Educational and captivating! 📚🌅', NULL, NULL, NULL, '2025-10-04 07:05:00', '2025-10-04 07:05:00', NULL),
(131, 25, 3, 5, 'This movie made me believe in love all over again. Simply breathtaking! 💕😍', NULL, NULL, NULL, '2025-11-06 07:05:00', '2025-11-06 07:05:00', NULL),
(132, 20, 8, 4, 'A bone-chilling experience that left me checking over my shoulder. Highly recommend! 🕯️👁️', NULL, NULL, NULL, '2025-10-22 07:05:00', '2025-10-22 07:05:00', NULL),
(133, 10, 12, 5, 'Daizy\'s journey is heartwarming and filled with lessons for all ages. 🎈😊', NULL, NULL, NULL, '2025-04-06 07:05:00', '2025-04-06 07:05:00', NULL),
(134, 24, 7, 5, 'The characters\' journeys are incredibly moving. You\'ll laugh, cry, and feel inspired. 💖😭', NULL, NULL, NULL, '2024-11-25 07:05:00', '2024-11-25 07:05:00', NULL),
(135, 19, 14, 4, 'Every shadow feels like it\'s watching you. Thrilling till the end! 🌌👁️', NULL, NULL, NULL, '2025-07-31 07:05:00', '2025-07-31 07:05:00', NULL),
(136, 1, 7, 5, 'Evokes a sense of dread and excitement simultaneously, offering a thrilling rollercoaster ride through fear and suspense. 🎢😱', NULL, NULL, NULL, '2025-02-16 07:05:00', '2025-02-16 07:05:00', NULL),
(137, 2, 12, 4, 'Fantastic cinematography and thrilling gunfights! A must-watch for Western fans. 📽️🌟', NULL, NULL, NULL, '2025-05-30 07:05:00', '2025-05-30 07:05:00', NULL),
(138, 22, 5, 5, 'Each moment feels like a glimpse into a forgotten era. Absolutely mesmerizing! 🌌🔮', NULL, NULL, NULL, '2025-04-08 07:05:00', '2025-04-08 07:05:00', NULL),
(139, 2, 13, 5, 'Each episode is better than the last. The story is captivating and full of surprises. 🎉🚀', NULL, NULL, NULL, '2025-07-17 07:05:00', '2025-07-17 07:05:00', NULL),
(140, 5, 12, 4, 'The twists and turns are brilliant. A must-watch for horror lovers! 🌫️📺', NULL, NULL, NULL, '2025-01-13 07:05:00', '2025-01-13 07:05:00', NULL),
(141, 4, 13, 5, 'Edge-of-your-seat excitement and unexpected twists. Absolutely thrilling! 😱🚀', NULL, NULL, NULL, '2025-10-24 07:05:00', '2025-10-24 07:05:00', NULL),
(142, 10, 7, 5, 'The animation is top-notch, and the story keeps you hooked from start to finish. 🎬💖', NULL, NULL, NULL, '2025-06-10 07:05:00', '2025-06-10 07:05:00', NULL),
(143, 20, 3, 5, 'Gripping from start to finish. The tension builds up beautifully. 🎢💀', NULL, NULL, NULL, '2025-11-19 07:05:00', '2025-11-19 07:05:00', NULL),
(144, 25, 12, 5, 'Touching and emotional, it captures the essence of true love\'s journey. 🌹😢', NULL, NULL, NULL, '2025-06-20 07:05:00', '2025-06-20 07:05:00', NULL),
(145, 1, 8, 5, 'Captivating and spine-chilling, with a narrative that grips your imagination and leaves you pondering its mysteries. 🔍🌑', NULL, NULL, NULL, '2025-01-08 07:05:00', '2025-01-08 07:05:00', NULL),
(146, 4, 4, 5, 'Great character development and intense scenes. A top-notch thriller! 👏🔥', NULL, NULL, NULL, '2025-01-12 07:05:00', '2025-01-12 07:05:00', NULL),
(147, 2, 14, 5, 'The perfect blend of drama and action. The Gunslinger is a true hero! 👏🏜️', NULL, NULL, NULL, '2025-07-25 07:05:00', '2025-07-25 07:05:00', NULL),
(148, 11, 9, 4, 'An enchanting journey that sparks imagination and leaves you wanting more. ✨🌟', NULL, NULL, NULL, '2024-12-15 07:05:00', '2024-12-15 07:05:00', NULL),
(149, 3, 9, 5, 'The animation is stunning, and the story is captivating. Love Raziel\'s bravery! 🐉🎨', NULL, NULL, NULL, '2024-12-01 07:05:00', '2024-12-01 07:05:00', NULL),
(150, 26, 10, 3, 'I cried happy tears! This movie reaffirms the power of love and hope. 💖😊', NULL, NULL, NULL, '2025-05-05 07:05:00', '2025-05-05 07:05:00', NULL),
(151, 3, 3, 5, 'A magical adventure that kept my kids and me glued to the screen! 🌲✨', NULL, NULL, NULL, '2025-03-19 07:05:00', '2025-03-19 07:05:00', NULL),
(152, 14, 12, 4, 'A must-watch for thriller enthusiasts. The Monkey King\'s quest will leave you wanting more. 🎭🌌', NULL, NULL, NULL, '2025-03-13 07:05:00', '2025-03-13 07:05:00', NULL),
(153, 18, 3, 5, 'A comedy that hits all the right notes. Fun, light-hearted, and highly enjoyable! 🎶😊', NULL, NULL, NULL, '2025-02-17 07:05:00', '2025-02-17 07:05:00', NULL),
(154, 16, 6, 5, 'The cinematography is fantastic, and the suspense never lets up. Highly recommend! 🎥🌟', NULL, NULL, NULL, '2025-08-29 07:05:00', '2025-08-29 07:05:00', NULL),
(155, 21, 8, 4, 'The scale and depth of this series are truly impressive. History enthusiasts will be hooked! 🌐🔍', NULL, NULL, NULL, '2025-06-09 07:05:00', '2025-06-09 07:05:00', NULL),
(156, 13, 11, 5, 'Perfect mix of fantasy and adventure. The Final Showdown was epic! ⚔️🌟', NULL, NULL, NULL, '2025-08-29 07:05:00', '2025-08-29 07:05:00', NULL),
(157, 19, 13, 4, 'Heart-pounding moments that will linger long after the credits roll. Must-watch for horror enthusiasts! 🎥👹', NULL, NULL, NULL, '2025-08-30 07:05:00', '2025-08-30 07:05:00', NULL),
(158, 14, 6, 4, 'Intriguing characters and stunning visual effects. A thrilling ride from start to finish. 🎬🔥', NULL, NULL, NULL, '2025-05-25 07:05:00', '2025-05-25 07:05:00', NULL),
(159, 12, 5, 5, 'Heartwarming story with lovable characters. Perfect for family movie night! 🍿❤️', NULL, NULL, NULL, '2025-10-02 07:05:00', '2025-10-02 07:05:00', NULL),
(160, 19, 3, 4, 'Gripping horror that leaves you checking the shadows. Not for the faint-hearted! 🚪🌚', NULL, NULL, NULL, '2025-11-07 07:05:00', '2025-11-07 07:05:00', NULL),
(161, 18, 4, 5, 'A comedic adventure that keeps you smiling from start to finish. 😄🌟', NULL, NULL, NULL, '2025-07-07 07:05:00', '2025-07-07 07:05:00', NULL),
(162, 13, 7, 5, 'The Hidden Fortress episode was full of unexpected twists and turns! So exciting! 🏰🔍', NULL, NULL, NULL, '2025-02-18 07:05:00', '2025-02-18 07:05:00', NULL),
(163, 17, 9, 5, 'The plot is brilliantly crafted with a perfect mix of mystery and action. 📺🕵️‍♂️', NULL, NULL, NULL, '2025-01-02 07:05:00', '2025-01-02 07:05:00', NULL),
(164, 24, 4, 4, 'Couldn\'t help but smile throughout. Pure comedy gold! 😊👌', NULL, NULL, NULL, '2025-09-23 07:05:00', '2025-09-23 07:05:00', NULL),
(165, 9, 14, 5, 'A masterful blend of intrigue and drama. Every scene is filled with tension. 😱🏙️', NULL, NULL, NULL, '2025-05-04 07:05:00', '2025-05-04 07:05:00', NULL),
(166, 12, 11, 4, 'Forever and a Day is a masterpiece in romantic storytelling. A must-watch! 🌈❤️', NULL, NULL, NULL, '2025-09-02 07:05:00', '2025-09-02 07:05:00', NULL),
(167, 7, 10, 4, 'Heartfelt and uplifting. It leaves you with a sense of hope and determination. 🌈💪', NULL, NULL, NULL, '2024-12-08 07:05:00', '2024-12-08 07:05:00', NULL),
(168, 12, 5, 5, 'The chemistry between the leads is magical. It\'s a love story you won\'t forget. ✨👫', NULL, NULL, NULL, '2025-06-25 07:05:00', '2025-06-25 07:05:00', NULL),
(169, 18, 8, 4, 'Loved the quirky humor and unexpected twists. A must-watch for comedy lovers. 🎬🤩', NULL, NULL, NULL, '2025-04-25 07:05:00', '2025-04-25 07:05:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `title` varchar(191) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `is_fixed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `guard_name`, `is_fixed`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(2, 'demo_admin', 'Demo Admin', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34'),
(3, 'user', 'user', 'web', 1, '2025-11-20 07:04:34', '2025-11-20 07:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2),
(178, 2),
(179, 2),
(180, 2),
(181, 2),
(182, 2),
(183, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2),
(195, 2),
(196, 2),
(197, 2),
(198, 2),
(199, 2),
(200, 2),
(201, 2),
(202, 2),
(203, 2),
(204, 2),
(205, 2),
(206, 2),
(207, 2),
(208, 2),
(209, 2),
(210, 2),
(211, 2),
(212, 2),
(213, 2),
(214, 2),
(215, 2),
(216, 2),
(217, 2),
(218, 2),
(219, 2),
(220, 2),
(221, 2),
(222, 2),
(223, 2),
(224, 2),
(225, 2),
(226, 2),
(227, 2),
(228, 2),
(229, 2),
(230, 2),
(231, 2),
(232, 2),
(233, 2),
(234, 2),
(235, 2),
(236, 2),
(237, 2),
(238, 2),
(239, 2),
(240, 2),
(241, 2),
(242, 2),
(243, 2),
(244, 2),
(245, 2),
(246, 2),
(247, 2),
(248, 2),
(249, 2),
(250, 2),
(251, 2),
(252, 2),
(253, 2);

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` varchar(191) DEFAULT NULL,
  `season_index` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `poster_url` text DEFAULT NULL,
  `entertainment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trailer_url_type` varchar(191) DEFAULT NULL,
  `trailer_url` text DEFAULT NULL,
  `access` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `short_desc` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `poster_tv_url` text DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `purchase_type` varchar(191) DEFAULT NULL,
  `access_duration` int(11) DEFAULT NULL,
  `discount` varchar(191) DEFAULT NULL,
  `available_for` int(11) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `seo_image` varchar(191) DEFAULT NULL,
  `google_site_verification` varchar(191) DEFAULT NULL,
  `canonical_url` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `tmdb_id`, `season_index`, `name`, `poster_url`, `entertainment_id`, `trailer_url_type`, `trailer_url`, `access`, `status`, `plan_id`, `short_desc`, `description`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`, `poster_tv_url`, `price`, `purchase_type`, `access_duration`, `discount`, `available_for`, `meta_title`, `meta_keywords`, `meta_description`, `seo_image`, `google_site_verification`, `canonical_url`, `short_description`) VALUES
(1, NULL, NULL, 'S1 The Awakening Shadows', 's1_the_awakening_shadows_thumb.png', 1, 'YouTube', 'https://youtu.be/1sCBEzxF_K4?si=B-rZUby9EXaMWkKD', 'free', 1, NULL, 'The team battles an ancient evil that awakens from the shadows. 🌒', 'The team encounters a series of mysterious events that awaken an ancient evil. Their battle to understand and confront this malevolent force begins. 🏚️👻', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_the_awakening_shadows_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, 'S2 The Rising Shadows', 's2_the_rising_shadows_thumb.png', 1, 'YouTube', 'https://youtu.be/7_MJp5AbSwA?si=Mtx9h0wlxtn4o_2Q', 'free', 1, NULL, 'Darkness intensifies as the ancient evil returns, stronger than before.', 'As the ancient evil rises again, the team faces even darker and more powerful threats. They must confront their deepest fears to save humanity from eternal darkness. 🌑🛡️', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's2_the_rising_shadows_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, 'S1 Lawless Frontier', 's1_lawless_frontier_thumb.png', 2, 'YouTube', 'https://youtu.be/iABaiZO5Vjs?si=-86t28oJD4cIwkY0', 'paid', 1, 1, 'The Gunslinger returns to a chaotic town, battling ruthless outlaws and his own demons to restore justice. 🤠🔥', 'A legendary gunslinger rides back into town, where chaos and corruption reign. Determined to rid the land of crime and find redemption for his troubled past, he faces off against ruthless outlaws and must confront his own inner demons. As the battle for justice unfolds, the town’s fate hangs in the balance, and the gunslinger’s resolve is tested like never before. 🌵⚔️', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_lawless_frontier_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, 'S1 The Journey Begins', 's1_the_journey_begins_thumb.png', 3, 'YouTube', 'https://youtu.be/yGkGMzupaVs?si=O0EBto49niZjBm_e', 'paid', 1, 2, 'Follow Raziel\'s first steps on a heroic quest to save his friend from the clutches of the wicked Gothel. 🏞️✨', 'Follow the young and courageous Raziel as he embarks on a heroic quest to save his friend from the clutches of the wicked Gothel. This season chronicles Raziel\'s initial steps into the enchanted forest, where he encounters magical creatures, forms new alliances, and faces the first of many trials. Through determination, bravery, and a growing sense of self-discovery, Raziel begins to uncover the true extent of Gothel\'s sinister plans. Join Raziel on this enchanting journey filled with adventure, mystery, and the unyielding spirit of a true hero. 🏞️✨', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_the_journey_begins_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, 'S2 Trials and Triumphs', 's2_trials_and_triumphs_thumb.png', 3, 'YouTube', 'https://youtu.be/0R3YS_k6a5E?si=hu-eCRA6KQFfIEg2', 'paid', 1, 2, 'Raziel faces greater challenges and uncovers deeper secrets as he continues his daring rescue mission. 🏰⚔️', 'Raziel\'s quest intensifies as he delves deeper into the heart of Gothel\'s domain. This season is marked by greater challenges, deeper secrets, and high-stakes confrontations. Raziel and his allies must navigate treacherous landscapes, solve intricate puzzles, and battle formidable foes. As they uncover the layers of Gothel\'s dark magic, Raziel\'s resolve and skills are tested like never before. The season builds to a thrilling climax as Raziel confronts Gothel in a final showdown, determined to rescue his friend and bring peace to the land. Experience the trials and triumphs that define a hero\'s journey in this captivating continuation of Raziel\'s adventure. 🏰⚔️', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's2_trials_and_triumphs_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, 'S1 The Hunt Begins', 's1_the_hunt_begins_thumb.png', 4, 'YouTube', 'https://youtu.be/4IByYWqUrvM?si=ikragPXgMAAECJw8', 'paid', 1, 3, 'A relentless detective embarks on a dark quest to track down a cunning criminal mastermind. 🔍🕵️‍♂️', 'The Hunt Begins follows Detective James Black as he dives into a labyrinth of crime and deceit, pursuing the elusive criminal known only as The Phantom. With each clue, the mystery deepens, leading to shocking revelations and deadly encounters. As James races against time, he discovers that the chase is personal, and failure is not an option. 🔍🕵️‍♂️', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_the_hunt_begins_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, 'S2 The Phantom Strikes Back', 's2_the_phantom_strikes_back_thumb.png', 4, 'YouTube', 'https://youtu.be/T5UokLYVJMI?si=7DVFmcXSmf5zVGKj', 'paid', 1, 3, 'The Phantom returns, setting off a deadly game of cat and mouse with Detective Black. 🕵️‍♂️💥', 'The stakes are higher and the danger more imminent. Detective Black faces new challenges as The Phantom resurfaces, orchestrating a series of crimes that push the city to the brink. James must outwit his nemesis in a battle of wits and wills, uncovering secrets that could change everything. The tension mounts as the line between hunter and hunted blurs. 🕵️‍♂️💥', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's2_the_phantom_strikes_back_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, 'S1 The Shrouded Beginnings', 's1_the_shrouded_beginnings_thumb.png', 5, 'YouTube', 'https://youtu.be/h1miqLzgKp0?si=5PYD5oOv2MwxwEvw', 'paid', 1, 4, 'Explore the terrifying mysteries of a town shrouded in darkness as unseen forces strike. 🌑👻', 'The Shrouded Beginnings explores the eerie origins of Ravenwood, where ancient and malevolent forces begin to awaken. As strange occurrences and ghostly apparitions plague the town, a group of determined residents sets out to uncover the truth behind the growing darkness. Their journey reveals chilling secrets and tests their courage as they delve into the heart of the town\'s haunted past. 🌑🕯️', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_the_shrouded_beginnings_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, 'S2 The Deepening Shadows', 's2_the_deepening_shadows.png', 5, 'YouTube', 'https://youtu.be/dt8gBF1uZ3E?si=AI2JENWIAUD_SKmr', 'paid', 1, 4, 'Darkness intensifies, and the struggle for survival grows fiercer. 🌘⚔️', 'The Deepening Shadows sees the malevolent forces in Ravenwood growing stronger and more vengeful. The residents, now armed with knowledge from their previous encounters, must face even greater horrors. As they delve deeper into the town\'s haunted history, they uncover shocking truths and form unlikely alliances to combat the rising evil. The struggle for survival reaches a critical point, pushing the residents to their limits and revealing the true extent of their bravery. 🌘⚔️', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's2_the_deepening_shadows.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, 'S1 Whispers of Betrayal', 's1_whispers_of_betrayal_thumb.png', 6, 'YouTube', 'https://youtu.be/kWTcFa0DEl0?si=zTjxDCxXXqOLB29F', 'free', 1, NULL, 'A relentless investigator uncovers hidden truths and faces betrayals that threaten to unravel everything. 🔍🕵️‍♂️', 'Whispers of Betrayal follows Investigator Alex Reed as he dives into a labyrinth of hidden truths and deception. As he uncovers layers of betrayal that cut close to home, he realizes that the people he trusts most might be hiding the darkest secrets. The season is a gripping tale of trust, treachery, and the relentless pursuit of justice. 🔍🕵️‍♂️', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_whispers_of_betrayal_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, 'S1 The Darkened Path', 's1_the_darkened_path_thumb.png', 7, 'YouTube', 'https://youtu.be/PI4Z7t3AZ5E?si=QNKYohZ1ZgLol_OP', 'paid', 1, 1, 'Emily steps onto the darkened path, discovering the haunted legacy of her grandmother, Dorothy, as she navigates the dangerous and decayed world of Oz.', 'In \"The Darkened Path\", Emily Gale\'s world is turned upside down when she stumbles upon her family\'s long-hidden connection to the mystical realm of Oz. But this is not the Oz of fairy tales—this is a twisted, shadow-filled land where nightmares come alive. As Emily sets out on a harrowing journey down the forgotten road, she must unravel the secrets of her grandmother\'s past, confront terrifying creatures, and uncover the truth about the curse that binds her family to this darkened path. The stakes are high, and survival is uncertain in this thrilling first series. 🌪️🖤', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_the_darkened_path_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, 'S2 The Curse Unveiled', 's2_the_curse_unveiled_thumb.png', 7, 'YouTube', 'https://youtu.be/W0_55mECsa4?si=b_AlIpdvNC_wZ5Zr', 'paid', 1, 1, 'Emily returns to Oz as rising shadows threaten to consume both worlds, forcing her into a final confrontation with the ancient evil that haunts her bloodline.', 'Emily, still haunted by the horrors of her first journey, is pulled back into the decaying world of Oz. This time, the shadows have grown stronger, their influence spreading into her own reality. With new allies and old enemies lurking in the darkness, Emily faces her greatest challenge yet: to stop an ancient evil from fully awakening. As the lines between the real world and Oz blur, Emily must summon all her strength to fight the rising shadows and end the family curse once and for all. 🌑⚡💀', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's2_the_curse_unveiled_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, 'S1 The Wild Awakening', 's1_the_wild_awakening_thumb.png', 8, 'YouTube', 'https://youtu.be/iJkspWwwZLM?si=chtl8vdmLqPNKPfE', 'free', 1, NULL, '🌕 Maddy and Rhydian discover their true natures as they fight to protect their identities from hunters and rival wolfbloods. 👩', '🌕 Maddy’s world is turned upside down when Rhydian enters her life, sparking a journey of self-discovery and adventure. Together, they must navigate the challenges of being wolfbloods—hunted by those who fear them and rivaled by those who threaten them. As their powers grow, so does the danger around them. Rhydian’s mysterious past and Maddy’s loyalty to her pack will be tested in a thrilling fight for survival. 🐺🔥⚡ This action-packed series offers excitement, drama, and emotional depth, making Wolfbound an epic journey for fans of adventure and mystery.', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_the_wild_awakening_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, 'S1 Rise of the Tribes', 's1_rise_of_the_tribes_thumb.png', 9, 'YouTube', 'https://youtu.be/MAFsRmx6pPo?si=CJjoeRbHVtKJt9oC', 'free', 1, NULL, '🌍 The tribes unite for the first time as a powerful enemy threatens to destroy their homeland, forcing them to rise up together in a battle for survival.', '🔥 The tribes scattered and divided, but when a brutal force of invaders descends upon their land, they must set aside old rivalries and forge a new alliance. The story follows warriors from different tribes as they band together, learning to trust one another while navigating ancient prophecies, mysterious allies, and dangerous enemies. As they face impossible odds, the tribes grow stronger, discovering that unity is their greatest weapon. This season sets the stage for an epic war that will determine the fate of their people and homeland. ⚔️🐾🛡️', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_rise_of_the_tribes_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, 'S1 Warrior’s End', 's1_warriors_end_thumb.png', 10, 'YouTube', 'https://youtu.be/-Denciie5oA?si=GBZdawncCJfXbjWk', 'paid', 1, 4, '🛡️ \"Warrior’s End\" captures the final, defining moments of legendary battles where valor and sacrifice shape the destiny of heroes and their world.', '⚔️ \"Warrior’s End\" is a gripping series that delves into the climactic endgame of legendary conflicts. Following a series of monumental battles, the show focuses on the warriors who stand at the crossroads of history. As they face their final tests of bravery, strategy, and sacrifice, the series highlights their pivotal roles in shaping the fate of their world. Through intense action sequences and deep character development, \"Warrior’s End\" explores the essence of heroism and the enduring impact of those who fight for honor and freedom. Each episode unveils the final chapters of epic sagas, celebrating the courage and legacy of those who determined the course of history. 🌄🔥🛡️', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_warriors_end_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, 'S1 Tides of War', 's1_tides_of_war_thumb.png', 11, 'YouTube', 'https://youtu.be/Cg8sbRFS3zU?si=lB_55d61yMCtZ1bx', 'free', 1, NULL, '🔥 \"Tides of War\" unravels the turning points of history’s most critical battles, where strategy, technology, and sheer willpower shape the outcome of empires and civilizations. 🌍⚔️', '\"Tides of War\" captures the ebb and flow of monumental military campaigns that have reshaped the course of history. The series focuses on critical moments when innovation, leadership, and determination collide in the face of overwhelming odds. As armies clash and powerful technologies are unleashed, heroes rise from the chaos, forging new paths and legacies. Whether in the heat of modern warfare or amidst futuristic apocalyptic threats, \"Tides of War\" examines the high stakes, the human cost, and the lasting impact of these pivotal battles. 🌍⚔️🔥🛡️', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_tides_of_war_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, 'S1 Into the Abyss', 's1_into_the_abyss_thumb.png', 12, 'YouTube', 'https://youtu.be/rcsMELh_3TA?si=lvKpb3FsVt7_-SEZ', 'paid', 1, 1, 'The team descends into the Earth’s core, unveiling ancient secrets and battling unknown forces in their quest to unlock the mysteries of the planet\'s inner depths. 🌋🌪️', '\"Into the Abyss,\" kicks off the thrilling adventure as a team of expert geologists, archaeologists, and military personnel dive into the unknown, heading deep into the Earth\'s core. What they discover beneath the surface challenges everything they thought they knew about human history. As they journey through vast underground caverns and encounter remnants of lost civilizations, they also find themselves in the crosshairs of a hidden empire determined to protect its ancient secrets. The deeper they go, the higher the stakes become, as the team must not only survive the physical dangers of the subterranean world but also unravel the mysteries that could alter the fate of humankind. This season is filled with relentless action, high stakes, and breathtaking discoveries. 🌍🛡️💥', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:00', NULL, 's1_into_the_abyss_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, 'S1 Blades of Espionage', 's1_blades_of_espionage_thumb.png', 13, 'YouTube', 'https://youtu.be/dKkT8_RGDYg?si=4gdepK-sTlGcxcPw', 'paid', 1, 3, 'A former special ops agent-turned-barber is pulled back into the world of espionage, where each haircut unravels a dangerous web of secrets and spies. ✂️💈🕵️‍♂️💥', 'Cutting Edge: Blades of Espionage follows Ethan, a once-decorated special ops agent who now leads a quiet life as a barber. However, his shop is a front for high-stakes international intrigue, as his clients range from spies to assassins, all bringing their secrets to his chair. When a new threat arises, Ethan is pulled back into the world of covert missions, forced to wield his blade both for hair and for survival. Balancing his dual identities, Ethan navigates a dangerous game where every snip of the scissors could be his last. This action-packed series combines sharp wit, intense drama, and stylish espionage. ✂️🕵️‍♂️💥', NULL, NULL, NULL, '2025-11-20 07:05:00', '2025-11-20 07:05:01', NULL, 's1_blades_of_espionage_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, 'S2 The Cutthroat Mission', 's2_the_cutthroat_mission_thumb.png', 13, 'YouTube', 'https://youtu.be/-Qv6p6pTz5I?si=aeaLICb9s9VAgl4W', 'paid', 1, 3, 'Ethan, a former agent turned barber, is dragged back into the deadly world of espionage, where every haircut holds a secret and every enemy lurks in the shadows. 💈✂️🕵️‍♂️', 'In the first series, \"Snip & Spy: The Razor\'s Edge,\" Ethan\'s quiet life as a barber is shattered when his past comes back to haunt him. His once-thriving salon becomes the center of a high-stakes operation involving covert agents, hidden microchips, and an old nemesis intent on destroying him. Forced to rely on his barber tools and combat skills, Ethan must outwit dangerous enemies, protect his clients, and solve a mystery that leads him deep into the world of espionage. Packed with adrenaline-pumping action, clever humor, and a unique mix of barbershop charm and spy drama, \"The Razor\'s Edge\" will keep viewers on the edge of their seats. ✂️💣⚔️', NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's2_the_cutthroat_mission_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, 'S1 Mending Tides', 's1_mending_tides_thumb.png', 14, 'YouTube', 'https://youtu.be/5eQKOr6sFgk?si=aGYzXoiBPFTf1XtA', 'free', 1, NULL, 'Three estranged sisters embark on a transformative road trip along the Pacific Coast, mending broken family bonds as they confront their troubled past. 🚗💔🌊', 'In Mending Tides, June Stevenson leads her estranged sisters on an unforgettable road trip along the Pacific Coast, determined to reconcile with their difficult father and heal old wounds. As they navigate breathtaking landscapes, lively pit stops, and the emotional currents of their past, the sisters begin to uncover hidden truths about their fractured family. Through laughter, heartache, and unexpected adventures, they realize that the journey toward forgiveness may be as important as the destination. Mending Tides is an inspiring tale of sisterhood, healing, and the courage to face one\'s past. 🌊💞🌅', NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_mending_tides_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, 'S1 The McDoll Chronicles', 's1_the_mcdoll_chronicles_thumb.png', 15, 'YouTube', 'https://youtu.be/X0K5cA2hS6g?si=dCiATYDWrJmKK86q', 'free', 1, NULL, 'Follow the uproarious journey of David McDoll as he navigates the chaos of inheriting six lively grandchildren, discovering the true meaning of family amidst the hilarity. 🏠👨‍👩‍👧‍👦🤣', 'The McDoll Chronicles takes you on a side-splitting journey with David McDoll, a wealthy and self-indulgent man whose life is turned upside down when he suddenly becomes the guardian of his six boisterous grandchildren. As his extravagant lifestyle collides with the rambunctious energy of his new family members, David faces a whirlwind of comedic escapades and heartfelt moments. Through chaotic family dinners, wild adventures, and touching revelations, David learns the true value of family and finds joy in the mayhem. This series is a heartwarming and hilarious exploration of how unexpected changes can lead to the most rewarding experiences. 🏰💖😂', NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_the_mcdoll_chronicles_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, 'S1 Secrets Beneath the Surface', 's1_secrets_beneath_the_surface_thumb.png', 16, 'YouTube', 'https://youtu.be/qfyF0HmRv_0?si=s27BZDReq7BD4f7M', 'paid', 1, 1, 'As their romance grows, both must face their hidden pasts and unravel the mysteries that bind them, learning that love requires trust and vulnerability. 🗝️❤️🌹', 'In \"Secrets Beneath the Surface\", the first season of \"Enigma of the Heart\", the focus is on the deepening relationship between the playboy journalist and the enigmatic model. Their love begins with intrigue and attraction but soon evolves into something more profound as both of them are forced to confront the secrets they’ve been hiding. As their worlds collide, they must navigate the emotional and moral complexities of their double lives, learning that trust and vulnerability are key to unlocking true love. Along the way, they discover that love is not just about passion—it’s about embracing one’s flaws and finding redemption through the power of connection. 🗝️❤️🌹', NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_secrets_beneath_the_surface_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, 'S1 The Haunting of Blackthorn Manor', 's1_the_haunting_of_blackthorn_manor_thumb.png', 17, 'YouTube', 'https://youtu.be/UEJuNHOd8Dw?si=xMwHr2S-WM2Aautr', 'paid', 1, 1, 'Father James returns to Blackthorn Manor, where he must face terrifying spirits and his deepest fears in a fight for his soul. 👻🏚️', '\"The Haunting of Blackthorn Manor\" kicks off with Father James returning to the eerie mansion that haunts his memories. The season focuses on James’ night in Blackthorn Manor, where the spirits of the girl and her stepfather torment him, forcing him to confront the tragedy he could not prevent. Each episode deepens the psychological tension as James battles to keep his sanity while uncovering the truth about the mansion\'s dark history. As the supernatural forces grow stronger, so too does his need for redemption, but the path is fraught with danger and terror. This season blends supernatural thrills with intense emotional drama as Father James seeks salvation in the face of overwhelming darkness. 👻🏚️🕯️', NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_the_haunting_of_blackthorn_manor_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, 'S1 Roots and Revelations', 's1_roots_and_revelations_thumb.png', 18, 'YouTube', 'https://youtu.be/7lSzGK5HR1M?si=ltOK7kx6m3IIWv2b', 'free', 1, NULL, 'The main character begins his comedic journey of cultural discovery, leading to laugh-out-loud clashes between his upbringing and newfound understanding of his heritage. 👪🎭', 'The first season of \"Heritage Hijinks,\" titled \"Roots and Revelations,\" takes viewers on a rollercoaster ride through the life of the main character as he seeks to reconnect with his African American roots while navigating the humorous differences between his liberal white upbringing and the cultural identity he\'s discovering. With his quirky best friend by his side, every family dinner turns into a comedy show of contrasting beliefs, while each new experience brings both laughter and deeper self-awareness. As their cultural explorations continue, this season sets the tone for a series full of heart, humor, and acceptance. 🎉🌍👫', NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_roots_and_revelations_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, 'S1 The Unleashing', 's1_the_unleashing_thumb.png', 19, 'YouTube', 'https://youtu.be/j2Fec39AHJ8?si=c9WEIe5NXoF_tmrE', 'free', 1, NULL, 'A cursed relic releases terrifying demons upon an unsuspecting city. A group of survivors must fight to survive as evil forces threaten to consume them. 🏙️👹', '\"Evil Awakening\" titled \"The Unleashing,\" a group of young adults inadvertently awakens ancient, flesh-hungry demons by uncovering the cursed Necronomicon. Moving from the deep woods to the sprawling cityscape, the horrors quickly spread, turning their once-familiar environment into a nightmare. Two estranged sisters, reunited in the face of terror, must put aside their differences and team up with others to survive the rise of the demons. The season escalates into a series of terrifying confrontations, as they are hunted by the most horrifying incarnation of evil imaginable. From haunted buildings to nightmarish alleyways, \"The Unleashing\" will keep viewers on edge as the group battles to break the curse and prevent the total destruction of their world. 😨📖', NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_the_unleashing_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, 'S1 The Reckoning Retreat', 's1_the_reckoning_retreat_thumb.png', 20, 'YouTube', 'https://youtu.be/bvDArsKoTOE?si=bfxIZyuVGNqpdu81', 'free', 1, NULL, 'A peaceful cabin retreat for four friends spirals into a suspense-filled nightmare when they discover something sinister lurking in the woods. 🌲👻', '\"The Reckoning Retreat\", four old friends—Esme, Hannah, Ben, and Shan—attempt to reconnect during a weekend getaway at a secluded cabin. Their hopes for peace and bonding are quickly dashed when they discover they are not alone. As unsettling events unfold, the group\'s old wounds resurface, and deep-seated secrets emerge. The quiet wilderness turns into a dark, foreboding setting as they realize something—or someone—is watching them. Each episode escalates the tension as the friends confront both the external threat and their inner demons. Survival becomes paramount as they uncover the truth about the sinister force stalking them. 😱🌲🔍', NULL, NULL, NULL, '2025-11-20 07:05:01', '2025-11-20 07:05:01', NULL, 's1_the_reckoning_retreat_thumb.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `seo_image` varchar(191) DEFAULT NULL,
  `google_site_verification` varchar(191) DEFAULT NULL,
  `canonical_url` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_providers`
--

CREATE TABLE `service_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext DEFAULT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `contact_email` text NOT NULL,
  `contact_number` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `val` text DEFAULT NULL,
  `type` varchar(90) NOT NULL DEFAULT 'string',
  `datatype` varchar(90) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `val`, `type`, `datatype`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'movie', '1', 'module_settings', NULL, NULL, NULL, NULL, '2024-08-07 23:57:31', '2024-08-07 23:57:31', NULL),
(2, 'tvshow', '1', 'module_settings', NULL, NULL, NULL, NULL, '2024-08-07 23:57:31', '2024-08-07 23:57:31', NULL),
(3, 'livetv', '1', 'module_settings', NULL, NULL, NULL, NULL, '2024-08-07 23:57:31', '2024-08-07 23:57:31', NULL),
(4, 'video', '1', 'module_settings', NULL, NULL, NULL, NULL, '2024-08-07 23:57:31', '2024-08-07 23:57:31', NULL),
(5, 'enable_tmdb_api', '1', 'module_settings', NULL, NULL, NULL, NULL, '2024-08-07 23:57:31', '2024-08-07 23:57:31', NULL),
(6, 'app_name', 'Streamit: Your Ultimate Entertainment Hub', 'bussiness', 'bussiness', NULL, NULL, NULL, '2024-08-08 04:42:31', '2024-08-08 04:42:31', NULL),
(7, 'user_app_name', 'Streamit: Your Ultimate Entertainment Hub', 'bussiness', 'bussiness', NULL, NULL, NULL, '2024-08-08 04:42:31', '2024-08-08 04:42:31', NULL),
(8, 'helpline_number', '+15265897485', 'bussiness', 'bussiness', NULL, NULL, NULL, '2024-08-08 04:42:31', '2024-08-08 04:42:31', NULL),
(9, 'inquriy_email', 'hello@iqonic.design', 'bussiness', 'bussiness', NULL, NULL, NULL, '2024-08-08 04:42:31', '2024-08-08 04:42:31', NULL),
(10, 'short_description', 'StreamIt: Your Ultimate Destination for Unlimited Movies and Shows!', 'bussiness', 'bussiness', NULL, NULL, NULL, '2024-08-08 04:42:31', '2024-08-08 04:42:31', NULL),
(11, 'google_analytics', 'Google Analytics', 'text', 'misc', NULL, NULL, NULL, '2024-08-08 05:01:01', '2024-08-08 05:01:01', NULL),
(12, 'default_language', 'en', 'misc', 'misc', NULL, NULL, NULL, '2024-08-08 05:01:01', '2024-08-08 05:01:01', NULL),
(13, 'default_time_zone', 'Asia/Kolkata', 'misc', 'misc', NULL, NULL, NULL, '2024-08-08 05:01:01', '2024-08-08 05:01:01', NULL),
(14, 'disc_type', 'local', 'misc', 'misc', NULL, NULL, NULL, '2024-08-08 05:01:01', '2024-08-08 05:01:01', NULL),
(15, 'cash_payment_method', '1', 'cashpayment', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(16, 'razor_payment_method', '1', 'razorpayPayment', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(17, 'razorpay_secretkey', '', 'razor_payment_method', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(18, 'razorpay_publickey', '', 'razor_payment_method', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(19, 'str_payment_method', '1', 'stripePayment', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(20, 'stripe_secretkey', '', 'str_payment_method', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(21, 'stripe_publickey', '', 'str_payment_method', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(22, 'paystack_payment_method', '1', 'paystackPayment', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(23, 'paystack_secretkey', '', 'paystack_payment_method', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(24, 'paystack_publickey', '', 'paystack_payment_method', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(25, 'paypal_payment_method', '1', 'paypalPayment', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(26, 'paypal_secretkey', '', 'paypal_payment_method', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(27, 'paypal_clientid', '', 'paypal_payment_method', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(28, 'flutterwave_payment_method', '1', 'flutterwavePayment', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(29, 'flutterwave_secretkey', '', 'flutterwave_payment_method', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(30, 'flutterwave_publickey', '', 'flutterwave_payment_method', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(31, 'cinet_payment_method', '0', 'paymentcinet', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(32, 'sadad_payment_method', '0', 'paymentsadad', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(33, 'airtel_payment_method', '0', 'airtelpayment', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(34, 'phonepe_payment_method', '0', 'phonepepayment', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(35, 'midtrans_payment_method', '0', 'midtranspayment', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(36, 'local', '1', 'storage_settings', 'storageconfig', NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(37, 's3', '0', 'storage_settings', 'storageconfig', NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(38, 'aws_access_key', NULL, 'storage_settings', 'storageconfig', NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(39, 'aws_secret_key', NULL, 'storage_settings', 'storageconfig', NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(40, 'aws_region', NULL, 'storage_settings', 'storageconfig', NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(41, 'aws_bucket', NULL, 'storage_settings', 'storageconfig', NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(42, 'tmdb_api_key', '', 'module_settings', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(43, 'is_social_login', '1', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(44, 'is_google_login', '1', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(45, 'is_otp_login', '1', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(46, 'is_apple_login', '1', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(47, 'is_firebase_notification', '1', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(48, 'firebase_key', 'streamit-laravel-flutter', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(49, 'is_user_push_notification', '1', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(50, 'is_application_link', '1', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(51, 'ios_url', NULL, 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(52, 'android_url', 'https://play.google.com/store/apps/details?id=com.iqonic.streamitlaravel&pcampaignid=web_share', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(53, 'force_update', '0', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(54, 'app_version', NULL, 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(55, 'is_ChatGPT_integration', '1', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(56, 'ChatGPT_key', '', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(57, 'google_client_id', '', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(58, 'google_client_secret', '', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(59, 'google_redirect_uri', 'http://127.0.0.1:8000/auth/google/callback', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(60, 'apiKey', '', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(61, 'authDomain', 'streamit-laravel-flutter.firebaseapp.com', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(62, 'databaseURL', '', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(63, 'projectId', 'streamit-laravel-flutter', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(64, 'storageBucket', '', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(65, 'messagingSenderId', '', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(66, 'appId', '', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(67, 'measurementId', '', 'appconfig', NULL, NULL, NULL, NULL, '2024-08-08 05:08:37', '2024-08-08 05:08:37', NULL),
(68, 'customization_json', '{\"saveLocal\":\"sessionStorage\",\"storeKey\":\"streamit-setting\",\"setting\":{\"sidebar_type\":{\"value\":[]},\"_token\":{\"value\":\"dGiEl23rHgtsRPq3euf7MTgAZgUfriZzk5c9Ja6E\"},\"theme_color\":{\"value\":\"color-4\"},\"card_color\":{\"value\":\"card-default\"},\"sidebar_color\":{\"value\":\"sidebar-white\"},\"sidebar_menu_style\":{\"value\":\"left-bordered\"},\"footer\":{\"value\":\"default\"}}}', 'string', NULL, 1, 1, NULL, '2025-11-27 06:42:10', '2025-11-27 06:42:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `is_manual` tinyint(1) NOT NULL DEFAULT 0,
  `amount` double DEFAULT NULL,
  `discount_percentage` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `identifier` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `level` bigint(20) NOT NULL DEFAULT 0,
  `plan_type` longtext DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `device_id` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `plan_id`, `user_id`, `start_date`, `end_date`, `status`, `is_manual`, `amount`, `discount_percentage`, `tax_amount`, `coupon_discount`, `total_amount`, `name`, `identifier`, `type`, `duration`, `level`, `plan_type`, `payment_id`, `device_id`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 14, '2025-10-21 00:00:00', '2025-11-21 00:00:00', 'active', 0, 20, NULL, 0, NULL, 20, 'Premium Plan', 'premium_plan', 'month', 1, 2, '[{\"id\":1,\"planlimitation_id\":1,\"limitation_title\":\"Video Cast\",\"limitation_value\":1,\"limit\":null,\"slug\":\"video-cast\",\"status\":1,\"message\":\"Cast videos to your TV with ease.\"},{\"id\":2,\"planlimitation_id\":2,\"limitation_title\":\"Ads\",\"limitation_value\":1,\"limit\":null,\"slug\":\"ads\",\"status\":1,\"message\":\"This plan includes ads.\"},{\"id\":3,\"planlimitation_id\":3,\"limitation_title\":\"Device Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"1\"},\"slug\":\"device-limit\",\"status\":1,\"message\":\"Stream on up to 1 devices simultaneously.\"},{\"id\":4,\"planlimitation_id\":4,\"limitation_title\":\"Download Status\",\"limitation_value\":1,\"limit\":{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":0,\"2K\":0,\"4K\":0,\"8K\":0},\"slug\":\"download-status\",\"status\":1,\"message\":\"Enjoy unlimited downloads with this plan.\"},{\"id\":17,\"planlimitation_id\":5,\"limitation_title\":\"Supported Device Type\",\"limitation_value\":1,\"limit\":{\"tablet\":\"0\",\"laptop\":\"0\",\"mobile\":\"1\"},\"slug\":\"supported-device-type\",\"status\":1,\"message\":null},{\"id\":18,\"planlimitation_id\":6,\"limitation_title\":\"Profile Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"2\"},\"slug\":\"profile-limit\",\"status\":1,\"message\":null}]', 8, '5', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 5, '2025-08-23 00:00:00', '2025-09-23 00:00:00', 'inactive', 0, 20, NULL, 0, NULL, 20, 'Premium Plan', 'premium_plan', 'month', 1, 2, '[{\"id\":1,\"planlimitation_id\":1,\"limitation_title\":\"Video Cast\",\"limitation_value\":1,\"limit\":null,\"slug\":\"video-cast\",\"status\":1,\"message\":\"Cast videos to your TV with ease.\"},{\"id\":2,\"planlimitation_id\":2,\"limitation_title\":\"Ads\",\"limitation_value\":1,\"limit\":null,\"slug\":\"ads\",\"status\":1,\"message\":\"This plan includes ads.\"},{\"id\":3,\"planlimitation_id\":3,\"limitation_title\":\"Device Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"1\"},\"slug\":\"device-limit\",\"status\":1,\"message\":\"Stream on up to 1 devices simultaneously.\"},{\"id\":4,\"planlimitation_id\":4,\"limitation_title\":\"Download Status\",\"limitation_value\":1,\"limit\":{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":0,\"2K\":0,\"4K\":0,\"8K\":0},\"slug\":\"download-status\",\"status\":1,\"message\":\"Enjoy unlimited downloads with this plan.\"},{\"id\":17,\"planlimitation_id\":5,\"limitation_title\":\"Supported Device Type\",\"limitation_value\":1,\"limit\":{\"tablet\":\"0\",\"laptop\":\"0\",\"mobile\":\"1\"},\"slug\":\"supported-device-type\",\"status\":1,\"message\":null},{\"id\":18,\"planlimitation_id\":6,\"limitation_title\":\"Profile Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"2\"},\"slug\":\"profile-limit\",\"status\":1,\"message\":null}]', 3, '3', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 3, '2025-10-23 00:00:00', '2026-01-23 00:00:00', 'active', 0, 50, NULL, 0, NULL, 50, 'Ultimate Plan', 'ultimate_plan', 'month', 3, 3, '[{\"id\":9,\"planlimitation_id\":1,\"limitation_title\":\"Video Cast\",\"limitation_value\":1,\"limit\":null,\"slug\":\"video-cast\",\"status\":1,\"message\":\"Cast videos to your TV with ease.\"},{\"id\":10,\"planlimitation_id\":2,\"limitation_title\":\"Ads\",\"limitation_value\":0,\"limit\":null,\"slug\":\"ads\",\"status\":1,\"message\":\"Ad-free streaming with this plan.\"},{\"id\":11,\"planlimitation_id\":3,\"limitation_title\":\"Device Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"5\"},\"slug\":\"device-limit\",\"status\":1,\"message\":\"Stream on up to 5 devices simultaneously.\"},{\"id\":12,\"planlimitation_id\":4,\"limitation_title\":\"Download Status\",\"limitation_value\":1,\"limit\":{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":1,\"2K\":1,\"4K\":0,\"8K\":0},\"slug\":\"download-status\",\"status\":1,\"message\":\"Enjoy unlimited downloads with this plan.\"},{\"id\":21,\"planlimitation_id\":5,\"limitation_title\":\"Supported Device Type\",\"limitation_value\":1,\"limit\":{\"tablet\":\"0\",\"laptop\":\"1\",\"mobile\":\"1\"},\"slug\":\"supported-device-type\",\"status\":1,\"message\":null},{\"id\":22,\"planlimitation_id\":6,\"limitation_title\":\"Profile Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"3\"},\"slug\":\"profile-limit\",\"status\":1,\"message\":null}]', 1, 'test11', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 6, '2025-07-27 00:00:00', '2025-10-27 00:00:00', 'inactive', 0, 50, NULL, 0, NULL, 50, 'Ultimate Plan', 'ultimate_plan', 'month', 3, 3, '[{\"id\":9,\"planlimitation_id\":1,\"limitation_title\":\"Video Cast\",\"limitation_value\":1,\"limit\":null,\"slug\":\"video-cast\",\"status\":1,\"message\":\"Cast videos to your TV with ease.\"},{\"id\":10,\"planlimitation_id\":2,\"limitation_title\":\"Ads\",\"limitation_value\":0,\"limit\":null,\"slug\":\"ads\",\"status\":1,\"message\":\"Ad-free streaming with this plan.\"},{\"id\":11,\"planlimitation_id\":3,\"limitation_title\":\"Device Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"5\"},\"slug\":\"device-limit\",\"status\":1,\"message\":\"Stream on up to 5 devices simultaneously.\"},{\"id\":12,\"planlimitation_id\":4,\"limitation_title\":\"Download Status\",\"limitation_value\":1,\"limit\":{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":1,\"2K\":1,\"4K\":0,\"8K\":0},\"slug\":\"download-status\",\"status\":1,\"message\":\"Enjoy unlimited downloads with this plan.\"},{\"id\":21,\"planlimitation_id\":5,\"limitation_title\":\"Supported Device Type\",\"limitation_value\":1,\"limit\":{\"tablet\":\"0\",\"laptop\":\"1\",\"mobile\":\"1\"},\"slug\":\"supported-device-type\",\"status\":1,\"message\":null},{\"id\":22,\"planlimitation_id\":6,\"limitation_title\":\"Profile Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"3\"},\"slug\":\"profile-limit\",\"status\":1,\"message\":null}]', 4, '3', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 4, '2025-11-22 00:00:00', '2025-11-29 00:00:00', 'active', 0, 5, NULL, 0, NULL, 5, 'Basic', 'basic', 'week', 1, 1, '[{\"id\":1,\"planlimitation_id\":1,\"limitation_title\":\"Video Cast\",\"limitation_value\":1,\"limit\":null,\"slug\":\"video-cast\",\"status\":1,\"message\":\"Cast videos to your TV with ease.\"},{\"id\":2,\"planlimitation_id\":2,\"limitation_title\":\"Ads\",\"limitation_value\":1,\"limit\":null,\"slug\":\"ads\",\"status\":1,\"message\":\"This plan includes ads.\"},{\"id\":3,\"planlimitation_id\":3,\"limitation_title\":\"Device Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"1\"},\"slug\":\"device-limit\",\"status\":1,\"message\":\"Stream on up to 1 devices simultaneously.\"},{\"id\":4,\"planlimitation_id\":4,\"limitation_title\":\"Download Status\",\"limitation_value\":1,\"limit\":{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":0,\"2K\":0,\"4K\":0,\"8K\":0},\"slug\":\"download-status\",\"status\":1,\"message\":\"Enjoy unlimited downloads with this plan.\"},{\"id\":17,\"planlimitation_id\":5,\"limitation_title\":\"Supported Device Type\",\"limitation_value\":1,\"limit\":{\"tablet\":\"0\",\"laptop\":\"0\",\"mobile\":\"1\"},\"slug\":\"supported-device-type\",\"status\":1,\"message\":null},{\"id\":18,\"planlimitation_id\":6,\"limitation_title\":\"Profile Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"2\"},\"slug\":\"profile-limit\",\"status\":1,\"message\":null}]', 2, 'test11', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 10, '2025-10-22 00:00:00', '2025-10-29 00:00:00', 'inactive', 0, 5, NULL, 0, NULL, 5, 'Basic', 'basic', 'week', 1, 1, '[{\"id\":1,\"planlimitation_id\":1,\"limitation_title\":\"Video Cast\",\"limitation_value\":1,\"limit\":null,\"slug\":\"video-cast\",\"status\":1,\"message\":\"Cast videos to your TV with ease.\"},{\"id\":2,\"planlimitation_id\":2,\"limitation_title\":\"Ads\",\"limitation_value\":1,\"limit\":null,\"slug\":\"ads\",\"status\":1,\"message\":\"This plan includes ads.\"},{\"id\":3,\"planlimitation_id\":3,\"limitation_title\":\"Device Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"1\"},\"slug\":\"device-limit\",\"status\":1,\"message\":\"Stream on up to 1 devices simultaneously.\"},{\"id\":4,\"planlimitation_id\":4,\"limitation_title\":\"Download Status\",\"limitation_value\":1,\"limit\":{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":0,\"2K\":0,\"4K\":0,\"8K\":0},\"slug\":\"download-status\",\"status\":1,\"message\":\"Enjoy unlimited downloads with this plan.\"},{\"id\":17,\"planlimitation_id\":5,\"limitation_title\":\"Supported Device Type\",\"limitation_value\":1,\"limit\":{\"tablet\":\"0\",\"laptop\":\"0\",\"mobile\":\"1\"},\"slug\":\"supported-device-type\",\"status\":1,\"message\":null},{\"id\":18,\"planlimitation_id\":6,\"limitation_title\":\"Profile Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"2\"},\"slug\":\"profile-limit\",\"status\":1,\"message\":null}]', 7, '4', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, 8, '2024-11-27 00:00:00', '2025-11-27 00:00:00', 'active', 0, 80, NULL, 0, NULL, 80, 'Elite Plan', 'elite_plan', 'year', 1, 4, '[{\"id\":13,\"planlimitation_id\":1,\"limitation_title\":\"Video Cast\",\"limitation_value\":1,\"limit\":null,\"slug\":\"video-cast\",\"status\":1,\"message\":\"Cast videos to your TV with ease.\"},{\"id\":14,\"planlimitation_id\":2,\"limitation_title\":\"Ads\",\"limitation_value\":0,\"limit\":null,\"slug\":\"ads\",\"status\":1,\"message\":\"Ad-free streaming with this plan.\"},{\"id\":15,\"planlimitation_id\":3,\"limitation_title\":\"Device Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"8\"},\"slug\":\"device-limit\",\"status\":1,\"message\":\"Stream on up to 8 devices simultaneously.\"},{\"id\":16,\"planlimitation_id\":4,\"limitation_title\":\"Download Status\",\"limitation_value\":1,\"limit\":{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":1,\"2K\":1,\"4K\":1,\"8K\":1},\"slug\":\"download-status\",\"status\":1,\"message\":\"Enjoy unlimited downloads with this plan.\"},{\"id\":23,\"planlimitation_id\":5,\"limitation_title\":\"Supported Device Type\",\"limitation_value\":1,\"limit\":{\"tablet\":\"1\",\"laptop\":\"1\",\"mobile\":\"1\"},\"slug\":\"supported-device-type\",\"status\":1,\"message\":null},{\"id\":24,\"planlimitation_id\":6,\"limitation_title\":\"Profile Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"4\"},\"slug\":\"profile-limit\",\"status\":1,\"message\":null}]', 5, '4', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, 9, '2025-11-14 00:00:00', '2026-11-14 00:00:00', 'active', 0, 80, NULL, 0, NULL, 80, 'Elite Plan', 'elite_plan', 'year', 1, 4, '[{\"id\":13,\"planlimitation_id\":1,\"limitation_title\":\"Video Cast\",\"limitation_value\":1,\"limit\":null,\"slug\":\"video-cast\",\"status\":1,\"message\":\"Cast videos to your TV with ease.\"},{\"id\":14,\"planlimitation_id\":2,\"limitation_title\":\"Ads\",\"limitation_value\":0,\"limit\":null,\"slug\":\"ads\",\"status\":1,\"message\":\"Ad-free streaming with this plan.\"},{\"id\":15,\"planlimitation_id\":3,\"limitation_title\":\"Device Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"8\"},\"slug\":\"device-limit\",\"status\":1,\"message\":\"Stream on up to 8 devices simultaneously.\"},{\"id\":16,\"planlimitation_id\":4,\"limitation_title\":\"Download Status\",\"limitation_value\":1,\"limit\":{\"480p\":1,\"720p\":1,\"1080p\":1,\"1440p\":1,\"2K\":1,\"4K\":1,\"8K\":1},\"slug\":\"download-status\",\"status\":1,\"message\":\"Enjoy unlimited downloads with this plan.\"},{\"id\":23,\"planlimitation_id\":5,\"limitation_title\":\"Supported Device Type\",\"limitation_value\":1,\"limit\":{\"tablet\":\"1\",\"laptop\":\"1\",\"mobile\":\"1\"},\"slug\":\"supported-device-type\",\"status\":1,\"message\":null},{\"id\":24,\"planlimitation_id\":6,\"limitation_title\":\"Profile Limit\",\"limitation_value\":1,\"limit\":{\"value\":\"4\"},\"slug\":\"profile-limit\",\"status\":1,\"message\":null}]', 6, '4', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions_transactions`
--

CREATE TABLE `subscriptions_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscriptions_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `payment_type` varchar(191) DEFAULT NULL,
  `payment_status` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `tax_data` text DEFAULT NULL,
  `other_transactions_details` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions_transactions`
--

INSERT INTO `subscriptions_transactions` (`id`, `subscriptions_id`, `user_id`, `amount`, `payment_type`, `payment_status`, `transaction_id`, `tax_data`, `other_transactions_details`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 50, 'stripe', 'paid', 'pi_1OnGh1FTMa5P8ht0pEWTz', NULL, NULL, 3, 3, NULL, NULL, '2024-07-15 04:03:46', '2024-07-15 04:03:46'),
(2, 2, 4, 5, 'stripe', 'paid', 'pi_1OnGh1FTMa5P8ht0pEWTz', NULL, NULL, 4, 4, NULL, NULL, '2024-07-15 04:07:23', '2024-07-15 04:07:23'),
(3, 3, 5, 20, 'stripe', 'paid', 'pi_1OnGh1FTMa5P8ht0pEWTz', NULL, NULL, 5, 5, NULL, NULL, '2024-07-15 04:09:02', '2024-07-15 04:09:02'),
(4, 4, 6, 50, 'stripe', 'paid', 'pi_1OnGh1FTMa5P8ht0pEWTz', NULL, NULL, 6, 6, NULL, NULL, '2024-07-15 04:11:37', '2024-07-15 04:11:37'),
(5, 5, 8, 80, 'stripe', 'paid', 'pi_1OnGh1FTMa5P8ht0pEWTz', NULL, NULL, 8, 8, NULL, NULL, '2024-07-15 04:14:11', '2024-07-15 04:14:11'),
(6, 6, 9, 80, 'stripe', 'paid', 'pi_1OnGh1FTMa5P8ht0pEWTz', NULL, NULL, 9, 9, NULL, NULL, '2024-07-15 04:15:47', '2024-07-15 04:15:47'),
(7, 7, 10, 5, 'stripe', 'paid', 'pi_1OnGh1FTMa5P8ht0pEWTz', NULL, NULL, 10, 10, NULL, NULL, '2024-07-15 04:16:34', '2024-07-15 04:16:34'),
(8, 8, 14, 20, 'stripe', 'paid', 'pi_1OnGh1FTMa5P8ht0pEWTz', NULL, NULL, 14, 14, NULL, NULL, '2024-07-15 04:18:17', '2024-07-15 04:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `subtitles`
--

CREATE TABLE `subtitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'movie',
  `language` varchar(191) NOT NULL,
  `language_code` varchar(191) NOT NULL,
  `subtitle_file` varchar(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT 'percent' COMMENT 'fixed , percent',
  `value` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `type`, `value`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'GST', 'Percentage', 18, 1, 2, 2, NULL, '2024-10-09 07:00:27', '2024-10-09 07:00:27', NULL),
(2, 'CGST', 'Percentage', 9, 1, 2, 2, NULL, '2024-10-09 07:00:53', '2024-10-09 07:02:17', NULL),
(3, 'VAT', 'Percentage', 20, 1, 2, 2, NULL, '2024-10-09 07:04:57', '2024-10-09 07:04:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tv_login_sessions`
--

CREATE TABLE `tv_login_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `login_type` varchar(191) DEFAULT NULL,
  `file_url` text DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `is_banned` tinyint(4) NOT NULL DEFAULT 0,
  `is_subscribe` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `last_notification_seen` timestamp NULL DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `user_type` varchar(191) DEFAULT NULL,
  `pin` smallint(6) DEFAULT NULL,
  `otp` smallint(6) DEFAULT NULL,
  `is_parental_lock_enable` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `mobile`, `login_type`, `file_url`, `gender`, `date_of_birth`, `email_verified_at`, `password`, `is_banned`, `is_subscribe`, `status`, `last_notification_seen`, `address`, `user_type`, `pin`, `otp`, `is_parental_lock_enable`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Super', 'Admin', 'admin@streamit.com', '+12123567890', NULL, 'super_admin.png', 'female', '1992-03-04', '2025-11-20 07:04:37', '$2y$10$2poZhvZb/nFXOCvGdvP6wevbv4oj8PTG08dQEgimsnobj8VNgXP.2', 0, 0, 1, NULL, NULL, 'admin', NULL, NULL, 0, NULL, '2025-11-20 07:04:37', '2025-11-20 07:04:43', NULL),
(2, NULL, 'Ivan', 'Norris', 'demo@streamit.com', '+12124567899', NULL, 'demo_admin.png', 'male', '2003-03-08', '2025-11-20 07:04:37', '$2y$10$lgT9V4IafUSATgarvkgINeO9F7Eol3jp9B2UKXxRtI8WTnhI51q5W', 0, 0, 1, NULL, NULL, 'demo_admin', NULL, NULL, 0, NULL, '2025-11-20 07:04:37', '2025-11-20 07:04:44', NULL),
(3, NULL, 'John', 'Doe', 'john@gmail.com', '+911234567890', 'otp', 'john.png', 'male', '1990-02-13', '2025-11-20 07:04:37', '$2y$10$IMHMi5zy5K3sJSyurpuGn.evXZdJcfTX4bEW8vEuGXBuJVglIQOnG', 0, 1, 1, NULL, '101 Pine Lane Miami, FL 33101 United States', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:37', '2025-11-20 07:04:44', NULL),
(4, NULL, 'Tristan', 'Erickson', 'tristan@gmail.com', '+447911123456', 'otp', 'tristan.png', 'male', '1992-05-21', '2025-11-20 07:04:37', '$2y$10$nFo2NSyl81bZzHgc9pvDCORlpdd7zmvkDH1XoyPFyjNM9oB4paiQG', 0, 1, 1, NULL, '46 Oxford Road London, W1D 1BS United Kingdom', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:37', '2025-11-20 07:04:44', NULL),
(5, NULL, 'Felix', 'Harris', 'felix@gmail.com', '+12124567890', 'otp', 'felix.png', 'male', '1996-02-02', '2025-11-20 07:04:37', '$2y$10$6cPDYYjxgwc6BvoIWI.7V.PtiNciQMqdbU7CKGwbADeo2NHZhz6fa', 0, 1, 1, NULL, '3 Queen Street Sydney, NSW 2000 Australia', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:37', '2025-11-20 07:04:45', NULL),
(6, NULL, 'Harry', 'Victoria', 'harry@gmail.com', '+447911123456', 'otp', 'harry.png', 'male', '1987-07-08', '2025-11-20 07:04:38', '$2y$10$ESXhVZCx5yvb4/P/TFa3x.cZVN/qBaI80eXb2Mrmak2AB0oVl74FG', 0, 1, 1, NULL, '11 Rue de Rivoli Paris, 75001 France', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:38', '2025-11-20 07:04:45', NULL),
(7, NULL, 'Jorge', 'Perez', 'jorge@gmail.com', '+496912345678', 'otp', 'jorge.png', 'male', '1991-01-01', '2025-11-20 07:04:38', '$2y$10$oafADS2oUV90esEKWclp3eNzYC/1/s8HAXPtPStZKXEFpl57y9w9y', 0, 0, 1, NULL, '20 Kurfürstendamm Berlin, 10719 Germany', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:38', '2025-11-20 07:04:45', NULL),
(8, NULL, 'Joy', 'Hanry', 'joy@gmail.com', '+81312345678', 'otp', 'joy.png', 'male', '1993-07-10', '2025-11-20 07:04:38', '$2y$10$8rM4HXE4La8xcJonZNgi5eR6twkYGxOZm9dckd18sLWCz3XF3JrDy', 0, 1, 1, NULL, '3 Shibuya Street Tokyo, 150-0002 Japan', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:38', '2025-11-20 07:04:45', NULL),
(9, NULL, 'Deborah', 'Thomas', 'deborah@gmail.com', '+81312355678', 'otp', 'deborah.png', 'female', '1992-03-26', '2025-11-20 07:04:38', '$2y$10$G8ULHFdjyYm0uROUbfZ.oOIMyU/sDcvK8zN9G.aMEBsWA1l0w8DYu', 0, 1, 1, NULL, '7 Maple Avenue Toronto, ON M5H 2N2 Canada', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:38', '2025-11-20 07:04:45', NULL),
(10, NULL, 'Katie', 'Brown', 'katie@gmail.com', '+12124467890', 'otp', 'katie.png', 'female', '1994-08-16', '2025-11-20 07:04:38', '$2y$10$gNBFiWY9aAa3EwotM8QNSe84mffvNgcnf8U0Pwq6f2eSLJ4msfx5S', 0, 1, 1, NULL, '14 Gran Vía Madrid, 28013 Spain', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:38', '2025-11-20 07:04:45', NULL),
(11, NULL, 'Dorothy', 'Erickson', 'dorothy@gmail.com', '+12124577890', 'otp', 'dorothy.png', 'female', '1989-10-10', '2025-11-20 07:04:38', '$2y$10$LRob3Y5fxRKWlTQfMlX5YOLqpjDnBAzTglI0L0Uut6er6nZ2meEk.', 0, 0, 1, NULL, '50 Paulista Avenue São Paulo, SP 01310-100 Brazil', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:38', '2025-11-20 07:04:45', NULL),
(12, NULL, 'Lisa', 'Lucas', 'lisa@gmail.com', '+12124567790', 'otp', 'lisa.png', 'female', '1993-08-03', '2025-11-20 07:04:38', '$2y$10$MomSBkd.oFTLSmt8ODdeKueJUlcOSM3opcVbl3w/ZF/m8vz7Tr.8a', 0, 0, 1, NULL, '6 Sheikh Zayed Road Dubai, 00000 United Arab Emirates', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:38', '2025-11-20 07:04:45', NULL),
(13, NULL, 'Tracy', 'Jones', 'tracy@gmail.com', '+913465656789', 'otp', 'tracy.png', 'female', '1990-11-19', '2025-11-20 07:04:38', '$2y$10$YtidoGw.K1MOSZA3Qhs7LOr.t97ltULWmFf29/On2fAqELJUMaIfe', 0, 0, 1, NULL, '71 Orchard Road Singapore, 238838 Singapore', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:38', '2025-11-20 07:04:45', NULL),
(14, NULL, 'Stella', 'Green', 'stella@gmail.com', '+913465756789', 'otp', 'stella.png', 'female', '1991-12-18', '2025-11-20 07:04:38', '$2y$10$S5ESCxqk9W9Vcub1mf/fTe0lj5Pm3BzCkbmHKwdpNPhxsKnSLFq3W', 0, 1, 1, NULL, '15 Redwood Way Phoenix, AZ 85001 United States', 'user', NULL, NULL, 0, NULL, '2025-11-20 07:04:38', '2025-11-20 07:04:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_coupon_redeem`
--

CREATE TABLE `user_coupon_redeem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) NOT NULL,
  `discount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_multi_profiles`
--

CREATE TABLE `user_multi_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `is_child_profile` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_multi_profiles`
--

INSERT INTO `user_multi_profiles` (`id`, `user_id`, `name`, `avatar`, `is_child_profile`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Admin', 'http://127.0.0.1:8000/storage/avatars/4oQaoqPlXr.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:44', '2025-11-20 07:04:44'),
(2, 2, 'Ivan Norris', 'http://127.0.0.1:8000/storage/avatars/1GPE4xumxi.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:44', '2025-11-20 07:04:44'),
(3, 3, 'John Doe', 'http://127.0.0.1:8000/storage/avatars/MZqkuzLcjV.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:44', '2025-11-20 07:04:44'),
(4, 4, 'Tristan Erickson', 'http://127.0.0.1:8000/storage/avatars/Xngo0lNQYu.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:44', '2025-11-20 07:04:44'),
(5, 5, 'Felix Harris', 'http://127.0.0.1:8000/storage/avatars/3lvQrdzUBI.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(6, 6, 'Harry Victoria', 'http://127.0.0.1:8000/storage/avatars/u0U9e4FZ9u.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(7, 7, 'Jorge Perez', 'http://127.0.0.1:8000/storage/avatars/AXx0dwjUwV.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(8, 8, 'Joy Hanry', 'http://127.0.0.1:8000/storage/avatars/iHmcfdYJJT.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(9, 9, 'Deborah Thomas', 'http://127.0.0.1:8000/storage/avatars/iLdDkJzrf1.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(10, 10, 'Katie Brown', 'http://127.0.0.1:8000/storage/avatars/51rYnCwAcA.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(11, 11, 'Dorothy Erickson', 'http://127.0.0.1:8000/storage/avatars/iU2z1nRLQC.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(12, 12, 'Lisa Lucas', 'http://127.0.0.1:8000/storage/avatars/pYjlKmqMsZ.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(13, 13, 'Tracy Jones', 'http://127.0.0.1:8000/storage/avatars/aDEdTBBt7Y.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(14, 14, 'Stella Green', 'http://127.0.0.1:8000/storage/avatars/6qiXBTQbZG.png', 0, NULL, NULL, NULL, NULL, '2025-11-20 07:04:45', '2025-11-20 07:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_self` varchar(191) DEFAULT NULL,
  `expert` varchar(191) DEFAULT NULL,
  `facebook_link` varchar(191) DEFAULT NULL,
  `instagram_link` varchar(191) DEFAULT NULL,
  `twitter_link` varchar(191) DEFAULT NULL,
  `dribbble_link` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `about_self`, `expert`, `facebook_link`, `instagram_link`, `twitter_link`, `dribbble_link`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'I am a passionate developer.', 'Web Development', 'https://facebook.com/user1', 'https://instagram.com/user1', 'https://twitter.com/user1', 'https://dribbble.com/user1', 1, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(2, 'Love creating content and engaging with my audience.', 'Content Creation', 'https://facebook.com/user2', 'https://instagram.com/user2', 'https://twitter.com/user2', 'https://dribbble.com/user2', 2, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL),
(3, 'Tech enthusiast and blogger.', 'Tech Blogging', 'https://facebook.com/user3', 'https://instagram.com/user3', 'https://twitter.com/user3', 'https://dribbble.com/user3', 3, '2025-11-20 07:04:45', '2025-11-20 07:04:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_providers`
--

CREATE TABLE `user_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_reminder`
--

CREATE TABLE `user_reminder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `is_remind` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_search_histories`
--

CREATE TABLE `user_search_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_id` bigint(20) UNSIGNED DEFAULT NULL,
  `search_query` varchar(191) DEFAULT NULL,
  `search_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_search_histories`
--

INSERT INTO `user_search_histories` (`id`, `user_id`, `profile_id`, `search_query`, `search_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'Shadow Pursuit', 4, 'tvshow', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(2, 3, 3, 'Wolfbound', 8, 'tvshow', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(3, 3, 3, 'Road to Reconnection', 14, 'tvshow', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(4, 4, 4, 'The Daring Player', 27, 'movie', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(5, 3, 3, 'Legacy of Antiquity: Origins of Civilization', 36, 'movie', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(6, 3, 3, 'Guardians of the Abyss: The Beast Awakens', 46, 'tvshow', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(7, 4, 4, 'Blade of Chaos', 52, 'movie', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(8, 3, 3, 'Echoes of Valor', 6, 'video', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(9, 3, 3, 'Warrior\'s Dilemma', 11, 'video', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(10, 3, 3, 'School Hacks & Fun DIY Crafts', 15, 'video', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(11, 4, 4, 'Motel of Nightmares', 21, 'video', '2025-11-20 07:04:45', '2025-11-20 07:04:45'),
(12, 4, 4, 'Mango Mousse Delight', 24, 'video', '2025-11-20 07:04:45', '2025-11-20 07:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_watch_histories`
--

CREATE TABLE `user_watch_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `entertainment_type` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_watch_histories`
--

INSERT INTO `user_watch_histories` (`id`, `entertainment_id`, `user_id`, `profile_id`, `entertainment_type`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 101, 3, 3, 'movie', 3, 3, NULL, NULL, NULL, NULL),
(2, 15, 3, 3, 'tvshow', 3, 3, NULL, NULL, NULL, NULL),
(3, 35, 3, 3, 'movie', 3, 3, NULL, NULL, NULL, NULL),
(4, 12, 4, 4, 'tvshow', 4, 4, NULL, NULL, NULL, NULL),
(5, 15, 4, 4, 'video', 4, 4, NULL, NULL, NULL, NULL),
(6, 10, 4, 4, 'video', 4, 4, NULL, NULL, NULL, NULL),
(7, 5, 3, 3, 'video', 3, 3, NULL, NULL, NULL, NULL),
(8, 65, 3, 3, 'movie', 3, 3, NULL, NULL, NULL, NULL),
(9, 2, 4, 4, 'tvshow', 4, 4, NULL, NULL, NULL, NULL),
(10, 8, 3, 3, 'video', 3, 3, NULL, NULL, NULL, NULL),
(11, 18, 4, 4, 'video', 4, 4, NULL, NULL, NULL, NULL),
(12, 18, 3, 3, 'tvshow', 3, 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vast_ads_setting`
--

CREATE TABLE `vast_ads_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `target_type` varchar(191) DEFAULT NULL,
  `target_selection` longtext DEFAULT NULL,
  `enable_skip` tinyint(1) NOT NULL DEFAULT 0,
  `skip_after` varchar(191) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vast_ads_setting`
--

INSERT INTO `vast_ads_setting` (`id`, `name`, `type`, `url`, `duration`, `target_type`, `target_selection`, `enable_skip`, `skip_after`, `frequency`, `start_date`, `end_date`, `is_enable`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BigSale', 'pre-roll', 'https://basil79.github.io/vast-sample-tags/pg/vast.xml', NULL, 'movie', '[22,23,25,26,28,94,95,96]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:34:17', '2025-07-25 00:34:17', NULL),
(2, 'MovieTicket', 'mid-roll', 'https://basil79.github.io/vast-sample-tags/pg/vast.xml', NULL, 'movie', '[22,23,25,26,28,94,95,96]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:36:03', '2025-07-25 00:36:03', NULL),
(3, 'EpisodePromo', 'post-roll', 'https://basil79.github.io/vast-sample-tags/pg/vast.xml', NULL, 'movie', '[22,23,25,26,28,94,95,96]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:37:32', '2025-07-25 00:37:32', NULL),
(4, 'ServicePromo', 'overlay', 'https://raw.githubusercontent.com/InteractiveAdvertisingBureau/VAST_Samples/master/VAST%203.0%20Samples/Inline_Non-Linear_Tag-test.xml', NULL, 'movie', '[22,23,25,26,28,94,95,96]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:39:01', '2025-07-25 00:39:01', NULL),
(5, 'BigSale', 'pre-roll', 'https://basil79.github.io/vast-sample-tags/pg/vast.xml', NULL, 'video', '[1,2,3,4,5,17,26]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:41:03', '2025-07-25 00:41:03', NULL),
(6, 'MovieTicket', 'mid-roll', 'https://basil79.github.io/vast-sample-tags/pg/vast.xml', NULL, 'video', '[1,2,3,4,5,17,26]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:42:26', '2025-07-25 00:42:26', NULL),
(7, 'EpisodePromo', 'post-roll', 'https://basil79.github.io/vast-sample-tags/pg/vast.xml', NULL, 'video', '[1,2,3,4,5,17,26]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:43:38', '2025-07-25 00:43:38', NULL),
(8, 'ServicePromo', 'overlay', 'https://raw.githubusercontent.com/InteractiveAdvertisingBureau/VAST_Samples/master/VAST%203.0%20Samples/Inline_Non-Linear_Tag-test.xml', NULL, 'video', '[1,2,3,4,5,17,26]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:47:56', '2025-07-25 00:47:56', NULL),
(9, 'BigSale', 'pre-roll', 'https://basil79.github.io/vast-sample-tags/pg/vast.xml', NULL, 'tvshow', '[1,2,3,11,12,23,24,25]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:49:54', '2025-07-25 00:49:54', NULL),
(10, 'MovieTicket', 'mid-roll', 'https://basil79.github.io/vast-sample-tags/pg/vast.xml', NULL, 'tvshow', '[1,2,3,11,12,23,24,25]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:51:34', '2025-07-25 00:51:34', NULL),
(11, 'EpisodePromo', 'post-roll', 'https://basil79.github.io/vast-sample-tags/pg/vast.xml', NULL, 'tvshow', '[1,2,3,11,12,23,24,25]', 0, NULL, NULL, '2025-11-20', '2026-11-20', 0, 1, '2025-07-25 00:53:06', '2025-07-25 00:53:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `poster_url` text DEFAULT NULL,
  `trailer_url_type` varchar(191) DEFAULT NULL,
  `trailer_url` text DEFAULT NULL,
  `access` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `IMDb_rating` int(11) DEFAULT NULL,
  `content_rating` longtext DEFAULT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT 0,
  `short_desc` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `enable_quality` tinyint(1) NOT NULL DEFAULT 0,
  `video_upload_type` varchar(191) DEFAULT NULL,
  `video_url_input` text DEFAULT NULL,
  `download_status` tinyint(1) NOT NULL DEFAULT 0,
  `download_type` varchar(191) DEFAULT NULL,
  `download_url` text DEFAULT NULL,
  `enable_download_quality` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `poster_tv_url` text DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `purchase_type` varchar(191) DEFAULT NULL,
  `access_duration` int(11) DEFAULT NULL,
  `discount` varchar(191) DEFAULT NULL,
  `available_for` int(11) DEFAULT NULL,
  `enable_subtitle` tinyint(1) NOT NULL DEFAULT 0,
  `subtitle_language` varchar(191) DEFAULT NULL,
  `is_default_subtitle` tinyint(1) NOT NULL DEFAULT 0,
  `subtitle_file` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `seo_image` varchar(191) DEFAULT NULL,
  `google_site_verification` varchar(191) DEFAULT NULL,
  `canonical_url` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `poster_url`, `trailer_url_type`, `trailer_url`, `access`, `type`, `plan_id`, `IMDb_rating`, `content_rating`, `duration`, `release_date`, `is_restricted`, `short_desc`, `description`, `enable_quality`, `video_upload_type`, `video_url_input`, `download_status`, `download_type`, `download_url`, `enable_download_quality`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`, `poster_tv_url`, `price`, `purchase_type`, `access_duration`, `discount`, `available_for`, `enable_subtitle`, `subtitle_language`, `is_default_subtitle`, `subtitle_file`, `meta_title`, `meta_keywords`, `meta_description`, `seo_image`, `google_site_verification`, `canonical_url`, `short_description`) VALUES
(1, 'Tumse Pyar - Lofi Love Mix', 'Container_692840a51fb36.jpg', 'YouTube', NULL, 'free', NULL, NULL, NULL, NULL, '12:00', '2020-02-05', 0, 'Experience the serene and soulful melodies of \"Tumse Pyar - Lofi Love Mix,\" the latest love song perfect for moments of reflection and romance. 🎶❤️', '<p>Dive into the tranquil vibes of \"Tumse Pyar - Lofi Love Mix,\" a soothing and heartfelt love song that blends gentle rhythms with emotional depth. This latest release is crafted for those cherished moments of intimacy and reflection, offering a perfect backdrop for love and nostalgia. Whether you\'re unwinding after a long day or sharing a quiet evening with someone special, \"Tumse Pyar\" provides a harmonious escape into the world of lofi beats and tender lyrics. 🎶❤️</p>', 0, 'YouTube', 'https://youtu.be/kXHiIxx2atA?si=BMzFthwqI5t7Ve8j', 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2025-11-20 07:05:03', '2025-11-27 12:14:39', NULL, 'Container_692840a51fb36.jpg', NULL, 'rental', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Seize Your Life - Powerful Motivational Speech', 'Container_1_692840c90dac5.jpg', 'YouTube', NULL, 'paid', NULL, 1, NULL, NULL, '12:00', '2021-06-21', 0, 'Seize Your Life is a compelling motivational speech that inspires you to take control and live your life to the fullest. 🚀🌟', '<p>In Seize Your Life - Powerful Motivational Speech, discover the keys to unlocking your potential and embracing every moment with purpose and passion. This uplifting speech is packed with powerful insights and practical advice that will motivate you to overcome obstacles, chase your dreams, and seize every opportunity that life presents. Whether you\'re looking for a boost in your personal or professional life, \"Seize Your Life\" provides the inspiration you need to take action and make the most of your journey. 🚀🌟</p>', 0, 'YouTube', 'https://youtu.be/NGtv92rU0Hg?si=ZllzFTnemBDE73L8', 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2025-11-20 07:05:03', '2025-11-27 12:15:14', NULL, 'Container_1_692840c90dac5.jpg', NULL, 'rental', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Serenity of Nature', 'Container_2_692840f700425.jpg', 'YouTube', NULL, 'free', NULL, NULL, NULL, NULL, '12:00', '2022-03-04', 0, 'Serenity of Nature is a breathtaking short video capturing the tranquil beauty of the natural world. 🌿🌅', '<p>Serenity of Nature offers a mesmerizing journey through some of the most beautiful and serene landscapes on Earth. This short video captures the essence of nature\'s tranquility, from cascading waterfalls and lush forests to serene sunsets and majestic mountains. With stunning visuals and soothing sounds, Serenity of Nature provides a peaceful escape, allowing viewers to connect with the beauty and calm of the natural world. Perfect for relaxation and mindfulness, this video is a visual treat for nature lovers and anyone seeking a moment of serenity. 🌿🌅🌊</p>', 0, 'YouTube', 'https://youtu.be/668nUCeBHyY?si=SPQ7yT4NVQp0QoW-', 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2025-11-20 07:05:03', '2025-11-27 12:16:01', NULL, 'Container_2_692840f700425.jpg', NULL, 'rental', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Run For Your Life', 'Container_3_6928411f80baf.jpg', 'YouTube', NULL, 'free', NULL, NULL, NULL, NULL, '12:00', '2023-01-23', 0, 'A heart-pounding thriller where survival is the only option. 🏃‍♂️💥', '<p>Run For Your Life is a heart-pounding thriller that follows the protagonist as they navigate a relentless pursuit, where survival is the only option. With every twist and turn, the stakes get higher, and the chase becomes more intense. This gripping tale of endurance and courage will keep you on the edge of your seat from start to finish. 🏃&zwj;♂️💥</p>', 0, 'YouTube', 'https://youtu.be/79Sd4GtOXuI?si=kgtBwn0Riw_TcvdX', 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2025-11-20 07:05:03', '2025-11-27 12:16:40', NULL, 'Container_3_6928411f80baf.jpg', NULL, 'rental', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Cityscape Escapade', 'Container_4_6928414610f5b.jpg', 'YouTube', NULL, 'free', NULL, NULL, NULL, NULL, '12:00', '2024-04-18', 1, 'Embark on a thrilling journey through the urban jungle, filled with surprises and new encounters. 🏙️🌟', '<p>Cityscape Escapade takes viewers on an exhilarating adventure through the bustling urban landscape. Follow a spirited protagonist as they navigate crowded streets, discover hidden gems, and forge unexpected friendships along the way. This vibrant video captures the essence of exploration and discovery in the heart of the city, promising excitement and heartwarming moments for all who embark on this journey. 🏙️🌟</p>', 0, 'YouTube', 'https://youtu.be/mYfJxlgR2jw?si=uQgarqR0VJvdfUd5', 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2025-11-20 07:05:03', '2025-11-27 12:17:30', NULL, 'Container_4_6928414610f5b.jpg', NULL, 'rental', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Echoes of Valor', 'echoes_of_valor.png', 'YouTube', NULL, 'free', NULL, NULL, NULL, NULL, '01:20', '2024-04-19', 0, 'Echoes of Valor depicts the intense and emotional journey of a sniper and his spotter during the Indo-Pak War, facing moral conflicts in their pursuit of the enemy. 🎬🏅', 'Echoes of Valor brings to life the harrowing experiences of two Indian Army soldiers—a sniper and his spotter—during the Indo-Pak War. The film captures their inner turmoil as they confront their foes and wrestle with the ethical implications of their mission. A powerful thriller with a stirring musical score, it offers a profound reflection on the nature of conflict and bravery. 🎖️🌟', 0, 'YouTube', 'https://youtu.be/JEKCMP3w9zs?si=psaIC0wKC3akDOqp', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 'echoes_of_valor.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Victory Vibes', 'victory_vibes.png', 'YouTube', NULL, 'pay-per-view', NULL, NULL, NULL, NULL, '00:50', '2024-04-20', 0, 'Get inspired by quick, uplifting videos celebrating athletes\' perseverance, grit, and determination in overcoming challenges. 🌟🏅', 'Victory Vibes brings you bite-sized, motivational videos showcasing the incredible stories of athletes who triumph against the odds. Whether it’s the underdog story, the road to recovery, or pushing past limits, these short clips will inspire you to chase your dreams. Watch, feel the adrenaline, and fuel your passion for greatness! 💪🏆', 0, 'YouTube', 'https://youtu.be/seSCvuejudM?si=v7SdVilWIM1Niqid', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 'victory_vibes.png', 10.00, 'rental', 5, '10', 20, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Midnight Thrills', 'midnight_thrills.png', 'YouTube', NULL, 'pay-per-view', NULL, NULL, NULL, NULL, '00:45', '2024-04-21', 0, 'Dive into spine-chilling suspense with brief, gripping thriller shorts that keep you on the edge of your seat. 🌙🔍', 'Midnight Thrills offers a collection of intense, suspenseful short films that will captivate and thrill you in just a few minutes. Each video is a meticulously crafted suspense thriller that delivers unexpected twists, dark mysteries, and nail-biting moments. Perfect for when you crave a quick dose of excitement and intrigue. Get ready for a thrilling experience under the cover of night! 🎬🕵️‍♂️', 0, 'YouTube', 'https://youtu.be/VHenrR4ledY?si=PCHvpjq4t9zpaJim', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 'midnight_thrills.png', 10.00, 'rental', 5, '10', 20, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Hearts Entwined', 'hearts_entwined.png', 'YouTube', NULL, 'pay-per-view', NULL, NULL, NULL, NULL, '01:20', '2024-04-24', 0, 'Experience the magic of romance with heartwarming short videos that capture the essence of love and connection. 💖🎥', 'Hearts Entwined presents a series of romantic short films that delve into the many facets of love and relationships. Featuring captivating stories and touching moments, each video is designed to make you feel the joy, passion, and tenderness of romance. Whether it\'s a sweet love story or a heartfelt confession, these shorts will leave you inspired and in love with the idea of finding that special connection. Let each film whisk you away on a romantic journey! 🌹✨', 0, 'YouTube', 'https://youtu.be/22l6w8n9iCc?si=Gr7MTCfEs9xf6pvz', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:03', '2025-11-20 07:05:03', NULL, 'hearts_entwined.png', 40.00, 'onetime', NULL, '10', 20, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Gnomeo\'s Love Stories', 'gnomeos_love_stories.png', 'YouTube', NULL, 'paid', NULL, 1, NULL, NULL, '00:50', '2024-04-26', 0, 'Explore charming, whimsical tales of love and adventure with garden gnomes in this delightful collection of short romantic videos. 🌹', 'Gnomeo\'s Love Stories brings you enchanting short videos featuring the adorable garden gnomes Gnomeo and Juliet. Follow their heartwarming adventures and romantic escapades as they navigate the ups and downs of love amidst whimsical lawn decorations, quirky neighbors, and playful antics. Each video is a perfect blend of romance and fun, capturing the essence of finding love in the most unexpected places. Immerse yourself in these miniature love stories and experience a world where love always wins, no matter the obstacles. 🌟❤️', 0, 'YouTube', 'https://youtu.be/9ucSt-naGZ0?si=fo-r7wQuJ6Exi1RX', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'gnomeos_love_stories.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Warrior\'s Dilemma', 'warriors_dilemma.png', 'YouTube', NULL, 'paid', NULL, 1, NULL, NULL, '00:20', '2024-04-30', 0, 'A brave team of young warriors embarks on an epic quest to save their world from dark forces in this action-packed animated adventure. 💥🛡️🔥', '\"Warrior\'s Dilemma\" presents a compelling story of two soldiers in the Indo-Pak War—one a sniper, the other his spotter—who face profound moral challenges as they hunt their enemies. The film is a gripping blend of thriller and drama, enhanced by a powerful soundtrack that underscores the film\'s exploration of courage, morality, and the costs of war. 🎖️🎵', 0, 'YouTube', 'https://youtu.be/Q23gKyHWjjg?si=wK6AqYlE9P9-bdXS', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'warriors_dilemma.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Everyday Comedy Gems', 'Gradient_692841747c93b.jpg', 'YouTube', NULL, 'paid', NULL, 2, NULL, NULL, '00:50', '2024-05-01', 0, 'Dive into hilariously mundane moments transformed into remarkable comedy in these short videos. 😂🎬', '<p>\"Everyday Comedy Gems\" presents a collection of short videos that turn the most ordinary situations into extraordinary laughs. Watch as everyday mishaps, small surprises, and routine moments become the heart of whimsical comedy. From unremarkable beginnings to uproarious endings, each video captures the essence of finding humor in the mundane. Enjoy a fresh take on life\'s little quirks and laugh along with characters who prove that comedy can be found in the most unexpected places. Get ready for a series of delightful, laugh-out-loud moments that bring a touch of magic to the ordinary. 🌟🤣🎉</p>', 0, 'YouTube', 'https://youtu.be/sxCWB47ZCLQ?si=jCVwFRmmQ2lLyc1_', 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2025-11-20 07:05:04', '2025-11-27 12:18:31', NULL, 'Gradient_692841747c93b.jpg', NULL, 'rental', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Exorcism Trials', 'exorcism_trials.png', 'YouTube', NULL, 'paid', NULL, 2, NULL, NULL, '00:45', '2024-05-14', 0, 'Follow Sister Ann\'s journey as she battles demonic forces and uncovers dark secrets in these chilling short videos. 😈📽️', '\"Exorcism Trials\" delves into the spine-tingling world of spiritual warfare with a series of gripping short videos. Watch as Sister Ann, a pioneering female exorcist, faces the ultimate test of faith and courage. Trained in a newly reopened exorcism school, Ann confronts her own past demons and engages in intense battles with malevolent forces. Each video intensifies the suspense as she confronts the sinister entity tormenting a young girl and discovers a deeper, more personal connection to the evil she faces. Experience the tension, fear, and spiritual struggle in these hauntingly immersive clips. 🌌😱🕯️', 0, 'YouTube', 'https://youtu.be/zlpfcKffgDA?si=hABQwDuaOho53ayQ', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'exorcism_trials.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Deep Sleep Music for Dogs', 'deep_sleep_music_for_dogs.png', 'YouTube', NULL, 'paid', NULL, 2, NULL, NULL, '01:20', '2024-05-25', 1, 'Relax your furry friend with calming music that helps them drift into deep sleep within minutes. 🐕💤', '\"Deep Sleep Music for Dogs\" is the ultimate sound therapy for your pets, designed to help them fall asleep in just 5 minutes! Whether it\'s a playful puppy who needs extra rest or an adult dog who enjoys a quiet nap, this soothing music will relax them instantly. Dogs naturally need plenty of sleep, with adult dogs sleeping 12–14 hours per day and puppies up to 18 hours or more. Turn on this calming track, watch how they respond, and ensure they get the peaceful rest they deserve. 🐶🎵💤', 0, 'YouTube', 'https://www.youtube.com/live/hD6DzC585bw?si=7XpEHjOV2fFNYFoX', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'deep_sleep_music_for_dogs.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'School Hacks & Fun DIY Crafts', 'school_hacks_fun_diy_crafts.png', 'YouTube', NULL, 'paid', NULL, 2, NULL, NULL, '00:50', '2024-06-08', 1, 'Discover amazing school hacks and easy DIY crafts that will make your school life easier and more fun! ✂️📚', '\"School Hacks & Fun DIY Crafts\" is the ultimate guide to transforming your school experience with creative tips and projects. Whether you need to stay organized, personalize your supplies, or just have fun with unique crafts, this video covers it all. From clever study tips to imaginative DIY projects, it’s designed to make your school days more enjoyable and efficient. Grab your supplies and get ready to craft your way to a better school experience! 🎒✏️📐', 0, 'YouTube', 'https://youtu.be/yG0W82PGAcQ?si=a2PSqhYHCP5ooUdI', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'school_hacks_fun_diy_crafts.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Yoga for Beginners: Start Here', 'yoga_for_beginners_start_here.png', 'YouTube', NULL, 'paid', NULL, 3, NULL, NULL, '00:40', '2024-06-17', 0, 'Join this 30-minute beginner yoga session to improve flexibility, build strength, and calm your mind. Perfect for those new to yoga or wanting a mindful pace! 🧘‍♂️✨', '\"Yoga for Beginners: Start Here\" is the perfect introduction to a sustainable and enjoyable yoga practice. In this 30-minute session, we\'ll focus on breath control, foundational poses, and proper form to boost flexibility, build strength, and regulate your nervous system. Designed for beginners or those seeking a slower, mindful approach, this class helps you connect with your breath and body. Yoga is for everyone, and the hardest part is just showing up—repeat this session regularly and watch your body transform! 🌱🧘‍♂️💪', 0, 'YouTube', 'https://youtu.be/AB3Y-4a3ZrU?si=ATa2_GU_Xgesw50D', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'yoga_for_beginners_start_here.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'The Madness Within', 'the_madness_within.png', 'YouTube', NULL, 'paid', NULL, 3, NULL, NULL, '00:30', '2024-06-23', 0, 'Arthur Fleck, institutionalized at Arkham, faces inner turmoil while discovering love and music. 🎭🖤', '\"Joker: The Madness Within\" finds Arthur Fleck trapped in Arkham Asylum, struggling to reconcile his identity as Joker. Awaiting trial, Arthur’s mental chaos intertwines with moments of unexpected beauty—true love and music that awakens something deep inside him. This short film delves into the complexity of madness, love, and creativity within Gotham\'s most infamous villain. A haunting blend of emotion and turmoil awaits. 🎵🃏🎶', 0, 'YouTube', 'https://youtu.be/_OKAwz2MsJs?si=3MJoVxwaxLSLvBXT', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'the_madness_within.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Big Style on a Small Budget', 'big_style_on_a_small_budget.png', 'YouTube', NULL, 'paid', NULL, 3, NULL, NULL, '00:20', '2024-06-25', 0, 'Transform your space with easy, affordable home makeover ideas that add character and style—perfect for renters! 🏡✨', 'Discover thoughtful and affordable room makeover tips that can completely transform your home, whether you\'re a renter or a homeowner. From small weekend projects to clever design ideas, these simple upgrades will make a big impact on the character and style of your living space. If you\'re feeling stuck, financially strained, or short on time for big DIY projects, this video offers creative solutions to elevate your home without breaking the bank. Get ready to be inspired and make your home feel thoughtfully designed! 🛋️🖼️💡', 0, 'YouTube', 'https://youtu.be/xOiXbP5QIrM?si=5re4hT1YH8n2fPv6', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'big_style_on_a_small_budget.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Ultimate Kitchen Organization', 'ultimate_kitchen_organization.png', 'YouTube', NULL, 'paid', NULL, 4, NULL, NULL, '01:20', '2024-06-30', 0, 'Discover budget-friendly kitchen organization tips that will transform your space! Clean, restock, and organize for a more efficient and satisfying kitchen experience. 🧼🍲🛒', '\"Ultimate Kitchen Organization\" is your go-to guide for transforming your kitchen into a clean and efficient space on a budget. This video is packed with satisfying cleaning routines, restocking ideas, and clever organizing hacks that will help you declutter and streamline your kitchen. From pantry organization to refrigerator restocking, you\'ll learn practical tips that make your kitchen more functional without breaking the bank. Watch how these simple yet effective ideas can elevate your kitchen and make cooking an enjoyable, stress-free experience! 🍳🧺🌿', 0, 'YouTube', 'https://youtu.be/ZYmV65FYmYY?si=4-eWG9WbXQBmOhDk', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'ultimate_kitchen_organization.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Life Changing Fitness Habits - Daily Healthy Tips', 'life_changing_fitness_habits_daily_healthy_tips.png', 'YouTube', NULL, 'paid', NULL, 4, NULL, NULL, '00:45', '2024-07-03', 0, 'Discover practical and achievable fitness tips to enhance your daily health routine! Start making well-being a priority and share these life-changing habits with friends! 🌿💪', '\"Life-Changing Fitness Habits\" is here to help you become the best version of yourself with simple, scientifically-backed tips that are easy to follow. Our goal is to promote good health and well-being, making the world a healthier place one habit at a time! From fitness hacks to daily healthy tips, these five powerful habits will revolutionize your approach to fitness and wellness. Whether you’ve heard them before or they surprise you, implementing these tips will help you live a balanced and healthier life. 🌟🏋️‍♀️🌿 Get ready to transform your routine and inspire those around you!', 0, 'YouTube', 'https://youtu.be/YNsuneGBsMY?si=AARfxbPatjTITtba', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'life_changing_fitness_habits_daily_healthy_tips.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Motel of Nightmares', 'motel_of_nightmares.png', 'YouTube', NULL, 'paid', NULL, 4, NULL, NULL, '01:20', '2024-07-06', 0, 'Dive into a series of chilling short videos where a woman fights to escape a hellish motel haunted by a relentless monster. 🏚️😨', '\"Motel of Nightmares\" unfolds a terrifying tale through a collection of gripping short videos. Watch as an exhausted woman, trapped in a decrepit motel, battles her worst fears. Each video delves deeper into her nightmarish reality, where every creak and shadow hints at the monstrous terror stalking her. From eerie encounters and broken glass to a fateful confrontation in her car, these videos capture the essence of a horror that blurs the line between nightmare and reality. Experience the tension and dread as the woman faces a relentless, hellish monster in a race for survival. 🌌👻🔪', 0, 'YouTube', 'https://youtu.be/x2c39v5NMj4?si=B-j6ex_SNm3Y03g1', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'motel_of_nightmares.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Flapping Origami Bat Fun', 'flapping_origami_bat_fun.png', 'YouTube', NULL, 'paid', NULL, 4, NULL, NULL, '00:50', '2024-07-10', 1, 'Create an origami bat that flaps its wings! Perfect for Halloween décor or playful scares. 🦇🎃', '\"Flapping Origami Bat Fun\" is your guide to making a spooky, flapping origami bat that’s easy to craft and perfect for Halloween. Learn how to create this fun paper toy that flaps its wings with a simple click. Ideal for Halloween decorations or playful pranks, these bats can also be used to make garlands or window dressings. Get crafty and add a touch of spooky fun to your home! 🦇🖤✂️', 0, 'YouTube', 'https://youtu.be/kBJGchWe6uU?si=TA0UtKGFhSqWY8lj', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'flapping_origami_bat_fun.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Nordic Forest Calm: Music for Relaxation', 'nordic_forest_calm_music_for_relaxation.png', 'YouTube', NULL, 'paid', NULL, 4, NULL, NULL, '01:20', '2024-07-16', 1, 'Unwind with soothing Nordic forest ambience and relaxing music for stress relief, calm, and focus. 🌲🎶', '\"Nordic Forest Calm: Music for Relaxation\" combines calming nature sounds of rustling leaves and distant bird songs with tranquil music to help you relax, focus, and relieve stress. Perfect for studying, meditating, or unwinding after a long day, this video creates a peaceful ambience that transports you to a serene Nordic forest. Let the soothing sounds guide you to a state of calm and relaxation. 🌿🎧🍃', 0, 'YouTube', 'https://youtu.be/3eP0s8sg1n8?si=PuIU-x43XiR7XyzQ', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'nordic_forest_calm_music_for_relaxation.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Mango Mousse Delight', 'mango_mousse_delight.png', 'YouTube', NULL, 'pay-per-view', NULL, NULL, NULL, NULL, '00:50', '2024-07-27', 0, 'Indulge in the deliciousness of this 3-layer Mango Mousse Cake! Learn how to make this refreshing dessert and impress your taste buds. 😋🍰🥭', '\"Mango Mousse Delight\" is a step-by-step guide to making a scrumptious 3-layer Mango Mousse Cake. Learn how to prepare a soft sponge base, layer rich and creamy mousse, and create a dessert that’s as delightful as it is refreshing. This easy-to-follow recipe is perfect for bakers of all levels and is sure to impress your guests. Make your next occasion extra special with this delightful mango mousse cake! 🍰🥭✨😋', 0, 'YouTube', 'https://youtu.be/4TUgTat4lg8?si=fC1r5EVueVXYV9uq', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'mango_mousse_delight.png', 10.00, 'rental', 5, '10', 20, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'The Power of Words | This Story Will Change Your Life', 'the_power_of_words_this_story_will_change_your_life.png', 'YouTube', NULL, 'pay-per-view', NULL, NULL, NULL, NULL, '00:20', '2024-08-01', 0, 'Discover the profound impact of words! This life-changing story will teach you how to use your words wisely and inspire positive change in yourself and others. 💬🌟', '\"The Power of Words\" is a transformative story that will open your eyes to the incredible influence words hold. 📖✨ Learn how to use your words wisely to inspire, uplift, and make a lasting difference in your life and the lives of those around you. Whether you\'re communicating with loved ones or strangers, this story reveals the importance of choosing your words carefully and positively. 💬🌟 Tune in, reflect, and embrace the change that wise communication can bring!', 0, 'YouTube', 'https://youtu.be/Sp503K6iPCg?si=VKSZrB7Bfam2fWeV', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'the_power_of_words_this_story_will_change_your_life.png', 40.00, 'onetime', NULL, '10', 20, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Healthy Homemade Diet Plan | Effective Weight Loss at Home', 'healthy_homemade_diet_plan_effective_weight_loss_at_home.png', 'YouTube', NULL, 'pay-per-view', NULL, NULL, NULL, NULL, '01:20', '2024-08-06', 0, 'Discover a healthy and effective diet plan with homemade foods! 🥗🍽️ Perfect for weight loss and maintaining wellness from the comfort of your home. 🏠💪', '\"Diet Plan with Homemade Foods\" offers a comprehensive guide to a nutritious and effective weight loss meal plan using ingredients you have at home. 🍎🥑 From breakfast ideas to dinner recipes, learn how to prepare balanced meals that support your weight loss goals while keeping your taste buds satisfied. 🌟💪 This video will provide you with practical tips, delicious recipes, and meal prep strategies to help you stay on track and achieve your health objectives. Cook up a healthier you with these easy and effective homemade food options!', 0, 'YouTube', 'https://youtu.be/_2tgrajiXG0?si=7XxWoBwTsBunnNx2', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'healthy_homemade_diet_plan_effective_weight_loss_at_home.png', 40.00, 'onetime', NULL, '10', 20, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Beautiful Rangoli Designs', 'beautiful_rangoli_designs.png', 'YouTube', NULL, 'pay-per-view', NULL, NULL, NULL, NULL, '00:45', '2024-08-09', 0, 'Immerse yourself in the art of Rangoli with this satisfying video showcasing stunning designs! 🎨🌼 Perfect for inspiration and relaxation. 🌟', '\"Satisfying Rangoli Designs\" features a collection of beautiful and intricate Rangoli patterns that are both visually stunning and satisfying to watch. 🌸✨ Discover creative designs and traditional techniques as we guide you through the process of creating vibrant and elegant Rangoli art. Whether you\'re a seasoned artist or a beginner looking for inspiration, this video will provide you with a soothing and artistic experience. 🖼️💫 Perfect for enhancing your festive decor or simply enjoying the beauty of this traditional craft. Get ready to be inspired and amazed by the beauty of Rangoli!', 0, 'YouTube', 'https://youtu.be/rZeu5iz_N7k?si=_ePcaoBZqLCGhGmC', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'beautiful_rangoli_designs.png', 10.00, 'rental', 5, '10', 20, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Catcalls: The Haunting', 'catcalls_the_haunting.png', 'YouTube', NULL, 'pay-per-view', NULL, NULL, NULL, NULL, '00:50', '2024-08-13', 0, 'Experience chilling short videos where street harassment takes a horrifying twist as predators become the prey in a night of terror. 👻🔪', '\"Catcalls: The Haunting\" brings a disturbing twist to street harassment through a series of gripping short videos. Follow a man cruising late at night who encounters two seemingly innocent girls. However, his attempt to get a thrill by flashing them turns into a nightmare when he discovers they are on their own hunt. This series explores the unsettling themes of harassment and power dynamics, shifting the predator-prey relationship in a spine-chilling narrative. The videos showcase a fictional horror where the tables are turned, revealing the true horror of becoming the hunted. Dive into a world where safety is an illusion and danger lurks in every corner.', 0, 'YouTube', 'https://youtu.be/4jytFeNxsdo?si=euMe_ms5UtU42fRM', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'catcalls_the_haunting.png', 10.00, 'rental', 5, '10', 20, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Ultimate Kitchen Organization Hacks', 'ultimate_kitchen_organization_hacks.png', 'YouTube', NULL, 'pay-per-view', NULL, NULL, NULL, NULL, '00:45', '2024-08-18', 0, 'Maximize your small kitchen space with these 10 smart organization hacks for a clutter-free and efficient cooking area. 🍽️✨', '\"Ultimate Kitchen Organization Hacks\" provides practical and space-saving solutions to optimize even the smallest kitchens. From clever storage ideas to easy DIY fixes, these tips will help you create a clutter-free, efficient kitchen where everything has its place. Whether you\'re dealing with tight cabinets or limited counter space, these hacks will make your cooking area more functional and stylish. Perfect for anyone looking to simplify and enhance their kitchen setup!', 0, 'YouTube', 'https://youtu.be/ZYmV65FYmYY?si=EOk5cwoafiTxn1qA', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'ultimate_kitchen_organization_hacks.png', 40.00, 'onetime', NULL, '10', 20, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Morning Bliss Routine', 'morning_bliss_routine.png', 'YouTube', NULL, 'free', NULL, NULL, NULL, NULL, '01:50', '2024-08-25', 0, 'A holiday morning routine designed to help you wake up early and start your day with positivity and calm. 🌅⛅️', '\"6 AM Morning Bliss Routine\" follows a former office worker in her 30s as she shares her peaceful and energizing holiday morning routine. This uplifting routine will inspire you to wake up early and create a pleasant start to your week. From gentle stretches to a refreshing breakfast, every step is designed to help you feel balanced, productive, and excited about your day. Perfect for anyone looking for an easy yet impactful morning routine!', 0, 'YouTube', 'https://youtu.be/otpa3LqonSs?si=DmohFhBQF8eClmdG', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'morning_bliss_routine.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Genius Home Hacks for Effortless Living', 'genius_home_hacks_for_effortless_living.png', 'YouTube', NULL, 'free', NULL, NULL, NULL, NULL, '01:20', '2024-09-04', 0, 'Transform your daily routine with these genius home hacks! From cleaning and organizing to cooking and DIY, life just got easier. 😎✨', '\"Genius Home Hacks for Effortless Living\" is your ultimate guide to making life easier at home! This video showcases a collection of mind-blowing tips and tricks that simplify everything from cleaning and organizing to cooking and DIY projects. Discover simple yet effective solutions that will save you time and energy, whether you’re tidying up your space or preparing a quick meal. Make everyday tasks a breeze with these creative hacks! Don’t forget to hit that like button, leave a comment with your favorite hack, and subscribe for more amazing content. 🎉🏡💡', 0, 'YouTube', 'https://youtu.be/Gfn_lik3eE8?si=k-2Cp3R_2dRxam95', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'genius_home_hacks_for_effortless_living.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Become Your Best Self', 'become_your_best_self.png', 'YouTube', NULL, 'free', NULL, NULL, NULL, NULL, '00:50', '2024-09-07', 0, 'Get inspired by powerful speeches! 🎯 Hear the words that will motivate you to focus on self-growth and becoming better than your previous self, not others. 💪✨', '\"Life-Changing Speeches You Need to Hear TODAY\" brings you the best motivational messages that will push you to strive for personal growth and self-improvement. 🌟 The goal is not to compete with others, but to surpass the person you were yesterday. 🌱 These speeches will ignite a spark in you to focus on inner strength, resilience, and the journey to becoming the best version of yourself. 🎤💪 Watch, reflect, and take the first step toward positive change today!', 0, 'YouTube', 'https://youtu.be/DfY7rRQXf3M?si=a3CDJaUDnfz1o1Rd', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'become_your_best_self.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Potato Perfection', 'potato_perfection.png', 'YouTube', NULL, 'free', NULL, NULL, NULL, NULL, '00:20', '2024-09-08', 0, 'Discover amazing potato recipes, from crispy French fries to savory potato sticks! Elevate your snack game with these easy and delicious ideas. 🍟🤩', '\"Potato Perfection\" is your ultimate guide to mastering all things potato! This video features a collection of mouth-watering recipes including French fries, crispy potato chips, and tasty potato sticks. Whether you’re craving a quick snack or looking to impress with creative cooking hacks, these potato dishes will surely satisfy. Learn step-by-step tips and tricks to make the perfect potato-based treats every time. Elevate your kitchen skills and enjoy the versatile world of potatoes! Don’t forget to like, share, and subscribe for more delicious recipes! 🥔🍴👩‍🍳', 0, 'YouTube', 'https://youtu.be/rbHIj9kMBYY?si=L1bbxumrVg1utbKF', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'potato_perfection.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Creative 3D Pen Crafts', 'creative_3d_pen_crafts.png', 'YouTube', NULL, 'free', NULL, NULL, NULL, NULL, '00:45', '2024-09-10', 1, 'Discover cool DIY ideas, repair tips, and unique jewelry designs using a 3D pen! 🖊️✨', '\"Creative 3D Pen Crafts\" brings you innovative homemade ideas and practical repair tips using a 3D pen. From crafting intricate DIY jewelry to fixing everyday items, this video showcases versatile techniques and inspiring designs. Learn how to create stunning, personalized pieces and useful tools with just your 3D pen. Perfect for crafters of all skill levels, this guide offers step-by-step instructions and creative inspiration to take your 3D pen projects to the next level. Watch, learn, and get crafting with fun and functional 3D designs! 🖍️💡🎨', 0, 'YouTube', 'https://youtu.be/QVMOq6b7H6Y?si=tO3WX3zUIze96MTb', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'creative_3d_pen_crafts.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Apartment 75: The Midnight Visitor', 'apartment_75_the_midnight_visitor.png', 'YouTube', NULL, 'paid', NULL, 3, NULL, NULL, '01:10', '2024-09-17', 0, 'In Apartment 75, one night becomes a nightmare when an unwelcome guest arrives, turning calm into terror. 🏚️👻', '\"Apartment 75: The Midnight Visitor\" presents a series of eerie short videos that unravel a night of horror within the confines of a seemingly ordinary apartment. When an unexpected guest arrives, the tranquility of the night is shattered, leading to spine-chilling encounters and escalating terror. Experience the growing sense of dread as the apartment transforms into a haunted realm where every creak and shadow signals impending doom. This collection of videos delves into the fear of the unknown, showcasing how one uninvited visitor can turn a peaceful night into a nightmare. 🕯️🔍😱', 0, 'YouTube', 'https://youtu.be/km3XTmIDeUA?si=ak3GXgPP7NX5D0p1', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'apartment_75_the_midnight_visitor.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Food Prep Mastery', 'food_prep_mastery.png', 'YouTube', NULL, 'paid', NULL, 4, NULL, NULL, '00:45', '2024-09-22', 0, 'Master food preparation with smart tips on how to cut and store your ingredients like a pro! Maximize freshness and make meal prep a breeze. 🍎🍗🔪', '\"Food Prep Mastery\" is your ultimate guide to smart food preparation! Learn essential cutting techniques for fruits, vegetables, and meats, while discovering expert tips on how to store your ingredients to keep them fresh and flavorful for longer. Whether you\'re dicing onions, slicing meats, or storing leafy greens, this video will teach you how to streamline your meal prep and improve your kitchen skills. Perfect for both seasoned chefs and beginners, these tricks will help you take your culinary game to the next level. Don\'t miss out—watch, learn, and enjoy easier, fresher meals! 🥦🍅👨‍🍳', 0, 'YouTube', 'https://youtu.be/y1ZXkDDvhC4?si=MDRzE3VkpD9HJSKT', 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2025-11-20 07:05:04', '2025-11-20 07:05:04', NULL, 'food_prep_mastery.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_download_mappings`
--

CREATE TABLE `video_download_mappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `quality` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_stream_content_mapping`
--

CREATE TABLE `video_stream_content_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `quality` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watchlists`
--

CREATE TABLE `watchlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `watchlists`
--

INSERT INTO `watchlists` (`id`, `entertainment_id`, `user_id`, `profile_id`, `type`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 3, 'tvshow', NULL, NULL, NULL, '2024-03-12 01:25:53', '2024-03-12 01:25:53', NULL),
(2, 2, 3, 3, 'tvshow', NULL, NULL, NULL, '2024-04-12 01:26:39', '2024-04-12 01:26:39', NULL),
(3, 33, 14, 14, 'movie', NULL, NULL, NULL, '2024-05-12 01:26:46', '2024-05-12 01:26:46', NULL),
(4, 4, 3, 3, 'tvshow', NULL, NULL, NULL, '2024-07-12 01:27:19', '2024-07-12 01:27:19', NULL),
(5, 5, 3, 3, 'tvshow', NULL, NULL, NULL, '2024-06-12 01:27:44', '2024-06-12 01:27:44', NULL),
(6, 6, 3, 3, 'tvshow', NULL, NULL, NULL, '2024-04-12 01:27:44', '2024-04-12 01:27:44', NULL),
(7, 7, 3, 3, 'tvshow', NULL, NULL, NULL, '2024-07-12 01:27:44', '2024-07-12 01:27:44', NULL),
(8, 58, 3, 3, 'movie', NULL, NULL, NULL, '2024-05-12 01:27:44', '2024-05-12 01:27:44', NULL),
(9, 9, 3, 3, 'tvshow', NULL, NULL, NULL, '2024-06-12 01:27:44', '2024-06-12 01:27:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webhook_calls`
--

CREATE TABLE `webhook_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payload`)),
  `exception` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `worlds`
--

CREATE TABLE `worlds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_addressable_type_addressable_id_index` (`addressable_type`,`addressable_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_status_deleted_at_index` (`status`,`deleted_at`);

--
-- Indexes for table `cast_crew`
--
ALTER TABLE `cast_crew`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cast_crew_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constants`
--
ALTER TABLE `constants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `continue_watch`
--
ALTER TABLE `continue_watch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `continue_watch_user_id_profile_id_deleted_at_index` (`user_id`,`profile_id`,`deleted_at`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `coupon_subscription_plan`
--
ALTER TABLE `coupon_subscription_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_subscription_plan_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_subscription_plan_subscription_plan_id_foreign` (`subscription_plan_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_ads_setting`
--
ALTER TABLE `custom_ads_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entertainments`
--
ALTER TABLE `entertainments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entertainments_id_deleted_at_index` (`id`,`deleted_at`),
  ADD KEY `entertainments_id_status_release_date_deleted_at_index` (`id`,`status`,`release_date`,`deleted_at`),
  ADD KEY `entertainments_id_status_release_date_index` (`id`,`status`,`release_date`),
  ADD KEY `entertainments_type_index` (`type`),
  ADD KEY `entertainments_release_date_index` (`release_date`),
  ADD KEY `entertainments_status_index` (`status`);

--
-- Indexes for table `entertainment_country_mapping`
--
ALTER TABLE `entertainment_country_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entertainment_downloads`
--
ALTER TABLE `entertainment_downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entertainment_download_mapping`
--
ALTER TABLE `entertainment_download_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entertainment_gener_mapping`
--
ALTER TABLE `entertainment_gener_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entertainment_gener_mapping_entertainment_id_deleted_at_index` (`entertainment_id`,`deleted_at`),
  ADD KEY `entertainment_gener_mapping_genre_id_index` (`genre_id`),
  ADD KEY `entertainment_gener_mapping_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `entertainment_stream_content_mapping`
--
ALTER TABLE `entertainment_stream_content_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entertainment_talent_mapping`
--
ALTER TABLE `entertainment_talent_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entertainment_talent_mapping_entertainment_id_index` (`entertainment_id`),
  ADD KEY `entertainment_talent_mapping_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `entertainment_views`
--
ALTER TABLE `entertainment_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episodes_id_deleted_at_index` (`id`,`deleted_at`),
  ADD KEY `episodes_entertainment_id_index` (`entertainment_id`),
  ADD KEY `episodes_status_index` (`status`),
  ADD KEY `episodes_deleted_at_index` (`deleted_at`),
  ADD KEY `episodes_season_id_index` (`season_id`);

--
-- Indexes for table `episode_download_mapping`
--
ALTER TABLE `episode_download_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episode_stream_content_mapping`
--
ALTER TABLE `episode_stream_content_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episode_stream_content_mapping_episode_id_index` (`episode_id`),
  ADD KEY `episode_stream_content_mapping_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filemanagers`
--
ALTER TABLE `filemanagers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genres_id_deleted_at_index` (`id`,`deleted_at`);

--
-- Indexes for table `installers`
--
ALTER TABLE `installers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livetvs`
--
ALTER TABLE `livetvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_tv_category`
--
ALTER TABLE `live_tv_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_tv_channel`
--
ALTER TABLE `live_tv_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_tv_stream_content_mapping`
--
ALTER TABLE `live_tv_stream_content_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_settings`
--
ALTER TABLE `mobile_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile_settings_slug_deleted_at_index` (`slug`,`deleted_at`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_template_content_mapping`
--
ALTER TABLE `notification_template_content_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payperviewstransactions`
--
ALTER TABLE `payperviewstransactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payperviewstransactions_user_id_foreign` (`user_id`),
  ADD KEY `payperviewstransactions_pay_per_view_id_foreign` (`pay_per_view_id`);

--
-- Indexes for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_per_views_user_id_foreign` (`user_id`),
  ADD KEY `pay_per_views_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_level_deleted_at_index` (`level`,`deleted_at`),
  ADD KEY `plan_id_deleted_at_index` (`id`,`deleted_at`);

--
-- Indexes for table `planlimitation`
--
ALTER TABLE `planlimitation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planlimitation_mapping`
--
ALTER TABLE `planlimitation_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planlimitation_mapping_plan_id_deleted_at_index` (`plan_id`,`deleted_at`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seasons_entertainment_id_index` (`entertainment_id`),
  ADD KEY `seasons_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions_transactions`
--
ALTER TABLE `subscriptions_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subtitles`
--
ALTER TABLE `subtitles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subtitles_entertainment_id_foreign` (`entertainment_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tv_login_sessions`
--
ALTER TABLE `tv_login_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_login_sessions_session_id_unique` (`session_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `user_coupon_redeem`
--
ALTER TABLE `user_coupon_redeem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_multi_profiles`
--
ALTER TABLE `user_multi_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_multi_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reminder`
--
ALTER TABLE `user_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_search_histories`
--
ALTER TABLE `user_search_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_watch_histories`
--
ALTER TABLE `user_watch_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vast_ads_setting`
--
ALTER TABLE `vast_ads_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vast_ads_setting_status_index` (`status`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_download_mappings`
--
ALTER TABLE `video_download_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_stream_content_mapping`
--
ALTER TABLE `video_stream_content_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watchlists`
--
ALTER TABLE `watchlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watchlists_id_deleted_at_index` (`id`,`deleted_at`);

--
-- Indexes for table `webhook_calls`
--
ALTER TABLE `webhook_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worlds`
--
ALTER TABLE `worlds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cast_crew`
--
ALTER TABLE `cast_crew`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `constants`
--
ALTER TABLE `constants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `continue_watch`
--
ALTER TABLE `continue_watch`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_subscription_plan`
--
ALTER TABLE `coupon_subscription_plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_ads_setting`
--
ALTER TABLE `custom_ads_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entertainments`
--
ALTER TABLE `entertainments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `entertainment_country_mapping`
--
ALTER TABLE `entertainment_country_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `entertainment_downloads`
--
ALTER TABLE `entertainment_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entertainment_download_mapping`
--
ALTER TABLE `entertainment_download_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entertainment_gener_mapping`
--
ALTER TABLE `entertainment_gener_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT for table `entertainment_stream_content_mapping`
--
ALTER TABLE `entertainment_stream_content_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `entertainment_talent_mapping`
--
ALTER TABLE `entertainment_talent_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3514;

--
-- AUTO_INCREMENT for table `entertainment_views`
--
ALTER TABLE `entertainment_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `episode_download_mapping`
--
ALTER TABLE `episode_download_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episode_stream_content_mapping`
--
ALTER TABLE `episode_stream_content_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `filemanagers`
--
ALTER TABLE `filemanagers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `installers`
--
ALTER TABLE `installers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `livetvs`
--
ALTER TABLE `livetvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_tv_category`
--
ALTER TABLE `live_tv_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `live_tv_channel`
--
ALTER TABLE `live_tv_channel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `live_tv_stream_content_mapping`
--
ALTER TABLE `live_tv_stream_content_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `mobile_settings`
--
ALTER TABLE `mobile_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification_template_content_mapping`
--
ALTER TABLE `notification_template_content_mapping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payperviewstransactions`
--
ALTER TABLE `payperviewstransactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `planlimitation`
--
ALTER TABLE `planlimitation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `planlimitation_mapping`
--
ALTER TABLE `planlimitation_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscriptions_transactions`
--
ALTER TABLE `subscriptions_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subtitles`
--
ALTER TABLE `subtitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tv_login_sessions`
--
ALTER TABLE `tv_login_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_coupon_redeem`
--
ALTER TABLE `user_coupon_redeem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_multi_profiles`
--
ALTER TABLE `user_multi_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_providers`
--
ALTER TABLE `user_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_reminder`
--
ALTER TABLE `user_reminder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_search_histories`
--
ALTER TABLE `user_search_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_watch_histories`
--
ALTER TABLE `user_watch_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vast_ads_setting`
--
ALTER TABLE `vast_ads_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `video_download_mappings`
--
ALTER TABLE `video_download_mappings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_stream_content_mapping`
--
ALTER TABLE `video_stream_content_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watchlists`
--
ALTER TABLE `watchlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `webhook_calls`
--
ALTER TABLE `webhook_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `worlds`
--
ALTER TABLE `worlds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coupon_subscription_plan`
--
ALTER TABLE `coupon_subscription_plan`
  ADD CONSTRAINT `coupon_subscription_plan_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_subscription_plan_subscription_plan_id_foreign` FOREIGN KEY (`subscription_plan_id`) REFERENCES `plan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payperviewstransactions`
--
ALTER TABLE `payperviewstransactions`
  ADD CONSTRAINT `payperviewstransactions_pay_per_view_id_foreign` FOREIGN KEY (`pay_per_view_id`) REFERENCES `pay_per_views` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payperviewstransactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  ADD CONSTRAINT `pay_per_views_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `entertainments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pay_per_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subtitles`
--
ALTER TABLE `subtitles`
  ADD CONSTRAINT `subtitles_entertainment_id_foreign` FOREIGN KEY (`entertainment_id`) REFERENCES `entertainments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_multi_profiles`
--
ALTER TABLE `user_multi_profiles`
  ADD CONSTRAINT `user_multi_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
