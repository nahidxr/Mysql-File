-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 03:11 PM
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
-- Database: `biolife`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `main_category_id`, `name`, `created_at`, `updated_at`) VALUES
(14, 1, 'Vegetables', '2022-03-09 23:24:17', '2022-03-09 23:24:17'),
(15, 0, 'Mixed Fruits', '2022-03-09 23:33:45', '2022-03-09 23:33:45'),
(16, 1, 'Potato', '2022-03-10 09:06:54', '2022-03-10 09:06:54'),
(17, 0, 'Orange', '2022-03-12 11:44:11', '2022-03-12 11:44:11'),
(18, 0, 'Fruits', '2022-03-14 08:17:46', '2022-03-14 08:17:46');

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 'product_images/Hj1uWADp2w40BYlB6ILWcmEnWiFD1Uj1gYxRhwle.jpg', 11, '2022-03-09 23:29:13', '2022-03-09 23:29:13'),
(6, 'product_images/CURPW0cVetzA5UMtrVbcsjeZkoSf0mnTgiP0B1qU.jpg', 11, '2022-03-09 23:29:13', '2022-03-09 23:29:13'),
(7, 'product_images/H5AlZxfF0tiIPnR4yOePTMsy05i6jf1slQK8Uiqo.png', 12, '2022-03-09 23:31:20', '2022-03-09 23:31:20'),
(8, 'product_images/pUHzCuGlEnoDequIOLA6wuW4zicxYNCS7dkY0fdg.jpg', 13, '2022-03-09 23:32:55', '2022-03-09 23:32:55'),
(9, 'product_images/gd9TWKibChHNM7RECO5wjPEMH6NIyZweRIKBpF9s.jpg', 14, '2022-03-09 23:35:23', '2022-03-09 23:35:23'),
(10, 'product_images/OWpITjEWwQYKuXUYdzZebnpcWl9B7W6gwyDUz54s.jpg', 15, '2022-03-09 23:36:52', '2022-03-09 23:36:52'),
(11, 'product_images/CDfUmEKXk1SVfjZyBesaRUNWM3P2JsUnfRkGscmR.jpg', 15, '2022-03-09 23:36:52', '2022-03-09 23:36:52'),
(12, 'product_images/zT33eU6spwArHiDr2fNsTHs4Aa9KBOFISyvnQSs3.jpg', 16, '2022-03-09 23:38:59', '2022-03-09 23:38:59'),
(13, 'product_images/5HnTV2wpO3NepoP2MU7R5cWYNY7DXPTJ9py2Nvys.jpg', 16, '2022-03-09 23:38:59', '2022-03-09 23:38:59'),
(14, 'product_images/Qsl0L7PV6zG9aXXY7HqhfUQ6zgdEbCv0k2GG2oSj.jpg', 17, '2022-03-09 23:40:40', '2022-03-09 23:40:40'),
(15, 'product_images/tRjWTXjZkuCuK4YxYhUfSAC8EeVKanYg97oWSw1e.jpg', 17, '2022-03-09 23:40:40', '2022-03-09 23:40:40'),
(16, 'product_images/wA0CWavOlreHYAK9dn1Y9T2AFIl3cimjsILoc0n8.jpg', 18, '2022-03-09 23:42:40', '2022-03-09 23:42:40'),
(17, 'product_images/ksitD8X3tk2VsqxvwuvUug99ii4KshUMsEMPdD3Z.jpg', 18, '2022-03-09 23:42:40', '2022-03-09 23:42:40'),
(18, 'product_images/nSGwkO48vJLKxsNMpEovNw7prLiUAxSxIKvG2apk.jpg', 19, '2022-03-14 08:22:42', '2022-03-14 08:22:42'),
(19, 'product_images/kPzaifwzktf03aQNhnabeNBQaOm5JJJDh6kiyVDp.jpg', 19, '2022-03-14 08:22:42', '2022-03-14 08:22:42');

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
(5, '2022_01_27_072436_create_categories_table', 2),
(6, '2022_01_27_072510_create_products_table', 2),
(7, '2022_02_04_155709_create_images_table', 3),
(8, '2022_02_04_155928_drop_images_from_products', 3),
(9, '2022_03_12_024710_create_orders_table', 4),
(10, '2022_03_12_095231_create_orderlists_table', 5),
(11, '2022_03_12_101710_create_orders_table', 6),
(12, '2022_03_13_045321_create_reviews_table', 7),
(13, '2022_03_13_072822_create_reviews_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` double NOT NULL,
  `phn_no` double NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_product` double NOT NULL,
  `subtotal_price` double NOT NULL,
  `shipping_price` double NOT NULL,
  `total_price` double NOT NULL,
  `tax` double NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `phn_no`, `shipping_address`, `product_id`, `quantity`, `total_product`, `subtotal_price`, `shipping_price`, `total_price`, `tax`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(14, 1, 23213, 'dsfsdfdsfdsfdsf', '14', '1', 1, 327, 20, 352, 5, 'cash_on', '0', '2022-03-12 11:48:35', '2022-03-12 11:48:35'),
(15, 2, 343, 'erfewrs', '17', '1', 2, 421, 20, 446, 5, 'cash_on', '0', '2022-03-12 12:21:23', '2022-03-12 12:21:23'),
(16, 2, 343, 'erfewrs', '12', '1', 2, 421, 20, 446, 5, 'cash_on', '0', '2022-03-12 12:21:23', '2022-03-12 12:21:23'),
(17, 2, 18257476, 'fgfdgfdgfdgfdgfdg', '17', '1', 2, 421, 20, 446, 5, 'cash_on', '0', '2022-03-12 12:22:35', '2022-03-12 12:22:35'),
(18, 2, 18257476, 'fgfdgfdgfdgfdgfdg', '12', '1', 2, 421, 20, 446, 5, 'cash_on', '0', '2022-03-12 12:22:35', '2022-03-12 12:22:35'),
(19, 2, 6464747474, '3232323ghgdhgd', '12', '1', 3, 1390, 20, 1415, 5, 'cash_on', '0', '2022-03-12 12:26:55', '2022-03-12 12:26:55'),
(20, 2, 6464747474, '3232323ghgdhgd', '17', '2', 3, 1390, 20, 1415, 5, 'cash_on', '0', '2022-03-12 12:26:55', '2022-03-12 12:26:55'),
(21, 2, 6464747474, '3232323ghgdhgd', '14', '2', 3, 1390, 20, 1415, 5, 'cash_on', '0', '2022-03-12 12:26:55', '2022-03-12 12:26:55'),
(22, 1, 213213213, 'dfsfadsfdsfdsfsd', '12', '2', 1, 212, 20, 237, 5, 'cash_on', '0', '2022-03-13 08:52:07', '2022-03-13 08:52:07'),
(23, 2, 43534535, 'esrfdsfdsf', '15', '1', 1, 55, 20, 80, 5, 'cash_on', '0', '2022-03-14 09:11:15', '2022-03-14 09:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `discount_amount` double NOT NULL DEFAULT 0,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` double NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount_amount`, `featured_image`, `stock`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(11, 'Organic Hass Avocado', 95, 85, 'product_images/vPzChrXi5SRwJM2rcALDV09IrOIr5WO6QnK7p0Ug.jpg', 200, 'Avocados are a source of vitamins C, E, K, and B6, as well as riboflavin, niacin, folate, pantothenic acid, magnesium, and potassium', 14, '2022-03-09 23:29:13', '2022-03-09 23:29:13'),
(12, 'Hot Chili Peppers Magnetic Salt', 120, 14, 'product_images/YYd1D5H6HUhNsdc98waKvcUr7vt4ZWJuu9udtqII.jpg', 63, 'pepper powder provides trace amounts of anti-oxidants and other chemicals to aid digestive issues such as, healing an upset stomach, reducing intestinal gas, curing diarrhea and acting as a natural remedy for cramps.', 14, '2022-03-09 23:31:20', '2022-03-09 23:31:20'),
(13, 'Pumkins FairyTale', 70, 45, 'product_images/UBavQCE45tC4JijpaWLt1dW6v7BM6LFHeHUqJmsD.jpg', 8, 'Fairytale pumpkins are high in vitamin A and beta-carotene and are a good source of dietary fiber, vitamin C, potassium, and manganese. They also contain omega-3 fatty acids, B-complex vitamins, and copper.', 14, '2022-03-09 23:32:55', '2022-03-09 23:32:55'),
(14, 'National Fresh Fruit', 352, 25, 'product_images/khZez5j2pHA6vCOIA3DbbGzxIfs4zGEZGI605A2n.jpg', 500, 'Fruits are an excellent source of essential vitamins and minerals, and they are high in fiber. Fruits also provide a wide range of health-boosting antioxidants, including flavonoids. Eating a diet high in fruits and vegetables can reduce a person\'s risk of developing heart disease, cancer, inflammation, and diabetes.', 15, '2022-03-09 23:35:23', '2022-03-09 23:35:23'),
(15, 'Passover Cauiuliflower Kugel', 65, 10, 'product_images/PZvGqFXIksAhPqam3tYfwr9PNyIgaqA9o6GdgXZo.jpg', 25, 'Contains Many Nutrients. The nutrition profile of cauliflower is quite impressive. ...', 14, '2022-03-09 23:36:52', '2022-03-09 23:36:52'),
(16, 'Packham Pears', 220, 25, 'product_images/gK3zEEBRfTL9aoW8jXdwKTHRlfCJxH6vh9PgUP0n.jpg', 500, 'Packham pears are an excellent source of vitamin C and dietary fiber. It also contain high levels of antioxidants, including vitamin K and copper. These chemicals counter the effects of free radicals, protecting cells from the damage they can cause.', 14, '2022-03-09 23:38:59', '2022-03-09 23:38:59'),
(17, 'Natural Fresh Fruits', 320, 5, 'product_images/KD2asNuiFrjXpPVw21ehCrB0DF4TC2ZxWKTEehso.png', 220, 'Natural Fresh Fruits is Good for Health', 15, '2022-03-09 23:40:40', '2022-03-09 23:40:40'),
(18, 'Cherry Tomato Seeds', 65, 45, 'product_images/JdCWRouZr8EHYWDTUa4fMns7vQjIX0CFzFsqIOz6.jpg', 3562, 'Cherry tomatoes are rich in lycopene, which is great at fighting free radicals that cause disease. Lycopene can also limit UV damage to your skin from sun exposure and promote better heart health.', 14, '2022-03-09 23:42:40', '2022-03-09 23:42:40'),
(19, 'Apple', 260, 0, 'product_images/X2eAFoOiYFF8GM7A7xOSp99drFbiWzVd8lEiV8Zy.jpg', 20, 'Apples are an incredibly nutritious fruit that offers multiple health benefits. They\'re rich in fiber and antioxidants. Eating them is linked to a lower risk of many chronic conditions, including diabetes, heart disease, and cancer. Apples may also promote weight loss and improve gut and brain health.', 18, '2022-03-14 08:22:42', '2022-03-14 08:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `name`, `title`, `product_name`, `email`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, '18', 'Nahid', 'About Quality', 'Cherry Tomato Seeds', 'nahidulislamuiu@gmail.com', 'Product Quality Muach better', '0', '2022-03-13 02:38:57', '2022-03-13 02:38:57'),
(2, '12', 'nahid', 'tsfsdafsdajfasdf', 'Hot Chili Peppers Magnetic Salt', 'asdfsadfas@gmail.com', 'sdfjksdafhsadjkfaskjdfkjhsadkjfsadjkh', '1', '2022-03-13 09:20:20', '2022-03-13 09:20:20'),
(4, '18', 'ooooooo', 'fdsfds', 'Cherry Tomato Seeds', 'c@gmail.com', 'fadsfsdafsdafdsaf', '0', '2022-03-13 10:39:17', '2022-03-13 10:39:17'),
(5, '18', 'etert', 'eeeeeeeeeeeee', 'Cherry Tomato Seeds', 'gfdgg@gmail.com', 'eeeeeeeeeeeeeeeeeee', '1', '2022-03-13 13:03:45', '2022-03-13 13:03:45'),
(6, '18', 'dfgdsfgdf', 'sdfsadfsdafsda', 'Cherry Tomato Seeds', 'sdafasd@gmail.com', 'sdfsdafasdfsdafsdafsdaf', '1', '2022-03-14 07:33:49', '2022-03-14 07:33:49'),
(7, '19', 'Messi', 'Product is Not Bad', 'Apple', 'messi@gmail.com', 'Healthy food makes health good', '1', '2022-03-14 08:51:19', '2022-03-14 08:51:19');

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
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$8nbgupue5PE0z6gAoLrmHuTw2w7zPU6d7dQELATB/ZwjStBP5GTeS', NULL, 1, NULL, '2022-01-26 23:38:51', '2022-01-26 23:38:51'),
(2, 'nahid', 'nahid@gmail.com', '2022-01-26 23:59:09', '$2y$10$rE.I91iqcEetwpIWrekvIec4.gxYKyOBoVUK09xZffqRUlMmDXnf6', NULL, 0, NULL, '2022-01-26 23:58:15', '2022-01-26 23:59:09'),
(3, 'dfs', 'admindd@admin.com', NULL, '$2y$10$w7..ANKffz.dK2MKSuQmEe8OyljjN7MxNxuMeX4pDLAZigxME/wQu', NULL, 0, NULL, '2022-03-11 12:12:38', '2022-03-11 12:12:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
