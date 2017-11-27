-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2017 at 02:18 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Laraflat`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, '{"en":"Air","ar":"تكيف"}', '92242_1511634470.jpg', '2017-11-25 16:27:50', '2017-11-25 16:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `accessories_car`
--

CREATE TABLE `accessories_car` (
  `id` int(10) UNSIGNED NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `accessories_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessories_car`
--

INSERT INTO `accessories_car` (`id`, `car_id`, `accessories_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(3, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, '{"en":"Bmw","ar":"بي ام دببليو"}', '81234_1511630706.png', '2017-11-25 15:25:06', '2017-11-25 15:25:06'),
(2, '{"en":"lada","ar":"لادا"}', '52178_1511631236.jpg', '2017-11-25 15:33:56', '2017-11-25 15:33:56'),
(3, '{"en":"Jeeb","ar":"جيب"}', '46726_1511631261.jpg', '2017-11-25 15:34:21', '2017-11-25 15:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `brand_maincat`
--

CREATE TABLE `brand_maincat` (
  `id` int(10) UNSIGNED NOT NULL,
  `maincat_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_maincat`
--

INSERT INTO `brand_maincat` (`id`, `maincat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `price` float DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `maincat_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `regoin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`price`, `id`, `title`, `body`, `image`, `youtube`, `created_at`, `updated_at`, `user_id`, `brand_id`, `maincat_id`, `country_id`, `regoin_id`) VALUES
(1000000, 1, 'title one here', 'title one here', '82525_1511642187.jpg', NULL, '2017-11-25 18:36:27', '2017-11-25 18:36:27', 1, 1, 2, 1, 1),
(123123000000000, 2, 'asdasdasdasdasd', 'asdasdasdasdasd', '33695_1511651080.jpg', NULL, '2017-11-25 21:04:40', '2017-11-25 21:04:40', 2, 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `command`
--

CREATE TABLE `command` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `command` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `command`
--

INSERT INTO `command` (`id`, `name`, `options`, `command`, `created_at`, `updated_at`) VALUES
(1, 'Brand', 'title:string:min-2_max-191_required:true,image:string:required_image:false', 'laraflat:admin_model', '2017-11-25 15:23:49', '2017-11-25 15:23:49'),
(2, 'Maincat', 'title:string:min-2_max-191_required:true,image:string:required_image:false', 'laraflat:admin_model', '2017-11-25 15:28:09', '2017-11-25 15:28:09'),
(9, 'Car', 'title:string:min-10_max-191_required:false,body:text:min-10_required:false,image:string:required_image:false,youtube:string:nullable_url:false', 'laraflat:admin_model', '2017-11-25 16:01:09', '2017-11-25 16:01:09'),
(10, 'Accessories', 'title:string:min-2_max-191_required:true,image:string:required_image:false', 'laraflat:admin_model', '2017-11-25 16:26:38', '2017-11-25 16:26:38'),
(11, 'Country', 'title:string:min-2_max-191_required:true', 'laraflat:admin_model', '2017-11-25 18:04:32', '2017-11-25 18:04:32'),
(12, 'Regoin', 'title:string:min-2_max-191_required:true', 'laraflat:admin_model', '2017-11-25 18:05:01', '2017-11-25 18:05:01'),
(13, 'Slider', 'title:string:min-2_max-191:true,body:text:min-2_required:false,image:string:required_image:false', 'laraflat:admin_model', '2017-11-25 21:51:14', '2017-11-25 21:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, '{"en":"Egypt","ar":"مصر"}', '2017-11-25 18:07:28', '2017-11-25 18:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Access to User , permission , role , groups roles', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(2, 'User', 'user', 'User group', NULL, '2017-11-25 21:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `group_role`
--

CREATE TABLE `group_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_role`
--

INSERT INTO `group_role` (`id`, `group_id`, `role_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `link`, `type`, `icon`, `parent_id`, `order`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, '{"ar":" الرئيسية ","en":"Home"}', '/admin/home', '', '<i class="material-icons">home</i>', 0, 0, 1, NULL, '2017-11-25 18:26:38'),
(2, '{"ar":"الاقسام","en":"Categories"}', '/admin/categorie', '', '<i class="material-icons">control_point_duplicate</i>', 0, 1, 1, NULL, '2017-11-25 18:26:38'),
(3, '{"ar":"  المستخدمين ","en":"User"}', '/admin/users', '', '<i class="material-icons">account_circle</i>', 0, 2, 1, NULL, '2017-11-25 18:26:38'),
(4, '{"ar":" اعدادت الموقع ","en":"Setting"}', '/admin/settings', '', '<i class="material-icons">insert_emoticon</i>', 0, 3, 1, NULL, '2017-11-25 18:26:38'),
(5, '{"ar":" الصفحات ","en":"Page"}', '/admin/page', '', '<i class="material-icons">find_in_page</i>', 0, 4, 1, NULL, '2017-11-25 18:26:38'),
(6, '{"ar":" سجل البينات ","en":"Logs"}', '/admin/log', '', '<i class="material-icons">info</i>', 0, 5, 1, NULL, '2017-11-25 18:26:38'),
(7, '{"ar":" الاحصائيات ","en":"Statistics"}', '/admin/links', '', '<i class="material-icons">insert_chart</i>', 0, 6, 1, NULL, '2017-11-25 18:26:38'),
(8, '{"ar":" اتصل بنا ","en":"Contact Us"}', '/admin/contact', '', '<i class="material-icons">perm_contact_calendar</i>', 0, 7, 1, NULL, '2017-11-25 18:26:38'),
(9, '{"ar":" المستخدمين ","en":"Users"}', '/admin/user', '', NULL, 3, 0, 1, NULL, '2017-11-25 18:26:38'),
(10, '{"ar":" جروبات الاعضاء ","en":"Groups"}', '/admin/group', '', NULL, 3, 1, 1, NULL, '2017-11-25 18:26:38'),
(11, '{"ar":" قوانين الاستخدام ","en":"Roles"}', '/admin/role', '', NULL, 3, 2, 1, NULL, '2017-11-25 18:26:38'),
(12, '{"ar":" التصاريح ","en":"Permissions"}', '/admin/permission', '', NULL, 3, 3, 1, NULL, '2017-11-25 18:26:38'),
(13, '{"ar":" ايقونات الموقع ","en":"Icons"}', '/admin/icons', '', NULL, 4, 0, 1, NULL, '2017-11-25 18:26:38'),
(14, '{"ar":"  التوثيق ","en":"Docs"}', '/admin/docs', '', NULL, 4, 1, 1, NULL, '2017-11-25 18:26:38'),
(15, '{"ar":" اعدادت الموقع ","en":"Settings"}', '/admin/setting', '', NULL, 4, 2, 1, NULL, '2017-11-25 18:26:38'),
(16, '{"ar":" القوائم ","en":"Menu"}', '/admin/menu', '', NULL, 4, 3, 1, NULL, '2017-11-25 18:26:38'),
(17, '{"ar":" لارافلات ","en":"laraFalt"}', 'https://laraflat.com/', 'blank', NULL, 0, 1, 2, NULL, NULL),
(18, '{"ar":" خدمات ويب ","en":"5dmat-web"}', 'https://5dmat-web.com/', 'blank', NULL, 0, 2, 2, NULL, NULL),
(19, '{"ar":" ستريم لاب ","en":"StreamLab"}', 'https://streamlab.io/', 'blank', NULL, 0, 3, 2, NULL, NULL),
(20, '{"ar":" تطوير  ","en":"Develop"}', '#', '', '<i class="material-icons">settings</i>', 0, 10, 1, NULL, '2017-11-25 18:26:38'),
(21, '{"ar":" الاوامر ","en":"Commands"}', '/admin/commands', '', NULL, 20, 0, 1, NULL, '2017-11-25 18:26:38'),
(22, '{"ar":"  العلاقات ","en":"Relation"}', '/admin/relation', '', NULL, 20, 1, 1, NULL, '2017-11-25 18:26:38'),
(23, '{"ar":" الترجمة  ","en":" Translation "}', '/admin/translation', '', NULL, 20, 2, 1, NULL, '2017-11-25 18:26:38'),
(24, '{"ar":"  تخصيص التصريحات  ","en":" Custom Permissions "}', '/admin/custom-permissions', '', NULL, 20, 3, 1, NULL, '2017-11-25 18:26:38'),
(25, '{"ar":" اوامر لارافيل  ","en":" Laravel Commands  "}', 'admin/laravel/commands', '', NULL, 20, 4, 1, NULL, '2017-11-25 18:26:38'),
(26, '{"ar":"  التحكم في قواعد البينات  ","en":" DataBase Manager  "}', '/adminer.php', 'blank', NULL, 20, 5, 1, NULL, '2017-11-25 18:26:38'),
(27, '{"en":"Brand","ar":"Brand"}', '/admin/brand', 'self', NULL, 60, 0, 1, '2017-11-25 15:23:50', '2017-11-25 18:26:54'),
(28, '{"en":"Brand","ar":"Brand"}', 'brand', '', '<i class="fa fa-plus-square-o" aria-hidden="true"></i> ', 0, 28, 3, '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(29, '{"en":"Maincat","ar":"Maincat"}', '/admin/maincat', 'self', NULL, 60, 1, 1, '2017-11-25 15:28:10', '2017-11-25 18:26:59'),
(30, '{"en":"Maincat","ar":"Maincat"}', 'maincat', '', '<i class="fa fa-plus-square-o" aria-hidden="true"></i> ', 0, 30, 3, '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(51, '{"en":"Car","ar":"Car"}', '/admin/car', 'self', NULL, 60, 3, 1, '2017-11-25 16:01:10', '2017-11-25 18:27:10'),
(52, '{"en":"Car","ar":"Car"}', 'car', '', '<i class="fa fa-plus-square-o" aria-hidden="true"></i> ', 0, 32, 3, '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(53, '{"en":"Accessories","ar":"Accessories"}', '/admin/accessories', 'self', NULL, 60, 2, 1, '2017-11-25 16:26:39', '2017-11-25 18:27:05'),
(54, '{"en":"Accessories","ar":"Accessories"}', 'accessories', '', '<i class="fa fa-plus-square-o" aria-hidden="true"></i> ', 0, 34, 3, '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(55, '{"en":"Country","ar":"Country"}', '/admin/country', 'self', NULL, 59, 0, 1, '2017-11-25 18:04:33', '2017-11-25 18:26:38'),
(56, '{"en":"Country","ar":"Country"}', 'country', '', '<i class="fa fa-plus-square-o" aria-hidden="true"></i> ', 0, 36, 3, '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(57, '{"en":"Regoin","ar":"Regoin"}', '/admin/regoin', 'self', NULL, 59, 1, 1, '2017-11-25 18:05:02', '2017-11-25 18:26:38'),
(58, '{"en":"Regoin","ar":"Regoin"}', 'regoin', '', '<i class="fa fa-plus-square-o" aria-hidden="true"></i> ', 0, 38, 3, '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(59, '{"en":"Coutnry","ar":"الدول"}', '#', 'blank', '<i class="material-icons">flag</i>', 0, 9, 1, '2017-11-25 18:23:53', '2017-11-25 18:28:32'),
(60, '{"en":"Car","ar":"السيارات"}', '#', 'self', '<i class="material-icons">directions_car</i>', 0, 8, 1, '2017-11-25 18:26:13', '2017-11-25 18:28:03'),
(61, '{"en":"Slider","ar":"Slider"}', '/admin/slider', '', '<i class="material-icons">control_point</i>', 0, 41, 1, '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(62, '{"en":"Slider","ar":"Slider"}', 'slider', '', '<i class="fa fa-plus-square-o" aria-hidden="true"></i> ', 0, 42, 3, '2017-11-25 21:51:15', '2017-11-25 21:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `url`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'http://127.0.0.1:8000/en', 'Un0P9d', '2017-11-25 15:15:56', '2017-11-25 15:15:56'),
(2, 'http://127.0.0.1:8000/ar', 'NDJWxD', '2017-11-25 15:25:28', '2017-11-25 15:25:28'),
(3, 'http://127.0.0.1:8000/ar/brand', 'HZNcIm', '2017-11-25 15:25:31', '2017-11-25 15:25:31'),
(4, 'http://127.0.0.1:8000/ar/brand/item', '30j16t', '2017-11-25 15:25:41', '2017-11-25 15:25:41'),
(5, 'http://127.0.0.1:8000/en/brand', 'lqFIv5', '2017-11-25 15:26:46', '2017-11-25 15:26:46'),
(6, 'http://127.0.0.1:8000/en/maincat', 'tfeqCN', '2017-11-25 15:29:37', '2017-11-25 15:29:37'),
(7, 'http://127.0.0.1:8000/en/brand/1/view', 'lYhrDk', '2017-11-25 15:35:46', '2017-11-25 15:35:46'),
(8, 'http://127.0.0.1:8000/en/maincat/2/view', 'juXXXU', '2017-11-25 15:35:55', '2017-11-25 15:35:55'),
(9, 'http://127.0.0.1:8000/en/car', '2E7Cqn', '2017-11-25 16:04:02', '2017-11-25 16:04:02'),
(10, 'http://127.0.0.1:8000/en/car/1/view', 'kK19c2', '2017-11-25 16:04:04', '2017-11-25 16:04:04'),
(11, 'http://127.0.0.1:8000/en/car/2/view', 'wFblgM', '2017-11-25 16:04:10', '2017-11-25 16:04:10'),
(12, 'http://127.0.0.1:8000/en/car/item/1', 'QVoi4X', '2017-11-25 16:12:37', '2017-11-25 16:12:37'),
(13, 'http://127.0.0.1:8000/en/car/item', 'sd0DFp', '2017-11-25 16:15:03', '2017-11-25 16:15:03'),
(14, 'http://127.0.0.1:8000/en/car/3/view', 'oypKdS', '2017-11-25 16:30:47', '2017-11-25 16:30:47'),
(15, 'http://127.0.0.1:8000/ar/car', 'dy1sTk', '2017-11-25 18:01:59', '2017-11-25 18:01:59'),
(16, 'http://127.0.0.1:8000/ar/car/3/view', 'nXwflV', '2017-11-25 18:02:02', '2017-11-25 18:02:02'),
(17, 'http://127.0.0.1:8000/ar/country', 'dgcQtH', '2017-11-25 18:09:48', '2017-11-25 18:09:48'),
(18, 'http://127.0.0.1:8000/ar/country/1/view', 'PkSTvm', '2017-11-25 18:09:49', '2017-11-25 18:09:49'),
(19, 'http://127.0.0.1:8000/ar/regoin', 'cTs2dM', '2017-11-25 18:09:56', '2017-11-25 18:09:56'),
(20, 'http://127.0.0.1:8000/ar/regoin/1/view', 'cI95Re', '2017-11-25 18:09:57', '2017-11-25 18:09:57'),
(21, 'http://127.0.0.1:8000/en/regoin', '511C9g', '2017-11-25 18:40:39', '2017-11-25 18:40:39'),
(22, 'http://127.0.0.1:8000/en/country', 'tFTctg', '2017-11-25 18:40:53', '2017-11-25 18:40:53'),
(23, 'http://127.0.0.1:8000/en/contact', 'ah1nnA', '2017-11-25 19:29:12', '2017-11-25 19:29:12'),
(24, 'http://127.0.0.1:8000/en/maincat/item/2', 'ReQNff', '2017-11-25 19:29:41', '2017-11-25 19:29:41'),
(25, 'http://127.0.0.1:8000/en/page/about_us', 'nlN45a', '2017-11-25 19:35:09', '2017-11-25 19:35:09'),
(26, 'http://127.0.0.1:8000/ar/car/item', '7DgkAX', '2017-11-25 19:42:02', '2017-11-25 19:42:02'),
(27, 'http://127.0.0.1:8000/en/car/item/2', 'qp8zHH', '2017-11-25 21:04:55', '2017-11-25 21:04:55'),
(28, 'http://127.0.0.1:8000/en/country/item', 'DQmSIi', '2017-11-25 21:08:42', '2017-11-25 21:08:42'),
(29, 'http://127.0.0.1:8000/en/login', 'Lp0u3a', '2017-11-25 21:10:41', '2017-11-25 21:10:41'),
(30, 'http://127.0.0.1:8000/ar/contact', '5zdQy3', '2017-11-25 22:15:54', '2017-11-25 22:15:54'),
(31, 'http://127.0.0.1:8000/ar/car/2/view', 'Hv9io7', '2017-11-25 22:16:13', '2017-11-25 22:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `link_views`
--

CREATE TABLE `link_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `link_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os_version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `link_views`
--

INSERT INTO `link_views` (`id`, `link_id`, `language`, `browser`, `browser_version`, `os`, `os_version`, `ip`, `created_at`, `updated_at`) VALUES
(1, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:15:57', '2017-11-25 15:15:57'),
(2, '2', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:25:29', '2017-11-25 15:25:29'),
(3, '3', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:25:32', '2017-11-25 15:25:32'),
(4, '4', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:25:41', '2017-11-25 15:25:41'),
(5, '4', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:26:35', '2017-11-25 15:26:35'),
(6, '4', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:26:42', '2017-11-25 15:26:42'),
(7, '3', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:26:44', '2017-11-25 15:26:44'),
(8, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:26:46', '2017-11-25 15:26:46'),
(9, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:29:33', '2017-11-25 15:29:33'),
(10, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:29:37', '2017-11-25 15:29:37'),
(11, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:35:44', '2017-11-25 15:35:44'),
(12, '7', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:35:47', '2017-11-25 15:35:47'),
(13, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:35:54', '2017-11-25 15:35:54'),
(14, '8', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 15:35:55', '2017-11-25 15:35:55'),
(15, '8', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:04:00', '2017-11-25 16:04:00'),
(16, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:04:03', '2017-11-25 16:04:03'),
(17, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:04:05', '2017-11-25 16:04:05'),
(18, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:04:09', '2017-11-25 16:04:09'),
(19, '11', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:04:11', '2017-11-25 16:04:11'),
(20, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:07:06', '2017-11-25 16:07:06'),
(21, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:12:23', '2017-11-25 16:12:23'),
(22, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:12:26', '2017-11-25 16:12:26'),
(23, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:12:35', '2017-11-25 16:12:35'),
(24, '12', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:12:38', '2017-11-25 16:12:38'),
(25, '12', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:13:45', '2017-11-25 16:13:45'),
(26, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:14:59', '2017-11-25 16:14:59'),
(27, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:15:03', '2017-11-25 16:15:03'),
(28, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:15:16', '2017-11-25 16:15:16'),
(29, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:16:15', '2017-11-25 16:16:15'),
(30, '11', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:16:20', '2017-11-25 16:16:20'),
(31, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:16:24', '2017-11-25 16:16:24'),
(32, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:16:25', '2017-11-25 16:16:25'),
(33, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:18:12', '2017-11-25 16:18:12'),
(34, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:21:15', '2017-11-25 16:21:15'),
(35, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:21:18', '2017-11-25 16:21:18'),
(36, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:22:31', '2017-11-25 16:22:31'),
(37, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:22:34', '2017-11-25 16:22:34'),
(38, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:22:56', '2017-11-25 16:22:56'),
(39, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:22:59', '2017-11-25 16:22:59'),
(40, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:24:23', '2017-11-25 16:24:23'),
(41, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:30:03', '2017-11-25 16:30:03'),
(42, '11', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:30:07', '2017-11-25 16:30:07'),
(43, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:30:26', '2017-11-25 16:30:26'),
(44, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:30:27', '2017-11-25 16:30:27'),
(45, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:30:43', '2017-11-25 16:30:43'),
(46, '14', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:30:47', '2017-11-25 16:30:47'),
(47, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 16:32:37', '2017-11-25 16:32:37'),
(48, '2', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:01:57', '2017-11-25 18:01:57'),
(49, '15', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:02:00', '2017-11-25 18:02:00'),
(50, '16', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:02:03', '2017-11-25 18:02:03'),
(51, '16', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:02:28', '2017-11-25 18:02:28'),
(52, '16', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:09:46', '2017-11-25 18:09:46'),
(53, '17', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:09:48', '2017-11-25 18:09:48'),
(54, '18', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:09:50', '2017-11-25 18:09:50'),
(55, '17', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:09:51', '2017-11-25 18:09:51'),
(56, '19', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:09:56', '2017-11-25 18:09:56'),
(57, '20', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:09:57', '2017-11-25 18:09:57'),
(58, '19', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:10:05', '2017-11-25 18:10:05'),
(59, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:36:34', '2017-11-25 18:36:34'),
(60, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:36:38', '2017-11-25 18:36:38'),
(61, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:36:40', '2017-11-25 18:36:40'),
(62, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:36:52', '2017-11-25 18:36:52'),
(63, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:40:30', '2017-11-25 18:40:30'),
(64, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:40:35', '2017-11-25 18:40:35'),
(65, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:40:37', '2017-11-25 18:40:37'),
(66, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:40:40', '2017-11-25 18:40:40'),
(67, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:40:48', '2017-11-25 18:40:48'),
(68, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:40:51', '2017-11-25 18:40:51'),
(69, '22', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:40:53', '2017-11-25 18:40:53'),
(70, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:40:55', '2017-11-25 18:40:55'),
(71, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:40:56', '2017-11-25 18:40:56'),
(72, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:41:03', '2017-11-25 18:41:03'),
(73, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:50:27', '2017-11-25 18:50:27'),
(74, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:51:26', '2017-11-25 18:51:26'),
(75, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:52:45', '2017-11-25 18:52:45'),
(76, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:53:22', '2017-11-25 18:53:22'),
(77, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:53:56', '2017-11-25 18:53:56'),
(78, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:54:40', '2017-11-25 18:54:40'),
(79, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:55:02', '2017-11-25 18:55:02'),
(80, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:55:20', '2017-11-25 18:55:20'),
(81, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 18:55:35', '2017-11-25 18:55:35'),
(82, '23', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:29:13', '2017-11-25 19:29:13'),
(83, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:29:28', '2017-11-25 19:29:28'),
(84, '24', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:29:42', '2017-11-25 19:29:42'),
(85, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:33:02', '2017-11-25 19:33:02'),
(86, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:33:45', '2017-11-25 19:33:45'),
(87, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:34:16', '2017-11-25 19:34:16'),
(88, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:35:05', '2017-11-25 19:35:05'),
(89, '25', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:35:09', '2017-11-25 19:35:09'),
(90, '23', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:35:11', '2017-11-25 19:35:11'),
(91, '23', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:36:32', '2017-11-25 19:36:32'),
(92, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:36:35', '2017-11-25 19:36:35'),
(93, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:37:07', '2017-11-25 19:37:07'),
(94, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:37:09', '2017-11-25 19:37:09'),
(95, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:37:13', '2017-11-25 19:37:13'),
(96, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:37:28', '2017-11-25 19:37:28'),
(97, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:38:03', '2017-11-25 19:38:03'),
(98, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:38:10', '2017-11-25 19:38:10'),
(99, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:38:29', '2017-11-25 19:38:29'),
(100, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:38:46', '2017-11-25 19:38:46'),
(101, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:39:05', '2017-11-25 19:39:05'),
(102, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:41:39', '2017-11-25 19:41:39'),
(103, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:42:01', '2017-11-25 19:42:01'),
(104, '26', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:42:03', '2017-11-25 19:42:03'),
(105, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:42:11', '2017-11-25 19:42:11'),
(106, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:42:23', '2017-11-25 19:42:23'),
(107, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:43:40', '2017-11-25 19:43:40'),
(108, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:43:50', '2017-11-25 19:43:50'),
(109, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:56:46', '2017-11-25 19:56:46'),
(110, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:56:50', '2017-11-25 19:56:50'),
(111, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:57:32', '2017-11-25 19:57:32'),
(112, '25', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:57:34', '2017-11-25 19:57:34'),
(113, '23', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:57:36', '2017-11-25 19:57:36'),
(114, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:58:05', '2017-11-25 19:58:05'),
(115, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 19:58:20', '2017-11-25 19:58:20'),
(116, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:14:03', '2017-11-25 20:14:03'),
(117, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:14:41', '2017-11-25 20:14:41'),
(118, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:15:22', '2017-11-25 20:15:22'),
(119, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:15:25', '2017-11-25 20:15:25'),
(120, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:15:41', '2017-11-25 20:15:41'),
(121, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:16:50', '2017-11-25 20:16:50'),
(122, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:16:55', '2017-11-25 20:16:55'),
(123, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:17:06', '2017-11-25 20:17:06'),
(124, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:17:08', '2017-11-25 20:17:08'),
(125, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:17:12', '2017-11-25 20:17:12'),
(126, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:20:12', '2017-11-25 20:20:12'),
(127, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:20:56', '2017-11-25 20:20:56'),
(128, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:23:35', '2017-11-25 20:23:35'),
(129, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:23:40', '2017-11-25 20:23:40'),
(130, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:24:27', '2017-11-25 20:24:27'),
(131, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:24:30', '2017-11-25 20:24:30'),
(132, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:24:31', '2017-11-25 20:24:31'),
(133, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:24:35', '2017-11-25 20:24:35'),
(134, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:24:39', '2017-11-25 20:24:39'),
(135, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:24:58', '2017-11-25 20:24:58'),
(136, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:25:00', '2017-11-25 20:25:00'),
(137, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:25:12', '2017-11-25 20:25:12'),
(138, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:25:16', '2017-11-25 20:25:16'),
(139, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:25:21', '2017-11-25 20:25:21'),
(140, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:26:06', '2017-11-25 20:26:06'),
(141, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:26:20', '2017-11-25 20:26:20'),
(142, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:26:24', '2017-11-25 20:26:24'),
(143, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:26:26', '2017-11-25 20:26:26'),
(144, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:26:30', '2017-11-25 20:26:30'),
(145, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:27:05', '2017-11-25 20:27:05'),
(146, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:27:08', '2017-11-25 20:27:08'),
(147, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:27:23', '2017-11-25 20:27:23'),
(148, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:27:28', '2017-11-25 20:27:28'),
(149, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:27:30', '2017-11-25 20:27:30'),
(150, '22', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:27:35', '2017-11-25 20:27:35'),
(151, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:27:48', '2017-11-25 20:27:48'),
(152, '21', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:29:15', '2017-11-25 20:29:15'),
(153, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:29:16', '2017-11-25 20:29:16'),
(154, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:29:19', '2017-11-25 20:29:19'),
(155, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:29:22', '2017-11-25 20:29:22'),
(156, '22', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:29:29', '2017-11-25 20:29:29'),
(157, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:29:31', '2017-11-25 20:29:31'),
(158, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:46:47', '2017-11-25 20:46:47'),
(159, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:46:49', '2017-11-25 20:46:49'),
(160, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:46:52', '2017-11-25 20:46:52'),
(161, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:47:34', '2017-11-25 20:47:34'),
(162, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:52:40', '2017-11-25 20:52:40'),
(163, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:52:46', '2017-11-25 20:52:46'),
(164, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:54:15', '2017-11-25 20:54:15'),
(165, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:54:46', '2017-11-25 20:54:46'),
(166, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:55:04', '2017-11-25 20:55:04'),
(167, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:55:27', '2017-11-25 20:55:27'),
(168, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:55:32', '2017-11-25 20:55:32'),
(169, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:56:31', '2017-11-25 20:56:31'),
(170, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:56:56', '2017-11-25 20:56:56'),
(171, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 20:57:38', '2017-11-25 20:57:38'),
(172, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:01:35', '2017-11-25 21:01:35'),
(173, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:01:44', '2017-11-25 21:01:44'),
(174, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:01:49', '2017-11-25 21:01:49'),
(175, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:01:54', '2017-11-25 21:01:54'),
(176, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:01:58', '2017-11-25 21:01:58'),
(177, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:02:05', '2017-11-25 21:02:05'),
(178, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:02:57', '2017-11-25 21:02:57'),
(179, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:03:32', '2017-11-25 21:03:32'),
(180, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:03:36', '2017-11-25 21:03:36'),
(181, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:03:41', '2017-11-25 21:03:41'),
(182, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:04:44', '2017-11-25 21:04:44'),
(183, '11', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:04:48', '2017-11-25 21:04:48'),
(184, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:04:51', '2017-11-25 21:04:51'),
(185, '12', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:04:52', '2017-11-25 21:04:52'),
(186, '27', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:04:55', '2017-11-25 21:04:55'),
(187, '12', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:07:28', '2017-11-25 21:07:28'),
(188, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:07:32', '2017-11-25 21:07:32'),
(189, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:07:33', '2017-11-25 21:07:33'),
(190, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:07:38', '2017-11-25 21:07:38'),
(191, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:07:43', '2017-11-25 21:07:43'),
(192, '11', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:07:47', '2017-11-25 21:07:47'),
(193, '11', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:08:12', '2017-11-25 21:08:12'),
(194, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:08:16', '2017-11-25 21:08:16'),
(195, '28', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:08:42', '2017-11-25 21:08:42'),
(196, '28', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:10:08', '2017-11-25 21:10:08'),
(197, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:10:39', '2017-11-25 21:10:39'),
(198, '29', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:10:41', '2017-11-25 21:10:41'),
(199, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:10:54', '2017-11-25 21:10:54'),
(200, '28', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:10:59', '2017-11-25 21:10:59'),
(201, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:11:06', '2017-11-25 21:11:06'),
(202, '29', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:11:11', '2017-11-25 21:11:11'),
(203, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:11:45', '2017-11-25 21:11:45'),
(204, '28', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:11:56', '2017-11-25 21:11:56'),
(205, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:12:17', '2017-11-25 21:12:17'),
(206, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:27:56', '2017-11-25 21:27:56'),
(207, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:28:11', '2017-11-25 21:28:11'),
(208, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:28:46', '2017-11-25 21:28:46'),
(209, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:28:48', '2017-11-25 21:28:48'),
(210, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:28:50', '2017-11-25 21:28:50'),
(211, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:28:55', '2017-11-25 21:28:55'),
(212, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:29:29', '2017-11-25 21:29:29'),
(213, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:29:31', '2017-11-25 21:29:31'),
(214, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:30:29', '2017-11-25 21:30:29'),
(215, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:30:58', '2017-11-25 21:30:58'),
(216, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:31:16', '2017-11-25 21:31:16'),
(217, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:31:18', '2017-11-25 21:31:18'),
(218, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:31:21', '2017-11-25 21:31:21'),
(219, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:31:54', '2017-11-25 21:31:54'),
(220, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:33:07', '2017-11-25 21:33:07'),
(221, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:33:59', '2017-11-25 21:33:59'),
(222, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:34:45', '2017-11-25 21:34:45'),
(223, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:36:22', '2017-11-25 21:36:22'),
(224, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:36:24', '2017-11-25 21:36:24'),
(225, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:36:25', '2017-11-25 21:36:25'),
(226, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:36:27', '2017-11-25 21:36:27'),
(227, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:36:29', '2017-11-25 21:36:29'),
(228, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:36:44', '2017-11-25 21:36:44'),
(229, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:37:01', '2017-11-25 21:37:01'),
(230, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:37:17', '2017-11-25 21:37:17'),
(231, '28', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:37:34', '2017-11-25 21:37:34'),
(232, '28', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:41:03', '2017-11-25 21:41:03'),
(233, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:41:12', '2017-11-25 21:41:12'),
(234, '29', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:41:14', '2017-11-25 21:41:14'),
(235, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:41:22', '2017-11-25 21:41:22'),
(236, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:41:35', '2017-11-25 21:41:35'),
(237, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:41:41', '2017-11-25 21:41:41'),
(238, '29', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:41:44', '2017-11-25 21:41:44'),
(239, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:42:43', '2017-11-25 21:42:43'),
(240, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:43:20', '2017-11-25 21:43:20'),
(241, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:31', '2017-11-25 21:44:31'),
(242, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:34', '2017-11-25 21:44:34'),
(243, '29', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:36', '2017-11-25 21:44:36'),
(244, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:43', '2017-11-25 21:44:43'),
(245, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:44', '2017-11-25 21:44:44'),
(246, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:46', '2017-11-25 21:44:46'),
(247, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:48', '2017-11-25 21:44:48'),
(248, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:49', '2017-11-25 21:44:49'),
(249, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:51', '2017-11-25 21:44:51'),
(250, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:53', '2017-11-25 21:44:53'),
(251, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:55', '2017-11-25 21:44:55'),
(252, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:44:56', '2017-11-25 21:44:56'),
(253, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:45:02', '2017-11-25 21:45:02'),
(254, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:45:57', '2017-11-25 21:45:57'),
(255, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:45:58', '2017-11-25 21:45:58'),
(256, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:46:00', '2017-11-25 21:46:00'),
(257, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:46:26', '2017-11-25 21:46:26'),
(258, '13', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:46:29', '2017-11-25 21:46:29'),
(259, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:46:35', '2017-11-25 21:46:35'),
(260, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:47:01', '2017-11-25 21:47:01'),
(261, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:48:41', '2017-11-25 21:48:41'),
(262, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:48:57', '2017-11-25 21:48:57'),
(263, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:49:49', '2017-11-25 21:49:49'),
(264, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:50:08', '2017-11-25 21:50:08'),
(265, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:50:13', '2017-11-25 21:50:13'),
(266, '29', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:50:16', '2017-11-25 21:50:16'),
(267, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:51:28', '2017-11-25 21:51:28'),
(268, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:54:38', '2017-11-25 21:54:38'),
(269, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:55:01', '2017-11-25 21:55:01'),
(270, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:55:16', '2017-11-25 21:55:16'),
(271, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:57:26', '2017-11-25 21:57:26'),
(272, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:58:10', '2017-11-25 21:58:10'),
(273, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 21:59:25', '2017-11-25 21:59:25'),
(274, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:02:08', '2017-11-25 22:02:08'),
(275, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:02:10', '2017-11-25 22:02:10'),
(276, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:02:27', '2017-11-25 22:02:27'),
(277, '10', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:02:33', '2017-11-25 22:02:33'),
(278, '11', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:02:37', '2017-11-25 22:02:37'),
(279, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:02:58', '2017-11-25 22:02:58'),
(280, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:03:27', '2017-11-25 22:03:27'),
(281, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:05:35', '2017-11-25 22:05:35'),
(282, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:06:24', '2017-11-25 22:06:24'),
(283, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:06:32', '2017-11-25 22:06:32'),
(284, '6', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:06:34', '2017-11-25 22:06:34'),
(285, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:06:39', '2017-11-25 22:06:39'),
(286, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:07:33', '2017-11-25 22:07:33'),
(287, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:07:49', '2017-11-25 22:07:49'),
(288, '5', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:15:35', '2017-11-25 22:15:35'),
(289, '9', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:15:41', '2017-11-25 22:15:41'),
(290, '12', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:15:45', '2017-11-25 22:15:45'),
(291, '25', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:15:49', '2017-11-25 22:15:49'),
(292, '23', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:15:50', '2017-11-25 22:15:50'),
(293, '23', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:15:53', '2017-11-25 22:15:53'),
(294, '30', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:15:54', '2017-11-25 22:15:54'),
(295, '2', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:16:09', '2017-11-25 22:16:09'),
(296, '31', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:16:13', '2017-11-25 22:16:13'),
(297, '2', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:16:16', '2017-11-25 22:16:16'),
(298, '2', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:16:18', '2017-11-25 22:16:18'),
(299, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:16:20', '2017-11-25 22:16:20'),
(300, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:16:24', '2017-11-25 22:16:24'),
(301, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:17:03', '2017-11-25 22:17:03'),
(302, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:17:08', '2017-11-25 22:17:08'),
(303, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:17:11', '2017-11-25 22:17:11'),
(304, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:17:13', '2017-11-25 22:17:13'),
(305, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:17:34', '2017-11-25 22:17:34'),
(306, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:17:36', '2017-11-25 22:17:36'),
(307, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:17:38', '2017-11-25 22:17:38'),
(308, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:17:55', '2017-11-25 22:17:55'),
(309, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:17:57', '2017-11-25 22:17:57'),
(310, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:19:28', '2017-11-25 22:19:28'),
(311, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:19:30', '2017-11-25 22:19:30'),
(312, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:20:21', '2017-11-25 22:20:21'),
(313, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:20:23', '2017-11-25 22:20:23'),
(314, '1', 'en', 'Chrome', '62.0.3202.94', 'OS X', '10.12.6', '127.0.0.1', '2017-11-25 22:20:25', '2017-11-25 22:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `action`, `model`, `status`, `messages`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Visit Create Page', 'brand', 'Success', '', 1, '2017-11-25 15:24:44', '2017-11-25 15:24:44'),
(2, 'Create', 'brand', 'Success', '{"New id":[1]}', 1, '2017-11-25 15:25:06', '2017-11-25 15:25:06'),
(3, 'Visit Edit Page', 'brand', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 15:25:10', '2017-11-25 15:25:10'),
(4, 'Visit Edit Page', 'brand', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 15:25:15', '2017-11-25 15:25:15'),
(5, 'Visit Create Page', 'brand', 'Success', '', 1, '2017-11-25 15:25:41', '2017-11-25 15:25:41'),
(6, 'Visit Create Page', 'brand', 'Success', '', 1, '2017-11-25 15:25:41', '2017-11-25 15:25:41'),
(7, 'Visit Create Page', 'brand', 'Success', '', 1, '2017-11-25 15:26:34', '2017-11-25 15:26:34'),
(8, 'Visit Create Page', 'brand', 'Success', '', 1, '2017-11-25 15:26:35', '2017-11-25 15:26:35'),
(9, 'Visit Create Page', 'brand', 'Success', '', 1, '2017-11-25 15:26:41', '2017-11-25 15:26:41'),
(10, 'Visit Create Page', 'brand', 'Success', '', 1, '2017-11-25 15:26:42', '2017-11-25 15:26:42'),
(11, 'Visit Create Page', 'maincat', 'Success', '', 1, '2017-11-25 15:28:57', '2017-11-25 15:28:57'),
(12, 'Create', 'maincat', 'Success', '{"New id":[1]}', 1, '2017-11-25 15:29:17', '2017-11-25 15:29:17'),
(13, 'Visit Edit Page', 'maincat', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 15:29:22', '2017-11-25 15:29:22'),
(14, 'Visit Edit Page', 'maincat', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 15:29:28', '2017-11-25 15:29:28'),
(15, 'Visit Create Page', 'maincat', 'Success', '', 1, '2017-11-25 15:33:32', '2017-11-25 15:33:32'),
(16, 'Visit Create Page', 'brand', 'Success', '', 1, '2017-11-25 15:33:45', '2017-11-25 15:33:45'),
(17, 'Create', 'brand', 'Success', '{"New id":[2]}', 1, '2017-11-25 15:33:56', '2017-11-25 15:33:56'),
(18, 'Visit Create Page', 'brand', 'Success', '', 1, '2017-11-25 15:34:00', '2017-11-25 15:34:00'),
(19, 'Create', 'brand', 'Success', '{"New id":[3]}', 1, '2017-11-25 15:34:21', '2017-11-25 15:34:21'),
(20, 'Delete', 'maincat', 'Success', '{"Updated id":["1"]}', 1, '2017-11-25 15:34:33', '2017-11-25 15:34:33'),
(21, 'Visit Create Page', 'maincat', 'Success', '', 1, '2017-11-25 15:34:36', '2017-11-25 15:34:36'),
(22, 'Create', 'maincat', 'Success', '{"New id":[2]}', 1, '2017-11-25 15:35:06', '2017-11-25 15:35:06'),
(23, 'Visit Edit Page', 'maincat', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 15:35:15', '2017-11-25 15:35:15'),
(24, 'Visit Edit Page', 'maincat', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 15:35:23', '2017-11-25 15:35:23'),
(25, 'Visit Edit Page', 'brand', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 15:35:32', '2017-11-25 15:35:32'),
(26, 'Visit Edit Page', 'brand', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 15:35:46', '2017-11-25 15:35:46'),
(27, 'Visit Edit Page', 'brand', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 15:35:47', '2017-11-25 15:35:47'),
(28, 'Visit Edit Page', 'maincat', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 15:35:55', '2017-11-25 15:35:55'),
(29, 'Visit Edit Page', 'maincat', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 15:35:55', '2017-11-25 15:35:55'),
(30, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 15:39:26', '2017-11-25 15:39:26'),
(31, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 15:39:56', '2017-11-25 15:39:56'),
(32, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 15:45:49', '2017-11-25 15:45:49'),
(33, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 15:45:57', '2017-11-25 15:45:57'),
(34, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 15:45:59', '2017-11-25 15:45:59'),
(35, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 15:46:21', '2017-11-25 15:46:21'),
(36, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 15:54:34', '2017-11-25 15:54:34'),
(37, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 15:54:56', '2017-11-25 15:54:56'),
(38, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 15:56:33', '2017-11-25 15:56:33'),
(39, 'Create', 'car', 'Success', '{"New id":[1]}', 1, '2017-11-25 15:56:35', '2017-11-25 15:56:35'),
(40, 'Delete', 'car', 'Success', '{"Updated id":["1"]}', 1, '2017-11-25 15:56:38', '2017-11-25 15:56:38'),
(41, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:02:27', '2017-11-25 16:02:27'),
(42, 'Create', 'car', 'Success', '{"New id":[1]}', 1, '2017-11-25 16:02:50', '2017-11-25 16:02:50'),
(43, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:02:54', '2017-11-25 16:02:54'),
(44, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:03:02', '2017-11-25 16:03:02'),
(45, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:03:21', '2017-11-25 16:03:21'),
(46, 'Create', 'car', 'Success', '{"New id":[2]}', 1, '2017-11-25 16:03:41', '2017-11-25 16:03:41'),
(47, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:03:45', '2017-11-25 16:03:45'),
(48, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:03:56', '2017-11-25 16:03:56'),
(49, 'Visit Edit Page', 'maincat', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:04:00', '2017-11-25 16:04:00'),
(50, 'Visit Edit Page', 'maincat', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:04:01', '2017-11-25 16:04:01'),
(51, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:04:04', '2017-11-25 16:04:04'),
(52, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:04:05', '2017-11-25 16:04:05'),
(53, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:04:10', '2017-11-25 16:04:10'),
(54, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:04:11', '2017-11-25 16:04:11'),
(55, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:11:51', '2017-11-25 16:11:51'),
(56, 'Create', 'car', 'Success', '{"New id":[1]}', 1, '2017-11-25 16:12:13', '2017-11-25 16:12:13'),
(57, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:12:17', '2017-11-25 16:12:17'),
(58, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:12:25', '2017-11-25 16:12:25'),
(59, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:12:26', '2017-11-25 16:12:26'),
(60, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:12:37', '2017-11-25 16:12:37'),
(61, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:12:38', '2017-11-25 16:12:38'),
(62, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:13:45', '2017-11-25 16:13:45'),
(63, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:13:46', '2017-11-25 16:13:46'),
(64, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:15:03', '2017-11-25 16:15:03'),
(65, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:15:04', '2017-11-25 16:15:04'),
(66, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:15:15', '2017-11-25 16:15:15'),
(67, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:15:16', '2017-11-25 16:15:16'),
(68, 'Create', 'car', 'Success', '{"New id":[2]}', 1, '2017-11-25 16:16:14', '2017-11-25 16:16:14'),
(69, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:16:20', '2017-11-25 16:16:20'),
(70, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:16:20', '2017-11-25 16:16:20'),
(71, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:16:25', '2017-11-25 16:16:25'),
(72, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:16:25', '2017-11-25 16:16:25'),
(73, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:16:34', '2017-11-25 16:16:34'),
(74, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:20:30', '2017-11-25 16:20:30'),
(75, 'Create', 'car', 'Success', '{"New id":[1]}', 1, '2017-11-25 16:20:59', '2017-11-25 16:20:59'),
(76, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:21:05', '2017-11-25 16:21:05'),
(77, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:21:17', '2017-11-25 16:21:17'),
(78, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:21:18', '2017-11-25 16:21:18'),
(79, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:22:11', '2017-11-25 16:22:11'),
(80, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:22:33', '2017-11-25 16:22:33'),
(81, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:22:34', '2017-11-25 16:22:34'),
(82, 'Create', 'car', 'Success', '{"New id":[1]}', 1, '2017-11-25 16:22:55', '2017-11-25 16:22:55'),
(83, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:22:59', '2017-11-25 16:22:59'),
(84, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:23:00', '2017-11-25 16:23:00'),
(85, 'Visit Create Page', 'accessories', 'Success', '', 1, '2017-11-25 16:26:46', '2017-11-25 16:26:46'),
(86, 'Visit Create Page', 'accessories', 'Success', '', 1, '2017-11-25 16:27:29', '2017-11-25 16:27:29'),
(87, 'Create', 'accessories', 'Success', '{"New id":[1]}', 1, '2017-11-25 16:27:50', '2017-11-25 16:27:50'),
(88, 'Visit Edit Page', 'accessories', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:27:54', '2017-11-25 16:27:54'),
(89, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:29:13', '2017-11-25 16:29:13'),
(90, 'Create', 'car', 'Success', '{"New id":[2]}', 1, '2017-11-25 16:29:44', '2017-11-25 16:29:44'),
(91, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:29:51', '2017-11-25 16:29:51'),
(92, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:29:55', '2017-11-25 16:29:55'),
(93, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:30:06', '2017-11-25 16:30:06'),
(94, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 16:30:07', '2017-11-25 16:30:07'),
(95, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:30:27', '2017-11-25 16:30:27'),
(96, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 16:30:27', '2017-11-25 16:30:27'),
(97, 'Create', 'car', 'Success', '{"New id":[3]}', 1, '2017-11-25 16:30:42', '2017-11-25 16:30:42'),
(98, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 16:30:47', '2017-11-25 16:30:47'),
(99, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 16:30:47', '2017-11-25 16:30:47'),
(100, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:38:48', '2017-11-25 16:38:48'),
(101, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:38:58', '2017-11-25 16:38:58'),
(102, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:39:20', '2017-11-25 16:39:20'),
(103, 'Update', 'car', 'Success', '{"Updated id":["1"]}', 1, '2017-11-25 16:43:32', '2017-11-25 16:43:32'),
(104, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:43:33', '2017-11-25 16:43:33'),
(105, 'Update', 'car', 'Success', '{"Updated id":["1"]}', 1, '2017-11-25 16:43:47', '2017-11-25 16:43:47'),
(106, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:43:47', '2017-11-25 16:43:47'),
(107, 'Update', 'car', 'Success', '{"Updated id":["1"]}', 1, '2017-11-25 16:44:51', '2017-11-25 16:44:51'),
(108, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 16:44:51', '2017-11-25 16:44:51'),
(109, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 17:50:19', '2017-11-25 17:50:19'),
(110, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 17:50:24', '2017-11-25 17:50:24'),
(111, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 17:50:29', '2017-11-25 17:50:29'),
(112, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 17:58:12', '2017-11-25 17:58:12'),
(113, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 17:58:18', '2017-11-25 17:58:18'),
(114, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 17:58:51', '2017-11-25 17:58:51'),
(115, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 17:58:54', '2017-11-25 17:58:54'),
(116, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 17:59:07', '2017-11-25 17:59:07'),
(117, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 17:59:59', '2017-11-25 17:59:59'),
(118, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:01:11', '2017-11-25 18:01:11'),
(119, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:01:22', '2017-11-25 18:01:22'),
(120, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:01:30', '2017-11-25 18:01:30'),
(121, 'Update', 'car', 'Success', '{"Updated id":["3"]}', 1, '2017-11-25 18:01:36', '2017-11-25 18:01:36'),
(122, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:01:37', '2017-11-25 18:01:37'),
(123, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:01:44', '2017-11-25 18:01:44'),
(124, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:02:02', '2017-11-25 18:02:02'),
(125, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:02:03', '2017-11-25 18:02:03'),
(126, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:02:27', '2017-11-25 18:02:27'),
(127, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:02:28', '2017-11-25 18:02:28'),
(128, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:03:41', '2017-11-25 18:03:41'),
(129, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 18:07:19', '2017-11-25 18:07:19'),
(130, 'Create', 'country', 'Success', '{"New id":[1]}', 1, '2017-11-25 18:07:28', '2017-11-25 18:07:28'),
(131, 'Visit Create Page', 'regoin', 'Success', '', 1, '2017-11-25 18:07:36', '2017-11-25 18:07:36'),
(132, 'Create', 'regoin', 'Success', '{"New id":[1]}', 1, '2017-11-25 18:07:48', '2017-11-25 18:07:48'),
(133, 'Visit Create Page', 'regoin', 'Success', '', 1, '2017-11-25 18:07:52', '2017-11-25 18:07:52'),
(134, 'Create', 'regoin', 'Success', '{"New id":[2]}', 1, '2017-11-25 18:08:06', '2017-11-25 18:08:06'),
(135, 'Visit Create Page', 'regoin', 'Success', '', 1, '2017-11-25 18:08:10', '2017-11-25 18:08:10'),
(136, 'Create', 'regoin', 'Success', '{"New id":[3]}', 1, '2017-11-25 18:08:22', '2017-11-25 18:08:22'),
(137, 'Visit Edit Page', 'regoin', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:08:29', '2017-11-25 18:08:29'),
(138, 'Visit Edit Page', 'country', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:08:36', '2017-11-25 18:08:36'),
(139, 'Visit Edit Page', 'country', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:08:48', '2017-11-25 18:08:48'),
(140, 'Visit Edit Page', 'regoin', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:08:55', '2017-11-25 18:08:55'),
(141, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:09:46', '2017-11-25 18:09:46'),
(142, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["3"]}', 1, '2017-11-25 18:09:47', '2017-11-25 18:09:47'),
(143, 'Visit Edit Page', 'country', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:09:49', '2017-11-25 18:09:49'),
(144, 'Visit Edit Page', 'country', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:09:50', '2017-11-25 18:09:50'),
(145, 'Visit Edit Page', 'regoin', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:09:57', '2017-11-25 18:09:57'),
(146, 'Visit Edit Page', 'regoin', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:09:58', '2017-11-25 18:09:58'),
(147, 'Visit Edit Page', 'menu', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:23:28', '2017-11-25 18:23:28'),
(148, 'Visit Edit Page', 'menu', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:23:53', '2017-11-25 18:23:53'),
(149, 'Visit Edit Page', 'menu', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:24:17', '2017-11-25 18:24:17'),
(150, 'Visit Edit Page', 'menu', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:25:16', '2017-11-25 18:25:16'),
(151, 'Visit Edit Page', 'menu', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:26:13', '2017-11-25 18:26:13'),
(152, 'Visit Edit Page', 'menu', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:26:40', '2017-11-25 18:26:40'),
(153, 'Visit Edit Page', 'menu', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:28:05', '2017-11-25 18:28:05'),
(154, 'Visit Edit Page', 'menu', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:28:34', '2017-11-25 18:28:34'),
(155, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 18:34:31', '2017-11-25 18:34:31'),
(156, 'Create', 'car', 'Success', '{"New id":[1]}', 1, '2017-11-25 18:35:00', '2017-11-25 18:35:00'),
(157, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 18:35:04', '2017-11-25 18:35:04'),
(158, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 18:36:04', '2017-11-25 18:36:04'),
(159, 'Create', 'car', 'Success', '{"New id":[1]}', 1, '2017-11-25 18:36:27', '2017-11-25 18:36:27'),
(160, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 18:36:40', '2017-11-25 18:36:40'),
(161, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 18:36:40', '2017-11-25 18:36:40'),
(162, 'Visit Edit Page', 'maincat', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 19:29:41', '2017-11-25 19:29:41'),
(163, 'Visit Edit Page', 'maincat', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 19:29:42', '2017-11-25 19:29:42'),
(164, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:37:27', '2017-11-25 19:37:27'),
(165, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:37:28', '2017-11-25 19:37:28'),
(166, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:38:02', '2017-11-25 19:38:02'),
(167, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:38:05', '2017-11-25 19:38:05'),
(168, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:38:10', '2017-11-25 19:38:10'),
(169, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:38:11', '2017-11-25 19:38:11'),
(170, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:38:28', '2017-11-25 19:38:28'),
(171, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:38:29', '2017-11-25 19:38:29'),
(172, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:38:45', '2017-11-25 19:38:45'),
(173, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:38:47', '2017-11-25 19:38:47'),
(174, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:39:04', '2017-11-25 19:39:04'),
(175, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:39:05', '2017-11-25 19:39:05'),
(176, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:41:38', '2017-11-25 19:41:38'),
(177, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:41:39', '2017-11-25 19:41:39'),
(178, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:42:00', '2017-11-25 19:42:00'),
(179, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:42:01', '2017-11-25 19:42:01'),
(180, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:42:02', '2017-11-25 19:42:02'),
(181, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:42:03', '2017-11-25 19:42:03'),
(182, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:42:11', '2017-11-25 19:42:11'),
(183, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 19:42:12', '2017-11-25 19:42:12'),
(184, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:01:57', '2017-11-25 21:01:57'),
(185, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:01:58', '2017-11-25 21:01:58'),
(186, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:03:35', '2017-11-25 21:03:35'),
(187, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:03:36', '2017-11-25 21:03:36'),
(188, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 21:03:52', '2017-11-25 21:03:52'),
(189, 'Visit Create Page', 'users', 'Success', '', 1, '2017-11-25 21:04:03', '2017-11-25 21:04:03'),
(190, 'Create', 'users', 'Success', '{"New id":[2]}', 1, '2017-11-25 21:04:18', '2017-11-25 21:04:18'),
(191, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 21:04:24', '2017-11-25 21:04:24'),
(192, 'Create', 'car', 'Success', '{"New id":[2]}', 1, '2017-11-25 21:04:40', '2017-11-25 21:04:40'),
(193, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:04:48', '2017-11-25 21:04:48'),
(194, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:04:49', '2017-11-25 21:04:49'),
(195, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:04:52', '2017-11-25 21:04:52'),
(196, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:04:53', '2017-11-25 21:04:53'),
(197, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:04:55', '2017-11-25 21:04:55'),
(198, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:04:55', '2017-11-25 21:04:55'),
(199, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:07:27', '2017-11-25 21:07:27'),
(200, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:07:28', '2017-11-25 21:07:28'),
(201, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 21:07:33', '2017-11-25 21:07:33'),
(202, 'Visit Create Page', 'car', 'Success', '', 1, '2017-11-25 21:07:34', '2017-11-25 21:07:34'),
(203, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:07:43', '2017-11-25 21:07:43'),
(204, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:07:43', '2017-11-25 21:07:43'),
(205, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:07:47', '2017-11-25 21:07:47'),
(206, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:07:47', '2017-11-25 21:07:47'),
(207, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:08:11', '2017-11-25 21:08:11'),
(208, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:08:12', '2017-11-25 21:08:12'),
(209, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 21:08:42', '2017-11-25 21:08:42'),
(210, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 21:08:42', '2017-11-25 21:08:42'),
(211, 'Visit Edit Page', 'groups', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:08:56', '2017-11-25 21:08:56'),
(212, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 21:10:08', '2017-11-25 21:10:08'),
(213, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 21:10:08', '2017-11-25 21:10:08'),
(214, 'Visit Create Page', 'country', 'Success', '', 2, '2017-11-25 21:10:58', '2017-11-25 21:10:58'),
(215, 'Visit Create Page', 'country', 'Success', '', 2, '2017-11-25 21:10:59', '2017-11-25 21:10:59'),
(216, 'Visit Edit Page', 'groups', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:11:22', '2017-11-25 21:11:22'),
(217, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 21:11:55', '2017-11-25 21:11:55'),
(218, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 21:11:56', '2017-11-25 21:11:56'),
(219, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:30:57', '2017-11-25 21:30:57'),
(220, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:30:58', '2017-11-25 21:30:58'),
(221, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:31:16', '2017-11-25 21:31:16'),
(222, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:31:17', '2017-11-25 21:31:17'),
(223, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:31:21', '2017-11-25 21:31:21'),
(224, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:31:21', '2017-11-25 21:31:21'),
(225, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 21:37:34', '2017-11-25 21:37:34'),
(226, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 21:37:35', '2017-11-25 21:37:35'),
(227, 'Visit Edit Page', 'groups', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:39:15', '2017-11-25 21:39:15'),
(228, 'Update', 'groups', 'Success', '{"Updated id":["2"]}', 1, '2017-11-25 21:40:52', '2017-11-25 21:40:52'),
(229, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 21:41:02', '2017-11-25 21:41:02'),
(230, 'Visit Create Page', 'country', 'Success', '', 1, '2017-11-25 21:41:03', '2017-11-25 21:41:03'),
(231, 'Visit Edit Page', 'groups', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:41:55', '2017-11-25 21:41:55'),
(232, 'Update', 'groups', 'Success', '{"Updated id":["2"]}', 1, '2017-11-25 21:42:21', '2017-11-25 21:42:21'),
(233, 'Visit Edit Page', 'groups', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:42:25', '2017-11-25 21:42:25'),
(234, 'Update', 'groups', 'Success', '{"Updated id":["2"]}', 1, '2017-11-25 21:42:37', '2017-11-25 21:42:37'),
(235, 'Visit Edit Page', 'groups', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:42:51', '2017-11-25 21:42:51'),
(236, 'Update', 'groups', 'Success', '{"Updated id":["2"]}', 1, '2017-11-25 21:43:10', '2017-11-25 21:43:10'),
(237, 'Visit Edit Page', 'groups', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:43:13', '2017-11-25 21:43:13'),
(238, 'Update', 'groups', 'Success', '{"Updated id":["2"]}', 1, '2017-11-25 21:43:42', '2017-11-25 21:43:42'),
(239, 'Visit Edit Page', 'groups', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:43:46', '2017-11-25 21:43:46'),
(240, 'Update', 'groups', 'Success', '{"Updated id":["2"]}', 1, '2017-11-25 21:44:17', '2017-11-25 21:44:17'),
(241, 'Visit Edit Page', 'groups', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 21:44:21', '2017-11-25 21:44:21'),
(242, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 2, '2017-11-25 21:45:59', '2017-11-25 21:45:59'),
(243, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 2, '2017-11-25 21:46:00', '2017-11-25 21:46:00'),
(244, 'Visit Create Page', 'car', 'Success', '', 2, '2017-11-25 21:46:28', '2017-11-25 21:46:28'),
(245, 'Visit Create Page', 'car', 'Success', '', 2, '2017-11-25 21:46:29', '2017-11-25 21:46:29'),
(246, 'Visit Create Page', 'slider', 'Success', '', 1, '2017-11-25 21:51:23', '2017-11-25 21:51:23'),
(247, 'Create', 'slider', 'Success', '{"New id":[1]}', 1, '2017-11-25 21:52:10', '2017-11-25 21:52:10'),
(248, 'Visit Edit Page', 'slider', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:55:18', '2017-11-25 21:55:18'),
(249, 'Update', 'slider', 'Success', '{"Updated id":["1"]}', 1, '2017-11-25 21:55:57', '2017-11-25 21:55:57'),
(250, 'Visit Edit Page', 'slider', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:55:57', '2017-11-25 21:55:57'),
(251, 'Update', 'slider', 'Success', '{"Updated id":["1"]}', 1, '2017-11-25 21:56:41', '2017-11-25 21:56:41'),
(252, 'Visit Edit Page', 'slider', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 21:56:41', '2017-11-25 21:56:41'),
(253, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 22:02:10', '2017-11-25 22:02:10'),
(254, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 22:02:10', '2017-11-25 22:02:10'),
(255, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 22:02:32', '2017-11-25 22:02:32'),
(256, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 22:02:33', '2017-11-25 22:02:33'),
(257, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 22:02:36', '2017-11-25 22:02:36'),
(258, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 22:02:37', '2017-11-25 22:02:37'),
(259, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 22:15:45', '2017-11-25 22:15:45'),
(260, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["1"]}', 1, '2017-11-25 22:15:45', '2017-11-25 22:15:45'),
(261, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 22:16:13', '2017-11-25 22:16:13'),
(262, 'Visit Edit Page', 'car', 'Success', '{"Edit Id":["2"]}', 1, '2017-11-25 22:16:14', '2017-11-25 22:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `maincat`
--

CREATE TABLE `maincat` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maincat`
--

INSERT INTO `maincat` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(2, '{"en":"Family","ar":"سيارات عائلة"}', '75510_1511631306.jpg', '2017-11-25 15:35:06', '2017-11-25 15:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Main', NULL, NULL),
(3, 'Website', NULL, NULL);

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
(1, '2014_04_11_141239_create_groups_table', 1),
(2, '2014_04_11_141239_create_permissions_table', 1),
(3, '2014_04_11_141239_create_roles_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2016_10_30_174357_links', 1),
(7, '2016_10_30_174359_link_views', 1),
(8, '2017_02_07_172633_create_role_user_table', 1),
(9, '2017_02_07_172657_create_group_role_table', 1),
(10, '2017_02_07_172657_create_permission_group_table', 1),
(11, '2017_02_07_172657_create_permission_role_table', 1),
(12, '2017_02_17_152439_create_permission_user_table', 1),
(13, '2017_04_23_182351_create_settings_table', 1),
(14, '2017_04_25_200458_create_menus_table', 1),
(15, '2017_04_25_211701_create_item_table', 1),
(16, '2017_05_01_230723_create_pages_table', 1),
(17, '2017_05_02_232740_create_logs_table', 1),
(18, '2017_05_05_170821_create_categories_table', 1),
(19, '2017_09_06_005757_create_contacts_table', 1),
(20, '2017_11_17_120927_create_commands_table', 1),
(21, '2017_11_19_021526_create_relations_table', 1),
(22, '2017_11_25_1511630629_create_brand_table', 2),
(23, '2017_11_25_1511630889_create_maincat_table', 3),
(24, '2017_11_25_1511631559_create_car_table', 4),
(25, '2017_11_25_1511632582_create_car_table', 5),
(26, '2017_11_25_1511632870_create_car_table', 6),
(27, '2017_11_25_1511634399_create_accessories_table', 7),
(28, '2017_11_25_1511640273_create_country_table', 8),
(29, '2017_11_25_1511640301_create_regoin_table', 9),
(30, '2017_11_25_1511653875_create_slider_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `status`, `date`, `image`, `created_at`, `updated_at`) VALUES
(1, '{"ar":" من نحن ","en":"About us"}', 'about_us', '{"ar":"\\n                    هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.\\nإذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.\\nومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.\\nهذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.\\n            ","en":"\\n                 <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\n                 <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\n             "}', 'Active', '2010-10-10', 'StreamLab.jpg', NULL, NULL);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` tinyint(1) NOT NULL,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `controller_name`, `method_name`, `controller_type`, `permission`, `namespace`, `created_at`, `updated_at`) VALUES
(1, 'index-CustomPermissionsController', 'App-Application-Controllers-Admin-Development-CustomPermissionsController-index', 'Allow admin on index in controller CustomPermissionsController', 'CustomPermissionsController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\CustomPermissionsController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(2, 'readFile-CustomPermissionsController', 'App-Application-Controllers-Admin-Development-CustomPermissionsController-readFile', 'Allow admin on readFile in controller CustomPermissionsController', 'CustomPermissionsController', 'readFile', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\CustomPermissionsController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(3, 'save-CustomPermissionsController', 'App-Application-Controllers-Admin-Development-CustomPermissionsController-save', 'Allow admin on save in controller CustomPermissionsController', 'CustomPermissionsController', 'save', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\CustomPermissionsController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(4, 'index-PermissionController', 'App-Application-Controllers-Admin-Development-PermissionController-index', 'Allow admin on index in controller PermissionController', 'PermissionController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\PermissionController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(5, 'show-PermissionController', 'App-Application-Controllers-Admin-Development-PermissionController-show', 'Allow admin on show in controller PermissionController', 'PermissionController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\PermissionController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(6, 'store-PermissionController', 'App-Application-Controllers-Admin-Development-PermissionController-store', 'Allow admin on store in controller PermissionController', 'PermissionController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\PermissionController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(7, 'update-PermissionController', 'App-Application-Controllers-Admin-Development-PermissionController-update', 'Allow admin on update in controller PermissionController', 'PermissionController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\PermissionController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(8, 'getById-PermissionController', 'App-Application-Controllers-Admin-Development-PermissionController-getById', 'Allow admin on getById in controller PermissionController', 'PermissionController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\PermissionController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(9, 'destroy-PermissionController', 'App-Application-Controllers-Admin-Development-PermissionController-destroy', 'Allow admin on destroy in controller PermissionController', 'PermissionController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\PermissionController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(10, 'getControllerByType-PermissionController', 'App-Application-Controllers-Admin-Development-PermissionController-getControllerByType', 'Allow admin on getControllerByType in controller PermissionController', 'PermissionController', 'getControllerByType', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\PermissionController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(11, 'getMethodByController-PermissionController', 'App-Application-Controllers-Admin-Development-PermissionController-getMethodByController', 'Allow admin on getMethodByController in controller PermissionController', 'PermissionController', 'getMethodByController', 'admin', 1, 'App\\Application\\Controllers\\Admin\\Development\\PermissionController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(12, 'index-CategorieController', 'App-Application-Controllers-Admin-CategorieController-index', 'Allow admin on index in controller CategorieController', 'CategorieController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CategorieController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(13, 'show-CategorieController', 'App-Application-Controllers-Admin-CategorieController-show', 'Allow admin on show in controller CategorieController', 'CategorieController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CategorieController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(14, 'store-CategorieController', 'App-Application-Controllers-Admin-CategorieController-store', 'Allow admin on store in controller CategorieController', 'CategorieController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CategorieController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(15, 'update-CategorieController', 'App-Application-Controllers-Admin-CategorieController-update', 'Allow admin on update in controller CategorieController', 'CategorieController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CategorieController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(16, 'getById-CategorieController', 'App-Application-Controllers-Admin-CategorieController-getById', 'Allow admin on getById in controller CategorieController', 'CategorieController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CategorieController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(17, 'destroy-CategorieController', 'App-Application-Controllers-Admin-CategorieController-destroy', 'Allow admin on destroy in controller CategorieController', 'CategorieController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CategorieController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(18, 'index-CommandsController', 'App-Application-Controllers-Admin-CommandsController-index', 'Allow admin on index in controller CommandsController', 'CommandsController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CommandsController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(19, 'command-CommandsController', 'App-Application-Controllers-Admin-CommandsController-command', 'Allow admin on command in controller CommandsController', 'CommandsController', 'command', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CommandsController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(20, 'otherExe-CommandsController', 'App-Application-Controllers-Admin-CommandsController-otherExe', 'Allow admin on otherExe in controller CommandsController', 'CommandsController', 'otherExe', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CommandsController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(21, 'exe-CommandsController', 'App-Application-Controllers-Admin-CommandsController-exe', 'Allow admin on exe in controller CommandsController', 'CommandsController', 'exe', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CommandsController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(22, 'replayEmail-ContactController', 'App-Application-Controllers-Admin-ContactController-replayEmail', 'Allow admin on replayEmail in controller ContactController', 'ContactController', 'replayEmail', 'admin', 1, 'App\\Application\\Controllers\\Admin\\ContactController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(23, 'index-ContactController', 'App-Application-Controllers-Admin-ContactController-index', 'Allow admin on index in controller ContactController', 'ContactController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\ContactController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(24, 'show-ContactController', 'App-Application-Controllers-Admin-ContactController-show', 'Allow admin on show in controller ContactController', 'ContactController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\ContactController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(25, 'store-ContactController', 'App-Application-Controllers-Admin-ContactController-store', 'Allow admin on store in controller ContactController', 'ContactController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\ContactController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(26, 'update-ContactController', 'App-Application-Controllers-Admin-ContactController-update', 'Allow admin on update in controller ContactController', 'ContactController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\ContactController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(27, 'getById-ContactController', 'App-Application-Controllers-Admin-ContactController-getById', 'Allow admin on getById in controller ContactController', 'ContactController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\ContactController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(28, 'destroy-ContactController', 'App-Application-Controllers-Admin-ContactController-destroy', 'Allow admin on destroy in controller ContactController', 'ContactController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\ContactController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(29, 'index-GroupController', 'App-Application-Controllers-Admin-GroupController-index', 'Allow admin on index in controller GroupController', 'GroupController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\GroupController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(30, 'show-GroupController', 'App-Application-Controllers-Admin-GroupController-show', 'Allow admin on show in controller GroupController', 'GroupController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\GroupController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(31, 'store-GroupController', 'App-Application-Controllers-Admin-GroupController-store', 'Allow admin on store in controller GroupController', 'GroupController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\GroupController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(32, 'update-GroupController', 'App-Application-Controllers-Admin-GroupController-update', 'Allow admin on update in controller GroupController', 'GroupController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\GroupController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(33, 'getById-GroupController', 'App-Application-Controllers-Admin-GroupController-getById', 'Allow admin on getById in controller GroupController', 'GroupController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\GroupController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(34, 'destroy-GroupController', 'App-Application-Controllers-Admin-GroupController-destroy', 'Allow admin on destroy in controller GroupController', 'GroupController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\GroupController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(35, 'index-HomeController', 'App-Application-Controllers-Admin-HomeController-index', 'Allow admin on index in controller HomeController', 'HomeController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\HomeController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(36, 'icons-HomeController', 'App-Application-Controllers-Admin-HomeController-icons', 'Allow admin on icons in controller HomeController', 'HomeController', 'icons', 'admin', 1, 'App\\Application\\Controllers\\Admin\\HomeController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(37, 'apiDocs-HomeController', 'App-Application-Controllers-Admin-HomeController-apiDocs', 'Allow admin on apiDocs in controller HomeController', 'HomeController', 'apiDocs', 'admin', 1, 'App\\Application\\Controllers\\Admin\\HomeController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(38, 'index-LogController', 'App-Application-Controllers-Admin-LogController-index', 'Allow admin on index in controller LogController', 'LogController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\LogController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(39, 'show-LogController', 'App-Application-Controllers-Admin-LogController-show', 'Allow admin on show in controller LogController', 'LogController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\LogController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(40, 'store-LogController', 'App-Application-Controllers-Admin-LogController-store', 'Allow admin on store in controller LogController', 'LogController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\LogController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(41, 'getById-LogController', 'App-Application-Controllers-Admin-LogController-getById', 'Allow admin on getById in controller LogController', 'LogController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\LogController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(42, 'destroy-LogController', 'App-Application-Controllers-Admin-LogController-destroy', 'Allow admin on destroy in controller LogController', 'LogController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\LogController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(43, 'index-MenuController', 'App-Application-Controllers-Admin-MenuController-index', 'Allow admin on index in controller MenuController', 'MenuController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(44, 'show-MenuController', 'App-Application-Controllers-Admin-MenuController-show', 'Allow admin on show in controller MenuController', 'MenuController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(45, 'store-MenuController', 'App-Application-Controllers-Admin-MenuController-store', 'Allow admin on store in controller MenuController', 'MenuController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(46, 'update-MenuController', 'App-Application-Controllers-Admin-MenuController-update', 'Allow admin on update in controller MenuController', 'MenuController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(47, 'getById-MenuController', 'App-Application-Controllers-Admin-MenuController-getById', 'Allow admin on getById in controller MenuController', 'MenuController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(48, 'destroy-MenuController', 'App-Application-Controllers-Admin-MenuController-destroy', 'Allow admin on destroy in controller MenuController', 'MenuController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(49, 'menuItem-MenuController', 'App-Application-Controllers-Admin-MenuController-menuItem', 'Allow admin on menuItem in controller MenuController', 'MenuController', 'menuItem', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(50, 'addNewItemToMenu-MenuController', 'App-Application-Controllers-Admin-MenuController-addNewItemToMenu', 'Allow admin on addNewItemToMenu in controller MenuController', 'MenuController', 'addNewItemToMenu', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(51, 'getItemInfo-MenuController', 'App-Application-Controllers-Admin-MenuController-getItemInfo', 'Allow admin on getItemInfo in controller MenuController', 'MenuController', 'getItemInfo', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(52, 'updateOneMenuItem-MenuController', 'App-Application-Controllers-Admin-MenuController-updateOneMenuItem', 'Allow admin on updateOneMenuItem in controller MenuController', 'MenuController', 'updateOneMenuItem', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(53, 'deleteMenuItem-MenuController', 'App-Application-Controllers-Admin-MenuController-deleteMenuItem', 'Allow admin on deleteMenuItem in controller MenuController', 'MenuController', 'deleteMenuItem', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MenuController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(54, 'index-PageController', 'App-Application-Controllers-Admin-PageController-index', 'Allow admin on index in controller PageController', 'PageController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\PageController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(55, 'show-PageController', 'App-Application-Controllers-Admin-PageController-show', 'Allow admin on show in controller PageController', 'PageController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\PageController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(56, 'store-PageController', 'App-Application-Controllers-Admin-PageController-store', 'Allow admin on store in controller PageController', 'PageController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\PageController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(57, 'update-PageController', 'App-Application-Controllers-Admin-PageController-update', 'Allow admin on update in controller PageController', 'PageController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\PageController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(58, 'getById-PageController', 'App-Application-Controllers-Admin-PageController-getById', 'Allow admin on getById in controller PageController', 'PageController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\PageController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(59, 'destroy-PageController', 'App-Application-Controllers-Admin-PageController-destroy', 'Allow admin on destroy in controller PageController', 'PageController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\PageController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(60, 'index-RelationController', 'App-Application-Controllers-Admin-RelationController-index', 'Allow admin on index in controller RelationController', 'RelationController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RelationController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(61, 'exe-RelationController', 'App-Application-Controllers-Admin-RelationController-exe', 'Allow admin on exe in controller RelationController', 'RelationController', 'exe', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RelationController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(62, 'rollback-RelationController', 'App-Application-Controllers-Admin-RelationController-rollback', 'Allow admin on rollback in controller RelationController', 'RelationController', 'rollback', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RelationController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(63, 'getCols-RelationController', 'App-Application-Controllers-Admin-RelationController-getCols', 'Allow admin on getCols in controller RelationController', 'RelationController', 'getCols', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RelationController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(64, 'index-RoleController', 'App-Application-Controllers-Admin-RoleController-index', 'Allow admin on index in controller RoleController', 'RoleController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RoleController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(65, 'show-RoleController', 'App-Application-Controllers-Admin-RoleController-show', 'Allow admin on show in controller RoleController', 'RoleController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RoleController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(66, 'store-RoleController', 'App-Application-Controllers-Admin-RoleController-store', 'Allow admin on store in controller RoleController', 'RoleController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RoleController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(67, 'update-RoleController', 'App-Application-Controllers-Admin-RoleController-update', 'Allow admin on update in controller RoleController', 'RoleController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RoleController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(68, 'getById-RoleController', 'App-Application-Controllers-Admin-RoleController-getById', 'Allow admin on getById in controller RoleController', 'RoleController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RoleController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(69, 'destroy-RoleController', 'App-Application-Controllers-Admin-RoleController-destroy', 'Allow admin on destroy in controller RoleController', 'RoleController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RoleController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(70, 'index-SettingController', 'App-Application-Controllers-Admin-SettingController-index', 'Allow admin on index in controller SettingController', 'SettingController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SettingController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(71, 'show-SettingController', 'App-Application-Controllers-Admin-SettingController-show', 'Allow admin on show in controller SettingController', 'SettingController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SettingController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(72, 'store-SettingController', 'App-Application-Controllers-Admin-SettingController-store', 'Allow admin on store in controller SettingController', 'SettingController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SettingController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(73, 'update-SettingController', 'App-Application-Controllers-Admin-SettingController-update', 'Allow admin on update in controller SettingController', 'SettingController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SettingController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(74, 'getById-SettingController', 'App-Application-Controllers-Admin-SettingController-getById', 'Allow admin on getById in controller SettingController', 'SettingController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SettingController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(75, 'destroy-SettingController', 'App-Application-Controllers-Admin-SettingController-destroy', 'Allow admin on destroy in controller SettingController', 'SettingController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SettingController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(76, 'index-TranslationController', 'App-Application-Controllers-Admin-TranslationController-index', 'Allow admin on index in controller TranslationController', 'TranslationController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\TranslationController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(77, 'getFiles-TranslationController', 'App-Application-Controllers-Admin-TranslationController-getFiles', 'Allow admin on getFiles in controller TranslationController', 'TranslationController', 'getFiles', 'admin', 1, 'App\\Application\\Controllers\\Admin\\TranslationController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(78, 'readFile-TranslationController', 'App-Application-Controllers-Admin-TranslationController-readFile', 'Allow admin on readFile in controller TranslationController', 'TranslationController', 'readFile', 'admin', 1, 'App\\Application\\Controllers\\Admin\\TranslationController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(79, 'save-TranslationController', 'App-Application-Controllers-Admin-TranslationController-save', 'Allow admin on save in controller TranslationController', 'TranslationController', 'save', 'admin', 1, 'App\\Application\\Controllers\\Admin\\TranslationController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(80, 'getAllContent-TranslationController', 'App-Application-Controllers-Admin-TranslationController-getAllContent', 'Allow admin on getAllContent in controller TranslationController', 'TranslationController', 'getAllContent', 'admin', 1, 'App\\Application\\Controllers\\Admin\\TranslationController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(81, 'bothSave-TranslationController', 'App-Application-Controllers-Admin-TranslationController-bothSave', 'Allow admin on bothSave in controller TranslationController', 'TranslationController', 'bothSave', 'admin', 1, 'App\\Application\\Controllers\\Admin\\TranslationController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(82, 'index-UserController', 'App-Application-Controllers-Admin-UserController-index', 'Allow admin on index in controller UserController', 'UserController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\UserController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(83, 'show-UserController', 'App-Application-Controllers-Admin-UserController-show', 'Allow admin on show in controller UserController', 'UserController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\UserController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(84, 'store-UserController', 'App-Application-Controllers-Admin-UserController-store', 'Allow admin on store in controller UserController', 'UserController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\UserController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(85, 'update-UserController', 'App-Application-Controllers-Admin-UserController-update', 'Allow admin on update in controller UserController', 'UserController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\UserController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(86, 'getById-UserController', 'App-Application-Controllers-Admin-UserController-getById', 'Allow admin on getById in controller UserController', 'UserController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\UserController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(87, 'destroy-UserController', 'App-Application-Controllers-Admin-UserController-destroy', 'Allow admin on destroy in controller UserController', 'UserController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\UserController', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(88, 'index-BrandController', 'App-Application-Admin-Brand-Controller-index', 'Allow admin on index in controller Brand Controller', 'BrandController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(89, 'show-BrandController', 'App-Application-Admin-Brand-Controller-show', 'Allow admin on show in controller Brand Controller', 'BrandController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(90, 'store-BrandController', 'App-Application-Admin-Brand-Controller-store', 'Allow admin on store in controller Brand Controller', 'BrandController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(91, 'update-BrandController', 'App-Application-Admin-Brand-Controller-update', 'Allow admin on update in controller Brand Controller', 'BrandController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(92, 'getById-BrandController', 'App-Application-Admin-Brand-Controller-getById', 'Allow admin on getById in controller Brand Controller', 'BrandController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(93, 'destroy-BrandController', 'App-Application-Admin-Brand-Controller-destroy', 'Allow admin on destroy in controller Brand Controller', 'BrandController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(94, 'admin-website-index-BrandController', 'App-Application-Admin-Brand-Controller-index', 'Allow admin on index in controller Brand Controller', 'BrandController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(95, 'admin-website-show-BrandController', 'App-Application-Admin-Brand-Controller-show', 'Allow admin on show in controller Brand Controller', 'BrandController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(96, 'admin-website-store-BrandController', 'App-Application-Admin-Brand-Controller-store', 'Allow admin on store in controller Brand Controller', 'BrandController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(97, 'admin-website-update-BrandController', 'App-Application-Admin-Brand-Controller-update', 'Allow admin on update in controller Brand Controller', 'BrandController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(98, 'admin-website-getById-BrandController', 'App-Application-Admin-Brand-Controller-getById', 'Allow admin on getById in controller Brand Controller', 'BrandController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(99, 'admin-website-destroy-BrandController', 'App-Application-Admin-Brand-Controller-destroy', 'Allow admin on destroy in controller Brand Controller', 'BrandController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(100, 'users-websiteindex-BrandController', 'App-Application-Admin-Brand-Controller-index', 'Allow admin on index in controller Brand Controller', 'BrandController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(101, 'users-websiteshow-BrandController', 'App-Application-Admin-Brand-Controller-show', 'Allow admin on show in controller Brand Controller', 'BrandController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(102, 'users-websitestore-BrandController', 'App-Application-Admin-Brand-Controller-store', 'Allow admin on store in controller Brand Controller', 'BrandController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(103, 'users-websiteupdate-BrandController', 'App-Application-Admin-Brand-Controller-update', 'Allow admin on update in controller Brand Controller', 'BrandController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(104, 'users-websitegetById-BrandController', 'App-Application-Admin-Brand-Controller-getById', 'Allow admin on getById in controller Brand Controller', 'BrandController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(105, 'users-websitedestroy-BrandController', 'App-Application-Admin-Brand-Controller-destroy', 'Allow admin on destroy in controller Brand Controller', 'BrandController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\BrandController', '2017-11-25 15:23:50', '2017-11-25 15:23:50'),
(106, 'index-MaincatController', 'App-Application-Admin-Maincat-Controller-index', 'Allow admin on index in controller Maincat Controller', 'MaincatController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(107, 'show-MaincatController', 'App-Application-Admin-Maincat-Controller-show', 'Allow admin on show in controller Maincat Controller', 'MaincatController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(108, 'store-MaincatController', 'App-Application-Admin-Maincat-Controller-store', 'Allow admin on store in controller Maincat Controller', 'MaincatController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(109, 'update-MaincatController', 'App-Application-Admin-Maincat-Controller-update', 'Allow admin on update in controller Maincat Controller', 'MaincatController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(110, 'getById-MaincatController', 'App-Application-Admin-Maincat-Controller-getById', 'Allow admin on getById in controller Maincat Controller', 'MaincatController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(111, 'destroy-MaincatController', 'App-Application-Admin-Maincat-Controller-destroy', 'Allow admin on destroy in controller Maincat Controller', 'MaincatController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(112, 'admin-website-index-MaincatController', 'App-Application-Admin-Maincat-Controller-index', 'Allow admin on index in controller Maincat Controller', 'MaincatController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(113, 'admin-website-show-MaincatController', 'App-Application-Admin-Maincat-Controller-show', 'Allow admin on show in controller Maincat Controller', 'MaincatController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(114, 'admin-website-store-MaincatController', 'App-Application-Admin-Maincat-Controller-store', 'Allow admin on store in controller Maincat Controller', 'MaincatController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(115, 'admin-website-update-MaincatController', 'App-Application-Admin-Maincat-Controller-update', 'Allow admin on update in controller Maincat Controller', 'MaincatController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(116, 'admin-website-getById-MaincatController', 'App-Application-Admin-Maincat-Controller-getById', 'Allow admin on getById in controller Maincat Controller', 'MaincatController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(117, 'admin-website-destroy-MaincatController', 'App-Application-Admin-Maincat-Controller-destroy', 'Allow admin on destroy in controller Maincat Controller', 'MaincatController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(118, 'users-websiteindex-MaincatController', 'App-Application-Admin-Maincat-Controller-index', 'Allow admin on index in controller Maincat Controller', 'MaincatController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(119, 'users-websiteshow-MaincatController', 'App-Application-Admin-Maincat-Controller-show', 'Allow admin on show in controller Maincat Controller', 'MaincatController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(120, 'users-websitestore-MaincatController', 'App-Application-Admin-Maincat-Controller-store', 'Allow admin on store in controller Maincat Controller', 'MaincatController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(121, 'users-websiteupdate-MaincatController', 'App-Application-Admin-Maincat-Controller-update', 'Allow admin on update in controller Maincat Controller', 'MaincatController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(122, 'users-websitegetById-MaincatController', 'App-Application-Admin-Maincat-Controller-getById', 'Allow admin on getById in controller Maincat Controller', 'MaincatController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(123, 'users-websitedestroy-MaincatController', 'App-Application-Admin-Maincat-Controller-destroy', 'Allow admin on destroy in controller Maincat Controller', 'MaincatController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\MaincatController', '2017-11-25 15:28:10', '2017-11-25 15:28:10'),
(304, 'index-CarController', 'App-Application-Admin-Car-Controller-index', 'Allow admin on index in controller Car Controller', 'CarController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(305, 'show-CarController', 'App-Application-Admin-Car-Controller-show', 'Allow admin on show in controller Car Controller', 'CarController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(306, 'store-CarController', 'App-Application-Admin-Car-Controller-store', 'Allow admin on store in controller Car Controller', 'CarController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(307, 'update-CarController', 'App-Application-Admin-Car-Controller-update', 'Allow admin on update in controller Car Controller', 'CarController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(308, 'getById-CarController', 'App-Application-Admin-Car-Controller-getById', 'Allow admin on getById in controller Car Controller', 'CarController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(309, 'destroy-CarController', 'App-Application-Admin-Car-Controller-destroy', 'Allow admin on destroy in controller Car Controller', 'CarController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(310, 'admin-website-index-CarController', 'App-Application-Admin-Car-Controller-index', 'Allow admin on index in controller Car Controller', 'CarController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(311, 'admin-website-show-CarController', 'App-Application-Admin-Car-Controller-show', 'Allow admin on show in controller Car Controller', 'CarController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(312, 'admin-website-store-CarController', 'App-Application-Admin-Car-Controller-store', 'Allow admin on store in controller Car Controller', 'CarController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(313, 'admin-website-update-CarController', 'App-Application-Admin-Car-Controller-update', 'Allow admin on update in controller Car Controller', 'CarController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(314, 'admin-website-getById-CarController', 'App-Application-Admin-Car-Controller-getById', 'Allow admin on getById in controller Car Controller', 'CarController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(315, 'admin-website-destroy-CarController', 'App-Application-Admin-Car-Controller-destroy', 'Allow admin on destroy in controller Car Controller', 'CarController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(316, 'users-websiteindex-CarController', 'App-Application-Admin-Car-Controller-index', 'Allow admin on index in controller Car Controller', 'CarController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(317, 'users-websiteshow-CarController', 'App-Application-Admin-Car-Controller-show', 'Allow admin on show in controller Car Controller', 'CarController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(318, 'users-websitestore-CarController', 'App-Application-Admin-Car-Controller-store', 'Allow admin on store in controller Car Controller', 'CarController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(319, 'users-websiteupdate-CarController', 'App-Application-Admin-Car-Controller-update', 'Allow admin on update in controller Car Controller', 'CarController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(320, 'users-websitegetById-CarController', 'App-Application-Admin-Car-Controller-getById', 'Allow admin on getById in controller Car Controller', 'CarController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(321, 'users-websitedestroy-CarController', 'App-Application-Admin-Car-Controller-destroy', 'Allow admin on destroy in controller Car Controller', 'CarController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\CarController', '2017-11-25 16:01:10', '2017-11-25 16:01:10'),
(322, 'index-AccessoriesController', 'App-Application-Admin-Accessories-Controller-index', 'Allow admin on index in controller Accessories Controller', 'AccessoriesController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(323, 'show-AccessoriesController', 'App-Application-Admin-Accessories-Controller-show', 'Allow admin on show in controller Accessories Controller', 'AccessoriesController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(324, 'store-AccessoriesController', 'App-Application-Admin-Accessories-Controller-store', 'Allow admin on store in controller Accessories Controller', 'AccessoriesController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(325, 'update-AccessoriesController', 'App-Application-Admin-Accessories-Controller-update', 'Allow admin on update in controller Accessories Controller', 'AccessoriesController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(326, 'getById-AccessoriesController', 'App-Application-Admin-Accessories-Controller-getById', 'Allow admin on getById in controller Accessories Controller', 'AccessoriesController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(327, 'destroy-AccessoriesController', 'App-Application-Admin-Accessories-Controller-destroy', 'Allow admin on destroy in controller Accessories Controller', 'AccessoriesController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(328, 'admin-website-index-AccessoriesController', 'App-Application-Admin-Accessories-Controller-index', 'Allow admin on index in controller Accessories Controller', 'AccessoriesController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(329, 'admin-website-show-AccessoriesController', 'App-Application-Admin-Accessories-Controller-show', 'Allow admin on show in controller Accessories Controller', 'AccessoriesController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(330, 'admin-website-store-AccessoriesController', 'App-Application-Admin-Accessories-Controller-store', 'Allow admin on store in controller Accessories Controller', 'AccessoriesController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(331, 'admin-website-update-AccessoriesController', 'App-Application-Admin-Accessories-Controller-update', 'Allow admin on update in controller Accessories Controller', 'AccessoriesController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(332, 'admin-website-getById-AccessoriesController', 'App-Application-Admin-Accessories-Controller-getById', 'Allow admin on getById in controller Accessories Controller', 'AccessoriesController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(333, 'admin-website-destroy-AccessoriesController', 'App-Application-Admin-Accessories-Controller-destroy', 'Allow admin on destroy in controller Accessories Controller', 'AccessoriesController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(334, 'users-websiteindex-AccessoriesController', 'App-Application-Admin-Accessories-Controller-index', 'Allow admin on index in controller Accessories Controller', 'AccessoriesController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(335, 'users-websiteshow-AccessoriesController', 'App-Application-Admin-Accessories-Controller-show', 'Allow admin on show in controller Accessories Controller', 'AccessoriesController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(336, 'users-websitestore-AccessoriesController', 'App-Application-Admin-Accessories-Controller-store', 'Allow admin on store in controller Accessories Controller', 'AccessoriesController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(337, 'users-websiteupdate-AccessoriesController', 'App-Application-Admin-Accessories-Controller-update', 'Allow admin on update in controller Accessories Controller', 'AccessoriesController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(338, 'users-websitegetById-AccessoriesController', 'App-Application-Admin-Accessories-Controller-getById', 'Allow admin on getById in controller Accessories Controller', 'AccessoriesController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(339, 'users-websitedestroy-AccessoriesController', 'App-Application-Admin-Accessories-Controller-destroy', 'Allow admin on destroy in controller Accessories Controller', 'AccessoriesController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\AccessoriesController', '2017-11-25 16:26:39', '2017-11-25 16:26:39'),
(340, 'index-CountryController', 'App-Application-Admin-Country-Controller-index', 'Allow admin on index in controller Country Controller', 'CountryController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(341, 'show-CountryController', 'App-Application-Admin-Country-Controller-show', 'Allow admin on show in controller Country Controller', 'CountryController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(342, 'store-CountryController', 'App-Application-Admin-Country-Controller-store', 'Allow admin on store in controller Country Controller', 'CountryController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(343, 'update-CountryController', 'App-Application-Admin-Country-Controller-update', 'Allow admin on update in controller Country Controller', 'CountryController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(344, 'getById-CountryController', 'App-Application-Admin-Country-Controller-getById', 'Allow admin on getById in controller Country Controller', 'CountryController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(345, 'destroy-CountryController', 'App-Application-Admin-Country-Controller-destroy', 'Allow admin on destroy in controller Country Controller', 'CountryController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(346, 'admin-website-index-CountryController', 'App-Application-Admin-Country-Controller-index', 'Allow admin on index in controller Country Controller', 'CountryController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33');
INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `controller_name`, `method_name`, `controller_type`, `permission`, `namespace`, `created_at`, `updated_at`) VALUES
(347, 'admin-website-show-CountryController', 'App-Application-Admin-Country-Controller-show', 'Allow admin on show in controller Country Controller', 'CountryController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(348, 'admin-website-store-CountryController', 'App-Application-Admin-Country-Controller-store', 'Allow admin on store in controller Country Controller', 'CountryController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(349, 'admin-website-update-CountryController', 'App-Application-Admin-Country-Controller-update', 'Allow admin on update in controller Country Controller', 'CountryController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(350, 'admin-website-getById-CountryController', 'App-Application-Admin-Country-Controller-getById', 'Allow admin on getById in controller Country Controller', 'CountryController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(351, 'admin-website-destroy-CountryController', 'App-Application-Admin-Country-Controller-destroy', 'Allow admin on destroy in controller Country Controller', 'CountryController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(352, 'users-websiteindex-CountryController', 'App-Application-Admin-Country-Controller-index', 'Allow admin on index in controller Country Controller', 'CountryController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(353, 'users-websiteshow-CountryController', 'App-Application-Admin-Country-Controller-show', 'Allow admin on show in controller Country Controller', 'CountryController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(354, 'users-websitestore-CountryController', 'App-Application-Admin-Country-Controller-store', 'Allow admin on store in controller Country Controller', 'CountryController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(355, 'users-websiteupdate-CountryController', 'App-Application-Admin-Country-Controller-update', 'Allow admin on update in controller Country Controller', 'CountryController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(356, 'users-websitegetById-CountryController', 'App-Application-Admin-Country-Controller-getById', 'Allow admin on getById in controller Country Controller', 'CountryController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(357, 'users-websitedestroy-CountryController', 'App-Application-Admin-Country-Controller-destroy', 'Allow admin on destroy in controller Country Controller', 'CountryController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\CountryController', '2017-11-25 18:04:33', '2017-11-25 18:04:33'),
(358, 'index-RegoinController', 'App-Application-Admin-Regoin-Controller-index', 'Allow admin on index in controller Regoin Controller', 'RegoinController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(359, 'show-RegoinController', 'App-Application-Admin-Regoin-Controller-show', 'Allow admin on show in controller Regoin Controller', 'RegoinController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(360, 'store-RegoinController', 'App-Application-Admin-Regoin-Controller-store', 'Allow admin on store in controller Regoin Controller', 'RegoinController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(361, 'update-RegoinController', 'App-Application-Admin-Regoin-Controller-update', 'Allow admin on update in controller Regoin Controller', 'RegoinController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(362, 'getById-RegoinController', 'App-Application-Admin-Regoin-Controller-getById', 'Allow admin on getById in controller Regoin Controller', 'RegoinController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(363, 'destroy-RegoinController', 'App-Application-Admin-Regoin-Controller-destroy', 'Allow admin on destroy in controller Regoin Controller', 'RegoinController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(364, 'admin-website-index-RegoinController', 'App-Application-Admin-Regoin-Controller-index', 'Allow admin on index in controller Regoin Controller', 'RegoinController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(365, 'admin-website-show-RegoinController', 'App-Application-Admin-Regoin-Controller-show', 'Allow admin on show in controller Regoin Controller', 'RegoinController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(366, 'admin-website-store-RegoinController', 'App-Application-Admin-Regoin-Controller-store', 'Allow admin on store in controller Regoin Controller', 'RegoinController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(367, 'admin-website-update-RegoinController', 'App-Application-Admin-Regoin-Controller-update', 'Allow admin on update in controller Regoin Controller', 'RegoinController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(368, 'admin-website-getById-RegoinController', 'App-Application-Admin-Regoin-Controller-getById', 'Allow admin on getById in controller Regoin Controller', 'RegoinController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(369, 'admin-website-destroy-RegoinController', 'App-Application-Admin-Regoin-Controller-destroy', 'Allow admin on destroy in controller Regoin Controller', 'RegoinController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(370, 'users-websiteindex-RegoinController', 'App-Application-Admin-Regoin-Controller-index', 'Allow admin on index in controller Regoin Controller', 'RegoinController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(371, 'users-websiteshow-RegoinController', 'App-Application-Admin-Regoin-Controller-show', 'Allow admin on show in controller Regoin Controller', 'RegoinController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(372, 'users-websitestore-RegoinController', 'App-Application-Admin-Regoin-Controller-store', 'Allow admin on store in controller Regoin Controller', 'RegoinController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(373, 'users-websiteupdate-RegoinController', 'App-Application-Admin-Regoin-Controller-update', 'Allow admin on update in controller Regoin Controller', 'RegoinController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(374, 'users-websitegetById-RegoinController', 'App-Application-Admin-Regoin-Controller-getById', 'Allow admin on getById in controller Regoin Controller', 'RegoinController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(375, 'users-websitedestroy-RegoinController', 'App-Application-Admin-Regoin-Controller-destroy', 'Allow admin on destroy in controller Regoin Controller', 'RegoinController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\RegoinController', '2017-11-25 18:05:02', '2017-11-25 18:05:02'),
(376, 'index-SliderController', 'App-Application-Admin-Slider-Controller-index', 'Allow admin on index in controller Slider Controller', 'SliderController', 'index', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(377, 'show-SliderController', 'App-Application-Admin-Slider-Controller-show', 'Allow admin on show in controller Slider Controller', 'SliderController', 'show', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(378, 'store-SliderController', 'App-Application-Admin-Slider-Controller-store', 'Allow admin on store in controller Slider Controller', 'SliderController', 'store', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(379, 'update-SliderController', 'App-Application-Admin-Slider-Controller-update', 'Allow admin on update in controller Slider Controller', 'SliderController', 'update', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(380, 'getById-SliderController', 'App-Application-Admin-Slider-Controller-getById', 'Allow admin on getById in controller Slider Controller', 'SliderController', 'getById', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(381, 'destroy-SliderController', 'App-Application-Admin-Slider-Controller-destroy', 'Allow admin on destroy in controller Slider Controller', 'SliderController', 'destroy', 'admin', 1, 'App\\Application\\Controllers\\Admin\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(382, 'admin-website-index-SliderController', 'App-Application-Admin-Slider-Controller-index', 'Allow admin on index in controller Slider Controller', 'SliderController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(383, 'admin-website-show-SliderController', 'App-Application-Admin-Slider-Controller-show', 'Allow admin on show in controller Slider Controller', 'SliderController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(384, 'admin-website-store-SliderController', 'App-Application-Admin-Slider-Controller-store', 'Allow admin on store in controller Slider Controller', 'SliderController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(385, 'admin-website-update-SliderController', 'App-Application-Admin-Slider-Controller-update', 'Allow admin on update in controller Slider Controller', 'SliderController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(386, 'admin-website-getById-SliderController', 'App-Application-Admin-Slider-Controller-getById', 'Allow admin on getById in controller Slider Controller', 'SliderController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(387, 'admin-website-destroy-SliderController', 'App-Application-Admin-Slider-Controller-destroy', 'Allow admin on destroy in controller Slider Controller', 'SliderController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(388, 'users-websiteindex-SliderController', 'App-Application-Admin-Slider-Controller-index', 'Allow admin on index in controller Slider Controller', 'SliderController', 'index', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(389, 'users-websiteshow-SliderController', 'App-Application-Admin-Slider-Controller-show', 'Allow admin on show in controller Slider Controller', 'SliderController', 'show', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(390, 'users-websitestore-SliderController', 'App-Application-Admin-Slider-Controller-store', 'Allow admin on store in controller Slider Controller', 'SliderController', 'store', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(391, 'users-websiteupdate-SliderController', 'App-Application-Admin-Slider-Controller-update', 'Allow admin on update in controller Slider Controller', 'SliderController', 'update', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(392, 'users-websitegetById-SliderController', 'App-Application-Admin-Slider-Controller-getById', 'Allow admin on getById in controller Slider Controller', 'SliderController', 'getById', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15'),
(393, 'users-websitedestroy-SliderController', 'App-Application-Admin-Slider-Controller-destroy', 'Allow admin on destroy in controller Slider Controller', 'SliderController', 'destroy', 'website', 1, 'App\\Application\\Controllers\\Website\\SliderController', '2017-11-25 21:51:15', '2017-11-25 21:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `permission_group`
--

CREATE TABLE `permission_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_group`
--

INSERT INTO `permission_group` (`id`, `permission_id`, `group_id`) VALUES
(1, 88, 1),
(2, 89, 1),
(3, 90, 1),
(4, 91, 1),
(5, 92, 1),
(6, 93, 1),
(7, 94, 1),
(8, 95, 1),
(9, 96, 1),
(10, 97, 1),
(11, 98, 1),
(12, 99, 1),
(13, 100, 2),
(19, 106, 1),
(20, 107, 1),
(21, 108, 1),
(22, 109, 1),
(23, 110, 1),
(24, 111, 1),
(25, 112, 1),
(26, 113, 1),
(27, 114, 1),
(28, 115, 1),
(29, 116, 1),
(30, 117, 1),
(31, 118, 2),
(217, 304, 1),
(218, 305, 1),
(219, 306, 1),
(220, 307, 1),
(221, 308, 1),
(222, 309, 1),
(223, 310, 1),
(224, 311, 1),
(225, 312, 1),
(226, 313, 1),
(227, 314, 1),
(228, 315, 1),
(229, 316, 2),
(230, 317, 2),
(231, 318, 2),
(232, 319, 2),
(233, 320, 2),
(235, 322, 1),
(236, 323, 1),
(237, 324, 1),
(238, 325, 1),
(239, 326, 1),
(240, 327, 1),
(241, 328, 1),
(242, 329, 1),
(243, 330, 1),
(244, 331, 1),
(245, 332, 1),
(246, 333, 1),
(247, 334, 2),
(253, 340, 1),
(254, 341, 1),
(255, 342, 1),
(256, 343, 1),
(257, 344, 1),
(258, 345, 1),
(259, 346, 1),
(260, 347, 1),
(261, 348, 1),
(262, 349, 1),
(263, 350, 1),
(264, 351, 1),
(265, 352, 2),
(271, 358, 1),
(272, 359, 1),
(273, 360, 1),
(274, 361, 1),
(275, 362, 1),
(276, 363, 1),
(277, 364, 1),
(278, 365, 1),
(279, 366, 1),
(280, 367, 1),
(281, 368, 1),
(282, 369, 1),
(283, 370, 2),
(289, 376, 1),
(290, 377, 1),
(291, 378, 1),
(292, 379, 1),
(293, 380, 1),
(294, 381, 1),
(295, 382, 1),
(296, 383, 1),
(297, 384, 1),
(298, 385, 1),
(299, 386, 1),
(300, 387, 1),
(301, 388, 2),
(302, 389, 2),
(303, 390, 2),
(304, 391, 2),
(305, 392, 2),
(306, 393, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 3),
(17, 17, 3),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 4),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 5),
(27, 27, 5),
(28, 28, 5),
(29, 29, 6),
(30, 30, 6),
(31, 31, 6),
(32, 32, 6),
(33, 33, 6),
(34, 34, 6),
(35, 35, 7),
(36, 36, 7),
(37, 37, 7),
(38, 38, 8),
(39, 39, 8),
(40, 40, 8),
(41, 41, 8),
(42, 42, 8),
(43, 43, 9),
(44, 44, 9),
(45, 45, 9),
(46, 46, 9),
(47, 47, 9),
(48, 48, 9),
(49, 49, 9),
(50, 50, 9),
(51, 51, 9),
(52, 52, 9),
(53, 53, 9),
(54, 54, 10),
(55, 55, 10),
(56, 56, 10),
(57, 57, 10),
(58, 58, 10),
(59, 59, 10),
(60, 60, 11),
(61, 61, 11),
(62, 62, 11),
(63, 63, 11),
(64, 64, 12),
(65, 65, 12),
(66, 66, 12),
(67, 67, 12),
(68, 68, 12),
(69, 69, 12),
(70, 70, 13),
(71, 71, 13),
(72, 72, 13),
(73, 73, 13),
(74, 74, 13),
(75, 75, 13),
(76, 76, 14),
(77, 77, 14),
(78, 78, 14),
(79, 79, 14),
(80, 80, 14),
(81, 81, 14),
(82, 82, 15),
(83, 83, 15),
(84, 84, 15),
(85, 85, 15),
(86, 86, 15),
(87, 87, 15);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regoin`
--

CREATE TABLE `regoin` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regoin`
--

INSERT INTO `regoin` (`id`, `title`, `created_at`, `updated_at`, `country_id`) VALUES
(1, '{"en":"Cairo","ar":"القاهرة"}', '2017-11-25 18:07:48', '2017-11-25 18:07:48', 1),
(2, '{"en":"alex","ar":"الاسكندرية"}', '2017-11-25 18:08:06', '2017-11-25 18:08:06', 1),
(3, '{"en":"Giza","ar":"الجيزة"}', '2017-11-25 18:08:22', '2017-11-25 18:08:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `command` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `name`, `options`, `command`, `p`, `f`, `t`, `created_at`, `updated_at`) VALUES
(1, 'brand_maincat', 'brand,maincat,mtm,true,title,id,title,checkbox', 'laraflat:relation', 'brand', 'maincat', 'mtm', '2017-11-25 15:33:22', '2017-11-25 15:33:22'),
(2, 'user_car', 'user,car,otm,true,name,id,id,checkbox', 'laraflat:relation', 'user', 'car', 'otm', '2017-11-25 16:11:38', '2017-11-25 16:11:38'),
(3, 'brand_car', 'brand,car,otm,true,title,id,id,checkbox', 'laraflat:relation', 'brand', 'car', 'otm', '2017-11-25 16:20:21', '2017-11-25 16:20:21'),
(4, 'maincat_car', 'maincat,car,otm,true,title,id,id,checkbox', 'laraflat:relation', 'maincat', 'car', 'otm', '2017-11-25 16:22:05', '2017-11-25 16:22:05'),
(5, 'accessories_car', 'accessories,car,mtm,true,title,id,title,checkbox', 'laraflat:relation', 'accessories', 'car', 'mtm', '2017-11-25 16:29:07', '2017-11-25 16:29:07'),
(6, 'country_regoin', 'country,regoin,otm,true,title,id,id,checkbox', 'laraflat:relation', 'country', 'regoin', 'otm', '2017-11-25 18:05:37', '2017-11-25 18:05:37'),
(9, 'country_car', 'country,car,otm,true,title,id,price,checkbox', 'laraflat:relation', 'country', 'car', 'otm', '2017-11-25 18:34:09', '2017-11-25 18:34:09'),
(10, 'regoin_car', 'regoin,car,otm,true,title,id,price,checkbox', 'laraflat:relation', 'regoin', 'car', 'otm', '2017-11-25 18:35:56', '2017-11-25 18:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'CustomPermissionsController', 'CustomPermissionsController-admin', 'Access to All CustomPermissionsController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(2, 'PermissionController', 'PermissionController-admin', 'Access to All PermissionController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(3, 'CategorieController', 'CategorieController-admin', 'Access to All CategorieController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(4, 'CommandsController', 'CommandsController-admin', 'Access to All CommandsController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(5, 'ContactController', 'ContactController-admin', 'Access to All ContactController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(6, 'GroupController', 'GroupController-admin', 'Access to All GroupController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(7, 'HomeController', 'HomeController-admin', 'Access to All HomeController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(8, 'LogController', 'LogController-admin', 'Access to All LogController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(9, 'MenuController', 'MenuController-admin', 'Access to All MenuController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(10, 'PageController', 'PageController-admin', 'Access to All PageController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(11, 'RelationController', 'RelationController-admin', 'Access to All RelationController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(12, 'RoleController', 'RoleController-admin', 'Access to All RoleController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(13, 'SettingController', 'SettingController-admin', 'Access to All SettingController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(14, 'TranslationController', 'TranslationController-admin', 'Access to All TranslationController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(15, 'UserController', 'UserController-admin', 'Access to All UserController functions', '2017-11-25 15:03:52', '2017-11-25 15:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_setting` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `type`, `body_setting`, `created_at`, `updated_at`) VALUES
(1, 'siteTitle', 'text', 'LaraFlat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, '{"en":"Porsche 356","ar":"Porsche 356"}', 'Lorem ipsum dolor sit amet, consectetur ,\r\nsed do eiusmod tempor incididunt ut labore', '93905_1511654201.jpg', '2017-11-25 21:52:10', '2017-11-25 21:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `group_id`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$7.5JXO.ufNQMM3uOoLi0v.YoMyrJPsfiu/XPI2I49ohk6Lm.5GW8e', 1, 'wvMHjrCLjy0VICt4xW1Dta9ChUcT0jwyn0ewJSQDXZNWjqtR9MTZ3t0k1j3r', '17Jq9jUeBn3426BpEC78dnmD5LoHJh807mM6OnzLrKcN1pzVc3DMHdinUX8p', '2017-11-25 15:03:52', '2017-11-25 15:03:52'),
(2, 'test', 'test@gmail.com', '$2y$10$fZNrpQzE9Xtlz2d9JoRWy.FqDuvHTLxVmFMh01Lkxxtds1tQi5eba', 2, NULL, 'cElgLEvjqDUeOOlEAXC2pQfuVgXa9ttLj8xKLPwTw8MqPsuFCnCsfxTrjYUc', '2017-11-25 21:04:18', '2017-11-25 21:04:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accessories_car`
--
ALTER TABLE `accessories_car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accessories_car_car_id_foreign` (`car_id`),
  ADD KEY `accessories_car_accessories_id_foreign` (`accessories_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_maincat`
--
ALTER TABLE `brand_maincat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_maincat_maincat_id_foreign` (`maincat_id`),
  ADD KEY `brand_maincat_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_user_id_foreign` (`user_id`),
  ADD KEY `car_brand_id_foreign` (`brand_id`),
  ADD KEY `car_maincat_id_foreign` (`maincat_id`),
  ADD KEY `car_country_id_foreign` (`country_id`),
  ADD KEY `car_regoin_id_foreign` (`regoin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_role`
--
ALTER TABLE `group_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_role_group_id_foreign` (`group_id`),
  ADD KEY `group_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `links_slug_unique` (`slug`);

--
-- Indexes for table `link_views`
--
ALTER TABLE `link_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maincat`
--
ALTER TABLE `maincat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_group_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_group_group_id_foreign` (`group_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `regoin`
--
ALTER TABLE `regoin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regoin_country_id_foreign` (`country_id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `accessories_car`
--
ALTER TABLE `accessories_car`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `brand_maincat`
--
ALTER TABLE `brand_maincat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `command`
--
ALTER TABLE `command`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_role`
--
ALTER TABLE `group_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `link_views`
--
ALTER TABLE `link_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT for table `maincat`
--
ALTER TABLE `maincat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;
--
-- AUTO_INCREMENT for table `permission_group`
--
ALTER TABLE `permission_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regoin`
--
ALTER TABLE `regoin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessories_car`
--
ALTER TABLE `accessories_car`
  ADD CONSTRAINT `accessories_car_accessories_id_foreign` FOREIGN KEY (`accessories_id`) REFERENCES `accessories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accessories_car_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brand_maincat`
--
ALTER TABLE `brand_maincat`
  ADD CONSTRAINT `brand_maincat_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brand_maincat_maincat_id_foreign` FOREIGN KEY (`maincat_id`) REFERENCES `maincat` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `car_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `car_maincat_id_foreign` FOREIGN KEY (`maincat_id`) REFERENCES `maincat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `car_regoin_id_foreign` FOREIGN KEY (`regoin_id`) REFERENCES `regoin` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `car_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_role`
--
ALTER TABLE `group_role`
  ADD CONSTRAINT `group_role_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD CONSTRAINT `permission_group_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_group_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `regoin`
--
ALTER TABLE `regoin`
  ADD CONSTRAINT `regoin_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
