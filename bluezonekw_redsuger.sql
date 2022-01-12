-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2022 at 12:16 AM
-- Server version: 10.3.32-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluezonekw_redsuger`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_categories`
--

CREATE TABLE `basic_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_categories`
--

INSERT INTO `basic_categories` (`id`, `name_ar`, `name_en`, `image_url`, `type`, `created_at`, `updated_at`) VALUES
(20, 'فاكهة', 'Fruits', 'uploads/basic_categories/images/16413741992644.jpg', 1, '2021-12-13 19:10:47', '2022-01-05 09:16:39'),
(21, 'خضار', 'vegetable', 'uploads/basic_categories/images/16413740119883.jpg', 1, '2021-12-13 19:13:09', '2022-01-05 09:13:31'),
(24, 'اعشاب', 'herbs', 'uploads/basic_categories/images/16413738865832.jpg', 1, '2021-12-18 21:42:13', '2022-01-05 09:11:26'),
(25, 'اشجار', 'trees', 'uploads/basic_categories/images/16413735927351.jpg', 1, '2021-12-18 21:50:29', '2022-01-05 09:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `best_sellers`
--

CREATE TABLE `best_sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `best_sellers`
--

INSERT INTO `best_sellers` (`id`, `product_id`, `rate`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2021-09-13 22:51:58', '2021-11-17 12:30:56'),
(2, 2, 4, '2021-10-23 08:37:33', '2021-11-20 00:01:17'),
(3, 5, 19, '2021-11-16 14:43:53', '2021-11-19 21:35:52'),
(4, 4, 10, '2021-11-17 12:30:56', '2021-11-22 13:42:27'),
(5, 3, 93, '2021-11-17 12:39:54', '2021-11-20 01:11:27'),
(6, 11, 1, '2021-12-07 21:10:44', '2021-12-07 21:10:44'),
(7, 21, 1, '2021-12-18 20:31:49', '2021-12-18 20:31:49'),
(8, 23, 13, '2021-12-19 23:15:53', '2021-12-26 04:14:28'),
(9, 27, 9, '2021-12-19 23:32:20', '2021-12-26 17:59:28'),
(10, 26, 5, '2021-12-23 18:48:25', '2022-01-05 09:22:50'),
(11, 24, 1, '2021-12-23 18:48:25', '2021-12-23 18:48:25'),
(12, 28, 1, '2021-12-23 18:48:25', '2021-12-23 18:48:25'),
(13, 34, 5, '2022-01-06 09:35:41', '2022-01-06 09:41:44'),
(14, 38, 7, '2022-01-09 12:20:07', '2022-01-11 21:19:51'),
(15, 25, 2, '2022-01-11 16:19:19', '2022-01-11 16:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `basic_category_id`, `created_at`, `updated_at`) VALUES
(16, 'مانجو', 'mango', 20, '2021-12-18 22:07:47', '2021-12-18 22:07:47'),
(17, 'حمضيات', 'citrus', 20, '2021-12-18 22:10:08', '2022-01-09 11:14:13'),
(18, 'فراولة', 'Strawberry', 20, '2021-12-18 22:11:47', '2021-12-18 22:11:47'),
(21, 'روزماري', 'RoseMary', 24, '2022-01-06 14:00:28', '2022-01-06 14:00:28'),
(22, 'بردقوش', 'bardaqush', 24, '2022-01-06 14:02:14', '2022-01-06 14:02:14'),
(23, 'زعتبر بري', 'zaetar', 24, '2022-01-06 14:03:47', '2022-01-06 14:03:47'),
(24, 'مرامية', 'maramia', 24, '2022-01-06 14:04:06', '2022-01-06 14:04:06'),
(25, 'طماطم شيري', 'tamatim shiri', 21, '2022-01-06 14:04:54', '2022-01-06 14:04:54'),
(26, 'شتلات زينة', 'shatlat zina', 25, '2022-01-06 14:07:10', '2022-01-06 14:07:10'),
(27, 'شتلات فراولة', 'shatalat frawila', 25, '2022-01-06 14:08:09', '2022-01-06 14:08:09'),
(28, 'فاكهة اخرى', 'other fruit', 20, '2022-01-09 11:24:51', '2022-01-09 11:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_period` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `delivery`, `delivery_period`, `country_id`, `created_at`, `updated_at`) VALUES
(4, 'حولي', 'hawali', '2', '2', 3, '2021-12-19 01:12:31', '2021-12-19 01:12:31'),
(5, 'الجابريه', 'Al-Jabriya', '5', '2', 3, '2021-12-19 01:13:41', '2021-12-29 16:25:58'),
(6, 'سلوي', 'Salwa', '3', '2', 3, '2021-12-19 23:24:34', '2021-12-29 16:25:37'),
(7, 'السالمية', 'Salmiya', '3', '2', 3, '2021-12-19 23:24:35', '2021-12-29 16:25:08'),
(8, 'الرميثيه', 'Rumaithiya', '3', '2', 3, '2021-12-29 16:26:21', '2021-12-29 16:26:21'),
(9, 'بيان', 'bayan', '1.5', '2', 3, '2021-12-29 16:26:44', '2022-01-11 18:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name_ar`, `name_en`, `code`, `created_at`, `updated_at`) VALUES
(3, 'ازرق', 'blue', NULL, '2021-12-12 10:49:38', '2021-12-12 12:28:55'),
(4, 'احمر', 'red', NULL, '2021-12-12 12:28:39', '2021-12-12 12:28:39'),
(5, 'وردي', 'pink', NULL, '2021-12-12 12:29:16', '2021-12-12 12:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `phone`, `email`, `subject`, `body`, `file`, `created_at`, `updated_at`) VALUES
(7, 'Lane Hubbard', '+1 (955) 753-7568', 'pyporoloro@mailinator.com', 'Minima quas officiis', 'Maiores lorem volupt', 'uploads/products/images/1640167721767333-1.jpg', '2021-12-22 18:08:41', '2021-12-22 18:08:41'),
(8, 'Lane Hubbard', '+1 (955) 753-7568', 'pyporoloro@mailinator.com', 'Minima quas officiis', 'Maiores lorem volupt', 'uploads/contactus/images/1640167909269333-1.jpg', '2021-12-22 18:11:49', '2021-12-22 18:11:49'),
(9, 'Joan Johnston', '+1 (197) 828-4352', 'huwun@mailinator.com', 'Est voluptates aut d', 'Eum excepturi consec', NULL, '2021-12-22 21:27:59', '2021-12-22 21:27:59'),
(10, 'NathanNette', '83857594155', 'no-replyerync@gmail.com', 'A new method of email distribution.', 'Good day!  redsugar80.com \r\n \r\nWe advance \r\n \r\nSending your business proposition through the Contact us form which can be found on the sites in the contact section. Feedback forms are filled in by our application and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This method improve the probability that your message will be read. \r\n \r\nOur database contains more than 27 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing Up to 50,000 messages. \r\n \r\n \r\nThis letter is created automatically.  Use our contacts for communication. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', NULL, '2022-01-06 06:17:02', '2022-01-06 06:17:02'),
(11, 'ناصر فهد العنزي', '99804440', 'Q8i_gold@hotmail.com', 'الجهراء النعيم قطعة ١ شارع ٥ منزل ٣٧', 'السلام عليكم \r\nهل يوجد توصيل للجهراء ؟', NULL, '2022-01-10 14:49:21', '2022-01-10 14:49:21'),
(12, 'Mike Carrington', '84388721778', 'no-replyaccica@gmail.com', 'Local SEO for more business', 'Hi \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our pricelist here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Carrington\r\n \r\nSpeed SEO Digital Agency', NULL, '2022-01-11 07:12:11', '2022-01-11 07:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_ar`, `name_en`, `code`, `country_code`, `delivery`, `image_url`, `currency_id`, `created_at`, `updated_at`) VALUES
(3, 'الكويت', 'Kuwait', '965', 'Kuwait', NULL, 'uploads/countries/images//16398474953302000px-flag_of_kuwait.svg.png', 1, '2021-12-19 01:11:35', '2022-01-09 22:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 'abc', 10, NULL, NULL),
(2, 'asd', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `rate`, `code_en`, `code_ar`, `created_at`, `updated_at`) VALUES
(1, 'Kuwaiti dinar', '1', 'K.D', 'د.ك', '2021-09-11 21:23:06', '2022-01-05 09:51:46');

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
-- Table structure for table `heights`
--

CREATE TABLE `heights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2021_08_15_012612_laratrust_setup_tables', 1),
(5, '2021_08_15_040324_create_basic_categories_table', 1),
(6, '2021_08_15_040614_create_categories_table', 1),
(7, '2021_08_15_041045_create_currencies_table', 1),
(8, '2021_08_15_041057_create_countries_table', 1),
(9, '2021_08_15_041106_create_cities_table', 1),
(10, '2021_08_17_133717_create_sliders_table', 1),
(11, '2021_08_17_161537_create_settings_table', 1),
(12, '2021_08_17_161551_create_pages_table', 1),
(13, '2021_08_17_163313_create_contact_messages_table', 1),
(14, '2021_08_17_182358_create_sizes_table', 1),
(15, '2021_08_17_182535_create_heights_table', 1),
(16, '2021_08_18_031802_create_products_table', 1),
(17, '2021_08_18_120403_create_prod_sizes_table', 1),
(18, '2021_08_18_120505_create_prod_heights_table', 1),
(19, '2021_08_18_120544_create_prod_imgs_table', 1),
(20, '2021_08_19_170714_create_wish_lists_table', 1),
(21, '2021_08_22_053016_create_views_table', 1),
(22, '2021_08_28_104240_create_orders_table', 1),
(23, '2021_08_28_104325_create_order_items_table', 1),
(24, '2021_09_13_114827_create_best_sellers_table', 2),
(25, '2021_11_11_120919_create_posts_table', 3),
(26, '2021_11_13_183327_create_news_table', 4),
(27, '2021_11_17_122802_create_coupons_table', 5),
(28, '2021_11_25_004705_create_size_guides_table', 6),
(29, '2021_12_09_001940_create_user_coupons_table', 7),
(30, '2021_12_12_112723_create_colors_table', 8),
(31, '2021_12_12_131017_create_prod_colors_table', 9),
(32, '2021_12_23_054456_add_is_free_shop_to_settings_table', 10),
(33, '2021_12_23_064102_create_slid_categories_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `appearance` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `country_id`, `city_id`, `user_id`, `address1`, `postal_code`, `address2`, `region`, `note`, `invoice_id`, `invoice_link`, `status`, `total_price`, `total_quantity`, `created_at`, `updated_at`) VALUES
(95, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 4, 7, 'الكويت شارع اي شئ', '0', NULL, NULL, NULL, '42360743', 'https://portal.myfatoorah.com/KWT/ie/0508330054236074366', 1, '12', '1', '2021-12-19 23:32:20', '2021-12-19 23:32:20'),
(96, 'Islam Ramadan', 'red@gmail.com', '01100618113', 3, 4, 5, 'bazar.alkuwait@gmail.com', '0', NULL, NULL, NULL, '42369664', 'https://portal.myfatoorah.com/KWT/ie/0508330054236966467', 0, '22', '2', '2021-12-20 01:48:09', '2021-12-20 01:48:09'),
(97, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, '42616668', 'https://portal.myfatoorah.com/KWT/ie/0508330054261666867', 0, '12', '1', '2021-12-23 14:20:16', '2021-12-23 14:20:17'),
(98, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '12', '1', '2021-12-23 14:23:08', '2021-12-23 14:23:08'),
(99, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '12', '1', '2021-12-23 14:23:52', '2021-12-23 14:23:52'),
(100, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '12', '1', '2021-12-23 14:23:56', '2021-12-23 14:23:56'),
(101, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, '42617055', 'https://portal.myfatoorah.com/KWT/ie/0508330054261705566', 0, '10', '1', '2021-12-23 14:27:45', '2021-12-23 14:27:46'),
(102, 'Islam Ramadan', 'red@gmail.com', '01100618113', 3, 5, 5, '647 New Extension', '0', NULL, NULL, NULL, '42640241', 'https://portal.myfatoorah.com/KWT/ie/0508330054264024165', 1, '5', '3', '2021-12-23 18:48:25', '2021-12-23 18:48:26'),
(103, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 4, 0, 'HWALII', '0', NULL, NULL, NULL, '42847035', 'https://portal.myfatoorah.com/KWT/ie/0508330054284703566', 0, '10', '1', '2021-12-25 22:18:51', '2021-12-25 22:18:52'),
(104, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '2', '1', '2021-12-26 00:47:14', '2021-12-26 00:47:14'),
(105, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '2', '1', '2021-12-26 00:47:45', '2021-12-26 00:47:45'),
(106, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '2', '1', '2021-12-26 00:47:52', '2021-12-26 00:47:52'),
(107, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '2', '1', '2021-12-26 00:49:07', '2021-12-26 00:49:07'),
(108, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '2', '1', '2021-12-26 00:49:26', '2021-12-26 00:49:26'),
(109, 'dsdfd', 'master@admin.com', '11146469865', 3, 4, 0, 'sdfsd', '0', NULL, NULL, NULL, '42860920', 'https://portal.myfatoorah.com/KWT/ie/0508330054286092066', 0, '2', '1', '2021-12-26 00:49:57', '2021-12-26 00:49:58'),
(110, 'Ezekiel Melendez', 'pikyzeme@mailinator.com', '1146469865', 3, 0, 9, ' ', '0', NULL, NULL, NULL, NULL, NULL, 0, '7', '1', '2021-12-26 04:10:51', '2021-12-26 04:10:51'),
(111, 'Ezekiel Melendez', 'pikyzeme@mailinator.com', '1146469865', 3, 0, 9, ' ', '0', NULL, NULL, NULL, NULL, NULL, 0, '7', '1', '2021-12-26 04:12:36', '2021-12-26 04:12:36'),
(112, 'Ezekiel Melendez', 'pikyzeme@mailinator.com', '1146469865', 3, 0, 9, ' ', '0', NULL, NULL, NULL, NULL, NULL, 0, '7', '1', '2021-12-26 04:12:45', '2021-12-26 04:12:45'),
(113, 'Ezekiel Melendez', 'pikyzeme@mailinator.com', '1146469865', 3, 0, 9, ' ', '0', NULL, NULL, NULL, NULL, NULL, 0, '7', '1', '2021-12-26 04:13:07', '2021-12-26 04:13:07'),
(114, 'Ezekiel Melendez', 'pikyzeme@mailinator.com', '1146469865', 3, 5, 9, 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '7', '1', '2021-12-26 04:14:09', '2021-12-26 04:14:09'),
(115, 'Ezekiel Melendez', 'pikyzeme@mailinator.com', '1146469865', 3, 5, 9, 'sdfsd', '0', NULL, NULL, NULL, '42876698', 'https://portal.myfatoorah.com/KWT/ie/0508330054287669868', 0, '7', '1', '2021-12-26 04:14:28', '2021-12-26 04:14:28'),
(116, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 0, 0, ' ', '0', NULL, NULL, NULL, '42911345', 'https://portal.myfatoorah.com/KWT/ie/0508330054291134566', 0, '10', '1', '2021-12-26 17:59:27', '2021-12-26 17:59:28'),
(117, 'Blaine England', 'rylebisu@mailinator.com', '11146469865', 3, 4, 0, 'ceqyz@mailinator.com', '0', NULL, NULL, NULL, '43637611', 'https://portal.myfatoorah.com/KWT/ie/0508876474363761168', 0, '4', '1', '2022-01-04 13:31:44', '2022-01-04 13:31:44'),
(118, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 4, 0, 'bazar.alkuwait@gmail.com', '0', NULL, NULL, NULL, '43689820', 'https://portal.myfatoorah.com/KWT/ie/0508876474368982069', 0, '4', '1', '2022-01-05 08:57:02', '2022-01-05 08:57:03'),
(119, 'bluezone', 'red@gmail.com', '01100618113', 3, 5, 5, 'الكويت شارع اي شئ', '0', NULL, NULL, NULL, '43691225', 'https://portal.myfatoorah.com/KWT/ie/0508876474369122568', 0, '7', '1', '2022-01-05 09:22:21', '2022-01-05 09:22:21'),
(120, 'bluezone', 'red@gmail.com', '01100618113', 3, 0, 5, ' ', '0', NULL, NULL, NULL, '43691247', 'https://portal.myfatoorah.com/KWT/ie/0508876474369124769', 0, '2', '1', '2022-01-05 09:22:50', '2022-01-05 09:22:50'),
(121, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 4, 0, 'HWALII', '0', NULL, NULL, NULL, NULL, NULL, 0, '8', '2', '2022-01-06 09:35:41', '2022-01-06 09:35:41'),
(122, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 4, 0, 'HWALII', '0', NULL, NULL, NULL, NULL, NULL, 0, '8', '2', '2022-01-06 09:39:58', '2022-01-06 09:39:58'),
(123, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 4, 0, 'HWALII', '0', NULL, NULL, NULL, '43758375', 'https://portal.myfatoorah.com/KWT/ie/0508876474375837569', 0, '8', '2', '2022-01-06 09:40:28', '2022-01-06 09:40:29'),
(124, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 4, 0, 'HWALII', '0', NULL, NULL, NULL, '43758463', 'https://portal.myfatoorah.com/KWT/ie/0508876474375846369', 0, '8', '2', '2022-01-06 09:41:35', '2022-01-06 09:41:36'),
(125, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 4, 0, 'HWALII', '0', NULL, NULL, NULL, '43758475', 'https://portal.myfatoorah.com/KWT/ie/0508876474375847569', 0, '8', '2', '2022-01-06 09:41:44', '2022-01-06 09:41:45'),
(126, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 0, 0, ' ', '0', NULL, NULL, NULL, '43956304', 'https://portal.myfatoorah.com/KWT/ie/0508876474395630469', 0, '5', '1', '2022-01-09 12:20:07', '2022-01-09 12:20:07'),
(127, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 3, 0, 0, ' ', '0', NULL, NULL, NULL, NULL, NULL, 0, '5', '1', '2022-01-09 12:23:16', '2022-01-09 12:23:16'),
(128, 'redsugar80', 'red@gmail.com', '50888855', 3, 0, 5, ' ', '0', NULL, NULL, NULL, '43970834', 'https://portal.myfatoorah.com/KWT/ie/0508876474397083469', 0, '10', '2', '2022-01-09 16:03:13', '2022-01-09 16:03:14'),
(129, 'عنود الحافظ', 'anoud76k@hotmail.com', '99521821', 3, 5, 0, 'قطعة ٨   شارع ١٧  منزل ٣أ', '0', NULL, NULL, NULL, '44033565', 'https://portal.myfatoorah.com/KWT/ie/0508876474403356568', 0, '30', '5', '2022-01-10 15:48:29', '2022-01-10 15:48:30'),
(130, 'عنود الحافظ', 'anoud76k@hotmail.com', '99521821', 3, 5, 0, 'قطعة ٨  شارع ١٧  منزل ٣أ', '0', NULL, NULL, NULL, NULL, NULL, 0, '30', '5', '2022-01-10 15:52:03', '2022-01-10 15:52:03'),
(131, 'عنود الحافظ', 'anoud76k@hotmail.com', '99521821', 3, 5, 0, 'قطعة ٨  شارع ١٧  منزل ٣أ', '0', NULL, NULL, NULL, NULL, NULL, 0, '30', '5', '2022-01-10 15:52:20', '2022-01-10 15:52:20'),
(132, 'test', 'panupy@mailinator.com', '1344444277', 3, 4, 0, 'In corrupti numquam', '0', NULL, NULL, NULL, '44095434', 'https://portal.myfatoorah.com/KWT/ie/0508876474409543468', 0, '17', '3', '2022-01-11 16:19:19', '2022-01-11 16:19:20'),
(133, 'Test 1', 'panupy@mailinator.com', '1344444279', 3, 4, 0, 'In corrupti numquam', '0', NULL, 'Test2', NULL, NULL, NULL, 0, '17', '3', '2022-01-11 16:21:21', '2022-01-11 16:21:21'),
(134, 'Keelie', 'panupy@mailinator.com', '1344444279', 3, 4, 0, 'Quidem sunt lorem ma', '0', NULL, 'Doha', NULL, '44097912', 'https://portal.myfatoorah.com/KWT/ie/0508876474409791269', 0, '17', '3', '2022-01-11 16:58:11', '2022-01-11 16:58:12'),
(135, 'Zainab', 'Zalmousawi2@gmail.com', '90097909', 3, 4, 0, 'Salwa Block 2 Street 1, Nd Floor Apartment 9 2', '0', NULL, 'Salwa', NULL, '44109254', 'https://portal.myfatoorah.com/KWT/ie/0508876474410925468', 0, '12', '2', '2022-01-11 20:32:07', '2022-01-11 20:32:08'),
(136, 'yousef alkandari', 'yuosefalkanderi@gmail.com', '97773910', 3, 4, 0, 'قطعة 2 شارع 206 منزل 6', '0', NULL, 'اشبيلية', NULL, '44109787', 'https://portal.myfatoorah.com/KWT/ie/0508876474410978769', 0, '22', '4', '2022-01-11 20:45:32', '2022-01-11 20:45:33'),
(137, 'Khalil Sanaseri', 'no@gmail.com', '90000718', 3, 4, 12, 'ق9  ش الاول ج 4 عماره 125 مصعد 72 الدور الاول شقه2 الباب الابيض', '0', NULL, 'صباح السالم', NULL, '44110551', 'https://portal.myfatoorah.com/KWT/ie/0508876474411055167', 0, '12', '2', '2022-01-11 21:08:14', '2022-01-11 21:08:15'),
(138, 'Khalil Sanaseri', 'no@gmail.com', '90000718', 3, 4, 12, 'ق9  ش الاول ج 4 عماره 125 مصعد 72 الدور الاول شقه2 الباب الابيض', '0', NULL, 'صباح السالم', NULL, '44110863', 'https://portal.myfatoorah.com/KWT/ie/0508876474411086368', 0, '12', '2', '2022-01-11 21:19:51', '2022-01-11 21:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_height_id` bigint(20) UNSIGNED NOT NULL,
  `product_size_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_height_id`, `product_size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(130, 92, 11, 0, 0, '1', '2021-12-07 21:10:44', '2021-12-07 21:10:44'),
(131, 93, 21, 0, 0, '4', '2021-12-18 20:31:49', '2021-12-18 20:31:49'),
(132, 94, 23, 0, 0, '2', '2021-12-19 23:15:53', '2021-12-19 23:15:53'),
(133, 95, 27, 0, 0, '1', '2021-12-19 23:32:20', '2021-12-19 23:32:20'),
(134, 96, 27, 0, 0, '2', '2021-12-20 01:48:09', '2021-12-20 01:48:09'),
(135, 97, 27, 0, 0, '1', '2021-12-23 14:20:16', '2021-12-23 14:20:16'),
(136, 98, 27, 0, 0, '1', '2021-12-23 14:23:08', '2021-12-23 14:23:08'),
(137, 99, 27, 0, 0, '1', '2021-12-23 14:23:52', '2021-12-23 14:23:52'),
(138, 100, 27, 0, 0, '1', '2021-12-23 14:23:56', '2021-12-23 14:23:56'),
(139, 101, 27, 0, 0, '1', '2021-12-23 14:27:45', '2021-12-23 14:27:45'),
(140, 102, 26, 0, 0, '1', '2021-12-23 18:48:25', '2021-12-23 18:48:25'),
(141, 102, 24, 0, 0, '1', '2021-12-23 18:48:25', '2021-12-23 18:48:25'),
(142, 102, 28, 0, 0, '1', '2021-12-23 18:48:25', '2021-12-23 18:48:25'),
(143, 103, 27, 0, 0, '1', '2021-12-25 22:18:51', '2021-12-25 22:18:51'),
(144, 104, 23, 0, 0, '1', '2021-12-26 00:47:14', '2021-12-26 00:47:14'),
(145, 105, 23, 0, 0, '1', '2021-12-26 00:47:45', '2021-12-26 00:47:45'),
(146, 106, 23, 0, 0, '1', '2021-12-26 00:47:52', '2021-12-26 00:47:52'),
(147, 107, 23, 0, 0, '1', '2021-12-26 00:49:07', '2021-12-26 00:49:07'),
(148, 108, 23, 0, 0, '1', '2021-12-26 00:49:26', '2021-12-26 00:49:26'),
(149, 109, 23, 0, 0, '1', '2021-12-26 00:49:57', '2021-12-26 00:49:57'),
(150, 110, 23, 0, 0, '1', '2021-12-26 04:10:51', '2021-12-26 04:10:51'),
(151, 111, 23, 0, 0, '1', '2021-12-26 04:12:36', '2021-12-26 04:12:36'),
(152, 112, 23, 0, 0, '1', '2021-12-26 04:12:45', '2021-12-26 04:12:45'),
(153, 113, 23, 0, 0, '1', '2021-12-26 04:13:09', '2021-12-26 04:13:09'),
(154, 114, 23, 0, 0, '1', '2021-12-26 04:14:09', '2021-12-26 04:14:09'),
(155, 115, 23, 0, 0, '1', '2021-12-26 04:14:28', '2021-12-26 04:14:28'),
(156, 116, 27, 0, 0, '1', '2021-12-26 17:59:28', '2021-12-26 17:59:28'),
(157, 117, 26, 0, 0, '1', '2022-01-04 13:31:44', '2022-01-04 13:31:44'),
(158, 118, 26, 0, 0, '1', '2022-01-05 08:57:02', '2022-01-05 08:57:02'),
(159, 119, 26, 0, 0, '1', '2022-01-05 09:22:21', '2022-01-05 09:22:21'),
(160, 120, 26, 0, 0, '1', '2022-01-05 09:22:50', '2022-01-05 09:22:50'),
(161, 121, 34, 0, 0, '2', '2022-01-06 09:35:41', '2022-01-06 09:35:41'),
(162, 122, 34, 0, 0, '2', '2022-01-06 09:39:58', '2022-01-06 09:39:58'),
(163, 123, 34, 0, 0, '2', '2022-01-06 09:40:28', '2022-01-06 09:40:28'),
(164, 124, 34, 0, 0, '2', '2022-01-06 09:41:35', '2022-01-06 09:41:35'),
(165, 125, 34, 0, 0, '2', '2022-01-06 09:41:44', '2022-01-06 09:41:44'),
(166, 126, 38, 0, 0, '1', '2022-01-09 12:20:07', '2022-01-09 12:20:07'),
(167, 128, 38, 0, 0, '2', '2022-01-09 16:03:13', '2022-01-09 16:03:13'),
(168, 129, 38, 0, 0, '5', '2022-01-10 15:48:30', '2022-01-10 15:48:30'),
(169, 132, 25, 0, 0, '3', '2022-01-11 16:19:19', '2022-01-11 16:19:19'),
(170, 134, 25, 0, 0, '3', '2022-01-11 16:58:11', '2022-01-11 16:58:11'),
(171, 135, 38, 0, 0, '2', '2022-01-11 20:32:07', '2022-01-11 20:32:07'),
(172, 136, 38, 0, 0, '4', '2022-01-11 20:45:32', '2022-01-11 20:45:32'),
(173, 137, 38, 0, 0, '2', '2022-01-11 21:08:14', '2022-01-11 21:08:14'),
(174, 138, 38, 0, 0, '2', '2022-01-11 21:19:51', '2022-01-11 21:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_details_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_details_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title_ar`, `page_details_ar`, `page_title_en`, `page_details_en`, `created_at`, `updated_at`) VALUES
(1, 'الشروط والاحكام', '<ol>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">يحق للعميل معاينة طلبه وهو في سيارة التوصيل بدون اختيار أو انتقاء من بين طلبات الآخرين؛ بعد استلامه لطلبه تخلو مسؤوليتنا التامة عنه؛ وإن الطلب والمبالغ المدفوعة غير قابلة للاسترجاع.</span></span></strong></span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">في حال رغب العميل بعدم استلام طلبه يشترط عليه إرسال رسالة على واتساب المدرج في الموقع، ويذكر فيه سبب عدم استلامه للطلب ويرفق معها صور عن المنتوجات التي طلبها وبعد الاطلاع على الرسالة والصور بعذر مقبول يسترجع المبلغ للمنتج فقط ماعدا رسوم الدفع عن طريق الكي نت ورسوم التوصيل.</span></span></strong></span></span></li>\r\n</ol>\r\n\r\n<ol start=\"3\">\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#00b050\">حالات العذر المقبول </span></span></span></strong></span></span></li>\r\n</ol>\r\n\r\n<p dir=\"RTL\" style=\"margin-right:48px; text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">*مقياس خلل الجودة للمنتج في الحالات التالية: -</span></span></strong></span></span></p>\r\n\r\n<ol style=\"list-style-type:upper-alpha\">\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">الشكل الخارجي للمنتج أن يظهر عليه علامات تعفن مثل عصارة خارجية أو تغير للون غير الطبيعي أو يصدر منه رائحة كريهة أو ظهور بكتريا ظاهرة. </span></span></strong></span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">درجة النضوج أن يكون في أعلى درجات النضوج التي تجعله غير صالح للأكل.</span></span></strong></span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">أن يكون المنتج خلاف ما هو مذكور في الطلب.&nbsp;</span></span></strong></span></span></li>\r\n</ol>\r\n\r\n<p dir=\"RTL\" style=\"margin-right:48px; text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#00b050\">ملاحظة: </span></span></span></strong></span></span></p>\r\n\r\n<p dir=\"RTL\" style=\"margin-right:48px; text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">لا يدخل طعم المنتج من حيث المرارة أو درجة الحلى والحموضة وكذلك حجم الثمرة&nbsp;في قياس الجودة إنما هي خاضعة لمسألة اذواق مختلفة.</span></span></strong></span></span></p>\r\n\r\n<ol start=\"5\">\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">مندوب التوصيل سوف ينتظر العميل لاستلام طلبه كمدة أقصاها ١٠ دقائق وبعدها يتم إرسال صورة للعميل لأثبات قدوم المندوب أمام العنوان المدون من قِبَلْ العميل في موقعنا هذا ويستكمل المندوب توصيل باقي الطلبات ويحق له بيع الطلب لعميل آخر، وسيتم إرجاع المبلغ المدفوع للعميل الأول مخصوما منه رسوم الكي نت ورسوم التوصيل. </span></span></strong></span></span></li>\r\n</ol>\r\n\r\n<p dir=\"RTL\" style=\"margin-right:48px; text-align:right\">&nbsp;</p>\r\n\r\n<ol start=\"6\">\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">الخطأ في تدوين العنوان أو رقم الموبايل من قِبَلْ العميل هو من يتحمل تبعاته ومسؤوليته. </span></span></strong></span></span></li>\r\n</ol>\r\n\r\n<p dir=\"RTL\" style=\"margin-right:48px; text-align:right\">&nbsp;</p>\r\n\r\n<ol start=\"7\">\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">في حالة الموافقة على الشروط والأحكام السابقة مفصلة البنود فهذا يعتبر كإقرار من العميل بفهم واعتماد جميع البنود السبعة.</span></span></strong></span></span></li>\r\n</ol>\r\n\r\n<p dir=\"RTL\" style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#00b050\">موقع مزرعة </span></span></span></strong><strong><span dir=\"LTR\" style=\"font-size:12.0pt\"><span style=\"color:#00b050\">Red Sugar</span></span></strong><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#00b050\"> ملتزمة بضمان الجودة في كل طلب لعملائها</span></span></span></strong></span></span></p>', 'Terms and Conditions', '<ol>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>The customer has the right to inspect his order while he is in the delivery car without choosing or choosing from among the requests of others; after receiving your order, we are not fully responsible for it; the order and the amounts paid are not refundable.</strong></span></span></li>\r\n</ol>\r\n\r\n<ol start=\"2\">\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>If the customer wishes not to receive his order, he is required to send a message on WhatsApp listed on the site, stating the reason for not receiving the order, and attaching with it pictures of the products he requested, and after reviewing the message and pictures with an acceptable excuse, the amount will be refunded for the product only, except for payment fees via Kent and delivery charges.</strong></span></span></li>\r\n</ol>\r\n\r\n<ol start=\"3\">\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"color:#00b050\">Cases of acceptable excuse</span></strong></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>*Measure the quality defect of the product in the following cases:-</strong></span></span></p>\r\n\r\n<ol style=\"list-style-type:upper-alpha\">\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>The external appearance of the product should show signs of rot such as external juice, change in abnormal color, or emit an unpleasant odor, or the appearance of visible bacteria.</strong></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>The degree of maturity is at the highest degree of maturity that makes it inedible.</strong></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>The product is different from what is mentioned in the order.</strong></span></span></li>\r\n</ol>\r\n\r\n<ol start=\"4\">\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"color:#00b050\">Note:</span></strong></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>The taste of the product in terms of bitterness or the degree of sweetness and acidity is not included in the quality measurement, but it is subject to the issue of different tastes.</strong></span></span></p>\r\n\r\n<ol start=\"5\">\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>The delivery representative will wait for the customer to receive his order for a maximum period of 10 minutes, after which a copy will be sent to the customer to prove the representative&rsquo;s arrival in front of the address recorded by the customer on our website. Kent fees and delivery fees.</strong></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>The error in writing the address or mobile number by the customer is the one who bears the consequences and responsibility.</strong></span></span></li>\r\n</ol>\r\n\r\n<ol start=\"7\">\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>In the event of agreeing to the previous terms and conditions, detailed the terms, this is considered as an acknowledgment by the client of understanding and approving all the seven clauses.</strong></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"color:#00b050\">Red Sugar Farm is committed to ensuring quality in every order of its customers.</span></strong></span></span></p>', '2021-09-11 21:13:56', '2022-01-11 07:09:46'),
(2, 'من نحن', ' يبق أن وجهان مليون التجارية. لكل و بقصف وانتهاءً التبرعات, قد التبرعات ويكيبيديا، أما. تلك جيما عليها جزيرتي ثم, أضف رئيس بتطويق انتصارهم أم. عدم عن فشكّل الأسيوي واعتلاء. لعملة أوروبا إنطلاق عل هذا, عدد مشروط اليابان في. بحث ماشاء طوكيو إذ, بل بأيدي الشرقي دار, بل نقطة أواخر لكل. دنو أن مارد وجهان اوروبا, بها من أسيا مكثّفة سليمان،. ولم كل لمحاكم لبلجيكا،. أم\r\n سابق الأعمال التكاليف بعض, بها تسبب الشمل الثالث، و.\r\n يبق أن وجهان مليون التجارية. لكل و بقصف وانتهاءً التبرعات, قد التبرعات ويكيبيديا، أما. تلك جيما عليها جزيرتي ثم, أضف رئيس بتطويق انتصارهم أم. عدم عن فشكّل الأسيوي واعتلاء. لعملة أوروبا إنطلاق عل هذا, عدد مشروط اليابان في. بحث ماشاء طوكيو إذ, بل بأيدي الشرقي دار, بل نقطة أواخر لكل. دنو أن مارد وجهان اوروبا, بها من أسيا مكثّفة سليمان،. ولم كل لمحاكم لبلجيكا،.\r\n أم سابق الأعمال التكاليف بعض, بها تسبب الشمل الثالث، و.', 'About Us', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry.\r\nLorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining\r\nessentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\r\nand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is\r\nsimply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard\r\ndummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially\r\n  unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and\r\n  more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum\r\n  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n  industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\n  it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,\r\n  remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing\r\n  Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including\r\n  versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been\r\n  the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\n  it to make a type specimen book. It has survived not only five centuries, but also the leap into\r\n  electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of\r\n  Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\r\n  including versions of Lorem Ipsum', '2021-09-11 21:13:56', '2021-09-11 21:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('eslam.iniesta@gmail.com', 'ynCBoX4emYnlArn4uhoYUXeG5T3pCEevwzF9nQbGeBzgix2QOyI9Wdt7Xwc57KhP', '2021-11-16 12:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `title_en` varchar(191) CHARACTER SET utf32 NOT NULL,
  `title_ar` varchar(191) CHARACTER SET utf32 NOT NULL,
  `description_en` text NOT NULL,
  `description_ar` text CHARACTER SET utf32 NOT NULL,
  `description_en1` text DEFAULT NULL,
  `description_ar1` text CHARACTER SET utf32 DEFAULT NULL,
  `appearance` tinyint(1) NOT NULL DEFAULT 1,
  `img1` varchar(191) DEFAULT NULL,
  `img2` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `appearance` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `price` float NOT NULL,
  `has_offer` int(20) NOT NULL DEFAULT 0,
  `before_price` bigint(20) NOT NULL,
  `delivery_period` int(11) DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `best_selling` tinyint(1) NOT NULL DEFAULT 0,
  `basic_category_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `size_guide_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title_en`, `title_ar`, `description_en`, `description_ar`, `appearance`, `featured`, `new`, `price`, `has_offer`, `before_price`, `delivery_period`, `img`, `best_selling`, `basic_category_id`, `category_id`, `size_guide_id`, `created_at`, `updated_at`) VALUES
(25, 'Mango Naomi', 'مانجو', 'مانجو', 'مانجو', 1, 0, 1, 5, 0, 5, NULL, 'uploads/products/images/1641727306400م.jpeg', 0, 20, 16, 0, '2021-12-18 22:28:04', '2022-01-09 11:45:31'),
(29, 'Kumquat', 'كيمكوات', 'برتقال ياباني يؤكل مع قشرة غني بفيتامين c', 'برتقال ياباني يؤكل مع قشرة غني بفيتامين c', 1, 0, 1, 5, 0, 5, NULL, 'uploads/products/images/1641727020706ب2.jpeg', 0, 20, 17, 0, '2021-12-18 23:08:27', '2022-01-09 11:45:21'),
(34, 'avocado', 'أفوكادو', 'له قيمة غذائية عالية يحتوي علي مجموعة كبيرة من الفيتامينات والمعادن', 'له قيمة غذائية عالية يحتوي علي مجموعة كبيرة من الفيتامينات والمعادن', 1, 0, 1, 5, 0, 5, NULL, 'uploads/products/images/1641729333481ا.jpeg', 0, 20, 28, 0, '2022-01-05 09:25:23', '2022-01-09 16:13:37'),
(35, 'cherimoya', 'قشطة', 'ثمرة القشطة تستخدم كعلاج للسرطان', 'ثمرة القشطة تستخدم كعلاج للسرطان', 1, 0, 1, 5, 0, 5, NULL, 'uploads/products/images/1641727649960ق.jpeg', 0, 20, 28, 0, '2022-01-09 11:27:30', '2022-01-09 11:45:07'),
(36, 'Dragon Fruit', 'دراجون فروت', 'دراجون فروت غنية بمضادات الأكسدة', 'دراجون فروت غنية بمضادات الأكسدة', 1, 0, 1, 5, 0, 5, NULL, 'uploads/products/images/1641728037323د.jpeg', 0, 20, 28, 0, '2022-01-09 11:33:57', '2022-01-09 11:44:57'),
(37, 'FIG', 'تين', 'غني بكمية عالية من البوتاسيوم', 'غني بكمية عالية من البوتاسيوم', 1, 0, 1, 5, 0, 5, NULL, 'uploads/products/images/1641728277749ت.jpeg', 0, 20, 28, 0, '2022-01-09 11:37:57', '2022-01-09 11:44:49'),
(38, 'Strawberry', 'الفروالة', 'الكرتون به تسع علب وزن العلبة تقريباً ربع كليو', 'الكرتون به تسع علب وزن العلبة تقريباً ربع كليو', 1, 0, 1, 5, 0, 5, NULL, 'uploads/products/images/1641729192846ف5.jpeg', 1, 20, 18, 0, '2022-01-09 11:40:46', '2022-01-11 18:08:50'),
(39, 'cherry tomato', 'طماطم شيري', 'الكرتون به تسع علب وزن العلبة \r\nتقريباً ربع كيلو', 'الكرتون به تسع علب وزن العلبة \r\nتقريباً ربع كيلو', 1, 0, 1, 5, 0, 5, NULL, 'uploads/products/images/1641730299392ttttt.jpeg', 0, 21, 25, 0, '2022-01-09 12:09:40', '2022-01-11 22:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `prod_colors`
--

CREATE TABLE `prod_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prod_heights`
--

CREATE TABLE `prod_heights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `height_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prod_heights`
--

INSERT INTO `prod_heights` (`id`, `quantity`, `product_id`, `size_id`, `height_id`, `created_at`, `updated_at`) VALUES
(227, 541, 4, 3, 5, '2021-11-19 23:55:50', '2021-11-22 13:42:27'),
(228, 410, 4, 3, 6, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(229, 87, 4, 3, 9, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(230, 941, 4, 4, 3, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(231, 674, 4, 4, 5, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(232, 404, 4, 4, 7, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(233, 26, 4, 4, 10, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(234, 149, 4, 5, 3, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(235, 993, 4, 5, 4, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(236, 288, 4, 5, 5, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(237, 576, 4, 5, 9, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(238, 185, 4, 5, 11, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(463, 430, 6, 1, 1, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(464, 323, 6, 1, 3, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(465, 193, 6, 1, 4, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(466, 779, 6, 1, 5, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(467, 557, 6, 1, 6, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(468, 834, 6, 1, 8, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(469, 739, 6, 1, 10, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(470, 647, 6, 1, 11, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(471, 192, 6, 2, 2, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(472, 271, 6, 2, 3, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(473, 426, 6, 2, 5, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(474, 253, 6, 2, 6, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(475, 725, 6, 2, 7, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(476, 208, 6, 2, 8, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(477, 524, 6, 2, 11, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(478, 981, 6, 3, 3, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(479, 599, 6, 3, 4, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(480, 703, 6, 3, 6, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(481, 230, 6, 3, 7, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(482, 890, 6, 3, 8, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(483, 886, 6, 3, 9, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(484, 5, 6, 3, 10, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(485, 633, 6, 3, 11, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(486, 377, 6, 4, 3, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(487, 130, 6, 4, 5, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(488, 379, 6, 4, 6, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(489, 193, 6, 4, 7, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(490, 516, 6, 5, 1, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(491, 465, 6, 5, 3, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(492, 908, 6, 5, 8, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(493, 89, 6, 5, 9, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(494, 657, 6, 5, 10, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(495, 476, 5, 1, 2, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(496, 257, 5, 1, 4, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(497, 700, 5, 1, 5, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(498, 188, 5, 1, 6, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(499, 866, 5, 1, 7, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(500, 303, 5, 1, 11, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(501, 60, 5, 3, 2, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(502, 593, 5, 3, 4, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(503, 386, 5, 3, 6, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(504, 129, 5, 3, 7, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(505, 29, 5, 3, 8, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(506, 872, 5, 3, 10, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(507, 414, 5, 4, 2, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(508, 755, 5, 4, 7, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(509, 632, 5, 4, 9, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(510, 887, 5, 4, 11, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(511, 534, 5, 5, 2, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(512, 569, 5, 5, 6, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(513, 416, 5, 5, 8, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(514, 986, 5, 5, 11, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(515, 8, 1, 1, 1, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(516, 10, 1, 1, 2, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(517, 15, 1, 2, 3, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(518, 15, 1, 2, 4, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(519, 54, 1, 3, 5, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(520, 45, 1, 3, 6, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(521, 11, 1, 5, 2, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(615, 931, 8, 1, 1, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(616, 830, 8, 1, 5, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(617, 963, 8, 1, 6, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(618, 759, 8, 1, 7, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(619, 659, 8, 1, 9, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(620, 285, 8, 1, 11, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(621, 207, 8, 3, 2, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(622, 645, 8, 3, 3, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(623, 160, 8, 3, 6, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(624, 615, 8, 3, 8, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(625, 283, 8, 3, 9, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(626, 725, 8, 3, 10, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(627, 54, 8, 3, 11, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(628, 476, 8, 5, 1, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(629, 234, 8, 5, 2, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(630, 699, 8, 5, 3, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(631, 105, 8, 5, 4, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(632, 246, 8, 5, 6, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(633, 756, 8, 5, 7, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(634, 641, 8, 5, 10, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(635, 281, 8, 5, 11, '2021-11-30 13:17:48', '2021-11-30 13:17:48'),
(636, 0, 2, 1, 1, '2021-11-30 13:25:46', '2021-11-30 13:25:46'),
(637, 0, 2, 1, 2, '2021-11-30 13:25:46', '2021-11-30 13:25:46'),
(638, 0, 2, 1, 3, '2021-11-30 13:25:46', '2021-11-30 13:25:46'),
(639, 4, 2, 1, 4, '2021-11-30 13:25:46', '2021-11-30 13:25:46'),
(731, 74, 3, 1, 1, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(732, 21, 3, 1, 2, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(733, 6, 3, 3, 1, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(734, 12, 3, 3, 2, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(735, 92, 3, 3, 3, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(736, 15, 3, 3, 4, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(737, 8, 3, 5, 1, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(738, 21, 3, 5, 2, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(744, 119, 11, 0, 0, '2021-12-07 09:27:46', '2021-12-07 21:10:44'),
(765, 100, 19, 0, 0, '2021-12-12 13:25:09', '2021-12-12 13:25:09'),
(783, 903, 16, 1, 1, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(784, 850, 16, 1, 3, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(785, 242, 16, 1, 6, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(786, 85, 16, 1, 9, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(787, 522, 16, 3, 3, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(788, 729, 16, 3, 4, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(789, 405, 16, 3, 5, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(790, 429, 16, 3, 6, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(791, 599, 16, 3, 8, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(792, 220, 16, 3, 9, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(793, 238, 16, 5, 1, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(794, 702, 16, 5, 4, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(795, 252, 16, 5, 5, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(796, 14, 16, 5, 6, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(797, 883, 16, 5, 7, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(798, 753, 16, 5, 8, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(799, 610, 16, 5, 10, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(800, 516, 7, 1, 1, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(801, 512, 7, 1, 3, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(802, 757, 7, 1, 4, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(803, 243, 7, 1, 7, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(804, 82, 7, 1, 8, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(805, 202, 7, 1, 11, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(806, 648, 7, 2, 2, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(807, 474, 7, 2, 3, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(808, 453, 7, 2, 6, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(809, 771, 7, 2, 8, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(810, 643, 7, 2, 9, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(811, 685, 7, 2, 11, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(812, 109, 7, 4, 2, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(813, 119, 7, 4, 6, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(814, 426, 7, 4, 7, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(815, 964, 7, 4, 8, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(816, 340, 7, 4, 9, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(817, 525, 7, 4, 10, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(909, 0, 39, 0, 0, '2022-01-11 22:11:45', '2022-01-11 22:11:45'),
(910, 0, 38, 0, 0, '2022-01-11 22:11:57', '2022-01-11 22:11:57'),
(911, 0, 37, 0, 0, '2022-01-11 22:12:05', '2022-01-11 22:12:05'),
(912, 0, 36, 0, 0, '2022-01-11 22:12:28', '2022-01-11 22:12:28'),
(913, 0, 35, 0, 0, '2022-01-11 22:12:39', '2022-01-11 22:12:39'),
(915, 0, 34, 0, 0, '2022-01-11 22:13:27', '2022-01-11 22:13:27'),
(916, 0, 29, 0, 0, '2022-01-11 22:13:34', '2022-01-11 22:13:34'),
(917, 0, 25, 0, 0, '2022-01-11 22:13:40', '2022-01-11 22:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `prod_imgs`
--

CREATE TABLE `prod_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prod_imgs`
--

INSERT INTO `prod_imgs` (`id`, `img`, `product_id`, `created_at`, `updated_at`) VALUES
(11, 'upload/advertising/163828577361a641cd16714.jpg', 1, '2021-11-30 13:22:53', '2021-11-30 13:22:53'),
(12, 'upload/advertising/163828931361a64fa1e7a92.jpg', 11, '2021-11-30 14:21:53', '2021-11-30 14:21:53'),
(13, 'upload/advertising/163828931361a64fa1eb45f.jpg', 11, '2021-11-30 14:21:53', '2021-11-30 14:21:53'),
(14, 'upload/advertising/163828931361a64fa1ecee1.jpg', 11, '2021-11-30 14:21:53', '2021-11-30 14:21:53'),
(15, 'upload/advertising/163828931361a64fa1ef65d.jpg', 11, '2021-11-30 14:21:53', '2021-11-30 14:21:53'),
(16, 'upload/advertising/163828931361a64fa1f21dc.jpg', 11, '2021-11-30 14:21:53', '2021-11-30 14:21:53'),
(17, 'upload/advertising/163828931461a64fa200bfa.jpg', 11, '2021-11-30 14:21:54', '2021-11-30 14:21:54'),
(18, 'upload/advertising/163828931461a64fa20265e.jpg', 11, '2021-11-30 14:21:54', '2021-11-30 14:21:54'),
(20, 'upload/advertising/163829395461a661c2b7812.jpg', 8, '2021-11-30 15:39:15', '2021-11-30 15:39:15'),
(21, 'upload/advertising/163829395561a661c3467dd.jpg', 8, '2021-11-30 15:39:15', '2021-11-30 15:39:15'),
(22, 'upload/advertising/163829395561a661c3c398e.jpg', 8, '2021-11-30 15:39:16', '2021-11-30 15:39:16'),
(23, 'upload/advertising/163829395661a661c4494d9.jpg', 8, '2021-11-30 15:39:16', '2021-11-30 15:39:16'),
(25, 'upload/advertising/164172702961dac4354819b.jpeg', 29, '2022-01-09 11:17:09', '2022-01-09 11:17:09'),
(26, 'upload/advertising/164172731661dac5549fd65.jpeg', 25, '2022-01-09 11:21:56', '2022-01-09 11:21:56'),
(27, 'upload/advertising/164172765861dac6aa89971.jpeg', 35, '2022-01-09 11:27:38', '2022-01-09 11:27:38'),
(28, 'upload/advertising/164172804661dac82ec6863.jpeg', 36, '2022-01-09 11:34:06', '2022-01-09 11:34:06'),
(29, 'upload/advertising/164172828861dac92077980.jpeg', 37, '2022-01-09 11:38:08', '2022-01-09 11:38:08'),
(30, 'upload/advertising/164172828861dac9208b054.jpeg', 37, '2022-01-09 11:38:08', '2022-01-09 11:38:08'),
(33, 'upload/advertising/164172921061daccba6ea37.jpeg', 38, '2022-01-09 11:53:30', '2022-01-09 11:53:30'),
(34, 'upload/advertising/164172935061dacd46a3452.jpeg', 34, '2022-01-09 11:55:50', '2022-01-09 11:55:50'),
(35, 'upload/advertising/164173024161dad0c1a3cf0.jpeg', 39, '2022-01-09 12:10:41', '2022-01-09 12:10:41'),
(36, 'upload/advertising/164173024161dad0c1c197f.jpeg', 39, '2022-01-09 12:10:41', '2022-01-09 12:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `prod_sizes`
--

CREATE TABLE `prod_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prod_sizes`
--

INSERT INTO `prod_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(64, 4, 3, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(65, 4, 4, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(66, 4, 5, '2021-11-19 23:55:50', '2021-11-19 23:55:50'),
(110, 6, 1, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(111, 6, 2, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(112, 6, 3, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(113, 6, 4, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(114, 6, 5, '2021-11-27 14:01:27', '2021-11-27 14:01:27'),
(115, 5, 1, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(116, 5, 3, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(117, 5, 4, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(118, 5, 5, '2021-11-27 14:01:46', '2021-11-27 14:01:46'),
(119, 1, 1, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(120, 1, 2, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(121, 1, 3, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(122, 1, 5, '2021-11-27 14:02:10', '2021-11-27 14:02:10'),
(142, 2, 1, '2021-11-30 13:25:46', '2021-11-30 13:25:46'),
(157, 3, 1, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(158, 3, 3, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(159, 3, 5, '2021-11-30 15:19:52', '2021-11-30 15:19:52'),
(173, 8, 1, '2021-12-01 01:34:44', '2021-12-01 01:34:44'),
(174, 8, 3, '2021-12-01 01:34:44', '2021-12-01 01:34:44'),
(175, 8, 5, '2021-12-01 01:34:44', '2021-12-01 01:34:44'),
(183, 16, 1, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(184, 16, 3, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(185, 16, 5, '2021-12-12 13:38:24', '2021-12-12 13:38:24'),
(186, 7, 1, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(187, 7, 2, '2021-12-12 13:53:28', '2021-12-12 13:53:28'),
(188, 7, 4, '2021-12-12 13:53:28', '2021-12-12 13:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'User Administrator', 'User is allowed to manage and edit other users', '2021-09-11 21:13:55', '2021-09-11 21:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(1, 5, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_des_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_des_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `not_have_product_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `not_have_product_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_free_shop` int(11) NOT NULL,
  `is_delivery` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `footer_logo`, `ad_image`, `facebook`, `site_name_ar`, `site_name_en`, `site_des_ar`, `site_des_en`, `email`, `twitter`, `google_plus`, `youtube`, `whatsapp`, `ios_link`, `android_link`, `instagram`, `telegram`, `phone`, `address`, `not_have_product_ar`, `not_have_product_en`, `created_at`, `updated_at`, `is_free_shop`, `is_delivery`) VALUES
(2, 'uploads/logos/images//1640542304606red-sugar-logo.png', 'uploads/logos/images//1640542252906red-sugar-logo.png', 'uploads/logos/images//1640542252402red-sugar-logo.png', 'https://instagram.com', 'Red-Sugar', 'Red-Sugar', NULL, NULL, NULL, 'https://www.snapchat.com/add/red_sugar80?share_id=McyasTOvsL8&locale=ar-AE', NULL, 'https://instagram.co', '+96551553998', NULL, NULL, 'https://www.instagram.com/red_sugar80/', NULL, '51553998', '1street', 'سيتم توفير المنتجات قريباً', 'Products will be available soon', '2021-09-11 21:13:56', '2022-01-09 16:27:21', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size_guides`
--

CREATE TABLE `size_guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name_ar`, `name_en`, `description_ar`, `description_en`, `img`, `created_at`, `updated_at`) VALUES
(1, '100%  Organic', '100%  Organic', 'مكونات الرعاية الصحية الطبيعية', 'مكونات الرعاية الصحية الطبيعية', 'uploads/sliders/images/16399263555405.jpg', '2021-09-13 21:59:10', '2021-12-19 23:05:55'),
(6, 'Xenos Acevedo', 'Drake Savage', 'Dolorem et ducimus', 'Dolorem et ducimus', 'uploads/sliders/images/16399262781166.jpg', '2021-12-19 00:34:12', '2021-12-19 23:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `slid_categories`
--

CREATE TABLE `slid_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slid_categories`
--

INSERT INTO `slid_categories` (`id`, `category_id`, `img`, `created_at`, `updated_at`) VALUES
(6, 18, 'uploads/sliders/images/categories/164137553961d5673365b90.jpg', '2022-01-05 09:39:00', '2022-01-05 09:39:00'),
(7, 18, 'uploads/sliders/images/categories/164137563861d56796e5e2e.jpeg', '2022-01-05 09:40:39', '2022-01-05 09:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_view` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `password_view`, `phone`, `country_id`, `job_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bluezone2', 'bluezone.adv@gmail.com', NULL, '$2y$10$wUxORMvXCrjNIrbedjkfZ.XzNgmnvewv5gjdZIlRutP/MKTwMY.oS', 'blue2020', '99427261', 3, 1, NULL, '2021-09-11 21:13:55', '2022-01-09 12:33:51'),
(5, 'Abu-abdullah', 'adel.alq8y@gmail.com', NULL, '$2y$10$WVYhbQAwzOwgs3VgYJ0R.eEabKw/kSPvD54hHqMTNMVQa.hRY4IY.', 'Adel-1980', '50888855', 3, 1, NULL, '2021-11-15 13:04:54', '2022-01-09 16:12:03'),
(11, 'Lacota Blackwell', 'nelahupi@mailinator.com', NULL, '$2y$10$L4w.GWdLi7YBwlX2qikm2eujuxAIstS9etDtCKyvOYRYQ3Yw4bNMG', 'Ts123456', '1146469865', 3, 0, NULL, '2022-01-09 12:17:03', '2022-01-09 12:17:03'),
(12, 'Khalil Sanaseri', NULL, NULL, '$2y$10$XxFyT4T.Kxa5AcVhffNmVe.KxQ84IbbWOEh8bccQzpIf7papVcQS6', 'k90000718', '90000718', 3, 0, NULL, '2022-01-09 16:56:56', '2022-01-09 16:58:31'),
(13, 'فهد', 'iimf45@hotmail.com', NULL, '$2y$10$B3TJWffidlB5mUwDeX2ZzOnaVjDWTeIgfoi/qQ4uvep6.1mImbWW6', '98787676', '98787676', 3, 0, NULL, '2022-01-09 17:51:58', '2022-01-09 17:51:58'),
(14, 'BODOUR  ALKHASHTI', 'br.alkhashti@gmail.com', NULL, '$2y$10$lMuBiZYvIyQV7MJ.I4BUJehWMjzzppK1DSRE8E9CTKayZaVy31hxm', 'Alkhashti1988', '60001288', 3, 0, NULL, '2022-01-09 19:39:45', '2022-01-09 19:39:45'),
(15, 'Bader', 'b.alfaras82@gmail.com', NULL, '$2y$10$8sN26KMnsZ08n/SRB2KAV.ypW42hhOLCyuZY1Z9zOubQydNAxH.X6', 'Bader9399', '51170707', 3, 0, NULL, '2022-01-10 08:13:51', '2022-01-10 23:23:11'),
(16, 'Ghalia', 'ghala_alroooo7@hotmail.com', NULL, '$2y$10$PsfwlKzb79cDbTy8xpM0ZeoF3/X3c.qVLbgbaE1k0ipVQ.nzBosYe', 'ghalia@1983', '51055096', 3, 0, NULL, '2022-01-10 09:01:12', '2022-01-10 09:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_coupons`
--

CREATE TABLE `user_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_coupons`
--

INSERT INTO `user_coupons` (`id`, `user_id`, `coupon_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '2021-12-08 22:51:03', '2021-12-08 22:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-09-11 21:33:37', '2021-12-12 12:29:23'),
(2, 2, '2021-10-16 16:47:15', '2021-11-30 15:16:44'),
(3, 4, '2021-11-07 08:15:01', '2021-11-22 13:42:00'),
(4, 5, '2021-11-07 08:16:33', '2021-12-08 22:13:58'),
(5, 3, '2021-11-09 10:09:36', '2021-12-04 22:01:12'),
(6, 6, '2021-11-25 00:25:25', '2021-11-27 14:04:04'),
(7, 7, '2021-11-25 14:17:21', '2021-11-27 14:36:16'),
(8, 8, '2021-11-27 14:34:19', '2021-12-07 20:56:27'),
(9, 11, '2021-11-30 13:44:20', '2021-12-07 20:58:33'),
(10, 14, '2021-12-04 22:13:33', '2021-12-07 09:23:59'),
(11, 16, '2021-12-06 22:42:34', '2021-12-12 15:46:16'),
(12, 19, '2021-12-12 14:25:34', '2021-12-12 15:46:44'),
(13, 21, '2021-12-18 20:30:59', '2021-12-18 20:54:55'),
(14, 22, '2021-12-18 20:33:22', '2021-12-18 20:54:49'),
(15, 24, '2021-12-19 00:32:19', '2022-01-09 09:45:05'),
(16, 27, '2021-12-19 00:37:09', '2022-01-08 18:23:03'),
(17, 28, '2021-12-19 00:37:25', '2022-01-09 11:17:32'),
(18, 26, '2021-12-19 03:30:42', '2022-01-08 18:23:01'),
(19, 23, '2021-12-19 18:07:18', '2022-01-09 11:18:49'),
(20, 25, '2021-12-23 17:02:24', '2022-01-11 22:33:34'),
(21, 29, '2021-12-25 14:31:52', '2022-01-11 22:14:09'),
(22, 34, '2022-01-05 09:25:33', '2022-01-11 22:14:00'),
(23, 35, '2022-01-09 11:27:47', '2022-01-11 15:57:47'),
(24, 36, '2022-01-09 11:41:32', '2022-01-11 20:29:37'),
(25, 38, '2022-01-09 11:43:51', '2022-01-11 23:30:27'),
(26, 39, '2022-01-09 12:10:55', '2022-01-11 22:15:38'),
(27, 37, '2022-01-09 12:15:13', '2022-01-11 13:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

CREATE TABLE `wish_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_list`
--

INSERT INTO `wish_list` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 2, 4, '2021-11-08 13:34:23', '2021-11-08 13:34:23'),
(9, 5, 6, '2021-11-16 14:37:29', '2021-11-16 14:37:29'),
(10, 3, 6, '2021-11-21 10:04:42', '2021-11-21 10:04:42'),
(11, 27, 7, '2021-12-19 23:38:55', '2021-12-19 23:38:55'),
(12, 27, 5, '2021-12-20 01:12:27', '2021-12-20 01:12:27'),
(14, 28, 5, '2021-12-23 18:47:17', '2021-12-23 18:47:17'),
(16, 25, 11, '2022-01-09 12:21:59', '2022-01-09 12:21:59'),
(17, 38, 12, '2022-01-09 16:57:18', '2022-01-09 16:57:18'),
(18, 25, 12, '2022-01-09 16:57:37', '2022-01-09 16:57:37'),
(19, 38, 16, '2022-01-10 09:01:32', '2022-01-10 09:01:32'),
(20, 38, 15, '2022-01-10 23:25:19', '2022-01-10 23:25:19'),
(21, 39, 15, '2022-01-10 23:26:56', '2022-01-10 23:26:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basic_categories`
--
ALTER TABLE `basic_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `best_sellers`
--
ALTER TABLE `best_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_basic_category_id_foreign` (`basic_category_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_currency_id_unique` (`currency_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heights`
--
ALTER TABLE `heights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_basic_category_id_foreign` (`basic_category_id`);

--
-- Indexes for table `prod_colors`
--
ALTER TABLE `prod_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_colors_product_id_foreign` (`product_id`),
  ADD KEY `prod_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `prod_heights`
--
ALTER TABLE `prod_heights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_heights_product_id_foreign` (`product_id`),
  ADD KEY `prod_heights_height_id_foreign` (`height_id`),
  ADD KEY `prod_heights_size_id_foreign` (`size_id`);

--
-- Indexes for table `prod_imgs`
--
ALTER TABLE `prod_imgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_imgs_product_id_foreign` (`product_id`);

--
-- Indexes for table `prod_sizes`
--
ALTER TABLE `prod_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_sizes_product_id_foreign` (`product_id`),
  ADD KEY `prod_sizes_size_id_foreign` (`size_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_guides`
--
ALTER TABLE `size_guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slid_categories`
--
ALTER TABLE `slid_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`) USING BTREE;

--
-- Indexes for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_coupons_user_id_foreign` (`user_id`),
  ADD KEY `user_coupons_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wish_list_product_id_foreign` (`product_id`),
  ADD KEY `wish_list_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basic_categories`
--
ALTER TABLE `basic_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `best_sellers`
--
ALTER TABLE `best_sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heights`
--
ALTER TABLE `heights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `prod_colors`
--
ALTER TABLE `prod_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prod_heights`
--
ALTER TABLE `prod_heights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=918;

--
-- AUTO_INCREMENT for table `prod_imgs`
--
ALTER TABLE `prod_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `prod_sizes`
--
ALTER TABLE `prod_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `size_guides`
--
ALTER TABLE `size_guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slid_categories`
--
ALTER TABLE `slid_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_coupons`
--
ALTER TABLE `user_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wish_list`
--
ALTER TABLE `wish_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_basic_category_id_foreign` FOREIGN KEY (`basic_category_id`) REFERENCES `basic_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prod_colors`
--
ALTER TABLE `prod_colors`
  ADD CONSTRAINT `prod_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prod_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD CONSTRAINT `user_coupons_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_coupons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
