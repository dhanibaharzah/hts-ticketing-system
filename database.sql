-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2020 at 09:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketit`
--
CREATE DATABASE IF NOT EXISTS `ticketit` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ticketit`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
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
(4, '2015_07_22_115516_create_ticketit_tables', 2),
(5, '2015_07_22_123254_alter_users_table', 2),
(6, '2015_09_29_123456_add_completed_at_column_to_ticketit_table', 2),
(7, '2015_10_08_123457_create_settings_table', 2),
(8, '2016_01_15_002617_add_htmlcontent_to_ticketit_and_comments', 2),
(9, '2016_01_15_040207_enlarge_settings_columns', 2),
(10, '2016_01_15_120557_add_indexes', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketit`
--

DROP TABLE IF EXISTS `ticketit`;
CREATE TABLE `ticketit` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `priority_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `agent_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit`
--

INSERT INTO `ticketit` (`id`, `subject`, `content`, `html`, `status_id`, `priority_id`, `user_id`, `agent_id`, `category_id`, `created_at`, `updated_at`, `completed_at`) VALUES
(1, 'Pembetulan torn', 'torn bocor', '<p>torn bocor</p>', 2, 1, 1, 1, 1, '2020-04-25 09:07:50', '2020-04-25 09:21:20', '2020-04-25 09:21:20'),
(2, 'testing app', 'coba satu yaaa', '<p>coba satu yaaa</p>', 2, 1, 2, 1, 1, '2020-04-25 09:22:12', '2020-04-25 23:39:48', '2020-04-25 23:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_audits`
--

DROP TABLE IF EXISTS `ticketit_audits`;
CREATE TABLE `ticketit_audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `operation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_categories`
--

DROP TABLE IF EXISTS `ticketit_categories`;
CREATE TABLE `ticketit_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_categories`
--

INSERT INTO `ticketit_categories` (`id`, `name`, `color`) VALUES
(1, 'Support', '#000000');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_categories_users`
--

DROP TABLE IF EXISTS `ticketit_categories_users`;
CREATE TABLE `ticketit_categories_users` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_categories_users`
--

INSERT INTO `ticketit_categories_users` (`category_id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_comments`
--

DROP TABLE IF EXISTS `ticketit_comments`;
CREATE TABLE `ticketit_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_priorities`
--

DROP TABLE IF EXISTS `ticketit_priorities`;
CREATE TABLE `ticketit_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_priorities`
--

INSERT INTO `ticketit_priorities` (`id`, `name`, `color`) VALUES
(1, 'High', '#830909'),
(2, 'Normal', '#090909'),
(3, 'Low', '#125f71');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_settings`
--

DROP TABLE IF EXISTS `ticketit_settings`;
CREATE TABLE `ticketit_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_settings`
--

INSERT INTO `ticketit_settings` (`id`, `lang`, `slug`, `value`, `default`, `created_at`, `updated_at`) VALUES
(1, NULL, 'main_route', 'tickets', 'tickets', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(2, NULL, 'main_route_path', 'tickets', 'tickets', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(3, NULL, 'admin_route', 'tickets-admin', 'tickets-admin', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(4, NULL, 'admin_route_path', 'tickets-admin', 'tickets-admin', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(5, NULL, 'master_template', 'layouts.app', 'layouts.app', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(6, NULL, 'bootstrap_version', '4', '4', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(7, NULL, 'email.template', 'ticketit::emails.templates.ticketit', 'ticketit::emails.templates.ticketit', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(8, NULL, 'email.header', 'Ticket Update', 'Ticket Update', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(9, NULL, 'email.signoff', 'Thank you for your patience!', 'Thank you for your patience!', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(10, NULL, 'email.signature', 'Your friends', 'Your friends', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(11, NULL, 'email.dashboard', 'My Dashboard', 'My Dashboard', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(12, NULL, 'email.google_plus_link', '#', '#', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(13, NULL, 'email.facebook_link', '#', '#', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(14, NULL, 'email.twitter_link', '#', '#', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(15, NULL, 'email.footer', 'Powered by Ticketit', 'Powered by Ticketit', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(16, NULL, 'email.footer_link', 'https://github.com/thekordy/ticketit', 'https://github.com/thekordy/ticketit', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(17, NULL, 'email.color_body_bg', '#FFFFFF', '#FFFFFF', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(18, NULL, 'email.color_header_bg', '#44B7B7', '#44B7B7', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(19, NULL, 'email.color_content_bg', '#F46B45', '#F46B45', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(20, NULL, 'email.color_footer_bg', '#414141', '#414141', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(21, NULL, 'email.color_button_bg', '#AC4D2F', '#AC4D2F', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(22, NULL, 'default_status_id', '1', '1', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(23, NULL, 'default_close_status_id', '2', '0', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(24, NULL, 'default_reopen_status_id', '3', '0', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(25, NULL, 'paginate_items', '10', '10', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(26, NULL, 'length_menu', 'a:2:{i:0;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}i:1;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}}', 'a:2:{i:0;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}i:1;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}}', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(27, NULL, 'status_notification', '1', '1', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(28, NULL, 'comment_notification', '1', '1', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(29, NULL, 'queue_emails', '0', '0', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(30, NULL, 'assigned_notification', '1', '1', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(31, NULL, 'agent_restrict', '0', '0', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(32, NULL, 'close_ticket_perm', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(33, NULL, 'reopen_ticket_perm', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(34, NULL, 'delete_modal_type', 'builtin', 'builtin', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(35, NULL, 'editor_enabled', '1', '1', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(36, NULL, 'include_font_awesome', '1', '1', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(37, NULL, 'summernote_locale', 'en', 'en', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(38, NULL, 'editor_html_highlighter', '1', '1', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(39, NULL, 'codemirror_theme', 'monokai', 'monokai', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(40, NULL, 'summernote_options_json_file', 'vendor/kordy/ticketit/src/JSON/summernote_init.json', 'vendor/kordy/ticketit/src/JSON/summernote_init.json', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(41, NULL, 'purifier_config', 'a:3:{s:15:\"HTML.SafeIframe\";s:4:\"true\";s:20:\"URI.SafeIframeRegexp\";s:72:\"%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%\";s:18:\"URI.AllowedSchemes\";a:5:{s:4:\"data\";b:1;s:4:\"http\";b:1;s:5:\"https\";b:1;s:6:\"mailto\";b:1;s:3:\"ftp\";b:1;}}', 'a:3:{s:15:\"HTML.SafeIframe\";s:4:\"true\";s:20:\"URI.SafeIframeRegexp\";s:72:\"%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%\";s:18:\"URI.AllowedSchemes\";a:5:{s:4:\"data\";b:1;s:4:\"http\";b:1;s:5:\"https\";b:1;s:6:\"mailto\";b:1;s:3:\"ftp\";b:1;}}', '2020-04-25 09:04:46', '2020-04-25 09:04:46'),
(42, NULL, 'routes', '/Applications/XAMPP/xamppfiles/htdocs/ticketit/vendor/kordy/ticketit/src/routes.php', '/Applications/XAMPP/xamppfiles/htdocs/ticketit/vendor/kordy/ticketit/src/routes.php', '2020-04-25 09:04:46', '2020-04-25 09:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_statuses`
--

DROP TABLE IF EXISTS `ticketit_statuses`;
CREATE TABLE `ticketit_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_statuses`
--

INSERT INTO `ticketit_statuses` (`id`, `name`, `color`) VALUES
(1, 'New', '#e9551e'),
(2, 'Closed', '#186107'),
(3, 'Re-opened', '#71001f');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ticketit_admin` tinyint(1) NOT NULL DEFAULT 0,
  `ticketit_agent` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `ticketit_admin`, `ticketit_agent`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$VDUshyuxgrxF638u1vI7a.p2PBA3X/LX10XVB/g0J1ZiNkIzarC0O', NULL, '2020-04-25 09:04:45', '2020-04-25 09:04:46', 1, 1),
(2, 'user', 'user@user.com', NULL, '$2y$10$g.RxCVc8pzGur5fnyQk5H.xKKlyqvBSsqevqIhhBGnmKO6NiXDDzS', NULL, '2020-04-25 09:08:36', '2020-04-25 09:12:08', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `ticketit`
--
ALTER TABLE `ticketit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketit_subject_index` (`subject`),
  ADD KEY `ticketit_status_id_index` (`status_id`),
  ADD KEY `ticketit_priority_id_index` (`priority_id`),
  ADD KEY `ticketit_user_id_index` (`user_id`),
  ADD KEY `ticketit_agent_id_index` (`agent_id`),
  ADD KEY `ticketit_category_id_index` (`category_id`),
  ADD KEY `ticketit_completed_at_index` (`completed_at`);

--
-- Indexes for table `ticketit_audits`
--
ALTER TABLE `ticketit_audits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketit_categories`
--
ALTER TABLE `ticketit_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketit_comments`
--
ALTER TABLE `ticketit_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketit_comments_user_id_index` (`user_id`),
  ADD KEY `ticketit_comments_ticket_id_index` (`ticket_id`);

--
-- Indexes for table `ticketit_priorities`
--
ALTER TABLE `ticketit_priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketit_settings`
--
ALTER TABLE `ticketit_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticketit_settings_slug_unique` (`slug`),
  ADD UNIQUE KEY `ticketit_settings_lang_unique` (`lang`),
  ADD KEY `ticketit_settings_lang_index` (`lang`),
  ADD KEY `ticketit_settings_slug_index` (`slug`);

--
-- Indexes for table `ticketit_statuses`
--
ALTER TABLE `ticketit_statuses`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ticketit`
--
ALTER TABLE `ticketit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticketit_audits`
--
ALTER TABLE `ticketit_audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticketit_categories`
--
ALTER TABLE `ticketit_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticketit_comments`
--
ALTER TABLE `ticketit_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticketit_priorities`
--
ALTER TABLE `ticketit_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticketit_settings`
--
ALTER TABLE `ticketit_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `ticketit_statuses`
--
ALTER TABLE `ticketit_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
