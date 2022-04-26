-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 03:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_page` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_logo`, `front_page`, `created_at`, `updated_at`) VALUES
(5, 'Vivo phone', 'vivo-phone', 'public/Files/brand/vivo-phone.png', NULL, NULL, NULL),
(6, 'Xiaomi Phone', 'xiaomi-phone', 'public/Files/brand/xiaomi-phone.png', NULL, NULL, NULL),
(8, 'plus point', 'plus-point', 'public/Files/brand/plus-point.jpg', NULL, NULL, NULL),
(9, 'yellow', 'yellow', 'public/Files/brand/yellow.png', NULL, NULL, NULL),
(10, 'walton', 'walton', 'public/Files/brand/walton.png', NULL, NULL, NULL),
(11, 'Asus', 'asus', 'public/Files/brand/asus.png', NULL, NULL, NULL),
(12, 'Vision', 'vision', 'public/Files/brand/vision.png', NULL, NULL, NULL),
(13, 'philips', 'philips', 'public/Files/brand/philips.jpg', NULL, NULL, NULL),
(14, 'I phone', 'i-phone', 'public/Files/brand/i-phone.jpg', NULL, NULL, NULL),
(15, 'end', 'end', 'public/Files/brand/end.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `start_date`, `end_date`, `image`, `status`, `discount`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 'January blust Offer', '2022-01-23', '2022-01-31', 'public/Files/campaign/.jpg', '1', '20', 'January', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `home_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `icon`, `home_page`, `created_at`, `updated_at`) VALUES
(3, 'Mens Fashion', 'mens-fashion', 'public/Files/icon/mens-fashion.png', '1', NULL, NULL),
(4, 'Women Fashion', 'women-fashion', 'public/Files/icon/women-fashion.png', '0', NULL, NULL),
(12, 'Electronics', 'electronics', 'public/Files/icon/electronics.png', '0', NULL, NULL),
(14, 'Laptop', 'laptop', 'public/Files/icon/laptop.png', '1', NULL, NULL),
(15, 'Mobile phone', 'mobile-phone', 'public/Files/icon/mobile-phone.png', '1', NULL, NULL),
(16, 'head phone', 'head-phone', 'public/Files/icon/head-phone.png', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `childcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `category_id`, `subcategory_id`, `childcategory_slug`, `childcategory_name`, `created_at`, `updated_at`) VALUES
(12, 3, 10, 'casual-shirt', 'casual shirt', NULL, NULL),
(13, 3, 10, 'formal-shirt', 'formal shirt', NULL, NULL),
(14, 3, 11, 'casual-shoes', 'casual shoes', NULL, NULL),
(15, 3, 11, 'formal-shoes', 'formal shoes', NULL, NULL),
(16, 3, 15, 'formal-pants', 'Formal Pants', NULL, NULL),
(17, 3, 15, 'geans-pants', 'geans pants', NULL, NULL),
(18, 3, 15, 'casual-pants', 'Casual pants', NULL, NULL),
(19, 4, 12, 'tater-shari', 'tater shari', NULL, NULL),
(20, 4, 12, 'biyer-shari', 'biyer shari', NULL, NULL),
(21, 4, 13, 'casual-shoes', 'casual shoes', NULL, NULL),
(22, 4, 13, 'formal-shoes', 'formal shoes', NULL, NULL),
(23, 4, 14, 'three-piece', 'three piece', NULL, NULL),
(24, 12, 16, 'tea-kettle', 'Tea kettle', NULL, NULL),
(25, 12, 16, 'electric-heater', 'electric heater', NULL, NULL),
(26, 12, 18, 'blender', 'blender', NULL, NULL),
(27, 14, 20, 'hand-bag', 'hand bag', NULL, NULL),
(28, 14, 20, 'shoulder-bag', 'shoulder bag', NULL, NULL),
(29, 14, 21, 'mouse', 'mouse', NULL, NULL),
(30, 14, 21, 'keyboard', 'keyboard', NULL, NULL),
(31, 14, 21, 'ram', 'Ram', NULL, NULL),
(32, 14, 21, 'graphics-card', 'Graphics card', NULL, NULL),
(33, 15, 22, 'redmi-note-9', 'Redmi note 9', NULL, NULL),
(34, 15, 22, 'redmi-note-10', 'redmi note 10', NULL, NULL),
(35, 15, 22, 'vivo-phone', 'Vivo phone', NULL, NULL),
(36, 15, 22, 'poco-phone', 'poco phone', NULL, NULL),
(37, 15, 23, 'i-phone', 'i phone', NULL, NULL),
(38, 15, 24, 'asus-phone', 'Asus phone', NULL, NULL),
(39, 16, 25, 'blutooth', 'blutooth', NULL, NULL),
(40, 16, 25, 'wire-earphone', 'wire earphone', NULL, NULL),
(41, 3, 27, 'rolex', 'Rolex', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coupon_amount` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `valid_date`, `type`, `coupon_amount`, `status`, `created_at`, `updated_at`) VALUES
(14, 'learnhunterd', '2021-12-23', 1, 566, 'active', NULL, NULL),
(16, 'summer500', '2022-02-28', 1, 500, 'active', NULL, NULL),
(18, 'learnhunterd', '2021-12-29', 1, 566, 'deactive', NULL, NULL),
(21, 'learnhunterd', '2021-12-28', 1, 100, 'active', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_13_170302_create_categories_table', 2),
(6, '2021_12_18_141945_create_subcategories_table', 3),
(7, '2021_12_22_163945_create_childcategories_table', 4),
(8, '2021_12_23_102314_create_brands_table', 5),
(9, '2021_12_25_142749_create_seos_table', 6),
(10, '2021_12_25_174045_create_smtps_table', 7),
(11, '2021_12_25_182258_create_pages_table', 8),
(12, '2021_12_26_052200_create_products_table', 9),
(13, '2021_12_26_054756_create_warehouses_table', 10),
(14, '2021_12_26_055511_create_settings_table', 11),
(15, '2021_12_26_143955_create_coupons_table', 12),
(16, '2021_12_27_081354_create_pickuppoints_table', 13),
(17, '2022_01_19_110152_create_reviews_table', 14),
(18, '2022_01_19_162612_create_wishlists_table', 15),
(19, '2022_01_22_172748_create_campaigns_table', 16),
(20, '2022_02_04_103413_create_orders_table', 17),
(21, '2022_02_04_103505_create_order_details_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_extra_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `Product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `single_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_position` int(11) DEFAULT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_position`, `page_name`, `page_slug`, `page_title`, `page_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terms & condition3', 'terms-condition3', 'Terms & condition', '<p><span style=\"color: rgb(17, 17, 17); font-family: Roboto, &quot;system-ui&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 17.6px;\">Website terms and conditions are vital to the long-term success and security of your online business, as they outline the rules by which you and your users must abide. Without terms, you could be subject to abusive users, intellectual property theft, and unnecessary litigation.</span><br></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('customer@gmail.com', '$2y$10$UqlvDkkBSXcVOpMFwDtrue7joz2vr7Gfubu2DSmNPLCjkX8hnpTni', '2021-12-13 07:17:08');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickuppoints`
--

CREATE TABLE `pickuppoints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pickup_point_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_point_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_point_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_point_phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickuppoints`
--

INSERT INTO `pickuppoints` (`id`, `pickup_point_name`, `pickup_point_address`, `pickup_point_phone`, `pickup_point_phone_two`, `created_at`, `updated_at`) VALUES
(1, 'pickup Point 2', 'gulshan', '01521446940', '01521446940', NULL, NULL),
(4, 'Pick up point 1', 'Badda', '01521446940', '01821465465', NULL, NULL),
(7, 'pickup point 3', 'Dhanmondi', '01521446940', NULL, NULL, NULL),
(8, 'pickup point 5', 'Tangail', '01521446940', '01521446940', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `product_slider` int(11) DEFAULT NULL,
  `product_views` int(11) DEFAULT 0,
  `trendy` int(11) DEFAULT 0,
  `flash_deal_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `pickup_point_id` int(11) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `subcategory_id`, `category_id`, `childcategory_id`, `brand_id`, `name`, `slug`, `code`, `unit`, `tag`, `color`, `size`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `video`, `thumbnail`, `images`, `featured`, `status`, `product_slider`, `product_views`, `trendy`, `flash_deal_id`, `admin_id`, `pickup_point_id`, `date`, `month`, `created_at`, `updated_at`) VALUES
(13, 10, 3, '12', 8, 'Casual shirt', 'casual-shirt', 'sh-001', '4', 'stylish,comfortable', 'white,black,red', 'XL,L,M', '500', '1500', '12500', 'available', 'Ware House 2', '<p>this product is made by cotton</p>', NULL, 'casual-shirt.jpg', '[\"1722458492560259.jpg\",\"1722458492745490.jpg\",\"1722458492868846.jpg\"]', 1, 1, NULL, 32, 1, 1, 1, 1, '20-01-2022', 'January', NULL, '2022-02-24 06:19:42'),
(14, 10, 3, '12', 9, 'Polo T shirt', 'polo-t-shirt', 'sh-002', '4', 'good,comfort', 'white ,black,blue', 'M,XL,L', '250', '750', '650', 'available', 'Ware House 3', '<p>this product is made by cotton with large small and medium size</p>', NULL, 'polo-t-shirt.jpg', '[\"1722458638808630.jpg\",\"1722458638917667.jpg\",\"1722458639007706.jpg\"]', 1, 1, NULL, 6, 1, 1, 1, 1, '20-01-2022', 'January', NULL, '2022-03-29 00:17:04'),
(15, 22, 15, '35', 5, 'Vivo phone', 'vivo-phone', 'mb-002', '45', 'good,excellent', 'blue,white,dark black', '120cm,140cm', '22500', '28500', '25500', 'available', 'Ware House 2', 'vivo phone is from china it has LED display&nbsp; full HD&nbsp; with snapdragon cheapset', NULL, 'vivo-phone.png', '[\"1722458819519633.png\",\"1722458819601710.png\",\"1722458819730998.png\"]', 1, 0, NULL, 3, 0, 0, 1, 8, '20-01-2022', 'January', NULL, '2022-01-27 11:08:44'),
(16, 19, 14, NULL, 11, 'Asus gl-553 vd', 'asus-gl-553-vd', 'lp-001', '56', 'good', 'black', '120cm,140cm', '85000', '95000', '90000', 'available', 'Ware House 1', '<p>this product made by asus from china</p>', NULL, 'asus-gl-553-vd.png', '[\"1722458977006544.png\",\"1722458977207436.jpg\",\"1722458977265345.jpg\"]', 0, 1, NULL, 18, 1, 0, 1, 1, '20-01-2022', 'January', NULL, '2022-01-27 10:53:23'),
(17, 25, 16, '40', 14, 'Ear phone', 'ear-phone', 'er-001', '44', 'sfdddsf,ghgh', 'black,white,red', '120cm,140cm', '800', '1200', '1150', 'available', 'Ware House 5', '<p>ear phone sdfjl&nbsp; lskdfl lsfdk lsfldlka sllsfdlsdlmsfdlakl jokjosfloslk slallksiojap5tio jp lmlxlzklowjoflksma llksfnowo</p>', NULL, 'ear-phone.png', '[\"1722459183817516.png\",\"1722459183886598.png\",\"1722459183953181.png\"]', 1, 1, NULL, 8, 0, 1, 1, 1, '20-01-2022', 'January', NULL, '2022-02-24 06:20:00'),
(18, 22, 15, '34', 6, 'Redmi note 10', 'redmi-note-10', 'mb-005', '565', 'gdfgh,fgh', 'white black', '120cm,140cm', '15500', '21500', '20500', 'available', 'Ware House 1', '<p>sdsfdsfd sfdfgd gdfgh j&nbsp; x fgj jh&nbsp; yti&nbsp; d fgh djh&nbsp; lyi tkcx&nbsp; u&nbsp; 6udu 56e&nbsp;</p>', 'yBT3hULVhjc', 'redmi-note-10.png', '[\"1722459432589162.png\",\"1722459432712697.png\",\"1722459432843495.png\"]', 1, 1, 1, 22, 1, 1, 1, 4, '20-01-2022', 'January', NULL, '2022-02-24 06:20:07'),
(19, 22, 15, '33', 6, 'Redmi note 9', 'redmi-note-9', 'mb-006', '12', 'dsf,jkl', 'white black', '120cm,140cm', '15500', '21500', '20500', 'available', 'Ware House 1', '<p>fgddfgdgfdgfd fgdgfd sfgdsf gd gfd dg d</p>', NULL, 'redmi-note-9.png', '[\"1722459584769712.png\",\"1722459584846100.png\",\"1722459584977781.png\"]', 1, 1, NULL, 4, 1, 1, 1, 1, '20-01-2022', 'January', NULL, '2022-02-13 04:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_year` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `review`, `rating`, `review_date`, `review_month`, `review_year`, `created_at`, `updated_at`) VALUES
(4, 5, 16, 'good product', 4, '20-01-22', 'January', 2022, NULL, NULL),
(5, 1, 16, 'amazing products...thanks', 5, '20-01-22', 'January', 2022, NULL, NULL),
(6, 1, 18, 'sdjkljsd klslfdlklskd', 5, '13-02-22', 'February', 2022, NULL, NULL),
(7, 1, 14, 'fghfsg', 5, '29-03-22', 'March', 2022, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_verification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `meta_keyword`, `google_verification`, `google_analytics`, `google_adsense`, `alexa_verification`, `created_at`, `updated_at`) VALUES
(1, 'adc', 'ecommerce', 'commerce,online shop,', 'this product is buying from online product this product is buying from online productthis product is buying from online product', 'online', 'fgdfgdfgdgd', 'sfdsfdsd', 'fgdfgdfgd', 'fgdfgdfgd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tweeter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency`, `phone_one`, `phone_two`, `mail_email`, `support_email`, `logo`, `favicon`, `address`, `facebook`, `tweeter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, '৳', '01521446940', '01521446940', 'mrahman162123@bscse.uiu.ac.bd', NULL, 'public/Files/setting/61c8175b98cf8.png', 'public/Files/setting/61c8175baf46f.jpg', 'Valluk kandi, Tangail sadar', 'www.facebook.com', 'www.twiter.com', 'www.instagram.com', 'www.linkedin.com', 'www.youtube.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smtps`
--

CREATE TABLE `smtps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtps`
--

INSERT INTO `smtps` (`id`, `mailer`, `host`, `port`, `user_name`, `password`, `created_at`, `updated_at`) VALUES
(2, 'SMTP', 'smtp.mailing.io', '5052', 'habib', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcat_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcat_slug`, `created_at`, `updated_at`) VALUES
(10, 3, 'Shirt', 'shirt', NULL, NULL),
(11, 3, 'Shoes', 'shoes', NULL, NULL),
(12, 4, 'Shari', 'shari', NULL, NULL),
(13, 4, 'Shoes', 'shoes', NULL, NULL),
(14, 4, 'kamiz', 'kamiz', NULL, NULL),
(15, 3, 'pants', 'pants', NULL, NULL),
(16, 12, 'Heater', 'heater', NULL, NULL),
(18, 12, 'iron', 'iron', NULL, NULL),
(19, 14, 'gaming Laptop', 'gaming-laptop', NULL, NULL),
(20, 14, 'Laptop Bag', 'laptop-bag', NULL, NULL),
(21, 14, 'Laptop Accessories', 'laptop-accessories', NULL, NULL),
(22, 15, 'Android phone', 'android-phone', NULL, NULL),
(23, 15, 'ios phone', 'ios-phone', NULL, NULL),
(24, 15, 'gaming Phone', 'gaming-phone', NULL, NULL),
(25, 16, 'ear phone', 'ear-phone', NULL, NULL),
(27, 3, 'watch', 'watch', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$7P/c8kuwCyitArKkbZX.uuuTd/Kga0N3iMLcc4iJy.pRE3qOo44TK', '01521446940', '1', NULL, '2021-12-12 13:11:32', '2021-12-25 08:16:47'),
(2, 'customer', 'customer@gmail.com', NULL, '$2y$10$klFP8WINUlyWnGjtJ1658eFAPnRi4KyaZhalRSCyUcTu1CIg8uhe6', NULL, NULL, NULL, '2021-12-12 13:58:13', '2021-12-12 13:58:13'),
(3, 'habibur Rahman', 'hbr4494@gmail.com', NULL, 'hbr4494', '01521446940', NULL, NULL, NULL, NULL),
(4, 'musta fiz', 'musta55@gmail.com', NULL, 'musta55', '0191000000', NULL, NULL, NULL, NULL),
(5, 'Habib Adnan', 'habib@gmail.com', NULL, '$2y$10$AHuwKWKtCvD95r1RWi0ceeYzZEU6UG4E5FsYyhGDhms2dexeiUY/O', NULL, NULL, NULL, '2022-01-19 10:11:18', '2022-01-19 10:11:18'),
(6, 'nahid', 'nahid@gmail.com', NULL, '$2y$10$zKqiyqx2P3/GqeQm9.Jr5ugnpmmATDnPfSdDVdT0xfrbFPgqM1nFK', NULL, NULL, NULL, '2022-02-22 01:07:39', '2022-02-22 01:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `warehouse_name`, `warehouse_address`, `warehouse_phone`, `created_at`, `updated_at`) VALUES
(4, 'Ware House 1', 'Dhanmondi', '01812548769', NULL, NULL),
(5, 'Ware House 2', 'Tangail', '0145457878', NULL, NULL),
(6, 'Ware House 3', 'Badda', '01812456789', NULL, NULL),
(7, 'Ware House 4', 'Uttara', '01812456784', NULL, NULL),
(8, 'Ware House 5', 'Ashulia', '01812456785', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `date`, `created_at`, `updated_at`) VALUES
(3, 1, 14, '26 ,January 2022', NULL, NULL),
(12, 6, 13, '22 , February 2022', NULL, NULL),
(13, 6, 17, '24 , February 2022', NULL, NULL),
(14, 6, 18, '24 , February 2022', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_category_id_foreign` (`category_id`),
  ADD KEY `childcategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickuppoints`
--
ALTER TABLE `pickuppoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtps`
--
ALTER TABLE `smtps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickuppoints`
--
ALTER TABLE `pickuppoints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtps`
--
ALTER TABLE `smtps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD CONSTRAINT `childcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `childcategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

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
