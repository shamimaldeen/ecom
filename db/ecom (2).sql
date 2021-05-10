-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 12:15 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `storeuser` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resetPassword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activateCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_logs`
--

CREATE TABLE `customers_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `what` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) DEFAULT NULL,
  `wildcard` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `scheme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linker`
--

CREATE TABLE `linker` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linker`
--

INSERT INTO `linker` (`id`, `url`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'https://localhost/multivendor/shamimaldeen/product/1', '0tsoav', '2021-04-04 03:52:12', '2021-04-04 03:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `parent_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Region', 1, '2021-04-19 04:00:24', '2021-04-19 04:00:24'),
(2, 1, 'Bangladesh', 1, '2021-04-18 22:02:05', '2021-04-18 22:02:05'),
(3, 2, 'Dhaka', 1, '2021-04-18 22:02:54', '2021-04-18 22:02:54'),
(4, 3, 'Mogbazar', 1, '2021-04-18 22:03:10', '2021-04-18 22:04:28'),
(5, 2, 'Comilla', 1, '2021-04-19 12:54:01', '2021-04-19 12:54:01');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'store',
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_12_182924_tables', 1),
(5, '2020_09_18_113034_store_orders', 1),
(7, '2021_04_18_063627_create_services_table', 2),
(8, '2021_04_19_033414_create_locations_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` int(11) NOT NULL DEFAULT 0,
  `is_global` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domains` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateways` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'internal',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages_categories`
--

CREATE TABLE `pages_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages_sections`
--

CREATE TABLE `pages_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `block_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_sections`
--

INSERT INTO `pages_sections` (`id`, `user`, `page_id`, `name`, `theme`, `status`, `block_slug`, `data`, `extra`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'zoa', 1, 'enhanced_preset', '{\"banner\":{\"type\":\"image\",\"value\":\"\"},\"banner_subtitle\":{\"type\":\"textarea\",\"value\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s\"},\"about_banner\":{\"type\":\"image\",\"value\":\"\"},\"short_about\":{\"type\":\"textarea\",\"value\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\"}}', NULL, 0, '2021-04-03 00:52:56', '2021-04-03 00:52:56'),
(2, 1, 2, NULL, 'zoa', 1, 'products', '{\"number_of_products\":{\"type\":\"select\",\"value\":999},\"show_search\":{\"type\":\"select\",\"value\":1}}', NULL, 0, '2021-04-03 00:52:57', '2021-04-03 00:52:57'),
(3, 2, 3, NULL, 'zoa', 1, 'enhanced_preset', '{\"banner\":{\"type\":\"image\",\"value\":\"\"},\"banner_subtitle\":{\"type\":\"textarea\",\"value\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s\"},\"about_banner\":{\"type\":\"image\",\"value\":\"\"},\"short_about\":{\"type\":\"textarea\",\"value\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\"}}', NULL, 0, '2021-04-03 06:37:23', '2021-04-03 06:37:23'),
(4, 2, 4, NULL, 'zoa', 1, 'products', '{\"number_of_products\":{\"type\":\"select\",\"value\":999},\"show_search\":{\"type\":\"select\",\"value\":1}}', NULL, 0, '2021-04-03 06:37:23', '2021-04-03 06:37:23'),
(5, 3, 5, NULL, 'zoa', 1, 'enhanced_preset', '{\"banner\":{\"type\":\"image\",\"value\":\"\"},\"banner_subtitle\":{\"type\":\"textarea\",\"value\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s\"},\"about_banner\":{\"type\":\"image\",\"value\":\"\"},\"short_about\":{\"type\":\"textarea\",\"value\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\"}}', NULL, 0, '2021-04-07 00:22:43', '2021-04-07 00:22:43'),
(6, 3, 6, NULL, 'zoa', 1, 'products', '{\"number_of_products\":{\"type\":\"select\",\"value\":999},\"show_search\":{\"type\":\"select\",\"value\":1}}', NULL, 0, '2021-04-07 00:22:44', '2021-04-07 00:22:44'),
(7, 6, 7, NULL, 'zoa', 1, 'enhanced_preset', '{\"banner\":{\"type\":\"image\",\"value\":\"\"},\"banner_subtitle\":{\"type\":\"textarea\",\"value\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s\"},\"about_banner\":{\"type\":\"image\",\"value\":\"\"},\"short_about\":{\"type\":\"textarea\",\"value\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\"}}', NULL, 0, '2021-04-10 04:46:17', '2021-04-10 04:46:17'),
(8, 6, 8, NULL, 'zoa', 1, 'products', '{\"number_of_products\":{\"type\":\"select\",\"value\":999},\"show_search\":{\"type\":\"select\",\"value\":1}}', NULL, 0, '2021-04-10 04:46:17', '2021-04-10 04:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `package` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pending_payments`
--

CREATE TABLE `pending_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bank',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `otheruser` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `salePrice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `product_type` int(11) NOT NULL DEFAULT 0,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `product_condition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `media` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_url_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_management` int(11) DEFAULT NULL,
  `stock_status` int(11) DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user`, `otheruser`, `title`, `slug`, `price`, `status`, `salePrice`, `stock`, `product_type`, `tags`, `featured`, `product_condition`, `media`, `external_url_name`, `stock_management`, `stock_status`, `sku`, `files`, `external_url`, `categories`, `description`, `variation`, `extra`, `position`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'mobile', 'mobile', '30000', 1, '35000', 100, 0, NULL, 0, 'new', '[\"rWk9VMAOCFGvZ4eIC0MZm8K3rucKcNCTLulw8Nv8.jpg\"]', 'fdsaf', 1, 1, 'fcdsf', NULL, 'fdsfsdafsf', '[]', 'hgddfg', NULL, '{\"shipping\":\"500\"}', 0, '2021-04-04 03:48:39', '2021-04-04 03:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `user`, `title`, `slug`, `status`, `description`, `media`, `extra`, `position`, `created_at`, `updated_at`) VALUES
(1, 2, 'latops', 'latops', 1, 'laptop', NULL, NULL, 0, '2021-04-03 06:39:55', '2021-04-03 06:40:20'),
(2, 3, 'B.Sc Computer Science', 'b_sc_computer_science', 1, 'dgrthfngvhb', NULL, NULL, 0, '2021-04-07 00:26:56', '2021-04-07 00:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `storeuser` int(11) NOT NULL,
  `customer` int(11) DEFAULT NULL,
  `send_email` int(11) NOT NULL DEFAULT 0,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `products` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered` int(11) NOT NULL DEFAULT 0,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_refunds`
--

CREATE TABLE `product_refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `storeuser` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `review` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_wishlists`
--

CREATE TABLE `product_wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `storeuser` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `service_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `parent_id`, `service_name`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Root', 0, 1, '2021-04-18 02:25:03', '2021-04-18 02:25:03'),
(2, 1, 'BUilder', 0, 1, '2021-04-18 02:25:47', '2021-04-18 03:12:45'),
(3, 2, 'House Builder', 1, 1, '2021-04-18 10:49:16', '2021-04-19 01:15:14'),
(4, 2, 'Office Builder', 0, 1, '2021-04-18 10:49:29', '2021-04-18 10:49:29'),
(5, 2, 'Carpenter', 0, 1, '2021-04-18 10:50:04', '2021-04-18 10:50:04'),
(6, 3, 'House Extensions', 0, 1, '2021-04-18 10:52:52', '2021-04-18 10:52:52'),
(7, 3, 'Basement Renovations', 0, 1, '2021-04-18 10:53:15', '2021-04-18 10:53:15'),
(8, 3, 'New Garages', 0, 1, '2021-04-18 10:53:48', '2021-04-18 10:53:48'),
(9, 3, 'Garage Conversions', 0, 1, '2021-04-18 10:54:26', '2021-04-18 10:54:26'),
(10, 3, 'Contract Work', 0, 1, '2021-04-18 10:55:09', '2021-04-18 10:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'ads', '{\"enabled\":\"0\",\"store_header\":null,\"store_footer\":null,\"site_header\":null,\"site_footer\":null}'),
(2, 'email', 'admin@ecom.me'),
(3, 'email_activation', '0'),
(4, 'logo', 'PnEe83tzKKF7DviCBCqpH0E0Ap8qw1KJYBkZ1myG.jpg'),
(5, 'favicon', '2Yy0xrU30TB6q0ncew6IF63MsMgooFHjZxNhpb0e.jpg'),
(6, 'timezone', 'Asia/Dhaka'),
(7, 'registration', '1'),
(8, 'custom_home', ''),
(9, 'privacy', ''),
(10, 'terms', ''),
(11, 'package_free', '{\"id\":\"free\",\"name\":\"Free\",\"slug\":\"free\",\"status\":\"1\",\"price\":{\"month\":\"FREE\",\"quarter\":\"FREE\",\"annual\":\"FREE\"},\"settings\":{\"ads\":true,\"custom_branding\":true,\"statistics\":true,\"verified\":true,\"social\":true,\"custom_background\":true,\"domains\":true,\"google_analytics\":true,\"facebook_pixel\":true,\"blogs\":true,\"blogs_limits\":true,\"products_limit\":\"-1\"},\"domains\":\"\\\"1\\\"\"}'),
(12, 'package_trial', '{\"id\":\"trial\",\"name\":\"Trial\",\"slug\":\"trial\",\"status\":\"1\",\"price\":{\"month\":\"FREE\",\"quarter\":\"FREE\",\"annual\":\"FREE\",\"expiry\":\"7\"},\"settings\":{\"expiry\":true,\"ads\":true,\"custom_branding\":true,\"statistics\":true,\"verified\":true,\"social\":true,\"custom_background\":true,\"domains\":true,\"google_analytics\":true,\"facebook_pixel\":true,\"blogs\":true,\"blogs_limits\":true,\"products_limit\":\"-1\",\"trial\":true},\"domains\":\"\\\"1\\\"\"}'),
(13, 'business', '{\"enabled\":\"1\",\"name\":null,\"address\":null,\"city\":null,\"county\":null,\"zip\":null,\"country\":null,\"email\":null,\"phone\":null,\"tax_type\":null,\"tax_id\":null,\"custom_key_one\":null,\"custom_value_one\":null,\"custom_key_two\":null,\"custom_value_two\":null}'),
(14, 'captcha', ''),
(15, 'social', '{\"facebook\":null,\"instagram\":null,\"youtube\":null,\"whatsapp\":null,\"twitter\":null}'),
(16, 'custom_code', '{\"enabled\":false,\"head\":null}'),
(17, 'currency', ''),
(18, 'email_notify', '{\"emails\":null,\"user\":false,\"payment\":false,\"bank_transfer\":false}'),
(19, 'location', 'Dhaka,Bangladesh'),
(20, 'contact', '0'),
(21, 'payment_system', '1'),
(22, 'site', '{\"store_count\":\"0\",\"show_pages\":\"0\"}'),
(23, 'user', '{\"domains_restrict\":\"0\",\"demo_user\":\"1\",\"products_image_size\":\"1\",\"products_image_limit\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `store_orders`
--

CREATE TABLE `store_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `dyid` int(11) DEFAULT NULL,
  `visitor_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `user`, `dyid`, `visitor_id`, `type`, `country`, `ip`, `os`, `browser`, `referer`, `count`, `date`) VALUES
(1, 2, NULL, '18a1b5894216a5b29c02ec95a625d438', 'profile', 'BD', '43.231.76.34', 'Windows', 'Chrome', 'https://localhost/multivendor/shamimaldeen', '1', '2021-04-04 06:09:13'),
(2, 2, NULL, '7c0bfaeba65e8464f958754abac1e8ce', 'profile', 'BD', '43.231.76.34', 'Windows', 'Chrome', 'https://localhost/multivendor/shamimaldeen', '4', '2021-04-04 15:52:12'),
(3, 2, NULL, 'e4ad2a9eca2b1e5cc84e6ee54e8dcbde', 'profile', 'BD', '43.231.76.34', 'Windows', 'Chrome', 'https://localhost/multivendor/shamimaldeen', '1', '2021-04-04 17:27:05'),
(4, 1, NULL, 'fd7b72a5b81f56437b3257fc7d152023', 'profile', 'BD', '123.253.66.138', 'Windows', 'Chrome', 'https://localhost/multivendor/demo', '1', '2021-04-07 12:18:33'),
(5, 3, NULL, '82c34b495d1b524a4fc1e94dd24d7607', 'profile', 'BD', '123.253.66.138', 'Windows', 'Chrome', 'https://localhost/multivendor/test', '3', '2021-04-07 14:19:35'),
(6, 3, NULL, '5f95908c6d728d2e6681b967f7bb7110', 'profile', 'BD', '43.231.76.34', 'Windows', 'Chrome', 'https://localhost/multivendor/test', '1', '2021-04-10 13:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `track_links`
--

CREATE TABLE `track_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'social',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `email_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `media` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_welcome_screen` int(11) NOT NULL DEFAULT 0,
  `enable_welcome_screen` int(11) NOT NULL DEFAULT 0,
  `package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free',
  `package_due` datetime DEFAULT NULL,
  `package_trial_done` int(11) NOT NULL DEFAULT 0,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `last_activity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `role`, `email_token`, `email_verified_at`, `password`, `remember_token`, `name`, `verified`, `media`, `shipping`, `first_welcome_screen`, `enable_welcome_screen`, `package`, `package_due`, `package_trial_done`, `facebook_id`, `google_id`, `domain`, `address`, `gateway`, `socials`, `extra`, `active`, `last_activity`, `last_agent`, `created_at`, `updated_at`) VALUES
(1, 'demo@demo.com', 'demo', 1, NULL, NULL, '$2y$12$xVuJZz.wJklfKvhl9KFZgOhvyRX6FWjazyXgjOHYns0ICO6BZPglm', NULL, '{\"first_name\":\"Easin\",\"last_name\":\"\"}', '0', NULL, NULL, 1, 0, 'free', NULL, 0, NULL, NULL, 'main', NULL, NULL, NULL, '{\"template\":\"zoa\"}', 1, '2021-04-19 23:01:24', 'Linux', '2021-04-03 00:50:35', '2021-04-19 11:01:24'),
(2, 'shamimaldeen@gmail.com', 'shamimaldeen', 1, NULL, NULL, '$2y$10$UtbU9Q/KfBuazC.KUDIAO.pCu9/TdQanO2OS9jhqVXMgqySEpa6bK', 'ULtmIutPFOeAm6ggpiNsBxfBM80KV8erXoJv5nsmh9crcLuatuC7PRT2cqty', '{\"first_name\":\"Md.Shamim\",\"last_name\":null}', '0', '{\"avatar\":\"XPibLXwC8DqQOWLZPc1qQtAm4ODrZeU3EBBmqaPj.jpg\",\"favicon\":\"HeyX213pNF7dchIjOnPeOlzOv5Hw3cTNFhO5smut.jpg\"}', '[]', 1, 0, 'free', NULL, 0, NULL, NULL, 'main', 'Dhaka,Bangladesh', '{\"currency\":\"AED\",\"paypal_status\":false,\"paypal_mode\":null,\"paypal_client_id\":null,\"paypal_secret_key\":null,\"paystack_status\":false,\"paystack_secret_key\":null,\"bank_status\":false,\"bank_details\":null,\"stripe_status\":false,\"stripe_client\":null,\"stripe_secret\":null,\"razor_status\":false,\"razor_key_id\":null,\"razor_secret_key\":null,\"midtrans_mode\":null,\"midtrans_status\":false,\"cash_status\":false,\"midtrans_client_key\":null,\"midtrans_server_key\":null,\"mercadopago_status\":false,\"mercadopago_access_token\":null}', '{\"email\":null,\"whatsapp\":null,\"facebook\":null,\"instagram\":null,\"twitter\":null,\"youtube\":null}', '{\"banner_url\":null,\"shipping_types\":\"enable\",\"invoicing\":\"0\",\"refund_request\":\"0\",\"custom_branding\":null,\"guest_checkout\":\"0\",\"google_analytics\":null,\"facebook_pixel\":null,\"template\":\"zoa\",\"about\":null,\"background_text_color\":\"#fff\",\"background_color\":\"#000\",\"top_product\":\"0\"}', 1, '2021-04-17 22:54:43', 'Linux', '2021-04-03 06:36:57', '2021-04-17 10:54:43'),
(3, 'test@test.com', 'test', 0, NULL, NULL, '$2y$12$s4cGWSpUMdlIuGdIMgzgxuXu6Yt.A75dGB.jiZ3a1Sqds8iqa75KK', 'MxqaWm7VfM8an75cstx22ukUod2rNpQ0mh2Kr94QHYYtJsdenbm0CmHg5YHl', '{\"first_name\":\"Ismail\",\"last_name\":\"dgdfg\"}', '0', NULL, NULL, 1, 0, 'free', NULL, 0, NULL, NULL, 'main', NULL, NULL, NULL, '{\"template\":\"zoa\"}', 1, '2021-04-18 22:33:26', 'Linux', '2021-04-07 00:22:17', '2021-04-18 10:33:26'),
(4, 'shamim123@gmail.com', 's', 0, NULL, NULL, '$2y$10$fNMoYZcMzCzfZH1H5rl9guABpSSufWaUCmrpDMPsmfBeO7dMIbmqe', NULL, '{\"first_name\":\"fsdf\",\"last_name\":\"fdsfsdf\"}', '0', NULL, NULL, 0, 0, 'free', NULL, 0, NULL, NULL, 'main', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2021-04-10 04:06:17', '2021-04-10 04:06:17'),
(5, 'Jamrul@gmail.com', 'ghg', 0, NULL, NULL, '$2y$10$LL1/oXOqi3LvV3WqjKhOCeHt7TisVru8waaBk2dd.8WNBMZ3/eZZa', NULL, '{\"first_name\":\"j\",\"last_name\":\"jg\"}', '0', NULL, NULL, 0, 0, 'free', NULL, 0, NULL, NULL, 'main', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2021-04-10 04:11:56', '2021-04-10 04:11:56'),
(6, 'jhon@gmail.com', 'jhon', 0, NULL, NULL, '$2y$10$oijUe.Ai1r7YyjMAfqesV.Po8GQM.Wy5OBhhn1VA4txxdi1QaBCSu', NULL, '{\"first_name\":\"jhon\",\"last_name\":\"doe\"}', '0', NULL, NULL, 1, 0, 'free', NULL, 0, NULL, NULL, 'main', NULL, NULL, NULL, '{\"template\":\"zoa\"}', 1, '2021-04-10 16:46:16', 'Windows', '2021-04-10 04:45:57', '2021-04-10 04:46:16');

-- --------------------------------------------------------

--
-- Table structure for table `users_logs`
--

CREATE TABLE `users_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `what` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_logs`
--

INSERT INTO `users_logs` (`id`, `user`, `what`, `ip`, `os`, `browser`, `date`) VALUES
(1, 1, 'login successfully', '::1', 'Windows', 'Chrome', '2021-04-03 07:52:55'),
(2, 2, 'login successfully', '::1', 'Windows', 'Chrome', '2021-04-03 13:37:21'),
(3, 2, 'login successfully', '::1', 'Windows', 'Chrome', '2021-04-04 06:10:23'),
(4, 2, 'login successfully', '::1', 'Windows', 'Chrome', '2021-04-04 07:47:30'),
(5, 2, 'invalid password', '::1', 'Windows', 'Chrome', '2021-04-04 17:22:03'),
(6, 2, 'login successfully', '::1', 'Windows', 'Chrome', '2021-04-04 17:22:27'),
(7, 2, 'login successfully', '::1', 'Windows', 'Chrome', '2021-04-07 12:17:21'),
(11, 6, 'login successfully', '::1', 'Windows', 'Chrome', '2021-04-10 16:46:16'),
(13, 3, 'login successfully', '::1', 'Windows', 'Chrome', '2021-04-12 10:37:45'),
(14, 2, 'login successfully', '127.0.0.1', 'Linux', 'Chrome', '2021-04-17 22:54:43'),
(15, 1, 'login successfully', '127.0.0.1', 'Linux', 'Chrome', '2021-04-18 10:03:23'),
(16, 3, 'login successfully', '127.0.0.1', 'Linux', 'Chrome', '2021-04-18 10:05:08'),
(17, 3, 'login successfully', '127.0.0.1', 'Linux', 'Chrome', '2021-04-18 22:33:26'),
(18, 1, 'login successfully', '127.0.0.1', 'Linux', 'Chrome', '2021-04-18 22:34:52'),
(19, 1, 'login successfully', '127.0.0.1', 'Linux', 'Chrome', '2021-04-19 09:30:42'),
(20, 1, 'login successfully', '127.0.0.1', 'Linux', 'Chrome', '2021-04-19 23:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_pages`
--

CREATE TABLE `user_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_menu` int(11) NOT NULL DEFAULT 0,
  `is_home` int(11) NOT NULL DEFAULT 0,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_pages`
--

INSERT INTO `user_pages` (`id`, `user`, `name`, `show_menu`, `is_home`, `total_views`, `slug`, `parent`, `image`, `theme`, `start_date`, `end_date`, `extra`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Home', 0, 1, 0, 'home', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-04-03 00:52:56', '2021-04-03 00:52:56'),
(2, 1, 'Products', 0, 0, 0, 'products', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-04-03 00:52:56', '2021-04-03 00:52:56'),
(3, 2, 'Home', 0, 1, 0, 'home', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-04-03 06:37:22', '2021-04-03 06:37:22'),
(4, 2, 'Products', 0, 0, 0, 'products', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-04-03 06:37:23', '2021-04-03 06:37:23'),
(5, 3, 'Home', 0, 1, 0, 'home', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-04-07 00:22:43', '2021-04-07 00:22:43'),
(6, 3, 'Products', 0, 0, 0, 'products', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-04-07 00:22:44', '2021-04-07 00:22:44'),
(7, 6, 'Home', 0, 1, 0, 'home', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-04-10 04:46:17', '2021-04-10 04:46:17'),
(8, 6, 'Products', 0, 0, 0, 'products', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-04-10 04:46:17', '2021-04-10 04:46:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_logs`
--
ALTER TABLE `customers_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linker`
--
ALTER TABLE `linker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_categories`
--
ALTER TABLE `pages_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_sections`
--
ALTER TABLE `pages_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_payments`
--
ALTER TABLE `pending_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_refunds`
--
ALTER TABLE `product_refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_wishlists`
--
ALTER TABLE `product_wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_orders`
--
ALTER TABLE `store_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_links`
--
ALTER TABLE `track_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_pages`
--
ALTER TABLE `user_pages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers_logs`
--
ALTER TABLE `customers_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linker`
--
ALTER TABLE `linker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages_categories`
--
ALTER TABLE `pages_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages_sections`
--
ALTER TABLE `pages_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_payments`
--
ALTER TABLE `pending_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_refunds`
--
ALTER TABLE `product_refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_wishlists`
--
ALTER TABLE `product_wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `store_orders`
--
ALTER TABLE `store_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `track_links`
--
ALTER TABLE `track_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_pages`
--
ALTER TABLE `user_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
