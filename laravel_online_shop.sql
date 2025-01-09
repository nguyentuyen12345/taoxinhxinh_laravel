-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 01:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Puma', 'puma', 1, '2023-05-21 09:53:22', '2023-05-21 09:53:22'),
(2, 'Sonata', 'sonata', 0, '2023-05-21 09:54:13', '2023-05-24 23:17:42'),
(6, 'Apple', 'apple', 1, '2023-05-24 23:17:53', '2023-05-24 23:17:53'),
(7, 'Samsung', 'samsung', 1, '2023-05-24 23:18:08', '2023-05-24 23:18:08'),
(8, 'One Plus', 'one-plus', 1, '2023-05-24 23:18:22', '2023-05-24 23:18:22'),
(9, 'Dell', 'dell', 1, '2023-05-24 23:18:58', '2023-05-24 23:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `showHome` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `showHome`, `created_at`, `updated_at`) VALUES
(1, 'Clothes', 'Clothes', NULL, 1, 'No', '2023-04-03 13:03:14', '2023-04-03 13:03:14'),
(2, 'Women\'s Clothes', 'womens-clothes', NULL, 0, 'No', '2023-04-03 13:09:47', '2023-04-03 13:09:47'),
(6, 'Watch', 'watch', NULL, 1, 'No', '2023-04-03 13:21:35', '2023-06-14 02:53:14'),
(21, 'Shoes', 'shoes', '21-1687381288.jpg', 1, 'Yes', '2023-04-03 13:21:36', '2023-06-21 15:31:32'),
(22, 'Laptop', 'laptop', '22-1687381322.jpg', 1, 'Yes', '2023-04-03 13:21:36', '2023-06-21 15:32:04'),
(23, 'Men', 'men', '23-1687381347.jpg', 1, 'Yes', '2023-04-03 13:21:36', '2023-06-21 15:32:28'),
(24, 'Women', 'women', '24-1687381364.jpg', 1, 'Yes', '2023-04-03 13:21:36', '2023-06-21 15:32:45'),
(27, 'Baby Products', 'baby-produts', NULL, 1, 'No', '2023-04-03 13:21:36', '2023-04-03 13:21:36'),
(28, 'Books', 'books', NULL, 1, 'No', '2023-04-03 13:21:36', '2023-04-03 13:21:36'),
(29, 'Fitness', 'fitness', NULL, 1, 'No', '2023-04-03 13:21:36', '2023-04-03 13:21:36'),
(30, 'Sports', 'sports', NULL, 1, 'No', '2023-04-03 13:21:36', '2023-04-03 13:21:36'),
(31, 'Toys', 'toys', NULL, 0, 'No', '2023-04-03 13:21:36', '2023-04-03 13:21:36'),
(32, 'Mobile', 'mobile', NULL, 0, 'No', '2023-04-03 13:21:36', '2023-04-03 13:21:36'),
(39, 'Dummy Category', 'dummy-category', NULL, 1, 'No', '2023-06-21 13:44:01', '2023-06-21 13:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'United States', 'US', NULL, NULL),
(2, 'Canada', 'CA', NULL, NULL),
(3, 'Afghanistan', 'AF', NULL, NULL),
(4, 'Albania', 'AL', NULL, NULL),
(5, 'Algeria', 'DZ', NULL, NULL),
(6, 'American Samoa', 'AS', NULL, NULL),
(7, 'Andorra', 'AD', NULL, NULL),
(8, 'Angola', 'AO', NULL, NULL),
(9, 'Anguilla', 'AI', NULL, NULL),
(10, 'Antarctica', 'AQ', NULL, NULL),
(11, 'Antigua and/or Barbuda', 'AG', NULL, NULL),
(12, 'Argentina', 'AR', NULL, NULL),
(13, 'Armenia', 'AM', NULL, NULL),
(14, 'Aruba', 'AW', NULL, NULL),
(15, 'Australia', 'AU', NULL, NULL),
(16, 'Austria', 'AT', NULL, NULL),
(17, 'Azerbaijan', 'AZ', NULL, NULL),
(18, 'Bahamas', 'BS', NULL, NULL),
(19, 'Bahrain', 'BH', NULL, NULL),
(20, 'Bangladesh', 'BD', NULL, NULL),
(21, 'Barbados', 'BB', NULL, NULL),
(22, 'Belarus', 'BY', NULL, NULL),
(23, 'Belgium', 'BE', NULL, NULL),
(24, 'Belize', 'BZ', NULL, NULL),
(25, 'Benin', 'BJ', NULL, NULL),
(26, 'Bermuda', 'BM', NULL, NULL),
(27, 'Bhutan', 'BT', NULL, NULL),
(28, 'Bolivia', 'BO', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', NULL, NULL),
(30, 'Botswana', 'BW', NULL, NULL),
(31, 'Bouvet Island', 'BV', NULL, NULL),
(32, 'Brazil', 'BR', NULL, NULL),
(33, 'British lndian Ocean Territory', 'IO', NULL, NULL),
(34, 'Brunei Darussalam', 'BN', NULL, NULL),
(35, 'Bulgaria', 'BG', NULL, NULL),
(36, 'Burkina Faso', 'BF', NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL),
(38, 'Cambodia', 'KH', NULL, NULL),
(39, 'Cameroon', 'CM', NULL, NULL),
(40, 'Cape Verde', 'CV', NULL, NULL),
(41, 'Cayman Islands', 'KY', NULL, NULL),
(42, 'Central African Republic', 'CF', NULL, NULL),
(43, 'Chad', 'TD', NULL, NULL),
(44, 'Chile', 'CL', NULL, NULL),
(45, 'China', 'CN', NULL, NULL),
(46, 'Christmas Island', 'CX', NULL, NULL),
(47, 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(48, 'Colombia', 'CO', NULL, NULL),
(49, 'Comoros', 'KM', NULL, NULL),
(50, 'Congo', 'CG', NULL, NULL),
(51, 'Cook Islands', 'CK', NULL, NULL),
(52, 'Costa Rica', 'CR', NULL, NULL),
(53, 'Croatia (Hrvatska)', 'HR', NULL, NULL),
(54, 'Cuba', 'CU', NULL, NULL),
(55, 'Cyprus', 'CY', NULL, NULL),
(56, 'Czech Republic', 'CZ', NULL, NULL),
(57, 'Democratic Republic of Congo', 'CD', NULL, NULL),
(58, 'Denmark', 'DK', NULL, NULL),
(59, 'Djibouti', 'DJ', NULL, NULL),
(60, 'Dominica', 'DM', NULL, NULL),
(61, 'Dominican Republic', 'DO', NULL, NULL),
(62, 'East Timor', 'TP', NULL, NULL),
(63, 'Ecudaor', 'EC', NULL, NULL),
(64, 'Egypt', 'EG', NULL, NULL),
(65, 'El Salvador', 'SV', NULL, NULL),
(66, 'Equatorial Guinea', 'GQ', NULL, NULL),
(67, 'Eritrea', 'ER', NULL, NULL),
(68, 'Estonia', 'EE', NULL, NULL),
(69, 'Ethiopia', 'ET', NULL, NULL),
(70, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL),
(71, 'Faroe Islands', 'FO', NULL, NULL),
(72, 'Fiji', 'FJ', NULL, NULL),
(73, 'Finland', 'FI', NULL, NULL),
(74, 'France', 'FR', NULL, NULL),
(75, 'France, Metropolitan', 'FX', NULL, NULL),
(76, 'French Guiana', 'GF', NULL, NULL),
(77, 'French Polynesia', 'PF', NULL, NULL),
(78, 'French Southern Territories', 'TF', NULL, NULL),
(79, 'Gabon', 'GA', NULL, NULL),
(80, 'Gambia', 'GM', NULL, NULL),
(81, 'Georgia', 'GE', NULL, NULL),
(82, 'Germany', 'DE', NULL, NULL),
(83, 'Ghana', 'GH', NULL, NULL),
(84, 'Gibraltar', 'GI', NULL, NULL),
(85, 'Greece', 'GR', NULL, NULL),
(86, 'Greenland', 'GL', NULL, NULL),
(87, 'Grenada', 'GD', NULL, NULL),
(88, 'Guadeloupe', 'GP', NULL, NULL),
(89, 'Guam', 'GU', NULL, NULL),
(90, 'Guatemala', 'GT', NULL, NULL),
(91, 'Guinea', 'GN', NULL, NULL),
(92, 'Guinea-Bissau', 'GW', NULL, NULL),
(93, 'Guyana', 'GY', NULL, NULL),
(94, 'Haiti', 'HT', NULL, NULL),
(95, 'Heard and Mc Donald Islands', 'HM', NULL, NULL),
(96, 'Honduras', 'HN', NULL, NULL),
(97, 'Hong Kong', 'HK', NULL, NULL),
(98, 'Hungary', 'HU', NULL, NULL),
(99, 'Iceland', 'IS', NULL, NULL),
(100, 'India', 'IN', NULL, NULL),
(101, 'Indonesia', 'ID', NULL, NULL),
(102, 'Iran (Islamic Republic of)', 'IR', NULL, NULL),
(103, 'Iraq', 'IQ', NULL, NULL),
(104, 'Ireland', 'IE', NULL, NULL),
(105, 'Israel', 'IL', NULL, NULL),
(106, 'Italy', 'IT', NULL, NULL),
(107, 'Ivory Coast', 'CI', NULL, NULL),
(108, 'Jamaica', 'JM', NULL, NULL),
(109, 'Japan', 'JP', NULL, NULL),
(110, 'Jordan', 'JO', NULL, NULL),
(111, 'Kazakhstan', 'KZ', NULL, NULL),
(112, 'Kenya', 'KE', NULL, NULL),
(113, 'Kiribati', 'KI', NULL, NULL),
(114, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL),
(115, 'Korea, Republic of', 'KR', NULL, NULL),
(116, 'Kuwait', 'KW', NULL, NULL),
(117, 'Kyrgyzstan', 'KG', NULL, NULL),
(118, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL),
(119, 'Latvia', 'LV', NULL, NULL),
(120, 'Lebanon', 'LB', NULL, NULL),
(121, 'Lesotho', 'LS', NULL, NULL),
(122, 'Liberia', 'LR', NULL, NULL),
(123, 'Libyan Arab Jamahiriya', 'LY', NULL, NULL),
(124, 'Liechtenstein', 'LI', NULL, NULL),
(125, 'Lithuania', 'LT', NULL, NULL),
(126, 'Luxembourg', 'LU', NULL, NULL),
(127, 'Macau', 'MO', NULL, NULL),
(128, 'Macedonia', 'MK', NULL, NULL),
(129, 'Madagascar', 'MG', NULL, NULL),
(130, 'Malawi', 'MW', NULL, NULL),
(131, 'Malaysia', 'MY', NULL, NULL),
(132, 'Maldives', 'MV', NULL, NULL),
(133, 'Mali', 'ML', NULL, NULL),
(134, 'Malta', 'MT', NULL, NULL),
(135, 'Marshall Islands', 'MH', NULL, NULL),
(136, 'Martinique', 'MQ', NULL, NULL),
(137, 'Mauritania', 'MR', NULL, NULL),
(138, 'Mauritius', 'MU', NULL, NULL),
(139, 'Mayotte', 'TY', NULL, NULL),
(140, 'Mexico', 'MX', NULL, NULL),
(141, 'Micronesia, Federated States of', 'FM', NULL, NULL),
(142, 'Moldova, Republic of', 'MD', NULL, NULL),
(143, 'Monaco', 'MC', NULL, NULL),
(144, 'Mongolia', 'MN', NULL, NULL),
(145, 'Montserrat', 'MS', NULL, NULL),
(146, 'Morocco', 'MA', NULL, NULL),
(147, 'Mozambique', 'MZ', NULL, NULL),
(148, 'Myanmar', 'MM', NULL, NULL),
(149, 'Namibia', 'NA', NULL, NULL),
(150, 'Nauru', 'NR', NULL, NULL),
(151, 'Nepal', 'NP', NULL, NULL),
(152, 'Netherlands', 'NL', NULL, NULL),
(153, 'Netherlands Antilles', 'AN', NULL, NULL),
(154, 'New Caledonia', 'NC', NULL, NULL),
(155, 'New Zealand', 'NZ', NULL, NULL),
(156, 'Nicaragua', 'NI', NULL, NULL),
(157, 'Niger', 'NE', NULL, NULL),
(158, 'Nigeria', 'NG', NULL, NULL),
(159, 'Niue', 'NU', NULL, NULL),
(160, 'Norfork Island', 'NF', NULL, NULL),
(161, 'Northern Mariana Islands', 'MP', NULL, NULL),
(162, 'Norway', 'NO', NULL, NULL),
(163, 'Oman', 'OM', NULL, NULL),
(164, 'Pakistan', 'PK', NULL, NULL),
(165, 'Palau', 'PW', NULL, NULL),
(166, 'Panama', 'PA', NULL, NULL),
(167, 'Papua New Guinea', 'PG', NULL, NULL),
(168, 'Paraguay', 'PY', NULL, NULL),
(169, 'Peru', 'PE', NULL, NULL),
(170, 'Philippines', 'PH', NULL, NULL),
(171, 'Pitcairn', 'PN', NULL, NULL),
(172, 'Poland', 'PL', NULL, NULL),
(173, 'Portugal', 'PT', NULL, NULL),
(174, 'Puerto Rico', 'PR', NULL, NULL),
(175, 'Qatar', 'QA', NULL, NULL),
(176, 'Republic of South Sudan', 'SS', NULL, NULL),
(177, 'Reunion', 'RE', NULL, NULL),
(178, 'Romania', 'RO', NULL, NULL),
(179, 'Russian Federation', 'RU', NULL, NULL),
(180, 'Rwanda', 'RW', NULL, NULL),
(181, 'Saint Kitts and Nevis', 'KN', NULL, NULL),
(182, 'Saint Lucia', 'LC', NULL, NULL),
(183, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL),
(184, 'Samoa', 'WS', NULL, NULL),
(185, 'San Marino', 'SM', NULL, NULL),
(186, 'Sao Tome and Principe', 'ST', NULL, NULL),
(187, 'Saudi Arabia', 'SA', NULL, NULL),
(188, 'Senegal', 'SN', NULL, NULL),
(189, 'Serbia', 'RS', NULL, NULL),
(190, 'Seychelles', 'SC', NULL, NULL),
(191, 'Sierra Leone', 'SL', NULL, NULL),
(192, 'Singapore', 'SG', NULL, NULL),
(193, 'Slovakia', 'SK', NULL, NULL),
(194, 'Slovenia', 'SI', NULL, NULL),
(195, 'Solomon Islands', 'SB', NULL, NULL),
(196, 'Somalia', 'SO', NULL, NULL),
(197, 'South Africa', 'ZA', NULL, NULL),
(198, 'South Georgia South Sandwich Islands', 'GS', NULL, NULL),
(199, 'Spain', 'ES', NULL, NULL),
(200, 'Sri Lanka', 'LK', NULL, NULL),
(201, 'St. Helena', 'SH', NULL, NULL),
(202, 'St. Pierre and Miquelon', 'PM', NULL, NULL),
(203, 'Sudan', 'SD', NULL, NULL),
(204, 'Suriname', 'SR', NULL, NULL),
(205, 'Svalbarn and Jan Mayen Islands', 'SJ', NULL, NULL),
(206, 'Swaziland', 'SZ', NULL, NULL),
(207, 'Sweden', 'SE', NULL, NULL),
(208, 'Switzerland', 'CH', NULL, NULL),
(209, 'Syrian Arab Republic', 'SY', NULL, NULL),
(210, 'Taiwan', 'TW', NULL, NULL),
(211, 'Tajikistan', 'TJ', NULL, NULL),
(212, 'Tanzania, United Republic of', 'TZ', NULL, NULL),
(213, 'Thailand', 'TH', NULL, NULL),
(214, 'Togo', 'TG', NULL, NULL),
(215, 'Tokelau', 'TK', NULL, NULL),
(216, 'Tonga', 'TO', NULL, NULL),
(217, 'Trinidad and Tobago', 'TT', NULL, NULL),
(218, 'Tunisia', 'TN', NULL, NULL),
(219, 'Turkey', 'TR', NULL, NULL),
(220, 'Turkmenistan', 'TM', NULL, NULL),
(221, 'Turks and Caicos Islands', 'TC', NULL, NULL),
(222, 'Tuvalu', 'TV', NULL, NULL),
(223, 'Uganda', 'UG', NULL, NULL),
(224, 'Ukraine', 'UA', NULL, NULL),
(225, 'United Arab Emirates', 'AE', NULL, NULL),
(226, 'United Kingdom', 'GB', NULL, NULL),
(227, 'United States minor outlying islands', 'UM', NULL, NULL),
(228, 'Uruguay', 'UY', NULL, NULL),
(229, 'Uzbekistan', 'UZ', NULL, NULL),
(230, 'Vanuatu', 'VU', NULL, NULL),
(231, 'Vatican City State', 'VA', NULL, NULL),
(232, 'Venezuela', 'VE', NULL, NULL),
(233, 'Vietnam', 'VN', NULL, NULL),
(234, 'Virgin Islands (British)', 'VG', NULL, NULL),
(235, 'Virgin Islands (U.S.)', 'VI', NULL, NULL),
(236, 'Wallis and Futuna Islands', 'WF', NULL, NULL),
(237, 'Western Sahara', 'EH', NULL, NULL),
(238, 'Yemen', 'YE', NULL, NULL),
(239, 'Yugoslavia', 'YU', NULL, NULL),
(240, 'Zaire', 'ZR', NULL, NULL),
(241, 'Zambia', 'ZM', NULL, NULL),
(242, 'Zimbabwe', 'ZW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `user_id`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `apartment`, `city`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(1, 4, 'Mohit 1', 'Singh 2', 'mohit@gmail.com', '121212', 100, 'dummy address 12/121, Near Park Road', '123456', 'Lucknow', 'UP', '226003', '2023-08-05 03:58:46', '2023-09-11 14:47:17'),
(2, 5, 'John S', 'Doe', 'john22@example.com', '23423423423', 100, 'Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address', '123456', 'Lucknow', 'UP', '123456', '2023-08-10 00:19:56', '2023-08-10 00:19:56'),
(3, 3, 'John X', 'Doe X', 'john@example.com', '123456', 12, 'Dummy address Dummy address  Dummy address Dummy address', '121212', 'Kanpur', 'UP', '2222', '2023-09-11 14:50:52', '2023-09-11 14:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `discount_coupons`
--

CREATE TABLE `discount_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_uses` int(11) DEFAULT NULL,
  `max_uses_user` int(11) DEFAULT NULL,
  `type` enum('percent','fixed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `discount_amount` double(10,2) NOT NULL,
  `min_amount` double(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `starts_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_coupons`
--

INSERT INTO `discount_coupons` (`id`, `code`, `name`, `description`, `max_uses`, `max_uses_user`, `type`, `discount_amount`, `min_amount`, `status`, `starts_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'IND2020', 'India', 'adadasdasd asdasd', 10, 1, 'fixed', 10.00, NULL, 1, '2023-08-16 09:23:35', '2023-08-30 09:23:41', '2023-08-15 03:53:54', '2023-08-15 03:53:54'),
(4, 'IND300', 'Dummy Name 30', 'Dummy Data', 2, 3, 'percent', 10.00, 800.00, 1, '2023-08-19 21:30:06', '2023-08-30 23:30:10', '2023-08-16 12:29:15', '2023-08-23 23:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_18_184914_alter_users_table', 2),
(7, '2023_04_03_175619_create_categories_table', 3),
(8, '2023_04_04_190135_create_temp_images_table', 4),
(12, '2023_05_15_173635_create_sub_categories_table', 5),
(14, '2023_05_20_171400_create_brands_table', 6),
(18, '2023_05_31_184403_create_products_table', 7),
(19, '2023_05_31_184421_create_product_images_table', 7),
(22, '2023_06_21_191008_alter_categories_table', 8),
(23, '2023_06_21_191617_alter_products_table', 9),
(24, '2023_06_21_193715_alter_sub_categories_table', 10),
(25, '2023_07_05_181537_alter_products_table', 11),
(26, '2023_07_25_044644_alter_users_table', 12),
(27, '2023_07_31_194322_create_countries_table', 13),
(30, '2023_08_05_083454_create_orders_table', 14),
(31, '2023_08_05_083525_create_order_items_table', 14),
(32, '2023_08_05_083557_create_customer_addresses_table', 14),
(34, '2023_08_08_041029_create_shipping_charges_table', 15),
(35, '2023_08_14_175302_create_discount_coupons_table', 16),
(36, '2023_08_22_111821_alter_orders_table', 17),
(37, '2023_08_26_050510_alter_orders_table', 18),
(38, '2023_08_31_080013_alter_orders_table', 19),
(39, '2023_09_03_184050_create_wishlists_table', 20),
(40, '2023_09_12_191828_alter_users_table', 21),
(41, '2023_09_21_043723_create_pages_table', 22),
(42, '2023_11_03_171048_create_product_ratings_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` double(10,2) NOT NULL,
  `shipping` double(10,2) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code_id` int(11) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `grand_total` double(10,2) NOT NULL,
  `payment_status` enum('paid','not paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not paid',
  `status` enum('pending','shipped','delivered','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `shipped_date` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `shipping`, `coupon_code`, `coupon_code_id`, `discount`, `grand_total`, `payment_status`, `status`, `shipped_date`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `apartment`, `city`, `state`, `zip`, `notes`, `created_at`, `updated_at`) VALUES
(2, 4, 700.00, 0.00, NULL, NULL, NULL, 700.00, 'not paid', 'pending', NULL, 'Mohit', 'Singh', 'mohit@example.com', '1234566', 100, 'dummy address dummy address dummy address dummy address dummy address dummy address dummy address', '121212', 'Lucknow', 'UP', '226003', NULL, '2023-08-05 04:25:34', '2023-08-05 04:25:34'),
(3, 4, 1500.00, 0.00, NULL, NULL, NULL, 1500.00, 'not paid', 'pending', NULL, 'Mohit', 'Singh', 'mohit@example.com', '1234566', 100, 'dummy address dummy address dummy address dummy address dummy address dummy address dummy address', '123456', 'Lucknow', 'UP', '226003', 'dummy address dummy address dummy address dummy address dummy address dummy address dummy address', '2023-08-05 04:35:29', '2023-08-05 04:35:29'),
(4, 4, 1000.00, 0.00, NULL, NULL, NULL, 1000.00, 'not paid', 'pending', NULL, 'Mohit', 'Singh', 'mohit@example.com', '1234566', 100, 'dummy address dummy address dummy address dummy address dummy address dummy address dummy address', NULL, 'Lucknow', 'UP', '226003', NULL, '2023-08-05 04:45:09', '2023-08-05 04:45:09'),
(5, 4, 5.00, 0.00, NULL, NULL, NULL, 5.00, 'not paid', 'pending', NULL, 'Mohit', 'Singh', 'mohit@example.com', '1234566', 100, 'dummy address dummy address dummy address dummy address dummy address dummy address dummy address', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-08-05 04:46:46', '2023-08-05 04:46:46'),
(6, 4, 700.00, 0.00, NULL, NULL, NULL, 700.00, 'not paid', 'pending', NULL, 'Mohit', 'Singh', 'mohit@example.com', '1234566', 100, 'dummy address dummy address dummy address dummy address dummy address dummy address dummy address', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-08-05 11:19:03', '2023-08-05 11:19:03'),
(7, 4, 1700.00, 10.20, NULL, NULL, NULL, 1710.20, 'not paid', 'pending', NULL, 'Mohit', 'Singh', 'mohit@example.com', '1234566', 2, 'dummy address dummy address dummy address dummy address dummy address dummy address dummy address', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-08-10 00:12:22', '2023-08-10 00:12:22'),
(8, 5, 700.00, 10.00, NULL, NULL, NULL, 710.00, 'not paid', 'pending', NULL, 'John S', 'Doe', 'john22@example.com', '23423423423', 100, 'Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address Dummy address', '123456', 'Lucknow', 'UP', '123456', NULL, '2023-08-10 00:19:57', '2023-08-10 00:19:57'),
(9, 4, 700.00, 5.10, 'IND300', 4, 70.00, 635.10, 'not paid', 'pending', NULL, 'Mohit', 'Singh', 'mohit@example.com', '1234566', 2, 'dummy address dummy address dummy address dummy address dummy address dummy address dummy address', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-08-22 11:22:03', '2023-08-22 11:22:03'),
(10, 4, 1700.00, 10.20, 'IND300', 4, 170.00, 1540.20, 'not paid', 'delivered', NULL, 'Mohit', 'Singh', 'mohit@example.com', '1234566', 2, 'dummy address dummy address dummy address dummy address dummy address dummy address dummy address', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-08-23 23:28:32', '2023-08-23 23:28:32'),
(12, 4, 16.00, 5.10, '', NULL, 0.00, 21.10, 'not paid', 'cancelled', '2023-08-30 08:56:15', 'Mohit', 'Singh', 'mohit@example.com', '1234566', 2, 'dummy address dummy address dummy address dummy address dummy address dummy address dummy address', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-08-26 00:23:55', '2023-10-06 22:55:56'),
(13, 4, 705.00, 10.20, 'IND2020', 2, 10.00, 705.20, 'not paid', 'cancelled', '2023-08-31 08:24:52', 'Mohit', 'Singh', 'mohit@example.com', '1234566', 2, 'dummy address 12/121, Near Park Road', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-08-27 13:29:30', '2023-08-31 03:17:20'),
(14, 4, 100.00, 5.10, '', NULL, 0.00, 105.10, 'not paid', 'pending', NULL, 'Mohit', 'Singh', 'mohitsingh@gmail.com', '1234566', 2, 'dummy address 12/121, Near Park Road', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-09-02 03:31:06', '2023-09-02 03:31:06'),
(15, 4, 1000.00, 5.10, '', NULL, 0.00, 1005.10, 'not paid', 'delivered', NULL, 'Mohit', 'Singh', 'mohitsingh@gmail.com', '1234566', 2, 'dummy address 12/121, Near Park Road', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-09-02 03:34:35', '2023-10-06 22:55:33'),
(16, 4, 1400.00, 10.20, '', NULL, 0.00, 1410.20, 'not paid', 'pending', NULL, 'Mohit', 'Singh', 'mohitsingh@gmail.com', '1234566', 2, 'dummy address 12/121, Near Park Road', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-09-03 15:14:56', '2023-09-03 15:14:56'),
(17, 4, 700.00, 5.10, '', NULL, 0.00, 705.10, 'not paid', 'delivered', NULL, 'Mohit', 'Singh', 'mohitsingh@gmail.com', '1234566', 2, 'dummy address 12/121, Near Park Road', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-09-03 15:16:00', '2023-10-06 22:55:21'),
(18, 4, 1400.00, 10.20, '', NULL, 0.00, 1410.20, 'not paid', 'pending', NULL, 'Mohit', 'Singh', 'mohitsingh@gmail.com', '1234566', 2, 'dummy address 12/121, Near Park Road', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-09-03 15:16:36', '2023-09-03 15:16:36'),
(19, 4, 5.00, 10.00, '', NULL, 0.00, 15.00, 'not paid', 'shipped', NULL, 'Mohit 1', 'Singh 2', 'mohit@gmail.com', '121212', 100, 'dummy address 12/121, Near Park Road', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-10-06 22:50:22', '2023-10-06 22:55:01'),
(20, 4, 400.00, 10.00, '', NULL, 0.00, 410.00, 'not paid', 'delivered', NULL, 'Mohit 1', 'Singh 2', 'mohit@gmail.com', '121212', 100, 'dummy address 12/121, Near Park Road', '123456', 'Lucknow', 'UP', '226003', NULL, '2023-10-06 22:50:49', '2023-10-06 22:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 25, 'Nike Sport Shoes', 1, 700.00, 700.00, '2023-08-05 04:25:34', '2023-08-05 04:25:34'),
(2, 3, 25, 'Nike Sport Shoes', 1, 700.00, 700.00, '2023-08-05 04:35:30', '2023-08-05 04:35:30'),
(3, 3, 21, 'Macbook Pro', 2, 400.00, 800.00, '2023-08-05 04:35:30', '2023-08-05 04:35:30'),
(4, 4, 23, 'Macbook Air', 1, 1000.00, 1000.00, '2023-08-05 04:45:09', '2023-08-05 04:45:09'),
(5, 5, 20, 'Indulge in Comfort with Premium Men\'s T-Shirts', 1, 5.00, 5.00, '2023-08-05 04:46:46', '2023-08-05 04:46:46'),
(6, 6, 25, 'Nike Sport Shoes', 1, 700.00, 700.00, '2023-08-05 11:19:03', '2023-08-05 11:19:03'),
(7, 7, 25, 'Nike Sport Shoes', 1, 700.00, 700.00, '2023-08-10 00:12:22', '2023-08-10 00:12:22'),
(8, 7, 23, 'Macbook Air', 1, 1000.00, 1000.00, '2023-08-10 00:12:22', '2023-08-10 00:12:22'),
(9, 8, 25, 'Nike Sport Shoes', 1, 700.00, 700.00, '2023-08-10 00:19:57', '2023-08-10 00:19:57'),
(10, 9, 25, 'Nike Sport Shoes', 1, 700.00, 700.00, '2023-08-22 11:22:04', '2023-08-22 11:22:04'),
(11, 10, 25, 'Nike Sport Shoes', 1, 700.00, 700.00, '2023-08-23 23:28:33', '2023-08-23 23:28:33'),
(12, 10, 23, 'Macbook Air', 1, 1000.00, 1000.00, '2023-08-23 23:28:33', '2023-08-23 23:28:33'),
(14, 12, 18, 'GoddessVibe Denim: Channel Your Inner Goddess', 1, 16.00, 16.00, '2023-08-26 00:23:55', '2023-08-26 00:23:55'),
(15, 13, 25, 'Nike Sport Shoes', 1, 700.00, 700.00, '2023-08-27 13:29:30', '2023-08-27 13:29:30'),
(16, 13, 19, 'ClassicComfort: Timeless Appeal in Men\'s T-Shirts', 1, 5.00, 5.00, '2023-08-27 13:29:30', '2023-08-27 13:29:30'),
(17, 14, 24, 'Nike Shoes for running', 1, 100.00, 100.00, '2023-09-02 03:31:06', '2023-09-02 03:31:06'),
(18, 15, 23, 'Macbook Air', 1, 1000.00, 1000.00, '2023-09-02 03:34:35', '2023-09-02 03:34:35'),
(19, 16, 25, 'Nike Sport Shoes', 2, 700.00, 1400.00, '2023-09-03 15:14:56', '2023-09-03 15:14:56'),
(20, 17, 25, 'Nike Sport Shoes', 1, 700.00, 700.00, '2023-09-03 15:16:00', '2023-09-03 15:16:00'),
(21, 18, 25, 'Nike Sport Shoes', 2, 700.00, 1400.00, '2023-09-03 15:16:37', '2023-09-03 15:16:37'),
(22, 19, 20, 'Indulge in Comfort with Premium Men\'s T-Shirts', 1, 5.00, 5.00, '2023-10-06 22:50:22', '2023-10-06 22:50:22'),
(23, 20, 21, 'Macbook Pro', 1, 400.00, 400.00, '2023-10-06 22:50:49', '2023-10-06 22:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(3, 'Contact Us', 'contact-us', '<p><span style=\"font-size: 1rem;\">Hello It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content.</span><br></p>\r\n                <address>\r\n                Cecilia Chapman <br>\r\n                711-2880 Nulla St.<br> \r\n                Mankato Mississippi 96522<br>\r\n                <a href=\"tel:+(XXX) 555-2368\">(XXX) 555-2368</a><br>\r\n                <a href=\"mailto:jim@rock.com\">jim@rock.com</a>\r\n                </address>', '2023-09-23 02:56:31', '2023-10-02 23:07:31'),
(4, 'About Us', 'about-us', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><p> It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br></p><p>\r\n\r\n\r\n\r\n</p>', '2023-09-23 02:57:26', '2023-09-23 12:52:19'),
(5, 'Terms & Conditions', 'terms-conditions', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p><p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br></p><p>\r\n\r\n</p>', '2023-09-23 02:58:48', '2023-09-23 12:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('mark@example.com', 'ZT3kwQ4z640MBRst7NLXfOviNlekOd0bcvQSGcA8CBZpBn0aYD6sdeR8Efvv', '2023-10-05 04:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_returns` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_products` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `compare_price` double(10,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track_qty` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `qty` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Dummy product 12', 'dummy-product-12', '', NULL, NULL, NULL, 10.00, 100.00, 28, 6, 9, 'No', 'vvvvv', NULL, 'Yes', 13, 1, '2023-06-05 13:33:29', '2023-06-05 13:33:29'),
(5, 'Puma Shoes', 'puma-shoes', '', NULL, NULL, NULL, 100.00, 150.00, 30, NULL, NULL, 'No', 'SKU-001', 'Barcode-01', 'Yes', 10, 1, '2023-06-07 13:26:35', '2023-06-07 13:26:35'),
(7, 'Samsung Galaxy', 'samsung-galaxy', '', NULL, NULL, NULL, 100.00, 120.00, 32, 15, 7, 'No', 'SKU-003', 'BARCODE-003', 'Yes', 15, 1, '2023-06-07 23:15:01', '2023-06-14 02:27:08'),
(8, 'Dell laptop', 'dell-laptop', '', NULL, NULL, NULL, 250.00, 300.00, 22, 11, 9, 'Yes', 'SKU-0041', 'BARCODE-0041', 'Yes', 151, 0, '2023-06-07 23:42:57', '2023-06-14 02:25:23'),
(12, 'Iphone 14', 'iphone-14', '', NULL, NULL, NULL, 200.00, 250.00, 32, 10, 6, 'Yes', 'SKU-0021', NULL, 'Yes', 10, 1, '2023-06-13 03:23:47', '2023-06-14 02:13:58'),
(13, 'FlexDenim: The Next-Level Comfort for Men', 'flexdenim-the-next-level-comfort-for-men', '', NULL, NULL, NULL, 20.00, 25.00, 23, 16, NULL, 'Yes', 'SKU-0020', NULL, 'Yes', 10, 1, '2023-06-14 02:35:09', '2023-06-14 02:35:09'),
(14, 'UltimaFit Jeans: Unleash Your Perfect Fit', 'ultimafit-jeans-unleash-your-perfect-fit', '', NULL, NULL, NULL, 15.00, 20.00, 23, 16, NULL, 'Yes', 'SKU-0022', NULL, 'Yes', 10, 1, '2023-06-14 02:36:28', '2023-06-14 02:36:28'),
(15, 'VogueVenture Jeans: Where Style Meets Adventure', 'vogueventure-jeans-where-style-meets-adventure', '', NULL, NULL, NULL, 10.00, 12.00, 23, 16, NULL, 'No', 'SKU-0024', NULL, 'Yes', 10, 1, '2023-06-14 02:37:53', '2023-06-14 02:37:53'),
(16, 'ElevateFit Denim: Your Go-To Jeans for Effortless Sophistication', 'elevatefit-denim-your-go-to-jeans-for-effortless-sophistication', '', NULL, NULL, NULL, 10.00, 12.00, 24, 17, NULL, 'Yes', 'SKU-0025', NULL, 'Yes', 12, 1, '2023-06-14 02:40:38', '2023-06-14 02:40:38'),
(17, 'GlamorFlex Jeans: Unleash Your Glamorous Side', 'glamorflex-jeans-unleash-your-glamorous-side', '', NULL, NULL, NULL, 10.00, 15.00, 24, 17, NULL, 'Yes', 'SKU-0027', NULL, 'Yes', 12, 1, '2023-06-14 02:41:37', '2023-06-14 02:41:37'),
(18, 'GoddessVibe Denim: Channel Your Inner Goddess', 'goddessvibe-denim-channel-your-inner-goddess', '', NULL, NULL, NULL, 16.00, 17.00, 24, 17, NULL, 'Yes', 'SKU-0028', NULL, 'Yes', 20, 1, '2023-06-14 02:42:39', '2023-06-14 02:42:39'),
(19, 'ClassicComfort: Timeless Appeal in Men\'s T-Shirts', 'classiccomfort-timeless-appeal-in-mens-t-shirts', '', NULL, NULL, NULL, 5.00, 7.00, 23, 18, NULL, 'No', 'SKU-0029', NULL, 'Yes', 12, 1, '2023-06-14 02:46:40', '2023-06-14 02:46:40'),
(20, 'Indulge in Comfort with Premium Men\'s T-Shirts', 'indulge-in-comfort-with-premium-mens-t-shirts', '', NULL, NULL, NULL, 5.00, 7.00, 23, 18, NULL, 'Yes', 'SKU-0042', NULL, 'Yes', 11, 1, '2023-06-14 02:47:49', '2023-10-06 22:50:22'),
(21, 'Macbook Pro', 'macbook-pro', '', NULL, NULL, NULL, 400.00, 450.00, 22, 14, 6, 'Yes', 'SKU-0030', NULL, 'Yes', 11, 1, '2023-06-14 02:50:18', '2023-10-06 22:50:49'),
(22, 'Smart Watch for men', 'smart-watch-for-men', '', NULL, NULL, NULL, 30.00, 32.00, 6, 20, NULL, 'No', 'SKU-0031', NULL, 'Yes', 12, 1, '2023-06-14 02:53:41', '2023-06-14 02:53:54'),
(23, 'Macbook Air', 'macbook-air', NULL, NULL, NULL, '8,21', 1000.00, 1100.00, 22, 14, 6, 'Yes', 'SKU-0036', NULL, 'Yes', 0, 1, '2023-06-14 02:55:14', '2023-09-03 15:26:25'),
(24, 'Nike Shoes for running', 'nike-shoes-for-running', '', NULL, NULL, NULL, 100.00, 120.00, 21, NULL, NULL, 'No', 'SKU-038', NULL, 'Yes', 9, 1, '2023-06-14 02:57:03', '2023-06-14 02:57:03'),
(25, 'Nike Sport Shoes', 'nike-sport-shoes', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Autem, temporibus atque nihil mollitia, debitis maxime labore odio explicabo laboriosam qui nemo architecto numquam ad natus possimus optio dolorem in molestias.\r\n</p><p>\r\n            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos, odit eos reiciendis sapiente rerum ducimus fuga quisquam? Quisquam eveniet, porro numquam nostrum obcaecati architecto, modi perspiciatis, blanditiis nemo facere voluptatum?</p>', '<p>Short Description</p><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Autem, temporibus atque nihil mollitia, debitis maxime labore odio explicabo laboriosam qui nemo architecto numquam ad natus possimus optio dolorem in molestias.</p><p><br></p>', '<p>Shipping &amp; Returns</p><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Autem, temporibus atque nihil mollitia, debitis maxime labore odio explicabo laboriosam qui nemo architecto numquam ad natus possimus optio dolorem in molestias.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos, odit eos reiciendis sapiente rerum ducimus fuga quisquam? Quisquam eveniet, porro numquam nostrum obcaecati architecto, modi perspiciatis, blanditiis nemo facere voluptatum?</p>', '13,19,22,25', 700.00, 800.00, 21, NULL, NULL, 'Yes', 'SKU-039', NULL, 'Yes', 0, 1, '2023-06-14 02:58:55', '2023-09-03 15:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(4, 5, '5-4-1686164195.jpg', NULL, '2023-06-07 13:26:35', '2023-06-07 13:26:35'),
(5, 5, '5-5-1686164196.jpg', NULL, '2023-06-07 13:26:36', '2023-06-07 13:26:36'),
(6, 7, '7-6-1686199502.png', NULL, '2023-06-07 23:15:02', '2023-06-07 23:15:02'),
(14, 12, '12-14-1686646565.jpg', NULL, '2023-06-13 03:26:05', '2023-06-13 03:26:05'),
(15, 12, '12-15-1686727793.jpg', NULL, '2023-06-14 01:59:53', '2023-06-14 01:59:53'),
(16, 8, '8-16-1686729071.jpg', NULL, '2023-06-14 02:21:10', '2023-06-14 02:21:11'),
(17, 8, '8-17-1686729075.jpg', NULL, '2023-06-14 02:21:15', '2023-06-14 02:21:15'),
(18, 8, '8-18-1686729091.jpg', NULL, '2023-06-14 02:21:30', '2023-06-14 02:21:31'),
(19, 13, '13-19-1686729909.jpg', NULL, '2023-06-14 02:35:09', '2023-06-14 02:35:09'),
(20, 13, '13-20-1686729911.jpg', NULL, '2023-06-14 02:35:11', '2023-06-14 02:35:11'),
(21, 13, '13-21-1686729914.jpg', NULL, '2023-06-14 02:35:13', '2023-06-14 02:35:14'),
(22, 14, '14-22-1686729989.jpg', NULL, '2023-06-14 02:36:29', '2023-06-14 02:36:29'),
(23, 14, '14-23-1686729991.jpg', NULL, '2023-06-14 02:36:30', '2023-06-14 02:36:31'),
(24, 15, '15-24-1686730073.jpg', NULL, '2023-06-14 02:37:53', '2023-06-14 02:37:53'),
(25, 16, '16-25-1686730239.jpg', NULL, '2023-06-14 02:40:39', '2023-06-14 02:40:39'),
(26, 16, '16-26-1686730240.jpg', NULL, '2023-06-14 02:40:40', '2023-06-14 02:40:40'),
(27, 17, '17-27-1686730297.jpg', NULL, '2023-06-14 02:41:37', '2023-06-14 02:41:37'),
(28, 17, '17-28-1686730299.jpg', NULL, '2023-06-14 02:41:39', '2023-06-14 02:41:39'),
(29, 18, '18-29-1686730360.jpg', NULL, '2023-06-14 02:42:39', '2023-06-14 02:42:40'),
(30, 18, '18-30-1686730361.jpg', NULL, '2023-06-14 02:42:41', '2023-06-14 02:42:41'),
(31, 19, '19-31-1686730600.jpg', NULL, '2023-06-14 02:46:40', '2023-06-14 02:46:40'),
(32, 20, '20-32-1686730669.jpg', NULL, '2023-06-14 02:47:49', '2023-06-14 02:47:49'),
(33, 21, '21-33-1686730818.jpg', NULL, '2023-06-14 02:50:18', '2023-06-14 02:50:18'),
(34, 21, '21-34-1686730823.jpg', NULL, '2023-06-14 02:50:22', '2023-06-14 02:50:23'),
(35, 22, '22-35-1686731022.jpg', NULL, '2023-06-14 02:53:42', '2023-06-14 02:53:42'),
(36, 22, '22-36-1686731023.jpg', NULL, '2023-06-14 02:53:43', '2023-06-14 02:53:43'),
(37, 23, '23-37-1686731114.jpg', NULL, '2023-06-14 02:55:14', '2023-06-14 02:55:14'),
(38, 23, '23-38-1686731121.jpg', NULL, '2023-06-14 02:55:21', '2023-06-14 02:55:21'),
(39, 24, '24-39-1686731223.jpg', NULL, '2023-06-14 02:57:03', '2023-06-14 02:57:03'),
(40, 24, '24-40-1686731225.jpg', NULL, '2023-06-14 02:57:05', '2023-06-14 02:57:05'),
(41, 25, '25-41-1686731335.jpg', NULL, '2023-06-14 02:58:55', '2023-06-14 02:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(3,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `product_id`, `username`, `email`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 25, 'Mohit Singh', 'mohit@example.com', 'Good Product!!', 5.00, 0, '2023-11-03 12:17:41', '2023-11-03 12:17:41'),
(2, 25, 'John Doe', 'john@example.com', 'Awesome Product !!', 4.00, 1, '2023-11-03 12:21:38', '2023-11-17 13:37:51'),
(3, 25, 'Mark Wood', 'mark@example.com', 'My experience was really bad.', 3.00, 1, '2023-11-07 12:58:59', '2023-11-17 13:37:15'),
(4, 23, 'Mohit Singh', 'mohit@xyz.com', 'Nice Product !!', 5.00, 0, '2023-11-18 04:36:04', '2023-11-18 04:36:04'),
(5, 18, 'Kelly Kelly', 'kelly@xyz.com', 'Good Fit !!', 4.00, 0, '2023-11-18 04:37:04', '2023-11-18 04:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country_id`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'rest_of_world', 50.00, '2023-08-07 23:45:57', '2023-08-07 23:45:57'),
(5, '100', 10.00, '2023-08-08 00:00:11', '2023-08-08 00:00:11'),
(6, '1', 10.00, '2023-08-08 00:00:20', '2023-08-08 00:00:20'),
(7, '2', 5.10, '2023-08-10 00:03:32', '2023-08-10 00:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `showHome` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `showHome`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 'Motivation', 'motivation', 1, 'No', 28, '2023-05-20 01:19:32', '2023-05-20 01:19:32'),
(6, 'Business', 'business', 1, 'No', 28, '2023-05-20 01:19:57', '2023-05-20 01:19:57'),
(7, 'Shoes', 'shoes', 1, 'No', 30, '2023-05-20 01:20:24', '2023-05-20 01:20:24'),
(8, 'Watch', 'watch', 1, 'No', 30, '2023-05-20 01:21:22', '2023-05-20 01:21:22'),
(9, 'Girls', 'girls', 1, 'No', 31, '2023-05-20 01:21:46', '2023-05-20 01:21:46'),
(10, 'Apple', 'apple', 1, 'No', 32, '2023-06-14 01:59:29', '2023-06-14 01:59:29'),
(11, 'Dell', 'dell', 1, 'No', 22, '2023-06-14 02:16:25', '2023-06-14 02:16:25'),
(12, 'ASUS', 'asus', 1, 'No', 22, '2023-06-14 02:16:43', '2023-06-14 02:16:43'),
(13, 'Sony', 'sony', 1, 'No', 22, '2023-06-14 02:16:55', '2023-06-14 02:16:55'),
(14, 'mac', 'mac', 1, 'No', 22, '2023-06-14 02:17:24', '2023-06-14 02:17:24'),
(15, 'samsung', 'samsung', 1, 'No', 32, '2023-06-14 02:26:53', '2023-06-14 02:26:53'),
(16, 'Jeans', 'jeans', 1, 'No', 23, '2023-06-14 02:30:18', '2023-06-14 02:30:18'),
(17, 'Jeans', 'jeans-women', 1, 'No', 24, '2023-06-14 02:31:43', '2023-06-21 14:42:17'),
(18, 'T-Shirt', 't-shirt', 1, 'No', 23, '2023-06-14 02:45:22', '2023-06-14 02:45:22'),
(19, 'T-Shirt', 'women-t-shirt', 1, 'No', 24, '2023-06-14 02:45:36', '2023-06-14 02:45:36'),
(20, 'Smart', 'smart', 1, 'No', 6, '2023-06-14 02:53:34', '2023-06-14 02:53:34'),
(24, 'Oil', 'oil', 1, 'No', 27, '2023-06-21 14:21:28', '2023-06-21 14:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(101, '1700505370.jpg', '2023-11-20 13:06:10', '2023-11-20 13:06:10'),
(102, '1700505376.jpg', '2023-11-20 13:06:16', '2023-11-20 13:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', NULL, 2, 1, NULL, '$2y$10$R0qJHlU1wm6inyumJR0TC.MVUKC/gpwVNKTEGAKwXk.UilJMrZNte', NULL, '2023-03-18 13:24:00', '2023-09-23 15:07:07'),
(2, 'Mohit Singh', 'mohit@example.com', NULL, 1, 1, NULL, '$2y$10$oSmB72z6XEyVSFsYMo8AQe2MN1ysPc2C5UxwJUXdWw4yxhKqnhCua', NULL, '2023-03-18 13:25:36', '2023-03-18 13:25:36'),
(3, 'John Doe', 'john@example.com', '123456789', 1, 1, NULL, '$2y$10$x8VfL1KSAYxPSf1vluZ2j.mQH9iZ6I3ujVR9BlPi1Lo3i5Pd93Ezu', NULL, '2023-07-24 23:25:48', '2023-07-24 23:25:48'),
(4, 'Mohit Singh', 'mark@example.com', '3333333', 1, 1, NULL, '$2y$10$H.mMaD76We4isVb26UzlvOafUpCZz.SY/cqpwJQvV5jQmZhLe3NX.', NULL, '2023-07-24 23:36:14', '2023-10-05 00:31:02'),
(5, 'John', 'john22@example.com', '123456789', 1, 1, NULL, '$2y$10$x8VfL1KSAYxPSf1vluZ2j.mQH9iZ6I3ujVR9BlPi1Lo3i5Pd93Ezu', NULL, '2023-08-10 00:14:17', '2023-08-10 00:14:17'),
(7, 'Mark Doe', 'markdoe@example.com', '123456', 1, 1, NULL, '$2y$10$x8VfL1KSAYxPSf1vluZ2j.mQH9iZ6I3ujVR9BlPi1Lo3i5Pd93Ezu', NULL, '2023-09-12 14:53:26', '2023-09-12 14:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(13, 4, 25, '2023-09-03 14:56:45', '2023-09-03 14:56:45'),
(14, 4, 21, '2023-09-03 14:58:09', '2023-09-03 14:58:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_addresses_user_id_foreign` (`user_id`),
  ADD KEY `customer_addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_country_id_foreign` (`country_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ratings_product_id_foreign` (`product_id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD CONSTRAINT `product_ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
