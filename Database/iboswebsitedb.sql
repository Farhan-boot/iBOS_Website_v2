-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2021 at 08:03 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iboswebsitedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_auto_updates`
--

CREATE TABLE `wp_auto_updates` (
  `id` int(9) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onoroff` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_auto_updates`
--

INSERT INTO `wp_auto_updates` (`id`, `name`, `onoroff`) VALUES
(1, 'plugins', 'on'),
(2, 'themes', 'on'),
(3, 'minor', 'on'),
(4, 'major', ''),
(5, 'email', 'farhansakibjesy@gmail.com'),
(6, 'send', ''),
(7, 'sendupdate', ''),
(8, 'sendoutdated', ''),
(9, 'notUpdateList', ''),
(10, 'translations', 'on'),
(11, 'wpemails', 'on'),
(12, 'notUpdateListTh', ''),
(13, 'html_or_text', 'html'),
(14, 'dbupdateemails', ''),
(15, 'allow_administrator', 'on'),
(16, 'allow_editor', ''),
(17, 'allow_author', ''),
(18, 'ignore_seo', ''),
(19, 'ignore_cron', ''),
(20, 'advanced_info_emails', ''),
(21, 'update_delay', ''),
(22, 'update_delay_days', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-07-25 06:42:08', '2021-07-25 06:42:08', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ibos', 'yes'),
(2, 'home', 'http://localhost/ibos', 'yes'),
(3, 'blogname', 'ibos', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'farhansakibjesy@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:193:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:39:\"main_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"main_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"main_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"main_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"main_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"main_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"main_slider/([^/]+)/embed/?$\";s:44:\"index.php?main_slider=$matches[1]&embed=true\";s:32:\"main_slider/([^/]+)/trackback/?$\";s:38:\"index.php?main_slider=$matches[1]&tb=1\";s:40:\"main_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?main_slider=$matches[1]&paged=$matches[2]\";s:47:\"main_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?main_slider=$matches[1]&cpage=$matches[2]\";s:36:\"main_slider/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?main_slider=$matches[1]&page=$matches[2]\";s:28:\"main_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"main_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"main_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"main_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"main_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"main_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"our_client/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"our_client/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"our_client/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"our_client/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"our_client/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"our_client/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"our_client/([^/]+)/embed/?$\";s:43:\"index.php?our_client=$matches[1]&embed=true\";s:31:\"our_client/([^/]+)/trackback/?$\";s:37:\"index.php?our_client=$matches[1]&tb=1\";s:39:\"our_client/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?our_client=$matches[1]&paged=$matches[2]\";s:46:\"our_client/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?our_client=$matches[1]&cpage=$matches[2]\";s:35:\"our_client/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?our_client=$matches[1]&page=$matches[2]\";s:27:\"our_client/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"our_client/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"our_client/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"our_client/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"our_client/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"our_client/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"our_technologies/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"our_technologies/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"our_technologies/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"our_technologies/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"our_technologies/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"our_technologies/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"our_technologies/([^/]+)/embed/?$\";s:49:\"index.php?our_technologies=$matches[1]&embed=true\";s:37:\"our_technologies/([^/]+)/trackback/?$\";s:43:\"index.php?our_technologies=$matches[1]&tb=1\";s:45:\"our_technologies/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?our_technologies=$matches[1]&paged=$matches[2]\";s:52:\"our_technologies/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?our_technologies=$matches[1]&cpage=$matches[2]\";s:41:\"our_technologies/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?our_technologies=$matches[1]&page=$matches[2]\";s:33:\"our_technologies/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"our_technologies/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"our_technologies/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"our_technologies/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"our_technologies/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"our_technologies/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"blog_section_one/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"blog_section_one/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"blog_section_one/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"blog_section_one/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"blog_section_one/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"blog_section_one/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"blog_section_one/([^/]+)/embed/?$\";s:49:\"index.php?blog_section_one=$matches[1]&embed=true\";s:37:\"blog_section_one/([^/]+)/trackback/?$\";s:43:\"index.php?blog_section_one=$matches[1]&tb=1\";s:45:\"blog_section_one/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?blog_section_one=$matches[1]&paged=$matches[2]\";s:52:\"blog_section_one/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?blog_section_one=$matches[1]&cpage=$matches[2]\";s:41:\"blog_section_one/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?blog_section_one=$matches[1]&page=$matches[2]\";s:33:\"blog_section_one/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"blog_section_one/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"blog_section_one/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blog_section_one/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blog_section_one/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"blog_section_one/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"blog_section_two/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"blog_section_two/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"blog_section_two/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"blog_section_two/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"blog_section_two/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"blog_section_two/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"blog_section_two/([^/]+)/embed/?$\";s:49:\"index.php?blog_section_two=$matches[1]&embed=true\";s:37:\"blog_section_two/([^/]+)/trackback/?$\";s:43:\"index.php?blog_section_two=$matches[1]&tb=1\";s:45:\"blog_section_two/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?blog_section_two=$matches[1]&paged=$matches[2]\";s:52:\"blog_section_two/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?blog_section_two=$matches[1]&cpage=$matches[2]\";s:41:\"blog_section_two/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?blog_section_two=$matches[1]&page=$matches[2]\";s:33:\"blog_section_two/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"blog_section_two/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"blog_section_two/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blog_section_two/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blog_section_two/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"blog_section_two/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"our_team_member/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"our_team_member/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"our_team_member/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"our_team_member/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"our_team_member/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"our_team_member/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"our_team_member/([^/]+)/embed/?$\";s:48:\"index.php?our_team_member=$matches[1]&embed=true\";s:36:\"our_team_member/([^/]+)/trackback/?$\";s:42:\"index.php?our_team_member=$matches[1]&tb=1\";s:44:\"our_team_member/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?our_team_member=$matches[1]&paged=$matches[2]\";s:51:\"our_team_member/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?our_team_member=$matches[1]&cpage=$matches[2]\";s:40:\"our_team_member/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?our_team_member=$matches[1]&page=$matches[2]\";s:32:\"our_team_member/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"our_team_member/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"our_team_member/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"our_team_member/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"our_team_member/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"our_team_member/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:47:\"companion-auto-update/companion-auto-update.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:47:\"file-manager-advanced/file_manager_advanced.php\";i:3;s:27:\"svg-support/svg-support.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:60:\"C:\\xampp\\htdocs\\ibos/wp-content/themes/iboswebsite/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'iboswebsite', 'yes'),
(41, 'stylesheet', 'iboswebsite', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1642747328', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1628318529;a:3:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1628318545;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1628318547;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1628321451;a:1:{s:15:\"cau_log_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1628323251;a:7:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:24:\"cau_custom_hooks_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:23:\"cau_custom_hooks_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:21:\"cau_set_schedule_mail\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"cau_outdated_notifier\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1628491329;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'nonce_key', 'EPZvR;8xb:T0<<1e{5-jEUDb.wsyO}M7.G#x7ja=-W9KyY!n24X*i]W},%ApgSe4', 'no'),
(115, 'nonce_salt', 'GYdjx^ {l1>nBk;{chcmbeU|wJ@}<Yw~e$Ct=I.?*mK8H2fhBsC!fF&;jDtg&+Zr', 'no'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1627195504;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1628316129;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1628316128;s:7:\"checked\";a:4:{s:11:\"iboswebsite\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(130, 'auth_key', 'V]y$D7X9NfqP;<Z@?=R&o7aJl8[S%xL|e_{J@:x7nH)pU&mNS)`FVjiqVOG2]/;&', 'no'),
(131, 'auth_salt', '4@&B30I;rf[Mjetv]RguXDR;>x9>5wn(]|:>agG+x^<`8L@a!73d*]0iN~5.2e/X', 'no'),
(132, 'logged_in_key', 'lWG%[#)A_F4~FNecM5Z8V]7bkasAv%*;[%H6bA+^cPTFCiO.( s/f{:WiWT*jNQ8', 'no'),
(133, 'logged_in_salt', 'bs.J1G4o?1CgJlrGkv?_rqk`5ep:|!;VggNBgB+.|]}t+dP)Vv,e.so-B3<XB5hf', 'no'),
(139, 'can_compress_scripts', '1', 'no'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(155, 'current_theme', 'iBos limited', 'yes'),
(156, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1627287375;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(173, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(176, 'theme_mods_iboswebsite', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"top-bar\";i:2;s:15:\"footer-Services\";i:5;s:15:\"footer-Products\";i:6;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1627293236;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(186, 'recovery_mode_email_last_sent', '1627292976', 'yes'),
(187, 'redux-framework-tracking', 'a:3:{s:8:\"dev_mode\";b:0;s:4:\"hash\";s:32:\"24351d724682c6787dbb1c0514a7cda0\";s:14:\"allow_tracking\";s:2:\"no\";}', 'yes'),
(188, 'redux_version_upgraded_from', '3.5.4.21', 'yes'),
(189, '_transient_timeout__redux_activation_redirect', '1628316173', 'no'),
(190, '_transient__redux_activation_redirect', '1', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(191, 'uni_pro', 'a:14:{s:8:\"last_tab\";s:1:\"0\";s:13:\"media-favicon\";a:5:{s:3:\"url\";s:65:\"http://localhost/ibos/wp-content/uploads/2021/07/ibos-favicon.svg\";s:2:\"id\";s:2:\"14\";s:6:\"height\";s:1:\"0\";s:5:\"width\";s:1:\"0\";s:9:\"thumbnail\";s:65:\"http://localhost/ibos/wp-content/uploads/2021/07/ibos-favicon.svg\";}s:16:\"media-logo-white\";a:5:{s:3:\"url\";s:57:\"http://localhost/ibos/wp-content/uploads/2021/07/logo.svg\";s:2:\"id\";s:2:\"12\";s:6:\"height\";s:2:\"55\";s:5:\"width\";s:3:\"115\";s:9:\"thumbnail\";s:57:\"http://localhost/ibos/wp-content/uploads/2021/07/logo.svg\";}s:15:\"media-logo-blue\";a:5:{s:3:\"url\";s:62:\"http://localhost/ibos/wp-content/uploads/2021/07/blue-logo.svg\";s:2:\"id\";s:2:\"13\";s:6:\"height\";s:2:\"55\";s:5:\"width\";s:3:\"115\";s:9:\"thumbnail\";s:62:\"http://localhost/ibos/wp-content/uploads/2021/07/blue-logo.svg\";}s:23:\"opt-industries-we-serve\";s:13998:\"<div class=\"serve-wrapper\">\r\n                    <div class=\"row justify-content-center\">\r\n                        <div class=\"col-xl-3 col-lg-12 col-md-12 after-items\">\r\n                            <div class=\"serve-items\" id=\"serve-items\">\r\n                                <div class=\"serve-item serve-item-1\">Fintech</div>\r\n                                <div class=\"serve-item serve-item-2\">Healthcare</div>\r\n                                <div class=\"serve-item serve-item-3\">Telecom</div>\r\n                                <div class=\"serve-item serve-item-4\">E-Commerce</div>\r\n                                <div class=\"serve-item serve-item-5\">Real Estate</div>\r\n                                <div class=\"serve-item serve-item-6\">Software</div>\r\n                                <div class=\"serve-item serve-item-7\">Startup</div>\r\n                                <div class=\"serve-item serve-item-8\">Education</div>\r\n                                <div class=\"serve-item serve-item-9\">Retail</div>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"col-xl-9 col-lg-12 col-md-12\">\r\n                            <div class=\"serve-main-content\">\r\n                                <div class=\"serve-content\">\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Fintech</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"http://localhost/ibos/lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-lorem/\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>HealthCare</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Telecom</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>E-Commerce</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Real Estate</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Software</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Startup</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Education</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Retail</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\";s:24:\"opt-social-text-facebook\";s:1:\"#\";s:25:\"opt-social-text-instagram\";s:1:\"#\";s:23:\"opt-social-text-twitter\";s:1:\"#\";s:24:\"opt-social-text-linkedin\";s:1:\"#\";s:23:\"opt-social-text-youtube\";s:1:\"#\";s:24:\"opt-footer-text-section1\";s:68:\"Intelligent Business Operating System wants to make business simple.\";s:24:\"opt-footer-text-section2\";s:1504:\"    <div class=\"single-footer-item\">\r\n                                <h4 class=\"footer-title\">Reach Us</h4>\r\n                                <ul class=\"footer-menu-list\">\r\n                                    <li>\r\n                                        <div>\r\n                                            <img src=\"wp-content/themes/iboswebsite/assets/images/icon/message.svg\" alt=\"iBOS\">\r\n                                        </div>\r\n                                        <div>info@ibos.io</div>\r\n                                    </li>\r\n                                    <li>\r\n                                        <div>\r\n                                            <img src=\"wp-content/themes/iboswebsite/assets/images/icon/mobile.svg\" alt=\"iBOS\">\r\n                                        </div>\r\n                                        <div>+8801703596292</div>\r\n                                    </li>\r\n                                    <li>\r\n                                        <div>\r\n                                            <img src=\"wp-content/themes/iboswebsite/assets/images/icon/location.svg\" alt=\"iBOS\">\r\n                                        </div>\r\n                                        <div>\r\n                                            House no 6/2, Kazi Nazrul Islam RD, Lalmatia, Dhaka - 1207\r\n                                        </div>\r\n                                    </li>\r\n                                </ul>\r\n                            </div>\";s:17:\"opt-footer-bottom\";s:773:\"   <div class=\"footer-bottom-content\">\r\n                            <div class=\"footer-copyright\">\r\n                                &copy; 2021 iBOS Limited. All rights reserved\r\n                            </div>\r\n                            <ul class=\"footer-bottom-list\">\r\n                                <li>\r\n                                    <a href=\"#\">Terms & Conditions</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"#\">Privacy Policy</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"#\">Sitemap</a>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\";s:14:\"opt-Google-Map\";s:1778:\"    <div class=\"container\">\r\n                    <div class=\"contact-find-content\">\r\n                        <div class=\"row\">\r\n                            <div class=\"col-xl-6 order-xl-1 order-2\">\r\n                                <div class=\"single-contact-find\">\r\n                                    <iframe class=\"map\"\r\n                                        src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14607.060117181802!2d90.3642804!3d23.7557571!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc797f047ddc37606!2siBOS%20Limited!5e0!3m2!1sen!2sbd!4v1627382388000!5m2!1sen!2sbd\"\r\n                                        width=\"100%\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"offset-xl-1 col-xl-5 order-xl-2 order-1\">\r\n                                <div class=\"single-contact-find\">\r\n                                    <h2>How to find us?</h2>\r\n                                    <p>\r\n                                        From Mohammadpur Thana turn right. After reaching the building of Marie Stopes, come\r\n                                        to the first floor and we’ll be waiting for you there.\r\n                                    </p>\r\n                                    <a href=\"https://goo.gl/maps/LtADZ3n2jGshxkhJA\" class=\"btn service-btn\" target=\"_blank\">\r\n                                        Get Direction\r\n                                        <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                    </a>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\";}', 'yes'),
(192, 'uni_pro-transients', 'a:3:{s:14:\"changed_values\";a:1:{s:23:\"opt-industries-we-serve\";s:13951:\"<div class=\"serve-wrapper\">\r\n                    <div class=\"row justify-content-center\">\r\n                        <div class=\"col-xl-3 col-lg-12 col-md-12 after-items\">\r\n                            <div class=\"serve-items\" id=\"serve-items\">\r\n                                <div class=\"serve-item serve-item-1\">Fintech</div>\r\n                                <div class=\"serve-item serve-item-2\">Healthcare</div>\r\n                                <div class=\"serve-item serve-item-3\">Telecom</div>\r\n                                <div class=\"serve-item serve-item-4\">E-Commerce</div>\r\n                                <div class=\"serve-item serve-item-5\">Real Estate</div>\r\n                                <div class=\"serve-item serve-item-6\">Software</div>\r\n                                <div class=\"serve-item serve-item-7\">Startup</div>\r\n                                <div class=\"serve-item serve-item-8\">Education</div>\r\n                                <div class=\"serve-item serve-item-9\">Retail</div>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"col-xl-9 col-lg-12 col-md-12\">\r\n                            <div class=\"serve-main-content\">\r\n                                <div class=\"serve-content\">\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Fintech</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"automate-healthcare-and-expand-your-reach-with-digital/\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>HealthCare</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Telecom</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>E-Commerce</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Real Estate</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Software</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Startup</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Education</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"serve-text\">\r\n                                        <div class=\"content-text\">\r\n                                            <h4>Retail</h4>\r\n                                            <h2>\r\n                                                Automate healthcare and expand your reach with digital\r\n                                            </h2>\r\n                                            <p>\r\n                                                Lorem Ipsum is simply dummy text of the printing and\r\n                                                typesetting industry. Lorem Ipsum has been the\r\n                                                industry\'s standard dummy text ever since the 1500s,\r\n                                                when an unknown printer took a galley of type and\r\n                                                scrambled it to make a type specimen book.\r\n                                            </p>\r\n                                            <a href=\"#\" class=\"btn hero-button\">\r\n                                                <span>explore</span>\r\n                                                <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\r\n                                            </a>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\";}s:9:\"last_save\";i:1628159116;s:13:\"last_compiler\";i:1627303308;}', 'yes'),
(202, 'theme_mods_twentytwenty', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1627293254;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(205, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:3:{i:0;i:5;i:1;i:6;i:2;i:2;}}', 'yes'),
(212, 'recently_activated', 'a:0:{}', 'yes'),
(213, 'bodhi_svgs_plugin_version', '2.3.19', 'yes'),
(349, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1627544043;s:7:\"version\";s:5:\"5.4.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(458, '_site_transient_timeout_browser_7f65ff317c237641f7aace3b7dac03d6', '1628406249', 'no'),
(459, '_site_transient_browser_7f65ff317c237641f7aace3b7dac03d6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"91.0.4472.124\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(460, '_site_transient_timeout_php_check_5e827212769c648f6a0478f622eede02', '1628406250', 'no'),
(461, '_site_transient_php_check_5e827212769c648f6a0478f622eede02', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(547, 'fma_hide_review_section', 'done', 'yes'),
(548, 'fmaoptions', 'a:8:{s:14:\"fma_user_roles\";a:1:{i:0;s:13:\"administrator\";}s:9:\"fma_theme\";s:5:\"light\";s:10:\"fma_locale\";s:2:\"en\";s:11:\"public_path\";s:51:\"C:/xampp/htdocs/ibos/wp-content/themes/iboswebsite/\";s:10:\"public_url\";s:52:\"http://localhost/ibos/wp-content/themes/iboswebsite/\";s:9:\"hide_path\";i:0;s:12:\"enable_trash\";i:0;s:15:\"enable_htaccess\";i:0;}', 'yes'),
(578, 'category_children', 'a:0:{}', 'yes'),
(676, 'cau_db_version', '3.8.1', 'yes'),
(686, '_site_transient_timeout_theme_roots', '1628317926', 'no'),
(687, '_site_transient_theme_roots', 'a:4:{s:11:\"iboswebsite\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(689, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1628316133;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:47:\"companion-auto-update/companion-auto-update.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/companion-auto-update\";s:4:\"slug\";s:21:\"companion-auto-update\";s:6:\"plugin\";s:47:\"companion-auto-update/companion-auto-update.php\";s:11:\"new_version\";s:5:\"3.8.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/companion-auto-update/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/companion-auto-update.3.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/companion-auto-update/assets/icon-256x256.png?rev=2358884\";s:2:\"1x\";s:74:\"https://ps.w.org/companion-auto-update/assets/icon-128x128.png?rev=2358884\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/companion-auto-update/assets/banner-772x250.png?rev=2220861\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.6.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:47:\"file-manager-advanced/file_manager_advanced.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/file-manager-advanced\";s:4:\"slug\";s:21:\"file-manager-advanced\";s:6:\"plugin\";s:47:\"file-manager-advanced/file_manager_advanced.php\";s:11:\"new_version\";s:3:\"4.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/file-manager-advanced/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/file-manager-advanced.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/file-manager-advanced/assets/icon-128x128.png?rev=1947474\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/file-manager-advanced/assets/banner-772x250.png?rev=1787731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.19\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.19.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/ibos/'),
(12, 6, '_menu_item_type', 'custom'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '6'),
(15, 6, '_menu_item_object', 'custom'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', '#'),
(30, 8, '_menu_item_type', 'custom'),
(31, 8, '_menu_item_menu_item_parent', '0'),
(32, 8, '_menu_item_object_id', '8'),
(33, 8, '_menu_item_object', 'custom'),
(34, 8, '_menu_item_target', ''),
(35, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 8, '_menu_item_xfn', ''),
(37, 8, '_menu_item_url', '#'),
(57, 11, '_menu_item_type', 'custom'),
(58, 11, '_menu_item_menu_item_parent', '0'),
(59, 11, '_menu_item_object_id', '11'),
(60, 11, '_menu_item_object', 'custom'),
(61, 11, '_menu_item_target', ''),
(62, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 11, '_menu_item_xfn', ''),
(64, 11, '_menu_item_url', '#'),
(66, 12, '_wp_attached_file', '2021/07/logo.svg'),
(67, 12, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:115;s:6:\"height\";i:55;s:4:\"file\";s:17:\"/2021/07/logo.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(68, 13, '_wp_attached_file', '2021/07/blue-logo.svg'),
(69, 13, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:115;s:6:\"height\";i:55;s:4:\"file\";s:22:\"/2021/07/blue-logo.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:13:\"blue-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"blue-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"blue-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"blue-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"blue-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"blue-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(70, 14, '_wp_attached_file', '2021/07/ibos-favicon.svg'),
(71, 14, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:25:\"/2021/07/ibos-favicon.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"ibos-favicon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(72, 1, '_edit_lock', '1627365946:1'),
(73, 2, '_edit_lock', '1627366159:1'),
(77, 18, 'inline_featured_image', '0'),
(78, 18, '_edit_last', '1'),
(79, 18, '_edit_lock', '1627455099:1'),
(80, 19, '_wp_attached_file', '2021/07/hero-bg-img.png'),
(81, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:745;s:4:\"file\";s:23:\"2021/07/hero-bg-img.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"hero-bg-img-300x155.png\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"hero-bg-img-1024x530.png\";s:5:\"width\";i:1024;s:6:\"height\";i:530;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"hero-bg-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"hero-bg-img-768x397.png\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 18, '_thumbnail_id', '19'),
(84, 5, '_wp_old_date', '2021-07-26'),
(85, 6, '_wp_old_date', '2021-07-26'),
(87, 8, '_wp_old_date', '2021-07-26'),
(90, 11, '_wp_old_date', '2021-07-26'),
(91, 21, 'inline_featured_image', '0'),
(92, 22, '_wp_attached_file', '2021/07/akij-agro-processing.png'),
(93, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:142;s:6:\"height\";i:58;s:4:\"file\";s:32:\"2021/07/akij-agro-processing.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 21, '_edit_last', '1'),
(95, 21, '_thumbnail_id', '22'),
(96, 21, '_edit_lock', '1627378214:1'),
(97, 23, 'inline_featured_image', '0'),
(98, 24, '_wp_attached_file', '2021/07/akij-central-workshop.png'),
(99, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:159;s:6:\"height\";i:127;s:4:\"file\";s:33:\"2021/07/akij-central-workshop.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"akij-central-workshop-150x127.png\";s:5:\"width\";i:150;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 23, '_edit_last', '1'),
(101, 23, '_thumbnail_id', '24'),
(102, 23, '_edit_lock', '1627378224:1'),
(103, 25, 'inline_featured_image', '0'),
(104, 26, '_wp_attached_file', '2021/07/akij-ceramics.png'),
(105, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:103;s:6:\"height\";i:78;s:4:\"file\";s:25:\"2021/07/akij-ceramics.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 25, '_edit_last', '1'),
(107, 25, '_thumbnail_id', '26'),
(108, 25, '_edit_lock', '1627378327:1'),
(109, 27, 'inline_featured_image', '0'),
(110, 28, '_wp_attached_file', '2021/07/akij-jute.png'),
(111, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:122;s:6:\"height\";i:73;s:4:\"file\";s:21:\"2021/07/akij-jute.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 27, '_edit_last', '1'),
(113, 27, '_thumbnail_id', '28'),
(114, 27, '_edit_lock', '1627378337:1'),
(115, 29, 'inline_featured_image', '0'),
(116, 30, '_wp_attached_file', '2021/07/akij-poly-fiber.png'),
(117, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:146;s:6:\"height\";i:61;s:4:\"file\";s:27:\"2021/07/akij-poly-fiber.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 29, '_edit_last', '1'),
(119, 29, '_thumbnail_id', '30'),
(120, 29, '_edit_lock', '1627378347:1'),
(121, 31, 'inline_featured_image', '0'),
(122, 31, '_edit_last', '1'),
(123, 31, '_edit_lock', '1627378403:1'),
(124, 32, '_wp_attached_file', '2021/07/akij-textile.png'),
(125, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:136;s:6:\"height\";i:71;s:4:\"file\";s:24:\"2021/07/akij-textile.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 31, '_thumbnail_id', '32'),
(127, 33, 'inline_featured_image', '0'),
(128, 34, '_wp_attached_file', '2021/07/akij-jute-1.png'),
(129, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:122;s:6:\"height\";i:73;s:4:\"file\";s:23:\"2021/07/akij-jute-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 33, '_edit_last', '1'),
(131, 33, '_thumbnail_id', '34'),
(132, 33, '_edit_lock', '1627378587:1'),
(134, 35, '_edit_lock', '1627905296:1'),
(137, 37, '_wp_attached_file', '2021/07/card-1.png'),
(138, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:173;s:6:\"height\";i:173;s:4:\"file\";s:18:\"2021/07/card-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"card-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 35, '_thumbnail_id', '179'),
(154, 41, '_edit_lock', '1627895754:1'),
(157, 41, '_thumbnail_id', '178'),
(159, 43, '_edit_lock', '1627895674:1'),
(162, 43, '_thumbnail_id', '177'),
(163, 45, 'Icon', 'http://localhost/ibos/wp-content/uploads/2021/07/all-product-logo-_Accounting.svg'),
(164, 45, '_edit_lock', '1627895555:1'),
(167, 45, '_thumbnail_id', '176'),
(169, 47, '_edit_lock', '1627895294:1'),
(174, 47, '_thumbnail_id', '175'),
(175, 49, 'inline_featured_image', '0'),
(176, 49, '_edit_lock', '1627385642:1'),
(177, 50, '_wp_attached_file', '2021/07/desktop_windows.svg'),
(178, 50, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:28:\"/2021/07/desktop_windows.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:19:\"desktop_windows.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"desktop_windows.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"desktop_windows.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"desktop_windows.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:19:\"desktop_windows.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:19:\"desktop_windows.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(181, 49, '_thumbnail_id', '50'),
(182, 52, 'inline_featured_image', '0'),
(183, 52, '_edit_lock', '1627385592:1'),
(184, 53, '_wp_attached_file', '2021/07/phone_iphone.svg'),
(185, 53, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:25:\"/2021/07/phone_iphone.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:16:\"phone_iphone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"phone_iphone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"phone_iphone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"phone_iphone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"phone_iphone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"phone_iphone.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(188, 52, '_thumbnail_id', '53'),
(189, 55, 'inline_featured_image', '0'),
(190, 55, '_edit_lock', '1627385799:1'),
(191, 56, '_wp_attached_file', '2021/07/shopping_cart.svg'),
(192, 56, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:26:\"/2021/07/shopping_cart.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"shopping_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"shopping_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"shopping_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"shopping_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"shopping_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"shopping_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(193, 57, '_wp_attached_file', '2021/07/business_center.svg'),
(194, 57, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:28:\"/2021/07/business_center.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:19:\"business_center.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"business_center.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"business_center.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"business_center.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:19:\"business_center.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:19:\"business_center.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(197, 55, '_thumbnail_id', '57'),
(198, 59, 'inline_featured_image', '0'),
(199, 59, '_edit_lock', '1627451666:1'),
(202, 59, '_thumbnail_id', '56'),
(203, 61, 'inline_featured_image', '0'),
(204, 61, '_edit_lock', '1627385764:1'),
(205, 62, '_wp_attached_file', '2021/07/design_services.svg'),
(206, 62, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:28:\"/2021/07/design_services.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:19:\"design_services.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"design_services.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"design_services.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"design_services.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:19:\"design_services.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:19:\"design_services.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(209, 61, '_thumbnail_id', '62'),
(210, 64, 'inline_featured_image', '0'),
(211, 64, '_edit_lock', '1627804354:1'),
(212, 65, '_wp_attached_file', '2021/07/layers.svg'),
(213, 65, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:19:\"/2021/07/layers.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:10:\"layers.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"layers.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"layers.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"layers.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:10:\"layers.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:10:\"layers.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(216, 64, '_thumbnail_id', '65'),
(217, 67, 'inline_featured_image', '0'),
(218, 68, '_wp_attached_file', '2021/07/akij-logo.png'),
(219, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:112;s:6:\"height\";i:111;s:4:\"file\";s:21:\"2021/07/akij-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 67, '_edit_last', '1'),
(221, 67, '_edit_lock', '1627387032:1'),
(222, 67, '_thumbnail_id', '68'),
(223, 70, '_wp_attached_file', '2021/07/product-icon.svg'),
(224, 70, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:55;s:6:\"height\";i:54;s:4:\"file\";s:25:\"/2021/07/product-icon.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:16:\"product-icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"product-icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"product-icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"product-icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"product-icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"product-icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(227, 71, '_edit_last', '1'),
(228, 71, '_edit_lock', '1627388989:1'),
(229, 72, '_edit_last', '1'),
(230, 72, '_edit_lock', '1627389057:1'),
(231, 73, 'inline_featured_image', '0'),
(232, 73, '_edit_last', '1'),
(233, 73, '_edit_lock', '1627451480:1'),
(234, 74, '_menu_item_type', 'custom'),
(235, 74, '_menu_item_menu_item_parent', '0'),
(236, 74, '_menu_item_object_id', '74'),
(237, 74, '_menu_item_object', 'custom'),
(238, 74, '_menu_item_target', ''),
(239, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(240, 74, '_menu_item_xfn', ''),
(241, 74, '_menu_item_url', '#'),
(242, 74, '_menu_item_orphaned', '1627451630'),
(243, 5, '_wp_old_date', '2021-07-27'),
(244, 6, '_wp_old_date', '2021-07-27'),
(246, 8, '_wp_old_date', '2021-07-27'),
(249, 11, '_wp_old_date', '2021-07-27'),
(250, 75, '_menu_item_type', 'post_type'),
(251, 75, '_menu_item_menu_item_parent', '0'),
(252, 75, '_menu_item_object_id', '2'),
(253, 75, '_menu_item_object', 'page'),
(254, 75, '_menu_item_target', ''),
(255, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 75, '_menu_item_xfn', ''),
(257, 75, '_menu_item_url', ''),
(258, 75, '_menu_item_orphaned', '1627457760'),
(378, 90, '_wp_attached_file', '2021/07/all-product-logo-_Accounting.svg'),
(379, 90, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:41:\"/2021/07/all-product-logo-_Accounting.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:32:\"all-product-logo-_Accounting.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:32:\"all-product-logo-_Accounting.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:32:\"all-product-logo-_Accounting.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:32:\"all-product-logo-_Accounting.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:32:\"all-product-logo-_Accounting.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:32:\"all-product-logo-_Accounting.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(382, 91, '_wp_attached_file', '2021/07/all-product-logo-_RTM.svg'),
(383, 91, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:34:\"/2021/07/all-product-logo-_RTM.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:25:\"all-product-logo-_RTM.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:25:\"all-product-logo-_RTM.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:25:\"all-product-logo-_RTM.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:25:\"all-product-logo-_RTM.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:25:\"all-product-logo-_RTM.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:25:\"all-product-logo-_RTM.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(386, 92, '_wp_attached_file', '2021/07/all-product-logo-_SME.svg'),
(387, 92, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:34:\"/2021/07/all-product-logo-_SME.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:25:\"all-product-logo-_SME.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:25:\"all-product-logo-_SME.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:25:\"all-product-logo-_SME.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:25:\"all-product-logo-_SME.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:25:\"all-product-logo-_SME.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:25:\"all-product-logo-_SME.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(390, 93, 'inline_featured_image', '0'),
(391, 93, '_edit_lock', '1627544127:1'),
(425, 93, '_wp_page_template', 'templates/contact.php'),
(433, 5, '_wp_old_date', '2021-07-28'),
(434, 6, '_wp_old_date', '2021-07-28'),
(436, 8, '_wp_old_date', '2021-07-28'),
(439, 11, '_wp_old_date', '2021-07-28'),
(446, 99, '_form', '<div class=\"row\">\n             <div class=\"col-12\">\n                    <div class=\"form-group\">\n                             <label>Full name</label>\n                        [text* text-817 class:form-control class:contact-info-input]\n                       </div>\n                  </div>\n                   <div class=\"col-12\">\n                      <div class=\"form-group\">\n                                <label>Email</label>\n                         [email* email-718 class:form-control class:form-control class:contact-info-input]\n                       </div>\n                     </div>\n                        <div class=\"col-12\">\n                                 <div class=\"form-group\">\n                                     <label>Share Your Problem Here!</label>\n                   [textarea* textarea-995 class:form-control class:contact-info-textarea class:scrollbar-remove]\n                                         </div>\n                                    </div>\n                               <div class=\"col-12\">\n                    [submit class:btn class:btn-submit]\n                                </div>\n</div>'),
(447, 99, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <farhansakibjesy@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(448, 99, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <farhansakibjesy@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(449, 99, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(450, 99, '_additional_settings', ''),
(451, 99, '_locale', 'en_US'),
(463, 99, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(464, 101, 'inline_featured_image', '0'),
(465, 101, '_edit_lock', '1627557658:1'),
(466, 102, '_wp_attached_file', '2021/07/01.png'),
(467, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:183;s:4:\"file\";s:14:\"2021/07/01.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(470, 101, '_thumbnail_id', '102'),
(471, 104, 'inline_featured_image', '0'),
(472, 104, '_edit_lock', '1627557651:1'),
(473, 105, '_wp_attached_file', '2021/07/02.png'),
(474, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:183;s:4:\"file\";s:14:\"2021/07/02.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(477, 104, '_thumbnail_id', '105'),
(478, 107, 'inline_featured_image', '0'),
(479, 107, '_edit_lock', '1627711046:1'),
(480, 108, '_wp_attached_file', '2021/07/03.png'),
(481, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:183;s:4:\"file\";s:14:\"2021/07/03.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(484, 107, '_thumbnail_id', '108'),
(485, 110, 'inline_featured_image', '0'),
(486, 110, '_edit_lock', '1627557637:1'),
(487, 111, '_wp_attached_file', '2021/07/01-1.png'),
(488, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:183;s:4:\"file\";s:16:\"2021/07/01-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"01-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(491, 110, '_thumbnail_id', '111'),
(492, 113, '_wp_attached_file', '2021/07/all-product-logo-07.svg'),
(493, 113, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:32:\"/2021/07/all-product-logo-07.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:23:\"all-product-logo-07.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:23:\"all-product-logo-07.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:23:\"all-product-logo-07.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:23:\"all-product-logo-07.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:23:\"all-product-logo-07.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:23:\"all-product-logo-07.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(504, 118, '_menu_item_type', 'post_type'),
(505, 118, '_menu_item_menu_item_parent', '0'),
(506, 118, '_menu_item_object_id', '47'),
(507, 118, '_menu_item_object', 'post'),
(508, 118, '_menu_item_target', ''),
(509, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(510, 118, '_menu_item_xfn', ''),
(511, 118, '_menu_item_url', ''),
(512, 118, '_menu_item_orphaned', '1627558102'),
(513, 119, '_menu_item_type', 'post_type'),
(514, 119, '_menu_item_menu_item_parent', '0'),
(515, 119, '_menu_item_object_id', '45'),
(516, 119, '_menu_item_object', 'post'),
(517, 119, '_menu_item_target', ''),
(518, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(519, 119, '_menu_item_xfn', ''),
(520, 119, '_menu_item_url', ''),
(521, 119, '_menu_item_orphaned', '1627558102'),
(522, 120, '_menu_item_type', 'post_type'),
(523, 120, '_menu_item_menu_item_parent', '0'),
(524, 120, '_menu_item_object_id', '43'),
(525, 120, '_menu_item_object', 'post'),
(526, 120, '_menu_item_target', ''),
(527, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(528, 120, '_menu_item_xfn', ''),
(529, 120, '_menu_item_url', ''),
(530, 120, '_menu_item_orphaned', '1627558102'),
(531, 121, '_menu_item_type', 'post_type'),
(532, 121, '_menu_item_menu_item_parent', '0'),
(533, 121, '_menu_item_object_id', '41'),
(534, 121, '_menu_item_object', 'post'),
(535, 121, '_menu_item_target', ''),
(536, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(537, 121, '_menu_item_xfn', ''),
(538, 121, '_menu_item_url', ''),
(539, 121, '_menu_item_orphaned', '1627558102'),
(540, 122, '_menu_item_type', 'post_type'),
(541, 122, '_menu_item_menu_item_parent', '0'),
(542, 122, '_menu_item_object_id', '35'),
(543, 122, '_menu_item_object', 'post'),
(544, 122, '_menu_item_target', ''),
(545, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(546, 122, '_menu_item_xfn', ''),
(547, 122, '_menu_item_url', ''),
(548, 122, '_menu_item_orphaned', '1627558102'),
(549, 123, '_menu_item_type', 'post_type'),
(550, 123, '_menu_item_menu_item_parent', '6'),
(551, 123, '_menu_item_object_id', '47'),
(552, 123, '_menu_item_object', 'post'),
(553, 123, '_menu_item_target', ''),
(554, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(555, 123, '_menu_item_xfn', ''),
(556, 123, '_menu_item_url', ''),
(558, 124, '_menu_item_type', 'post_type'),
(559, 124, '_menu_item_menu_item_parent', '6'),
(560, 124, '_menu_item_object_id', '45'),
(561, 124, '_menu_item_object', 'post'),
(562, 124, '_menu_item_target', ''),
(563, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(564, 124, '_menu_item_xfn', ''),
(565, 124, '_menu_item_url', ''),
(567, 125, '_menu_item_type', 'post_type'),
(568, 125, '_menu_item_menu_item_parent', '6'),
(569, 125, '_menu_item_object_id', '43'),
(570, 125, '_menu_item_object', 'post'),
(571, 125, '_menu_item_target', ''),
(572, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(573, 125, '_menu_item_xfn', ''),
(574, 125, '_menu_item_url', ''),
(576, 126, '_menu_item_type', 'post_type'),
(577, 126, '_menu_item_menu_item_parent', '6'),
(578, 126, '_menu_item_object_id', '41'),
(579, 126, '_menu_item_object', 'post'),
(580, 126, '_menu_item_target', ''),
(581, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(582, 126, '_menu_item_xfn', ''),
(583, 126, '_menu_item_url', ''),
(585, 127, '_menu_item_type', 'post_type'),
(586, 127, '_menu_item_menu_item_parent', '6'),
(587, 127, '_menu_item_object_id', '35'),
(588, 127, '_menu_item_object', 'post'),
(589, 127, '_menu_item_target', ''),
(590, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(591, 127, '_menu_item_xfn', ''),
(592, 127, '_menu_item_url', ''),
(594, 128, '_menu_item_type', 'post_type'),
(595, 128, '_menu_item_menu_item_parent', '8'),
(596, 128, '_menu_item_object_id', '64'),
(597, 128, '_menu_item_object', 'post'),
(598, 128, '_menu_item_target', ''),
(599, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(600, 128, '_menu_item_xfn', ''),
(601, 128, '_menu_item_url', ''),
(603, 129, '_menu_item_type', 'post_type'),
(604, 129, '_menu_item_menu_item_parent', '8'),
(605, 129, '_menu_item_object_id', '61'),
(606, 129, '_menu_item_object', 'post'),
(607, 129, '_menu_item_target', ''),
(608, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(609, 129, '_menu_item_xfn', ''),
(610, 129, '_menu_item_url', ''),
(612, 130, '_menu_item_type', 'post_type'),
(613, 130, '_menu_item_menu_item_parent', '8'),
(614, 130, '_menu_item_object_id', '59'),
(615, 130, '_menu_item_object', 'post'),
(616, 130, '_menu_item_target', ''),
(617, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(618, 130, '_menu_item_xfn', ''),
(619, 130, '_menu_item_url', ''),
(621, 131, '_menu_item_type', 'post_type'),
(622, 131, '_menu_item_menu_item_parent', '8'),
(623, 131, '_menu_item_object_id', '55'),
(624, 131, '_menu_item_object', 'post'),
(625, 131, '_menu_item_target', ''),
(626, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(627, 131, '_menu_item_xfn', ''),
(628, 131, '_menu_item_url', ''),
(630, 132, '_menu_item_type', 'post_type'),
(631, 132, '_menu_item_menu_item_parent', '8'),
(632, 132, '_menu_item_object_id', '52'),
(633, 132, '_menu_item_object', 'post'),
(634, 132, '_menu_item_target', ''),
(635, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(636, 132, '_menu_item_xfn', ''),
(637, 132, '_menu_item_url', ''),
(639, 133, '_menu_item_type', 'post_type'),
(640, 133, '_menu_item_menu_item_parent', '8'),
(641, 133, '_menu_item_object_id', '49'),
(642, 133, '_menu_item_object', 'post'),
(643, 133, '_menu_item_target', ''),
(644, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(645, 133, '_menu_item_xfn', ''),
(646, 133, '_menu_item_url', ''),
(648, 134, '_menu_item_type', 'post_type'),
(649, 134, '_menu_item_menu_item_parent', '0'),
(650, 134, '_menu_item_object_id', '64'),
(651, 134, '_menu_item_object', 'post'),
(652, 134, '_menu_item_target', ''),
(653, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(654, 134, '_menu_item_xfn', ''),
(655, 134, '_menu_item_url', ''),
(657, 135, '_menu_item_type', 'post_type'),
(658, 135, '_menu_item_menu_item_parent', '0'),
(659, 135, '_menu_item_object_id', '61'),
(660, 135, '_menu_item_object', 'post'),
(661, 135, '_menu_item_target', ''),
(662, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(663, 135, '_menu_item_xfn', ''),
(664, 135, '_menu_item_url', ''),
(666, 136, '_menu_item_type', 'post_type'),
(667, 136, '_menu_item_menu_item_parent', '0'),
(668, 136, '_menu_item_object_id', '59'),
(669, 136, '_menu_item_object', 'post'),
(670, 136, '_menu_item_target', ''),
(671, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(672, 136, '_menu_item_xfn', ''),
(673, 136, '_menu_item_url', ''),
(675, 137, '_menu_item_type', 'post_type'),
(676, 137, '_menu_item_menu_item_parent', '0'),
(677, 137, '_menu_item_object_id', '55'),
(678, 137, '_menu_item_object', 'post'),
(679, 137, '_menu_item_target', ''),
(680, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(681, 137, '_menu_item_xfn', ''),
(682, 137, '_menu_item_url', ''),
(684, 138, '_menu_item_type', 'post_type'),
(685, 138, '_menu_item_menu_item_parent', '0'),
(686, 138, '_menu_item_object_id', '52'),
(687, 138, '_menu_item_object', 'post'),
(688, 138, '_menu_item_target', ''),
(689, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(690, 138, '_menu_item_xfn', ''),
(691, 138, '_menu_item_url', ''),
(693, 139, '_menu_item_type', 'post_type'),
(694, 139, '_menu_item_menu_item_parent', '0'),
(695, 139, '_menu_item_object_id', '49'),
(696, 139, '_menu_item_object', 'post'),
(697, 139, '_menu_item_target', ''),
(698, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(699, 139, '_menu_item_xfn', ''),
(700, 139, '_menu_item_url', ''),
(702, 140, '_menu_item_type', 'post_type'),
(703, 140, '_menu_item_menu_item_parent', '0'),
(704, 140, '_menu_item_object_id', '47'),
(705, 140, '_menu_item_object', 'post'),
(706, 140, '_menu_item_target', ''),
(707, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(708, 140, '_menu_item_xfn', ''),
(709, 140, '_menu_item_url', ''),
(711, 141, '_menu_item_type', 'post_type'),
(712, 141, '_menu_item_menu_item_parent', '0'),
(713, 141, '_menu_item_object_id', '45'),
(714, 141, '_menu_item_object', 'post'),
(715, 141, '_menu_item_target', ''),
(716, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(717, 141, '_menu_item_xfn', ''),
(718, 141, '_menu_item_url', ''),
(720, 142, '_menu_item_type', 'post_type'),
(721, 142, '_menu_item_menu_item_parent', '0'),
(722, 142, '_menu_item_object_id', '43'),
(723, 142, '_menu_item_object', 'post'),
(724, 142, '_menu_item_target', ''),
(725, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(726, 142, '_menu_item_xfn', ''),
(727, 142, '_menu_item_url', ''),
(729, 143, '_menu_item_type', 'post_type'),
(730, 143, '_menu_item_menu_item_parent', '0'),
(731, 143, '_menu_item_object_id', '41'),
(732, 143, '_menu_item_object', 'post'),
(733, 143, '_menu_item_target', ''),
(734, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(735, 143, '_menu_item_xfn', ''),
(736, 143, '_menu_item_url', ''),
(738, 144, '_menu_item_type', 'post_type'),
(739, 144, '_menu_item_menu_item_parent', '0'),
(740, 144, '_menu_item_object_id', '35'),
(741, 144, '_menu_item_object', 'post'),
(742, 144, '_menu_item_target', ''),
(743, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(744, 144, '_menu_item_xfn', ''),
(745, 144, '_menu_item_url', ''),
(751, 147, 'inline_featured_image', '0'),
(752, 147, '_edit_lock', '1627721398:1'),
(753, 148, '_wp_attached_file', '2021/07/background-0.jpg'),
(754, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:24:\"2021/07/background-0.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"background-0-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"background-0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"background-0-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(757, 147, '_thumbnail_id', '148'),
(767, 5, '_wp_old_date', '2021-07-29'),
(768, 6, '_wp_old_date', '2021-07-29'),
(769, 127, '_wp_old_date', '2021-07-29'),
(770, 123, '_wp_old_date', '2021-07-29'),
(771, 124, '_wp_old_date', '2021-07-29'),
(772, 125, '_wp_old_date', '2021-07-29'),
(773, 126, '_wp_old_date', '2021-07-29'),
(774, 8, '_wp_old_date', '2021-07-29'),
(775, 128, '_wp_old_date', '2021-07-29'),
(776, 129, '_wp_old_date', '2021-07-29'),
(777, 130, '_wp_old_date', '2021-07-29'),
(778, 131, '_wp_old_date', '2021-07-29'),
(779, 132, '_wp_old_date', '2021-07-29'),
(780, 133, '_wp_old_date', '2021-07-29'),
(783, 11, '_wp_old_date', '2021-07-29'),
(786, 152, 'inline_featured_image', '0'),
(787, 152, '_edit_lock', '1627721523:1'),
(788, 153, '_wp_attached_file', '2021/07/background-1.jpg'),
(789, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:24:\"2021/07/background-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"background-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"background-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"background-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(792, 152, '_thumbnail_id', '153'),
(802, 156, 'inline_featured_image', '0'),
(803, 156, '_edit_lock', '1627993277:1'),
(804, 157, '_wp_attached_file', '2021/07/background-2.jpg'),
(805, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:24:\"2021/07/background-2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"background-2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"background-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"background-2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(808, 156, '_thumbnail_id', '157'),
(818, 160, 'inline_featured_image', '0'),
(819, 160, '_edit_lock', '1627724669:1'),
(820, 161, 'inline_featured_image', '0'),
(821, 161, '_edit_lock', '1627727959:1'),
(838, 164, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(839, 164, '_menu_item_menu_item_parent', '11'),
(840, 164, '_menu_item_object_id', '161'),
(841, 164, '_menu_item_object', 'page'),
(842, 164, '_menu_item_target', ''),
(843, 164, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(844, 164, '_menu_item_xfn', ''),
(845, 164, '_menu_item_url', ''),
(846, 161, '_wp_page_template', 'templates/about.php'),
(847, 166, '_menu_item_type', 'post_type'),
(848, 166, '_menu_item_menu_item_parent', '0'),
(849, 166, '_menu_item_object_id', '161'),
(850, 166, '_menu_item_object', 'page'),
(851, 166, '_menu_item_target', ''),
(852, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(853, 166, '_menu_item_xfn', ''),
(854, 166, '_menu_item_url', ''),
(855, 166, '_menu_item_orphaned', '1627728157'),
(856, 167, 'inline_featured_image', '0'),
(857, 167, '_edit_lock', '1627730536:1'),
(882, 167, '_wp_page_template', 'templates/blog.php'),
(883, 172, 'inline_featured_image', '0'),
(884, 172, '_wp_trash_meta_status', 'auto-draft'),
(885, 172, '_wp_trash_meta_time', '1627734245'),
(886, 172, '_wp_desired_post_slug', ''),
(887, 174, 'inline_featured_image', '0'),
(888, 47, 'Icon', 'http://localhost/ibos/wp-content/uploads/2021/07/all-product-logo-07.svg'),
(889, 47, 'Video', 'videos'),
(893, 47, '_edit_last', '1'),
(896, 47, 'inline_featured_image', '0'),
(905, 175, '_wp_attached_file', '2021/07/erp.png'),
(906, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:621;s:6:\"height\";i:358;s:4:\"file\";s:15:\"2021/07/erp.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"erp-300x173.png\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"erp-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(910, 45, 'Video', 'video'),
(911, 176, '_wp_attached_file', '2021/07/04.png'),
(912, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:676;s:6:\"height\";i:542;s:4:\"file\";s:14:\"2021/07/04.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"04-300x241.png\";s:5:\"width\";i:300;s:6:\"height\";i:241;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(915, 45, 'inline_featured_image', '0'),
(916, 45, '_edit_last', '1'),
(919, 43, 'Icon', 'http://localhost/ibos/wp-content/uploads/2021/07/all-product-logo-_RTM.svg'),
(923, 43, '_edit_last', '1'),
(926, 43, 'Video', 'video'),
(927, 43, 'inline_featured_image', '0'),
(930, 177, '_wp_attached_file', '2021/07/rtm.png'),
(931, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:646;s:6:\"height\";i:450;s:4:\"file\";s:15:\"2021/07/rtm.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"rtm-300x209.png\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"rtm-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(934, 41, 'Icon', 'http://localhost/ibos/wp-content/uploads/2021/07/all-product-logo-_SME.svg'),
(935, 41, 'Video', 'video'),
(938, 41, 'inline_featured_image', '0'),
(939, 41, '_edit_last', '1'),
(942, 178, '_wp_attached_file', '2021/07/sme.png'),
(943, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:586;s:6:\"height\";i:352;s:4:\"file\";s:15:\"2021/07/sme.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"sme-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"sme-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(947, 35, 'Icon', 'http://localhost/ibos/wp-content/uploads/2021/07/card-1.png'),
(948, 35, 'Video', 'video'),
(949, 179, '_wp_attached_file', '2021/07/erp-1.png'),
(950, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:621;s:6:\"height\";i:358;s:4:\"file\";s:17:\"2021/07/erp-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"erp-1-300x173.png\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"erp-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(953, 35, 'inline_featured_image', '0'),
(954, 35, '_edit_last', '1'),
(957, 180, 'inline_featured_image', '0'),
(958, 180, '_edit_lock', '1627973513:1'),
(961, 180, '_edit_last', '1'),
(964, 182, '_wp_attached_file', '2021/08/01.png'),
(965, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:401;s:4:\"file\";s:14:\"2021/08/01.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"01-300x215.png\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(966, 180, '_thumbnail_id', '182'),
(969, 183, 'inline_featured_image', '0'),
(970, 183, '_edit_lock', '1627974093:1'),
(971, 184, '_wp_attached_file', '2021/08/02.png'),
(972, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:401;s:4:\"file\";s:14:\"2021/08/02.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"02-300x215.png\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(975, 183, '_thumbnail_id', '200'),
(976, 183, '_edit_last', '1'),
(979, 186, 'inline_featured_image', '0'),
(980, 186, '_edit_lock', '1627973521:1'),
(981, 187, '_wp_attached_file', '2021/08/02-1.png'),
(982, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:401;s:4:\"file\";s:16:\"2021/08/02-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"02-1-300x215.png\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"02-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(985, 186, '_thumbnail_id', '187'),
(986, 186, '_edit_last', '1'),
(989, 189, 'inline_featured_image', '0'),
(990, 189, '_edit_lock', '1627973328:1'),
(991, 190, '_wp_attached_file', '2021/08/04.png'),
(992, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:401;s:4:\"file\";s:14:\"2021/08/04.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"04-300x215.png\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(995, 189, '_thumbnail_id', '190'),
(996, 189, '_edit_last', '1'),
(999, 192, 'inline_featured_image', '0'),
(1000, 192, '_edit_lock', '1627973322:1'),
(1001, 193, '_wp_attached_file', '2021/08/05.png'),
(1002, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:244;s:4:\"file\";s:14:\"2021/08/05.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"05-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1005, 192, '_thumbnail_id', '193'),
(1006, 192, '_edit_last', '1'),
(1009, 195, 'inline_featured_image', '0'),
(1010, 195, '_edit_lock', '1627974001:1'),
(1011, 196, '_wp_attached_file', '2021/08/06.png'),
(1012, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:246;s:4:\"file\";s:14:\"2021/08/06.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"06-300x185.png\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"06-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1015, 195, '_thumbnail_id', '196'),
(1016, 195, '_edit_last', '1'),
(1028, 5, '_wp_old_date', '2021-07-31'),
(1029, 6, '_wp_old_date', '2021-07-31'),
(1030, 127, '_wp_old_date', '2021-07-31'),
(1031, 123, '_wp_old_date', '2021-07-31'),
(1032, 124, '_wp_old_date', '2021-07-31'),
(1033, 125, '_wp_old_date', '2021-07-31'),
(1034, 126, '_wp_old_date', '2021-07-31'),
(1035, 8, '_wp_old_date', '2021-07-31'),
(1036, 128, '_wp_old_date', '2021-07-31'),
(1037, 129, '_wp_old_date', '2021-07-31'),
(1038, 130, '_wp_old_date', '2021-07-31'),
(1039, 131, '_wp_old_date', '2021-07-31'),
(1040, 132, '_wp_old_date', '2021-07-31'),
(1041, 133, '_wp_old_date', '2021-07-31'),
(1047, 11, '_wp_old_date', '2021-07-31'),
(1048, 164, '_wp_old_date', '2021-07-31'),
(1049, 199, '_menu_item_type', 'taxonomy'),
(1050, 199, '_menu_item_menu_item_parent', '11'),
(1051, 199, '_menu_item_object_id', '9'),
(1052, 199, '_menu_item_object', 'category'),
(1053, 199, '_menu_item_target', ''),
(1054, 199, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1055, 199, '_menu_item_xfn', ''),
(1056, 199, '_menu_item_url', ''),
(1058, 200, '_wp_attached_file', '2021/08/08.png'),
(1059, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:246;s:4:\"file\";s:14:\"2021/08/08.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"08-300x185.png\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"08-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1064, 201, 'inline_featured_image', '0'),
(1065, 201, '_edit_lock', '1627973994:1'),
(1066, 202, 'inline_featured_image', '0'),
(1067, 202, '_edit_lock', '1627974164:1'),
(1068, 203, '_wp_attached_file', '2021/08/blog-big.png'),
(1069, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:420;s:4:\"file\";s:20:\"2021/08/blog-big.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"blog-big-300x248.png\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"blog-big-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1072, 202, '_thumbnail_id', '203'),
(1073, 202, '_edit_last', '1'),
(1076, 205, 'inline_featured_image', '0'),
(1077, 205, '_edit_lock', '1627975645:1'),
(1078, 206, '_wp_attached_file', '2021/08/15.png'),
(1079, 206, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:295;s:6:\"height\";i:268;s:4:\"file\";s:14:\"2021/08/15.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"15-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1082, 205, '_thumbnail_id', '211'),
(1083, 205, '_edit_last', '1'),
(1086, 208, 'inline_featured_image', '0'),
(1087, 208, '_edit_lock', '1627974190:1'),
(1088, 209, '_wp_attached_file', '2021/08/11.png'),
(1089, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:295;s:6:\"height\";i:268;s:4:\"file\";s:14:\"2021/08/11.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1092, 208, '_thumbnail_id', '209'),
(1093, 208, '_edit_last', '1'),
(1094, 208, '_pingme', '1'),
(1095, 208, '_encloseme', '1'),
(1096, 208, '_wp_trash_meta_status', 'publish'),
(1097, 208, '_wp_trash_meta_time', '1627974338'),
(1098, 208, '_wp_desired_post_slug', 'be-an-extraordinary-performer-not-just-a-workaholic-9'),
(1099, 211, '_wp_attached_file', '2021/08/12.png'),
(1100, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:295;s:6:\"height\";i:268;s:4:\"file\";s:14:\"2021/08/12.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1105, 212, 'inline_featured_image', '0'),
(1106, 212, '_edit_lock', '1627976305:1'),
(1107, 213, '_wp_attached_file', '2021/08/03.png'),
(1108, 213, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:401;s:4:\"file\";s:14:\"2021/08/03.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"03-300x215.png\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1111, 212, '_thumbnail_id', '213'),
(1112, 212, '_edit_last', '1'),
(1115, 215, 'inline_featured_image', '0'),
(1116, 215, '_edit_lock', '1627976205:1'),
(1117, 216, 'inline_featured_image', '0'),
(1118, 216, '_edit_lock', '1627985711:1'),
(1119, 217, '_wp_attached_file', '2021/08/16.png'),
(1120, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:295;s:6:\"height\";i:268;s:4:\"file\";s:14:\"2021/08/16.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"16-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1123, 216, '_thumbnail_id', '217'),
(1124, 216, '_edit_last', '1'),
(1127, 219, '_menu_item_type', 'taxonomy'),
(1128, 219, '_menu_item_menu_item_parent', '0'),
(1129, 219, '_menu_item_object_id', '8'),
(1130, 219, '_menu_item_object', 'category'),
(1131, 219, '_menu_item_target', ''),
(1132, 219, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1133, 219, '_menu_item_xfn', ''),
(1134, 219, '_menu_item_url', ''),
(1136, 220, 'inline_featured_image', '0'),
(1137, 220, '_edit_lock', '1627993024:1'),
(1138, 221, '_wp_attached_file', '2021/08/03-1.png'),
(1139, 221, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:538;s:6:\"height\";i:511;s:4:\"file\";s:16:\"2021/08/03-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"03-1-300x285.png\";s:5:\"width\";i:300;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"03-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1142, 220, '_thumbnail_id', '224'),
(1143, 220, '_edit_last', '1'),
(1148, 224, '_wp_attached_file', '2021/08/background-6.jpg'),
(1149, 224, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:24:\"2021/08/background-6.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"background-6-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"background-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"background-6-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1150, 220, '_pingme', '1'),
(1151, 220, '_encloseme', '1'),
(1152, 225, '_menu_item_type', 'post_type'),
(1153, 225, '_menu_item_menu_item_parent', '219'),
(1154, 225, '_menu_item_object_id', '220'),
(1155, 225, '_menu_item_object', 'post'),
(1156, 225, '_menu_item_target', ''),
(1157, 225, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1158, 225, '_menu_item_xfn', ''),
(1159, 225, '_menu_item_url', ''),
(1161, 5, '_wp_old_date', '2021-08-03'),
(1162, 6, '_wp_old_date', '2021-08-03'),
(1163, 127, '_wp_old_date', '2021-08-03'),
(1164, 123, '_wp_old_date', '2021-08-03'),
(1165, 124, '_wp_old_date', '2021-08-03'),
(1166, 125, '_wp_old_date', '2021-08-03'),
(1167, 126, '_wp_old_date', '2021-08-03'),
(1168, 8, '_wp_old_date', '2021-08-03'),
(1169, 128, '_wp_old_date', '2021-08-03'),
(1170, 129, '_wp_old_date', '2021-08-03'),
(1171, 130, '_wp_old_date', '2021-08-03'),
(1172, 131, '_wp_old_date', '2021-08-03'),
(1173, 132, '_wp_old_date', '2021-08-03'),
(1174, 133, '_wp_old_date', '2021-08-03'),
(1175, 219, '_wp_old_date', '2021-08-03'),
(1176, 225, '_wp_old_date', '2021-08-03'),
(1178, 11, '_wp_old_date', '2021-08-03'),
(1179, 164, '_wp_old_date', '2021-08-03'),
(1180, 199, '_wp_old_date', '2021-08-03'),
(1181, 140, '_wp_old_date', '2021-07-29'),
(1182, 141, '_wp_old_date', '2021-07-29'),
(1183, 142, '_wp_old_date', '2021-07-29'),
(1184, 143, '_wp_old_date', '2021-07-29'),
(1185, 144, '_wp_old_date', '2021-07-29'),
(1186, 134, '_wp_old_date', '2021-07-29'),
(1187, 135, '_wp_old_date', '2021-07-29'),
(1188, 136, '_wp_old_date', '2021-07-29'),
(1189, 137, '_wp_old_date', '2021-07-29'),
(1190, 138, '_wp_old_date', '2021-07-29'),
(1191, 139, '_wp_old_date', '2021-07-29'),
(1192, 226, 'inline_featured_image', '0'),
(1193, 226, '_edit_lock', '1628069647:1'),
(1210, 229, '_menu_item_type', 'post_type'),
(1211, 229, '_menu_item_menu_item_parent', '0'),
(1212, 229, '_menu_item_object_id', '226'),
(1213, 229, '_menu_item_object', 'page'),
(1214, 229, '_menu_item_target', ''),
(1215, 229, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1216, 229, '_menu_item_xfn', ''),
(1217, 229, '_menu_item_url', ''),
(1218, 226, '_wp_page_template', 'templates/case-study.php'),
(1219, 226, '_edit_last', '1'),
(1220, 231, 'inline_featured_image', '0'),
(1221, 231, '_edit_lock', '1628090855:1'),
(1222, 232, 'inline_featured_image', '0'),
(1223, 232, '_edit_lock', '1628090717:1'),
(1224, 233, 'inline_featured_image', '0'),
(1225, 233, '_edit_lock', '1628090926:1'),
(1226, 234, 'inline_featured_image', '0'),
(1227, 234, '_edit_lock', '1628090827:1'),
(1228, 235, 'inline_featured_image', '0'),
(1229, 235, '_edit_lock', '1628090873:1'),
(1230, 236, 'inline_featured_image', '0'),
(1231, 236, '_edit_lock', '1628091147:1'),
(1232, 237, 'inline_featured_image', '0'),
(1233, 237, '_edit_lock', '1628091410:1'),
(1258, 237, '_wp_page_template', 'case-study-templates/fruits-vegetables-delivery-mobile-app.php'),
(1259, 237, '_edit_last', '1'),
(1260, 242, 'inline_featured_image', '0'),
(1261, 242, '_edit_lock', '1628144614:1'),
(1278, 245, '_menu_item_type', 'post_type'),
(1279, 245, '_menu_item_menu_item_parent', '11'),
(1280, 245, '_menu_item_object_id', '242'),
(1281, 245, '_menu_item_object', 'page'),
(1282, 245, '_menu_item_target', ''),
(1283, 245, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1284, 245, '_menu_item_xfn', ''),
(1285, 245, '_menu_item_url', ''),
(1286, 242, '_wp_page_template', 'templates/career.php'),
(1287, 242, '_edit_last', '1'),
(1288, 5, '_wp_old_date', '2021-08-04'),
(1289, 6, '_wp_old_date', '2021-08-04'),
(1290, 127, '_wp_old_date', '2021-08-04'),
(1291, 123, '_wp_old_date', '2021-08-04'),
(1292, 124, '_wp_old_date', '2021-08-04'),
(1293, 125, '_wp_old_date', '2021-08-04'),
(1294, 126, '_wp_old_date', '2021-08-04'),
(1295, 8, '_wp_old_date', '2021-08-04'),
(1296, 128, '_wp_old_date', '2021-08-04'),
(1297, 129, '_wp_old_date', '2021-08-04'),
(1298, 130, '_wp_old_date', '2021-08-04'),
(1299, 131, '_wp_old_date', '2021-08-04'),
(1300, 132, '_wp_old_date', '2021-08-04'),
(1301, 133, '_wp_old_date', '2021-08-04'),
(1302, 219, '_wp_old_date', '2021-08-04'),
(1303, 225, '_wp_old_date', '2021-08-04'),
(1304, 229, '_wp_old_date', '2021-08-04'),
(1305, 11, '_wp_old_date', '2021-08-04'),
(1306, 164, '_wp_old_date', '2021-08-04'),
(1307, 199, '_wp_old_date', '2021-08-04'),
(1308, 140, '_wp_old_date', '2021-08-04'),
(1309, 141, '_wp_old_date', '2021-08-04'),
(1310, 142, '_wp_old_date', '2021-08-04'),
(1311, 143, '_wp_old_date', '2021-08-04'),
(1312, 144, '_wp_old_date', '2021-08-04'),
(1313, 134, '_wp_old_date', '2021-08-04'),
(1314, 135, '_wp_old_date', '2021-08-04'),
(1315, 136, '_wp_old_date', '2021-08-04'),
(1316, 137, '_wp_old_date', '2021-08-04'),
(1317, 138, '_wp_old_date', '2021-08-04'),
(1318, 139, '_wp_old_date', '2021-08-04'),
(1319, 247, 'inline_featured_image', '0'),
(1320, 247, '_edit_lock', '1628146572:1'),
(1345, 247, '_wp_page_template', 'templates/single-career.php'),
(1346, 247, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-07-25 06:42:08', '2021-07-25 06:42:08', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-07-25 06:42:08', '2021-07-25 06:42:08', '', 0, 'http://localhost/ibos/?p=1', 0, 'post', '', 1),
(2, 1, '2021-07-25 06:42:08', '2021-07-25 06:42:08', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/ibos/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-07-25 06:42:08', '2021-07-25 06:42:08', '', 0, 'http://localhost/ibos/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-07-25 06:42:08', '2021-07-25 06:42:08', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/ibos.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-07-25 06:42:08', '2021-07-25 06:42:08', '', 0, 'http://localhost/ibos/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-08-05 06:57:32', '2021-07-26 10:06:04', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2021-08-05 06:57:32', '2021-07-26 10:07:58', '', 'PRODUCTS', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=6', 2, 'nav_menu_item', '', 0),
(8, 1, '2021-08-05 06:57:32', '2021-07-26 10:09:52', '', 'SERVICES', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=8', 8, 'nav_menu_item', '', 0),
(11, 1, '2021-08-05 06:57:32', '2021-07-26 10:11:24', '', 'COMPANY', '', 'publish', 'closed', 'closed', '', 'company', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=11', 18, 'nav_menu_item', '', 0),
(12, 1, '2021-07-26 12:30:46', '2021-07-26 12:30:46', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-07-26 12:30:46', '2021-07-26 12:30:46', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/07/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(13, 1, '2021-07-26 12:31:04', '2021-07-26 12:31:04', '', 'blue-logo', '', 'inherit', 'open', 'closed', '', 'blue-logo', '', '', '2021-07-26 12:31:04', '2021-07-26 12:31:04', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/07/blue-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(14, 1, '2021-07-26 12:41:44', '2021-07-26 12:41:44', '', 'ibos favicon', '', 'inherit', 'open', 'closed', '', 'ibos-favicon', '', '', '2021-07-26 12:41:44', '2021-07-26 12:41:44', '', 0, 'http://localhost/ibos/wp-content/uploads/2021/07/ibos-favicon.svg', 0, 'attachment', 'image/svg+xml', 0),
(18, 1, '2021-07-27 06:54:00', '2021-07-27 06:54:00', '<span style=\"font-weight: 400;\">iBOS is focused to ensure the automation of your business and putting your operation on a faster yet efficient track. We build solutions that simplify your business in an innovative way. Our work is all about being the one-stop solution for everything you can relate to your business.</span>', 'iBOS Combination of Innovation And Reliability', '', 'publish', 'closed', 'closed', '', 'your-business-needs-our-solutions', '', '', '2021-07-28 06:43:14', '2021-07-28 06:43:14', '', 0, 'http://localhost/ibos/?post_type=main_slider&#038;p=18', 0, 'main_slider', '', 0),
(19, 1, '2021-07-27 06:58:09', '2021-07-27 06:58:09', '', 'hero-bg-img', '', 'inherit', 'open', 'closed', '', 'hero-bg-img', '', '', '2021-07-27 06:58:09', '2021-07-27 06:58:09', '', 18, 'http://localhost/ibos/wp-content/uploads/2021/07/hero-bg-img.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2021-07-27 09:28:58', '2021-07-27 09:28:58', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2021-07-27 09:28:58', '2021-07-27 09:28:58', '', 0, 'http://localhost/ibos/?post_type=global_partners&#038;p=21', 0, 'global_partners', '', 0),
(22, 1, '2021-07-27 09:28:55', '2021-07-27 09:28:55', '', 'akij-agro-processing', '', 'inherit', 'open', 'closed', '', 'akij-agro-processing', '', '', '2021-07-27 09:28:55', '2021-07-27 09:28:55', '', 21, 'http://localhost/ibos/wp-content/uploads/2021/07/akij-agro-processing.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2021-07-27 09:32:47', '2021-07-27 09:32:47', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2021-07-27 09:32:47', '2021-07-27 09:32:47', '', 0, 'http://localhost/ibos/?post_type=global_partners&#038;p=23', 0, 'global_partners', '', 0),
(24, 1, '2021-07-27 09:32:45', '2021-07-27 09:32:45', '', 'akij-central-workshop', '', 'inherit', 'open', 'closed', '', 'akij-central-workshop', '', '', '2021-07-27 09:32:45', '2021-07-27 09:32:45', '', 23, 'http://localhost/ibos/wp-content/uploads/2021/07/akij-central-workshop.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2021-07-27 09:33:04', '2021-07-27 09:33:04', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-3', '', '', '2021-07-27 09:34:26', '2021-07-27 09:34:26', '', 0, 'http://localhost/ibos/?post_type=global_partners&#038;p=25', 0, 'global_partners', '', 0),
(26, 1, '2021-07-27 09:32:55', '2021-07-27 09:32:55', '', 'akij-ceramics', '', 'inherit', 'open', 'closed', '', 'akij-ceramics', '', '', '2021-07-27 09:32:55', '2021-07-27 09:32:55', '', 25, 'http://localhost/ibos/wp-content/uploads/2021/07/akij-ceramics.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2021-07-27 09:34:40', '2021-07-27 09:34:40', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-4', '', '', '2021-07-27 09:34:40', '2021-07-27 09:34:40', '', 0, 'http://localhost/ibos/?post_type=global_partners&#038;p=27', 0, 'global_partners', '', 0),
(28, 1, '2021-07-27 09:34:38', '2021-07-27 09:34:38', '', 'akij-jute', '', 'inherit', 'open', 'closed', '', 'akij-jute', '', '', '2021-07-27 09:34:38', '2021-07-27 09:34:38', '', 27, 'http://localhost/ibos/wp-content/uploads/2021/07/akij-jute.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2021-07-27 09:34:50', '2021-07-27 09:34:50', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-5', '', '', '2021-07-27 09:34:50', '2021-07-27 09:34:50', '', 0, 'http://localhost/ibos/?post_type=global_partners&#038;p=29', 0, 'global_partners', '', 0),
(30, 1, '2021-07-27 09:34:48', '2021-07-27 09:34:48', '', 'akij-poly-fiber', '', 'inherit', 'open', 'closed', '', 'akij-poly-fiber', '', '', '2021-07-27 09:34:48', '2021-07-27 09:34:48', '', 29, 'http://localhost/ibos/wp-content/uploads/2021/07/akij-poly-fiber.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2021-07-27 09:34:53', '2021-07-27 09:34:53', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-6', '', '', '2021-07-27 09:35:08', '2021-07-27 09:35:08', '', 0, 'http://localhost/ibos/?post_type=global_partners&#038;p=31', 0, 'global_partners', '', 0),
(32, 1, '2021-07-27 09:35:03', '2021-07-27 09:35:03', '', 'akij-textile', '', 'inherit', 'open', 'closed', '', 'akij-textile', '', '', '2021-07-27 09:35:03', '2021-07-27 09:35:03', '', 31, 'http://localhost/ibos/wp-content/uploads/2021/07/akij-textile.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2021-07-27 09:36:46', '2021-07-27 09:36:46', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-7', '', '', '2021-07-27 09:36:46', '2021-07-27 09:36:46', '', 0, 'http://localhost/ibos/?post_type=global_partners&#038;p=33', 0, 'global_partners', '', 0),
(34, 1, '2021-07-27 09:36:14', '2021-07-27 09:36:14', '', 'akij-jute', '', 'inherit', 'open', 'closed', '', 'akij-jute-2', '', '', '2021-07-27 09:36:14', '2021-07-27 09:36:14', '', 33, 'http://localhost/ibos/wp-content/uploads/2021/07/akij-jute-1.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2021-07-27 09:52:02', '2021-07-27 09:52:02', '<!-- wp:paragraph -->\n<p>Manage your entire enterprise under a single umbrella with our Enterprise Resource Planning (ERP) Software. iBOS ERP Software is not only a powerful system but also user-friendly and highly customizable.</p>\n<!-- /wp:paragraph -->', 'iBOS Enterprise', '', 'publish', 'open', 'open', '', 'ibos-bms', '', '', '2021-08-02 09:17:41', '2021-08-02 09:17:41', '', 0, 'http://localhost/ibos/?p=35', 0, 'post', '', 0),
(36, 1, '2021-07-27 09:52:02', '2021-07-27 09:52:02', '<!-- wp:paragraph -->\n<p><br>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the</p>\n<!-- /wp:paragraph -->', 'iBOS BMS', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-07-27 09:52:02', '2021-07-27 09:52:02', '', 35, 'http://localhost/ibos/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-07-27 09:54:39', '2021-07-27 09:54:39', '', 'card-1', '', 'inherit', 'open', 'closed', '', 'card-1', '', '', '2021-07-27 09:54:39', '2021-07-27 09:54:39', '', 35, 'http://localhost/ibos/wp-content/uploads/2021/07/card-1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2021-07-27 10:23:22', '2021-07-27 10:23:22', '<!-- wp:paragraph -->\n<p>Manage your entire enterprise under a single umbrella with our Enterprise Resource Planning (ERP) Software. iBOS ERP Software is not only a powerful system but also user-friendly and highly customizable.</p>\n<!-- /wp:paragraph -->', 'iBOS Enterprise', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-07-27 10:23:22', '2021-07-27 10:23:22', '', 35, 'http://localhost/ibos/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-07-27 10:47:03', '2021-07-27 10:47:03', '<!-- wp:paragraph -->\n<p>iBOS ERP Solution for SME can be the sole solution to monitor and manage your assets, inventory, and human resources of your small and medium business from one platform.</p>\n<!-- /wp:paragraph -->', 'iBOS SME', '', 'publish', 'open', 'open', '', 'ibos-sme', '', '', '2021-08-02 09:15:54', '2021-08-02 09:15:54', '', 0, 'http://localhost/ibos/?p=41', 0, 'post', '', 0),
(42, 1, '2021-07-27 10:47:03', '2021-07-27 10:47:03', '<!-- wp:paragraph -->\n<p>iBOS ERP Solution for SME can be the sole solution to monitor and manage your assets, inventory, and human resources of your small and medium business from one platform.</p>\n<!-- /wp:paragraph -->', 'iBOS SME', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-07-27 10:47:03', '2021-07-27 10:47:03', '', 41, 'http://localhost/ibos/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-07-27 11:02:41', '2021-07-27 11:02:41', '<!-- wp:paragraph -->\n<p>Count iBOS RTM Software as the most reliable way to set target, manage &amp; follow the entire track of every employee from route to market from a single dashboard.</p>\n<!-- /wp:paragraph -->', 'iBOS RTM', '', 'publish', 'open', 'open', '', 'ibos-rtm', '', '', '2021-08-02 09:14:16', '2021-08-02 09:14:16', '', 0, 'http://localhost/ibos/?p=43', 0, 'post', '', 0),
(44, 1, '2021-07-27 11:02:41', '2021-07-27 11:02:41', '<!-- wp:paragraph -->\n<p>Count iBOS RTM Software as the most reliable way to set target, manage &amp; follow the entire track of every employee from route to market from a single dashboard.</p>\n<!-- /wp:paragraph -->', 'iBOS RTM', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-07-27 11:02:41', '2021-07-27 11:02:41', '', 43, 'http://localhost/ibos/?p=44', 0, 'revision', '', 0),
(45, 1, '2021-07-27 11:03:37', '2021-07-27 11:03:37', '<!-- wp:paragraph -->\n<p>iBOS Accounting software is capable of keeping track of your finances by seamlessly recording expenses &amp; revenues, running reports, and creating neat invoices.</p>\n<!-- /wp:paragraph -->', 'iBOS Accounting', '', 'publish', 'open', 'open', '', 'ibos-accounting', '', '', '2021-08-02 09:12:04', '2021-08-02 09:12:04', '', 0, 'http://localhost/ibos/?p=45', 0, 'post', '', 0),
(46, 1, '2021-07-27 11:03:37', '2021-07-27 11:03:37', '<!-- wp:paragraph -->\n<p>iBOS Accounting software is capable of keeping track of your finances by seamlessly recording expenses &amp; revenues, running reports, and creating neat invoices.</p>\n<!-- /wp:paragraph -->', 'iBOS Accounting', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-07-27 11:03:37', '2021-07-27 11:03:37', '', 45, 'http://localhost/ibos/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-07-27 11:05:52', '2021-07-27 11:05:52', '<!-- wp:paragraph -->\n<p>Take care of the details of your Human Resources with an integrated Human Resource Management(HRM) software that keeps updating real-time, so you don’t need people to oversee people.</p>\n<!-- /wp:paragraph -->', 'iBOS HRM', '', 'publish', 'open', 'open', '', 'ibos-hrm', '', '', '2021-08-02 09:04:14', '2021-08-02 09:04:14', '', 0, 'http://localhost/ibos/?p=47', 0, 'post', '', 0),
(48, 1, '2021-07-27 11:05:52', '2021-07-27 11:05:52', '<!-- wp:paragraph -->\n<p>Take care of the details of your Human Resources with an integrated Human Resource Management(HRM) software that keeps updating real-time, so you don’t need people to oversee people.</p>\n<!-- /wp:paragraph -->', 'iBOS HRM', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2021-07-27 11:05:52', '2021-07-27 11:05:52', '', 47, 'http://localhost/ibos/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-07-27 11:33:55', '2021-07-27 11:33:55', '<!-- wp:paragraph -->\n<p>Our Web Developers work for delivering the client simplistic yet engaging and lucrative websites from scratch.</p>\n<!-- /wp:paragraph -->', 'Web Development', '', 'publish', 'open', 'open', '', 'web-development', '', '', '2021-07-27 11:33:55', '2021-07-27 11:33:55', '', 0, 'http://localhost/ibos/?p=49', 0, 'post', '', 0),
(50, 1, '2021-07-27 11:33:48', '2021-07-27 11:33:48', '', 'desktop_windows', '', 'inherit', 'open', 'closed', '', 'desktop_windows', '', '', '2021-07-27 11:33:48', '2021-07-27 11:33:48', '', 49, 'http://localhost/ibos/wp-content/uploads/2021/07/desktop_windows.svg', 0, 'attachment', 'image/svg+xml', 0),
(51, 1, '2021-07-27 11:33:55', '2021-07-27 11:33:55', '<!-- wp:paragraph -->\n<p>Our Web Developers work for delivering the client simplistic yet engaging and lucrative websites from scratch.</p>\n<!-- /wp:paragraph -->', 'Web Development', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-07-27 11:33:55', '2021-07-27 11:33:55', '', 49, 'http://localhost/ibos/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-07-27 11:35:35', '2021-07-27 11:35:35', '<!-- wp:paragraph -->\n<p>We develop mobile apps with an out of box thinking, by prioritizing efficiency and focusing on market strategy but without compromising your need.</p>\n<!-- /wp:paragraph -->', 'Mobile App Development', '', 'publish', 'open', 'open', '', 'mobile-app-development', '', '', '2021-07-27 11:35:35', '2021-07-27 11:35:35', '', 0, 'http://localhost/ibos/?p=52', 0, 'post', '', 0),
(53, 1, '2021-07-27 11:35:31', '2021-07-27 11:35:31', '', 'phone_iphone', '', 'inherit', 'open', 'closed', '', 'phone_iphone', '', '', '2021-07-27 11:35:31', '2021-07-27 11:35:31', '', 52, 'http://localhost/ibos/wp-content/uploads/2021/07/phone_iphone.svg', 0, 'attachment', 'image/svg+xml', 0),
(54, 1, '2021-07-27 11:35:35', '2021-07-27 11:35:35', '<!-- wp:paragraph -->\n<p>We develop mobile apps with an out of box thinking, by prioritizing efficiency and focusing on market strategy but without compromising your need.</p>\n<!-- /wp:paragraph -->', 'Mobile App Development', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-07-27 11:35:35', '2021-07-27 11:35:35', '', 52, 'http://localhost/ibos/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-07-27 11:36:58', '2021-07-27 11:36:58', '<!-- wp:paragraph -->\n<p>If you’re looking for a door to knock for custom business solutions, theme design, and development, plugin solutions, then we’re here to get you all of it.</p>\n<!-- /wp:paragraph -->', 'Custom Business Solution', '', 'publish', 'open', 'open', '', 'custom-business-solution', '', '', '2021-07-27 11:36:58', '2021-07-27 11:36:58', '', 0, 'http://localhost/ibos/?p=55', 0, 'post', '', 0),
(56, 1, '2021-07-27 11:36:31', '2021-07-27 11:36:31', '', 'shopping_cart', '', 'inherit', 'open', 'closed', '', 'shopping_cart', '', '', '2021-07-27 11:36:31', '2021-07-27 11:36:31', '', 55, 'http://localhost/ibos/wp-content/uploads/2021/07/shopping_cart.svg', 0, 'attachment', 'image/svg+xml', 0),
(57, 1, '2021-07-27 11:36:53', '2021-07-27 11:36:53', '', 'business_center', '', 'inherit', 'open', 'closed', '', 'business_center', '', '', '2021-07-27 11:36:53', '2021-07-27 11:36:53', '', 55, 'http://localhost/ibos/wp-content/uploads/2021/07/business_center.svg', 0, 'attachment', 'image/svg+xml', 0),
(58, 1, '2021-07-27 11:36:58', '2021-07-27 11:36:58', '<!-- wp:paragraph -->\n<p>If you’re looking for a door to knock for custom business solutions, theme design, and development, plugin solutions, then we’re here to get you all of it.</p>\n<!-- /wp:paragraph -->', 'Custom Business Solution', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-07-27 11:36:58', '2021-07-27 11:36:58', '', 55, 'http://localhost/ibos/?p=58', 0, 'revision', '', 0),
(59, 1, '2021-07-27 11:37:37', '2021-07-27 11:37:37', '<!-- wp:paragraph -->\n<p>Bring your store online with the e-commerce solutions delivered by our expert team. We develop well-structured workflows ensuring higher traffic. So that your visitors turn into customers without compromised data security.</p>\n<!-- /wp:paragraph -->', 'E-Commerce Solution', '', 'publish', 'open', 'open', '', 'e-commerce-solution', '', '', '2021-07-27 11:37:37', '2021-07-27 11:37:37', '', 0, 'http://localhost/ibos/?p=59', 0, 'post', '', 0),
(60, 1, '2021-07-27 11:37:37', '2021-07-27 11:37:37', '<!-- wp:paragraph -->\n<p>Bring your store online with the e-commerce solutions delivered by our expert team. We develop well-structured workflows ensuring higher traffic. So that your visitors turn into customers without compromised data security.</p>\n<!-- /wp:paragraph -->', 'E-Commerce Solution', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-07-27 11:37:37', '2021-07-27 11:37:37', '', 59, 'http://localhost/ibos/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-07-27 11:38:27', '2021-07-27 11:38:27', '<!-- wp:paragraph -->\n<p>Our UI/UX Designers know how to bring your vision to life through appealing visuality, sensible information architecture, convenient usability, wireframing, interactive design.</p>\n<!-- /wp:paragraph -->', 'UI/UX Design', '', 'publish', 'open', 'open', '', 'ui-ux-design', '', '', '2021-07-27 11:38:27', '2021-07-27 11:38:27', '', 0, 'http://localhost/ibos/?p=61', 0, 'post', '', 0),
(62, 1, '2021-07-27 11:38:22', '2021-07-27 11:38:22', '', 'design_services', '', 'inherit', 'open', 'closed', '', 'design_services', '', '', '2021-07-27 11:38:22', '2021-07-27 11:38:22', '', 61, 'http://localhost/ibos/wp-content/uploads/2021/07/design_services.svg', 0, 'attachment', 'image/svg+xml', 0),
(63, 1, '2021-07-27 11:38:27', '2021-07-27 11:38:27', '<!-- wp:paragraph -->\n<p>Our UI/UX Designers know how to bring your vision to life through appealing visuality, sensible information architecture, convenient usability, wireframing, interactive design.</p>\n<!-- /wp:paragraph -->', 'UI/UX Design', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2021-07-27 11:38:27', '2021-07-27 11:38:27', '', 61, 'http://localhost/ibos/?p=63', 0, 'revision', '', 0),
(64, 1, '2021-07-27 11:39:19', '2021-07-27 11:39:19', '<!-- wp:paragraph -->\n<p>Your objective, your need, your way and we’ll do the rest on the customization part whether it’s Odoo, salesforce, or anything of our own. </p>\n<!-- /wp:paragraph -->', 'Custom Software Development', '', 'publish', 'open', 'open', '', 'custom-software-development', '', '', '2021-07-27 11:39:19', '2021-07-27 11:39:19', '', 0, 'http://localhost/ibos/?p=64', 0, 'post', '', 0),
(65, 1, '2021-07-27 11:39:15', '2021-07-27 11:39:15', '', 'layers', '', 'inherit', 'open', 'closed', '', 'layers', '', '', '2021-07-27 11:39:15', '2021-07-27 11:39:15', '', 64, 'http://localhost/ibos/wp-content/uploads/2021/07/layers.svg', 0, 'attachment', 'image/svg+xml', 0),
(66, 1, '2021-07-27 11:39:19', '2021-07-27 11:39:19', '<!-- wp:paragraph -->\n<p>Your objective, your need, your way and we’ll do the rest on the customization part whether it’s Odoo, salesforce, or anything of our own. </p>\n<!-- /wp:paragraph -->', 'Custom Software Development', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-07-27 11:39:19', '2021-07-27 11:39:19', '', 64, 'http://localhost/ibos/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-07-27 11:52:58', '2021-07-27 11:52:58', '<span style=\"font-weight: 400;\">Born Out of One of The Largest Groups of Companies in The Country, we believe that if over 35,000 users of Akij can trust us for the past 12 years and run all 64 of their companies on our software, you can too. Clearly, we’re well-informed of the current industry trends and are capable of providing the best support, error-free solutions, transparency, consistency.</span>', 'Born Out of One of The Largest Groups of Companies in The Country', '', 'publish', 'closed', 'closed', '', 'born-out-of-one-of-the-largest-groups-of-companies-in-the-country', '', '', '2021-07-27 11:55:11', '2021-07-27 11:55:11', '', 0, 'http://localhost/ibos/?post_type=a_concern_of_akij&#038;p=67', 0, 'a_concern_of_akij', '', 0),
(68, 1, '2021-07-27 11:52:24', '2021-07-27 11:52:24', '', 'akij-logo', '', 'inherit', 'open', 'closed', '', 'akij-logo', '', '', '2021-07-27 11:52:24', '2021-07-27 11:52:24', '', 67, 'http://localhost/ibos/wp-content/uploads/2021/07/akij-logo.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2021-07-27 11:55:00', '2021-07-27 11:55:00', '<span style=\"font-weight: 400;\">Born Out of One of The Largest Groups of Companies in The Country, we believe that if over 35,000 users of Akij can trust us for the past 12 years and run all 64 of their companies on our software, you can too. Clearly, we’re well-informed of the current industry trends and are capable of providing the best support, error-free solutions, transparency, consistency.</span>', 'Born Out of One of The Largest Groups of Companies in The Country', '', 'inherit', 'closed', 'closed', '', '67-autosave-v1', '', '', '2021-07-27 11:55:00', '2021-07-27 11:55:00', '', 67, 'http://localhost/ibos/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-07-27 12:03:36', '2021-07-27 12:03:36', '', 'product-icon', '', 'inherit', 'open', 'closed', '', 'product-icon', '', '', '2021-07-27 12:03:36', '2021-07-27 12:03:36', '', 47, 'http://localhost/ibos/wp-content/uploads/2021/07/product-icon.svg', 0, 'attachment', 'image/svg+xml', 0),
(71, 1, '2021-07-27 12:31:54', '2021-07-27 12:31:54', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-lorem-ipsum-has-been-the-industrys-standard-dummy-text-ever-since-the-1500s', '', '', '2021-07-27 12:31:54', '2021-07-27 12:31:54', '', 0, 'http://localhost/ibos/?post_type=customers_stories&#038;p=71', 0, 'customers_stories', '', 0),
(72, 1, '2021-07-27 12:32:17', '2021-07-27 12:32:17', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry', '', '', '2021-07-27 12:32:17', '2021-07-27 12:32:17', '', 0, 'http://localhost/ibos/?post_type=customers_stories&#038;p=72', 0, 'customers_stories', '', 0),
(73, 1, '2021-07-28 05:51:20', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-07-28 05:51:20', '2021-07-28 05:51:20', '', 0, 'http://localhost/ibos/?post_type=main_slider&#038;p=73', 0, 'main_slider', '', 0),
(74, 1, '2021-07-28 05:53:50', '0000-00-00 00:00:00', '', 'jesy', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-07-28 05:53:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2021-07-28 07:36:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-07-28 07:36:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=75', 1, 'nav_menu_item', '', 0),
(90, 1, '2021-07-28 10:20:08', '2021-07-28 10:20:08', '', 'all product logo _Accounting', '', 'inherit', 'open', 'closed', '', 'all-product-logo-_accounting', '', '', '2021-07-28 10:20:08', '2021-07-28 10:20:08', '', 45, 'http://localhost/ibos/wp-content/uploads/2021/07/all-product-logo-_Accounting.svg', 0, 'attachment', 'image/svg+xml', 0),
(91, 1, '2021-07-28 10:21:07', '2021-07-28 10:21:07', '', 'all product logo _RTM', '', 'inherit', 'open', 'closed', '', 'all-product-logo-_rtm', '', '', '2021-07-28 10:21:07', '2021-07-28 10:21:07', '', 43, 'http://localhost/ibos/wp-content/uploads/2021/07/all-product-logo-_RTM.svg', 0, 'attachment', 'image/svg+xml', 0),
(92, 1, '2021-07-28 10:21:48', '2021-07-28 10:21:48', '', 'all product logo _SME', '', 'inherit', 'open', 'closed', '', 'all-product-logo-_sme', '', '', '2021-07-28 10:21:48', '2021-07-28 10:21:48', '', 41, 'http://localhost/ibos/wp-content/uploads/2021/07/all-product-logo-_SME.svg', 0, 'attachment', 'image/svg+xml', 0),
(93, 1, '2021-07-29 06:21:30', '2021-07-29 06:21:30', '<!-- wp:contact-form-7/contact-form-selector {\"id\":99,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"99\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-07-29 07:35:50', '2021-07-29 07:35:50', '', 0, 'http://localhost/ibos/?page_id=93', 0, 'page', '', 0),
(98, 1, '2021-07-29 06:21:30', '2021-07-29 06:21:30', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2021-07-29 06:21:30', '2021-07-29 06:21:30', '', 93, 'http://localhost/ibos/?p=98', 0, 'revision', '', 0),
(99, 1, '2021-07-29 07:34:03', '2021-07-29 07:34:03', '<div class=\"row\">\r\n             <div class=\"col-12\">\r\n                    <div class=\"form-group\">\r\n                             <label>Full name</label>\r\n                        [text* text-817 class:form-control class:contact-info-input]\r\n                       </div>\r\n                  </div>\r\n                   <div class=\"col-12\">\r\n                      <div class=\"form-group\">\r\n                                <label>Email</label>\r\n                         [email* email-718 class:form-control class:form-control class:contact-info-input]\r\n                       </div>\r\n                     </div>\r\n                        <div class=\"col-12\">\r\n                                 <div class=\"form-group\">\r\n                                     <label>Share Your Problem Here!</label>\r\n                   [textarea* textarea-995 class:form-control class:contact-info-textarea class:scrollbar-remove]\r\n                                         </div>\r\n                                    </div>\r\n                               <div class=\"col-12\">\r\n                    [submit class:btn class:btn-submit]\r\n                                </div>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <farhansakibjesy@gmail.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <farhansakibjesy@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-07-29 08:04:47', '2021-07-29 08:04:47', '', 0, 'http://localhost/ibos/?post_type=wpcf7_contact_form&#038;p=99', 0, 'wpcf7_contact_form', '', 0),
(100, 1, '2021-07-29 07:35:50', '2021-07-29 07:35:50', '<!-- wp:contact-form-7/contact-form-selector {\"id\":99,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"99\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2021-07-29 07:35:50', '2021-07-29 07:35:50', '', 93, 'http://localhost/ibos/?p=100', 0, 'revision', '', 0),
(101, 1, '2021-07-29 10:36:46', '2021-07-29 10:36:46', '<!-- wp:paragraph -->\n<p> S is maintaining Covid-19 rules and regulations. </p>\n<!-- /wp:paragraph -->', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'publish', 'open', 'open', '', 'ibos-is-maintaining-covid-19-rules-and-regulations', '', '', '2021-07-29 11:23:20', '2021-07-29 11:23:20', '', 0, 'http://localhost/ibos/?p=101', 0, 'post', '', 0),
(102, 1, '2021-07-29 10:36:42', '2021-07-29 10:36:42', '', '01', '', 'inherit', 'open', 'closed', '', '01', '', '', '2021-07-29 10:36:42', '2021-07-29 10:36:42', '', 101, 'http://localhost/ibos/wp-content/uploads/2021/07/01.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2021-07-29 10:36:46', '2021-07-29 10:36:46', '', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2021-07-29 10:36:46', '2021-07-29 10:36:46', '', 101, 'http://localhost/ibos/?p=103', 0, 'revision', '', 0),
(104, 1, '2021-07-29 10:37:23', '2021-07-29 10:37:23', '<!-- wp:paragraph -->\n<p> S is maintaining Covid-19 rules and regulations. </p>\n<!-- /wp:paragraph -->', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'publish', 'open', 'open', '', 'ibos-is-maintaining-covid-19-rules-and-regulations-2', '', '', '2021-07-29 11:23:14', '2021-07-29 11:23:14', '', 0, 'http://localhost/ibos/?p=104', 0, 'post', '', 0),
(105, 1, '2021-07-29 10:37:20', '2021-07-29 10:37:20', '', '02', '', 'inherit', 'open', 'closed', '', '02', '', '', '2021-07-29 10:37:20', '2021-07-29 10:37:20', '', 104, 'http://localhost/ibos/wp-content/uploads/2021/07/02.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2021-07-29 10:37:23', '2021-07-29 10:37:23', '', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2021-07-29 10:37:23', '2021-07-29 10:37:23', '', 104, 'http://localhost/ibos/?p=106', 0, 'revision', '', 0),
(107, 1, '2021-07-29 10:37:39', '2021-07-29 10:37:39', '<!-- wp:paragraph -->\n<p> S is maintaining Covid-19 rules and regulations. </p>\n<!-- /wp:paragraph -->', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'publish', 'open', 'open', '', 'ibos-is-maintaining-covid-19-rules-and-regulations-3', '', '', '2021-07-29 11:23:07', '2021-07-29 11:23:07', '', 0, 'http://localhost/ibos/?p=107', 0, 'post', '', 0),
(108, 1, '2021-07-29 10:37:36', '2021-07-29 10:37:36', '', '03', '', 'inherit', 'open', 'closed', '', '03', '', '', '2021-07-29 10:37:36', '2021-07-29 10:37:36', '', 107, 'http://localhost/ibos/wp-content/uploads/2021/07/03.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2021-07-29 10:37:39', '2021-07-29 10:37:39', '', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-07-29 10:37:39', '2021-07-29 10:37:39', '', 107, 'http://localhost/ibos/?p=109', 0, 'revision', '', 0),
(110, 1, '2021-07-29 10:38:01', '2021-07-29 10:38:01', '<!-- wp:paragraph -->\n<p>iBOS is maintaining Covid-19 rules and regulations.</p>\n<!-- /wp:paragraph -->', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'publish', 'open', 'open', '', 'ibos-is-maintaining-covid-19-rules-and-regulations-4', '', '', '2021-07-29 11:22:11', '2021-07-29 11:22:11', '', 0, 'http://localhost/ibos/?p=110', 0, 'post', '', 0),
(111, 1, '2021-07-29 10:37:58', '2021-07-29 10:37:58', '', '01', '', 'inherit', 'open', 'closed', '', '01-2', '', '', '2021-07-29 10:37:58', '2021-07-29 10:37:58', '', 110, 'http://localhost/ibos/wp-content/uploads/2021/07/01-1.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2021-07-29 10:38:01', '2021-07-29 10:38:01', '', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2021-07-29 10:38:01', '2021-07-29 10:38:01', '', 110, 'http://localhost/ibos/?p=112', 0, 'revision', '', 0),
(113, 1, '2021-07-29 11:03:57', '2021-07-29 11:03:57', '', 'all product logo -07', '', 'inherit', 'open', 'closed', '', 'all-product-logo-07', '', '', '2021-07-29 11:03:57', '2021-07-29 11:03:57', '', 47, 'http://localhost/ibos/wp-content/uploads/2021/07/all-product-logo-07.svg', 0, 'attachment', 'image/svg+xml', 0),
(114, 1, '2021-07-29 11:22:11', '2021-07-29 11:22:11', '<!-- wp:paragraph -->\n<p>iBOS is maintaining Covid-19 rules and regulations.</p>\n<!-- /wp:paragraph -->', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2021-07-29 11:22:11', '2021-07-29 11:22:11', '', 110, 'http://localhost/ibos/?p=114', 0, 'revision', '', 0),
(115, 1, '2021-07-29 11:23:07', '2021-07-29 11:23:07', '<!-- wp:paragraph -->\n<p> S is maintaining Covid-19 rules and regulations. </p>\n<!-- /wp:paragraph -->', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-07-29 11:23:07', '2021-07-29 11:23:07', '', 107, 'http://localhost/ibos/?p=115', 0, 'revision', '', 0),
(116, 1, '2021-07-29 11:23:14', '2021-07-29 11:23:14', '<!-- wp:paragraph -->\n<p> S is maintaining Covid-19 rules and regulations. </p>\n<!-- /wp:paragraph -->', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2021-07-29 11:23:14', '2021-07-29 11:23:14', '', 104, 'http://localhost/ibos/?p=116', 0, 'revision', '', 0),
(117, 1, '2021-07-29 11:23:20', '2021-07-29 11:23:20', '<!-- wp:paragraph -->\n<p> S is maintaining Covid-19 rules and regulations. </p>\n<!-- /wp:paragraph -->', 'iBOS is maintaining Covid-19 rules and regulations.', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2021-07-29 11:23:20', '2021-07-29 11:23:20', '', 101, 'http://localhost/ibos/?p=117', 0, 'revision', '', 0),
(118, 1, '2021-07-29 11:28:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-07-29 11:28:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=118', 1, 'nav_menu_item', '', 0),
(119, 1, '2021-07-29 11:28:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-07-29 11:28:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=119', 1, 'nav_menu_item', '', 0),
(120, 1, '2021-07-29 11:28:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-07-29 11:28:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=120', 1, 'nav_menu_item', '', 0),
(121, 1, '2021-07-29 11:28:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-07-29 11:28:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=121', 1, 'nav_menu_item', '', 0),
(122, 1, '2021-07-29 11:28:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-07-29 11:28:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=122', 1, 'nav_menu_item', '', 0),
(123, 1, '2021-08-05 06:57:32', '2021-07-29 11:29:30', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=123', 4, 'nav_menu_item', '', 0),
(124, 1, '2021-08-05 06:57:32', '2021-07-29 11:29:30', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=124', 5, 'nav_menu_item', '', 0),
(125, 1, '2021-08-05 06:57:32', '2021-07-29 11:29:30', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=125', 6, 'nav_menu_item', '', 0),
(126, 1, '2021-08-05 06:57:32', '2021-07-29 11:29:30', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=126', 7, 'nav_menu_item', '', 0),
(127, 1, '2021-08-05 06:57:32', '2021-07-29 11:29:30', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=127', 3, 'nav_menu_item', '', 0),
(128, 1, '2021-08-05 06:57:32', '2021-07-29 11:31:38', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=128', 9, 'nav_menu_item', '', 0),
(129, 1, '2021-08-05 06:57:32', '2021-07-29 11:31:38', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=129', 10, 'nav_menu_item', '', 0),
(130, 1, '2021-08-05 06:57:32', '2021-07-29 11:31:38', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=130', 11, 'nav_menu_item', '', 0),
(131, 1, '2021-08-05 06:57:32', '2021-07-29 11:31:38', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=131', 12, 'nav_menu_item', '', 0),
(132, 1, '2021-08-05 06:57:32', '2021-07-29 11:31:38', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=132', 13, 'nav_menu_item', '', 0),
(133, 1, '2021-08-05 06:57:32', '2021-07-29 11:31:38', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=133', 14, 'nav_menu_item', '', 0),
(134, 1, '2021-08-05 06:57:01', '2021-07-29 11:34:30', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2021-08-05 06:57:01', '2021-08-05 06:57:01', '', 0, 'http://localhost/ibos/?p=134', 1, 'nav_menu_item', '', 0),
(135, 1, '2021-08-05 06:57:01', '2021-07-29 11:34:30', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2021-08-05 06:57:01', '2021-08-05 06:57:01', '', 0, 'http://localhost/ibos/?p=135', 2, 'nav_menu_item', '', 0),
(136, 1, '2021-08-05 06:57:01', '2021-07-29 11:34:30', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2021-08-05 06:57:01', '2021-08-05 06:57:01', '', 0, 'http://localhost/ibos/?p=136', 3, 'nav_menu_item', '', 0),
(137, 1, '2021-08-05 06:57:01', '2021-07-29 11:34:30', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2021-08-05 06:57:01', '2021-08-05 06:57:01', '', 0, 'http://localhost/ibos/?p=137', 4, 'nav_menu_item', '', 0),
(138, 1, '2021-08-05 06:57:01', '2021-07-29 11:34:30', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2021-08-05 06:57:01', '2021-08-05 06:57:01', '', 0, 'http://localhost/ibos/?p=138', 5, 'nav_menu_item', '', 0),
(139, 1, '2021-08-05 06:57:01', '2021-07-29 11:34:30', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2021-08-05 06:57:01', '2021-08-05 06:57:01', '', 0, 'http://localhost/ibos/?p=139', 6, 'nav_menu_item', '', 0),
(140, 1, '2021-08-05 06:57:09', '2021-07-29 11:37:44', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2021-08-05 06:57:09', '2021-08-05 06:57:09', '', 0, 'http://localhost/ibos/?p=140', 1, 'nav_menu_item', '', 0),
(141, 1, '2021-08-05 06:57:09', '2021-07-29 11:37:44', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2021-08-05 06:57:09', '2021-08-05 06:57:09', '', 0, 'http://localhost/ibos/?p=141', 2, 'nav_menu_item', '', 0),
(142, 1, '2021-08-05 06:57:09', '2021-07-29 11:37:44', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2021-08-05 06:57:09', '2021-08-05 06:57:09', '', 0, 'http://localhost/ibos/?p=142', 3, 'nav_menu_item', '', 0),
(143, 1, '2021-08-05 06:57:09', '2021-07-29 11:37:44', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2021-08-05 06:57:09', '2021-08-05 06:57:09', '', 0, 'http://localhost/ibos/?p=143', 4, 'nav_menu_item', '', 0),
(144, 1, '2021-08-05 06:57:09', '2021-07-29 11:37:44', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2021-08-05 06:57:09', '2021-08-05 06:57:09', '', 0, 'http://localhost/ibos/?p=144', 5, 'nav_menu_item', '', 0),
(147, 1, '2021-07-31 07:18:32', '2021-07-31 07:18:32', '<!-- wp:paragraph -->\n<p>We’re living in an era where every nation and each of its organizations are entirely dependent on financial strength and flexibility. With the intention of easing up related processing, we\'ve come up with the finest fintech solutions that are capable of ensuring maximum clarity to the financial processing and flow along with zero chances of error or flaws.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Each of our solutions is specially designed to ensure improvement in operational efficiency and customer satisfaction. But what the prime motive of all of them is automating business processes in a way the user won\'t have to think twice about the word \'manual\'. And what to say about their ability to detect fraudulent activities? You might have to count that out of the book once and for all.</p>\n<!-- /wp:paragraph -->', 'Level up your fintech business with a leverage of easy and smart software.', '', 'publish', 'open', 'open', '', 'automate-healthcare-and-expand-your-reach-with-digital', '', '', '2021-07-31 08:49:24', '2021-07-31 08:49:24', '', 0, 'http://localhost/ibos/?p=147', 0, 'post', '', 0),
(148, 1, '2021-07-31 07:18:28', '2021-07-31 07:18:28', '', 'background-0', '', 'inherit', 'open', 'closed', '', 'background-0', '', '', '2021-07-31 07:18:28', '2021-07-31 07:18:28', '', 147, 'http://localhost/ibos/wp-content/uploads/2021/07/background-0.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(149, 1, '2021-07-31 07:18:32', '2021-07-31 07:18:32', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<!-- /wp:paragraph -->', 'Automate healthcare and expand your reach with digital', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2021-07-31 07:18:32', '2021-07-31 07:18:32', '', 147, 'http://localhost/ibos/?p=149', 0, 'revision', '', 0),
(151, 1, '2021-07-31 08:49:24', '2021-07-31 08:49:24', '<!-- wp:paragraph -->\n<p>We’re living in an era where every nation and each of its organizations are entirely dependent on financial strength and flexibility. With the intention of easing up related processing, we\'ve come up with the finest fintech solutions that are capable of ensuring maximum clarity to the financial processing and flow along with zero chances of error or flaws.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Each of our solutions is specially designed to ensure improvement in operational efficiency and customer satisfaction. But what the prime motive of all of them is automating business processes in a way the user won\'t have to think twice about the word \'manual\'. And what to say about their ability to detect fraudulent activities? You might have to count that out of the book once and for all.</p>\n<!-- /wp:paragraph -->', 'Level up your fintech business with a leverage of easy and smart software.', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2021-07-31 08:49:24', '2021-07-31 08:49:24', '', 147, 'http://localhost/ibos/?p=151', 0, 'revision', '', 0),
(152, 1, '2021-07-31 08:52:00', '2021-07-31 08:52:00', '<!-- wp:paragraph -->\n<p>Healthcare industries are constantly expanding and growing. With the ever-increasing volume, it is leaning more towards automation every day in order to enhance efficiency, especially after the massive hit of the global pandemic. Programs and modules of the software play a major role to uplift caregiving since it is created with a view to adding value to the healthcare industry.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Be it off-the-shelf or tailor made, all the software is targeted towards the needs of the customer. It can significantly improve the patient experience as well as maintaining harmony from the authority’s end. Keeping up with the schedule, records, data, prescribing &amp; ordering drugs are more convenient with software. It streamlines information and contributes to facilitating the overall hospital management and the healthcare industry.</p>\n<!-- /wp:paragraph -->', 'Stay up to date with the revolution in the medical management sector with the highly efficient healthcare system.', '', 'publish', 'open', 'open', '', 'stay-up-to-date-with-the-revolution-in-the-medical-management-sector-with-the-highly-efficient-healthcare-system', '', '', '2021-07-31 08:52:00', '2021-07-31 08:52:00', '', 0, 'http://localhost/ibos/?p=152', 0, 'post', '', 0),
(153, 1, '2021-07-31 08:51:56', '2021-07-31 08:51:56', '', 'background-1', '', 'inherit', 'open', 'closed', '', 'background-1', '', '', '2021-07-31 08:51:56', '2021-07-31 08:51:56', '', 152, 'http://localhost/ibos/wp-content/uploads/2021/07/background-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2021-07-31 08:52:00', '2021-07-31 08:52:00', '<!-- wp:paragraph -->\n<p>Healthcare industries are constantly expanding and growing. With the ever-increasing volume, it is leaning more towards automation every day in order to enhance efficiency, especially after the massive hit of the global pandemic. Programs and modules of the software play a major role to uplift caregiving since it is created with a view to adding value to the healthcare industry.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Be it off-the-shelf or tailor made, all the software is targeted towards the needs of the customer. It can significantly improve the patient experience as well as maintaining harmony from the authority’s end. Keeping up with the schedule, records, data, prescribing &amp; ordering drugs are more convenient with software. It streamlines information and contributes to facilitating the overall hospital management and the healthcare industry.</p>\n<!-- /wp:paragraph -->', 'Stay up to date with the revolution in the medical management sector with the highly efficient healthcare system.', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2021-07-31 08:52:00', '2021-07-31 08:52:00', '', 152, 'http://localhost/ibos/?p=154', 0, 'revision', '', 0),
(156, 1, '2021-07-31 08:55:13', '2021-07-31 08:55:13', '<!-- wp:paragraph -->\n<p>The flourishing automotive industry is giving a clear sign that it\'s growing at a pace faster than we all could\'ve imagined. iBOS also couldn\'t help noticing it and thought of giving this industry a touch of automation and making it reach a whole other level of efficiency. With our solutions not only will an automotive organization turn its overall system into a flawless one but will also be able to keep track of its every shipment and billing detail, top to bottom.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Besides, it\'ll be easy as pie to save the details of all their customers in a secured client database. The same goes for their accounting system which will be free of error with the touch of our simplistic yet highly efficient software.<strong>&nbsp;</strong></p>\n<!-- /wp:paragraph -->', 'Digitize your automotive enterprise with intuitive and user-friendly software', '', 'publish', 'open', 'open', '', 'digitize-your-automotive-enterprise-with-intuitive-and-user-friendly-software', '', '', '2021-07-31 08:55:13', '2021-07-31 08:55:13', '', 0, 'http://localhost/ibos/?p=156', 0, 'post', '', 0),
(157, 1, '2021-07-31 08:55:09', '2021-07-31 08:55:09', '', 'background-2', '', 'inherit', 'open', 'closed', '', 'background-2', '', '', '2021-07-31 08:55:09', '2021-07-31 08:55:09', '', 156, 'http://localhost/ibos/wp-content/uploads/2021/07/background-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2021-07-31 08:55:13', '2021-07-31 08:55:13', '<!-- wp:paragraph -->\n<p>The flourishing automotive industry is giving a clear sign that it\'s growing at a pace faster than we all could\'ve imagined. iBOS also couldn\'t help noticing it and thought of giving this industry a touch of automation and making it reach a whole other level of efficiency. With our solutions not only will an automotive organization turn its overall system into a flawless one but will also be able to keep track of its every shipment and billing detail, top to bottom.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Besides, it\'ll be easy as pie to save the details of all their customers in a secured client database. The same goes for their accounting system which will be free of error with the touch of our simplistic yet highly efficient software.<strong>&nbsp;</strong></p>\n<!-- /wp:paragraph -->', 'Digitize your automotive enterprise with intuitive and user-friendly software', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2021-07-31 08:55:13', '2021-07-31 08:55:13', '', 156, 'http://localhost/ibos/?p=158', 0, 'revision', '', 0),
(160, 1, '2021-07-31 08:58:55', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>There\'s no way to deny that the RMG sector has been contributing significantly to the country\'s economy. But sadly, that one sector is still lagging behind in the race of automation and systematic advancements. We, team iBOS, have decided to work as a drop to that beat and bring in the sector under the light of automation with our innovative solution.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our all-in-all software and solutions are not only made to boost up its manufacturing pace on a faster level with systematic processing but will also take care of the inventory, Human Resource Management, Accounts, Supply chain management in a similar manner. Our solutions bring in the whole operational cycle under an organized structure where accuracy and efficiency reach their maximum level.</p>\n<!-- /wp:paragraph -->', 'Make an effective investment today and increase your revenue and cut down on expenses with cost-effective solutions.', '', 'draft', 'open', 'open', '', '', '', '', '2021-07-31 08:58:55', '2021-07-31 08:58:55', '', 0, 'http://localhost/ibos/?p=160', 0, 'post', '', 0),
(161, 1, '2021-07-31 10:41:42', '2021-07-31 10:41:42', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-07-31 10:41:42', '2021-07-31 10:41:42', '', 0, 'http://localhost/ibos/?page_id=161', 0, 'page', '', 0),
(164, 1, '2021-08-05 06:57:32', '2021-07-31 10:41:42', '', 'ABOUT', '', 'publish', 'closed', 'closed', '', '164', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/164/', 19, 'nav_menu_item', '', 0),
(165, 1, '2021-07-31 10:41:42', '2021-07-31 10:41:42', '', 'About', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2021-07-31 10:41:42', '2021-07-31 10:41:42', '', 161, 'http://localhost/ibos/?p=165', 0, 'revision', '', 0),
(166, 1, '2021-07-31 10:42:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-07-31 10:42:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=166', 1, 'nav_menu_item', '', 0),
(167, 1, '2021-07-31 11:24:40', '2021-07-31 11:24:40', '', 'BLOG', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-07-31 11:24:40', '2021-07-31 11:24:40', '', 0, 'http://localhost/ibos/?page_id=167', 0, 'page', '', 0),
(171, 1, '2021-07-31 11:24:40', '2021-07-31 11:24:40', '', 'BLOG', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2021-07-31 11:24:40', '2021-07-31 11:24:40', '', 167, 'http://localhost/ibos/?p=171', 0, 'revision', '', 0),
(172, 9, '2021-07-31 12:24:05', '2021-07-31 12:24:05', '', 'Auto Draft', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2021-07-31 12:24:05', '2021-07-31 12:24:05', '', 0, 'http://localhost/ibos/?p=172', 0, 'post', '', 0),
(173, 1, '2021-07-31 12:24:05', '2021-07-31 12:24:05', '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2021-07-31 12:24:05', '2021-07-31 12:24:05', '', 172, 'http://localhost/ibos/?p=173', 0, 'revision', '', 0),
(174, 1, '2021-08-01 07:04:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-01 07:04:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=174', 0, 'post', '', 0),
(175, 1, '2021-08-02 09:04:10', '2021-08-02 09:04:10', '', 'erp', '', 'inherit', 'open', 'closed', '', 'erp', '', '', '2021-08-02 09:04:10', '2021-08-02 09:04:10', '', 47, 'http://localhost/ibos/wp-content/uploads/2021/07/erp.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2021-08-02 09:11:58', '2021-08-02 09:11:58', '', '04', '', 'inherit', 'open', 'closed', '', '04', '', '', '2021-08-02 09:11:58', '2021-08-02 09:11:58', '', 45, 'http://localhost/ibos/wp-content/uploads/2021/07/04.png', 0, 'attachment', 'image/png', 0),
(177, 1, '2021-08-02 09:14:12', '2021-08-02 09:14:12', '', 'rtm', '', 'inherit', 'open', 'closed', '', 'rtm', '', '', '2021-08-02 09:14:12', '2021-08-02 09:14:12', '', 43, 'http://localhost/ibos/wp-content/uploads/2021/07/rtm.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2021-08-02 09:15:50', '2021-08-02 09:15:50', '', 'sme', '', 'inherit', 'open', 'closed', '', 'sme', '', '', '2021-08-02 09:15:50', '2021-08-02 09:15:50', '', 41, 'http://localhost/ibos/wp-content/uploads/2021/07/sme.png', 0, 'attachment', 'image/png', 0),
(179, 1, '2021-08-02 09:17:37', '2021-08-02 09:17:37', '', 'erp', '', 'inherit', 'open', 'closed', '', 'erp-2', '', '', '2021-08-02 09:17:37', '2021-08-02 09:17:37', '', 35, 'http://localhost/ibos/wp-content/uploads/2021/07/erp-1.png', 0, 'attachment', 'image/png', 0),
(180, 1, '2021-08-03 05:12:12', '2021-08-03 05:12:12', '', 'Be an extraordinary performer not just a workaholic.', '', 'publish', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic', '', '', '2021-08-03 05:12:43', '2021-08-03 05:12:43', '', 0, 'http://localhost/ibos/?p=180', 0, 'post', '', 0),
(181, 1, '2021-08-03 05:12:12', '2021-08-03 05:12:12', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2021-08-03 05:12:12', '2021-08-03 05:12:12', '', 180, 'http://localhost/ibos/?p=181', 0, 'revision', '', 0),
(182, 1, '2021-08-03 05:12:38', '2021-08-03 05:12:38', '', '01', '', 'inherit', 'open', 'closed', '', '01-3', '', '', '2021-08-03 05:12:38', '2021-08-03 05:12:38', '', 180, 'http://localhost/ibos/wp-content/uploads/2021/08/01.png', 0, 'attachment', 'image/png', 0),
(183, 1, '2021-08-03 05:13:02', '2021-08-03 05:13:02', '', 'Be an extraordinary performer not just a workaholic.', '', 'publish', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic-2', '', '', '2021-08-03 06:55:09', '2021-08-03 06:55:09', '', 0, 'http://localhost/ibos/?p=183', 0, 'post', '', 0),
(184, 1, '2021-08-03 05:12:57', '2021-08-03 05:12:57', '', '02', '', 'inherit', 'open', 'closed', '', '02-2', '', '', '2021-08-03 05:12:57', '2021-08-03 05:12:57', '', 183, 'http://localhost/ibos/wp-content/uploads/2021/08/02.png', 0, 'attachment', 'image/png', 0),
(185, 1, '2021-08-03 05:13:02', '2021-08-03 05:13:02', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2021-08-03 05:13:02', '2021-08-03 05:13:02', '', 183, 'http://localhost/ibos/?p=185', 0, 'revision', '', 0),
(186, 1, '2021-08-03 05:13:22', '2021-08-03 05:13:22', '', 'Be an extraordinary performer not just a workaholic.', '', 'publish', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic-3', '', '', '2021-08-03 05:13:24', '2021-08-03 05:13:24', '', 0, 'http://localhost/ibos/?p=186', 0, 'post', '', 0),
(187, 1, '2021-08-03 05:13:18', '2021-08-03 05:13:18', '', '02', '', 'inherit', 'open', 'closed', '', '02-3', '', '', '2021-08-03 05:13:18', '2021-08-03 05:13:18', '', 186, 'http://localhost/ibos/wp-content/uploads/2021/08/02-1.png', 0, 'attachment', 'image/png', 0),
(188, 1, '2021-08-03 05:13:22', '2021-08-03 05:13:22', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2021-08-03 05:13:22', '2021-08-03 05:13:22', '', 186, 'http://localhost/ibos/?p=188', 0, 'revision', '', 0),
(189, 1, '2021-08-03 05:13:56', '2021-08-03 05:13:56', '', 'Be an extraordinary performer not just a workaholic.', '', 'publish', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic-4', '', '', '2021-08-03 05:13:58', '2021-08-03 05:13:58', '', 0, 'http://localhost/ibos/?p=189', 0, 'post', '', 0),
(190, 1, '2021-08-03 05:13:53', '2021-08-03 05:13:53', '', '04', '', 'inherit', 'open', 'closed', '', '04-2', '', '', '2021-08-03 05:13:53', '2021-08-03 05:13:53', '', 189, 'http://localhost/ibos/wp-content/uploads/2021/08/04.png', 0, 'attachment', 'image/png', 0),
(191, 1, '2021-08-03 05:13:56', '2021-08-03 05:13:56', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2021-08-03 05:13:56', '2021-08-03 05:13:56', '', 189, 'http://localhost/ibos/?p=191', 0, 'revision', '', 0),
(192, 1, '2021-08-03 05:14:25', '2021-08-03 05:14:25', '', 'Be an extraordinary performer not just a workaholic.', '', 'publish', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic-5', '', '', '2021-08-03 05:14:27', '2021-08-03 05:14:27', '', 0, 'http://localhost/ibos/?p=192', 0, 'post', '', 0),
(193, 1, '2021-08-03 05:14:21', '2021-08-03 05:14:21', '', '05', '', 'inherit', 'open', 'closed', '', '05', '', '', '2021-08-03 05:14:21', '2021-08-03 05:14:21', '', 192, 'http://localhost/ibos/wp-content/uploads/2021/08/05.png', 0, 'attachment', 'image/png', 0),
(194, 1, '2021-08-03 05:14:25', '2021-08-03 05:14:25', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2021-08-03 05:14:25', '2021-08-03 05:14:25', '', 192, 'http://localhost/ibos/?p=194', 0, 'revision', '', 0),
(195, 1, '2021-08-03 05:14:46', '2021-08-03 05:14:46', '', 'Be an extraordinary performer not just a workaholic.', '', 'publish', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic-6', '', '', '2021-08-03 05:14:47', '2021-08-03 05:14:47', '', 0, 'http://localhost/ibos/?p=195', 0, 'post', '', 0),
(196, 1, '2021-08-03 05:14:43', '2021-08-03 05:14:43', '', '06', '', 'inherit', 'open', 'closed', '', '06', '', '', '2021-08-03 05:14:43', '2021-08-03 05:14:43', '', 195, 'http://localhost/ibos/wp-content/uploads/2021/08/06.png', 0, 'attachment', 'image/png', 0),
(197, 1, '2021-08-03 05:14:46', '2021-08-03 05:14:46', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '195-revision-v1', '', '', '2021-08-03 05:14:46', '2021-08-03 05:14:46', '', 195, 'http://localhost/ibos/?p=197', 0, 'revision', '', 0),
(199, 1, '2021-08-05 06:57:32', '2021-08-03 05:16:48', '', 'BLOG', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=199', 20, 'nav_menu_item', '', 0),
(200, 1, '2021-08-03 06:55:06', '2021-08-03 06:55:06', '', '08', '', 'inherit', 'open', 'closed', '', '08', '', '', '2021-08-03 06:55:06', '2021-08-03 06:55:06', '', 183, 'http://localhost/ibos/wp-content/uploads/2021/08/08.png', 0, 'attachment', 'image/png', 0),
(201, 1, '2021-08-03 07:02:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-03 07:02:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=201', 0, 'post', '', 0),
(202, 1, '2021-08-03 07:02:43', '2021-08-03 07:02:43', '', 'Be an extraordinary performer not just a workaholic.', '', 'publish', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic-7', '', '', '2021-08-03 07:02:44', '2021-08-03 07:02:44', '', 0, 'http://localhost/ibos/?p=202', 0, 'post', '', 0),
(203, 1, '2021-08-03 07:02:39', '2021-08-03 07:02:39', '', 'blog-big', '', 'inherit', 'open', 'closed', '', 'blog-big', '', '', '2021-08-03 07:02:39', '2021-08-03 07:02:39', '', 202, 'http://localhost/ibos/wp-content/uploads/2021/08/blog-big.png', 0, 'attachment', 'image/png', 0),
(204, 1, '2021-08-03 07:02:43', '2021-08-03 07:02:43', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2021-08-03 07:02:43', '2021-08-03 07:02:43', '', 202, 'http://localhost/ibos/?p=204', 0, 'revision', '', 0),
(205, 1, '2021-08-03 07:02:57', '2021-08-03 07:02:57', '', 'Be an extraordinary performer not just a workaholic.', '', 'publish', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic-8', '', '', '2021-08-03 07:06:23', '2021-08-03 07:06:23', '', 0, 'http://localhost/ibos/?p=205', 0, 'post', '', 0),
(206, 1, '2021-08-03 07:02:54', '2021-08-03 07:02:54', '', '15', '', 'inherit', 'open', 'closed', '', '15', '', '', '2021-08-03 07:02:54', '2021-08-03 07:02:54', '', 205, 'http://localhost/ibos/wp-content/uploads/2021/08/15.png', 0, 'attachment', 'image/png', 0),
(207, 1, '2021-08-03 07:02:57', '2021-08-03 07:02:57', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2021-08-03 07:02:57', '2021-08-03 07:02:57', '', 205, 'http://localhost/ibos/?p=207', 0, 'revision', '', 0),
(208, 1, '2021-08-03 07:03:13', '2021-08-03 07:03:13', '', 'Be an extraordinary performer not just a workaholic.', '', 'trash', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic-9__trashed', '', '', '2021-08-03 07:05:38', '2021-08-03 07:05:38', '', 0, 'http://localhost/ibos/?p=208', 0, 'post', '', 0),
(209, 1, '2021-08-03 07:03:10', '2021-08-03 07:03:10', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2021-08-03 07:03:10', '2021-08-03 07:03:10', '', 208, 'http://localhost/ibos/wp-content/uploads/2021/08/11.png', 0, 'attachment', 'image/png', 0),
(210, 1, '2021-08-03 07:03:13', '2021-08-03 07:03:13', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2021-08-03 07:03:13', '2021-08-03 07:03:13', '', 208, 'http://localhost/ibos/?p=210', 0, 'revision', '', 0),
(211, 1, '2021-08-03 07:06:13', '2021-08-03 07:06:13', '', '12', '', 'inherit', 'open', 'closed', '', '12', '', '', '2021-08-03 07:06:13', '2021-08-03 07:06:13', '', 205, 'http://localhost/ibos/wp-content/uploads/2021/08/12.png', 0, 'attachment', 'image/png', 0),
(212, 1, '2021-08-03 07:30:36', '2021-08-03 07:30:36', '', 'Be an extraordinary performer not just a workaholic.', '', 'publish', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic-9', '', '', '2021-08-03 07:30:38', '2021-08-03 07:30:38', '', 0, 'http://localhost/ibos/?p=212', 0, 'post', '', 0),
(213, 1, '2021-08-03 07:30:13', '2021-08-03 07:30:13', '', '03', '', 'inherit', 'open', 'closed', '', '03-2', '', '', '2021-08-03 07:30:13', '2021-08-03 07:30:13', '', 212, 'http://localhost/ibos/wp-content/uploads/2021/08/03.png', 0, 'attachment', 'image/png', 0),
(214, 1, '2021-08-03 07:30:36', '2021-08-03 07:30:36', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '212-revision-v1', '', '', '2021-08-03 07:30:36', '2021-08-03 07:30:36', '', 212, 'http://localhost/ibos/?p=214', 0, 'revision', '', 0),
(215, 1, '2021-08-03 07:38:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-03 07:38:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?p=215', 0, 'post', '', 0),
(216, 1, '2021-08-03 07:39:37', '2021-08-03 07:39:37', '', 'Be an extraordinary performer not just a workaholic.', '', 'publish', 'open', 'open', '', 'be-an-extraordinary-performer-not-just-a-workaholic-10', '', '', '2021-08-03 07:39:39', '2021-08-03 07:39:39', '', 0, 'http://localhost/ibos/?p=216', 0, 'post', '', 0),
(217, 1, '2021-08-03 07:39:30', '2021-08-03 07:39:30', '', '16', '', 'inherit', 'open', 'closed', '', '16', '', '', '2021-08-03 07:39:30', '2021-08-03 07:39:30', '', 216, 'http://localhost/ibos/wp-content/uploads/2021/08/16.png', 0, 'attachment', 'image/png', 0),
(218, 1, '2021-08-03 07:39:37', '2021-08-03 07:39:37', '', 'Be an extraordinary performer not just a workaholic.', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2021-08-03 07:39:37', '2021-08-03 07:39:37', '', 216, 'http://localhost/ibos/?p=218', 0, 'revision', '', 0),
(219, 1, '2021-08-05 06:57:32', '2021-08-03 11:12:34', '', 'INDUSTRIES', '', 'publish', 'closed', 'closed', '', '219', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=219', 15, 'nav_menu_item', '', 0),
(220, 1, '2021-08-03 11:50:54', '2021-08-03 11:50:54', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\n<!-- /wp:paragraph -->', 'Lorem Ipsum is simply dummy text of the printing', '', 'publish', 'open', 'open', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-lorem', '', '', '2021-08-03 11:53:32', '2021-08-03 11:53:32', '', 0, 'http://localhost/ibos/?p=220', 0, 'post', '', 0),
(221, 1, '2021-08-03 11:50:50', '2021-08-03 11:50:50', '', '03', '', 'inherit', 'open', 'closed', '', '03-3', '', '', '2021-08-03 11:50:50', '2021-08-03 11:50:50', '', 220, 'http://localhost/ibos/wp-content/uploads/2021/08/03-1.png', 0, 'attachment', 'image/png', 0),
(222, 1, '2021-08-03 11:50:54', '2021-08-03 11:50:54', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem', '', 'inherit', 'closed', 'closed', '', '220-revision-v1', '', '', '2021-08-03 11:50:54', '2021-08-03 11:50:54', '', 220, 'http://localhost/ibos/?p=222', 0, 'revision', '', 0),
(223, 1, '2021-08-03 11:51:19', '2021-08-03 11:51:19', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\n<!-- /wp:paragraph -->', 'Lorem Ipsum is simply dummy text of the printing', '', 'inherit', 'closed', 'closed', '', '220-revision-v1', '', '', '2021-08-03 11:51:19', '2021-08-03 11:51:19', '', 220, 'http://localhost/ibos/?p=223', 0, 'revision', '', 0),
(224, 1, '2021-08-03 11:53:28', '2021-08-03 11:53:28', '', 'background-6', '', 'inherit', 'open', 'closed', '', 'background-6', '', '', '2021-08-03 11:53:28', '2021-08-03 11:53:28', '', 220, 'http://localhost/ibos/wp-content/uploads/2021/08/background-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(225, 1, '2021-08-05 06:57:32', '2021-08-03 12:24:29', '', 'Fintech', '', 'publish', 'closed', 'closed', '', '225', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/?p=225', 16, 'nav_menu_item', '', 0),
(226, 1, '2021-08-04 09:34:07', '2021-08-04 09:34:07', '', 'CASE STUDY', '', 'publish', 'closed', 'closed', '', 'case-study', '', '', '2021-08-04 09:34:07', '2021-08-04 09:34:07', '', 0, 'http://localhost/ibos/?page_id=226', 0, 'page', '', 0),
(229, 1, '2021-08-05 06:57:32', '2021-08-04 09:34:07', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/229/', 17, 'nav_menu_item', '', 0),
(230, 1, '2021-08-04 09:34:07', '2021-08-04 09:34:07', '', 'CASE STUDY', '', 'inherit', 'closed', 'closed', '', '226-revision-v1', '', '', '2021-08-04 09:34:07', '2021-08-04 09:34:07', '', 226, 'http://localhost/ibos/?p=230', 0, 'revision', '', 0),
(231, 1, '2021-08-04 11:47:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-04 11:47:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?page_id=231', 0, 'page', '', 0),
(232, 1, '2021-08-04 15:27:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-04 15:27:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?page_id=232', 0, 'page', '', 0),
(233, 1, '2021-08-04 15:27:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-04 15:27:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?page_id=233', 0, 'page', '', 0),
(234, 1, '2021-08-04 15:28:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-04 15:28:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?page_id=234', 0, 'page', '', 0),
(235, 1, '2021-08-04 15:29:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-04 15:29:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?page_id=235', 0, 'page', '', 0),
(236, 1, '2021-08-04 15:30:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-04 15:30:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/ibos/?page_id=236', 0, 'page', '', 0),
(237, 1, '2021-08-04 15:33:04', '2021-08-04 15:33:04', '', 'Mobile App', '', 'publish', 'closed', 'closed', '', 'mobile-app', '', '', '2021-08-04 15:33:51', '2021-08-04 15:33:51', '', 0, 'http://localhost/ibos/?page_id=237', 0, 'page', '', 0),
(241, 1, '2021-08-04 15:33:04', '2021-08-04 15:33:04', '', 'Mobile App', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2021-08-04 15:33:04', '2021-08-04 15:33:04', '', 237, 'http://localhost/ibos/?p=241', 0, 'revision', '', 0),
(242, 1, '2021-08-05 06:23:33', '2021-08-05 06:23:33', '', 'Career', '', 'publish', 'closed', 'closed', '', 'career', '', '', '2021-08-05 06:23:34', '2021-08-05 06:23:34', '', 0, 'http://localhost/ibos/?page_id=242', 0, 'page', '', 0),
(245, 1, '2021-08-05 06:57:32', '2021-08-05 06:23:33', ' ', '', '', 'publish', 'closed', 'closed', '', '245', '', '', '2021-08-05 06:57:32', '2021-08-05 06:57:32', '', 0, 'http://localhost/ibos/245/', 21, 'nav_menu_item', '', 0),
(246, 1, '2021-08-05 06:23:33', '2021-08-05 06:23:33', '', 'Career', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2021-08-05 06:23:33', '2021-08-05 06:23:33', '', 242, 'http://localhost/ibos/?p=246', 0, 'revision', '', 0),
(247, 1, '2021-08-05 06:47:27', '2021-08-05 06:47:27', '', 'Single Career', '', 'publish', 'closed', 'closed', '', 'single-career', '', '', '2021-08-05 06:47:28', '2021-08-05 06:47:28', '', 0, 'http://localhost/ibos/?page_id=247', 0, 'page', '', 0),
(251, 1, '2021-08-05 06:47:27', '2021-08-05 06:47:27', '', 'Single Career', '', 'inherit', 'closed', 'closed', '', '247-revision-v1', '', '', '2021-08-05 06:47:27', '2021-08-05 06:47:27', '', 247, 'http://localhost/ibos/?p=251', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'top-bar', 'top-bar', 0),
(3, 'iBOS Products', 'ibos-products', 0),
(4, 'Our Services', 'our-services', 0),
(5, 'footer-Services', 'footer-services', 0),
(6, 'footer-Products', 'footer-products', 0),
(8, 'Industries We Serve', 'industries-we-serve', 0),
(9, 'blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 2, 0),
(8, 2, 0),
(11, 2, 0),
(35, 3, 0),
(41, 3, 0),
(43, 3, 0),
(45, 3, 0),
(47, 3, 0),
(49, 4, 0),
(52, 4, 0),
(55, 4, 0),
(59, 4, 0),
(61, 4, 0),
(64, 4, 0),
(101, 1, 0),
(104, 1, 0),
(107, 1, 0),
(110, 1, 0),
(123, 2, 0),
(124, 2, 0),
(125, 2, 0),
(126, 2, 0),
(127, 2, 0),
(128, 2, 0),
(129, 2, 0),
(130, 2, 0),
(131, 2, 0),
(132, 2, 0),
(133, 2, 0),
(134, 5, 0),
(135, 5, 0),
(136, 5, 0),
(137, 5, 0),
(138, 5, 0),
(139, 5, 0),
(140, 6, 0),
(141, 6, 0),
(142, 6, 0),
(143, 6, 0),
(144, 6, 0),
(147, 8, 0),
(152, 8, 0),
(156, 8, 0),
(160, 1, 0),
(164, 2, 0),
(172, 1, 0),
(180, 9, 0),
(183, 9, 0),
(186, 9, 0),
(189, 9, 0),
(192, 9, 0),
(195, 9, 0),
(199, 2, 0),
(202, 9, 0),
(205, 9, 0),
(208, 9, 0),
(212, 9, 0),
(216, 9, 0),
(219, 2, 0),
(220, 8, 0),
(225, 2, 0),
(229, 2, 0),
(245, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 21),
(3, 3, 'category', '', 0, 5),
(4, 4, 'category', '', 0, 6),
(5, 5, 'nav_menu', '', 0, 6),
(6, 6, 'nav_menu', '', 0, 5),
(8, 8, 'category', '', 0, 4),
(9, 9, 'category', '', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `wp_update_log`
--

CREATE TABLE `wp_update_log` (
  `id` int(9) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oldVersion` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newVersion` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `put_on_hold` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_update_log`
--

INSERT INTO `wp_update_log` (`id`, `slug`, `oldVersion`, `newVersion`, `method`, `put_on_hold`) VALUES
(1, 'iboswebsite', '-', '-', 'Manual', '0'),
(2, 'twentynineteen', '-', '', 'New', '0'),
(3, 'twentytwenty', '-', '', 'New', '0'),
(4, 'twentytwentyone', '-', '', 'New', '0'),
(5, 'akismet/akismet.php', '-', '', 'New', '0'),
(6, 'companion-auto-update/companion-auto-update.php', '-', '-', 'Manual', '0'),
(7, 'contact-form-7/wp-contact-form-7.php', '-', '', 'New', '0'),
(8, 'file-manager-advanced/file_manager_advanced.php', '-', '', 'New', '0'),
(9, 'hello.php', '-', '', 'New', '0'),
(10, 'svg-support/svg-support.php', '-', '', 'New', '0'),
(11, 'core', '-', '', 'New', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ibos'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&ampeditor=html&amppost_dfw=off&editor=html'),
(18, 1, 'wp_user-settings-time', '1627734185'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '174'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:25:\"add-post-type-main_slider\";i:1;s:24:\"add-post-type-our_client\";i:2;s:30:\"add-post-type-our_technologies\";i:3;s:30:\"add-post-type-blog_section_one\";i:4;s:30:\"add-post-type-blog_section_two\";i:5;s:29:\"add-post-type-our_team_member\";i:6;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(134, 1, 'session_tokens', 'a:1:{s:64:\"aec35fc3bc9af1785179e8db606d858db54511c040599eaf828a6cbc929b5822\";a:4:{s:10:\"expiration\";i:1628943818;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36\";s:5:\"login\";i:1627734218;}}'),
(161, 12, 'nickname', 'Username'),
(162, 12, 'first_name', ''),
(163, 12, 'last_name', ''),
(164, 12, 'description', ''),
(165, 12, 'rich_editing', 'true'),
(166, 12, 'syntax_highlighting', 'true'),
(167, 12, 'comment_shortcuts', 'false'),
(168, 12, 'admin_color', 'fresh'),
(169, 12, 'use_ssl', '0'),
(170, 12, 'show_admin_bar_front', 'true'),
(171, 12, 'locale', ''),
(172, 12, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(173, 12, 'wp_user_level', '10'),
(174, 1, 'enable_custom_fields', '1'),
(175, 1, 'closedpostboxes_', 'a:1:{i:0;s:10:\"postcustom\";}'),
(176, 1, 'metaboxhidden_', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ibos', '$P$BY0zAYtWi2G9dQIzuuFTTor258FkNe.', 'ibos', 'farhansakibjesy@gmail.com', 'http://localhost/ibos', '2021-07-25 06:42:08', '', 0, 'ibos'),
(12, 'Username', '$P$BLnX3c1hh3QNhx5kOVwAn6UXKG98y8.', 'username', 'email@domain.com', '', '2021-07-31 12:24:15', '', 0, 'Username');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_auto_updates`
--
ALTER TABLE `wp_auto_updates`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_update_log`
--
ALTER TABLE `wp_update_log`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_auto_updates`
--
ALTER TABLE `wp_auto_updates`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1347;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_update_log`
--
ALTER TABLE `wp_update_log`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
