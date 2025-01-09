-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 08, 2025 lúc 09:06 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ilux_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
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
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `showHome`, `created_at`, `updated_at`) VALUES
(2, 'Women\'s Clothes', 'womens-clothes', NULL, 0, 'No', '2023-04-03 13:09:47', '2023-04-03 13:09:47'),
(21, 'IPAD', 'ipad', '21-1735964060.jpg', 1, 'Yes', '2023-04-03 13:21:36', '2025-01-03 21:14:20'),
(22, 'IPHONE', 'iphone', '22-1735963943.jpg', 1, 'Yes', '2023-04-03 13:21:36', '2025-01-03 21:12:23'),
(23, 'MACBOOK', 'macbook', '23-1735963992.jpg', 1, 'Yes', '2023-04-03 13:21:36', '2025-01-03 21:13:12'),
(24, 'AIRPODS', 'airpods', '24-1735964141.jpg', 1, 'Yes', '2023-04-03 13:21:36', '2025-01-03 21:15:41'),
(27, 'PHỤ KIỆN', 'phu-kien', '27-1735964328.jpg', 0, 'Yes', '2023-04-03 13:21:36', '2025-01-06 02:13:29'),
(39, 'APPLE WATCH', 'apple-watch', '39-1735964224.jpg', 1, 'Yes', '2023-06-21 13:44:01', '2025-01-03 21:17:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `countries`
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
-- Cấu trúc bảng cho bảng `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `user_id`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `apartment`, `city`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(4, 8, 'tuyền', 'mỹ tuyền', 'nguyentuyen12122003@gmail.com', '0528358715', 18, 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'dddddđ', 'dđ', 'kkk', 'mmmmmmmmm', '2025-01-02 05:52:36', '2025-01-02 05:52:36'),
(5, 9, 'tuyền', 'mỹ tuyền', 'nguyentuyen12122003@gmail.com', '0528358715', 17, 'ddddddddddddddddffffffffffffffffffffff', 'fffffffffffffff', 'dđ', 'ffffffff', 'ggggggg', '2025-01-02 22:31:36', '2025-01-02 22:31:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_coupons`
--

CREATE TABLE `discount_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `max_uses` int(11) DEFAULT NULL,
  `max_uses_user` int(11) DEFAULT NULL,
  `type` enum('percent','fixed') NOT NULL DEFAULT 'fixed',
  `discount_amount` double(10,2) NOT NULL,
  `min_amount` double(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `starts_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_coupons`
--

INSERT INTO `discount_coupons` (`id`, `code`, `name`, `description`, `max_uses`, `max_uses_user`, `type`, `discount_amount`, `min_amount`, `status`, `starts_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'IND2020', 'India', 'adadasdasd asdasd', 10, 1, 'fixed', 10.00, NULL, 1, '2023-08-16 09:23:35', '2023-08-30 09:23:41', '2023-08-15 03:53:54', '2023-08-15 03:53:54'),
(4, 'IND300', 'Dummy Name 30', 'Dummy Data', 2, 3, 'percent', 10.00, 800.00, 1, '2023-08-19 21:30:06', '2023-08-30 23:30:10', '2023-08-16 12:29:15', '2023-08-23 23:28:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` double(10,2) NOT NULL,
  `shipping` double(10,2) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_code_id` int(11) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `grand_total` double(10,2) NOT NULL,
  `payment_status` enum('paid','not paid') NOT NULL DEFAULT 'not paid',
  `status` enum('pending','shipped','delivered','cancelled') NOT NULL DEFAULT 'pending',
  `shipped_date` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `shipping`, `coupon_code`, `coupon_code_id`, `discount`, `grand_total`, `payment_status`, `status`, `shipped_date`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `apartment`, `city`, `state`, `zip`, `notes`, `created_at`, `updated_at`) VALUES
(21, 9, 100.00, 50.00, '', NULL, 0.00, 150.00, 'not paid', 'shipped', NULL, 'tuyền', 'mỹ tuyền', 'nguyentuyen12122003@gmail.com', '0528358715', 17, 'ddddddddddddddddffffffffffffffffffffff', 'fffffffffffffff', 'dđ', 'ffffffff', 'ggggggg', 'dddddddddddd', '2025-01-02 22:31:36', '2025-01-04 00:46:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
(24, 21, 24, 'Nike Shoes for running', 1, 100.00, 100.00, '2025-01-02 22:31:36', '2025-01-02 22:31:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(3, 'Tin tức', 'tin-tuc', '<h3> <strong>Tin Tức Mới Nhất Về iPhone 16 Pro Max – Siêu Phẩm Đỉnh Cao Từ Apple</strong> 🚀🍏</h3><hr><h4><strong>🌟 Thiết Kế Đẳng Cấp và Sang Trọng</strong></h4><ul><li><strong>iPhone 16 Pro Max</strong> mang thiết kế vuông vức với khung viền titan cao cấp, nhẹ và bền bỉ hơn.</li><li>Màn hình <strong>Super Retina XDR OLED 6.9 inch</strong> với độ sáng vượt trội, mang lại trải nghiệm hiển thị sắc nét chưa từng có.</li><li><strong>Viền màn hình siêu mỏng</strong> giúp mở rộng không gian hiển thị.</li></ul><hr><h4><strong>⚙️ Hiệu Năng Vượt Trội với Chip A18 Pro</strong></h4><ul><li>Trang bị <strong>chip A18 Pro</strong> mạnh mẽ, sản xuất trên tiến trình <strong>3nm</strong>, mang lại hiệu suất vượt trội và tiết kiệm năng lượng.</li><li>Bộ nhớ RAM lên đến <strong>12GB</strong>, đa nhiệm mượt mà, không giật lag.</li><li>Tùy chọn bộ nhớ trong từ <strong>256GB</strong> đến <strong>1TB</strong>.</li></ul><hr><h4><strong>📸 Camera Siêu Nét – Đột Phá Nhiếp Ảnh Di Động</strong></h4><ul><li><strong>Cụm 3 camera 48MP</strong>, cải tiến khả năng chụp đêm và chống rung quang học (OIS).</li><li>Camera telephoto với khả năng <strong>zoom quang học 10x</strong>, giúp chụp ảnh từ xa cực kỳ sắc nét.</li><li>Chế độ quay video <strong>8K</strong> và tính năng quay <strong>Cinematic Mode</strong> nâng cấp.</li></ul><hr><h4><strong>🔋 Pin Trâu và Sạc Nhanh</strong></h4><ul><li>Dung lượng pin lớn, thời lượng sử dụng có thể lên đến <strong>30 giờ</strong> liên tục.</li><li>Hỗ trợ <strong>sạc nhanh 35W</strong> và sạc không dây MagSafe thế hệ mới.</li></ul><hr><h4><strong>📶 Kết Nối và Công Nghệ Mới</strong></h4><ul><li>Hỗ trợ <strong>5G tốc độ cao</strong>, kết nối nhanh chóng và ổn định.</li><li>Công nghệ <strong>Wi-Fi 7</strong> và <strong>Bluetooth 5.4</strong> cho tốc độ truyền tải nhanh chóng.</li><li>Cảm biến <strong>Face ID cải tiến</strong> nhanh nhạy và an toàn hơn.</li></ul><hr><h4><strong>💼 iOS 18 – Hệ Điều Hành Tối Ưu</strong></h4><ul><li><strong>iOS 18</strong> mang lại giao diện tinh tế, tính năng bảo mật nâng cao và trải nghiệm người dùng mượt mà.</li><li>Tích hợp <strong>AI thông minh</strong>, giúp nâng cao khả năng tự động hóa và cá nhân hóa thiết bị.</li></ul>', '2023-09-23 02:56:31', '2025-01-04 01:35:09'),
(4, 'Kết nối với chúng tôi', 'ket-noi-voi-chung-toi', '<p>Hãy đồng hành cùng <b>ILUX-STORE</b>&nbsp;để trải nghiệm sự khác biệt!</p><p>🌐 <strong>Website:</strong> <a rel=\"noopener\" href=\"#\">www.ilux-store.com</a><br>📞 <strong>Hotline: 0528358715</strong></p><p>📍 <strong>Địa chỉ cửa hàng:</strong>&nbsp;Khóm 1, Phường 7, Thành Phố Trà Vinh</p><p><strong>ILUX-STORE&nbsp; là Nơi Công Nghệ Gặp Gỡ Phong Cách!</strong> 🍎✨</p><p>\r\n\r\n\r\n\r\n</p>', '2023-09-23 02:57:26', '2025-01-04 01:18:58'),
(5, 'Về chúng tôi', 've-chung-toi', '<p>ILUX-STORE ra đời với mục tiêu mang đến cho khách hàng những sản phẩm Apple <strong>chính hãng</strong>, <strong>chất lượng cao</strong> cùng với các <strong>phụ kiện độc đáo</strong>, đáp ứng nhu cầu công nghệ hiện đại và phong cách sống đẳng cấp.</p><p><strong>Sản phẩm Apple chính hãng:</strong> iPhone, iPad, MacBook, Apple Watch, AirPods và nhiều thiết bị khác.<br>✅ <strong>Phụ kiện Apple đa dạng:</strong> Ốp lưng, cáp sạc, tai nghe, bàn phím, chuột, và nhiều phụ kiện cao cấp khác.<br>✅ <strong>Dịch vụ hậu mãi:</strong> Bảo hành chính hãng, hỗ trợ kỹ thuật tận tâm, và dịch vụ chăm sóc khách hàng chuyên nghiệp.</p><ul><li>🛡️ <strong>Cam kết chính hãng 100%</strong></li><li>📦 <strong>Giao hàng nhanh chóng, an toàn</strong></li><li>💬 <strong>Hỗ trợ khách hàng 24/7</strong></li><li>💵 <strong>Giá cả cạnh tranh, nhiều ưu đãi hấp dẫn</strong></li></ul><p>\r\n\r\n</p>', '2023-09-23 02:58:48', '2025-01-04 01:16:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('mark@example.com', 'ZT3kwQ4z640MBRst7NLXfOviNlekOd0bcvQSGcA8CBZpBn0aYD6sdeR8Efvv', '2023-10-05 04:49:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `shipping_returns` text DEFAULT NULL,
  `related_products` text DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `compare_price` double(10,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `sku` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `track_qty` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `qty` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(13, 'IPAD', 'ipad', '<p><strong>Màn hình Retina</strong>: iPad sử dụng màn hình Retina sắc nét với độ phân giải cao, giúp hiển thị màu sắc tươi sáng và chi tiết rõ ràng. Các phiên bản mới thường đi kèm với màn hình Liquid Retina, giúp cải thiện độ sáng và độ tương phản.</p><p><strong>Kích thước</strong>: iPad có nhiều kích thước khác nhau, từ <strong>iPad Mini</strong> nhỏ gọn, <strong>iPad</strong> (mẫu cơ bản) cho đến <strong>iPad Air</strong> và <strong>iPad Pro</strong> lớn hơn, phù hợp với nhu cầu của từng đối tượng người dùng.</p><p><strong>Hệ điều hành iPadOS</strong>: iPad chạy trên hệ điều hành <strong>iPadOS</strong>, tối ưu hóa cho trải nghiệm sử dụng máy tính bảng với nhiều tính năng độc đáo như chia đôi màn hình, chế độ xem nhiều cửa sổ, và tính năng kéo-thả giữa các ứng dụng.</p><p><strong>Chipset</strong>: Các mẫu iPad mới sử dụng các chip xử lý mạnh mẽ của Apple, như <strong>A14 Bionic</strong>, <strong>A15 Bionic</strong>, và <strong>Apple M1</strong> trên iPad Pro, mang lại hiệu năng ấn tượng cho mọi tác vụ từ lướt web, chơi game, đến các công việc sáng tạo như chỉnh sửa video, thiết kế đồ họa.</p>', NULL, NULL, '', 20.00, 25.00, 21, NULL, NULL, 'Yes', 'SKU-0020', NULL, 'Yes', 10, 1, '2023-06-14 02:35:09', '2025-01-03 23:49:45'),
(14, 'APPLE WATCH', 'apple-watch', '<p>Apple Watch có màn hình Retina OLED sáng, sắc nét với khả năng tự động điều chỉnh độ sáng tuỳ thuộc vào môi trường ánh sáng. Màn hình có thể là hình vuông với các góc bo tròn, tạo cảm giác hiện đại và tinh tế.</p><p>Dây đeo của Apple Watch có nhiều lựa chọn khác nhau, bao gồm <strong>dây cao su (Sport Band)</strong>, <strong>dây da</strong>, <strong>dây kim loại</strong> và <strong>dây vải</strong>. Các dây đeo này có thể dễ dàng thay thế và thay đổi theo sở thích của người dùng.</p><p>Apple Watch cho phép người dùng nhận và tương tác với thông báo từ điện thoại iPhone, bao gồm cuộc gọi, tin nhắn, email, và các thông báo từ các ứng dụng khác. Bạn có thể trả lời cuộc gọi, nhắn tin, hoặc tương tác với các thông báo trực tiếp trên đồng hồ.</p>', NULL, NULL, '', 15.00, 20.00, 39, 27, NULL, 'Yes', 'SKU-0022', NULL, 'Yes', 10, 1, '2023-06-14 02:36:28', '2025-01-06 02:21:25'),
(18, 'IPhone 16 Pro Max', 'iphone-16-pro-max', '<p>iPhone 16 Pro Max là mẫu điện thoại cao cấp nhất trong dòng iPhone 16 của Apple, được ra mắt vào tháng 9 năm 2024. Máy sở hữu nhiều tính năng vượt trội, bao gồm:</p><p><strong>Màn hình:</strong></p><ul><li>Kích thước 6,9 inch với công nghệ Super Retina XDR OLED.</li><li>Độ phân giải 2868x1320 pixel, mật độ điểm ảnh 460 ppi.</li><li>Tần số quét 120Hz, hỗ trợ HDR và True Tone.</li></ul><p><strong>Hiệu năng:</strong></p><ul><li>Chip Apple A18 Pro với hiệu suất nhanh hơn 15% và GPU 6 nhân, tăng cường hiệu suất đồ họa lên 20% so với iPhone 15 Pro. <span class=\"\" data-state=\"closed\"><div class=\"relative inline-flex items-center\"><a href=\"https://www.theverge.com/2024/9/9/24230103/iphone-16-pro-specs-features-price-release-date-apple?utm_source=chatgpt.com\" target=\"_blank\" rel=\"noopener\" class=\"ml-1 inline-flex h-[22px] items-center rounded-xl bg-[#f4f4f4] px-2 text-[0.5em] font-medium text-token-text-secondary dark:bg-token-main-surface-secondary relative top-[-0.094rem] !text-token-text-secondary uppercase hover:bg-token-text-primary hover:!text-token-main-surface-secondary dark:hover:bg-token-text-primary group\"><span class=\"truncate\">The Verge</span></a></div></span></li><li>RAM 8GB LPDDR5X, hỗ trợ đa nhiệm mượt mà.</li></ul><p><strong>Camera:</strong></p><ul><li>Camera chính 48MP với khẩu độ f/1.78, ống kính 24mm.</li><li>Camera siêu rộng 48MP với khẩu độ f/2.2, ống kính 13mm.</li><li>Camera telephoto 12MP với khẩu độ f/2.8, zoom quang học 5x.</li><li>Hệ thống camera hỗ trợ quay video 4K ở 120fps và âm thanh Dolby Atmos. <span class=\"\" data-state=\"closed\"><div class=\"relative inline-flex items-center\"><br></div></span></li></ul><p><strong>Pin:</strong></p><ul><li>Thời gian phát lại video lên đến 33 giờ</li></ul>', NULL, NULL, '', 34999000.00, 37999000.00, 22, 30, NULL, 'Yes', 'SKU-0028', NULL, 'Yes', 21, 1, '2023-06-14 02:42:39', '2025-01-07 00:36:23'),
(24, 'Macbook Pro', 'macbook-pro', '<p>MacBook Pro sử dụng các vi xử lý mạnh mẽ, đặc biệt là các dòng chip Apple Silicon như M1, M2, mang đến khả năng xử lý đa nhiệm và làm việc với các ứng dụng nặng như đồ họa, video mà không gặp khó khăn.</p><p><strong>Thiết kế sang trọng, mỏng nhẹ</strong>: Mặc dù mạnh mẽ, nhưng MacBook Pro vẫn có thiết kế mỏng nhẹ, dễ dàng mang theo. Chất liệu vỏ kim loại cao cấp giúp bảo vệ máy và tạo cảm giác chắc chắn.</p><li><p><strong>Hệ điều hành macOS</strong>: MacBook Pro chạy trên macOS, hệ điều hành của Apple, nổi bật với tính ổn định, bảo mật cao và sự tích hợp liền mạch với các sản phẩm khác của Apple.</p></li><li><p><strong>Cổng kết nối và khả năng mở rộng</strong>: MacBook Pro được trang bị nhiều cổng kết nối như Thunderbolt 4, HDMI, và khe cắm thẻ SD, giúp người dùng dễ dàng kết nối với các thiết bị ngoại vi, màn hình hoặc máy chiếu.</p></li>', NULL, NULL, '', 37900000.00, 39900000.00, 23, 34, NULL, 'No', 'SKU-038', NULL, 'Yes', 8, 1, '2023-06-14 02:57:03', '2025-01-06 06:59:15'),
(25, 'iPhone 15 Plus', 'iphone-15-plus', '<li><strong>Kích thước màn hình</strong>: iPhone 15 Plus có màn hình <strong>6.7 inch</strong>, là lựa chọn hoàn hảo cho những người thích màn hình lớn để xem phim, chơi game, hoặc làm việc.</li><li><strong>Màn hình OLED Super Retina XDR</strong>: Cung cấp màu sắc sắc nét, độ sáng cao và độ tương phản vượt trội, mang lại trải nghiệm hình ảnh chân thực.</li><li><strong>Thiết kế</strong>: Mặt lưng của iPhone 15 Plus được làm từ <strong>kính cường lực</strong> với khung viền <strong>nhôm</strong>. Thiết kế hiện đại và tinh tế với các màu sắc mới như đen, trắng, xanh và hồng.</li>', NULL, NULL, '', 700.00, 800.00, 22, 30, NULL, 'Yes', 'SKU-039', NULL, 'Yes', 20, 1, '2023-06-14 02:58:55', '2025-01-06 02:23:51'),
(222, 'ốp lưng iphone 16 pro max', 'op-lung-iphone-16-pro-max', '<p>ốp lưng cho iphone 16 nhựa cứng viền dẽo</p>', NULL, NULL, '', 110000.00, 120000.00, 22, 29, NULL, 'Yes', 'url-38', NULL, 'Yes', 30, 1, '2025-01-04 00:05:15', '2025-01-06 02:23:29'),
(223, 'Mac mini', 'mac-mini', '<p>&nbsp;Phiên bản Mac mini mới có thiết kế nhỏ hơn, tối giản hơn nhưng vẫn giữ được sức mạnh và hiệu suất vượt trội. Máy vẫn giữ kiểu dáng nhỏ gọn đặc trưng của Mac mini nhưng với một diện tích bề mặt nhỏ hơn, giúp tiết kiệm không gian và dễ dàng đặt ở bất kỳ đâu.</p><p>Mac mini mới được trang bị cổng <strong>USB-C ở mặt trước</strong>, giúp người dùng dễ dàng kết nối các thiết bị ngoại vi như ổ cứng ngoài, tai nghe, hoặc các phụ kiện khác mà không cần phải cắm vào phía sau máy. Đây là một cải tiến rất tiện lợi, giúp người dùng dễ dàng truy cập và kết nối với các thiết bị cần thiết.</p><p>&nbsp;Cả hai chip M4 và M4 Pro đều mang lại hiệu suất cực kỳ mạnh mẽ, tiết kiệm năng lượng và giúp máy chạy mượt mà khi xử lý các tác vụ phức tạp.</p>', NULL, NULL, '', 3690000.00, 3900000.00, 23, 33, NULL, 'Yes', 'sku- 29', NULL, 'Yes', 16, 1, '2025-01-04 00:20:16', '2025-01-06 06:57:31'),
(224, 'iPad Pro M4 13 inch 5G 256GB', 'ipad-pro-m4-13-inch-5g-256gb', '<p>Pad Pro M4 13 inch 5G 256GB là mẫu máy tính bảng cao cấp của Apple, ra mắt vào năm 2024, mang đến hiệu năng mạnh mẽ và thiết kế tinh tế.</p><p><strong>Hiệu năng và bộ nhớ:</strong></p><ul><li><strong>Chip xử lý:</strong> Apple M4 với 9 nhân CPU (3 nhân hiệu năng cao và 6 nhân tiết kiệm năng lượng), mang lại khả năng xử lý vượt trội cho các tác vụ nặng.</li><li><strong>RAM:</strong> 8 GB, đảm bảo đa nhiệm mượt mà.</li><li><strong>Dung lượng lưu trữ:</strong> 256 GB, cung cấp không gian rộng rãi cho ứng dụng, hình ảnh và video.</li><li><p><strong>Màn hình:</strong></p><ul><li><strong>Kích thước:</strong> 13 inch với công nghệ Ultra Retina XDR.</li><li><strong>Độ phân giải:</strong> 2752 x 2064 pixel, mật độ điểm ảnh 264 ppi, cho hình ảnh sắc nét và chi tiết.</li><li><strong>Công nghệ:</strong> Sử dụng màn hình OLED hai lớp (Tandem OLED), hỗ trợ ProMotion với tần số quét thích ứng từ 10Hz đến 120Hz, màu sắc rộng (P3), True Tone và lớp phủ chống phản chiếu.</li><li><strong>Độ sáng:</strong> Độ sáng SDR tối đa 1000 nits, độ sáng XDR tối đa 1000 nits toàn màn hình và 1600 nits đỉnh điểm cho nội dung HDR.</li></ul></li></ul><p>&nbsp;</p>', NULL, NULL, '', 4290000.00, 4890000.00, 21, 31, NULL, 'No', 'sku04', NULL, 'Yes', 15, 1, '2025-01-06 06:37:00', '2025-01-06 07:01:23'),
(225, 'iPad Pro (M4) 13 inch', 'ipad-pro-m4-13-inch', '<ul><li><strong>Chip xử lý:</strong> Apple M4</li><li><strong>Màn hình:</strong> 13 inch Ultra Retina XDR OLED, tần số quét 120Hz</li><li><strong>Bộ nhớ trong:</strong> 256GB/512GB/1TB/2TB</li><li><strong>Kết nối:</strong> 5G, Wi-Fi 6E, Thunderbolt 3</li><li><strong>Camera:</strong> 12MP (rộng) + 10MP (siêu rộng) + LiDAR Scanner</li><li><strong>Phù hợp cho:</strong> Chuyên gia sáng tạo, thiết kế đồ họa, người dùng yêu cầu hiệu suất cao</li></ul>', NULL, NULL, '', 29990000.00, 31900000.00, 21, 31, NULL, 'No', 'SKU 05', NULL, 'Yes', 25, 1, '2025-01-06 07:11:43', '2025-01-06 07:12:37'),
(226, 'iPad Pro M2 11 inch', 'ipad-pro-m2-11-inch', '<p>Sử dụng chip Apple M2, màn hình Liquid Retina 11 inch với ProMotion 120Hz, bộ nhớ trong từ 128GB đến 2TB, hỗ trợ Face ID và Apple Pencil thế hệ 2</p>', NULL, NULL, '', 24990000.00, 28990000.00, 21, 31, NULL, 'No', 'SKU 07', NULL, 'Yes', 12, 1, '2025-01-06 07:16:04', '2025-01-06 07:16:04'),
(227, 'iPad Air M1 10.9 inch', 'ipad-air-m1-109-inch', '<p>Được trang bị chip Apple M1, màn hình Liquid Retina 10.9 inch, bộ nhớ trong 64GB hoặc 256GB, hỗ trợ Touch ID và Apple Pencil thế hệ 2</p>', NULL, NULL, '', 16990000.00, 19990000.00, 21, 31, NULL, 'No', 'SKU 08', NULL, 'Yes', 28, 1, '2025-01-06 07:19:25', '2025-01-06 07:19:25'),
(228, 'iPad Gen 10 10.9 inch', 'ipad-gen-10-109-inch', '<p>Sử dụng chip A14 Bionic, màn hình Liquid Retina 10.9 inch, bộ nhớ trong 64GB hoặc 256GB, hỗ trợ Touch ID và Apple Pencil thế hệ 1</p>', NULL, NULL, '', 10990000.00, 12990000.00, 21, 31, NULL, 'No', 'SKU09', NULL, 'Yes', 12, 1, '2025-01-06 07:24:43', '2025-01-06 07:24:43'),
(229, 'iPad Mini 6 8.3 inch', 'ipad-mini-6-83-inch', '<p>Trang bị chip A15 Bionic, màn hình Liquid Retina 8.3 inch, bộ nhớ trong 64GB hoặc 256GB, hỗ trợ Touch ID và Apple Pencil thế hệ 2</p>', NULL, NULL, '', 12990000.00, 19900000.00, 21, 31, NULL, 'No', 'SKU 089', NULL, 'Yes', 13, 1, '2025-01-06 07:28:34', '2025-01-06 07:28:58'),
(230, 'Apple Pencil (Thế hệ 2)', 'apple-pencil-the-he-2', '<p>Bút cảm ứng chính hãng từ Apple, hỗ trợ vẽ, ghi chú và thiết kế với độ chính xác cao. Tương thích với các dòng iPad Pro và iPad Air mới</p>', NULL, NULL, '', 3500000.00, 3700000.00, 21, 32, NULL, 'No', 'sku 01', NULL, 'Yes', 0, 1, '2025-01-06 08:16:33', '2025-01-06 08:16:55'),
(231, 'Magic Keyboard', 'magic-keyboard', '<p>Bàn phím tích hợp trackpad, thiết kế sang trọng, giúp biến iPad thành một chiếc laptop nhỏ gọn. Tương thích với iPad Pro và iPad Air</p>', NULL, NULL, '', 7500000.00, 7700.00, 21, 32, NULL, 'Yes', 'sku- 13', NULL, 'Yes', 10, 1, '2025-01-06 08:22:13', '2025-01-06 08:22:13'),
(232, 'Smart Folio', 'smart-folio', '<p>Bao da bảo vệ cả mặt trước và sau của iPad, có thể gập lại để tạo thành giá đỡ. Tương thích với nhiều dòng iPad khác nhau.</p>', NULL, NULL, '', 1890000.00, 2000000.00, 21, 32, NULL, 'Yes', 'sku 001', NULL, 'Yes', 28, 1, '2025-01-06 08:32:08', '2025-01-06 08:32:08'),
(233, 'iPhone 11', 'iphone-11', '<p>Ra mắt năm 2019, iPhone 11 có màn hình Liquid Retina HD 6.1 inch, chip A13 Bionic, camera kép 12MP với chế độ chụp đêm.&nbsp;</p>', NULL, NULL, '', 15776000.00, 16776000.00, 22, 30, NULL, 'No', 'sku001', NULL, 'Yes', 10, 1, '2025-01-06 08:48:24', '2025-01-06 08:48:24'),
(234, 'iPhone 14', 'iphone-14', '<p>Ra mắt năm 2022, iPhone 14 có màn hình Super Retina XDR 6.1 inch, chip A15 Bionic, cải tiến về camera và tính năng an toàn như phát hiện va chạm&nbsp;</p>', NULL, NULL, '', 19176000.00, 21176000.00, 22, 30, NULL, 'No', 'sku 080', NULL, 'Yes', 12, 1, '2025-01-06 09:00:22', '2025-01-06 09:00:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(44, 25, '25-44-1735966528.jpg', NULL, '2025-01-03 21:55:28', '2025-01-03 21:55:28'),
(45, 25, '25-45-1735966528.png', NULL, '2025-01-03 21:55:28', '2025-01-03 21:55:28'),
(46, 25, '25-46-1735966530.jpg', NULL, '2025-01-03 21:55:30', '2025-01-03 21:55:30'),
(47, 24, '24-47-1735968760.jpg', NULL, '2025-01-03 22:32:40', '2025-01-03 22:32:40'),
(48, 24, '24-48-1735968760.jpg', NULL, '2025-01-03 22:32:40', '2025-01-03 22:32:40'),
(49, 24, '24-49-1735968761.png', NULL, '2025-01-03 22:32:41', '2025-01-03 22:32:41'),
(62, 14, '14-62-1735972747.jpg', NULL, '2025-01-03 23:39:07', '2025-01-03 23:39:07'),
(63, 14, '14-63-1735972748.jpg', NULL, '2025-01-03 23:39:08', '2025-01-03 23:39:08'),
(64, 14, '14-64-1735972748.jpg', NULL, '2025-01-03 23:39:08', '2025-01-03 23:39:08'),
(65, 13, '13-65-1735973352.jpg', NULL, '2025-01-03 23:49:12', '2025-01-03 23:49:12'),
(66, 13, '13-66-1735973353.jpg', NULL, '2025-01-03 23:49:13', '2025-01-03 23:49:13'),
(67, 13, '13-67-1735973354.jpg', NULL, '2025-01-03 23:49:14', '2025-01-03 23:49:14'),
(72, 18, '18-72-1735973741.jpg', NULL, '2025-01-03 23:55:41', '2025-01-03 23:55:41'),
(73, 18, '18-73-1735973742.jpg', NULL, '2025-01-03 23:55:42', '2025-01-03 23:55:42'),
(74, 18, '18-74-1735973742.jpg', NULL, '2025-01-03 23:55:42', '2025-01-03 23:55:42'),
(75, 222, '222-75-1735974315.png', NULL, '2025-01-04 00:05:15', '2025-01-04 00:05:15'),
(76, 222, '222-76-1735974316.png', NULL, '2025-01-04 00:05:16', '2025-01-04 00:05:16'),
(77, 222, '222-77-1735974316.png', NULL, '2025-01-04 00:05:16', '2025-01-04 00:05:16'),
(78, 222, '222-78-1735974317.png', NULL, '2025-01-04 00:05:17', '2025-01-04 00:05:17'),
(80, 223, '223-80-1735975216.jpg', NULL, '2025-01-04 00:20:16', '2025-01-04 00:20:16'),
(81, 223, '223-81-1735975217.jpg', NULL, '2025-01-04 00:20:17', '2025-01-04 00:20:17'),
(82, 223, '223-82-1735975276.jpg', NULL, '2025-01-04 00:21:16', '2025-01-04 00:21:16'),
(83, 224, '224-83-1736170620.jpg', NULL, '2025-01-06 06:37:00', '2025-01-06 06:37:00'),
(84, 224, '224-84-1736170621.jpg', NULL, '2025-01-06 06:37:01', '2025-01-06 06:37:01'),
(85, 224, '224-85-1736170622.jpg', NULL, '2025-01-06 06:37:02', '2025-01-06 06:37:02'),
(86, 225, '225-86-1736172703.jpg', NULL, '2025-01-06 07:11:43', '2025-01-06 07:11:43'),
(87, 225, '225-87-1736172703.jpg', NULL, '2025-01-06 07:11:43', '2025-01-06 07:11:43'),
(88, 225, '225-88-1736172703.jpg', NULL, '2025-01-06 07:11:43', '2025-01-06 07:11:43'),
(89, 225, '225-89-1736172703.jpg', NULL, '2025-01-06 07:11:43', '2025-01-06 07:11:43'),
(90, 226, '226-90-1736172964.jpg', NULL, '2025-01-06 07:16:04', '2025-01-06 07:16:04'),
(91, 226, '226-91-1736172964.jpg', NULL, '2025-01-06 07:16:04', '2025-01-06 07:16:04'),
(92, 226, '226-92-1736172964.jpg', NULL, '2025-01-06 07:16:04', '2025-01-06 07:16:04'),
(93, 227, '227-93-1736173165.jpg', NULL, '2025-01-06 07:19:25', '2025-01-06 07:19:25'),
(94, 227, '227-94-1736173165.jpg', NULL, '2025-01-06 07:19:25', '2025-01-06 07:19:25'),
(95, 228, '228-95-1736173483.jpg', NULL, '2025-01-06 07:24:43', '2025-01-06 07:24:43'),
(96, 228, '228-96-1736173483.jpg', NULL, '2025-01-06 07:24:43', '2025-01-06 07:24:43'),
(97, 229, '229-97-1736173714.jpg', NULL, '2025-01-06 07:28:34', '2025-01-06 07:28:34'),
(98, 229, '229-98-1736173715.jpg', NULL, '2025-01-06 07:28:35', '2025-01-06 07:28:35'),
(99, 230, '230-99-1736176593.jpeg', NULL, '2025-01-06 08:16:33', '2025-01-06 08:16:33'),
(100, 230, '230-100-1736176594.jpeg', NULL, '2025-01-06 08:16:34', '2025-01-06 08:16:34'),
(101, 231, '231-101-1736176933.jpeg', NULL, '2025-01-06 08:22:13', '2025-01-06 08:22:13'),
(102, 232, '232-102-1736177528.jpg', NULL, '2025-01-06 08:32:08', '2025-01-06 08:32:08'),
(103, 233, '233-103-1736178504.jpg', NULL, '2025-01-06 08:48:24', '2025-01-06 08:48:24'),
(104, 234, '234-104-1736179222.jpg', NULL, '2025-01-06 09:00:22', '2025-01-06 09:00:22'),
(105, 234, '234-105-1736179223.png', NULL, '2025-01-06 09:00:23', '2025-01-06 09:00:23'),
(106, 234, '234-106-1736179224.jpg', NULL, '2025-01-06 09:00:24', '2025-01-06 09:00:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` double(3,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `product_id`, `username`, `email`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 25, 'Mohit Singh', 'mohit@example.com', 'Good Product!!', 5.00, 0, '2023-11-03 12:17:41', '2023-11-03 12:17:41'),
(2, 25, 'John Doe', 'john@example.com', 'Awesome Product !!', 4.00, 1, '2023-11-03 12:21:38', '2023-11-17 13:37:51'),
(3, 25, 'Mark Wood', 'mark@example.com', 'My experience was really bad.', 3.00, 1, '2023-11-07 12:58:59', '2023-11-17 13:37:15'),
(5, 18, 'Kelly Kelly', 'kelly@xyz.com', 'Good Fit !!', 4.00, 0, '2023-11-18 04:37:04', '2023-11-18 04:37:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country_id`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'rest_of_world', 50.00, '2023-08-07 23:45:57', '2023-08-07 23:45:57'),
(5, '100', 10.00, '2023-08-08 00:00:11', '2023-08-08 00:00:11'),
(6, '1', 10.00, '2023-08-08 00:00:20', '2023-08-08 00:00:20'),
(7, '2', 5.10, '2023-08-10 00:03:32', '2023-08-10 00:03:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `showHome`, `category_id`, `created_at`, `updated_at`) VALUES
(25, 'SẢN PHẨM AIRPODS', 'san-pham-airpods', 1, 'Yes', 24, '2025-01-06 02:17:42', '2025-01-06 02:20:00'),
(26, 'PHỤ KIỆN AIRPODS', 'phu-kien-airpods', 1, 'Yes', 24, '2025-01-06 02:17:58', '2025-01-06 02:19:44'),
(27, 'SẢN PHẨM APPLE WATCH', 'san-pham-apple-watch', 1, 'Yes', 39, '2025-01-06 02:18:46', '2025-01-06 02:18:46'),
(28, 'PHỤ KIỆN APPLE WATCH', 'phu-kien-apple-watch', 1, 'Yes', 39, '2025-01-06 02:19:16', '2025-01-06 02:19:16'),
(29, 'PHỤ KIỆN IPHONE', 'phu-kien-iphone', 1, 'Yes', 22, '2025-01-06 02:22:36', '2025-01-06 02:22:36'),
(30, 'SẢN PHẨM IPHONE', 'san-pham-iphone', 1, 'Yes', 22, '2025-01-06 02:22:58', '2025-01-06 02:22:58'),
(31, 'SẢN PHẨM IPAD', 'san-pham-ipad', 1, 'Yes', 21, '2025-01-06 06:14:16', '2025-01-06 06:14:16'),
(32, 'PHỤ KIỆN IPAD', 'phu-kien-ipad', 1, 'Yes', 21, '2025-01-06 06:14:35', '2025-01-06 06:14:35'),
(33, 'PHỤ KIỆN MACBOOK', 'phu-kien-macbook', 1, 'Yes', 23, '2025-01-06 06:15:34', '2025-01-06 06:15:34'),
(34, 'SẢN PHẨM MACBOOK', 'san-pham-macbook', 1, 'Yes', 23, '2025-01-06 06:16:08', '2025-01-06 06:16:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(101, '1700505370.jpg', '2023-11-20 13:06:10', '2023-11-20 13:06:10'),
(102, '1700505376.jpg', '2023-11-20 13:06:16', '2023-11-20 13:06:16'),
(103, '1735816473.jpg', '2025-01-02 04:14:33', '2025-01-02 04:14:33'),
(104, '1735816752.jpg', '2025-01-02 04:19:12', '2025-01-02 04:19:12'),
(105, '1735963935.jpg', '2025-01-03 21:12:15', '2025-01-03 21:12:15'),
(106, '1735963987.jpg', '2025-01-03 21:13:07', '2025-01-03 21:13:07'),
(107, '1735964057.jpg', '2025-01-03 21:14:17', '2025-01-03 21:14:17'),
(108, '1735964118.png', '2025-01-03 21:15:18', '2025-01-03 21:15:18'),
(109, '1735964135.jpg', '2025-01-03 21:15:35', '2025-01-03 21:15:35'),
(110, '1735964217.jpg', '2025-01-03 21:16:57', '2025-01-03 21:16:57'),
(111, '1735964275.jpg', '2025-01-03 21:17:55', '2025-01-03 21:17:55'),
(112, '1735964325.jpg', '2025-01-03 21:18:45', '2025-01-03 21:18:45'),
(113, '1735974245.png', '2025-01-04 00:04:05', '2025-01-04 00:04:05'),
(114, '1735974245.png', '2025-01-04 00:04:05', '2025-01-04 00:04:05'),
(115, '1735974246.png', '2025-01-04 00:04:06', '2025-01-04 00:04:06'),
(116, '1735974246.png', '2025-01-04 00:04:06', '2025-01-04 00:04:06'),
(117, '1735974268.png', '2025-01-04 00:04:28', '2025-01-04 00:04:28'),
(118, '1735975159.jpg', '2025-01-04 00:19:19', '2025-01-04 00:19:19'),
(119, '1735975159.jpg', '2025-01-04 00:19:19', '2025-01-04 00:19:19'),
(120, '1735975160.jpg', '2025-01-04 00:19:20', '2025-01-04 00:19:20'),
(121, '1735975171.jpg', '2025-01-04 00:19:31', '2025-01-04 00:19:31'),
(122, '1736170615.jpg', '2025-01-06 06:36:55', '2025-01-06 06:36:55'),
(123, '1736170615.jpg', '2025-01-06 06:36:55', '2025-01-06 06:36:55'),
(124, '1736170616.jpg', '2025-01-06 06:36:56', '2025-01-06 06:36:56'),
(125, '1736170616.jpg', '2025-01-06 06:36:56', '2025-01-06 06:36:56'),
(126, '1736172538.jpg', '2025-01-06 07:08:58', '2025-01-06 07:08:58'),
(127, '1736172539.jpg', '2025-01-06 07:08:59', '2025-01-06 07:08:59'),
(128, '1736172539.jpg', '2025-01-06 07:08:59', '2025-01-06 07:08:59'),
(129, '1736172539.jpg', '2025-01-06 07:08:59', '2025-01-06 07:08:59'),
(130, '1736172915.jpg', '2025-01-06 07:15:15', '2025-01-06 07:15:15'),
(131, '1736172915.jpg', '2025-01-06 07:15:15', '2025-01-06 07:15:15'),
(132, '1736172915.jpg', '2025-01-06 07:15:15', '2025-01-06 07:15:15'),
(133, '1736173083.jpg', '2025-01-06 07:18:03', '2025-01-06 07:18:03'),
(134, '1736173083.jpg', '2025-01-06 07:18:03', '2025-01-06 07:18:03'),
(135, '1736173084.jpg', '2025-01-06 07:18:04', '2025-01-06 07:18:04'),
(136, '1736173101.jpg', '2025-01-06 07:18:21', '2025-01-06 07:18:21'),
(137, '1736173409.jpg', '2025-01-06 07:23:29', '2025-01-06 07:23:29'),
(138, '1736173409.jpg', '2025-01-06 07:23:29', '2025-01-06 07:23:29'),
(139, '1736173425.jpg', '2025-01-06 07:23:45', '2025-01-06 07:23:45'),
(140, '1736173426.jpg', '2025-01-06 07:23:46', '2025-01-06 07:23:46'),
(141, '1736173618.jpg', '2025-01-06 07:26:58', '2025-01-06 07:26:58'),
(142, '1736173633.jpg', '2025-01-06 07:27:13', '2025-01-06 07:27:13'),
(143, '1736176552.jpeg', '2025-01-06 08:15:52', '2025-01-06 08:15:52'),
(144, '1736176564.jpeg', '2025-01-06 08:16:04', '2025-01-06 08:16:04'),
(145, '1736176898.jpeg', '2025-01-06 08:21:38', '2025-01-06 08:21:38'),
(146, '1736177406.jpg', '2025-01-06 08:30:06', '2025-01-06 08:30:06'),
(147, '1736177465.jpg', '2025-01-06 08:31:05', '2025-01-06 08:31:05'),
(148, '1736178411.jpg', '2025-01-06 08:46:51', '2025-01-06 08:46:51'),
(149, '1736179111.jpg', '2025-01-06 08:58:31', '2025-01-06 08:58:31'),
(150, '1736179112.png', '2025-01-06 08:58:32', '2025-01-06 08:58:32'),
(151, '1736179112.jpg', '2025-01-06 08:58:32', '2025-01-06 08:58:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'tuyền', 'tuyen123@example.com', '0528358715', 1, 1, NULL, '$2y$10$2XyxMlil5UKAQPVeCLS.nug4o/1PXpLYLCOxl2nnSy5CYFxSDpMzK', NULL, '2025-01-02 05:50:11', '2025-01-02 05:50:11'),
(9, 'tuyen', 'tuyen@gmail.com', '0528358715', 1, 1, NULL, '$2y$10$guH1.h0joARIy3CmynGmX.QLqzdJ5Xrz/ZT2ECDGjMJ60SyXlQI1u', NULL, '2025-01-02 22:30:41', '2025-01-02 22:30:41'),
(10, 'tuyen', 'tuyen1212@gmail.com', '0528358715', 1, 1, NULL, '$2y$10$W5I1ecp1pe/BwnVt3Pptlu2oVXx3cRt67.oyjN1E8tsdoI1XbaZFS', NULL, '2025-01-03 22:36:15', '2025-01-03 22:36:15'),
(11, 'admin', 'admin@example.com', NULL, 2, 1, NULL, '$2y$10$R0qJHlU1wm6inyumJR0TC.MVUKC/gpwVNKTEGAKwXk.UilJMrZNte', NULL, NULL, NULL),
(12, 'abc', 'abc@gmail.com', '0528358715', 1, 1, NULL, '$2y$10$STNh/aw1Gm.qFFPBaPXHCOgJ71IFnAoX4gxQhgjLSuoBx2q.LaaUe', NULL, '2025-01-04 08:11:10', '2025-01-04 08:11:10'),
(13, 'tuyen12', 'tuyen12@gmail.com', '0528358715', 1, 1, NULL, '$2y$10$DhCuz.a4omg4nW8WtHjmsu8yR0pxgZ5JCrqzErYzLk.0DAL8Afwbe', NULL, '2025-01-06 09:01:42', '2025-01-06 09:01:42'),
(14, 'tuyen12', 'tuyenabc@gmail.com', '0528358715', 1, 1, NULL, '$2y$10$LSB15xJCEh9CzkXCHtEyOODqe4y/qBlAYV94WZ99rjg0BQx5X.Ikq', NULL, '2025-01-06 22:18:35', '2025-01-06 22:18:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(17, 14, 18, '2025-01-06 23:30:34', '2025-01-06 23:30:34'),
(18, 8, 18, '2025-01-07 00:51:47', '2025-01-07 00:51:47'),
(19, 8, 229, '2025-01-07 00:52:07', '2025-01-07 00:52:07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_addresses_user_id_foreign` (`user_id`),
  ADD KEY `customer_addresses_country_id_foreign` (`country_id`);

--
-- Chỉ mục cho bảng `discount_coupons`
--
ALTER TABLE `discount_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_country_id_foreign` (`country_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ratings_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `temp_images`
--
ALTER TABLE `temp_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT cho bảng `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `discount_coupons`
--
ALTER TABLE `discount_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD CONSTRAINT `product_ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
