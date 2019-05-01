-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5278
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for donelist_mitramas
CREATE DATABASE IF NOT EXISTS `donelist_mitramas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `donelist_mitramas`;

-- Dumping structure for table donelist_mitramas.activities
CREATE TABLE IF NOT EXISTS `activities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) unsigned NOT NULL,
  `activity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_id_user_foreign` (`id_user`),
  CONSTRAINT `activities_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table donelist_mitramas.activities: ~0 rows (approximately)
DELETE FROM `activities`;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` (`id`, `id_user`, `activity`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Ex est veritatis delectus magnam.', '2019-04-30 07:39:53', '2019-04-30 07:39:53'),
	(2, 1, 'Enim in autem rerum.', '2019-04-30 07:39:53', '2019-04-30 07:39:53'),
	(3, 1, 'Asperiores facere quia consequatur mollitia.', '2019-04-30 07:39:53', '2019-04-30 07:39:53'),
	(4, 1, 'Earum quas deserunt quam sequi.', '2019-04-30 07:39:53', '2019-04-30 07:39:53'),
	(5, 1, 'Ea consequatur suscipit libero doloribus in inventore aut.', '2019-04-30 07:39:53', '2019-04-30 07:39:53'),
	(6, 1, 'Mollitia tempora iste qui est omnis maiores.', '2019-04-30 07:39:53', '2019-04-30 07:39:53'),
	(7, 1, 'Eligendi suscipit non minus tenetur libero cumque.', '2019-04-30 07:39:53', '2019-04-30 07:39:53'),
	(8, 1, 'Consequatur quia atque et fugit earum non.', '2019-04-30 07:39:53', '2019-04-30 07:39:53'),
	(9, 1, 'Rerum ut provident aperiam ut non ullam.', '2019-04-30 07:39:53', '2019-04-30 07:39:53'),
	(10, 1, 'Consequatur earum omnis cumque occaecati placeat reiciendis fuga.', '2019-04-30 07:39:53', '2019-04-30 07:39:53'),
	(11, 2, 'Illo officia quia voluptatum corporis.', '2019-04-30 07:40:04', '2019-04-30 07:40:04'),
	(12, 2, 'Ut nam officia quos quidem exercitationem.', '2019-04-30 07:40:04', '2019-04-30 07:40:04'),
	(13, 2, 'Eligendi enim dolorum veritatis autem est facilis eum.', '2019-04-30 07:40:04', '2019-04-30 07:40:04'),
	(14, 2, 'Ipsam quisquam rerum et.', '2019-04-30 07:40:04', '2019-04-30 07:40:04'),
	(15, 2, 'Minima est beatae voluptates excepturi.', '2019-04-30 07:40:04', '2019-04-30 07:40:04'),
	(16, 2, 'Quasi et placeat natus minus praesentium incidunt corrupti.', '2019-04-30 07:40:04', '2019-04-30 07:40:04'),
	(17, 2, 'Omnis ullam quae maxime dolore fugit.', '2019-04-30 07:40:04', '2019-04-30 07:40:04'),
	(18, 2, 'Aspernatur sit at corrupti occaecati asperiores aut.', '2019-04-30 07:40:04', '2019-04-30 07:40:04'),
	(19, 2, 'Molestiae est assumenda enim adipisci asperiores.', '2019-04-30 07:40:04', '2019-04-30 07:40:04'),
	(20, 2, 'Tempore ea illum provident ut consequatur.', '2019-04-30 07:40:04', '2019-04-30 07:40:04'),
	(21, 3, 'Placeat quae et est ratione alias dolorem quia.', '2019-04-30 07:40:26', '2019-04-30 07:40:26'),
	(22, 3, 'At eum est harum incidunt voluptas.', '2019-04-30 07:40:26', '2019-04-30 07:40:26'),
	(23, 3, 'Qui non magnam et ea ut velit atque.', '2019-04-30 07:40:26', '2019-04-30 07:40:26'),
	(24, 3, 'Ullam magni nisi sunt ab totam odit qui.', '2019-04-30 07:40:26', '2019-04-30 07:40:26'),
	(25, 3, 'Incidunt repellendus omnis odio aliquam.', '2019-04-30 07:40:26', '2019-04-30 07:40:26'),
	(26, 3, 'Et architecto architecto qui ipsum nesciunt illo.', '2019-04-30 07:40:26', '2019-04-30 07:40:26'),
	(27, 3, 'Sit reprehenderit repudiandae voluptas cum placeat.', '2019-04-30 07:40:26', '2019-04-30 07:40:26'),
	(28, 3, 'Est sed maiores nihil sequi.', '2019-04-30 07:40:26', '2019-04-30 07:40:26'),
	(29, 3, 'Consequatur laudantium quo distinctio voluptatum quia vel dolorum sapiente.', '2019-04-30 07:40:26', '2019-04-30 07:40:26'),
	(30, 3, 'Rerum quam perferendis quisquam maxime.', '2019-04-30 07:40:26', '2019-04-30 07:40:26');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;

-- Dumping structure for table donelist_mitramas.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table donelist_mitramas.migrations: ~3 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_04_30_042155_create_activities_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table donelist_mitramas.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table donelist_mitramas.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table donelist_mitramas.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table donelist_mitramas.users: ~50 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Ms. Elenor Weimann DDS', 'chad.auer@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OJoY2wht87', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(2, 'Michel Marks Sr.', 'lesch.theodore@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oFun0t0rp8', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(3, 'Aracely Kuphal', 'fritz.osinski@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'joAdTaArXY', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(4, 'Dr. Edmond Reichert', 'jacobson.nick@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8OWrPXEAyT', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(5, 'Theodore Hand II', 'schneider.clifford@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ut4WYXcUBr', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(6, 'Toy Gleason', 'vmcglynn@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9REnHhVJnd', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(7, 'Gail Trantow', 'conner.boyer@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Pth0rpGZPp', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(8, 'Dr. Glen Herzog II', 'hessel.laverne@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'J4SZAE20Ib', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(9, 'Prof. Garret Cummings', 'zetta.friesen@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zSiHTW2CZq', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(10, 'Ubaldo Corwin', 'iraynor@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aAPSjIDpFR', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(11, 'Raquel Haag', 'lila.heathcote@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'DERSvVnElN', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(12, 'Prof. Kayleigh Hintz', 'gage.sawayn@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'N0H8bGcNhZ', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(13, 'Elian Walsh', 'ekovacek@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Bm0g0nvoWK', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(14, 'Gene Bruen', 'cyril77@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GevgQayU8u', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(15, 'Amos Bradtke', 'reichel.gerson@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IUvuqvqbL4', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(16, 'Brady Zboncak', 'connelly.andre@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CG9uhClPd8', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(17, 'Brannon Kiehn', 'cordelia60@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XnK9pvAUOS', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(18, 'Lucile Marks', 'tremblay.chelsie@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nudiC60l3J', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(19, 'Mrs. Amelie Boyer', 'kaylah.kling@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7jzl8mCSEL', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(20, 'Dr. Jan Lakin', 'angel.schmidt@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nZdu2SpRxG', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(21, 'Hardy Shields DDS', 'rodriguez.carolyn@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'v0HSCAeLqX', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(22, 'Elliot Stamm', 'fay.london@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kHXvH96igj', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(23, 'Ms. Eliane Conn DVM', 'unique99@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KMYxVf8FdF', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(24, 'Eleonore Becker', 'pauer@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HGPHfbdM0m', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(25, 'Addison Hegmann', 'chelsie.runolfsson@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jllRHlUDqp', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(26, 'Tabitha Boyer', 'raquel.leffler@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Q5caomgs4X', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(27, 'Anais Satterfield DDS', 'flatley.mariana@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'iMJbc15DL9', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(28, 'Ladarius Feeney Sr.', 'zharris@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GzgGaaiETf', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(29, 'Issac Konopelski', 'plowe@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vAsQTTJjSf', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(30, 'Lauren Lubowitz', 'brendan.skiles@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XS9P7q8Gxb', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(31, 'Maria Fahey', 'carroll.antoinette@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UXx92pKVFV', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(32, 'Elise Parker', 'jordi98@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9madiGl0nA', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(33, 'Prof. Elijah Orn', 'modesta55@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jYxyIp9Jg4', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(34, 'Miss Alisa Durgan V', 'bethel56@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'a7fQHhN0Sz', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(35, 'Nedra Kiehn II', 'mollie.pfannerstill@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dg35O607aH', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(36, 'Kole Torphy', 'cassin.steve@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hVXU4k6AMz', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(37, 'Sadye Yost', 'zieme.julian@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qTinMVIezW', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(38, 'Mrs. Maria Willms', 'hank.leannon@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vtAiks9HUH', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(39, 'Darrel Swaniawski V', 'danielle01@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'p8fulMDdPG', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(40, 'Marietta Klein', 'macejkovic.riley@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '96Ff5s3Kvd', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(41, 'Jayce Goldner', 'skylar10@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'VGKmJVC8FL', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(42, 'Retha Braun', 'nicholas16@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ce4EgfHy2N', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(43, 'Jayde Reichert PhD', 'balistreri.beatrice@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GuDSXZv72k', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(44, 'Mina Beahan V', 'quentin93@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zOUBA9GwVt', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(45, 'Earl Bins', 'vada.leannon@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gmdBlbI30x', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(46, 'Arvel Ziemann', 'beatty.elmer@example.net', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ovPRrosn8V', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(47, 'Mr. Camryn Adams Jr.', 'qoconnell@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'owC6KUwQrL', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(48, 'Omer Dickens', 'ibailey@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WMC3NwBjTW', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(49, 'Prof. Julian Padberg DDS', 'pthompson@example.com', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 't9G3hDvnho', '2019-04-30 06:31:50', '2019-04-30 06:31:50'),
	(50, 'Faustino Lueilwitz', 'tyler07@example.org', '2019-04-30 06:31:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'L0DJtkjEjA', '2019-04-30 06:31:50', '2019-04-30 06:31:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
