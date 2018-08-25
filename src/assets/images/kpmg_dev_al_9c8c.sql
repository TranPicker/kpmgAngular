-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2018 at 04:26 PM
-- Server version: 10.3.7-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpmg_dev_al_9c8c`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE `advertises` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advertises`
--

INSERT INTO `advertises` (`id`, `title`, `content`, `image`, `status`, `description`, `created_at`, `updated_at`) VALUES
(6, 'title', 'content', 'http://kpmg.dev-altamedia.com/public/photos/1/B-Desktop_web_design_v6-Recovered_18.png', 1, NULL, '2018-07-17 15:12:11', '2018-07-17 15:12:11'),
(7, 'le duyen', 'a', 'http://kpmg.dev-altamedia.com/public/photos/1/a_21.png', 1, NULL, '2018-07-17 15:13:00', '2018-07-17 15:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `condition_variables`
--

CREATE TABLE `condition_variables` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional_condition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `condition_variables`
--

INSERT INTO `condition_variables` (`id`, `variable`, `type`, `description`, `additional_condition`, `created_at`, `updated_at`) VALUES
(1, '$birthday', 'Date', 'Date of birth', '$today or \'1995-11-20\'', '2018-07-26 00:00:00', '2018-07-26 00:00:00'),
(2, '$today', 'Date', 'Today', NULL, '2018-07-26 00:00:00', '2018-07-26 00:00:00'),
(3, '$visit_club', 'Integer', 'Count visit clubhouse', '0,1,2,3...', '2018-07-26 00:00:00', '2018-07-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `content_variables`
--

CREATE TABLE `content_variables` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content_variables`
--

INSERT INTO `content_variables` (`id`, `variable`, `description`, `created_at`, `updated_at`) VALUES
(1, '[name]', 'The name of the customer', '2018-07-26 00:00:00', '2018-07-26 00:00:00'),
(2, '[birthday]', 'Date of birth of the customer', '2018-07-26 00:00:00', '2018-07-26 00:00:00'),
(3, '[age]', 'Age of customer', '2018-07-26 00:00:00', '2018-07-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `person_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `join_date` date NOT NULL,
  `office_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `marital` tinyint(4) DEFAULT NULL,
  `count_to_club` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `import_from_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `person_id`, `first_name`, `middle_name`, `last_name`, `department`, `join_date`, `office_location`, `name`, `avatar`, `birthday`, `gender`, `marital`, `count_to_club`, `status`, `import_from_zip`, `description`, `created_at`, `updated_at`) VALUES
(1, '1', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 0, '2018-08-14_C2N_Example1.zip', NULL, '2018-08-14 18:38:10', '2018-08-17 11:17:48'),
(2, '2', 'Huynh', 'Van', 'Toi', 'Programming', '2018-03-05', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Huynh Van Toi', NULL, '1996-12-13', 2, NULL, 0, 1, '2018-08-14_C2N_Example1.zip', NULL, '2018-08-14 18:38:10', '2018-08-15 14:11:13'),
(3, NULL, 'Le', 'Huu', 'Duyen', 'aaa', '2018-08-21', 'abc', 'Le Huu Duyen', NULL, '2018-08-20', 1, NULL, 0, 1, NULL, 'sdf', '2018-08-15 13:55:23', '2018-08-15 18:10:38'),
(4, '4', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 0, '2018-08-16_v8y_Desktop.zip', NULL, '2018-08-16 11:41:31', '2018-08-16 11:41:31'),
(5, '5', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 0, '2018-08-16_Gqg_Desktop.zip', NULL, '2018-08-16 11:41:43', '2018-08-16 11:41:43'),
(6, '6', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 1, '2018-08-16_11E_Example1.zip', NULL, '2018-08-16 11:42:01', '2018-08-16 11:42:06'),
(7, '7', 'Huynh', 'Van', 'Toi', 'Programming', '2018-03-05', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Huynh Van Toi', NULL, '1996-12-12', 1, NULL, 0, 1, '2018-08-16_11E_Example1.zip', NULL, '2018-08-16 11:42:01', '2018-08-16 11:42:06'),
(8, '8', 'Le', 'Huu', 'Duyen', 'aaa', '2018-08-21', 'asd', 'Le Huu Duyen', NULL, '2018-07-31', 0, NULL, 0, 1, '2018-08-16_t88_2018-08-13_13kSBvK4mc.zip', NULL, '2018-08-16 11:51:08', '2018-08-16 11:51:11'),
(9, '9', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 1, '2018-08-16_Nzv_Example(1).zip', NULL, '2018-08-16 11:52:04', '2018-08-16 11:52:06'),
(10, '10', 'Huynh', 'Van', 'Toi', 'Programming', '2018-03-05', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Huynh Van Toi', NULL, '1996-12-12', 1, NULL, 0, 1, '2018-08-16_Nzv_Example(1).zip', NULL, '2018-08-16 11:52:04', '2018-08-16 11:52:06'),
(11, '11', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 1, '2018-08-16_88Y_Example(1).zip', NULL, '2018-08-16 11:52:50', '2018-08-16 11:52:51'),
(12, '12', 'Huynh', 'Van', 'Toi', 'Programming', '2018-03-05', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Huynh Van Toi', NULL, '1996-12-12', 1, NULL, 0, 1, '2018-08-16_88Y_Example(1).zip', NULL, '2018-08-16 11:52:50', '2018-08-16 11:52:51'),
(13, '13', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 1, '2018-08-16_bbV_Example(1).zip', NULL, '2018-08-16 11:53:18', '2018-08-16 11:53:19'),
(14, '14', 'Huynh', 'Van', 'Toi', 'Programming', '2018-03-05', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Huynh Van Toi', NULL, '1996-12-12', 1, NULL, 0, 1, '2018-08-16_bbV_Example(1).zip', NULL, '2018-08-16 11:53:18', '2018-08-16 11:53:19'),
(15, '15', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 1, '2018-08-16_kQs_Example(1).zip', NULL, '2018-08-16 11:55:22', '2018-08-16 11:55:23'),
(16, '16', 'Huynh', 'Van', 'Toi', 'Programming', '2018-03-05', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Huynh Van Toi', NULL, '1996-12-12', 1, NULL, 0, 1, '2018-08-16_kQs_Example(1).zip', NULL, '2018-08-16 11:55:22', '2018-08-16 11:55:23'),
(17, '17', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 1, '2018-08-16_N2W_Example1.zip', NULL, '2018-08-16 11:58:44', '2018-08-16 11:59:18'),
(18, '18', 'Huynh', 'Van', 'Toi', 'Programming', '2018-03-05', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Huynh Van Toi', NULL, '1996-12-12', 1, NULL, 0, 1, '2018-08-16_N2W_Example1.zip', NULL, '2018-08-16 11:58:44', '2018-08-16 11:59:18'),
(19, '19', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 1, '2018-08-16_wqA_Example1.zip', NULL, '2018-08-16 12:00:00', '2018-08-16 12:06:09'),
(20, '20', 'Huynh', 'Van', 'Toi', 'Programming', '2018-03-05', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Huynh Van Toi', NULL, '1996-12-12', 1, NULL, 0, 1, '2018-08-16_wqA_Example1.zip', NULL, '2018-08-16 12:00:00', '2018-08-16 12:06:09'),
(21, '21', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 0, '2018-08-16_MRG_Example1.zip', NULL, '2018-08-16 12:08:03', '2018-08-16 12:08:03'),
(22, '22', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 0, '2018-08-16_1Hl_Example1.zip', NULL, '2018-08-16 12:08:10', '2018-08-16 12:08:10'),
(23, '23', 'Le', 'Huu', 'Duyen', 'Design', '2018-03-03', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Le Huu Duyen', NULL, '1996-12-12', 0, NULL, 0, 1, '2018-08-16_h5n_Example1.zip', NULL, '2018-08-16 12:08:27', '2018-08-16 12:08:28'),
(24, '24', 'Huynh', 'Van', 'Toi', 'Programming', '2018-03-05', '514, chai chee lane 04-02 bedok industrial estate, 469029, Singapore', 'Huynh Van Toi', NULL, '1996-12-12', 1, NULL, 0, 1, '2018-08-16_h5n_Example1.zip', NULL, '2018-08-16 12:08:27', '2018-08-16 12:08:28'),
(31, NULL, 'Esther', NULL, 'Chan', 'It Service', '2012-03-24', 'Central Services', 'Esther Chan', NULL, '1975-07-18', 0, NULL, 0, 0, '2018-08-16_nxU_Example(9).zip', NULL, '2018-08-16 19:44:15', '2018-08-16 19:44:15'),
(32, NULL, 'Esther', NULL, 'Chan', 'It Service', '2012-03-24', 'Central Services', 'Esther Chan', NULL, '1975-07-18', 0, NULL, 0, 0, '2018-08-16_BpY_Example(9).zip', NULL, '2018-08-16 19:44:35', '2018-08-16 19:44:35'),
(41, NULL, 'Le', 'Huu', 'Duyen', 'aaa', '2018-08-21', 'sdfsdf', 'Le Huu Duyen', NULL, '2018-08-29', 0, NULL, 0, 1, NULL, 'asd', '2018-08-17 14:11:26', '2018-08-17 14:11:26'),
(42, '65001076', 'Esther', NULL, 'Chan', 'It Service', '2012-03-24', 'Central Services', 'Esther Chan', NULL, '1975-07-18', 0, NULL, 0, 1, '2018-08-21_pfU_Example.zip', NULL, '2018-08-21 15:16:07', '2018-08-21 15:16:09'),
(43, '20111995', 'Huynh', NULL, 'Toi', 'Developer', '2018-01-01', 'Altamedia', 'Huynh Toi', NULL, '1995-11-20', 0, NULL, 0, 1, '2018-08-21_pfU_Example.zip', NULL, '2018-08-21 15:16:07', '2018-08-21 15:16:09'),
(44, '65001076', 'Esther', NULL, 'Chan', 'It Service', '2012-03-24', 'Central Services', 'Esther Chan', NULL, '1975-07-18', 0, NULL, 0, 0, '2018-08-21_qym_Example.zip', NULL, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(45, '20111995', 'Huynh', NULL, 'Toi', 'Developer', '2018-01-01', 'Altamedia', 'Huynh Toi', NULL, '1995-11-20', 0, NULL, 0, 0, '2018-08-21_qym_Example.zip', NULL, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(46, '65001076', 'Esther', NULL, 'Chan', 'It Service', '2012-03-24', 'Central Services', 'Esther Chan', NULL, '1975-07-18', 0, NULL, 0, 0, '2018-08-21_06F_Example.zip', NULL, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(47, '20111995', 'Huynh', NULL, 'Toi', 'Developer', '2018-01-01', 'Altamedia', 'Huynh Toi', NULL, '1995-11-20', 0, NULL, 0, 0, '2018-08-21_06F_Example.zip', NULL, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(48, '65001076', 'Esther', NULL, 'Chan', 'It Service', '2012-03-24', 'Central Services', 'Esther Chan', NULL, '1975-07-18', 0, NULL, 0, 0, '2018-08-21_f6j_Example.zip', NULL, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(49, '20111995', 'Huynh', NULL, 'Toi', 'Developer', '2018-01-01', 'Altamedia', 'Huynh Toi', NULL, '1995-11-20', 0, NULL, 0, 0, '2018-08-21_f6j_Example.zip', NULL, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(50, '65001076', 'Esther', NULL, 'Chan', 'It Service', '2012-03-24', 'Central Services', 'Esther Chan', NULL, '1975-07-18', 0, NULL, 0, 0, '2018-08-21_Tpf_Example.zip', NULL, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(51, '20111995', 'Huynh', NULL, 'Toi', 'Developer', '2018-01-01', 'Altamedia', 'Huynh Toi', NULL, '1995-11-20', 1, NULL, 0, 0, '2018-08-21_Tpf_Example.zip', NULL, '2018-08-21 15:36:15', '2018-08-21 15:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `customer_categories`
--

CREATE TABLE `customer_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_detail_favorites`
--

CREATE TABLE `customer_detail_favorites` (
  `id` int(11) NOT NULL,
  `favorite_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `percent` float NOT NULL DEFAULT 50,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_detail_favorites`
--

INSERT INTO `customer_detail_favorites` (`id`, `favorite_id`, `customer_id`, `percent`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 83.3, '2018-08-14 18:38:10', '2018-08-16 11:52:30'),
(2, 2, 2, 104.4, '2018-08-14 18:38:10', '2018-08-16 11:52:30'),
(3, 3, 2, 96.6, '2018-08-14 18:38:10', '2018-08-16 11:52:30'),
(4, 4, 2, 99, '2018-08-14 18:38:10', '2018-08-14 18:38:10'),
(5, 1, 3, 50, '2018-08-15 13:55:23', '2018-08-15 13:55:23'),
(6, 2, 3, 100.25, '2018-08-15 13:55:23', '2018-08-16 11:05:11'),
(7, 3, 3, 50, '2018-08-15 13:55:23', '2018-08-15 13:55:23'),
(8, 1, 4, 80, '2018-08-16 11:41:32', '2018-08-16 11:41:32'),
(9, 2, 4, 100, '2018-08-16 11:41:32', '2018-08-16 11:41:32'),
(10, 1, 5, 80, '2018-08-16 11:41:43', '2018-08-16 11:41:43'),
(11, 2, 5, 100, '2018-08-16 11:41:43', '2018-08-16 11:41:43'),
(12, 1, 6, 80, '2018-08-16 11:42:01', '2018-08-16 11:42:01'),
(13, 2, 6, 100, '2018-08-16 11:42:01', '2018-08-16 11:42:01'),
(14, 3, 7, 89, '2018-08-16 11:42:01', '2018-08-16 11:42:01'),
(15, 4, 7, 99, '2018-08-16 11:42:01', '2018-08-16 11:42:01'),
(16, 3, 8, 50, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(17, 1, 9, 80, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(18, 2, 9, 100, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(19, 3, 10, 89, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(20, 4, 10, 99, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(21, 1, 11, 80, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(22, 2, 11, 100, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(23, 3, 12, 89, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(24, 4, 12, 99, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(25, 1, 13, 80, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(26, 2, 13, 100, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(27, 3, 14, 89, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(28, 4, 14, 99, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(29, 1, 15, 80, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(30, 2, 15, 100, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(31, 3, 16, 89, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(32, 4, 16, 99, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(33, 1, 17, 80, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(34, 2, 17, 100, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(35, 3, 18, 89, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(36, 4, 18, 99, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(37, 1, 19, 80, '2018-08-16 12:00:00', '2018-08-16 12:00:00'),
(38, 2, 19, 100, '2018-08-16 12:00:00', '2018-08-16 12:00:00'),
(39, 3, 20, 89, '2018-08-16 12:00:00', '2018-08-16 12:00:00'),
(40, 4, 20, 99, '2018-08-16 12:00:00', '2018-08-16 12:00:00'),
(41, 1, 23, 102, '2018-08-16 12:08:27', '2018-08-16 12:15:53'),
(43, 2, 23, 130.8, '2018-08-16 12:08:27', '2018-08-16 12:15:53'),
(44, 1, 24, 99, '2018-08-16 12:08:27', '2018-08-16 12:08:27'),
(51, 2, 26, 50235, '2018-08-16 13:35:27', '2018-08-16 13:35:36'),
(54, 3, 26, 50234200, '2018-08-16 13:36:25', '2018-08-16 14:51:09'),
(58, 1, 27, 50, '2018-08-16 16:51:24', '2018-08-16 16:51:24'),
(59, 2, 27, 50, '2018-08-16 16:51:24', '2018-08-16 16:51:24'),
(60, 4, 27, 50, '2018-08-16 16:51:24', '2018-08-16 16:51:24'),
(61, 1, 28, 80, '2018-08-16 16:54:46', '2018-08-16 16:54:46'),
(62, 2, 28, 100, '2018-08-16 16:54:46', '2018-08-16 16:54:46'),
(63, 3, 29, 89, '2018-08-16 16:54:46', '2018-08-16 16:54:46'),
(64, 4, 29, 99, '2018-08-16 16:54:46', '2018-08-16 16:54:46'),
(65, 3, 30, 50, '2018-08-16 19:19:09', '2018-08-16 19:19:09'),
(66, 3, 33, 50, '2018-08-16 19:45:26', '2018-08-16 19:45:26'),
(67, 8, 33, 50, '2018-08-16 19:45:26', '2018-08-16 19:45:26'),
(68, 3, 34, 50, '2018-08-16 19:50:27', '2018-08-16 19:50:27'),
(69, 8, 34, 50, '2018-08-16 19:50:27', '2018-08-16 19:50:27'),
(70, 4, 35, 50, '2018-08-16 19:51:44', '2018-08-16 19:51:44'),
(71, 3, 36, 50, '2018-08-16 19:52:00', '2018-08-16 19:52:00'),
(72, 8, 36, 50, '2018-08-16 19:52:00', '2018-08-16 19:52:00'),
(73, 3, 37, 50, '2018-08-17 10:28:19', '2018-08-17 10:28:19'),
(74, 8, 37, 50, '2018-08-17 10:28:19', '2018-08-17 10:28:19'),
(75, 3, 38, 50, '2018-08-17 10:56:18', '2018-08-17 10:56:18'),
(76, 8, 38, 50, '2018-08-17 10:56:18', '2018-08-17 10:56:18'),
(77, 3, 39, 50, '2018-08-17 11:04:15', '2018-08-17 11:04:15'),
(78, 8, 39, 50, '2018-08-17 11:04:15', '2018-08-17 11:04:15'),
(79, 3, 40, 50, '2018-08-17 11:05:52', '2018-08-17 11:05:52'),
(80, 8, 40, 50, '2018-08-17 11:05:52', '2018-08-17 11:05:52'),
(82, 4, 41, 50, '2018-08-17 14:11:26', '2018-08-17 14:11:26'),
(83, 3, 42, 50, '2018-08-21 15:16:07', '2018-08-21 15:16:07'),
(84, 8, 42, 50, '2018-08-21 15:16:07', '2018-08-21 15:16:07'),
(85, 2, 43, 50, '2018-08-21 15:16:07', '2018-08-21 15:16:07'),
(86, 12, 43, 50, '2018-08-21 15:16:07', '2018-08-21 15:16:07'),
(87, 3, 44, 50, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(88, 8, 44, 50, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(89, 2, 45, 50, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(90, 12, 45, 50, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(91, 3, 46, 50, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(92, 8, 46, 50, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(93, 2, 47, 50, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(94, 12, 47, 50, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(95, 3, 48, 50, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(96, 8, 48, 50, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(97, 2, 49, 50, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(98, 12, 49, 50, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(99, 3, 50, 50, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(100, 8, 50, 50, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(101, 2, 51, 50, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(102, 12, 51, 50, '2018-08-21 15:36:15', '2018-08-21 15:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `customer_images`
--

CREATE TABLE `customer_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_images`
--

INSERT INTO `customer_images` (`id`, `customer_id`, `file`, `status`, `created_at`, `updated_at`) VALUES
(73, 3, '/storage/app/images/1534326917567050817-2.jpg', 0, '2018-08-15 16:55:18', '2018-08-15 16:55:18'),
(74, 3, '/storage/app/images/15343269241322702769-15338789812066324790-17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-15 16:55:25', '2018-08-15 16:55:25'),
(75, 1, '/storage/app/images/15343270241360641831-4.jpg', 0, '2018-08-15 16:57:05', '2018-08-15 16:57:05'),
(76, 2, '/storage/app/images/15343270451637120228-3.jpg', 0, '2018-08-15 16:57:26', '2018-08-15 16:57:26'),
(77, 3, '/storage/app/images/1534327087435112535-4.jpg', 0, '2018-08-15 16:58:08', '2018-08-15 16:58:08'),
(78, 3, '/storage/app/images/1534327277474038736-19424448_473808782952202_3895472099534407607_n.jpg', 1, '2018-08-15 17:01:18', '2018-08-15 17:01:18'),
(80, 4, '/storage/app/export/2018-08-16_v8y_Desktop.zip/1/1.jpg', 1, '2018-08-16 11:41:32', '2018-08-16 11:41:32'),
(81, 4, '/storage/app/export/2018-08-16_v8y_Desktop.zip/1/2.jpg', 1, '2018-08-16 11:41:32', '2018-08-16 11:41:32'),
(82, 4, '/storage/app/export/2018-08-16_v8y_Desktop.zip/1/3.jpg', 1, '2018-08-16 11:41:32', '2018-08-16 11:41:32'),
(83, 4, '/storage/app/export/2018-08-16_v8y_Desktop.zip/1/4.jpg', 1, '2018-08-16 11:41:32', '2018-08-16 11:41:32'),
(84, 5, '/storage/app/export/2018-08-16_Gqg_Desktop.zip/1/1.jpg', 1, '2018-08-16 11:41:43', '2018-08-16 11:41:43'),
(85, 5, '/storage/app/export/2018-08-16_Gqg_Desktop.zip/1/2.jpg', 1, '2018-08-16 11:41:43', '2018-08-16 11:41:43'),
(86, 5, '/storage/app/export/2018-08-16_Gqg_Desktop.zip/1/3.jpg', 1, '2018-08-16 11:41:43', '2018-08-16 11:41:43'),
(87, 5, '/storage/app/export/2018-08-16_Gqg_Desktop.zip/1/4.jpg', 1, '2018-08-16 11:41:43', '2018-08-16 11:41:43'),
(92, 7, '/storage/app/export/2018-08-16_11E_Example1.zip/2/37624195_2119210964987988_8806444211218939904_n.jpg', 1, '2018-08-16 11:42:01', '2018-08-16 11:42:01'),
(93, 7, '/storage/app/export/2018-08-16_11E_Example1.zip/2/37642152_2119212131654538_2588789403065253888Copy.jpg', 1, '2018-08-16 11:42:01', '2018-08-16 11:42:01'),
(94, 7, '/storage/app/export/2018-08-16_11E_Example1.zip/2/37676875_2119209481654803_6277150327225450496_nCopy.jpg', 1, '2018-08-16 11:42:01', '2018-08-16 11:42:01'),
(95, 7, '/storage/app/export/2018-08-16_11E_Example1.zip/2/37748555_2119221424986942_8620746236409937920Copy.jpg', 1, '2018-08-16 11:42:01', '2018-08-16 11:42:01'),
(96, 6, '/storage/app/images/1534394545233123131-17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-16 11:42:26', '2018-08-16 11:42:26'),
(98, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/1534136007332492277-4.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(99, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/15341421891128923757-15338789812066324790-17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(100, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/1534142486266999534-4.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(101, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/153414248799860551-3.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(102, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/1534143393180997149-2.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(103, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/15341448961514780160-15338789812066324790-17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(104, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/15341449871057560044-3.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(105, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/15341450071632371549-4.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(106, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/1534145007622551371-3.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(107, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/1534145009399511166-3.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(108, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/15341451091267350236-3.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(109, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/15341451101486478124-15338789812066324790-17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(110, 8, '/storage/app/export/2018-08-16_t88_2018-08-13_13kSBvK4mc.zip/7/1534145111766563945-4.jpg', 1, '2018-08-16 11:51:08', '2018-08-16 11:51:08'),
(111, 9, '/storage/app/export/2018-08-16_Nzv_Example(1).zip/1/1.jpg', 1, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(112, 9, '/storage/app/export/2018-08-16_Nzv_Example(1).zip/1/2.jpg', 1, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(113, 9, '/storage/app/export/2018-08-16_Nzv_Example(1).zip/1/3.jpg', 1, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(114, 9, '/storage/app/export/2018-08-16_Nzv_Example(1).zip/1/4.jpg', 1, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(115, 10, '/storage/app/export/2018-08-16_Nzv_Example(1).zip/2/37624195_2119210964987988_8806444211218939904_n.jpg', 1, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(116, 10, '/storage/app/export/2018-08-16_Nzv_Example(1).zip/2/37642152_2119212131654538_2588789403065253888Copy.jpg', 1, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(117, 10, '/storage/app/export/2018-08-16_Nzv_Example(1).zip/2/37676875_2119209481654803_6277150327225450496_nCopy.jpg', 1, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(118, 10, '/storage/app/export/2018-08-16_Nzv_Example(1).zip/2/37748555_2119221424986942_8620746236409937920Copy.jpg', 1, '2018-08-16 11:52:04', '2018-08-16 11:52:04'),
(119, 11, '/storage/app/export/2018-08-16_88Y_Example(1).zip/1/1.jpg', 1, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(120, 11, '/storage/app/export/2018-08-16_88Y_Example(1).zip/1/2.jpg', 1, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(121, 11, '/storage/app/export/2018-08-16_88Y_Example(1).zip/1/3.jpg', 1, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(122, 11, '/storage/app/export/2018-08-16_88Y_Example(1).zip/1/4.jpg', 1, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(123, 12, '/storage/app/export/2018-08-16_88Y_Example(1).zip/2/37624195_2119210964987988_8806444211218939904_n.jpg', 1, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(124, 12, '/storage/app/export/2018-08-16_88Y_Example(1).zip/2/37642152_2119212131654538_2588789403065253888Copy.jpg', 1, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(125, 12, '/storage/app/export/2018-08-16_88Y_Example(1).zip/2/37676875_2119209481654803_6277150327225450496_nCopy.jpg', 1, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(126, 12, '/storage/app/export/2018-08-16_88Y_Example(1).zip/2/37748555_2119221424986942_8620746236409937920Copy.jpg', 1, '2018-08-16 11:52:50', '2018-08-16 11:52:50'),
(127, 13, '/storage/app/export/2018-08-16_bbV_Example(1).zip/1/1.jpg', 1, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(128, 13, '/storage/app/export/2018-08-16_bbV_Example(1).zip/1/2.jpg', 1, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(129, 13, '/storage/app/export/2018-08-16_bbV_Example(1).zip/1/3.jpg', 1, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(130, 13, '/storage/app/export/2018-08-16_bbV_Example(1).zip/1/4.jpg', 1, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(131, 14, '/storage/app/export/2018-08-16_bbV_Example(1).zip/2/37624195_2119210964987988_8806444211218939904_n.jpg', 1, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(132, 14, '/storage/app/export/2018-08-16_bbV_Example(1).zip/2/37642152_2119212131654538_2588789403065253888Copy.jpg', 1, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(133, 14, '/storage/app/export/2018-08-16_bbV_Example(1).zip/2/37676875_2119209481654803_6277150327225450496_nCopy.jpg', 1, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(134, 14, '/storage/app/export/2018-08-16_bbV_Example(1).zip/2/37748555_2119221424986942_8620746236409937920Copy.jpg', 1, '2018-08-16 11:53:18', '2018-08-16 11:53:18'),
(135, 15, '/storage/app/export/2018-08-16_kQs_Example(1).zip/1/1.jpg', 1, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(136, 15, '/storage/app/export/2018-08-16_kQs_Example(1).zip/1/2.jpg', 1, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(137, 15, '/storage/app/export/2018-08-16_kQs_Example(1).zip/1/3.jpg', 1, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(138, 15, '/storage/app/export/2018-08-16_kQs_Example(1).zip/1/4.jpg', 1, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(139, 16, '/storage/app/export/2018-08-16_kQs_Example(1).zip/2/37624195_2119210964987988_8806444211218939904_n.jpg', 1, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(140, 16, '/storage/app/export/2018-08-16_kQs_Example(1).zip/2/37642152_2119212131654538_2588789403065253888Copy.jpg', 1, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(141, 16, '/storage/app/export/2018-08-16_kQs_Example(1).zip/2/37676875_2119209481654803_6277150327225450496_nCopy.jpg', 1, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(142, 16, '/storage/app/export/2018-08-16_kQs_Example(1).zip/2/37748555_2119221424986942_8620746236409937920Copy.jpg', 1, '2018-08-16 11:55:22', '2018-08-16 11:55:22'),
(143, 17, '/storage/app/export/2018-08-16_N2W_Example1.zip/1/1.jpg', 1, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(144, 17, '/storage/app/export/2018-08-16_N2W_Example1.zip/1/2.jpg', 1, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(145, 17, '/storage/app/export/2018-08-16_N2W_Example1.zip/1/3.jpg', 1, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(146, 17, '/storage/app/export/2018-08-16_N2W_Example1.zip/1/4.jpg', 1, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(147, 18, '/storage/app/export/2018-08-16_N2W_Example1.zip/2/37624195_2119210964987988_8806444211218939904_n.jpg', 1, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(148, 18, '/storage/app/export/2018-08-16_N2W_Example1.zip/2/37642152_2119212131654538_2588789403065253888Copy.jpg', 1, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(149, 18, '/storage/app/export/2018-08-16_N2W_Example1.zip/2/37676875_2119209481654803_6277150327225450496_nCopy.jpg', 1, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(150, 18, '/storage/app/export/2018-08-16_N2W_Example1.zip/2/37748555_2119221424986942_8620746236409937920Copy.jpg', 1, '2018-08-16 11:58:44', '2018-08-16 11:58:44'),
(151, 19, '/storage/app/export/2018-08-16_wqA_Example1.zip/1/1.jpg', 0, '2018-08-16 12:00:00', '2018-08-16 12:06:10'),
(152, 19, '/storage/app/export/2018-08-16_wqA_Example1.zip/1/2.jpg', 0, '2018-08-16 12:00:00', '2018-08-16 12:06:11'),
(153, 19, '/storage/app/export/2018-08-16_wqA_Example1.zip/1/3.jpg', 0, '2018-08-16 12:00:00', '2018-08-16 12:06:12'),
(154, 19, '/storage/app/export/2018-08-16_wqA_Example1.zip/1/4.jpg', 0, '2018-08-16 12:00:00', '2018-08-16 12:06:13'),
(155, 20, '/storage/app/export/2018-08-16_wqA_Example1.zip/2/37624195_2119210964987988_8806444211218939904_n.jpg', 0, '2018-08-16 12:00:00', '2018-08-16 12:06:14'),
(156, 20, '/storage/app/export/2018-08-16_wqA_Example1.zip/2/37642152_2119212131654538_2588789403065253888Copy.jpg', 0, '2018-08-16 12:00:00', '2018-08-16 12:06:15'),
(157, 20, '/storage/app/export/2018-08-16_wqA_Example1.zip/2/37676875_2119209481654803_6277150327225450496_nCopy.jpg', 0, '2018-08-16 12:00:00', '2018-08-16 12:06:16'),
(158, 20, '/storage/app/export/2018-08-16_wqA_Example1.zip/2/37748555_2119221424986942_8620746236409937920Copy.jpg', 0, '2018-08-16 12:00:00', '2018-08-16 12:06:16'),
(159, 21, '/storage/app/export/2018-08-16_MRG_Example1.zip/1/1.jpg', 1, '2018-08-16 12:08:03', '2018-08-16 12:08:03'),
(160, 21, '/storage/app/export/2018-08-16_MRG_Example1.zip/1/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-16 12:08:03', '2018-08-16 12:08:03'),
(161, 21, '/storage/app/export/2018-08-16_MRG_Example1.zip/1/2.jpg', 1, '2018-08-16 12:08:03', '2018-08-16 12:08:03'),
(162, 21, '/storage/app/export/2018-08-16_MRG_Example1.zip/1/3.jpg', 1, '2018-08-16 12:08:03', '2018-08-16 12:08:03'),
(163, 21, '/storage/app/export/2018-08-16_MRG_Example1.zip/1/4.jpg', 1, '2018-08-16 12:08:03', '2018-08-16 12:08:03'),
(164, 22, '/storage/app/export/2018-08-16_1Hl_Example1.zip/1/1.jpg', 1, '2018-08-16 12:08:10', '2018-08-16 12:08:10'),
(165, 22, '/storage/app/export/2018-08-16_1Hl_Example1.zip/1/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-16 12:08:10', '2018-08-16 12:08:10'),
(166, 22, '/storage/app/export/2018-08-16_1Hl_Example1.zip/1/2.jpg', 1, '2018-08-16 12:08:10', '2018-08-16 12:08:10'),
(167, 22, '/storage/app/export/2018-08-16_1Hl_Example1.zip/1/3.jpg', 1, '2018-08-16 12:08:10', '2018-08-16 12:08:10'),
(168, 22, '/storage/app/export/2018-08-16_1Hl_Example1.zip/1/4.jpg', 1, '2018-08-16 12:08:10', '2018-08-16 12:08:10'),
(169, 23, '/storage/app/export/2018-08-16_h5n_Example1.zip/1/1.jpg', 0, '2018-08-16 12:08:27', '2018-08-16 12:08:30'),
(170, 23, '/storage/app/export/2018-08-16_h5n_Example1.zip/1/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-16 12:08:27', '2018-08-16 12:08:27'),
(171, 23, '/storage/app/export/2018-08-16_h5n_Example1.zip/1/2.jpg', 0, '2018-08-16 12:08:27', '2018-08-16 12:08:34'),
(172, 23, '/storage/app/export/2018-08-16_h5n_Example1.zip/1/3.jpg', 0, '2018-08-16 12:08:27', '2018-08-16 12:08:35'),
(173, 23, '/storage/app/export/2018-08-16_h5n_Example1.zip/1/4.jpg', 0, '2018-08-16 12:08:27', '2018-08-16 12:08:36'),
(174, 24, '/storage/app/export/2018-08-16_h5n_Example1.zip/2/37624195_2119210964987988_8806444211218939904_n.jpg', 0, '2018-08-16 12:08:27', '2018-08-16 12:08:37'),
(175, 24, '/storage/app/export/2018-08-16_h5n_Example1.zip/2/37642152_2119212131654538_2588789403065253888Copy.jpg', 0, '2018-08-16 12:08:27', '2018-08-16 12:08:38'),
(176, 24, '/storage/app/export/2018-08-16_h5n_Example1.zip/2/37676875_2119209481654803_6277150327225450496_nCopy.jpg', 0, '2018-08-16 12:08:27', '2018-08-16 12:08:39'),
(177, 24, '/storage/app/export/2018-08-16_h5n_Example1.zip/2/37748555_2119221424986942_8620746236409937920Copy.jpg', 0, '2018-08-16 12:08:27', '2018-08-16 12:08:40'),
(179, 28, '/storage/app/export/2018-08-16_GRA_kpm16082011.zip/1/1.jpg', 0, '2018-08-16 16:54:46', '2018-08-16 16:54:55'),
(184, 29, '/storage/app/images/1534421592493340785-19424448_473808782952202_3895472099534407607_n.jpg', 1, '2018-08-16 19:13:13', '2018-08-16 19:13:13'),
(185, 29, '/storage/app/images/15344217921265080679-4.jpg', 0, '2018-08-16 19:16:33', '2018-08-16 19:16:33'),
(186, 30, '/storage/app/images/1534423017276923496-2.jpg', 0, '2018-08-16 19:36:58', '2018-08-16 19:36:58'),
(187, 31, '/storage/app/export/2018-08-16_nxU_Example(9).zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-16 19:44:15', '2018-08-16 19:44:15'),
(188, 31, '/storage/app/export/2018-08-16_nxU_Example(9).zip/65001076/2.jpg', 1, '2018-08-16 19:44:15', '2018-08-16 19:44:15'),
(189, 31, '/storage/app/export/2018-08-16_nxU_Example(9).zip/65001076/3.jpg', 1, '2018-08-16 19:44:15', '2018-08-16 19:44:15'),
(190, 31, '/storage/app/export/2018-08-16_nxU_Example(9).zip/65001076/4.jpg', 1, '2018-08-16 19:44:15', '2018-08-16 19:44:15'),
(191, 32, '/storage/app/export/2018-08-16_BpY_Example(9).zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-16 19:44:35', '2018-08-16 19:44:35'),
(192, 32, '/storage/app/export/2018-08-16_BpY_Example(9).zip/65001076/2.jpg', 1, '2018-08-16 19:44:35', '2018-08-16 19:44:35'),
(193, 32, '/storage/app/export/2018-08-16_BpY_Example(9).zip/65001076/3.jpg', 1, '2018-08-16 19:44:35', '2018-08-16 19:44:35'),
(194, 32, '/storage/app/export/2018-08-16_BpY_Example(9).zip/65001076/4.jpg', 1, '2018-08-16 19:44:35', '2018-08-16 19:44:35'),
(195, 33, '/storage/app/export/2018-08-16_pTv_Example(9).zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 0, '2018-08-16 19:45:26', '2018-08-16 19:45:29'),
(196, 33, '/storage/app/export/2018-08-16_pTv_Example(9).zip/65001076/2.jpg', 0, '2018-08-16 19:45:26', '2018-08-16 19:45:32'),
(197, 33, '/storage/app/export/2018-08-16_pTv_Example(9).zip/65001076/3.jpg', 0, '2018-08-16 19:45:26', '2018-08-16 19:45:34'),
(198, 33, '/storage/app/export/2018-08-16_pTv_Example(9).zip/65001076/4.jpg', 0, '2018-08-16 19:45:26', '2018-08-16 19:45:36'),
(199, 34, '/storage/app/export/2018-08-16_DAJ_Example(9).zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 0, '2018-08-16 19:50:27', '2018-08-16 19:50:33'),
(200, 34, '/storage/app/export/2018-08-16_DAJ_Example(9).zip/65001076/2.jpg', 0, '2018-08-16 19:50:27', '2018-08-16 19:50:33'),
(201, 34, '/storage/app/export/2018-08-16_DAJ_Example(9).zip/65001076/3.jpg', 0, '2018-08-16 19:50:27', '2018-08-16 19:50:34'),
(202, 34, '/storage/app/export/2018-08-16_DAJ_Example(9).zip/65001076/4.jpg', 0, '2018-08-16 19:50:27', '2018-08-16 19:50:34'),
(203, 30, '/storage/app/images/15344239031057256587-19424448_473808782952202_3895472099534407607_n.jpg', 1, '2018-08-16 19:51:44', '2018-08-16 19:51:44'),
(204, 36, '/storage/app/export/2018-08-16_isL_Example(9).zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 0, '2018-08-16 19:52:00', '2018-08-16 19:52:01'),
(205, 36, '/storage/app/export/2018-08-16_isL_Example(9).zip/65001076/2.jpg', 0, '2018-08-16 19:52:00', '2018-08-16 19:52:02'),
(206, 36, '/storage/app/export/2018-08-16_isL_Example(9).zip/65001076/3.jpg', 0, '2018-08-16 19:52:00', '2018-08-16 19:52:02'),
(207, 36, '/storage/app/export/2018-08-16_isL_Example(9).zip/65001076/4.jpg', 0, '2018-08-16 19:52:00', '2018-08-16 19:52:03'),
(208, 30, '/storage/app/images/1534423928971739843-15338789812066324790-17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-16 19:52:09', '2018-08-16 19:52:09'),
(209, 37, '/storage/app/export/2018-08-17_IuC_Example(10).zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 0, '2018-08-17 10:28:19', '2018-08-17 10:28:21'),
(210, 37, '/storage/app/export/2018-08-17_IuC_Example(10).zip/65001076/2.jpg', 0, '2018-08-17 10:28:19', '2018-08-17 10:28:21'),
(211, 37, '/storage/app/export/2018-08-17_IuC_Example(10).zip/65001076/3.jpg', 0, '2018-08-17 10:28:19', '2018-08-17 10:28:22'),
(212, 37, '/storage/app/export/2018-08-17_IuC_Example(10).zip/65001076/4.jpg', 0, '2018-08-17 10:28:19', '2018-08-17 10:28:22'),
(213, 38, '/storage/app/export/2018-08-17_VnH_Example(10).zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-17 10:56:18', '2018-08-17 10:56:18'),
(214, 38, '/storage/app/export/2018-08-17_VnH_Example(10).zip/65001076/2.jpg', 0, '2018-08-17 10:56:18', '2018-08-17 10:56:28'),
(215, 38, '/storage/app/export/2018-08-17_VnH_Example(10).zip/65001076/3.jpg', 0, '2018-08-17 10:56:18', '2018-08-17 10:56:29'),
(216, 38, '/storage/app/export/2018-08-17_VnH_Example(10).zip/65001076/4.jpg', 0, '2018-08-17 10:56:18', '2018-08-17 10:56:30'),
(217, 39, '/storage/app/export/2018-08-17_7bv_Example(10).zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-17 11:04:15', '2018-08-17 11:04:15'),
(218, 39, '/storage/app/export/2018-08-17_7bv_Example(10).zip/65001076/2.jpg', 0, '2018-08-17 11:04:15', '2018-08-17 11:04:24'),
(219, 39, '/storage/app/export/2018-08-17_7bv_Example(10).zip/65001076/3.jpg', 0, '2018-08-17 11:04:15', '2018-08-17 11:04:26'),
(220, 39, '/storage/app/export/2018-08-17_7bv_Example(10).zip/65001076/4.jpg', 0, '2018-08-17 11:04:15', '2018-08-17 11:04:27'),
(221, 37, '/storage/app/images/1534478708210673121-3.jpg', 0, '2018-08-17 11:05:10', '2018-08-17 11:05:10'),
(222, 40, '/storage/app/export/2018-08-17_C3e_Example(10).zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-17 11:05:52', '2018-08-17 11:05:52'),
(223, 40, '/storage/app/export/2018-08-17_C3e_Example(10).zip/65001076/2.jpg', 0, '2018-08-17 11:05:52', '2018-08-17 11:05:56'),
(224, 40, '/storage/app/export/2018-08-17_C3e_Example(10).zip/65001076/3.jpg', 0, '2018-08-17 11:05:52', '2018-08-17 11:05:57'),
(225, 40, '/storage/app/export/2018-08-17_C3e_Example(10).zip/65001076/4.jpg', 0, '2018-08-17 11:05:52', '2018-08-17 11:05:58'),
(231, 41, '/storage/app/images/1534494847443434669-4.jpg', 0, '2018-08-17 15:34:08', '2018-08-17 15:34:08'),
(235, 41, '/storage/app/images/15344975021244368850-15338789812066324790-17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-17 16:18:23', '2018-08-17 16:18:23'),
(236, 42, '/storage/app/export/2018-08-21_pfU_Example.zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-21 15:16:07', '2018-08-21 15:16:07'),
(237, 42, '/storage/app/export/2018-08-21_pfU_Example.zip/65001076/2.jpg', 0, '2018-08-21 15:16:07', '2018-08-21 15:16:10'),
(238, 42, '/storage/app/export/2018-08-21_pfU_Example.zip/65001076/3.jpg', 0, '2018-08-21 15:16:07', '2018-08-21 15:16:11'),
(239, 42, '/storage/app/export/2018-08-21_pfU_Example.zip/65001076/4.jpg', 0, '2018-08-21 15:16:07', '2018-08-21 15:16:12'),
(240, 43, '/storage/app/export/2018-08-21_pfU_Example.zip/20111995/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-21 15:16:07', '2018-08-21 15:16:07'),
(241, 43, '/storage/app/export/2018-08-21_pfU_Example.zip/20111995/2.jpg', 0, '2018-08-21 15:16:07', '2018-08-21 15:16:14'),
(242, 43, '/storage/app/export/2018-08-21_pfU_Example.zip/20111995/3.jpg', 0, '2018-08-21 15:16:07', '2018-08-21 15:16:14'),
(243, 43, '/storage/app/export/2018-08-21_pfU_Example.zip/20111995/4.jpg', 0, '2018-08-21 15:16:07', '2018-08-21 15:16:15'),
(244, 44, '/storage/app/export/2018-08-21_qym_Example.zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(245, 44, '/storage/app/export/2018-08-21_qym_Example.zip/65001076/2.jpg', 1, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(246, 44, '/storage/app/export/2018-08-21_qym_Example.zip/65001076/3.jpg', 1, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(247, 44, '/storage/app/export/2018-08-21_qym_Example.zip/65001076/4.jpg', 1, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(248, 45, '/storage/app/export/2018-08-21_qym_Example.zip/20111995/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(249, 45, '/storage/app/export/2018-08-21_qym_Example.zip/20111995/2.jpg', 1, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(250, 45, '/storage/app/export/2018-08-21_qym_Example.zip/20111995/3.jpg', 1, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(251, 45, '/storage/app/export/2018-08-21_qym_Example.zip/20111995/4.jpg', 1, '2018-08-21 15:28:40', '2018-08-21 15:28:40'),
(252, 46, '/storage/app/export/2018-08-21_06F_Example.zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(253, 46, '/storage/app/export/2018-08-21_06F_Example.zip/65001076/2.jpg', 1, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(254, 46, '/storage/app/export/2018-08-21_06F_Example.zip/65001076/3.jpg', 1, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(255, 46, '/storage/app/export/2018-08-21_06F_Example.zip/65001076/4.jpg', 1, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(256, 47, '/storage/app/export/2018-08-21_06F_Example.zip/20111995/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(257, 47, '/storage/app/export/2018-08-21_06F_Example.zip/20111995/2.jpg', 1, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(258, 47, '/storage/app/export/2018-08-21_06F_Example.zip/20111995/3.jpg', 1, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(259, 47, '/storage/app/export/2018-08-21_06F_Example.zip/20111995/4.jpg', 1, '2018-08-21 15:30:49', '2018-08-21 15:30:49'),
(260, 48, '/storage/app/export/2018-08-21_f6j_Example.zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(261, 48, '/storage/app/export/2018-08-21_f6j_Example.zip/65001076/2.jpg', 1, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(262, 48, '/storage/app/export/2018-08-21_f6j_Example.zip/65001076/3.jpg', 1, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(263, 48, '/storage/app/export/2018-08-21_f6j_Example.zip/65001076/4.jpg', 1, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(264, 49, '/storage/app/export/2018-08-21_f6j_Example.zip/20111995/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(265, 49, '/storage/app/export/2018-08-21_f6j_Example.zip/20111995/2.jpg', 1, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(266, 49, '/storage/app/export/2018-08-21_f6j_Example.zip/20111995/3.jpg', 1, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(267, 49, '/storage/app/export/2018-08-21_f6j_Example.zip/20111995/4.jpg', 1, '2018-08-21 15:34:03', '2018-08-21 15:34:03'),
(268, 50, '/storage/app/export/2018-08-21_Tpf_Example.zip/65001076/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(269, 50, '/storage/app/export/2018-08-21_Tpf_Example.zip/65001076/2.jpg', 1, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(270, 50, '/storage/app/export/2018-08-21_Tpf_Example.zip/65001076/3.jpg', 1, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(271, 50, '/storage/app/export/2018-08-21_Tpf_Example.zip/65001076/4.jpg', 1, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(272, 51, '/storage/app/export/2018-08-21_Tpf_Example.zip/20111995/17362736_428984394101308_7294513624864900522_n.jpg', 1, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(273, 51, '/storage/app/export/2018-08-21_Tpf_Example.zip/20111995/2.jpg', 1, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(274, 51, '/storage/app/export/2018-08-21_Tpf_Example.zip/20111995/3.jpg', 1, '2018-08-21 15:36:15', '2018-08-21 15:36:15'),
(275, 51, '/storage/app/export/2018-08-21_Tpf_Example.zip/20111995/4.jpg', 1, '2018-08-21 15:36:15', '2018-08-21 15:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `detail_group_advertises`
--

CREATE TABLE `detail_group_advertises` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_advertise_id` int(11) NOT NULL,
  `advertise_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `advertise_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sugar', '2018-08-10 12:29:06', '2018-08-10 12:29:06'),
(2, 'rain', '2018-08-10 12:29:06', '2018-08-10 12:29:06'),
(3, 'Coffee', '2018-08-10 12:29:06', '2018-08-10 12:29:06'),
(4, 'beer', '2018-08-10 12:29:06', '2018-08-16 17:10:51'),
(8, 'Wine', '2018-08-16 19:45:26', '2018-08-16 19:45:26'),
(12, 'Codes', '2018-08-21 15:16:07', '2018-08-22 15:39:38'),
(13, 'superadmin', '2018-08-22 15:39:07', '2018-08-22 15:39:07'),
(14, 'le duyen', '2018-08-22 15:39:18', '2018-08-22 15:39:18'),
(15, 'superadmin', '2018-08-22 15:52:19', '2018-08-22 15:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_thuc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_time_permanently` int(11) NOT NULL DEFAULT 0,
  `time_start` timestamp NULL DEFAULT NULL,
  `time_end` timestamp NULL DEFAULT NULL,
  `time_repeat` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_start_update` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `title`, `url`, `key`, `description`, `description_thuc`, `is_time_permanently`, `time_start`, `time_end`, `time_repeat`, `image`, `time_start_update`, `created_at`, `updated_at`) VALUES
(76, 'get weather', 'http://api.openweathermap.org/data/2.5/weather?id=1880252&APPID=91b7466cc755db1a94caf6d86a9c788a&units=metric', NULL, 'Today the cloud is $data', NULL, 0, NULL, NULL, NULL, '/storage/app/public/17-08-18/124_1534498936_picture.png', NULL, '2018-08-17 16:42:16', '2018-08-17 16:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `feed_data`
--

CREATE TABLE `feed_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_repeat` int(11) DEFAULT NULL,
  `time_next` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_start` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feed_data`
--

INSERT INTO `feed_data` (`id`, `title`, `description`, `file`, `time_repeat`, `time_next`, `date_start`, `date_end`, `created_at`, `updated_at`) VALUES
(32, 'Vietnamese Coffee and Tea', 'Have you ever enjoyed the coffee and tea of Vietnam?', '/storage/app/public/01-08-18/510_1533115361_peppermintlatteb.jpg', 10, '2018-08-13 05:30:18', '2018-08-13 05:36:16', '2018-08-31 09:35:02', '2018-07-31 12:41:37', '2018-08-13 12:36:16'),
(53, 'aas', 'assa', '/storage/app/public/13-08-18/648_1534135732_37676875_2119209481654803_6277150327225450496_n.jpg', 86400, '2018-08-14 05:35:27', '2018-08-13 05:35:45', '2018-08-14 11:48:42', '2018-08-13 11:48:52', '2018-08-13 12:35:45'),
(54, 'test', 'ahihi', '/storage/app/public/14-08-18/222_1534223422_Artistic Wallpaper for PC (62).jpg', 0, '2018-08-14 12:10:09', '2018-08-14 12:10:09', '2018-08-14 12:10:10', '2018-08-14 12:10:22', '2018-08-14 12:10:22'),
(57, 'Tiêu đề', 'Nội dung', '/storage/app/public/16-08-18/208_1534413660_2.jpg', 0, '2018-08-15 04:59:24', '2018-08-15 04:59:24', '2018-08-17 04:59:28', '2018-08-16 17:01:00', '2018-08-16 17:01:00'),
(58, 'Tiêu đề 1', 'Nội dung 1', '/storage/app/public/16-08-18/560_1534413973_3.jpg', 10, '2018-08-17 08:18:39', '2018-08-17 08:18:39', '2018-08-17 05:05:56', '2018-08-16 17:06:13', '2018-08-17 15:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `feed_data_detail_favorites`
--

CREATE TABLE `feed_data_detail_favorites` (
  `favorite_id` int(11) NOT NULL,
  `feeddata_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feed_data_detail_favorites`
--

INSERT INTO `feed_data_detail_favorites` (`favorite_id`, `feeddata_id`, `created_at`, `updated_at`) VALUES
(1, 54, '2018-08-15 16:17:05', '2018-08-15 16:17:05'),
(2, 54, '2018-08-15 16:17:05', '2018-08-15 16:17:05'),
(3, 54, '2018-08-15 16:17:05', '2018-08-15 16:17:05'),
(1, 57, '2018-08-16 17:01:00', '2018-08-16 17:01:00'),
(2, 57, '2018-08-16 17:01:00', '2018-08-16 17:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `feed_details`
--

CREATE TABLE `feed_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `feed_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feed_details`
--

INSERT INTO `feed_details` (`id`, `feed_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"coord\":{\"lon\":103.85,\"lat\":1.29},\"weather\":[{\"id\":803,\"main\":\"Clouds\",\"description\":\"broken clouds\",\"icon\":\"04d\"}],\"base\":\"stations\",\"main\":{\"temp\":31.75,\"pressure\":1011,\"humidity\":70,\"temp_min\":31,\"temp_max\":33},\"visibility\":10000,\"wind\":{\"speed\":4.6,\"deg\":200},\"clouds\":{\"all\":75},\"dt\":1533873600,\"sys\":{\"type\":1,\"id\":8143,\"message\":0.0048,\"country\":\"SG\",\"sunrise\":1533855907,\"sunset\":1533899689},\"id\":1880252,\"name\":\"Singapore\",\"cod\":200}', '2018-08-06 17:03:34', '2018-08-06 17:03:34'),
(2, 1, '{\"coord\":{\"lon\":103.85,\"lat\":1.29},\"weather\":[{\"id\":803,\"main\":\"Clouds\",\"description\":\"broken clouds\",\"icon\":\"04d\"}],\"base\":\"stations\",\"main\":{\"temp\":31.75,\"pressure\":1011,\"humidity\":70,\"temp_min\":31,\"temp_max\":33},\"visibility\":10000,\"wind\":{\"speed\":4.6,\"deg\":200},\"clouds\":{\"all\":75},\"dt\":1533873600,\"sys\":{\"type\":1,\"id\":8143,\"message\":0.0048,\"country\":\"SG\",\"sunrise\":1533855907,\"sunset\":1533899689},\"id\":1880252,\"name\":\"Singapore\",\"cod\":200}', '2018-08-06 17:05:42', '2018-08-06 17:05:42'),
(3, 8, 'asdadsasdasdasd', '2018-08-09 16:55:18', '2018-08-09 16:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `feed_rules`
--

CREATE TABLE `feed_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `feed_id` int(11) NOT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feed_rules`
--

INSERT INTO `feed_rules` (`id`, `feed_id`, `element`, `variable`, `created_at`, `updated_at`) VALUES
(2, 15, 'main[\'temp\']', '[temp]', '2018-08-10 15:02:11', '2018-08-10 15:02:11'),
(4, 17, '1', 'ahihi', '2018-08-10 15:28:56', '2018-08-10 15:28:56'),
(5, 18, 'txt1', 'asd', '2018-08-10 15:44:22', '2018-08-10 15:44:22'),
(6, 19, 'txt1', 'mot', '2018-08-10 15:45:15', '2018-08-10 15:45:15'),
(7, 20, 'text', '1', '2018-08-10 15:46:31', '2018-08-10 15:46:31'),
(8, 20, 'value', 'asd', '2018-08-10 15:46:31', '2018-08-10 15:46:31'),
(9, 21, 'hhh', 'asdasd', '2018-08-10 15:51:00', '2018-08-10 15:51:00'),
(10, 22, 'hhh', 'asdasd', '2018-08-10 15:52:15', '2018-08-10 15:52:15'),
(11, 23, 'txt1', '123asdasd', '2018-08-10 15:53:29', '2018-08-10 15:53:29'),
(12, 25, 'text', '2', '2018-08-10 16:22:46', '2018-08-10 16:22:46'),
(14, 25, 'value', 'asd', '2018-08-10 16:22:46', '2018-08-10 16:22:46'),
(89, 28, 'txt1', 'text', '2018-08-11 14:50:01', '2018-08-11 14:50:01'),
(95, 29, 'txt1', '123', '2018-08-11 15:03:58', '2018-08-11 15:03:58'),
(96, 30, 'txt1', 'B', '2018-08-11 15:15:07', '2018-08-11 15:15:07'),
(101, 39, '12321', '00000', '2018-08-14 11:14:10', '2018-08-14 11:14:10'),
(104, 37, 'asd', 'asdads', '2018-08-14 11:24:59', '2018-08-14 11:24:59'),
(105, 37, '123', '456', '2018-08-14 11:24:59', '2018-08-14 11:24:59'),
(106, 41, 'txt1', '1', '2018-08-14 13:23:37', '2018-08-14 13:23:37'),
(107, 42, '1', '2', '2018-08-14 13:25:05', '2018-08-14 13:25:05'),
(108, 43, '1', '2', '2018-08-14 14:17:02', '2018-08-14 14:17:02'),
(109, 44, '1', '2', '2018-08-14 14:20:27', '2018-08-14 14:20:27'),
(110, 44, '3', '4', '2018-08-14 14:20:27', '2018-08-14 14:20:27'),
(111, 45, '1', '2', '2018-08-14 14:48:58', '2018-08-14 14:48:58'),
(112, 46, '1', '2', '2018-08-14 14:53:03', '2018-08-14 14:53:03'),
(113, 47, '1', '2', '2018-08-14 14:53:57', '2018-08-14 14:53:57'),
(114, 48, '1', '2', '2018-08-14 14:55:30', '2018-08-14 14:55:30'),
(115, 48, '3', '4', '2018-08-14 14:55:30', '2018-08-14 14:55:30'),
(116, 49, '1', '2', '2018-08-14 14:56:55', '2018-08-14 14:56:55'),
(117, 49, '3', '4', '2018-08-14 14:56:55', '2018-08-14 14:56:55'),
(136, 50, '1', '2', '2018-08-14 15:35:22', '2018-08-14 15:35:22'),
(138, 51, '1', '2', '2018-08-14 15:37:18', '2018-08-14 15:37:18'),
(142, 52, '1', '2', '2018-08-14 15:45:31', '2018-08-14 15:45:31'),
(144, 53, '1', '2', '2018-08-14 15:52:07', '2018-08-14 15:52:07'),
(145, 54, '1', '2', '2018-08-14 15:52:56', '2018-08-14 15:52:56'),
(146, 55, '1', '2', '2018-08-14 15:54:50', '2018-08-14 15:54:50'),
(147, 56, '1', '2', '2018-08-14 15:56:01', '2018-08-14 15:56:01'),
(148, 57, '1', '2', '2018-08-14 15:56:48', '2018-08-14 15:56:48'),
(158, 58, '1', '2', '2018-08-14 16:05:30', '2018-08-14 16:05:30'),
(163, 59, '1', '2', '2018-08-14 16:06:58', '2018-08-14 16:06:58'),
(164, 59, '3', '4', '2018-08-14 16:06:58', '2018-08-14 16:06:58'),
(165, 60, '1', '2', '2018-08-14 16:07:24', '2018-08-14 16:07:24'),
(167, 61, '1', '2', '2018-08-14 16:15:42', '2018-08-14 16:15:42'),
(170, 62, '1', '2', '2018-08-14 16:21:59', '2018-08-14 16:21:59'),
(172, 63, '1', '1', '2018-08-14 16:22:45', '2018-08-14 16:22:45'),
(176, 64, '2342', '332', '2018-08-14 16:28:45', '2018-08-14 16:28:45'),
(179, 65, '1', '2323', '2018-08-14 16:32:56', '2018-08-14 16:32:56'),
(180, 16, 'main[\'temp\'', '[temp]', '2018-08-14 16:43:16', '2018-08-14 16:43:16'),
(181, 66, 'a', 'af', '2018-08-14 16:50:45', '2018-08-14 16:50:45'),
(182, 67, 'a', 'ád', '2018-08-14 16:54:21', '2018-08-14 16:54:21'),
(242, 68, 'key1', '12', '2018-08-16 13:03:53', '2018-08-16 13:03:53'),
(247, 69, 'asd', 'asdasdasd', '2018-08-16 17:24:43', '2018-08-16 17:24:43'),
(248, 70, 'key1', 'asd', '2018-08-16 17:24:59', '2018-08-16 17:24:59'),
(249, 71, 'key1', '123321', '2018-08-16 17:33:04', '2018-08-16 17:33:04'),
(250, 72, 'key1', '', '2018-08-16 17:33:26', '2018-08-16 17:33:26'),
(254, 73, 'asdadsadsads', 'key1', '2018-08-16 17:48:40', '2018-08-16 17:48:40'),
(257, 74, 'key1', 's', '2018-08-17 13:08:33', '2018-08-17 13:08:33'),
(258, 75, 'key1', '2', '2018-08-17 14:14:35', '2018-08-17 14:14:35'),
(260, 1, 'value', '$bien', '2018-08-17 16:37:01', '2018-08-17 16:37:01'),
(261, 76, 'key1', 'weather[0]->description', '2018-08-17 16:42:16', '2018-08-17 16:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `group_advertises`
--

CREATE TABLE `group_advertises` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_advertises`
--

INSERT INTO `group_advertises` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'name', 'description', 1, '2018-07-17 11:55:06', '2018-07-17 11:55:06'),
(3, 'ads', 'gfn\n', 1, '2018-07-17 12:41:05', '2018-07-17 12:41:05'),
(4, 'le duyen', 'aqDA\n', 1, '2018-07-17 12:41:33', '2018-07-17 12:41:33'),
(13, 'Hoang Cao', 'Hoi Den\n', 1, '2018-07-17 17:36:40', '2018-07-17 17:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `group_devices`
--

CREATE TABLE `group_devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_imports`
--

CREATE TABLE `history_imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history_imports`
--

INSERT INTO `history_imports` (`id`, `user_id`, `file`, `created_at`, `updated_at`) VALUES
(2, 1, '2018-08-09_Ds6_Example.zip', '2018-08-09 14:58:01', '2018-08-09 14:58:01'),
(3, 1, '2018-08-09_oiR_Example.zip', '2018-08-09 15:42:20', '2018-08-09 15:42:20'),
(4, 1, '2018-08-09_vDB_Employees09082018.zip', '2018-08-09 16:30:42', '2018-08-09 16:30:42'),
(5, 1, '2018-08-10_doe_Example.zip', '2018-08-10 12:29:07', '2018-08-10 12:29:07'),
(6, 1, '2018-08-11_XOK_Example.zip', '2018-08-11 13:52:16', '2018-08-11 13:52:16'),
(7, 1, '2018-08-11_xNh_Example.zip', '2018-08-11 14:45:43', '2018-08-11 14:45:43'),
(8, 1, '2018-08-11_9DK_Example.zip', '2018-08-11 14:48:40', '2018-08-11 14:48:40'),
(9, 1, '2018-08-11_N4E_Example.zip', '2018-08-11 15:39:09', '2018-08-11 15:39:09'),
(10, 1, '2018-08-11_63V_Example.zip', '2018-08-11 15:40:18', '2018-08-11 15:40:18'),
(11, 1, '2018-08-13_jid_2018-08-13_XtI91tKZZ8.zip', '2018-08-13 18:02:48', '2018-08-13 18:02:48'),
(12, 1, '2018-08-13_zM4_2018-08-13_XtI91tKZZ8.zip', '2018-08-13 18:04:32', '2018-08-13 18:04:32'),
(13, 1, '2018-08-13_rmn_2018-08-13_XtI91tKZZ8.zip', '2018-08-13 18:14:37', '2018-08-13 18:14:37'),
(14, 1, '2018-08-13_wxJ_2018-08-13_XtI91tKZZ8.zip', '2018-08-13 18:16:31', '2018-08-13 18:16:31'),
(15, 1, '2018-08-13_7FE_2018-08-13_XtI91tKZZ8.zip', '2018-08-13 18:17:18', '2018-08-13 18:17:18'),
(16, 1, '2018-08-13_JE5_2018-08-13_7yQ1gXMN7U.zip', '2018-08-13 18:19:00', '2018-08-13 18:19:00'),
(17, 1, '2018-08-14_IEu_Example1.zip', '2018-08-14 16:45:15', '2018-08-14 16:45:15'),
(18, 1, '2018-08-14_mHo_Example1.zip', '2018-08-14 17:49:04', '2018-08-14 17:49:04'),
(19, 1, '2018-08-14_C2N_Example1.zip', '2018-08-14 18:38:15', '2018-08-14 18:38:15'),
(20, 1, '2018-08-16_11E_Example1.zip', '2018-08-16 11:42:06', '2018-08-16 11:42:06'),
(21, 1, '2018-08-16_t88_2018-08-13_13kSBvK4mc.zip', '2018-08-16 11:51:11', '2018-08-16 11:51:11'),
(22, 1, '2018-08-16_Nzv_Example(1).zip', '2018-08-16 11:52:06', '2018-08-16 11:52:06'),
(23, 1, '2018-08-16_88Y_Example(1).zip', '2018-08-16 11:52:51', '2018-08-16 11:52:51'),
(24, 1, '2018-08-16_bbV_Example(1).zip', '2018-08-16 11:53:19', '2018-08-16 11:53:19'),
(25, 1, '2018-08-16_kQs_Example(1).zip', '2018-08-16 11:55:23', '2018-08-16 11:55:23'),
(26, 1, '2018-08-16_N2W_Example1.zip', '2018-08-16 11:58:47', '2018-08-16 11:58:47'),
(27, 1, '2018-08-16_N2W_Example1.zip', '2018-08-16 11:59:18', '2018-08-16 11:59:18'),
(28, 1, '2018-08-16_wqA_Example1.zip', '2018-08-16 12:00:05', '2018-08-16 12:00:05'),
(29, 1, '2018-08-16_wqA_Example1.zip', '2018-08-16 12:03:43', '2018-08-16 12:03:43'),
(30, 1, '2018-08-16_wqA_Example1.zip', '2018-08-16 12:03:51', '2018-08-16 12:03:51'),
(31, 1, '2018-08-16_wqA_Example1.zip', '2018-08-16 12:04:05', '2018-08-16 12:04:05'),
(32, 1, '2018-08-16_wqA_Example1.zip', '2018-08-16 12:04:38', '2018-08-16 12:04:38'),
(33, 1, '2018-08-16_wqA_Example1.zip', '2018-08-16 12:05:04', '2018-08-16 12:05:04'),
(34, 1, '2018-08-16_wqA_Example1.zip', '2018-08-16 12:05:21', '2018-08-16 12:05:21'),
(35, 1, '2018-08-16_wqA_Example1.zip', '2018-08-16 12:05:33', '2018-08-16 12:05:33'),
(36, 1, '2018-08-16_wqA_Example1.zip', '2018-08-16 12:05:37', '2018-08-16 12:05:37'),
(37, 1, '2018-08-16_wqA_Example1.zip', '2018-08-16 12:06:09', '2018-08-16 12:06:09'),
(38, 1, '2018-08-16_h5n_Example1.zip', '2018-08-16 12:08:28', '2018-08-16 12:08:28'),
(39, 1, '2018-08-16_GRA_kpm16082011.zip', '2018-08-16 16:54:54', '2018-08-16 16:54:54'),
(40, 1, '2018-08-16_pTv_Example(9).zip', '2018-08-16 19:45:29', '2018-08-16 19:45:29'),
(41, 1, '2018-08-16_DAJ_Example(9).zip', '2018-08-16 19:50:32', '2018-08-16 19:50:32'),
(42, 1, '2018-08-16_isL_Example(9).zip', '2018-08-16 19:52:01', '2018-08-16 19:52:01'),
(43, 1, '2018-08-17_IuC_Example(10).zip', '2018-08-17 10:28:21', '2018-08-17 10:28:21'),
(44, 1, '2018-08-17_VnH_Example(10).zip', '2018-08-17 10:56:27', '2018-08-17 10:56:27'),
(45, 1, '2018-08-17_7bv_Example(10).zip', '2018-08-17 11:04:17', '2018-08-17 11:04:17'),
(46, 1, '2018-08-17_C3e_Example(10).zip', '2018-08-17 11:05:53', '2018-08-17 11:05:53'),
(47, 1, '2018-08-21_pfU_Example.zip', '2018-08-21 15:16:09', '2018-08-21 15:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_request` datetime DEFAULT NULL,
  `time_response` datetime DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `url`, `time_request`, `time_response`, `content`, `status`, `created_at`, `updated_at`) VALUES
(261, 'http://api.openweathermap.org/data/2.5/weather?id=1880252&APPID=91b7466cc755db1a94caf6d86a9c788a&units=metric', '2018-08-18 13:48:15', NULL, NULL, 0, '2018-08-18 13:48:15', '2018-08-18 13:48:15'),
(262, 'http://api.openweathermap.org/data/2.5/weather?id=1880252&APPID=91b7466cc755db1a94caf6d86a9c788a&units=metric', '2018-08-18 13:48:57', NULL, NULL, 0, '2018-08-18 13:48:57', '2018-08-18 13:48:57'),
(263, 'http://api.openweathermap.org/data/2.5/weather?id=1880252&APPID=91b7466cc755db1a94caf6d86a9c788a&units=metric', '2018-08-18 13:49:19', NULL, NULL, 0, '2018-08-18 13:49:19', '2018-08-18 13:49:19'),
(264, 'http://api.openweathermap.org/data/2.5/weather?id=1880252&APPID=91b7466cc755db1a94caf6d86a9c788a&units=metric', '2018-08-18 13:50:44', NULL, NULL, 0, '2018-08-18 13:50:44', '2018-08-18 13:50:44'),
(265, 'http://api.openweathermap.org/data/2.5/weather?id=1880252&APPID=91b7466cc755db1a94caf6d86a9c788a&units=metric', '2018-08-18 13:51:24', NULL, NULL, 0, '2018-08-18 13:51:24', '2018-08-18 13:51:24'),
(266, 'http://api.openweathermap.org/data/2.5/weather?id=1880252&APPID=91b7466cc755db1a94caf6d86a9c788a&units=metric', '2018-08-18 13:51:39', NULL, NULL, 0, '2018-08-18 13:51:39', '2018-08-18 13:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) UNSIGNED NOT NULL,
  `person_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `person_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zone_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `person_id`, `zone_id`, `type`, `message`, `created_at`, `updated_at`) VALUES
(232, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 12:38:55', '2018-08-02 12:38:55'),
(233, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 12:38:56', '2018-08-02 12:38:56'),
(234, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: scattered clouds\"}}', '2018-08-02 12:38:57', '2018-08-02 12:38:57'),
(235, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 12:42:44', '2018-08-02 12:42:44'),
(236, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 12:42:45', '2018-08-02 12:42:45'),
(237, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 12:42:46', '2018-08-02 12:42:46'),
(238, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 12:42:50', '2018-08-02 12:42:50'),
(239, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 12:42:51', '2018-08-02 12:42:51'),
(240, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 12:42:52', '2018-08-02 12:42:52'),
(241, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 12:42:59', '2018-08-02 12:42:59'),
(242, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 12:43:00', '2018-08-02 12:43:00'),
(243, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 12:43:01', '2018-08-02 12:43:01'),
(244, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 12:43:14', '2018-08-02 12:43:14'),
(245, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"helo\",\"description\":\"o\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/02-08-18\\/985_1533188495_28168684_849179445254237_8626818686633545064_n.jpg\"}}', '2018-08-02 12:43:15', '2018-08-02 12:43:15'),
(246, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 12:43:16', '2018-08-02 12:43:16'),
(247, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 12:50:46', '2018-08-02 12:50:46'),
(248, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 12:50:47', '2018-08-02 12:50:47'),
(249, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 12:50:48', '2018-08-02 12:50:48'),
(250, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 12:54:23', '2018-08-02 12:54:23'),
(251, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 12:54:24', '2018-08-02 12:54:24'),
(252, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 12:54:25', '2018-08-02 12:54:25'),
(253, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 12:57:15', '2018-08-02 12:57:15'),
(254, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 12:57:16', '2018-08-02 12:57:16'),
(255, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 12:57:17', '2018-08-02 12:57:17'),
(256, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:43:38', '2018-08-02 13:43:38'),
(257, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:43:39', '2018-08-02 13:43:39'),
(258, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:43:40', '2018-08-02 13:43:40'),
(259, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:45:38', '2018-08-02 13:45:38'),
(260, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:45:39', '2018-08-02 13:45:39'),
(261, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:45:40', '2018-08-02 13:45:40'),
(262, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:45:48', '2018-08-02 13:45:48'),
(263, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:45:49', '2018-08-02 13:45:49'),
(264, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:45:50', '2018-08-02 13:45:50'),
(265, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:46:08', '2018-08-02 13:46:08'),
(266, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:46:09', '2018-08-02 13:46:09'),
(267, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:46:10', '2018-08-02 13:46:10'),
(268, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:46:15', '2018-08-02 13:46:15'),
(269, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:46:16', '2018-08-02 13:46:16'),
(270, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:46:17', '2018-08-02 13:46:17'),
(271, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:46:20', '2018-08-02 13:46:20'),
(272, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:46:21', '2018-08-02 13:46:21'),
(273, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:46:22', '2018-08-02 13:46:22'),
(274, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:46:24', '2018-08-02 13:46:24'),
(275, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:46:25', '2018-08-02 13:46:25'),
(276, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:46:26', '2018-08-02 13:46:26'),
(277, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:46:28', '2018-08-02 13:46:28'),
(278, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:46:29', '2018-08-02 13:46:29'),
(279, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:46:30', '2018-08-02 13:46:30'),
(280, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:46:37', '2018-08-02 13:46:37'),
(281, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:46:38', '2018-08-02 13:46:38'),
(282, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:46:39', '2018-08-02 13:46:39'),
(283, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:46:42', '2018-08-02 13:46:42'),
(284, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:46:43', '2018-08-02 13:46:43'),
(285, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:46:44', '2018-08-02 13:46:44'),
(286, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:46:50', '2018-08-02 13:46:50'),
(287, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:46:51', '2018-08-02 13:46:51'),
(288, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:46:52', '2018-08-02 13:46:52'),
(289, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:46:57', '2018-08-02 13:46:57'),
(290, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:46:58', '2018-08-02 13:46:58'),
(291, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:46:59', '2018-08-02 13:46:59'),
(292, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:47:04', '2018-08-02 13:47:04'),
(293, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:47:05', '2018-08-02 13:47:05'),
(294, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:47:06', '2018-08-02 13:47:06'),
(295, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:47:21', '2018-08-02 13:47:21'),
(296, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:47:22', '2018-08-02 13:47:22'),
(297, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:47:23', '2018-08-02 13:47:23'),
(298, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:47:27', '2018-08-02 13:47:27'),
(299, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:47:28', '2018-08-02 13:47:28'),
(300, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:47:29', '2018-08-02 13:47:29'),
(301, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:48:20', '2018-08-02 13:48:20'),
(302, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:48:22', '2018-08-02 13:48:22'),
(303, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:48:24', '2018-08-02 13:48:24'),
(304, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:48:33', '2018-08-02 13:48:33'),
(305, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:48:35', '2018-08-02 13:48:35'),
(306, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:48:37', '2018-08-02 13:48:37'),
(307, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:48:47', '2018-08-02 13:48:47'),
(308, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:48:49', '2018-08-02 13:48:49'),
(309, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:48:51', '2018-08-02 13:48:51'),
(310, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:49:16', '2018-08-02 13:49:16'),
(311, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:49:18', '2018-08-02 13:49:18'),
(312, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:49:20', '2018-08-02 13:49:20'),
(313, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:49:25', '2018-08-02 13:49:25'),
(314, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:49:26', '2018-08-02 13:49:26'),
(315, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:49:27', '2018-08-02 13:49:27'),
(316, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:49:28', '2018-08-02 13:49:28'),
(317, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:49:29', '2018-08-02 13:49:29'),
(318, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:49:30', '2018-08-02 13:49:30'),
(319, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:49:38', '2018-08-02 13:49:38'),
(320, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:49:40', '2018-08-02 13:49:40'),
(321, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:49:42', '2018-08-02 13:49:42'),
(322, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:49:59', '2018-08-02 13:49:59'),
(323, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:50:01', '2018-08-02 13:50:01'),
(324, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:50:03', '2018-08-02 13:50:03'),
(325, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:50:03', '2018-08-02 13:50:03'),
(326, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:50:05', '2018-08-02 13:50:05'),
(327, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:50:07', '2018-08-02 13:50:07'),
(328, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:50:19', '2018-08-02 13:50:19'),
(329, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:50:21', '2018-08-02 13:50:21'),
(330, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:50:23', '2018-08-02 13:50:23'),
(331, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:50:32', '2018-08-02 13:50:32'),
(332, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:50:32', '2018-08-02 13:50:32'),
(333, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:50:34', '2018-08-02 13:50:34'),
(334, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:50:34', '2018-08-02 13:50:34'),
(335, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:50:36', '2018-08-02 13:50:36'),
(336, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:50:36', '2018-08-02 13:50:36'),
(337, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:50:50', '2018-08-02 13:50:50'),
(338, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:50:52', '2018-08-02 13:50:52'),
(339, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:50:54', '2018-08-02 13:50:54'),
(340, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:51:33', '2018-08-02 13:51:33'),
(341, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:51:35', '2018-08-02 13:51:35'),
(342, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:51:37', '2018-08-02 13:51:37'),
(343, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:54:06', '2018-08-02 13:54:06'),
(344, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:54:08', '2018-08-02 13:54:08'),
(345, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:54:10', '2018-08-02 13:54:10'),
(346, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:54:15', '2018-08-02 13:54:15'),
(347, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:54:17', '2018-08-02 13:54:17'),
(348, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:54:19', '2018-08-02 13:54:19'),
(349, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:54:34', '2018-08-02 13:54:34'),
(350, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:54:36', '2018-08-02 13:54:36'),
(351, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:54:38', '2018-08-02 13:54:38'),
(352, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:54:48', '2018-08-02 13:54:48'),
(353, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:54:50', '2018-08-02 13:54:50'),
(354, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 13:54:52', '2018-08-02 13:54:52'),
(355, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 13:56:38', '2018-08-02 13:56:38'),
(356, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 13:56:40', '2018-08-02 13:56:40'),
(357, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Th\\u00e0nh ph\\u1ed1 H\\u1ed3 Ch\\u00ed Minh: broken clouds\"}}', '2018-08-02 13:56:42', '2018-08-02 13:56:42'),
(358, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 14:05:08', '2018-08-02 14:05:08'),
(359, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 14:05:11', '2018-08-02 14:05:11'),
(360, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Th\\u00e0nh ph\\u1ed1 H\\u1ed3 Ch\\u00ed Minh: broken clouds\"}}', '2018-08-02 14:05:14', '2018-08-02 14:05:14'),
(361, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 14:05:42', '2018-08-02 14:05:42'),
(362, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 14:05:45', '2018-08-02 14:05:45'),
(363, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 14:05:48', '2018-08-02 14:05:48'),
(364, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 14:05:58', '2018-08-02 14:05:58'),
(365, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 14:06:01', '2018-08-02 14:06:01'),
(366, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 14:06:04', '2018-08-02 14:06:04'),
(367, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 14:06:24', '2018-08-02 14:06:24'),
(368, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 14:06:27', '2018-08-02 14:06:27'),
(369, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 14:06:30', '2018-08-02 14:06:30'),
(370, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 14:06:43', '2018-08-02 14:06:43'),
(371, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 14:06:44', '2018-08-02 14:06:44'),
(372, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 14:06:45', '2018-08-02 14:06:45'),
(373, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 14:25:56', '2018-08-02 14:25:56'),
(374, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"New Feed Data\",\"description\":\"Feed Data\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/02-08-18\\/566_1533194455_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-02 14:25:57', '2018-08-02 14:25:57'),
(375, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 14:25:58', '2018-08-02 14:25:58'),
(376, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 14:26:30', '2018-08-02 14:26:30'),
(377, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"New Feed Data\",\"description\":\"Feed Data\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/02-08-18\\/566_1533194455_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-02 14:26:31', '2018-08-02 14:26:31'),
(378, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 14:26:32', '2018-08-02 14:26:32'),
(379, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 14:27:22', '2018-08-02 14:27:22'),
(380, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"New Feed Data\",\"description\":\"Feed Data\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/02-08-18\\/566_1533194455_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-02 14:27:23', '2018-08-02 14:27:23'),
(381, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 14:27:24', '2018-08-02 14:27:24'),
(382, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 14:28:15', '2018-08-02 14:28:15'),
(383, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 14:28:16', '2018-08-02 14:28:16'),
(384, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 14:28:17', '2018-08-02 14:28:17'),
(385, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 14:29:26', '2018-08-02 14:29:26'),
(386, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 14:29:27', '2018-08-02 14:29:27'),
(387, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 14:29:28', '2018-08-02 14:29:28'),
(388, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 15:03:46', '2018-08-02 15:03:46'),
(389, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 15:03:47', '2018-08-02 15:03:47'),
(390, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 15:03:48', '2018-08-02 15:03:48'),
(391, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 15:03:52', '2018-08-02 15:03:52'),
(392, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 15:03:53', '2018-08-02 15:03:53'),
(393, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 15:03:54', '2018-08-02 15:03:54'),
(394, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 15:10:21', '2018-08-02 15:10:21'),
(395, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 15:10:22', '2018-08-02 15:10:22'),
(396, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 15:10:23', '2018-08-02 15:10:23'),
(397, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 15:12:47', '2018-08-02 15:12:47'),
(398, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 15:12:48', '2018-08-02 15:12:48'),
(399, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 15:12:49', '2018-08-02 15:12:49'),
(400, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-02 15:13:23', '2018-08-02 15:13:23'),
(401, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-02 15:13:24', '2018-08-02 15:13:24'),
(402, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-02 15:13:25', '2018-08-02 15:13:25'),
(403, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-03 11:13:16', '2018-08-03 11:13:16'),
(404, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-03 11:13:17', '2018-08-03 11:13:17'),
(405, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: scattered clouds\"}}', '2018-08-03 11:13:18', '2018-08-03 11:13:18'),
(406, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-03 11:18:12', '2018-08-03 11:18:12'),
(407, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-03 11:18:13', '2018-08-03 11:18:13'),
(408, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: scattered clouds\"}}', '2018-08-03 11:18:14', '2018-08-03 11:18:14'),
(409, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-03 14:36:21', '2018-08-03 14:36:21'),
(410, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-03 14:36:22', '2018-08-03 14:36:22'),
(411, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-03 14:36:23', '2018-08-03 14:36:23'),
(412, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-03 17:04:59', '2018-08-03 17:04:59'),
(413, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-03 17:05:00', '2018-08-03 17:05:00'),
(414, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-03 17:05:01', '2018-08-03 17:05:01'),
(415, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-07 12:19:31', '2018-08-07 12:19:31'),
(416, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-07 12:19:32', '2018-08-07 12:19:32'),
(417, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: thunderstorm with light rain\"}}', '2018-08-07 12:19:33', '2018-08-07 12:19:33'),
(418, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-07 12:22:17', '2018-08-07 12:22:17'),
(419, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-07 12:22:18', '2018-08-07 12:22:18'),
(420, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: thunderstorm with light rain\"}}', '2018-08-07 12:22:19', '2018-08-07 12:22:19'),
(421, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-07 16:19:14', '2018-08-07 16:19:14'),
(422, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-07 16:19:15', '2018-08-07 16:19:15'),
(423, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-07 16:19:16', '2018-08-07 16:19:16'),
(424, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-07 16:19:50', '2018-08-07 16:19:50'),
(425, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-07 16:19:51', '2018-08-07 16:19:51'),
(426, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-07 16:19:52', '2018-08-07 16:19:52'),
(427, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-07 16:25:08', '2018-08-07 16:25:08'),
(428, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-07 16:25:09', '2018-08-07 16:25:09'),
(429, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-07 16:25:10', '2018-08-07 16:25:10'),
(430, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-07 16:28:47', '2018-08-07 16:28:47'),
(431, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-07 16:28:48', '2018-08-07 16:28:48'),
(432, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-07 16:28:49', '2018-08-07 16:28:49'),
(433, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-07 16:31:32', '2018-08-07 16:31:32'),
(434, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-07 16:31:33', '2018-08-07 16:31:33'),
(435, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-07 16:31:34', '2018-08-07 16:31:34'),
(436, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 23 of Hu\\u1ef3nh V\\u0103n T\\u1edbi!\"}}', '2018-08-07 16:31:37', '2018-08-07 16:31:37'),
(437, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-07 16:31:38', '2018-08-07 16:31:38'),
(438, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-07 16:31:39', '2018-08-07 16:31:39'),
(439, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 0 of Le Huu Duyen!\"}}', '2018-08-09 17:38:42', '2018-08-09 17:38:42'),
(440, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:38:43', '2018-08-09 17:38:43'),
(441, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:38:44', '2018-08-09 17:38:44'),
(442, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 0 of Le Huu Duyen!\"}}', '2018-08-09 17:39:33', '2018-08-09 17:39:33'),
(443, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:39:34', '2018-08-09 17:39:34'),
(444, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:39:35', '2018-08-09 17:39:35'),
(445, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of !\"}}', '2018-08-09 17:40:52', '2018-08-09 17:40:52'),
(446, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:40:53', '2018-08-09 17:40:53'),
(447, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:40:54', '2018-08-09 17:40:54'),
(448, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of !\"}}', '2018-08-09 17:41:04', '2018-08-09 17:41:04'),
(449, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:41:05', '2018-08-09 17:41:05'),
(450, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:41:06', '2018-08-09 17:41:06'),
(451, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of Toi!\"}}', '2018-08-09 17:42:48', '2018-08-09 17:42:48'),
(452, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:42:49', '2018-08-09 17:42:49'),
(453, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:42:50', '2018-08-09 17:42:50'),
(454, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of Toi!\"}}', '2018-08-09 17:43:59', '2018-08-09 17:43:59'),
(455, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:44:00', '2018-08-09 17:44:00'),
(456, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:44:01', '2018-08-09 17:44:01'),
(457, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of Toi!\"}}', '2018-08-09 17:44:11', '2018-08-09 17:44:11'),
(458, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:44:12', '2018-08-09 17:44:12'),
(459, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:44:13', '2018-08-09 17:44:13'),
(460, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of Toi!\"}}', '2018-08-09 17:45:42', '2018-08-09 17:45:42'),
(461, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:45:43', '2018-08-09 17:45:43'),
(462, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:45:44', '2018-08-09 17:45:44');
INSERT INTO `messages` (`id`, `person_id`, `zone_id`, `type`, `message`, `created_at`, `updated_at`) VALUES
(463, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of Toi!\"}}', '2018-08-09 17:45:51', '2018-08-09 17:45:51'),
(464, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:45:52', '2018-08-09 17:45:52'),
(465, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:45:53', '2018-08-09 17:45:53'),
(466, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 17:48:16', '2018-08-09 17:48:16'),
(467, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:48:17', '2018-08-09 17:48:17'),
(468, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:48:18', '2018-08-09 17:48:18'),
(469, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 17:48:32', '2018-08-09 17:48:32'),
(470, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\"}}', '2018-08-09 17:48:33', '2018-08-09 17:48:33'),
(471, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:48:34', '2018-08-09 17:48:34'),
(472, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 17:57:41', '2018-08-09 17:57:41'),
(473, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 17:57:42', '2018-08-09 17:57:42'),
(474, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:57:43', '2018-08-09 17:57:43'),
(475, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 17:57:56', '2018-08-09 17:57:56'),
(476, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 17:57:57', '2018-08-09 17:57:57'),
(477, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:57:58', '2018-08-09 17:57:58'),
(478, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 17:58:01', '2018-08-09 17:58:01'),
(479, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 17:58:02', '2018-08-09 17:58:02'),
(480, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:58:03', '2018-08-09 17:58:03'),
(481, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 17:58:54', '2018-08-09 17:58:54'),
(482, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 17:58:55', '2018-08-09 17:58:55'),
(483, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 17:58:56', '2018-08-09 17:58:56'),
(484, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:03:14', '2018-08-09 18:03:14'),
(485, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:03:15', '2018-08-09 18:03:15'),
(486, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:03:16', '2018-08-09 18:03:16'),
(487, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:06:03', '2018-08-09 18:06:03'),
(488, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:06:04', '2018-08-09 18:06:04'),
(489, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:06:05', '2018-08-09 18:06:05'),
(490, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:06:15', '2018-08-09 18:06:15'),
(491, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:06:16', '2018-08-09 18:06:16'),
(492, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:06:17', '2018-08-09 18:06:17'),
(493, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:10:53', '2018-08-09 18:10:53'),
(494, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:10:54', '2018-08-09 18:10:54'),
(495, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:10:55', '2018-08-09 18:10:55'),
(496, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:11:04', '2018-08-09 18:11:04'),
(497, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:11:05', '2018-08-09 18:11:05'),
(498, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:11:06', '2018-08-09 18:11:06'),
(499, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:21:36', '2018-08-09 18:21:36'),
(500, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:21:37', '2018-08-09 18:21:37'),
(501, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:21:38', '2018-08-09 18:21:38'),
(502, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:22:16', '2018-08-09 18:22:16'),
(503, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:22:17', '2018-08-09 18:22:17'),
(504, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:22:18', '2018-08-09 18:22:18'),
(505, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:22:21', '2018-08-09 18:22:21'),
(506, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:22:22', '2018-08-09 18:22:22'),
(507, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:22:23', '2018-08-09 18:22:23'),
(508, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:22:33', '2018-08-09 18:22:33'),
(509, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:22:34', '2018-08-09 18:22:34'),
(510, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:22:35', '2018-08-09 18:22:35'),
(511, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:28:13', '2018-08-09 18:28:13'),
(512, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:28:14', '2018-08-09 18:28:14'),
(513, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:28:15', '2018-08-09 18:28:15'),
(514, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:28:25', '2018-08-09 18:28:25'),
(515, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:28:26', '2018-08-09 18:28:26'),
(516, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:28:27', '2018-08-09 18:28:27'),
(517, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 18:31:29', '2018-08-09 18:31:29'),
(518, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 18:31:30', '2018-08-09 18:31:30'),
(519, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 18:31:31', '2018-08-09 18:31:31'),
(520, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 19:08:59', '2018-08-09 19:08:59'),
(521, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 19:09:00', '2018-08-09 19:09:00'),
(522, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 19:09:01', '2018-08-09 19:09:01'),
(523, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 19:09:11', '2018-08-09 19:09:11'),
(524, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 19:09:12', '2018-08-09 19:09:12'),
(525, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 19:09:13', '2018-08-09 19:09:13'),
(526, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 19:11:37', '2018-08-09 19:11:37'),
(527, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 19:11:38', '2018-08-09 19:11:38'),
(528, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 19:11:39', '2018-08-09 19:11:39'),
(529, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 19:11:44', '2018-08-09 19:11:44'),
(530, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 19:11:45', '2018-08-09 19:11:45'),
(531, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 19:11:46', '2018-08-09 19:11:46'),
(532, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 19:15:11', '2018-08-09 19:15:11'),
(533, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 19:15:12', '2018-08-09 19:15:12'),
(534, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 19:15:13', '2018-08-09 19:15:13'),
(535, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 19:27:59', '2018-08-09 19:27:59'),
(536, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 19:28:00', '2018-08-09 19:28:00'),
(537, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 19:28:01', '2018-08-09 19:28:01'),
(538, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 19:28:04', '2018-08-09 19:28:04'),
(539, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"ATu\",\"description\":\"ATu\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/09-08-18\\/570_1533787938_TvuM20.jpg\"}}', '2018-08-09 19:28:05', '2018-08-09 19:28:05'),
(540, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 19:28:06', '2018-08-09 19:28:06'),
(541, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-09 19:28:08', '2018-08-09 19:28:08'),
(542, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-09 19:28:09', '2018-08-09 19:28:09'),
(543, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-09 19:28:10', '2018-08-09 19:28:10'),
(544, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 09:32:25', '2018-08-10 09:32:25'),
(545, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"ATu\",\"description\":\"ATu\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/09-08-18\\/570_1533787938_TvuM20.jpg\"}}', '2018-08-10 09:32:26', '2018-08-10 09:32:26'),
(546, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 09:32:27', '2018-08-10 09:32:27'),
(547, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 09:34:22', '2018-08-10 09:34:22'),
(548, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"ATu\",\"description\":\"ATu\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/09-08-18\\/570_1533787938_TvuM20.jpg\"}}', '2018-08-10 09:34:23', '2018-08-10 09:34:23'),
(549, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 09:34:24', '2018-08-10 09:34:24'),
(550, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 09:34:42', '2018-08-10 09:34:42'),
(551, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"ATu\",\"description\":\"ATu\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/09-08-18\\/570_1533787938_TvuM20.jpg\"}}', '2018-08-10 09:34:43', '2018-08-10 09:34:43'),
(552, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 09:34:44', '2018-08-10 09:34:44'),
(553, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 09:34:50', '2018-08-10 09:34:50'),
(554, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"ATu\",\"description\":\"ATu\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/09-08-18\\/570_1533787938_TvuM20.jpg\"}}', '2018-08-10 09:34:51', '2018-08-10 09:34:51'),
(555, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 09:34:52', '2018-08-10 09:34:52'),
(556, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 09:35:27', '2018-08-10 09:35:27'),
(557, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 09:35:28', '2018-08-10 09:35:28'),
(558, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 09:35:29', '2018-08-10 09:35:29'),
(559, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 09:35:32', '2018-08-10 09:35:32'),
(560, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 09:35:33', '2018-08-10 09:35:33'),
(561, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 09:35:34', '2018-08-10 09:35:34'),
(562, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 09:41:29', '2018-08-10 09:41:29'),
(563, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 09:41:30', '2018-08-10 09:41:30'),
(564, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 09:41:31', '2018-08-10 09:41:31'),
(565, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 09:42:26', '2018-08-10 09:42:26'),
(566, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 09:42:27', '2018-08-10 09:42:27'),
(567, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 09:42:28', '2018-08-10 09:42:28'),
(568, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 09:42:48', '2018-08-10 09:42:48'),
(569, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 09:42:49', '2018-08-10 09:42:49'),
(570, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 09:42:50', '2018-08-10 09:42:50'),
(571, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 10:04:14', '2018-08-10 10:04:14'),
(572, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 10:04:15', '2018-08-10 10:04:15'),
(573, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 10:04:16', '2018-08-10 10:04:16'),
(574, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 10:04:19', '2018-08-10 10:04:19'),
(575, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 10:04:20', '2018-08-10 10:04:20'),
(576, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 10:04:21', '2018-08-10 10:04:21'),
(577, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 10:04:26', '2018-08-10 10:04:26'),
(578, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 10:04:27', '2018-08-10 10:04:27'),
(579, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 10:04:28', '2018-08-10 10:04:28'),
(580, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 10:05:15', '2018-08-10 10:05:15'),
(581, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 10:05:16', '2018-08-10 10:05:16'),
(582, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 10:05:17', '2018-08-10 10:05:17'),
(583, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 10:05:23', '2018-08-10 10:05:23'),
(584, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 10:05:24', '2018-08-10 10:05:24'),
(585, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 10:05:25', '2018-08-10 10:05:25'),
(586, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 10:05:29', '2018-08-10 10:05:29'),
(587, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"ATu\",\"description\":\"ATu\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/09-08-18\\/570_1533787938_TvuM20.jpg\"}}', '2018-08-10 10:05:30', '2018-08-10 10:05:30'),
(588, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 10:05:31', '2018-08-10 10:05:31'),
(589, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 10:06:55', '2018-08-10 10:06:55'),
(590, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 10:06:56', '2018-08-10 10:06:56'),
(591, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 10:06:57', '2018-08-10 10:06:57'),
(592, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 10:07:03', '2018-08-10 10:07:03'),
(593, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"ATu\",\"description\":\"ATu\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/09-08-18\\/570_1533787938_TvuM20.jpg\"}}', '2018-08-10 10:07:04', '2018-08-10 10:07:04'),
(594, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 10:07:05', '2018-08-10 10:07:05'),
(595, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 10:34:59', '2018-08-10 10:34:59'),
(596, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"ATu\",\"description\":\"ATu\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/09-08-18\\/570_1533787938_TvuM20.jpg\"}}', '2018-08-10 10:35:00', '2018-08-10 10:35:00'),
(597, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 10:35:01', '2018-08-10 10:35:01'),
(598, 'ToiDaiCa', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 22 of Duyen!\"}}', '2018-08-10 10:35:35', '2018-08-10 10:35:35'),
(599, 'ToiDaiCa', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Vietnamese Coffee and Tea\",\"description\":\"Have you ever enjoyed the coffee and tea of Vietnam?\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/01-08-18\\/510_1533115361_peppermintlatteb.jpg\"}}', '2018-08-10 10:35:36', '2018-08-10 10:35:36'),
(600, 'ToiDaiCa', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-10 10:35:37', '2018-08-10 10:35:37'),
(601, '1', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-10 17:03:34', '2018-08-10 17:03:34'),
(602, '1', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-11 14:06:16', '2018-08-11 14:06:16'),
(603, '1', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-11 14:54:01', '2018-08-11 14:54:01'),
(604, '1', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-11 14:55:47', '2018-08-11 14:55:47'),
(605, '1', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-11 14:56:23', '2018-08-11 14:56:23'),
(606, '1', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-11 14:57:17', '2018-08-11 14:57:17'),
(607, '1', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-11 14:57:33', '2018-08-11 14:57:33'),
(608, '1', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-11 14:59:35', '2018-08-11 14:59:35'),
(609, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:43', '2018-08-15 14:33:43'),
(610, '1', 4, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:44', '2018-08-15 14:33:44'),
(611, '1', 5, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:45', '2018-08-15 14:33:45'),
(612, '1', 7, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:46', '2018-08-15 14:33:46'),
(613, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:47', '2018-08-15 14:33:47'),
(614, '1', 4, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:48', '2018-08-15 14:33:48'),
(615, '1', 5, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:49', '2018-08-15 14:33:49'),
(616, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:50', '2018-08-15 14:33:50'),
(617, '1', 7, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:50', '2018-08-15 14:33:50'),
(618, '1', 4, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:51', '2018-08-15 14:33:51'),
(619, '1', 5, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:52', '2018-08-15 14:33:52'),
(620, '1', 7, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:53', '2018-08-15 14:33:53'),
(621, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:54', '2018-08-15 14:33:54'),
(622, '1', 4, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:55', '2018-08-15 14:33:55'),
(623, '1', 5, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:56', '2018-08-15 14:33:56'),
(624, '1', 7, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:33:57', '2018-08-15 14:33:57'),
(625, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:35:25', '2018-08-15 14:35:25'),
(626, '1', 4, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:35:26', '2018-08-15 14:35:26'),
(627, '1', 5, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:35:27', '2018-08-15 14:35:27'),
(628, '1', 7, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:35:28', '2018-08-15 14:35:28'),
(629, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:35:29', '2018-08-15 14:35:29'),
(630, '1', 4, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:35:30', '2018-08-15 14:35:30'),
(631, '1', 5, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:35:31', '2018-08-15 14:35:31'),
(632, '1', 7, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:35:32', '2018-08-15 14:35:32'),
(633, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:37:21', '2018-08-15 14:37:21'),
(634, '1', 4, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:37:22', '2018-08-15 14:37:22'),
(635, '1', 5, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:37:23', '2018-08-15 14:37:23'),
(636, '1', 7, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:37:24', '2018-08-15 14:37:24'),
(637, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:39:29', '2018-08-15 14:39:29'),
(638, '1', 4, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:39:30', '2018-08-15 14:39:30'),
(639, '1', 5, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:39:31', '2018-08-15 14:39:31'),
(640, '1', 7, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:39:32', '2018-08-15 14:39:32'),
(641, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:40:24', '2018-08-15 14:40:24'),
(642, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:40:37', '2018-08-15 14:40:37'),
(643, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:40:52', '2018-08-15 14:40:52'),
(644, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:44:24', '2018-08-15 14:44:24'),
(645, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:44:28', '2018-08-15 14:44:28'),
(646, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:47:34', '2018-08-15 14:47:34'),
(647, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:47:38', '2018-08-15 14:47:38'),
(648, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 14:54:37', '2018-08-15 14:54:37'),
(649, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: [temp].\"}}', '2018-08-15 15:43:04', '2018-08-15 15:43:04'),
(650, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: [temp].\"}}', '2018-08-15 15:44:19', '2018-08-15 15:44:19'),
(651, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 15:46:47', '2018-08-15 15:46:47'),
(652, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 16:12:52', '2018-08-15 16:12:52'),
(653, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 16:12:59', '2018-08-15 16:12:59'),
(654, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 16:27:33', '2018-08-15 16:27:33'),
(655, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today\'s temperature is: 31.75.\"}}', '2018-08-15 16:27:48', '2018-08-15 16:27:48'),
(656, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 31.75.\\nthoi tiet : $weather\"}}', '2018-08-15 16:40:41', '2018-08-15 16:40:41'),
(657, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 1011.\\nthoi tiet : $weather\"}}', '2018-08-15 16:46:44', '2018-08-15 16:46:44'),
(658, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\nthoi tiet : SG\"}}', '2018-08-15 16:46:45', '2018-08-15 16:46:45'),
(659, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 1011.\\nthoi tiet : $weather\"}}', '2018-08-15 16:46:56', '2018-08-15 16:46:56'),
(660, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\nthoi tiet : SG\"}}', '2018-08-15 16:46:57', '2018-08-15 16:46:57'),
(661, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 1011.\\nthoi tiet : $weather\"}}', '2018-08-15 16:47:14', '2018-08-15 16:47:14'),
(662, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\nthoi tiet : SG\"}}', '2018-08-15 16:47:15', '2018-08-15 16:47:15'),
(663, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 1011.\\r\\nthoi tiet : [country]\"}}', '2018-08-15 16:49:14', '2018-08-15 16:49:14'),
(664, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:49:15', '2018-08-15 16:49:15'),
(665, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 1011.\\r\\nthoi tiet : [country]\"}}', '2018-08-15 16:55:12', '2018-08-15 16:55:12'),
(666, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:55:13', '2018-08-15 16:55:13'),
(667, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 1011.\\r\\nthoi tiet : [country]\"}}', '2018-08-15 16:56:18', '2018-08-15 16:56:18'),
(668, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:56:19', '2018-08-15 16:56:19'),
(669, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 1011.\\r\\nthoi tiet : [country]\"}}', '2018-08-15 16:56:46', '2018-08-15 16:56:46'),
(670, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:56:47', '2018-08-15 16:56:47'),
(671, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 1011.\\r\\nthoi tiet : [country]\"}}', '2018-08-15 16:57:03', '2018-08-15 16:57:03'),
(672, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:57:04', '2018-08-15 16:57:04'),
(673, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 1011.\\r\\nthoi tiet : [country]\"}}', '2018-08-15 16:57:28', '2018-08-15 16:57:28'),
(674, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:57:29', '2018-08-15 16:57:29'),
(675, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 1011.\\r\\nthoi tiet : [country]\"}}', '2018-08-15 16:58:05', '2018-08-15 16:58:05'),
(676, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:58:06', '2018-08-15 16:58:06'),
(677, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:58:40', '2018-08-15 16:58:40'),
(678, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:58:59', '2018-08-15 16:58:59'),
(679, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:59:13', '2018-08-15 16:59:13'),
(680, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: [temp].\\r\\nthoi tiet : SG\"}}', '2018-08-15 16:59:56', '2018-08-15 16:59:56'),
(681, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\"}}', '2018-08-15 17:01:01', '2018-08-15 17:01:01'),
(682, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\"}}', '2018-08-15 17:01:56', '2018-08-15 17:01:56'),
(683, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\"}}', '2018-08-15 17:02:08', '2018-08-15 17:02:08'),
(684, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\"}}', '2018-08-15 17:02:15', '2018-08-15 17:02:15'),
(685, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\"}}', '2018-08-15 17:03:07', '2018-08-15 17:03:07'),
(686, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\"}}', '2018-08-15 17:03:29', '2018-08-15 17:03:29'),
(687, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\"}}', '2018-08-15 17:04:24', '2018-08-15 17:04:24'),
(688, '1', 3, 3, '{\"type\":3,\"message\":{\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\"}}', '2018-08-15 17:06:45', '2018-08-15 17:06:45'),
(689, '1', 3, 3, '{\"type\":2,\"message\":{\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\"}}', '2018-08-15 17:09:31', '2018-08-15 17:09:31'),
(690, '1', 3, 3, '{\"type\":2,\"message\":{\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\"}}', '2018-08-15 17:10:18', '2018-08-15 17:10:18'),
(691, '1', 3, 3, '{\"type\":3,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/localhost\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:11:26', '2018-08-15 17:11:26'),
(692, '1', 3, 3, '{\"type\":3,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/localhost\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:11:37', '2018-08-15 17:11:37'),
(693, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/localhost\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:12:17', '2018-08-15 17:12:17'),
(694, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:16:17', '2018-08-15 17:16:17'),
(695, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:16:56', '2018-08-15 17:16:56'),
(696, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:19:56', '2018-08-15 17:19:56'),
(697, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:20:18', '2018-08-15 17:20:18'),
(698, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:20:27', '2018-08-15 17:20:27'),
(699, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:20:53', '2018-08-15 17:20:53'),
(700, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:22:52', '2018-08-15 17:22:52'),
(701, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:23:12', '2018-08-15 17:23:12'),
(702, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:25:09', '2018-08-15 17:25:09'),
(703, '1', 3, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"hello: 31.75.\\r\\nthoi tiet : SG\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:25:18', '2018-08-15 17:25:18'),
(704, '1', 16, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: Clouds.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:44:13', '2018-08-15 17:44:13'),
(705, '1', 16, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: Clouds.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:44:46', '2018-08-15 17:44:46'),
(706, '1', 16, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:45:12', '2018-08-15 17:45:12'),
(707, '1', 16, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: Clouds.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:48:49', '2018-08-15 17:48:49'),
(708, '1', 16, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: Clouds.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:50:47', '2018-08-15 17:50:47'),
(709, '1', 16, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: Clouds.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:51:15', '2018-08-15 17:51:15'),
(710, '1', 16, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:52:14', '2018-08-15 17:52:14'),
(711, '1', 16, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:52:21', '2018-08-15 17:52:21'),
(712, '1', 16, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:52:54', '2018-08-15 17:52:54'),
(713, '1', 16, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:52:59', '2018-08-15 17:52:59'),
(714, '1', 1, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"\",\"file\":\"http:\\/\\/localhost\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-15 17:55:41', '2018-08-15 17:55:41'),
(715, '1', 1, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/localhost\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-16 10:13:30', '2018-08-16 10:13:30'),
(716, '1', 1, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/localhost\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-16 10:15:38', '2018-08-16 10:15:38');
INSERT INTO `messages` (`id`, `person_id`, `zone_id`, `type`, `message`, `created_at`, `updated_at`) VALUES
(717, '1', 1, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"dsfsdf\"}}', '2018-08-16 10:16:00', '2018-08-16 10:16:00'),
(718, '1', 1, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-16 10:17:51', '2018-08-16 10:17:51'),
(719, '1', 1, 3, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-16 10:18:02', '2018-08-16 10:18:02'),
(720, '1', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-16 10:28:38', '2018-08-16 10:28:38'),
(721, '1', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-16 10:28:45', '2018-08-16 10:28:45'),
(722, '1', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-16 10:28:50', '2018-08-16 10:28:50'),
(723, '1', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-16 10:28:57', '2018-08-16 10:28:57'),
(724, '1', 1, 2, '{\"type\":2,\"message\":{\"title\":\"Weather Today!\",\"description\":\"Today\'s temperature is: 31.75.\",\"file\":\"http:\\/\\/kpmg.dev-altamedia.com\\/storage\\/app\\/public\\/14-08-18\\/283_1534232046_37748555_2119221424986942_8620746236409937920_n.jpg\"}}', '2018-08-16 10:29:02', '2018-08-16 10:29:02'),
(725, '2', 3, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of Toi!\"}}', '2018-08-16 11:17:40', '2018-08-16 11:17:40'),
(726, '2', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-16 11:17:41', '2018-08-16 11:17:41'),
(727, '2', 3, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of Toi!\"}}', '2018-08-16 11:18:13', '2018-08-16 11:18:13'),
(728, '2', 3, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-16 11:18:14', '2018-08-16 11:18:14'),
(729, '2', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of Toi!\"}}', '2018-08-16 11:40:22', '2018-08-16 11:40:22'),
(730, '2', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-16 11:40:23', '2018-08-16 11:40:23'),
(731, '2', 1, 1, '{\"type\":1,\"message\":{\"description\":\"Happy Birthday 21 of Toi!\"}}', '2018-08-16 11:41:35', '2018-08-16 11:41:35'),
(732, '2', 1, 3, '{\"type\":3,\"message\":{\"description\":\"Today is weather in Singapore: broken clouds\"}}', '2018-08-16 11:41:36', '2018-08-16 11:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_07_13_172951_create_devices_table', 1),
(2, '2018_07_13_173203_create_advertises_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 3),
(7, '2018_03_16_102441_create_users_table', 3),
(8, '2018_03_23_184921_create_permission_tables', 3),
(9, '2018_07_16_162435_create_group_devices_table', 4),
(10, '2018_07_16_164025_create_group_advertises_table', 4),
(11, '2018_07_17_111135_create_detail_group_advertises_table', 4),
(13, '2018_07_13_173346_create_customers_table', 6),
(14, '2018_07_13_173629_create_customer_categories_table', 6),
(15, '2018_07_13_173712_create_templates_table', 6),
(17, '2018_07_25_152557_create_feed_data_table', 8),
(18, '2018_07_25_152659_create_favorites_table', 8),
(19, '2018_07_25_153416_create_feed_data_detail_favorites_table', 8),
(20, '2018_07_26_123422_create_content_variables_table', 9),
(21, '2018_07_26_123443_create_condition_variables_table', 9),
(22, '2018_07_26_134759_create_customer_detail_favorites_table', 10),
(27, '2018_07_31_133423_create_message_table', 11),
(33, '2018_07_25_115926_create_rules_table', 12),
(34, '2018_07_31_135958_create_messages_table', 12),
(35, '2018_08_01_113025_create_logs_table', 13),
(36, '2018_08_03_171337_create_customer_images_table', 14),
(37, '2018_08_06_120118_create_feeds_table', 15),
(38, '2018_08_06_165110_create_feed_details_table', 16),
(39, '2018_03_21_163744_create_user_details_table', 17),
(40, '2018_08_09_143550_create_history_imports_table', 18),
(41, '2018_08_10_112637_create_feed_rules_table', 19),
(42, '2018_08_10_121948_feed_rules', 19),
(43, '2018_08_10_171703_create_zones_table', 20),
(44, '2018_08_15_115615_create_zone_favorites_table', 21),
(45, '2018_08_17_140107_create_yitus_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
(1, 1, 'App\\User'),
(1, 9, 'App\\User'),
(2, 2, 'App\\User'),
(3, 4, 'App\\User'),
(4, 5, 'App\\User'),
(5, 6, 'App\\User'),
(6, 7, 'App\\User'),
(7, 8, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `description`, `mota`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'api', 'Full all roles', 'Superadmin', NULL, NULL),
(2, 'Employee', 'api', 'Full role employee', 'Employee', NULL, NULL),
(3, 'FeedData', 'api', 'Full role Feed Data', 'Clubhouse Feed', NULL, NULL),
(4, 'Rule', 'api', 'Full role Rule', 'Message Rule', NULL, NULL),
(5, 'Tag', 'api', 'Full all tag', 'Preference Tag', NULL, NULL),
(6, 'Feed', 'api', 'Full all feed', 'Information Feeds', NULL, NULL),
(7, 'User', 'api', 'Full all user', 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prerequisite` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `main_condition`, `prerequisite`, `additional_condition`, `content`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, '$birthday', '==', '$today', 'Happy Birthday [age] of [name]!', 1, NULL, '2018-07-31 20:36:25', '2018-07-31 20:36:25'),
(2, '$visit_club', '==', '0', 'Hello [name]! Is this your first time to Clubhouse?', 1, NULL, '2018-07-31 20:36:37', '2018-07-31 20:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `verify`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@gmail.com', '01222232250', 0, 0, '$2y$10$W0dfeIdO6SSMHm4/DC39lehK0wGkjwCVCowKF1wR7UD3.MbMAkfSS', 'Hc4jGd07o8Lv8ArljUHH7OpplWIZLGcMDDTiDIPn5gKOa0sS9BlNhkGNnJ6q', NULL, NULL),
(2, 'lehuuduyen', 'duyen.le@alta.com.vn', NULL, 0, 0, '$2y$10$LhNBHRhlREv9zWsl7BxhkeOYOMBxLgfOjNYiMhiEKEWDxZQyXOP9O', NULL, '2018-08-07 11:28:53', '2018-08-07 11:46:12'),
(4, 'feeddata@gmail.co', 'feeddata@gmail.com', NULL, 0, 0, '$2y$10$.HHoiWIIrlOgXftmjWAc2e6kKTR9wKc.b9Ji3qnfZVZEl9hEWZtvW', NULL, '2018-08-07 18:36:13', '2018-08-07 18:36:13'),
(5, 'full Rule', 'Rule@gmail.com', NULL, 0, 0, '$2y$10$q9OHIV8rPYeXAZNg79mE9O08g6KCDTggDCAvHMjdZBiJkSsGZb752', NULL, '2018-08-07 18:36:38', '2018-08-07 18:36:38'),
(6, 'Tag', 'Tag@gmail.com', NULL, 0, 0, '$2y$10$226wWzNveMhPiOfJ8.ZZpeB39lZRH6d21x99fmxLDuLizixpSjdVS', NULL, '2018-08-08 10:13:44', '2018-08-08 10:13:44'),
(7, 'Feed', 'feed@gmail.com', NULL, 0, 0, '$2y$10$sr1V9uQVO2rP3mUwTEfkN.qSq1cztEbRvIYmIhdrgP6QPY4h.UrR.', NULL, '2018-08-08 10:14:06', '2018-08-08 10:14:06'),
(8, 'User', 'user@gmail.com', NULL, 0, 0, '$2y$10$RRHBfrBoRHxappsXrTpYsOFPAu4/18k9TkyxEiWhyGkgM9jLwgmMG', NULL, '2018-08-08 10:14:21', '2018-08-08 10:14:21'),
(9, 'Nguyen Quang Thinh', 'quangthinh.nguyen@alta.com.vn', NULL, 0, 0, '$2y$10$gNB/PtqugVmcB1b8xtEpNOcUx5CH4ZzF/sR55F5y5S2YlPQtOu7Uq', NULL, '2018-08-09 16:22:03', '2018-08-09 16:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 0,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `count` int(11) DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `full_name`, `email`, `avatar`, `gender`, `phone`, `address`, `birthday`, `count`, `type`, `created_at`, `updated_at`, `state`) VALUES
(2, 2, 'lehuuduyen', 'duyen.le@alta.com.vn', NULL, 0, '01222232250', NULL, NULL, 0, 1, '2018-08-07 11:28:53', '2018-08-07 11:28:53', 1),
(4, 4, 'feeddata@gmail.co', 'feeddata@gmail.com', NULL, 0, '0962394927', NULL, NULL, 0, 1, '2018-08-07 18:36:13', '2018-08-07 18:36:13', 1),
(5, 5, 'full Rule', 'Rule@gmail.com', NULL, 0, '01222232250', NULL, NULL, 0, 1, '2018-08-07 18:36:38', '2018-08-07 18:36:38', 1),
(6, 6, 'Tag', 'Tag@gmail.com', NULL, 0, NULL, NULL, NULL, 0, 1, '2018-08-08 10:13:44', '2018-08-08 10:13:44', 1),
(7, 7, 'Feed', 'feed@gmail.com', NULL, 0, NULL, NULL, NULL, 0, 1, '2018-08-08 10:14:06', '2018-08-08 10:14:06', 1),
(8, 8, 'User', 'user@gmail.com', NULL, 0, NULL, NULL, NULL, 0, 1, '2018-08-08 10:14:21', '2018-08-08 10:14:21', 1),
(9, 9, 'Nguyen Quang Thinh', 'quangthinh.nguyen@alta.com.vn', NULL, 0, '0988656523', NULL, NULL, 0, 1, '2018-08-09 16:22:03', '2018-08-09 16:22:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yitus`
--

CREATE TABLE `yitus` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_replay` int(11) NOT NULL,
  `time_out` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yitus`
--

INSERT INTO `yitus` (`id`, `url`, `time_replay`, `time_out`, `created_at`, `updated_at`) VALUES
(1, 'abc', 12, 13, NULL, '2018-08-17 15:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `code`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(59, 'test2', 'test2', 'aa', 0, '2018-08-17 13:25:03', '2018-08-17 13:25:03'),
(60, 'test3', 'test3', 'a', 0, '2018-08-17 13:28:08', '2018-08-17 13:28:08'),
(61, 'test4', 'test4', 'a', 0, '2018-08-17 13:28:24', '2018-08-17 13:28:24'),
(62, 'test5', 'test5', 'a', 0, '2018-08-17 13:29:21', '2018-08-17 13:29:21'),
(63, 'test5', 'test5', 'a', 0, '2018-08-17 13:29:52', '2018-08-17 13:29:52'),
(64, 'test6', 'test6', 'a', 0, '2018-08-17 13:32:58', '2018-08-17 13:32:58'),
(65, 'test8', 'test8', 'a', 0, '2018-08-17 13:33:56', '2018-08-17 13:33:56'),
(66, 'test10', 'test9', 'a', 2, '2018-08-17 13:34:05', '2018-08-17 15:57:23'),
(68, 'test9', '2', '2', 0, '2018-08-17 15:57:35', '2018-08-17 15:57:35'),
(69, 'test11', 'a', 'a', 0, '2018-08-17 15:57:57', '2018-08-17 15:57:57'),
(70, 'test12', '2', '2', 1, '2018-08-17 15:58:11', '2018-08-17 15:58:47'),
(71, 'test13', '2', '2', 2, '2018-08-17 15:59:07', '2018-08-17 16:00:09'),
(73, 'fds', 'fdg', 'xcv', 1, '2018-08-17 16:02:38', '2018-08-17 16:02:38'),
(74, 'xcv', 'xcv', 'xcv', 2, '2018-08-17 16:03:05', '2018-08-17 16:03:05'),
(75, 'sd', 'sdf', 'sdf', 2, '2018-08-17 16:03:16', '2018-08-17 16:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `zone_favorites`
--

CREATE TABLE `zone_favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(11) NOT NULL,
  `favorite_id` int(11) NOT NULL,
  `score` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zone_favorites`
--

INSERT INTO `zone_favorites` (`id`, `zone_id`, `favorite_id`, `score`, `created_at`, `updated_at`) VALUES
(74, 44, 1, 50, '2018-08-16 13:17:45', '2018-08-16 13:17:45'),
(75, 44, 2, 50, '2018-08-16 13:17:45', '2018-08-16 13:17:45'),
(117, 59, 1, 50, '2018-08-17 13:25:03', '2018-08-17 13:25:03'),
(118, 59, 2, 50, '2018-08-17 13:25:03', '2018-08-17 13:25:03'),
(119, 60, 1, 50, '2018-08-17 13:28:08', '2018-08-17 13:28:08'),
(120, 61, 1, 50, '2018-08-17 13:28:24', '2018-08-17 13:28:24'),
(121, 61, 2, 50, '2018-08-17 13:28:24', '2018-08-17 13:28:24'),
(122, 62, 1, 50, '2018-08-17 13:29:21', '2018-08-17 13:29:21'),
(123, 63, 1, 50, '2018-08-17 13:29:52', '2018-08-17 13:29:52'),
(124, 64, 3, 50, '2018-08-17 13:32:58', '2018-08-17 13:32:58'),
(125, 65, 1, 50, '2018-08-17 13:33:56', '2018-08-17 13:33:56'),
(130, 66, 2, 50, '2018-08-17 15:57:23', '2018-08-17 15:57:23'),
(131, 68, 2, 50, '2018-08-17 15:57:35', '2018-08-17 15:57:35'),
(132, 69, 2, 50, '2018-08-17 15:57:57', '2018-08-17 15:57:57'),
(134, 70, 1, 50, '2018-08-17 15:58:47', '2018-08-17 15:58:47'),
(137, 71, 2, 50, '2018-08-17 16:00:09', '2018-08-17 16:00:09'),
(139, 73, 4, 50, '2018-08-17 16:02:38', '2018-08-17 16:02:38'),
(140, 74, 2, 50, '2018-08-17 16:03:05', '2018-08-17 16:03:05'),
(141, 75, 1, 50, '2018-08-17 16:03:16', '2018-08-17 16:03:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condition_variables`
--
ALTER TABLE `condition_variables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_variables`
--
ALTER TABLE `content_variables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_categories`
--
ALTER TABLE `customer_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_detail_favorites`
--
ALTER TABLE `customer_detail_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_images`
--
ALTER TABLE `customer_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_group_advertises`
--
ALTER TABLE `detail_group_advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_data`
--
ALTER TABLE `feed_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_details`
--
ALTER TABLE `feed_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_rules`
--
ALTER TABLE `feed_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_advertises`
--
ALTER TABLE `group_advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_devices`
--
ALTER TABLE `group_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_imports`
--
ALTER TABLE `history_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yitus`
--
ALTER TABLE `yitus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone_favorites`
--
ALTER TABLE `zone_favorites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertises`
--
ALTER TABLE `advertises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `condition_variables`
--
ALTER TABLE `condition_variables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content_variables`
--
ALTER TABLE `content_variables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `customer_categories`
--
ALTER TABLE `customer_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_detail_favorites`
--
ALTER TABLE `customer_detail_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `customer_images`
--
ALTER TABLE `customer_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `detail_group_advertises`
--
ALTER TABLE `detail_group_advertises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `feed_data`
--
ALTER TABLE `feed_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `feed_details`
--
ALTER TABLE `feed_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feed_rules`
--
ALTER TABLE `feed_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `group_advertises`
--
ALTER TABLE `group_advertises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `group_devices`
--
ALTER TABLE `group_devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_imports`
--
ALTER TABLE `history_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=733;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `yitus`
--
ALTER TABLE `yitus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `zone_favorites`
--
ALTER TABLE `zone_favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
