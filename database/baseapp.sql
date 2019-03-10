-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2019 at 03:40 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baseapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Details` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Linked` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `Title`, `Slug`, `Info`, `Details`, `Images`, `Author`, `Linked`, `Status`, `created_at`, `updated_at`) VALUES
(2, 'Hello, i\'m Long', 'hello-im-long', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci aliquam corporis dicta dolor, dolore dolorem eveniet ex facilis magnam molestiae officiis placeat quas quod sapiente sit temporibus velit voluptatibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci aliquam corporis dicta dolor, dolore dolorem eveniet ex facilis magnam molestiae officiis placeat quas quod sapiente sit temporibus velit voluptatibus.</p>\r\n\r\n<p>orem ipsum dolor sit amet consectetur adipisicing elit. Laborum ipsa repellat accusamus nemo fuga, neque asperiores consectetur tempora necessitatibus minima rem aspernatur. Beatae eius aliquam maxime distinctio id reprehenderit repudiandae.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus nemo ea maiores saepe quo minima, culpa sint incidunt perspiciatis omnis dolore accusamus adipisci quam architecto pariatur natus! Necessitatibus, quibusdam exercitatio</p>', 'Article_etYn430712465_389750054824952_8989623461325661181_n.jpg', 'ThaiLong', 'https://www.facebook.com/profile.php?id=100013698812957', 0, '2018-10-21 08:24:37', '2018-10-21 08:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `attribute` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `attribute`, `parent_id`, `created_at`, `updated_at`) VALUES
(3, 'Capacity', 0, '2019-03-10 01:55:23', '2019-03-10 01:55:23'),
(4, 'Electricity supply', 0, '2019-03-10 02:21:58', '2019-03-10 02:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `idAttribute` int(11) NOT NULL,
  `Value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `idAttribute`, `Value`, `created_at`, `updated_at`) VALUES
(2, 3, '500W', '2019-03-10 01:55:23', '2019-03-10 01:55:23'),
(3, 4, '220V', '2019-03-10 02:21:58', '2019-03-10 02:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Info` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idCategoryBlog` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `Title`, `Slug`, `Info`, `Description`, `Author`, `Tags`, `Image`, `idCategoryBlog`, `created_at`, `updated_at`) VALUES
(1, 'Im a new coder', '', '<p>nguyenlongit95@gmail.com</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,</p>', 'LongNguyen', 'nguyenlongit95', 'Ei0mhfirstBlog.jpg', 3, NULL, '2018-09-18 20:21:38'),
(3, 'Xây dựng một website chuẩn SEO', 'xay-dung-mot-website-chuan-seo', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores consequatur corporis, dignissimos dolorum eaque enim expedita facere, hic magnam necessitatibus numquam odit quidem similique sint, tempore. Deleniti itaque perspiciatis vero.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores consequatur corporis, dignissimos dolorum eaque enim expedita facere, hic magnam necessitatibus numquam odit quidem similique sint, tempore. Deleniti itaque perspiciatis vero.</p>\r\n\r\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quibusdam odit culpa aspernatur ex voluptas soluta doloremque exercitationem deserunt dicta vel nemo, et enim fugit expedita ullam laudantium minus quam.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quibusdam odit culpa aspernatur ex voluptas soluta doloremque exercitationem deserunt dicta vel nemo, et enim fugit expedita ullam laudantium minus quam.</p>', 'CoderLongNguyen', 'Chuẩn SEO', 'eI9lztest1.jpg', 3, '2019-02-28 03:00:58', '2019-02-28 03:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories_blogs`
--

CREATE TABLE `categories_blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `NameCategory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_blogs`
--

INSERT INTO `categories_blogs` (`id`, `NameCategory`, `Info`, `Parent_id`, `created_at`, `updated_at`) VALUES
(2, 'Society', 'Sharing about social issues and social issues', 0, '2018-09-09 07:58:34', '2018-09-09 07:58:34'),
(3, 'programming', ' Share your experiences in computer programming and related technology', 0, '2018-09-09 08:00:30', '2018-09-09 08:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `categories_products`
--

CREATE TABLE `categories_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `NameCategory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_products`
--

INSERT INTO `categories_products` (`id`, `NameCategory`, `Info`, `Parent_id`, `created_at`, `updated_at`) VALUES
(1, 'HouseHold', 'Here you will find support products for your beloved home', 0, NULL, '2018-09-08 08:38:35'),
(2, 'Technology', 'iste nulla quia similique veritatis voluptate. Accusantium animi minus recusandae vero. Iste, magnam voluptas.', 0, '2018-09-04 07:37:54', '2018-09-04 07:37:54'),
(3, 'Computer', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, ', 2, NULL, NULL),
(4, 'Television', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, ', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `idBlog` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `Comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `State` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `idBlog`, `idUser`, `Comment`, `Author`, `Parent_id`, `State`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Contrary to popular belief, Lorem Ipsum is not simply random text.', 'NguyenLongIT95', 0, 1, NULL, '2018-09-29 08:35:02'),
(2, 1, 2, 'Bài viết này hay quá ad ơi, cố gắng cho ra nhiều bài hay hơn nhé', 'LongNguyen', 0, 0, NULL, NULL),
(3, 1, 2, '<p>Thế này thì thành Java rồi còn gì!</p>', 'ThanhNhan', 1, 0, '2018-09-10 17:00:00', '2018-09-30 08:05:57'),
(4, 1, 1, 'Bài viết cũng hay nhưng cần thêm nhiều nội dung hơn', 'LongNguyen', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `State` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `Name`, `Email`, `Address`, `Message`, `State`, `created_at`, `updated_at`) VALUES
(1, 'nguyenlongit95', 'nguyenlongit1308@gmail.com', 'Ha Noi', 'Im want build a website!', '1', NULL, '2018-10-07 01:49:04'),
(2, 'nguyenlongit95', 'nguyenlongit1308@gmail.com', 'Ha Noi', 'Im want build a website!', '0', NULL, '2018-10-07 01:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `custom_properties`
--

CREATE TABLE `custom_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `idProduct` int(11) NOT NULL,
  `Attribute_value_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_properties`
--

INSERT INTO `custom_properties` (`id`, `idProduct`, `Attribute_value_id`, `created_at`, `updated_at`) VALUES
(14, 1, 3, '2019-03-10 03:09:17', '2019-03-10 03:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `image_products`
--

CREATE TABLE `image_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `ImageProduct` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idProduct` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_products`
--

INSERT INTO `image_products` (`id`, `ImageProduct`, `idProduct`, `created_at`, `updated_at`) VALUES
(1, 'of1.png', 1, NULL, NULL),
(2, 'of2.png', 2, NULL, NULL),
(3, 'of3.png', 3, NULL, NULL),
(4, 'of4.png', 4, NULL, NULL),
(5, 'nPDof56.png', 1, '2018-12-09 20:28:28', '2018-12-09 20:28:28'),
(6, 'uBZof34.png', 1, '2018-12-09 20:28:38', '2018-12-09 20:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `info_of_pages`
--

CREATE TABLE `info_of_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `PageName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_of_pages`
--

INSERT INTO `info_of_pages` (`id`, `PageName`, `Info`, `Value`, `created_at`, `updated_at`) VALUES
(1, 'Abouts', 'Lorem', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,', NULL, NULL),
(2, 'Contact', 'Lorem', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `linkeds`
--

CREATE TABLE `linkeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `Linked` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linkeds`
--

INSERT INTO `linkeds` (`id`, `Linked`, `Value`, `created_at`, `updated_at`) VALUES
(1, 'FaceBook', 'https://www.facebook.com/profile.php?id=100013698812957', NULL, NULL),
(2, 'Google', 'https://www.facebook.com/profile.php?id=100013698812957', NULL, NULL),
(3, 'Linked', 'linked.com', NULL, NULL),
(4, 'Courses', 'Courses.com.vn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) COLLATE ucs2_unicode_ci NOT NULL,
  `Slug` varchar(255) COLLATE ucs2_unicode_ci NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `Level` int(11) NOT NULL COMMENT 'Menu sẽ có chung level, nếu chung 1 Level thì thuộc chung 1 menu',
  `Count_Child` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Info` varchar(500) COLLATE ucs2_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `Name`, `Slug`, `Parent_id`, `Level`, `Count_Child`, `Status`, `Info`, `created_at`, `updated_at`) VALUES
(1, 'Socients', 'socients', 1, 1, 1, 1, 'Menu hạng nhất', '2018-12-30 10:14:21', '0000-00-00 00:00:00'),
(2, 'Programming', 'programming', 1, 1, 1, 1, '', '2018-12-30 10:14:31', '2018-12-29 20:48:06');

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
(3, '2018_08_30_095434_create_products_table', 1),
(4, '2018_08_30_095446_create_custom_properties_table', 1),
(5, '2018_08_30_095502_create_image_products_table', 1),
(6, '2018_08_30_095512_create_rattings_table', 1),
(7, '2018_08_30_095533_create_categories_blogs_table', 1),
(8, '2018_08_30_095540_create_blogs_table', 1),
(9, '2018_08_30_095550_create_categories_products_table', 1),
(10, '2018_08_30_095620_create_contacts_table', 1),
(11, '2018_08_30_095626_create_sliders_table', 1),
(12, '2018_08_30_095635_create_linkeds_table', 1),
(13, '2018_08_30_095645_create_info_of_pages_table', 1),
(14, '2018_08_30_095655_create_orders_table', 1),
(15, '2018_08_30_095710_create_order_details_table', 1),
(16, '2018_08_30_095726_create_state_orders_table', 1),
(17, '2018_08_30_100921_create_comments_table', 1),
(18, '2018_08_30_103646_create_token_a_p_is_table', 2),
(19, '2018_09_02_021823_create_articles_table', 3),
(20, '2018_12_30_104051_create_permission_tables', 4),
(21, '2018_12_30_133519_create_permission_tables', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CodeOrder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `idUser`, `Name`, `Address`, `Phone`, `Total`, `CodeOrder`, `created_at`, `updated_at`) VALUES
(1, '1', 'Nguyen Cong Thai Long', '<p>Ngoc Truc market</p>', '+84693803548', '300', 'abc123123', NULL, '2018-09-19 01:01:54'),
(2, '1', 'Nguyen Cong Thai Long', 'Ha Noi', '+84693803548', '2', 'abc123123', NULL, NULL),
(3, '1', 'Nguyen Cong Thai Long', 'Ha Noi', '+84693803548', '2', 'abc123123', NULL, NULL),
(4, '1', 'Nguyen Cong Thai Long', 'Ha Noi', '+84693803548', '2', 'abc123123', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idOrder` int(11) NOT NULL,
  `NameProduct` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CodeOrder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `idProduct`, `idOrder`, `NameProduct`, `Quantity`, `Price`, `CodeOrder`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Fan Electric A960', '1', '100', 'abc123123', NULL, NULL),
(2, 1, 1, 'Fan Electric A960', '1', '100', 'abc123123', NULL, NULL),
(3, 1, 1, 'Fan Electric A960', '1', '100', 'abc123123', NULL, NULL);

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
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'all', 'web', '2019-01-01 06:25:06', '2019-01-01 06:25:06'),
(2, 'user', 'web', '2019-01-01 20:50:02', '2019-01-01 20:50:02'),
(3, 'list-blog', 'web', '2019-01-01 20:50:15', '2019-01-01 20:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `NameProduct` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCategories` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Sales` int(11) NOT NULL,
  `Info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `NameProduct`, `idCategories`, `Quantity`, `Price`, `Sales`, `Info`, `Description`, `created_at`, `updated_at`) VALUES
(1, 'Fan Electric A970', 1, 22, 100, 5, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 46 BC, making it over 2000 years old. Richard McClintock,</p>', NULL, '2018-09-13 19:45:03'),
(2, 'Nature 2210', 1, 15, 110, 6, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,</p>', NULL, '2018-09-13 19:51:17'),
(3, 'Pizza Nutrela', 2, 7, 120, 10, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,</p>', NULL, '2018-09-13 19:51:08'),
(4, 'Tomato Lays', 2, 15, 101, 15, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,</p>', NULL, '2018-09-13 19:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `rattings`
--

CREATE TABLE `rattings` (
  `id` int(10) UNSIGNED NOT NULL,
  `idProduct` int(11) NOT NULL,
  `Ratting` int(11) NOT NULL,
  `Info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rattings`
--

INSERT INTO `rattings` (`id`, `idProduct`, `Ratting`, `Info`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '<p>Sản phẩm này không ổn đâu shop ơi!</p>', NULL, '2018-09-18 06:08:33'),
(2, 1, 4, '<p>Sản phẩm dùng cũng được đó shop</p>', NULL, '2018-09-28 00:52:37'),
(3, 1, 3, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text.</p>', NULL, NULL),
(4, 2, 1, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'BACKEND', 'web', '2019-01-01 06:24:05', '2019-01-01 20:55:25'),
(2, 'SUPER_ADMIN', 'web', '2019-01-01 20:41:05', '2019-01-01 20:55:15'),
(3, 'USER', 'web', '2019-01-01 20:41:41', '2019-01-01 20:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 3),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `Sliders` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slogan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `Sliders`, `Slogan`, `created_at`, `updated_at`) VALUES
(1, 'nguyenlongit95.jpg', 'nguyenlongit95@gmail.com', NULL, NULL),
(2, 'nguyenlongit95.jpg', 'nguyenlongit95@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `state_orders`
--

CREATE TABLE `state_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `idOrder` int(11) NOT NULL,
  `State` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `state_orders`
--

INSERT INTO `state_orders` (`id`, `idOrder`, `State`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokenapis`
--

CREATE TABLE `tokenapis` (
  `id` int(10) UNSIGNED NOT NULL,
  `Partner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE ucs2_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE ucs2_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE ucs2_unicode_ci NOT NULL,
  `Level` int(11) NOT NULL COMMENT 'Nếu là 1 thì là admin, 0 thì là User và còn thêm tùy theo yêu cầu',
  `Avatar` varchar(255) COLLATE ucs2_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE ucs2_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `Level`, `Avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nguyenlongit95', 'nguyenlongit95@gmail.com', '$2y$10$/XiVXPWQ5Ol2RmUitWDmKebYsyMJfoS/ohx8Z5NTLbDd6zoot53fe', 1, 'default.png', 'VTDzDn8ao1SRxzihv7ECKrk95SAcQ5dDglG47zMYEqJsDARqIwpxALxLhPKe', '2019-02-23 03:47:51', '2018-08-30 14:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `Item` varchar(255) COLLATE ucs2_unicode_ci NOT NULL,
  `Slug` varchar(255) COLLATE ucs2_unicode_ci NOT NULL,
  `idItem` int(11) NOT NULL,
  `Type` int(11) NOT NULL COMMENT 'Quy định loại của widget: 1 là menu, 2 là sidebar, 3 là footermenu v.v...',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_blogs`
--
ALTER TABLE `categories_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_products`
--
ALTER TABLE `categories_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_properties`
--
ALTER TABLE `custom_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_products`
--
ALTER TABLE `image_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_of_pages`
--
ALTER TABLE `info_of_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linkeds`
--
ALTER TABLE `linkeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rattings`
--
ALTER TABLE `rattings`
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
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_orders`
--
ALTER TABLE `state_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokenapis`
--
ALTER TABLE `tokenapis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories_blogs`
--
ALTER TABLE `categories_blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories_products`
--
ALTER TABLE `categories_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_properties`
--
ALTER TABLE `custom_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `image_products`
--
ALTER TABLE `image_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `info_of_pages`
--
ALTER TABLE `info_of_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `linkeds`
--
ALTER TABLE `linkeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rattings`
--
ALTER TABLE `rattings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state_orders`
--
ALTER TABLE `state_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tokenapis`
--
ALTER TABLE `tokenapis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
