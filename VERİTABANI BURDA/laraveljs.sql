-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Oca 2022, 17:00:01
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `laraveljs`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `Keywords`, `description`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(14, 14, 'Fast Food ürünleri', 'Fast Food ürünleri', 'Fast Food ürünleri', NULL, NULL, 'true', NULL, '2022-01-12 06:27:48'),
(15, 0, 'İçecekler', 'İçecekler', 'İçecekler', NULL, 'true', 'true', NULL, NULL),
(16, 0, 'izgaralar', 'izgaralar', 'izgaralar', NULL, NULL, 'true', NULL, NULL),
(17, 0, 'Kahvaltılıklar', 'Kahvaltılıklar', 'Kahvaltılıklar', NULL, NULL, 'true', NULL, NULL),
(18, 0, 'Pasthane Ürünleri', 'Pathane Ürünleri', 'Pasthane Ürünleri', NULL, NULL, 'true', NULL, NULL),
(19, 0, 'Salatalar', 'Salatalar', 'Salatalar', NULL, NULL, 'true', NULL, NULL),
(20, 0, 'Spesiyaller', 'Spesiyaller', 'Spesiyaller', NULL, NULL, 'true', NULL, NULL),
(21, 0, 'Tatlılar', 'Tatlılar', 'Tatlılar', NULL, NULL, 'true', NULL, NULL),
(87, 0, 'Ev Yemekleri', 'Ev Yemekleri', 'Ev Yemekleri', NULL, NULL, 'false', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`id`, `product_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(63, 23, 'selling', NULL, NULL, NULL),
(64, 5, 'ali Boz', NULL, '2021-12-16 20:36:31', '2021-12-16 20:36:31'),
(65, 5, 'you', NULL, '2021-12-16 20:39:16', '2021-12-16 20:39:16'),
(66, 5, 'yulu', NULL, '2021-12-16 20:43:47', '2021-12-16 20:43:47'),
(67, 5, 'yulu', NULL, '2021-12-16 20:54:11', '2021-12-16 20:54:11'),
(68, 5, 'tulay', NULL, '2021-12-17 08:21:40', '2021-12-17 08:21:40'),
(69, 5, 'ali', NULL, '2021-12-17 08:26:18', '2021-12-17 08:26:18'),
(70, 5, 'meke', NULL, '2021-12-17 08:28:15', '2021-12-17 08:28:15'),
(71, 5, 'muha', NULL, '2021-12-17 08:35:37', '2021-12-17 08:35:37'),
(73, 103, 'jhgDEHCBJEV', NULL, '2021-12-17 09:07:59', '2021-12-17 09:07:59'),
(77, 103, 'SFA<SGVFA', NULL, '2021-12-17 09:17:11', '2021-12-17 09:17:11'),
(78, 103, 'FSF<AS', NULL, '2021-12-17 09:17:49', '2021-12-17 09:17:49'),
(83, 104, 'jkvgbkjvb', NULL, '2021-12-17 09:38:27', '2021-12-17 09:38:27'),
(91, 21, 'fbsfrh', NULL, '2021-12-24 06:59:05', '2021-12-24 06:59:05'),
(92, 21, 'shrshrsrf', NULL, '2021-12-24 06:59:17', '2021-12-24 06:59:17'),
(93, 21, 'sdSWF', NULL, '2021-12-25 11:22:31', '2021-12-25 11:22:31'),
(94, 21, 'you tube', NULL, '2021-12-25 15:02:40', '2021-12-25 15:02:40'),
(95, 21, 'oooo', NULL, '2021-12-25 15:03:16', '2021-12-25 15:03:16'),
(99, 21, 'you', 'images/byUu6naYG7ZNTJJjml2biKUZOX8ZYJgtvwWE5ccv.png', '2021-12-25 15:15:41', '2021-12-25 15:15:41'),
(100, 21, 'yourt', 'images/x2NwaM8YtnN7ooodgelyjis8eujV23wsMaNPIEBq.jpg', '2021-12-25 15:16:16', '2021-12-25 15:16:16'),
(101, 21, 'bbbbb', 'images/6n0ZS5FFDQu5ZjfFWUjMN22cgFPWOXFSGtMYCCoZ.jpg', '2021-12-25 15:33:10', '2021-12-25 15:33:10'),
(104, 162, 'Meyve', 'images/5sgBGq4P73C25MVdGTsznylRPD9lH03Hmonw3vWH.jpg', '2021-12-29 12:37:22', '2021-12-29 12:37:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `note`, `status`, `created_at`, `updated_at`) VALUES
(2, 'tuğba bozan', 'tutubozan1997@gmail.com', '05550258971', 'ksdvnlkndklnnöv ö<', 'zsömcçö<ös cç<nöcsm', NULL, 'Read', '2021-12-25 09:19:38', '2021-12-25 10:11:26'),
(3, 'tuğba bozan', 'tutubozan1997@gmail.com', '05550258971', 'ksdvnlkndklnnöv ö<', 'ma scböm avsö', NULL, 'Read', '2021-12-25 09:20:09', '2021-12-25 14:50:27'),
(4, 'tuğba bozan', 'tutubozan1997@gmail.com', '05550258971', 'ksdvnlkndklnnöv ö<', 'jbgkjgb', NULL, 'false', '2022-01-08 16:58:33', '2022-01-08 16:58:33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_11_29_153229_create_sessions_table', 1),
(7, '2021_12_12_111225_create_categories_table', 2),
(8, '2021_12_12_162305_category', 3),
(9, '2021_12_14_154522_create_products_table', 4),
(10, '2021_12_14_154809_product', 5),
(11, '2021_12_14_182517_create_products_table', 6),
(12, '2021_12_14_182739_product', 6),
(13, '2021_12_16_173707_create_images_table', 7),
(14, '2021_12_16_175454_create_images_table', 8),
(15, '2021_12_16_180116_image', 8),
(16, '2021_12_17_133716_create_settings_table', 9),
(17, '2021_12_17_135621_setting', 9),
(18, '2021_12_17_140218_create_settings_table', 10),
(19, '2021_12_17_141805_setting', 10),
(20, '2021_12_20_191311_add_address_to_users', 11),
(21, '2021_12_23_112530_create_messages_table', 12),
(22, '2021_12_23_113743_message', 12),
(23, '2021_12_24_162225_create_settings_table', 13),
(24, '2021_12_24_162556_setting', 13),
(25, '2021_12_24_175055_create_settings_table', 14),
(26, '2021_12_24_175153_setting', 14),
(27, '2021_12_29_110336_create_categories_table', 15),
(28, '2021_12_29_110625_category', 15),
(29, '2021_12_29_111535_create_categories_table', 16),
(30, '2021_12_29_111710_category', 16),
(31, '2021_12_29_112328_create_categories_table', 17),
(32, '2021_12_29_112622_category', 17),
(33, '2022_01_11_195413_create_reviews_table', 18),
(34, '2022_01_12_151213_review', 19),
(35, '2022_01_12_152006_create_reviews_table', 20),
(36, '2022_01_12_152145_review', 20),
(37, '2022_01_14_155508_create_restaurants_table', 21),
(38, '2022_01_14_160214_restaurant', 21);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orderitems`
--

CREATE TABLE `orderitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `note` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orderitems`
--

INSERT INTO `orderitems` (`id`, `user_id`, `order_id`, `product_id`, `price`, `quantity`, `amount`, `total`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1649, 1, 1649.00, 1649.00, 'yok', 'Cancelled', '2021-02-08 12:43:54', '2021-02-08 13:57:20'),
(2, 1, 2, 1, 1649, 1, 1649.00, 1649.00, NULL, 'New', '2021-02-08 14:28:20', '2021-02-08 14:28:20'),
(3, 3, 3, 1, 1649, 1, 1649.00, 1649.00, NULL, 'New', '2021-08-28 12:09:52', '2021-08-28 12:09:52');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(8,2) NOT NULL,
  `note` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `address`, `phone`, `total`, `note`, `IP`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, 'Ahmet Kasum', 'ahmetkasum@gmail.com', 'istanbul', '05350885614', 1649.00, NULL, '127.0.0.1', 'New', '2021-08-28 12:09:52', '2021-08-28 12:09:52');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `restaurant_id` int(11) NOT NULL DEFAULT 0,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `user_id` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `title`, `Keywords`, `description`, `image`, `category_id`, `restaurant_id`, `detail`, `price`, `user_id`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(106, 'Lahmacun', NULL, 'Lahmacun', 'images/dCzZ7bAg0xBeJzGGCARd6JVTDkvQD6knvnPfTCNe.jpg', 14, 12, '1', 20.00, '6', 'true', NULL, '2021-12-29 18:31:16', 'a'),
(107, 'Pirinç Pilavı', NULL, 'Pirinç Pilavı', 'images/w6AoMQvyxLEIekt0ts9NhTQTM8mjUa94uogMxmE0.jpg', 87, 2, '1', 10.00, '2', 'true', NULL, '2021-12-29 18:32:37', 'b'),
(108, 'Mantı', NULL, 'Mantı', 'images/eXhSjr4FWIDz4sAtfmy4pYh7GttzMion8DlLo28Z.jpg', 87, 3, '1', 20.00, '1', 'true', NULL, '2021-12-29 18:34:23', 'c'),
(109, 'Sulu Köfte', NULL, 'Sulu Köfte', 'images/M84hTbhSu4Yz6PzckadCKpP5GuwuaBm61ZER1Rx7.jpg', 87, 4, '1', 10.00, '1', 'true', NULL, '2021-12-29 18:36:01', 'd'),
(110, 'Mercimek Çorbası', NULL, 'Mercimek Çorbası', 'images/bL0XQxdzcY97J5AYTSEeSRyrdnTvX3RqJwrFyEC4.jpg', 87, 5, '1', 10.00, '1', 'true', NULL, '2021-12-29 18:37:43', 'e'),
(111, 'Etli Patlıcan Güveç', NULL, 'Etli Patlıcan Güveç', 'images/J3UMTWvbs57RInAKaSKAgQ5arpfu2hY2ysHzaoPe.jpg', 87, 6, '1', 10.00, '1', 'true', NULL, '2021-12-29 18:38:46', 'f'),
(112, 'Bezelye', NULL, 'Bezelye', 'images/nb4pSHL6LYpsgQRPSea8Kpq56SmCeq1o0oSuOaS8.jpg', 87, 9, '1', 10.00, '1', 'true', NULL, '2021-12-29 18:41:18', 'g'),
(113, 'Cheeseburger', NULL, 'Cheeseburger', 'images/OTF5moR0NPEcVvx0ZixWLfYsDftOe4TMbpoOEybz.jpg', 14, 8, '1', 10.00, '1', 'true', NULL, '2021-12-29 18:42:22', 'h'),
(114, 'Ekmek Arası Köfte', NULL, 'Ekmek Arası Köfte', 'images/cKj44MWHshBDdestIaMhxw9Qaj4JPMFbFczbigo0.jpg', 14, 9, '1', 10.00, '1', 'true', NULL, '2021-12-29 18:43:08', 'i'),
(115, 'Hamburger', NULL, 'Hamburger', 'images/QFJ2ub0fOLW2ViWpoRfZiH2lpi1SoT8usr8VcCSz.jpg', 14, 10, '1', 10.00, '1', 'true', NULL, '2021-12-29 18:44:53', 'j'),
(116, 'Karışık Pizza', NULL, 'Karışık Pizza', 'images/HBr6wObj2dRqnKEDzFj1qLxCyY5HpX9RoargY9cv.jpg', 14, 11, '1', 20.00, '1', 'true', NULL, '2021-12-29 18:46:16', 'k'),
(117, 'Karışık Tost', NULL, 'Karışık Tost', 'images/DnIWBFWUWGp0kHgBq4YF827ryzK6NmuyFNUCIvYC.jpg', 14, 12, '1', 30.00, '1', 'true', NULL, '2021-12-29 18:47:13', 'l'),
(118, 'Tadım Burger ®', NULL, 'Tadım Burger ®', 'images/ICC0ZhhBIwvRSvK0Z0gOjybN7WRLG62FuhmOP3jS.jpg', 14, 13, '1', 50.00, '1', 'true', NULL, '2021-12-29 18:48:14', 'm'),
(119, 'Wonder Menü', NULL, 'Wonder Menü', 'images/O2NtdQVQOO4jlEkdcMh8iHhISO4UrsBJ79xLKnUc.jpg', 14, 14, '1', 20.00, '1', 'true', NULL, '2021-12-29 18:49:24', 'n'),
(120, 'Kaşarlı Tost', NULL, 'Kaşarlı Tost', 'images/9NQUVuWizIx33tACRXq59gKh3oW2xxCDYTcqS5Ab.jpg', 14, 15, '1', 10.00, '1', 'true', NULL, '2021-12-29 18:50:27', 'o'),
(121, 'Döner', NULL, 'Döner', 'images/0IxAsB1zyJDEJ7SfHOxsBdxzBsjn5SFlH3PS2PFY.jpg', 14, 16, '1', 20.00, '1', 'true', NULL, '2021-12-29 18:51:34', 'p'),
(122, 'tantuni', NULL, 'tantuni', 'images/eSGrLv63ajlz8LLzYYj4F0RSEBGytBPNQYzVeXAV.jpg', 14, 17, '1', 30.00, '1', 'true', NULL, '2021-12-29 18:53:22', 'r'),
(123, 'Ayran', NULL, 'Ayran', 'images/lz6kJtHT4PqtFJQjUEjUB17vonabGOni5sQEDjaU.jpg', 15, 18, '1', 20.00, '1', 'true', NULL, '2021-12-29 19:24:12', 's'),
(124, 'Cappy 330 Ml.', NULL, 'Cappy 330 Ml.', 'images/jywcmcSdI814NOO2gV4w93x43E0eXJsNVNLE7zlZ.jpg', 15, 19, '1', 20.00, '1', 'true', NULL, '2021-12-29 19:25:11', 'aa'),
(125, 'Coca Cola 330 Ml.', NULL, 'Coca Cola 330 Ml.', 'images/kiV7srEmoMPSdgDn8mMbTCQxczkg7VQ8t4IQCwdd.jpg', 15, 20, '1', 20.00, '1', 'true', NULL, '2021-12-29 19:29:21', 'ss'),
(126, 'Lipton Ice Tea 330 Ml.', NULL, 'Lipton Ice Tea 330 Ml.', 'images/TvhrnKNjqXPekj7LPEgQvc0KEJqVEekluYkqByTz.jpg', 15, 21, '1', 5.00, '1', 'true', NULL, '2021-12-29 19:30:53', 's'),
(127, 'Nescafe', NULL, 'Nescafe', 'images/EWZvb6wIgzyjdmKujbTzTvqANXQTj4EDmu237pRe.jpg', 15, 22, '1', 12.00, '1', 'true', NULL, '2021-12-29 19:32:42', 'cc'),
(128, 'Pet Su', NULL, 'Pet Su', 'images/d3GgsQvHPCqe0LwLfuHeDHoMIBucsi23epXOFYeu.jpg', 15, 23, '1', 45.00, '1', 'true', NULL, '2021-12-29 19:34:29', 'dd'),
(129, 'limonata', 'Limonata', '</div>', 'images/ExeYHK2ioiLc1XBkJKP59kiytGWmmfzYbzwHNdqU.jpg', 15, 24, '1', 12.00, '1', 'false', NULL, '2021-12-29 20:40:01', 'ee'),
(130, 'Taze Portakal Suyu', 'Taze Portakal Suyu', 'Taze Portakal Suyu', NULL, 15, 25, NULL, 32.00, '1', 'true', NULL, NULL, 'll'),
(131, 'Pepsi 330 Ml.', 'Pepsi 330 Ml.', 'Pepsi 330 Ml.', NULL, 15, 26, NULL, 12.00, '1', 'true', NULL, NULL, 'kk'),
(132, 'Fanta 330 Ml.', 'Fanta 330 Ml.', 'Fanta 330 Ml.', NULL, 15, 27, NULL, 10.00, '1', 'true', NULL, NULL, 'jj'),
(133, 'Kuzu Kaburga.', 'Kuzu Kaburga.', 'Kuzu Kaburga.', NULL, 16, 28, NULL, 50.00, '1', 'true', NULL, NULL, 'hh'),
(134, 'Kuşbaşı', 'Kuşbaşı', 'Kuşbaşı', NULL, 16, 29, NULL, 60.00, '1', 'true', NULL, NULL, 'gg'),
(135, 'Karışık Izgara.', 'Karışık Izgara.', 'Karışık Izgara.', NULL, 16, 30, NULL, 40.00, '1', 'true', NULL, NULL, 'aaa'),
(136, 'Ali Nazik.', 'Ali Nazik.', 'Ali Nazik.', NULL, 16, 31, NULL, 80.00, '1', 'true', NULL, NULL, 'sss'),
(137, 'Yoğurtlu Kebap', 'Yoğurtlu Kebap', 'Yoğurtlu Kebap', NULL, 16, 32, NULL, 70.00, '1', 'true', NULL, NULL, 'ccc'),
(138, 'İskender', 'İskender', 'İskender', NULL, 16, 33, NULL, 30.00, '1', 'true', NULL, NULL, 'kkk'),
(139, 'Sarma Beyti.', 'Sarma Beyti.', 'Sarma Beyti.', NULL, 16, 34, NULL, 25.00, '1', 'true', NULL, NULL, 'hhh'),
(140, 'Çöp Şiş', 'Çöp Şiş', 'Çöp Şiş', NULL, 16, 35, NULL, 35.00, '1', 'true', NULL, NULL, 'nnn'),
(141, 'Kahvaltı Tabağı', 'Kahvaltı Tabağı', 'Kahvaltı Tabağı', NULL, 17, 36, NULL, 45.00, '1', 'true', NULL, NULL, 'yyy');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AyILxYvTaIa3kfsOFY1zLS5OfC2SGkdGTQjwX9yC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicFNta0I3NVNDeDFpQ2QxUEtOMnZUM3hFTmo2RXBIQkprQmpwWk1vbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRoakNHZVNSTndHVWdabXZWTnUxaTdlR00uRm8yZUFyNER2Y2ZKbFVrRlVuZ2FJYVJsQ3QwSyI7fQ==', 1642319944),
('KifVnG35MgmESU27MIjmeBxpIlBFNrFGSrHwBAH8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZUVzcUNPN3p1ZFd0SmpqM3JoSlpjOE1rNHJ5clFJdHcwNEd0NzJMdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fX0=', 1642434918);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT 0,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `references` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`, `Keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtpport`, `facebook`, `instagram`, `twitter`, `youtube`, `aboutus`, `contact`, `references`, `status`, `created_at`, `updated_at`) VALUES
(1, 'projetubatle', NULL, 'tutu', 'jnelcfhblqedbh', 'Gaziantep', '05550258971', 'nsm', 'tutubozan1997@gmail.com', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'Etiam faucibus viverra libero vel efficitur. Ut semper nisl ut laoreet ultrices. Attachment CREFERENCES\r\nAdak, G.K., S.M. Meakins, H. Yip, B.A. Lopman, and S.J. O’Brien. 2005. Disease risks from foods, England and Wales: 1996-2000. Emerg. Infect. Dis. 11(3):365-372. [PMC free article] [PubMed]\r\nBatz, M. 2007. An Approach to Ranking Microbial Foodborne Hazards. Presentation at the Tools for Prioritizing Food Safety Concerns, JIFSAN (Joint Institute for Food Safety and Applied Nutrition) Workshop, June 4-6, 2007, Greenbelt, MD [online]. Available: http://www​.jifsanapps​.umd.edu/presentations​/tools_2007/PDF/6​.Batz_JIFSAN_Food_Safety.pdf [accessed Dec. 9, 2008].\r\nBatz, M.B., S.A. Hoffmann, A.J. Krupnick, J.G. Morris, D.M. Sherman, M.R. Taylor, and J.S. Tick. 2004. Identifying the Most Significant Microbiological Foodborne Hazards to Public Health: A New Risk Ranking Model. Food Safety Research Consortium Discussion Paper No. 1. Resources for the Future, Washington, DC: [online]. Available: http://www​.rff.org/RFF​/Documents/FRSC-DP-01.pdf [accessed Feb. 6, 2009].\r\nBatz, M.B., M.P. Doyle, J.G. Morris, J. Painter, R. Singh, R.V. Tauxe, M.R. Taylor, and D.M. Lo Fo Wong. 2005. Attributing illness to food. Emerg. Infect. Dis. 11(7):993-999. [PMC free article] [PubMed]\r\nCassin, M.H., A.M. Lammerding, E.C. Todd, W. Ross, and R.S. McColl. 1998. Quantitative risk assessment for Escherichia coli O157:H7 in ground beef hamburgers. Int. J. Food Microbiol. 41(1):21-44. [PubMed]\r\nCDC (Centers for Disease Control and Prevention). 2006. a. Annual Listing of Foodborne Disease Outbreaks, United States – 2006. U.S. Department of Health and Human Services, Centers for Disease Control and Prevention; [online]. Available: http://www​.cdc.gov.foodborneoutbreaks​/outbreak_data.htm [accessed Jan. 28, 2009].\r\nCDC (Centers for Disease Control and Prevention). 2006. b. FoodNet Studies and Surveys – Case-Control Studies. U.S. Department of Health and Human Services, Centers for Disease Control and Prevention; [online]. Available: http://www​.cdc.gov/FoodNet​/studies_pages/case.htm [accessed Jan. 27, 2009].\r\nCDC (Centers for Disease Control and Prevention). 2007. Preliminary FoodNet data on the incidence of infection with pathogens transmitted commonly through food - 10 states, 2006. MMWR 56(14):336-339 [online]. Available: http://www​.cdc.gov/mmwr​/preview/mmwrhtml/mm5614a4.htm [accessed Feb. 6, 2009]. [PubMed]\r\nCDC (Centers for Disease Control and Prevention). 2008. Preliminary FoodNet data on the incidence of infection with pathogens transmitted commonly through food - 10 states, 2007. MMWR 57(14):366-370 [online]. Available: http://www​.cdc.gov/mmwr​/preview/mmwrhtml/mm5714a2.htm [accessed Apr. 3, 2009]. [PubMed]\r\nCDC (Centers for Disease Control and Prevention). 2008. a. Campylobacter. Division of Foodborne, Bacterial and Mycotic Diseases, Centers for Disease Control and Prevention; [online]. Available: http://www​.cdc.gov/nczved​/dfbmd/disease_listing​/campylobacter_gi.html [accessed Jan. 9, 2009].\r\nCDC (Centers for Disease Control and Prevention). 2008. b. Salmonella Surveillance: Annual Summary, 2006. Centers for Disease Control and Prevention, Atlanta, GA: [online]. Available: http://www​.cdc.gov/ncidod​/dbmd/phlisdata​/salmtab/2006/SalmonellaAnnualSummary2006.pdf [accessed Feb. 10, 2009].\r\nCFSAN/FSIS/CDC (Center for Food Safety and Applied Nutrition/ Food Safety Inspection Service/ Centers for Disease Control and Prevention). 2003. Quantitative Assessment of Relative Risk to Public Health from Foodborne Listeria monocytogenes Among Selected Categories of Ready-to-Eat Foods. Food and Drug Administration Center for Food Safety and Applied Nutrition, U.S. Department of Agriculture, Food Safety Inspection Service, and Centers for Disease Control and Prevention. September 2003 [online]. Available: http://www​.cfsan.fda​.gov/~dms/lmr2-toc.html [accessed Feb. 9, 2009].\r\nChen, Y., K.M. Jackson, F.P. Chea, and D.W. Schaffner. 2001. Quantification and variability analysis of bacterial cross-contamination rates in the kitchen. J. Food Protect. 64(1):72-80. [PubMed]\r\nClemen, R.T., and R.L. Winkler. 1999. Combining probability distributions from experts in risk analysis. Risk Anal. 19(2):187-204.\r\nCooke, R.M., and L.H. Goossens. 1999. Procedures Guide for Structured Expert Judgment. Prepared for the Commission of European Communities, by Delft University of Technology, Delft, The Netherlands. June 1999.\r\nCressey, P.J., and R. Lake. 2004. Ranking Microbiological Food Safety Risk in New Zealand. Poster P109 at International Association for Food Protection 91st Annual Meeting, August 8-11, 2004, Phoenix, AZ [Journal of Food Protection 67 (Suppl. A):87].\r\nCrouch, E., and N.J. Golden. 2005. A Risk Assessment for Clostridium perfringens in Ready-to-Eat and Partially Cooked Meat and Poultry Products. U.S. Department of Agriculture, Food Safety and Inspection Service; [online]. Available: http://www​.fsis.usda​.gov/PDF/CPerfringens​_Risk_Assess_Sep2005.pdf [accessed Feb. 6, 2009].\r\nDewaal, C.S., H. Giselle, K. Barlow, L. Alderton, and L. Vegosen. 2006. Foods associated with foodborne illness outbreaks from 1990 through 2003. Food Protection Trends 26(7):466-473.\r\nDreyling, E. 2008. Public Health Risk Ranking for Processing and Slaughter Establishments. Presentation at the First Meeting on the Use of Public Health Data in FSIS Food Safety Programs, November 6, 2008, Washington, DC.\r\nEFSA (European Food Safety Authority). 2008. Overview of methods for source attribution for human illness from foodborne microbiological hazards: Scientific opinion of the Panel on Biological Hazards. The EFSA Journal 764:1-43 [online]. Available: http://www​.efsa.europa​.eu/cs/BlobServer/Scientific_Opinion​/biohaz​_op_ej764_source_attribution_en​.pdf?ssbinary=true [accessed Feb. 6, 2009].\r\nEvers, E.G., H.J. Van Der Fels-Klerx, M.J. Nauta, J.F. Schijven, and A.H. Havelaar. 2008. Campylobacter source attribution by exposure assessment. Int. J. Risk. Assess. Manag. 8(1/2):174-190.\r\nFAO/WHO (Food and Agriculture Organization of the United Nations/World Health Organization). 2001. Joint FAO/WHO Food Standards Programme: CODEX Committee on Food Hygiene, 34th Section, Bangkok, Thailand, October 8-13, 2001: Draft Response to the Codex Executive Committee Regarding Clarification of the Terms “Hazard Analysis”and “Risk Analysis”. CX/FH 01/2-Add.1. August 2001 [online]. Available: ftp://ftp​.fao.org/codex/ccfh34/fh0102ae​.pdf [accessed Feb. 6, 2009].\r\nFriedman, C.R., R.M. Hoekstra, M. Samuel, R. Marcus, J. Bender, B. Shiferaw, S. Reddy, S.D. Ahuja, D.L. Helfrick, F. Hardnett, M. Carter, B. Anderson, and R.V. Tauxe. 2004. Risk factors for sporadic Campylobacter infection in the United States: A case-control study in FoodNet sites. Clin. Infect. Dis. 38(Suppl 3):S285-S296. [PubMed]\r\nFSIS (Food Safety and Inspection Service). 2001. Risk Assessment of the Public Health Impact of Escherichia coli 0157:H7 in Ground Beef. U.S. Department of Agriculture, Food Safety and Inspection Service. September 7, 2001 [online]. Available: http://www​.fsis.usda​.gov/OPPDE/rdad/FRPubs​/00-023N/00-023NReport.pdf [accessed Mar. 5, 2009].\r\nFSIS (Food Safety and Inspection Service). 2008. a. Public Health Risk-Based Inspection System for Processing and Slaughter. Technical Report. U.S. Department of Agriculture, Food Safety and Inspection Service. April 18, 2008 [online]. Available: http://www​.fsis.usda​.gov/OPPDE/NACMPI/Feb2008​/Processing_Slaughter​_Tech_Rpt_041808.pdf [accessed Feb. 9, 2009].\r\nFSIS (Food Safety and Inspection Service). 2008. b. Improvements for Poultry Slaughter Inspection. Technical Report. U.S. Department of Agriculture, Food Safety and Inspection Service. May 16, 2008 [online]. Available: http://www​.fsis.usda​.gov/OPPDE/NACMPI/Feb2008​/Poultry_Slaughter_Tech_Report.pdf [accessed Feb. 6, 2008].\r\nFSIS (Food Safety and Inspection Service). 2008. c. Public Health Risk-Based Inspection System for Processing and Slaughter. Appendix A. Public Health Attribution and Performance Measures Methods. U.S. Department of Agriculture, Food Safety and Inspection Service; [online]. Available: http://www​.fsis.usda​.gov/OPPDE/NACMPI/Feb2008​/Processing_Appendix_A_041808.pdf [accessed Feb. 9, 2009].\r\nFullerton, K.E., L.A. Ingram, T.F. Jones, B.J. Anderson, P.V. McCarthy, S. Hurd, B. Shiferaw, D. Vugia, N. Haubert, T. Hayes, S. Wedel, E. Scallan, O. Henao, and F.J. Angulo. 2007. Sporadic campylobacter infection in infants: A population-based surveillance case-control study. Pediatr. Infect. Dis. J. 26(1):19-24. [PubMed]\r\nGallagher, D.L., E.D. Ebel, and J.R. Kause. 2003. FSIS Risk Assessment for Listeria monocytogenes in Deli Meats. U.S. Department of Agriculture, Food Safety and Inspection Service; [online]. Available: http://www​.fsis.usda​.gov/OPPDE/RDAD/FRPubs​/97-013F/ListeriaReport.pdf [accessed Feb. 9, 2009].\r\nGuo, C. 2007. A Statistical Model for Attributing Human Salmonellosis to Meat, Poultry, and Eggs. Food Safety Summit Attributing Illness to Food, April 5, 2007 , Washington, DC. U.S. Department of Agriculture, Food Safety and Inspection Service; [online]. Available: http://www​.fsis.usda.gov/PDF/RBI_Guo.pdf [accessed Feb. 10, 2009].\r\nHald, T., D. Vose, H.C. Wegener, and T. Koupeev. 2004. A Bayesian approach to quantify the contribution of animal-food sources to human salmonellosis. Risk Anal. 24(1):255-269. [PubMed]\r\nHald, T., D.M. Lo Fo Wong, and F.M. Aarestrup. 2007. The attribution of human infections with antibiotic resistant Salmonella bacteria in Denmark to sources of animal origin. Foodborne Pathog. Dis. 4(3):313-326. [PubMed]\r\nHall, G., M.D. Kirk, N. Becker, J.E. Gregory, L. Unicomb, G. Millard, R. Stafford, and K. Lalor. 2005. Estimating foodborne gastroenteritis, Australia. Emerg. Infect. Dis. 11(8):1257-1264. [PMC free article] [PubMed]\r\nHavelaar, A.H., J. Braunig, K. Christiansen, M. Cornu, T. Hald, M.J.J. Mangen, K. Molbak, A. Pielaat, E. Snary, W. Van Pelt, A. Velthuis, and H. Wahlstrom. 2007. Towards an integrated approach in supporting microbiological food safety decisions. Zoonoses Public Health 54(3-4):103-117. [PubMed]\r\nHavelaar, A.H., A.V. Galindo, D. Kurowicka, and R.M. Cooke. 2008. Attribution of foodborne pathogens using structured expert elicitation. Foodborne Pathog. Dis. 5(5):649-659. [PubMed]\r\nHennessy, T.W., C.W. Hedberg, L. Slutsker, K.E. White, J.M. Besser-Wiek, M.E. Moen, J. Feldman, W.W. Coleman, L.M. Edmonson, K.L. MacDonald, M.T. Osterholm. 1996. A national outbreak of Salmonella enteritidis infections from ice cream. N Engl J Med. 334(20):1281-1286. [PubMed]\r\nHoffmann, S., P. Fischbeck, A. Krupnick, and M. McWilliams. 2007. a. Using expert elicitation to link foodborne illnesses in the United States to foods. J. Food Prot. 70(5):1220-1229. [PubMed]\r\nHoffmann, S., P. Fischbeck, A. Krupnick, and M. McWilliams. 2007. b. Elicitation from large, heterogeneous expert panels: Using multiple uncertainty measures to characterize information quality for decision analysis. Decision Anal. 4(2):91-109.\r\nHoffmann, S., P. Fischbeck, A. Krupnick, and M. McWilliams. 2008. Informing risk-mitigation priorities using uncertainty measures derived from heterogeneous expert panels: A demonstration using foodborne pathogens. Reliab. Eng. Syst. Safe. 93(5):687-698.\r\nHurd, S. 2008. USDA Perspective on Charge to NAS Committee. Presentation at the First Meeting on the Use of Public Health Data in FSIS Food Safety Programs, November 6, 2008, Washington, DC.\r\nIOM (Institute of Medicine). 2009. Review of the Use of Process Control Indicators in the FSIS Public Health Risk-Based Inspection System. A Letter Report. Washington, DC: National Academies Press. [PubMed]\r\nIOM/NRC (Institute of Medicine and National Research Council). 2003. Scientific Criteria to Ensure Safe Food. Washington, DC: National Academies Press. [PubMed]\r\nKarns, S., M. Muth, and M. Cogliaiti. 2005. Relative Risks of Meat and Poultry Products: An Expert Elicitation (Contract No. 43-3A94-2-0260). Memorandum to M. Michael, Food Safety and Inspection Service, from S. Karns, M. Muth, and M. Cogliaiti, RTI International, Research Triangle Park, NC. September 22, 2005 [online]. Available: http://www​.fsis.usda​.gov/pdf/elicitation_memo_092205.pdf [accessed Mar. 25, 2009].\r\nKarns, S.A., M.K. Muth, and M.C. Coglaiti. 2007. Results of an Additional Expert Elicitation on the Relative Risks of Meat and Poultry Products: Final Report. RTI Project No. 0208893.027. Prepared for U.S. Department of Agriculture, Food Safety and Inspection Service, Washington, DC, by RTI International, Research Triangle Park, NC. July 2007 [online]. Available: http://www​.rti.org/pubs/08893_027_final​.pdf [accessed Feb. 9, 2009].\r\nKeene, B., and C.P. Kanwat. 2007. Presentation at the 3rd Annual Meeting for OutbreakNet (Outbreak Network for Foodborne Diseases Surveillance and Response), 2007 CSTE (Council of State and Territorial Epidemiologists) Annual Conference, June 24, 2007, Atlantic City, NJ.\r\nKelly, L.A., E. Hartnett, G. Gettinby, A. Fazil, E. Snary, and M. Wooldridge. 2003. Microbiological safety of poultry meat: Risk assessment as a way forward. World Poultry. Sci. J. 59:495-508.\r\nKimura, A.C., V. Reddy, R. Marcus, P.R. Cieslak, J.C. Mohle-Boetani, H.D. Kassenborg, S.D. Segler, F.P. Hardnett, T. Barrett, and D.L. Swerdlow. 2004. Chicken consumption is a newly identified risk factor for sporadic Salmonella enterica serotype Enteritidis infections in the United States: A case-control study in FoodNet sites. Clin. Infect. Dis. 38(Suppl. 3): S244-S252. [PubMed]\r\nLynch, M., J. Painter, R. Woodruff, and C. Braden. 2006. Guidelines for confirmation of food-borne disease outbreaks. Appendix B in Surveillance for Foodborne Disease outbreaks—United States, 1998-2002. MMWR 55(SS10):38-42. [online]. Available: http://www​.cdc.gov/mmwr​/preview/mmwrhtml/ss5510a3.htm [accessed Dec. 16, 2008].\r\nMalorny, B., E. Junker, and R. Helmuth. 2008. Multi-locus variable-number tandem repeat analysis for outbreak studies of Salmonella enterica serotype Enteritidis. BMC Microbiol. 8:84. [PMC free article] [PubMed]\r\nMcNabb, S.J.N., R.A. Jajosky, P.A. Hall-Baker, D.A. Adams, P. Sharp, C. Worsham, W.J. Anderson, J.J. Aponte, G.F. Jones, D.A. Nitschke, A. Rey, and M.S. Wodajo. 2008. Summary of Notifiable Disease-United States, 2006. MMWR 55(53) [online]. Available: http://www​.cdc.gov/mmWR/PDF/wk/mm5553​.pdf [accessed Feb. 10, 2009]\r\nMead, P.S., L. Slutsker, V. Dietz, L.F. McCraig, H.S. Bresee, C. Shapiro, P.M. Griffin, and R.B. Tauxe. 1999. Food-related illness and death in the United States. Emerg. Infect. Dis. 5(5):607-625. [PMC free article] [PubMed]\r\nNauta, M., I. van der Fels-Klerx, and A. Havelaar. 2005. A poultry-processing model for quantitative microbiological risk assessment. Risk Anal. 25(1):85-98. [PubMed]\r\nNRC (National Research Council). 2009. Review of the Methodology Proposed by the Food Safety Inpection Service for Risk-Based Surveillance of In-Commerce Activites. A Letter Report. Washington, DC: National Academies Press.\r\nOIG (Office of Inspector General). 2007. Issues Impacting the Development of Risk-Based Inspection at Meat and Poultry Processing Establishments. Audit Report No. 24601-07-Hy. U.S. Department of Agriculture, Office of Inspector General, Northeast Region. December 2007 [online]. Available: http://www​.usda.gov/oig​/webdocs/24601-07-HY.pdf [accessed Feb. 9, 2009].\r\nRibot, E.M., M.A. Fair, R. Gautom, D.N. Cameron, S.B. Hunter, B. Swaminathan, and T.J. Barrett. 2006. Standardization of pulsed-field gel electrophoresis protocols for the subtyping of Escherichia coli O157:H7, Salmonella, and Shigella for PulseNet. Foodborne Pathog. Dis. 3(1):59-67. [PubMed]\r\nRidgon, C.E. 2007. Developing a Method of Point-of-Processing Attribution For Human Salmonellosis in the United States. Ph. D. Dissertation. University of Minnesota. February 2007.\r\nRoss, T., and J. Sumner. 2002. A simple, spreadsheet-based, food safety risk assessment tool. Int. J. Food Microbiol. 77(1-2):39-53. [PubMed]\r\nSamuel, M.C., D. Portnoy, R.V. Tauxe, F.J. Angulo, D.J. Vugia. 2001. Complaints of foodborne illness in San Francisco, California, 1998. J Food Prot. 64(8):1261-1264. [PubMed]\r\nScallan, E. 2007. Activities, achievements, and lessons learned during the first 10 years of the foodborne\r\nHow does it work ?\r\nEtiam faucibus viverra libero vel efficitur. Ut semper nisl ut laoreet ultrices. Maecenas dictum arcu purus, sit amet volutpat purus viverra sit amet. Quisque lacinia quam sed tortor interdum, malesuada congue nunc ornare. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In semper lorem eget tortor pulvinar ultricies. Nulla sodales efficitur consequat. Maecenas mi diam, imperdiet consectetur ultricies nec, convallis sit amet turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor vehicula ipsum nec ultrices. Pellentesque sed feugiat sapien.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor vehicula ipsum nec ultrices. Pellentesque sed feugiat sapien. ullamcorper nunc. Aenean eget massa orci. Vivamus vulputate elit at rutrum elementum. Duis sit amet posuere justo, sit amet finibus urna. Aenean elementum diam nec laoreet sodales. Morbi vulputate tempor nisl nec tristique.\r\n\r\nOur history\r\nEtiam faucibus viverra libero vel efficitur. Ut semper nisl ut laoreet ultrices. Maecenas dictum arcu purus, sit amet volutpat purus viverra sit amet. Quisque lacinia quam sed tortor interdum, malesuada congue nunc ornare. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In semper lorem eget tortor pulvinar ultricies. Nulla sodales efficitur consequat. Maecenas mi diam, imperdiet consectetur ultricies nec, convallis sit amet turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor vehicula ipsum nec ultrices. Pellentesque sed feugiat sapien.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor vehicula ipsum nec ultrices. Pellentesque sed feugiat sapien. ullamcorper nunc. Aenean eget massa orci. Vivamus vulputate elit at rutrum elementum. Duis sit amet posuere justo, sit amet finibus urna. Aenean elementum diam nec laoreet sodales. Morbi vulputate tempor nisl nec tristique.', 'öjnbkjvkjvkjvk', 'Van der Fels-Klerx, I.H., L.H. Goossens, H.W. Saatkamp, and S.H. Horst. 2002. Elicitation of quantitative data from a heterogeneous expert panel: Formal process and application in animal health. Risk Anal. 22(1):67-81. [PubMed]\r\nVanderlinde, P. 1998. Quantitative microbial risk assessment - An Australian perspective. Food Aust. 50(12):626-628.\r\nvan Duynhoven, Y.T.H.P., M.A.S. De Wit, L.M. Kortbeek, and M.P.G. Koopmans. 2002. Food infections in the Netherlands [in Dutch]. Ned. Tijdschr. Med. Microbiol. 10:79-83.\r\nvan Pelt, W., M.A. de Wit, W.J. Wannet, E.J. Ligtvoet, M.A. Widdowson. and Y.T. van Duynhoven. 2003. Laboratory surveillance of bacterial gastroenteric pathogens in The Netherlands, 1991-2001. Epidemiol. Infect. 130(3):431-441. [PMC free article] [PubMed]', 'false', '2021-12-24 14:55:33', '2021-12-24 17:54:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shopcarts`
--

CREATE TABLE `shopcarts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `phone`, `address`) VALUES
(1, 'Tuğba Bozan', 'tutubozan1997@gmail.com', NULL, '$2y$10$hjCGeSRNwGUgZmvVNu1i7eGM.Fo2eAr4DvcfJlUkFUngaIaRlCt0K', NULL, NULL, 'Z3Qq18O06CqhAfHW0pQ13DGAoV0Hvcv03Rm8fsZ5spsorzknraL4yDxi9sk6', NULL, 'profile-photos/3JlXoGoX86Z9iOApLD3AjHWhAH95cIsWxeIO0nfa.jpg', '2021-12-09 16:58:14', '2021-12-27 20:00:37', '05550258971', 'Karabük şakinler özel kız öğrenci kız yurdu');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shopcarts`
--
ALTER TABLE `shopcarts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Tablo için AUTO_INCREMENT değeri `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- Tablo için AUTO_INCREMENT değeri `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `shopcarts`
--
ALTER TABLE `shopcarts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
