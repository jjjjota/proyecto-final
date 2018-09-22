-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-09-2018 a las 03:28:40
-- Versión del servidor: 5.6.34-log
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto-final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_alm`
--

CREATE TABLE `wp_alm` (
  `id` mediumint(9) NOT NULL,
  `name` text NOT NULL,
  `repeaterDefault` longtext NOT NULL,
  `repeaterType` text NOT NULL,
  `pluginVersion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wp_alm`
--

INSERT INTO `wp_alm` (`id`, `name`, `repeaterDefault`, `repeaterType`, `pluginVersion`) VALUES
(1, 'default', '<div class=\"posts__post col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4\">\n        <a class=\"\" href=\"<?php the_permalink() ?>\">\n\n\n            <div class=\"posts__postTop\">\n              <h2 class=\"posts__title\">\n                <?php echo get_the_title() ?>\n              </h2>\n              <img class=\"posts__image\"src=\"<?php the_post_thumbnail_url() ?>\" alt=\"\" />\n            </div>\n            <div class=\"posts__postBottom\">\n              <?php the_excerpt() ?>\n            </div>\n\n        </a>\n      </div>', 'default', '3.7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un Comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-04 21:39:22', '2018-09-05 00:39:22', 'Hola, este es un comentario.\nPara empezar con la moderación, edición y eliminación de comentarios, por favor visita la pantalla de comentarios en el panel inicial.\nLos Avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'Krita', 'yes'),
(4, 'blogdescription', 'Digital Painting. Creative Freedom.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ctrl-j@outlook.es', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
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
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"ajax-load-more/ajax-load-more.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'krita-theme', 'yes'),
(41, 'stylesheet', 'krita-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:145:\"[ajax_load_more container_type=\"div\" post_type=\"post\" posts_per_page=\"6\" scroll_distance=\"0\" transition_container_classes=\"row posts__container\"]\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '87', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_CL', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:14:\"contact-widget\";a:0:{}s:14:\"sidebar-widget\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"gallery-posts\";a:1:{i:0;s:6:\"text-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1537587564;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1537619964;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1537645282;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1537663227;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentysixteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536108057;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(128, 'can_compress_scripts', '0', 'no'),
(142, 'current_theme', 'Desafío Latam', 'yes'),
(143, 'theme_mods_krita-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:3;s:11:\"footer-menu\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'page_navigation', 'a:6:{s:10:\"first_text\";s:14:\"&laquo; Inicio\";s:9:\"last_text\";s:11:\"Fin &raquo;\";s:9:\"prev_text\";s:7:\"&laquo;\";s:9:\"next_text\";s:7:\"&raquo;\";s:5:\"style\";s:7:\"default\";s:5:\"align\";s:4:\"left\";}', 'yes'),
(150, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CL/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_CL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CL/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1537577006;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(151, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1537577012;s:7:\"checked\";a:2:{s:11:\"krita-theme\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(168, 'new_admin_email', 'ctrl-j@outlook.es', 'yes'),
(190, 'recently_activated', 'a:1:{s:51:\"malinky-ajax-pagination/malinky-ajax-pagination.php\";i:1537512746;}', 'yes'),
(193, 'acf_version', '5.7.0', 'yes'),
(202, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(436, 'category_children', 'a:0:{}', 'yes'),
(546, '_transient_timeout_acf_plugin_updates', '1537598686', 'no'),
(547, '_transient_acf_plugin_updates', 'a:3:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.6\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;}', 'no'),
(548, '_transient_timeout_plugin_slugs', '1537599454', 'no'),
(549, '_transient_plugin_slugs', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"ajax-load-more/ajax-load-more.php\";i:2;s:19:\"akismet/akismet.php\";}', 'no'),
(561, 'alm_version', '3.7', 'yes'),
(562, 'alm_settings', 'a:10:{s:19:\"_alm_container_type\";s:1:\"2\";s:14:\"_alm_classname\";s:0:\"\";s:16:\"_alm_disable_css\";s:1:\"0\";s:14:\"_alm_btn_color\";s:22:\"infinite fading-blocks\";s:18:\"_alm_btn_classname\";s:0:\"\";s:15:\"_alm_inline_css\";s:1:\"1\";s:15:\"_alm_scroll_top\";s:1:\"0\";s:20:\"_alm_disable_dynamic\";s:1:\"0\";s:13:\"_alm_hide_btn\";s:1:\"0\";s:18:\"_alm_error_notices\";s:1:\"1\";}', 'yes'),
(590, '_site_transient_timeout_theme_roots', '1537578811', 'no'),
(591, '_site_transient_theme_roots', 'a:2:{s:11:\"krita-theme\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(592, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1537577013;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.0\";s:33:\"ajax-load-more/ajax-load-more.php\";s:3:\"3.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.6\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"ajax-load-more/ajax-load-more.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/ajax-load-more\";s:4:\"slug\";s:14:\"ajax-load-more\";s:6:\"plugin\";s:33:\"ajax-load-more/ajax-load-more.php\";s:11:\"new_version\";s:3:\"3.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/ajax-load-more/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/ajax-load-more.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ajax-load-more/assets/icon-256x256.png?rev=1631559\";s:2:\"1x\";s:67:\"https://ps.w.org/ajax-load-more/assets/icon-128x128.png?rev=1667395\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/ajax-load-more/assets/banner-772x250.jpg?rev=1667398\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1536262730:1'),
(4, 2, '_wp_trash_meta_status', 'publish'),
(5, 2, '_wp_trash_meta_time', '1536262879'),
(6, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(7, 6, '_edit_last', '1'),
(8, 6, '_edit_lock', '1537512597:1'),
(13, 10, '_edit_last', '1'),
(14, 10, '_edit_lock', '1537156609:1'),
(24, 6, 'header_title', 'CREATIVE DIGITAL. \r\nCREATIVE FREEDOM.'),
(25, 6, '_header_title', 'field_5b91ce242ca4d'),
(26, 7, 'header_title', 'CREATIVE DIGITAL. \r\nCREATIVE FREEDOM.'),
(27, 7, '_header_title', 'field_5b91ce242ca4d'),
(28, 6, 'header_description', 'Krita is a professional FREE and open source painting program. It is made by artists that want to see affordable art tools for everyone.'),
(29, 6, '_header_description', 'field_5b9211a81c539'),
(30, 7, 'header_description', 'Krita is a professional FREE and open source painting program. It is made by artists that want to see affordable art tools for everyone.'),
(31, 7, '_header_description', 'field_5b9211a81c539'),
(32, 17, '_wp_attached_file', '2018/09/windows-logo.png'),
(33, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:24:\"2018/09/windows-logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"windows-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 6, 'header_button', 'download now!'),
(35, 6, '_header_button', 'field_5b922767cc141'),
(36, 7, 'header_button', 'download now!'),
(37, 7, '_header_button', 'field_5b922767cc141'),
(38, 20, '_wp_attached_file', '2018/09/kiki-2018.png'),
(39, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:463;s:4:\"file\";s:21:\"2018/09/kiki-2018.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"kiki-2018-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"kiki-2018-300x136.png\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"kiki-2018-768x347.png\";s:5:\"width\";i:768;s:6:\"height\";i:347;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"kiki-2018-1024x463.png\";s:5:\"width\";i:1024;s:6:\"height\";i:463;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:21:\"kiki-2018-800x463.png\";s:5:\"width\";i:800;s:6:\"height\";i:463;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:21:\"kiki-2018-800x463.png\";s:5:\"width\";i:800;s:6:\"height\";i:463;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 6, 'header_image', '20'),
(41, 6, '_header_image', 'field_5b92d18ea0614'),
(42, 7, 'header_image', '20'),
(43, 7, '_header_image', 'field_5b92d18ea0614'),
(44, 21, '_edit_last', '1'),
(45, 21, '_edit_lock', '1536725719:1'),
(48, 6, 'description_title', 'Don\'t waste your time'),
(49, 6, '_description_title', 'field_5b934af69628c'),
(50, 6, 'description_text', 'An intuitive interface that stays out of your way. Move and customize your tools, create your own shortcuts and built the perfect workspace for you.'),
(51, 6, '_description_text', 'field_5b934b689628d'),
(52, 6, 'description_image', '26'),
(53, 6, '_description_image', 'field_5b934be29628e'),
(54, 7, 'description_title', 'Don\'t waste your time'),
(55, 7, '_description_title', 'field_5b934af69628c'),
(56, 7, 'description_text', 'An intuitive interface that stays out of your way. Move and customize your tools, create your own shortcuts and built the perfect workspace for you.'),
(57, 7, '_description_text', 'field_5b934b689628d'),
(58, 7, 'description_image', '26'),
(59, 7, '_description_image', 'field_5b934be29628e'),
(60, 26, '_wp_attached_file', '2018/09/screenshot-krita.jpg'),
(61, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:960;s:4:\"file\";s:28:\"2018/09/screenshot-krita.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"screenshot-krita-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"screenshot-krita-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"screenshot-krita-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"screenshot-krita-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:28:\"screenshot-krita-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:28:\"screenshot-krita-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 28, '_edit_last', '1'),
(63, 28, '_edit_lock', '1536726129:1'),
(64, 34, '_wp_attached_file', '2018/09/brushes.gif'),
(65, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:670;s:6:\"height\";i:376;s:4:\"file\";s:19:\"2018/09/brushes.gif\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"brushes-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"brushes-300x168.gif\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 35, '_wp_attached_file', '2018/09/pop-up-palette.gif'),
(67, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:372;s:6:\"height\";i:209;s:4:\"file\";s:26:\"2018/09/pop-up-palette.gif\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"pop-up-palette-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"pop-up-palette-300x169.gif\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 6, 'features_title', 'All you need and more'),
(71, 6, '_features_title', 'field_5b94b05c48925'),
(72, 6, 'features_0_feature_image', '35'),
(73, 6, '_features_0_feature_image', 'field_5b94b10148927'),
(74, 6, 'features_0_feature_title', 'Pop-up palette'),
(75, 6, '_features_0_feature_title', 'field_5b94b14e48928'),
(76, 6, 'features_0_feature_text', 'Quickly pick your color and brush by right-clicking on the canvas. Choose a brush set by art style or customize it with your favorites.'),
(77, 6, '_features_0_feature_text', 'field_5b94b16948929'),
(78, 6, 'features_1_feature_image', '39'),
(79, 6, '_features_1_feature_image', 'field_5b94b10148927'),
(80, 6, 'features_1_feature_title', 'Brush stabilizers'),
(81, 6, '_features_1_feature_title', 'field_5b94b14e48928'),
(82, 6, 'features_1_feature_text', 'Add a stabilizer to your brush to smoothen it out. Krita includes 3 different ways to smooth and stabilize your brush strokes.'),
(83, 6, '_features_1_feature_text', 'field_5b94b16948929'),
(84, 6, 'features_2_feature_image', '34'),
(85, 6, '_features_2_feature_image', 'field_5b94b10148927'),
(86, 6, 'features_2_feature_title', 'Variety of brushes and engines'),
(87, 6, '_features_2_feature_title', 'field_5b94b14e48928'),
(88, 6, 'features_2_feature_text', 'Customize your brushes with over 9 unique brush engines. Each brush engine is made to satisfy a specific need such as the color smudge engine, shape engine and others.\r\n'),
(89, 6, '_features_2_feature_text', 'field_5b94b16948929'),
(90, 6, 'features', '3'),
(91, 6, '_features', 'field_5b94b08b48926'),
(92, 7, 'features_title', 'All you need and more'),
(93, 7, '_features_title', 'field_5b94b05c48925'),
(94, 7, 'features_0_feature_image', '35'),
(95, 7, '_features_0_feature_image', 'field_5b94b10148927'),
(96, 7, 'features_0_feature_title', 'Pop-up palette'),
(97, 7, '_features_0_feature_title', 'field_5b94b14e48928'),
(98, 7, 'features_0_feature_text', 'Quickly pick your color and brush by right-clicking on the canvas. Choose a brush set by art style or customize it with your favorites.'),
(99, 7, '_features_0_feature_text', 'field_5b94b16948929'),
(100, 7, 'features_1_feature_image', '39'),
(101, 7, '_features_1_feature_image', 'field_5b94b10148927'),
(102, 7, 'features_1_feature_title', 'Brush stabilizers'),
(103, 7, '_features_1_feature_title', 'field_5b94b14e48928'),
(104, 7, 'features_1_feature_text', 'Add a stabilizer to your brush to smoothen it out. Krita includes 3 different ways to smooth and stabilize your brush strokes.'),
(105, 7, '_features_1_feature_text', 'field_5b94b16948929'),
(106, 7, 'features_2_feature_image', '34'),
(107, 7, '_features_2_feature_image', 'field_5b94b10148927'),
(108, 7, 'features_2_feature_title', 'Variety of brushes and engines'),
(109, 7, '_features_2_feature_title', 'field_5b94b14e48928'),
(110, 7, 'features_2_feature_text', 'Customize your brushes with over 9 unique brush engines. Each brush engine is made to satisfy a specific need such as the color smudge engine, shape engine and others.\r\n'),
(111, 7, '_features_2_feature_text', 'field_5b94b16948929'),
(112, 7, 'features', '3'),
(113, 7, '_features', 'field_5b94b08b48926'),
(118, 39, '_wp_attached_file', '2018/09/stabilizer.gif'),
(119, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:794;s:6:\"height\";i:447;s:4:\"file\";s:22:\"2018/09/stabilizer.gif\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"stabilizer-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"stabilizer-300x169.gif\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"stabilizer-768x432.gif\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 20, '_wp_attachment_image_alt', 'kiki 2018'),
(121, 26, '_wp_attachment_image_alt', 'user interface krita'),
(122, 34, '_wp_attachment_image_alt', 'krita brushes'),
(123, 35, '_wp_attachment_image_alt', 'krita pop up palette'),
(124, 39, '_wp_attachment_image_alt', 'krita stabilizer'),
(125, 17, '_wp_attachment_image_alt', 'windows logo'),
(126, 40, '_edit_last', '1'),
(127, 40, '_edit_lock', '1536725518:1'),
(128, 46, '_wp_attached_file', '2018/09/Pepper-and-Carrot_by-David-Revoy.jpg'),
(129, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:992;s:6:\"height\";i:690;s:4:\"file\";s:44:\"2018/09/Pepper-and-Carrot_by-David-Revoy.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Pepper-and-Carrot_by-David-Revoy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Pepper-and-Carrot_by-David-Revoy-300x209.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Pepper-and-Carrot_by-David-Revoy-768x534.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:534;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"Pepper-and-Carrot_by-David-Revoy-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"Pepper-and-Carrot_by-David-Revoy-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 47, '_wp_attached_file', '2018/09/krita_texture_speedpainting_test_by_deevad.jpg'),
(131, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:608;s:4:\"file\";s:54:\"2018/09/krita_texture_speedpainting_test_by_deevad.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"krita_texture_speedpainting_test_by_deevad-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"krita_texture_speedpainting_test_by_deevad-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:54:\"krita_texture_speedpainting_test_by_deevad-768x365.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:55:\"krita_texture_speedpainting_test_by_deevad-1024x486.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:486;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:54:\"krita_texture_speedpainting_test_by_deevad-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:54:\"krita_texture_speedpainting_test_by_deevad-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 48, '_wp_attached_file', '2018/09/t_challa_by_theclumsyandshy.jpg'),
(133, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:999;s:6:\"height\";i:799;s:4:\"file\";s:39:\"2018/09/t_challa_by_theclumsyandshy.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"t_challa_by_theclumsyandshy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"t_challa_by_theclumsyandshy-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"t_challa_by_theclumsyandshy-768x614.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:39:\"t_challa_by_theclumsyandshy-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:39:\"t_challa_by_theclumsyandshy-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 49, '_wp_attached_file', '2018/09/the_three_graces_by_coyau-d8hluen-png.jpg'),
(135, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1285;s:6:\"height\";i:621;s:4:\"file\";s:49:\"2018/09/the_three_graces_by_coyau-d8hluen-png.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"the_three_graces_by_coyau-d8hluen-png-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"the_three_graces_by_coyau-d8hluen-png-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"the_three_graces_by_coyau-d8hluen-png-768x371.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:371;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"the_three_graces_by_coyau-d8hluen-png-1024x495.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:495;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:49:\"the_three_graces_by_coyau-d8hluen-png-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:49:\"the_three_graces_by_coyau-d8hluen-png-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 50, '_wp_attached_file', '2018/09/splash_by_kargall-d5cxs90.jpg'),
(137, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:456;s:4:\"file\";s:37:\"2018/09/splash_by_kargall-d5cxs90.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"splash_by_kargall-d5cxs90-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"splash_by_kargall-d5cxs90-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"splash_by_kargall-d5cxs90-768x389.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:389;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:37:\"splash_by_kargall-d5cxs90-800x456.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:37:\"splash_by_kargall-d5cxs90-800x456.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 51, '_wp_attached_file', '2018/09/if_your_hands_were_in_mine_by_ozhaggis-d59ieoa.png'),
(139, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:58:\"2018/09/if_your_hands_were_in_mine_by_ozhaggis-d59ieoa.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"if_your_hands_were_in_mine_by_ozhaggis-d59ieoa-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"if_your_hands_were_in_mine_by_ozhaggis-d59ieoa-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"if_your_hands_were_in_mine_by_ozhaggis-d59ieoa-768x480.png\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:58:\"if_your_hands_were_in_mine_by_ozhaggis-d59ieoa-800x500.png\";s:5:\"width\";i:800;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:58:\"if_your_hands_were_in_mine_by_ozhaggis-d59ieoa-800x500.png\";s:5:\"width\";i:800;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 46, '_wp_attachment_image_alt', 'Pepper and Carrot by David Revoy'),
(141, 47, '_wp_attachment_image_alt', 'krita texture speedpainting test by deevad'),
(142, 48, '_wp_attachment_image_alt', 't challa by theclumsyandshy'),
(143, 49, '_wp_attachment_image_alt', 'the three graces by Coyau'),
(144, 50, '_wp_attachment_image_alt', 'splash by kargall'),
(145, 51, '_wp_attachment_image_alt', 'if your hands were in mine by ozhaggis'),
(146, 6, 'features_link', 'https://docs.krita.org/en/reference_manual.html#reference-manual'),
(147, 6, '_features_link', 'field_5b96ba1d43613'),
(148, 6, 'carousel_title', 'Look what Krita can do'),
(149, 6, '_carousel_title', 'field_5b96b6d109612'),
(150, 6, 'carousel_media', 'a:5:{i:0;s:2:\"46\";i:1;s:2:\"48\";i:2;s:2:\"51\";i:3;s:2:\"50\";i:4;s:2:\"47\";}'),
(151, 6, '_carousel_media', 'field_5b96b70009613'),
(152, 6, 'carousel_button', 'See more here!'),
(153, 6, '_carousel_button', 'field_5b96b79a09614'),
(154, 7, 'features_link', 'https://docs.krita.org/en/reference_manual.html#reference-manual'),
(155, 7, '_features_link', 'field_5b96ba1d43613'),
(156, 7, 'carousel_title', 'Look what Krita can do'),
(157, 7, '_carousel_title', 'field_5b96b6d109612'),
(158, 7, 'carousel_media', 'a:5:{i:0;s:2:\"46\";i:1;s:2:\"48\";i:2;s:2:\"51\";i:3;s:2:\"50\";i:4;s:2:\"47\";}'),
(159, 7, '_carousel_media', 'field_5b96b70009613'),
(160, 7, 'carousel_button', 'See more here!'),
(161, 7, '_carousel_button', 'field_5b96b79a09614'),
(162, 6, 'carousel_link', '6'),
(163, 6, '_carousel_link', 'field_5b96b79a09614'),
(164, 7, 'carousel_link', '6'),
(165, 7, '_carousel_link', 'field_5b96b79a09614'),
(166, 6, 'carousel_images', 'a:5:{i:0;s:2:\"46\";i:1;s:2:\"48\";i:2;s:2:\"51\";i:3;s:2:\"50\";i:4;s:2:\"47\";}'),
(167, 6, '_carousel_images', 'field_5b96b70009613'),
(168, 7, 'carousel_images', 'a:5:{i:0;s:2:\"46\";i:1;s:2:\"48\";i:2;s:2:\"51\";i:3;s:2:\"50\";i:4;s:2:\"47\";}'),
(169, 7, '_carousel_images', 'field_5b96b70009613'),
(170, 52, '_edit_last', '1'),
(171, 52, '_edit_lock', '1536941879:1'),
(172, 6, 'involved_title', 'Join to the community now!'),
(173, 6, '_involved_title', 'field_5b972bcbce3a0'),
(174, 6, 'getstarted_icon', '<i class=\"fas fa-book\"></i>'),
(175, 6, '_getstarted_icon', 'field_5b972f7b238e7'),
(176, 6, 'getstarted_title', 'get started'),
(177, 6, '_getstarted_title', 'field_5b972ccdce3a2'),
(178, 6, 'getstarted_description', 'Download Krita now! Choose your operative system, install Krita and put your ideas on the canvas!\r\nIf you are new on digital painting, we recommend checking our documentation, where you can learn basic usage, tools, funcionalitys, and more about Krita.'),
(179, 6, '_getstarted_description', 'field_5b972d24ce3a3'),
(180, 6, 'getstarted_link1', 'http://localhost:8888'),
(181, 6, '_getstarted_link1', 'field_5b972ff4238e8'),
(182, 6, 'getstarted_link2', 'https://krita.org/learn/education/'),
(183, 6, '_getstarted_link2', 'field_5b972d34ce3a5'),
(184, 7, 'involved_title', 'Join to the community now!'),
(185, 7, '_involved_title', 'field_5b972bcbce3a0'),
(186, 7, 'getstarted_icon', '<i class=\"fas fa-book\"></i>'),
(187, 7, '_getstarted_icon', 'field_5b972f7b238e7'),
(188, 7, 'getstarted_title', 'get started'),
(189, 7, '_getstarted_title', 'field_5b972ccdce3a2'),
(190, 7, 'getstarted_description', 'Download Krita now! Choose your operative system, install Krita and put your ideas on the canvas!\r\nIf you are new on digital painting, we recommend checking our documentation, where you can learn basic usage, tools, funcionalitys, and more about Krita.'),
(191, 7, '_getstarted_description', 'field_5b972d24ce3a3'),
(192, 7, 'getstarted_link1', 'http://localhost:8888'),
(193, 7, '_getstarted_link1', 'field_5b972ff4238e8'),
(194, 7, 'getstarted_link2', 'https://krita.org/learn/education/'),
(195, 7, '_getstarted_link2', 'field_5b972d34ce3a5'),
(196, 6, 'start_title', 'Join the community now!'),
(197, 6, '_start_title', 'field_5b972bcbce3a0'),
(198, 7, 'start_title', 'Join the community now!'),
(199, 7, '_start_title', 'field_5b972bcbce3a0'),
(200, 6, 'join_title', 'Join the community now!'),
(201, 6, '_join_title', 'field_5b972bcbce3a0'),
(202, 7, 'join_title', 'Join the community now!'),
(203, 7, '_join_title', 'field_5b972bcbce3a0'),
(204, 6, 'getstarted_text', 'Download Krita now! Choose your operative system, install Krita and put your ideas on the canvas!\r\n\r\nIf you are new on digital painting, we recommend checking our documentation, where you can quickly and easily learn all about Krita.'),
(205, 6, '_getstarted_text', 'field_5b972d24ce3a3'),
(206, 7, 'getstarted_text', 'Download Krita now! Choose your operative system, install Krita and put your ideas on the canvas!\r\n\r\nIf you are new on digital painting, we recommend checking our documentation, where you can quickly and easily learn all about Krita.'),
(207, 7, '_getstarted_text', 'field_5b972d24ce3a3'),
(208, 6, 'getconnected_title', 'get connected'),
(209, 6, '_getconnected_title', 'field_5b987ea60f68e'),
(210, 6, 'getconnected_text', 'Krita\'s community is around the world! Follow us on your favourites social networks and get updated to the last news.'),
(211, 6, '_getconnected_text', 'field_5b987ec50f68f'),
(212, 6, 'social_networks_krita_devianart', 'https://www.deviantart.com/krita-free-art-app'),
(213, 6, '_social_networks_krita_devianart', 'field_5b987ff50f691'),
(214, 6, 'social_networks_krita_facebook', 'https://www.facebook.com/Krita-Foundation-511943358879536/'),
(215, 6, '_social_networks_krita_facebook', 'field_5b987ffb0f692'),
(216, 6, 'social_networks_krita_googleplus', 'https://plus.google.com/u/0/106052286697115751434/posts'),
(217, 6, '_social_networks_krita_googleplus', 'field_5b9880faab69a'),
(218, 6, 'social_networks_krita_twitter', 'https://twitter.com/Krita_Painting'),
(219, 6, '_social_networks_krita_twitter', 'field_5b98811fab69b'),
(220, 6, 'social_networks_krita_vkontakte', 'https://vk.com/ilovefreeart'),
(221, 6, '_social_networks_krita_vkontakte', 'field_5b9881c5ab69c'),
(222, 6, 'social_networks_krita_reddit', 'https://www.reddit.com/r/krita/'),
(223, 6, '_social_networks_krita_reddit', 'field_5b9881e6ab69d'),
(224, 6, 'social_networks_krita_mastodonart', 'https://mastodon.art/@krita'),
(225, 6, '_social_networks_krita_mastodonart', 'field_5b9882b995c85'),
(226, 6, 'social_networks', ''),
(227, 6, '_social_networks', 'field_5b987f210f690'),
(228, 6, 'getinvolved_title', 'get involved'),
(229, 6, '_getinvolved_title', 'field_5b98822695c82'),
(230, 6, 'getinvolved_text', 'We all build Krita. Not only programmers, everyone can be part of Krita. We need developers, artists, writters, testers and many others.\r\n\r\nIf you’ve got the enthusiasm, you’re all welcome!'),
(231, 6, '_getinvolved_text', 'field_5b98824395c83'),
(232, 6, '_', 'field_5b98826495c84'),
(233, 7, 'getconnected_title', 'get connected'),
(234, 7, '_getconnected_title', 'field_5b987ea60f68e'),
(235, 7, 'getconnected_text', 'Krita\'s community is around the world! Follow us on your favourites social networks and get updated to the last news.'),
(236, 7, '_getconnected_text', 'field_5b987ec50f68f'),
(237, 7, 'social_networks_krita_devianart', 'https://www.deviantart.com/krita-free-art-app'),
(238, 7, '_social_networks_krita_devianart', 'field_5b987ff50f691'),
(239, 7, 'social_networks_krita_facebook', 'https://www.facebook.com/Krita-Foundation-511943358879536/'),
(240, 7, '_social_networks_krita_facebook', 'field_5b987ffb0f692'),
(241, 7, 'social_networks_krita_googleplus', 'https://plus.google.com/u/0/106052286697115751434/posts'),
(242, 7, '_social_networks_krita_googleplus', 'field_5b9880faab69a'),
(243, 7, 'social_networks_krita_twitter', 'https://twitter.com/Krita_Painting'),
(244, 7, '_social_networks_krita_twitter', 'field_5b98811fab69b'),
(245, 7, 'social_networks_krita_vkontakte', 'https://vk.com/ilovefreeart'),
(246, 7, '_social_networks_krita_vkontakte', 'field_5b9881c5ab69c'),
(247, 7, 'social_networks_krita_reddit', 'https://www.reddit.com/r/krita/'),
(248, 7, '_social_networks_krita_reddit', 'field_5b9881e6ab69d'),
(249, 7, 'social_networks_krita_mastodonart', 'https://mastodon.art/@krita'),
(250, 7, '_social_networks_krita_mastodonart', 'field_5b9882b995c85'),
(251, 7, 'social_networks', ''),
(252, 7, '_social_networks', 'field_5b987f210f690'),
(253, 7, 'getinvolved_title', 'get involved'),
(254, 7, '_getinvolved_title', 'field_5b98822695c82'),
(255, 7, 'getinvolved_text', 'We all build Krita. Not only programmers, everyone can be part of Krita. We need developers, artists, writters, testers and many others.\r\n\r\nIf you’ve got the enthusiasm, you’re all welcome!'),
(256, 7, '_getinvolved_text', 'field_5b98824395c83'),
(257, 6, 'getstarted_linkdownloads', 'http://localhost:8888'),
(258, 6, '_getstarted_linkdownloads', 'field_5b972ff4238e8'),
(259, 6, 'getstarted_linkdocumentation', 'https://docs.krita.org/'),
(260, 6, '_getstarted_linkdocumentation', 'field_5b972d34ce3a5'),
(261, 6, 'getinvolved_linkdevelopers', 'http://localhost:8888'),
(262, 6, '_getinvolved_linkdevelopers', 'field_5b98826495c84'),
(263, 7, 'getstarted_linkdownloads', 'http://localhost:8888'),
(264, 7, '_getstarted_linkdownloads', 'field_5b972ff4238e8'),
(265, 7, 'getstarted_linkdocumentation', 'https://docs.krita.org/'),
(266, 7, '_getstarted_linkdocumentation', 'field_5b972d34ce3a5'),
(267, 7, 'getinvolved_linkdevelopers', 'http://localhost:8888'),
(268, 7, '_getinvolved_linkdevelopers', 'field_5b98826495c84'),
(269, 6, 'getstarted_link_downloads', '81'),
(270, 6, '_getstarted_link_downloads', 'field_5b972ff4238e8'),
(271, 6, 'getstarted_link_documentation', 'https://docs.krita.org/'),
(272, 6, '_getstarted_link_documentation', 'field_5b972d34ce3a5'),
(273, 6, 'getinvolved_link_contributors', '6'),
(274, 6, '_getinvolved_link_contributors', 'field_5b98826495c84'),
(275, 7, 'getstarted_link_downloads', '81'),
(276, 7, '_getstarted_link_downloads', 'field_5b972ff4238e8'),
(277, 7, 'getstarted_link_documentation', 'https://docs.krita.org/'),
(278, 7, '_getstarted_link_documentation', 'field_5b972d34ce3a5'),
(279, 7, 'getinvolved_link_contributors', '6'),
(280, 7, '_getinvolved_link_contributors', 'field_5b98826495c84'),
(281, 6, 'header_text', 'Krita is a professional FREE and open source painting program. It is made by artists that want to see affordable art tools for everyone.'),
(282, 6, '_header_text', 'field_5b9211a81c539'),
(283, 6, 'header_link', '6'),
(284, 6, '_header_link', 'field_5b922767cc141'),
(285, 7, 'header_text', 'Krita is a professional FREE and open source painting program. It is made by artists that want to see affordable art tools for everyone.'),
(286, 7, '_header_text', 'field_5b9211a81c539'),
(287, 7, 'header_link', '6'),
(288, 7, '_header_link', 'field_5b922767cc141'),
(289, 6, 'social_networks_devianart', 'http://krita-free-art-app.deviantart.com/'),
(290, 6, '_social_networks_devianart', 'field_5b987ff50f691'),
(291, 6, 'social_networks_facebook', 'https://www.facebook.com/pages/Krita-Foundation/511943358879536'),
(292, 6, '_social_networks_facebook', 'field_5b987ffb0f692'),
(293, 6, 'social_networks_googleplus', 'https://plus.google.com/u/0/106052286697115751434/posts'),
(294, 6, '_social_networks_googleplus', 'field_5b9880faab69a'),
(295, 6, 'social_networks_twitter', 'https://twitter.com/Krita_Painting'),
(296, 6, '_social_networks_twitter', 'field_5b98811fab69b'),
(297, 6, 'social_networks_vkontakte', 'https://vk.com/ilovefreeart'),
(298, 6, '_social_networks_vkontakte', 'field_5b9881c5ab69c'),
(299, 6, 'social_networks_reddit', 'https://www.reddit.com/r/krita/'),
(300, 6, '_social_networks_reddit', 'field_5b9881e6ab69d'),
(301, 6, 'social_networks_mastodonart', 'https://mastodon.art/@krita'),
(302, 6, '_social_networks_mastodonart', 'field_5b9882b995c85'),
(303, 7, 'social_networks_devianart', 'http://krita-free-art-app.deviantart.com/'),
(304, 7, '_social_networks_devianart', 'field_5b987ff50f691'),
(305, 7, 'social_networks_facebook', 'https://www.facebook.com/pages/Krita-Foundation/511943358879536'),
(306, 7, '_social_networks_facebook', 'field_5b987ffb0f692'),
(307, 7, 'social_networks_googleplus', 'https://plus.google.com/u/0/106052286697115751434/posts'),
(308, 7, '_social_networks_googleplus', 'field_5b9880faab69a'),
(309, 7, 'social_networks_twitter', 'https://twitter.com/Krita_Painting'),
(310, 7, '_social_networks_twitter', 'field_5b98811fab69b'),
(311, 7, 'social_networks_vkontakte', 'https://vk.com/ilovefreeart'),
(312, 7, '_social_networks_vkontakte', 'field_5b9881c5ab69c'),
(313, 7, 'social_networks_reddit', 'https://www.reddit.com/r/krita/'),
(314, 7, '_social_networks_reddit', 'field_5b9881e6ab69d'),
(315, 7, 'social_networks_mastodonart', 'https://mastodon.art/@krita'),
(316, 7, '_social_networks_mastodonart', 'field_5b9882b995c85'),
(333, 76, '_wp_trash_meta_status', 'publish'),
(334, 76, '_wp_trash_meta_time', '1536854406'),
(335, 80, '_wp_attached_file', '2018/09/krita-logo.png'),
(336, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:136;s:6:\"height\";i:38;s:4:\"file\";s:22:\"2018/09/krita-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(337, 80, '_wp_attachment_image_alt', 'krita logo'),
(338, 6, 'logo', '80'),
(339, 6, '_logo', 'field_5b9ea3e9ed815'),
(340, 7, 'logo', '80'),
(341, 7, '_logo', 'field_5b9ea3e9ed815'),
(342, 81, '_edit_last', '1'),
(343, 81, '_edit_lock', '1536895529:1'),
(344, 83, '_edit_last', '1'),
(345, 83, '_edit_lock', '1537579230:1'),
(346, 85, '_edit_last', '1'),
(347, 85, '_edit_lock', '1536895578:1'),
(348, 87, '_edit_last', '1'),
(349, 87, '_edit_lock', '1537309399:1'),
(350, 89, '_edit_last', '1'),
(351, 89, '_edit_lock', '1537509691:1'),
(352, 90, '_wp_attached_file', '2018/09/whatthecatbroughtbacknotext.png'),
(353, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:720;s:4:\"file\";s:39:\"2018/09/whatthecatbroughtbacknotext.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"whatthecatbroughtbacknotext-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"whatthecatbroughtbacknotext-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:39:\"whatthecatbroughtbacknotext-480x600.png\";s:5:\"width\";i:480;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:39:\"whatthecatbroughtbacknotext-480x600.png\";s:5:\"width\";i:480;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 90, '_wp_attachment_image_alt', 'at the cat brought back no text by Danielle Williams'),
(355, 89, '_thumbnail_id', '90'),
(358, 92, '_wp_attached_file', '2018/09/frenchies-notext.jpg'),
(359, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:810;s:4:\"file\";s:28:\"2018/09/frenchies-notext.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"frenchies-notext-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"frenchies-notext-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:28:\"frenchies-notext-540x600.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:28:\"frenchies-notext-540x600.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(360, 94, '_wp_attached_file', '2018/09/PurrfectChristmas-artonly.jpg'),
(361, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:732;s:6:\"height\";i:720;s:4:\"file\";s:37:\"2018/09/PurrfectChristmas-artonly.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"PurrfectChristmas-artonly-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"PurrfectChristmas-artonly-300x295.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:37:\"PurrfectChristmas-artonly-732x600.jpg\";s:5:\"width\";i:732;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:37:\"PurrfectChristmas-artonly-732x600.jpg\";s:5:\"width\";i:732;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(362, 94, '_wp_attachment_image_alt', 'PurrfectChristmas-artonly'),
(365, 96, '_edit_last', '1'),
(366, 96, '_edit_lock', '1537123151:1'),
(367, 99, '_menu_item_type', 'post_type'),
(368, 99, '_menu_item_menu_item_parent', '0'),
(369, 99, '_menu_item_object_id', '87'),
(370, 99, '_menu_item_object', 'page'),
(371, 99, '_menu_item_target', ''),
(372, 99, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(373, 99, '_menu_item_xfn', ''),
(374, 99, '_menu_item_url', ''),
(376, 100, '_menu_item_type', 'post_type'),
(377, 100, '_menu_item_menu_item_parent', '103'),
(378, 100, '_menu_item_object_id', '85'),
(379, 100, '_menu_item_object', 'page'),
(380, 100, '_menu_item_target', ''),
(381, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(382, 100, '_menu_item_xfn', ''),
(383, 100, '_menu_item_url', ''),
(385, 101, '_menu_item_type', 'post_type'),
(386, 101, '_menu_item_menu_item_parent', '103'),
(387, 101, '_menu_item_object_id', '83'),
(388, 101, '_menu_item_object', 'page'),
(389, 101, '_menu_item_target', ''),
(390, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(391, 101, '_menu_item_xfn', ''),
(392, 101, '_menu_item_url', ''),
(394, 102, '_menu_item_type', 'post_type'),
(395, 102, '_menu_item_menu_item_parent', '0'),
(396, 102, '_menu_item_object_id', '81'),
(397, 102, '_menu_item_object', 'page'),
(398, 102, '_menu_item_target', ''),
(399, 102, '_menu_item_classes', 'a:2:{i:0;s:8:\"nav-item\";i:1;s:18:\"nav-item-highlight\";}'),
(400, 102, '_menu_item_xfn', ''),
(401, 102, '_menu_item_url', ''),
(403, 103, '_menu_item_type', 'custom'),
(404, 103, '_menu_item_menu_item_parent', '0'),
(405, 103, '_menu_item_object_id', '103'),
(406, 103, '_menu_item_object', 'custom'),
(407, 103, '_menu_item_target', ''),
(408, 103, '_menu_item_classes', 'a:2:{i:0;s:8:\"dropdown\";i:1;s:8:\"nav-item\";}'),
(409, 103, '_menu_item_xfn', ''),
(410, 103, '_menu_item_url', '#'),
(412, 104, '_menu_item_type', 'custom'),
(413, 104, '_menu_item_menu_item_parent', '0'),
(414, 104, '_menu_item_object_id', '104'),
(415, 104, '_menu_item_object', 'custom'),
(416, 104, '_menu_item_target', '_blank'),
(417, 104, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(418, 104, '_menu_item_xfn', ''),
(419, 104, '_menu_item_url', 'https://docs.krita.org/'),
(421, 96, '_wp_trash_meta_status', 'publish'),
(422, 96, '_wp_trash_meta_time', '1537123298'),
(423, 96, '_wp_desired_post_slug', 'group_5b9e9bf9c9bde'),
(424, 97, '_wp_trash_meta_status', 'publish'),
(425, 97, '_wp_trash_meta_time', '1537123298'),
(426, 97, '_wp_desired_post_slug', 'field_5b9e9c22ffbc4'),
(427, 108, '_edit_last', '1'),
(428, 108, '_edit_lock', '1537509824:1'),
(429, 109, '_wp_attached_file', '2018/09/reader.jpg'),
(430, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:18:\"2018/09/reader.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"reader-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"reader-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"reader-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:18:\"reader-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:18:\"reader-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(431, 109, '_wp_attachment_image_alt', 'reader by Serhii'),
(432, 110, '_wp_attached_file', '2018/09/old_witch.jpg'),
(433, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/09/old_witch.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"old_witch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"old_witch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"old_witch-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:21:\"old_witch-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:21:\"old_witch-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(434, 110, '_wp_attachment_image_alt', 'old_witch by Serhii'),
(435, 111, '_wp_attached_file', '2018/09/black_fortress.jpg'),
(436, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:26:\"2018/09/black_fortress.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"black_fortress-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"black_fortress-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"black_fortress-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:26:\"black_fortress-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:26:\"black_fortress-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(437, 111, '_wp_attachment_image_alt', 'black fortress by Serhii'),
(438, 112, '_wp_attached_file', '2018/09/lord_of_dreams.jpg'),
(439, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:26:\"2018/09/lord_of_dreams.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"lord_of_dreams-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"lord_of_dreams-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"lord_of_dreams-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:26:\"lord_of_dreams-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:26:\"lord_of_dreams-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 112, '_wp_attachment_image_alt', 'lor of dreams by Serhii'),
(441, 113, '_wp_attached_file', '2018/09/unstoppable.jpg'),
(442, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:23:\"2018/09/unstoppable.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"unstoppable-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"unstoppable-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"unstoppable-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:23:\"unstoppable-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:23:\"unstoppable-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(443, 113, '_wp_attachment_image_alt', 'unstoppable by Serhii'),
(446, 108, '_wp_old_date', '2018-09-16'),
(447, 108, '_thumbnail_id', '113'),
(450, 115, '_edit_last', '1'),
(451, 115, '_edit_lock', '1537157256:1'),
(452, 87, 'news_title', 'Latest news'),
(453, 87, '_news_title', 'field_5b9f232ba4e70'),
(454, 88, 'news_title', 'Latest news'),
(455, 88, '_news_title', 'field_5b9f232ba4e70'),
(456, 117, '_edit_last', '1'),
(457, 117, '_edit_lock', '1537509721:1'),
(460, 108, 'highlight', '1'),
(461, 108, '_highlight', 'field_5b9f292c9cab4'),
(462, 114, 'highlight', '1'),
(463, 114, '_highlight', 'field_5b9f292c9cab4'),
(464, 83, '_wp_page_template', 'page-gallery.php'),
(465, 119, '_edit_last', '1'),
(466, 119, '_edit_lock', '1537506877:1'),
(467, 83, 'gallery_title', 'Art from Krita community'),
(468, 83, '_gallery_title', 'field_5ba17bcea8c32'),
(469, 83, 'gallery_text', ''),
(470, 83, '_gallery_text', 'field_5ba17beea8c33'),
(471, 84, 'gallery_title', 'Art from Krita community'),
(472, 84, '_gallery_title', 'field_5ba17bcea8c32'),
(473, 84, 'gallery_text', ''),
(474, 84, '_gallery_text', 'field_5ba17beea8c33'),
(475, 122, '_edit_last', '1'),
(476, 122, '_edit_lock', '1537420221:1'),
(477, 129, '_edit_last', '1'),
(478, 129, '_edit_lock', '1537388268:1'),
(479, 130, '_wp_attached_file', '2018/09/fighter_by_eric_lee.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(480, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:930;s:4:\"file\";s:31:\"2018/09/fighter_by_eric_lee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"fighter_by_eric_lee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"fighter_by_eric_lee-300x279.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:279;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"fighter_by_eric_lee-768x714.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:714;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:31:\"fighter_by_eric_lee-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:31:\"fighter_by_eric_lee-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(481, 130, '_wp_attachment_image_alt', 'fighter by eric lee'),
(482, 129, 'artwork_artist', 'eric lee'),
(483, 129, '_artwork_artist', 'field_5ba18f653d29d'),
(484, 129, 'artwork_title', 'fighter'),
(485, 129, '_artwork_title', 'field_5ba18f893d29e'),
(486, 129, 'Artwork_image', '130'),
(487, 129, '_Artwork_image', 'field_5ba190053d29f'),
(488, 129, 'artwork_location', 'a:3:{s:7:\"address\";s:42:\"474 Pierre Ct, Gamaliel, AR 72537, EE. UU.\";s:3:\"lat\";s:18:\"36.480703316393466\";s:3:\"lng\";s:17:\"-92.1918915581681\";}'),
(489, 129, '_artwork_location', 'field_5ba190f43d2a0'),
(490, 131, '_edit_last', '1'),
(491, 131, '_edit_lock', '1537388291:1'),
(492, 132, '_wp_attached_file', '2018/09/elf_warrior_by_alex-sabo.jpg'),
(493, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:981;s:4:\"file\";s:36:\"2018/09/elf_warrior_by_alex-sabo.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"elf_warrior_by_alex-sabo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"elf_warrior_by_alex-sabo-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:36:\"elf_warrior_by_alex-sabo-700x600.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:36:\"elf_warrior_by_alex-sabo-700x600.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(494, 131, 'artwork_artist', 'alex sabo'),
(495, 131, '_artwork_artist', 'field_5ba18f653d29d'),
(496, 131, 'artwork_title', 'elf warrior'),
(497, 131, '_artwork_title', 'field_5ba18f893d29e'),
(498, 131, 'Artwork_image', '132'),
(499, 131, '_Artwork_image', 'field_5ba190053d29f'),
(500, 131, 'artwork_location', 'a:3:{s:7:\"address\";s:37:\"M79, Diggers Rest VIC 3427, Australia\";s:3:\"lat\";s:18:\"-37.64451904724491\";s:3:\"lng\";s:18:\"144.72457188611247\";}'),
(501, 131, '_artwork_location', 'field_5ba190f43d2a0'),
(502, 133, '_edit_last', '1'),
(503, 133, '_edit_lock', '1537388306:1'),
(504, 134, '_wp_attached_file', '2018/09/cranes_by_namito.jpg'),
(505, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2018/09/cranes_by_namito.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cranes_by_namito-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cranes_by_namito-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cranes_by_namito-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:28:\"cranes_by_namito-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:28:\"cranes_by_namito-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(506, 133, 'artwork_artist', 'namito'),
(507, 133, '_artwork_artist', 'field_5ba18f653d29d'),
(508, 133, 'artwork_title', 'cranes'),
(509, 133, '_artwork_title', 'field_5ba18f893d29e'),
(510, 133, 'Artwork_image', '134'),
(511, 133, '_Artwork_image', 'field_5ba190053d29f'),
(512, 133, 'artwork_location', 'a:3:{s:7:\"address\";s:69:\"Unnamed Road, Kamihotchimachi, Numata-shi, Gunma-ken 378-0071, Japón\";s:3:\"lat\";s:17:\"36.72181754245199\";s:3:\"lng\";s:17:\"139.0848648776098\";}'),
(513, 133, '_artwork_location', 'field_5ba190f43d2a0'),
(514, 83, 'gallery_items', '-1'),
(515, 83, '_gallery_items', 'field_5ba2a3a211846'),
(516, 84, 'gallery_items', '-1'),
(517, 84, '_gallery_items', 'field_5ba2a3a211846'),
(518, 129, '_wp_trash_meta_status', 'publish'),
(519, 129, '_wp_trash_meta_time', '1537388415'),
(520, 129, '_wp_desired_post_slug', '0'),
(521, 133, '_wp_trash_meta_status', 'publish'),
(522, 133, '_wp_trash_meta_time', '1537388453'),
(523, 133, '_wp_desired_post_slug', '2'),
(524, 131, '_wp_trash_meta_status', 'publish'),
(525, 131, '_wp_trash_meta_time', '1537388456'),
(526, 131, '_wp_desired_post_slug', '1'),
(527, 136, '_edit_last', '1'),
(528, 136, '_edit_lock', '1537578992:1'),
(529, 136, 'artwork_artist', 'Namito'),
(530, 136, '_artwork_artist', 'field_5ba18f653d29d'),
(531, 136, 'artwork_title', 'Cranes'),
(532, 136, '_artwork_title', 'field_5ba18f893d29e'),
(533, 136, 'artwork_image', '134'),
(534, 136, '_artwork_image', 'field_5ba190053d29f'),
(535, 136, 'artwork_location', 'a:3:{s:7:\"address\";s:54:\"Unnamed Road, Kami-machi, Kami-gun, Miyagi-ken, Japón\";s:3:\"lat\";s:18:\"38.635587141454195\";s:3:\"lng\";s:18:\"140.69694105337055\";}'),
(536, 136, '_artwork_location', 'field_5ba190f43d2a0'),
(537, 137, '_edit_last', '1'),
(538, 137, 'artwork_artist', 'Alex Sabo'),
(539, 137, '_artwork_artist', 'field_5ba18f653d29d'),
(540, 137, 'artwork_title', 'Elf warrior'),
(541, 137, '_artwork_title', 'field_5ba18f893d29e'),
(542, 137, 'artwork_image', '132'),
(543, 137, '_artwork_image', 'field_5ba190053d29f'),
(544, 137, 'artwork_location', 'a:3:{s:7:\"address\";s:30:\"Hematite Township, MI, EE. UU.\";s:3:\"lat\";s:18:\"46.265479550494206\";s:3:\"lng\";s:18:\"-88.47422000000006\";}'),
(545, 137, '_artwork_location', 'field_5ba190f43d2a0'),
(546, 137, '_edit_lock', '1537578987:1'),
(547, 138, '_edit_last', '1'),
(548, 138, '_edit_lock', '1537578997:1'),
(549, 138, 'artwork_artist', 'Eric Lee'),
(550, 138, '_artwork_artist', 'field_5ba18f653d29d'),
(551, 138, 'artwork_title', 'Fighter'),
(552, 138, '_artwork_title', 'field_5ba18f893d29e'),
(553, 138, 'artwork_image', '130'),
(554, 138, '_artwork_image', 'field_5ba190053d29f'),
(555, 138, 'artwork_location', 'a:3:{s:7:\"address\";s:51:\"49-13 Laurel Hill Blvd, Woodside, NY 11377, EE. UU.\";s:3:\"lat\";s:16:\"40.7357155346968\";s:3:\"lng\";s:18:\"-73.91430815367971\";}'),
(556, 138, '_artwork_location', 'field_5ba190f43d2a0'),
(557, 136, 'gallery_orientation', 'square'),
(558, 136, '_gallery_orientation', 'field_5ba2cc3dd0f5e'),
(559, 137, 'gallery_orientation', 'vertical'),
(560, 137, '_gallery_orientation', 'field_5ba2cc3dd0f5e'),
(561, 138, 'gallery_orientation', 'square'),
(562, 138, '_gallery_orientation', 'field_5ba2cc3dd0f5e'),
(563, 137, 'artwork_orientation', 'vertical'),
(564, 137, '_artwork_orientation', 'field_5ba2cc3dd0f5e'),
(565, 140, '_edit_last', '1'),
(566, 140, '_edit_lock', '1537579034:1'),
(567, 141, '_wp_attached_file', '2018/09/wasteland_by_kateryna_herasymenko.jpg'),
(568, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:837;s:6:\"height\";i:592;s:4:\"file\";s:45:\"2018/09/wasteland_by_kateryna_herasymenko.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"wasteland_by_kateryna_herasymenko-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"wasteland_by_kateryna_herasymenko-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"wasteland_by_kateryna_herasymenko-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:45:\"wasteland_by_kateryna_herasymenko-800x592.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:592;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:45:\"wasteland_by_kateryna_herasymenko-800x592.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:592;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(569, 140, 'artwork_artist', 'Kateryna Herasymen'),
(570, 140, '_artwork_artist', 'field_5ba18f653d29d'),
(571, 140, 'artwork_title', 'Wasteland'),
(572, 140, '_artwork_title', 'field_5ba18f893d29e'),
(573, 140, 'artwork_image', '141'),
(574, 140, '_artwork_image', 'field_5ba190053d29f'),
(575, 140, 'artwork_orientation', 'horizontal'),
(576, 140, '_artwork_orientation', 'field_5ba2cc3dd0f5e'),
(577, 140, 'artwork_location', 'a:3:{s:7:\"address\";s:48:\"Unnamed Road, Ryazanskaya oblast\', Rusia, 391211\";s:3:\"lat\";s:17:\"53.98987017090461\";s:3:\"lng\";s:17:\"39.87282602138748\";}'),
(578, 140, '_artwork_location', 'field_5ba190f43d2a0'),
(579, 142, '_edit_last', '1'),
(580, 142, '_edit_lock', '1537578755:1'),
(581, 143, '_wp_attached_file', '2018/09/dragon_done_in_krita_by_grzanka-dbzdx68.jpg'),
(582, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:819;s:6:\"height\";i:975;s:4:\"file\";s:51:\"2018/09/dragon_done_in_krita_by_grzanka-dbzdx68.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"dragon_done_in_krita_by_grzanka-dbzdx68-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"dragon_done_in_krita_by_grzanka-dbzdx68-252x300.jpg\";s:5:\"width\";i:252;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"dragon_done_in_krita_by_grzanka-dbzdx68-768x914.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:914;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:51:\"dragon_done_in_krita_by_grzanka-dbzdx68-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:51:\"dragon_done_in_krita_by_grzanka-dbzdx68-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(583, 142, 'artwork_artist', 'Grzanka'),
(584, 142, '_artwork_artist', 'field_5ba18f653d29d'),
(585, 142, 'artwork_title', 'Dragon'),
(586, 142, '_artwork_title', 'field_5ba18f893d29e'),
(587, 142, 'artwork_image', '143'),
(588, 142, '_artwork_image', 'field_5ba190053d29f'),
(589, 142, 'artwork_orientation', 'square'),
(590, 142, '_artwork_orientation', 'field_5ba2cc3dd0f5e'),
(591, 142, 'artwork_location', 'a:3:{s:7:\"address\";s:51:\"40-48 Overcote Ln, Saint Ives PE27 4TT, Reino Unido\";s:3:\"lat\";s:17:\"52.33058694427732\";s:3:\"lng\";s:20:\"-0.01776287681695976\";}'),
(592, 142, '_artwork_location', 'field_5ba190f43d2a0'),
(593, 144, '_edit_last', '1'),
(594, 144, '_edit_lock', '1537578796:1'),
(595, 145, '_wp_attached_file', '2018/09/liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw-png.jpg'),
(596, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:774;s:6:\"height\";i:1032;s:4:\"file\";s:90:\"2018/09/liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw-png.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:90:\"liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw-png-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:90:\"liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw-png-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:91:\"liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw-png-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:91:\"liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw-png-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:90:\"liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw-png-774x600.jpg\";s:5:\"width\";i:774;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:90:\"liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw-png-774x600.jpg\";s:5:\"width\";i:774;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(597, 144, 'artwork_artist', 'Lucho Inzunza'),
(598, 144, '_artwork_artist', 'field_5ba18f653d29d'),
(599, 144, 'artwork_title', 'Liu Yun Sheng'),
(600, 144, '_artwork_title', 'field_5ba18f893d29e'),
(601, 144, 'artwork_image', '145'),
(602, 144, '_artwork_image', 'field_5ba190053d29f'),
(603, 144, 'artwork_orientation', 'vertical'),
(604, 144, '_artwork_orientation', 'field_5ba2cc3dd0f5e'),
(605, 144, 'artwork_location', 'a:3:{s:7:\"address\";s:35:\"San Luis del Cordero, Dgo., México\";s:3:\"lat\";s:18:\"25.396025120148128\";s:3:\"lng\";s:19:\"-104.46494890038605\";}'),
(606, 144, '_artwork_location', 'field_5ba190f43d2a0'),
(607, 146, '_edit_last', '1'),
(608, 146, '_edit_lock', '1537578764:1'),
(609, 146, 'artwork_artist', 'Theclumsyandshy'),
(610, 146, '_artwork_artist', 'field_5ba18f653d29d'),
(611, 146, 'artwork_title', 'T\'Challa'),
(612, 146, '_artwork_title', 'field_5ba18f893d29e'),
(613, 146, 'artwork_image', '48'),
(614, 146, '_artwork_image', 'field_5ba190053d29f'),
(615, 146, 'artwork_orientation', 'horizontal'),
(616, 146, '_artwork_orientation', 'field_5ba2cc3dd0f5e'),
(617, 146, 'artwork_location', 'a:3:{s:7:\"address\";s:39:\"1-2 B4368, Craven Arms SY7, Reino Unido\";s:3:\"lat\";s:18:\"52.430065792134116\";s:3:\"lng\";s:18:\"-2.878857385010292\";}'),
(618, 146, '_artwork_location', 'field_5ba190f43d2a0'),
(619, 147, '_edit_last', '1'),
(620, 147, 'artwork_artist', 'Coyau'),
(621, 147, '_artwork_artist', 'field_5ba18f653d29d'),
(622, 147, 'artwork_title', 'The three Graces'),
(623, 147, '_artwork_title', 'field_5ba18f893d29e'),
(624, 147, 'artwork_image', '49'),
(625, 147, '_artwork_image', 'field_5ba190053d29f'),
(626, 147, 'artwork_orientation', 'horizontal'),
(627, 147, '_artwork_orientation', 'field_5ba2cc3dd0f5e'),
(628, 147, 'artwork_location', 'a:3:{s:7:\"address\";s:39:\"Vosmansweg, 7434 Lettele, Países Bajos\";s:3:\"lat\";s:18:\"52.273649018038256\";s:3:\"lng\";s:17:\"6.278451917399366\";}'),
(629, 147, '_artwork_location', 'field_5ba190f43d2a0'),
(630, 147, '_edit_lock', '1537578822:1'),
(631, 148, '_edit_last', '1'),
(632, 148, '_edit_lock', '1537578862:1'),
(633, 149, '_wp_attached_file', '2018/09/tiger_by_eric_lee.jpg'),
(634, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:905;s:4:\"file\";s:29:\"2018/09/tiger_by_eric_lee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"tiger_by_eric_lee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"tiger_by_eric_lee-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"tiger_by_eric_lee-768x695.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:695;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:29:\"tiger_by_eric_lee-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:29:\"tiger_by_eric_lee-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(635, 148, 'artwork_artist', 'Eric Lee'),
(636, 148, '_artwork_artist', 'field_5ba18f653d29d'),
(637, 148, 'artwork_title', 'Tiger'),
(638, 148, '_artwork_title', 'field_5ba18f893d29e'),
(639, 148, 'artwork_image', '149'),
(640, 148, '_artwork_image', 'field_5ba190053d29f'),
(641, 148, 'artwork_orientation', 'square'),
(642, 148, '_artwork_orientation', 'field_5ba2cc3dd0f5e'),
(643, 148, 'artwork_location', 'a:3:{s:7:\"address\";s:34:\"Unnamed Road, 88350 Grand, Francia\";s:3:\"lat\";s:17:\"48.36949857393953\";s:3:\"lng\";s:17:\"5.445143714039887\";}'),
(644, 148, '_artwork_location', 'field_5ba190f43d2a0'),
(645, 150, '_edit_last', '1'),
(646, 150, '_edit_lock', '1537578901:1'),
(647, 151, '_wp_attached_file', '2018/09/lady_night_speedpainting_by_ramon_miranda.jpg'),
(648, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1158;s:4:\"file\";s:53:\"2018/09/lady_night_speedpainting_by_ramon_miranda.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"lady_night_speedpainting_by_ramon_miranda-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"lady_night_speedpainting_by_ramon_miranda-259x300.jpg\";s:5:\"width\";i:259;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:53:\"lady_night_speedpainting_by_ramon_miranda-768x889.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:889;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:54:\"lady_night_speedpainting_by_ramon_miranda-884x1024.jpg\";s:5:\"width\";i:884;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:53:\"lady_night_speedpainting_by_ramon_miranda-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:53:\"lady_night_speedpainting_by_ramon_miranda-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(649, 150, 'artwork_artist', 'Ramón Miranda'),
(650, 150, '_artwork_artist', 'field_5ba18f653d29d'),
(651, 150, 'artwork_title', 'Lady night'),
(652, 150, '_artwork_title', 'field_5ba18f893d29e'),
(653, 150, 'artwork_image', '151'),
(654, 150, '_artwork_image', 'field_5ba190053d29f'),
(655, 150, 'artwork_orientation', 'square'),
(656, 150, '_artwork_orientation', 'field_5ba2cc3dd0f5e'),
(657, 150, 'artwork_location', 'a:3:{s:7:\"address\";s:9:\"5S, Perú\";s:3:\"lat\";s:19:\"-11.128984075685443\";s:3:\"lng\";s:18:\"-74.18530866548599\";}'),
(658, 150, '_artwork_location', 'field_5ba190f43d2a0'),
(659, 152, '_edit_last', '1'),
(660, 152, '_edit_lock', '1537578979:1'),
(661, 152, 'artwork_artist', 'David Revoy'),
(662, 152, '_artwork_artist', 'field_5ba18f653d29d'),
(663, 152, 'artwork_title', 'Pepper and Carrot'),
(664, 152, '_artwork_title', 'field_5ba18f893d29e'),
(665, 152, 'artwork_image', '46'),
(666, 152, '_artwork_image', 'field_5ba190053d29f'),
(667, 152, 'artwork_orientation', 'square'),
(668, 152, '_artwork_orientation', 'field_5ba2cc3dd0f5e'),
(669, 152, 'artwork_location', 'a:3:{s:7:\"address\";s:51:\"Vosakkerstraat 174, 7413 RH Deventer, Países Bajos\";s:3:\"lat\";s:17:\"52.26440470768369\";s:3:\"lng\";s:17:\"6.154169080485303\";}'),
(670, 152, '_artwork_location', 'field_5ba190f43d2a0'),
(671, 157, '_wp_attached_file', '2018/09/krita_peace.png'),
(672, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:750;s:4:\"file\";s:23:\"2018/09/krita_peace.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"krita_peace-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"krita_peace-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"krita_peace-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:23:\"krita_peace-800x600.png\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:23:\"krita_peace-800x600.png\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(673, 83, 'gallery_form_title', 'Show us your work!'),
(674, 83, '_gallery_form_title', 'field_5ba47f44ca375'),
(675, 83, 'gallery_form_background', '157'),
(676, 83, '_gallery_form_background', 'field_5ba32d7411288'),
(677, 84, 'gallery_form_title', 'Show us your work!'),
(678, 84, '_gallery_form_title', 'field_5ba47f44ca375'),
(679, 84, 'gallery_form_background', '157'),
(680, 84, '_gallery_form_background', 'field_5ba32d7411288'),
(681, 158, '_edit_last', '1'),
(682, 158, '_edit_lock', '1537507744:1'),
(683, 83, 'gallery_display_form', '1'),
(684, 83, '_gallery_display_form', 'field_5ba47efcca374'),
(685, 84, 'gallery_display_form', '1'),
(686, 84, '_gallery_display_form', 'field_5ba47efcca374'),
(687, 1, '_edit_lock', '1537509860:1'),
(688, 162, '_edit_last', '1'),
(689, 162, '_edit_lock', '1537509981:1'),
(692, 162, 'highlight', '1'),
(693, 162, '_highlight', 'field_5b9f292c9cab4'),
(694, 163, 'highlight', '1'),
(695, 163, '_highlight', 'field_5b9f292c9cab4'),
(696, 164, '_edit_last', '1'),
(699, 164, 'highlight', '0'),
(700, 164, '_highlight', 'field_5b9f292c9cab4'),
(701, 165, 'highlight', '0'),
(702, 165, '_highlight', 'field_5b9f292c9cab4'),
(703, 164, '_edit_lock', '1537512143:1'),
(704, 164, '_wp_trash_meta_status', 'publish'),
(705, 164, '_wp_trash_meta_time', '1537574934'),
(706, 164, '_wp_desired_post_slug', 'lalala'),
(707, 162, '_wp_trash_meta_status', 'publish'),
(708, 162, '_wp_trash_meta_time', '1537574935'),
(709, 162, '_wp_desired_post_slug', 'lala'),
(710, 1, '_wp_trash_meta_status', 'publish'),
(711, 1, '_wp_trash_meta_time', '1537574935'),
(712, 1, '_wp_desired_post_slug', 'hola-mundo'),
(713, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(714, 136, 'artwork_orientation', 'square'),
(715, 136, '_artwork_orientation', 'field_5ba2cc3dd0f5e'),
(716, 138, 'artwork_orientation', 'square'),
(717, 138, '_artwork_orientation', 'field_5ba2cc3dd0f5e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-04 21:39:22', '2018-09-05 00:39:22', 'Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2018-09-21 21:08:55', '2018-09-22 00:08:55', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-04 21:39:22', '2018-09-05 00:39:22', 'Esta es una página de ejemplo. Es diferente a un artículo del blog, ya que se quedará fijo y se mostrará en la navegación del sitio (en la mayoría de themes). La mayoría de la gente empieza con una página Acerca de que brinda información a los visitantes. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero sobre bicicleta, un aspirante a actor por la noche, y este es mi blog. Vivo en Los Ángeles, tengo un perro grande llamado Jack, y me gustan las piñas coladas. (Y quedar atrapado en la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ Artilugios, fue fundada en 1971, y ha estado desde entonces proporcionando al público de artilugios de calidad. Está situado en la ciudad de Gotham, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas impresionantes para la comunidad de Gotham.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href=\"http://localhost:8888/wp-admin/\">su Escritorio</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2018-09-06 16:41:19', '2018-09-06 19:41:19', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-04 21:39:22', '2018-09-05 00:39:22', '<h2>Quiénes somos</h2><p>Nuestra dirección de sitio web es: http://localhost:8888.</p><h2>Qué datos personales recopilamos y por qué lo recogemos</h2><h3>Comentarios</h3><p>Cuando los visitantes dejan comentarios en el sitio recopilamos los datos mostrados en el formulario de comentarios, y también la dirección IP del visitante y la cadena del agente de usuario del navegador para ayudar a la detección de spam.</p><p>Se puede proporcionar una cadena anonimizada creada a partir de su dirección de correo electrónico (también denominada hash) al servicio gravatar para ver si la está utilizando. La política de privacidad del servicio gravar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, su imagen de perfil es visible para el público en el contexto de tu comentario.</p><h3>Multimedia</h3><p>Si subes imágenes al sitio web, debes evitar cargar imágenes con datos de ubicación incrustados (EXIF GPS). Los visitantes del sitio web pueden descargar y extraer los datos de la ubicación de las imágenes en el sitio Web.</p><h3>Formularios de Contacto</h3><h3>Cookies</h3><p>Si deja un Comentario en nuestro sitio puedes optar por guardar tu nombre, dirección de correo electrónico y sitio web en cookies. Éstos son para tu conveniencia de modo que no tengas que rellenar tus datos otra vez cuando dejes otro comentario. Estas cookies durarán un año.</p><p>Si tienes una cuenta e inicias sesión en este sitio, configuraremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se descarta al cerrar el navegador.</p><p>Cuando inicies sesión, también configuraremos varias cookies para guardar tu información de inicio de sesión y sus opciones de visualización en pantalla. Las cookies de inicio de sesión duran dos días y las cookies de opciones de pantalla duran un año. Si selecciona &quot;Recordarme&quot; en tu inicio de sesión se mantendrá durante dos semanas. Si cierra la sesión de tu cuenta, se eliminarán las cookies de inicio de sesión.</p><p>Si editas o publicas un artículo, una cookie adicional se guardará en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID de correo del artículo que acabas de editar. Expira después de 1 día.</p><h3>Contenido incrustado de otros sitios web</h3><p>Los artículos en este sitio pueden incluir contenido incrustado (por ejemplo, videos, imágenes, artículos, etc.). El contenido incrustado de otros sitios web se comporta de la misma manera que si el visitante hubiera visitado el otro sitio web.</p><p>Estos sitios web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tiene una cuenta y está conectado a dicho sitio web.</p><h3>Analíticas</h3><h2>Con quién compartimos tus datos</h2><h2>Cuánto tiempo conservamos tus datos</h2><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar automáticamente cualquier comentario de seguimiento en lugar de mantenerlos en una cola de moderación.</p><p>Para los usuarios que se registren en nuestro sitio web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o borrar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de sitios web también pueden ver y editar esa información.</p><h2>Qué derechos tienen sobre sus datos</h2><p>Si tienes una cuenta en este sitio, o ha dejado comentarios, puedes solicitar recibir un archivo exportado de los datos personales que tengamos sobre usted, incluyendo cualquier dato que nos haya proporcionado. También puede solicitar que borremos cualquier dato personal que mantengamos sobre usted. Esto no incluye los datos que estamos obligados a mantener para fines administrativos, legales o de seguridad.</p><h2>Dónde enviamos tus datos</h2><p>Los comentarios de los visitantes se pueden verificar a través de un servicio automático de detección de spam.</p><h2>Tu información de contacto</h2><h2>Información adicional</h2><h3>Cómo protegemos sus datos</h3><h3>Qué procedimientos de violación de datos tenemos en marcha</h3><h3>De qué terceros recibimos datos</h3><h3>Qué toma de decisiones y/o perfiles automatizados haremos con los datos del usuario</h3><h3>Requisitos de divulgación regulatoria de la industria</h3>', 'Políticas de Privacidad', '', 'draft', 'closed', 'open', '', 'politica-de-privacidad', '', '', '2018-09-04 21:39:22', '2018-09-05 00:39:22', '', 0, 'http://localhost:8888/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-09-06 16:41:19', '2018-09-06 19:41:19', 'Esta es una página de ejemplo. Es diferente a un artículo del blog, ya que se quedará fijo y se mostrará en la navegación del sitio (en la mayoría de themes). La mayoría de la gente empieza con una página Acerca de que brinda información a los visitantes. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero sobre bicicleta, un aspirante a actor por la noche, y este es mi blog. Vivo en Los Ángeles, tengo un perro grande llamado Jack, y me gustan las piñas coladas. (Y quedar atrapado en la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ Artilugios, fue fundada en 1971, y ha estado desde entonces proporcionando al público de artilugios de calidad. Está situado en la ciudad de Gotham, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas impresionantes para la comunidad de Gotham.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href=\"http://localhost:8888/wp-admin/\">su Escritorio</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-06 16:41:19', '2018-09-06 19:41:19', '', 2, 'http://localhost:8888/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-09-06 16:41:35', '2018-09-06 19:41:35', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-16 15:42:54', '2018-09-16 18:42:54', '', 0, 'http://localhost:8888/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-09-06 16:41:35', '2018-09-06 19:41:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-09-06 16:41:35', '2018-09-06 19:41:35', '', 6, 'http://localhost:8888/6-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-09-06 23:53:21', '2018-09-07 02:53:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Header', 'home-header', 'publish', 'closed', 'closed', '', 'group_5b91ce1bdd793', '', '', '2018-09-16 15:42:15', '2018-09-16 18:42:15', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2018-09-06 23:53:22', '2018-09-07 02:53:22', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:45;s:4:\"rows\";i:2;s:9:\"new_lines\";s:2:\"br\";}', 'Title', 'header_title', 'publish', 'closed', 'closed', '', 'field_5b91ce242ca4d', '', '', '2018-09-16 15:42:15', '2018-09-16 18:42:15', '', 10, 'http://localhost:8888/?post_type=acf-field&#038;p=11', 1, 'acf-field', '', 0),
(13, 1, '2018-09-07 02:54:49', '2018-09-07 05:54:49', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:150;s:4:\"rows\";i:3;s:9:\"new_lines\";s:2:\"br\";}', 'Text', 'header_text', 'publish', 'closed', 'closed', '', 'field_5b9211a81c539', '', '', '2018-09-16 15:42:15', '2018-09-16 18:42:15', '', 10, 'http://localhost:8888/?post_type=acf-field&#038;p=13', 2, 'acf-field', '', 0),
(17, 1, '2018-09-07 04:11:36', '2018-09-07 07:11:36', '', 'windows-logo', '', 'inherit', 'open', 'closed', '', 'windows-logo', '', '', '2018-09-09 18:58:01', '2018-09-09 21:58:01', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/windows-logo.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2018-09-07 04:23:58', '2018-09-07 07:23:58', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Download Button', 'header_link', 'publish', 'closed', 'closed', '', 'field_5b922767cc141', '', '', '2018-09-16 15:42:15', '2018-09-16 18:42:15', '', 10, 'http://localhost:8888/?post_type=acf-field&#038;p=18', 3, 'acf-field', '', 0),
(19, 1, '2018-09-07 16:33:51', '2018-09-07 19:33:51', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"slideshow\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background image', 'header_image', 'publish', 'closed', 'closed', '', 'field_5b92d18ea0614', '', '', '2018-09-16 15:42:15', '2018-09-16 18:42:15', '', 10, 'http://localhost:8888/?post_type=acf-field&#038;p=19', 4, 'acf-field', '', 0),
(20, 1, '2018-09-07 16:34:23', '2018-09-07 19:34:23', '', 'kiki-2018', '', 'inherit', 'open', 'closed', '', 'kiki-2018', '', '', '2018-09-09 18:56:46', '2018-09-09 21:56:46', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/kiki-2018.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2018-09-08 01:12:55', '2018-09-08 04:12:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'group_5b934ac95b770', '', '', '2018-09-12 01:17:32', '2018-09-12 04:17:32', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=21', 1, 'acf-field-group', '', 0),
(22, 1, '2018-09-08 01:12:55', '2018-09-08 04:12:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:50;}', 'Section Title', 'description_title', 'publish', 'closed', 'closed', '', 'field_5b934af69628c', '', '', '2018-09-12 01:17:32', '2018-09-12 04:17:32', '', 21, 'http://localhost:8888/?post_type=acf-field&#038;p=22', 0, 'acf-field', '', 0),
(23, 1, '2018-09-08 01:12:56', '2018-09-08 04:12:56', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Text', 'description_text', 'publish', 'closed', 'closed', '', 'field_5b934b689628d', '', '', '2018-09-12 01:17:32', '2018-09-12 04:17:32', '', 21, 'http://localhost:8888/?post_type=acf-field&#038;p=23', 1, 'acf-field', '', 0),
(24, 1, '2018-09-08 01:12:56', '2018-09-08 04:12:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'description_image', 'publish', 'closed', 'closed', '', 'field_5b934be29628e', '', '', '2018-09-12 01:17:32', '2018-09-12 04:17:32', '', 21, 'http://localhost:8888/?post_type=acf-field&#038;p=24', 2, 'acf-field', '', 0),
(26, 1, '2018-09-08 14:55:59', '2018-09-08 17:55:59', '', 'user interface krita', '', 'inherit', 'open', 'closed', '', 'screenshot-krita', '', '', '2018-09-09 18:56:38', '2018-09-09 21:56:38', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/screenshot-krita.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-09-09 02:37:29', '2018-09-09 05:37:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Features', 'features', 'publish', 'closed', 'closed', '', 'group_5b94b00f307cf', '', '', '2018-09-12 01:22:41', '2018-09-12 04:22:41', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=28', 2, 'acf-field-group', '', 0),
(29, 1, '2018-09-09 02:37:29', '2018-09-09 05:37:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Title', 'features_title', 'publish', 'closed', 'closed', '', 'field_5b94b05c48925', '', '', '2018-09-12 01:13:44', '2018-09-12 04:13:44', '', 28, 'http://localhost:8888/?post_type=acf-field&#038;p=29', 0, 'acf-field', '', 0),
(30, 1, '2018-09-09 02:37:29', '2018-09-09 05:37:29', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Features', 'features', 'publish', 'closed', 'closed', '', 'field_5b94b08b48926', '', '', '2018-09-09 02:37:29', '2018-09-09 05:37:29', '', 28, 'http://localhost:8888/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2018-09-09 02:37:29', '2018-09-09 05:37:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Feature\'s image', 'feature_image', 'publish', 'closed', 'closed', '', 'field_5b94b10148927', '', '', '2018-09-09 02:37:29', '2018-09-09 05:37:29', '', 30, 'http://localhost:8888/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(32, 1, '2018-09-09 02:37:29', '2018-09-09 05:37:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Feature\'s title', 'feature_title', 'publish', 'closed', 'closed', '', 'field_5b94b14e48928', '', '', '2018-09-09 02:37:29', '2018-09-09 05:37:29', '', 30, 'http://localhost:8888/?post_type=acf-field&p=32', 1, 'acf-field', '', 0),
(33, 1, '2018-09-09 02:37:29', '2018-09-09 05:37:29', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}', 'Feature\'s text', 'feature_text', 'publish', 'closed', 'closed', '', 'field_5b94b16948929', '', '', '2018-09-09 02:37:29', '2018-09-09 05:37:29', '', 30, 'http://localhost:8888/?post_type=acf-field&p=33', 2, 'acf-field', '', 0),
(34, 1, '2018-09-09 02:51:05', '2018-09-09 05:51:05', '', 'brushes', '', 'inherit', 'open', 'closed', '', 'brushes', '', '', '2018-09-10 22:00:33', '2018-09-11 01:00:33', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/brushes.gif', 0, 'attachment', 'image/gif', 0),
(35, 1, '2018-09-09 02:51:23', '2018-09-09 05:51:23', '', 'pop up palette', '', 'inherit', 'open', 'closed', '', 'pop-up-palette', '', '', '2018-09-09 18:57:21', '2018-09-09 21:57:21', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/pop-up-palette.gif', 0, 'attachment', 'image/gif', 0),
(39, 1, '2018-09-09 18:17:04', '2018-09-09 21:17:04', '', 'stabilizer', '', 'inherit', 'open', 'closed', '', 'stabilizer', '', '', '2018-09-09 18:57:54', '2018-09-09 21:57:54', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/stabilizer.gif', 0, 'attachment', 'image/gif', 0),
(40, 1, '2018-09-10 15:29:24', '2018-09-10 18:29:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Carousel', 'carousel', 'publish', 'closed', 'closed', '', 'group_5b96b6b573b8d', '', '', '2018-09-12 01:14:18', '2018-09-12 04:14:18', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=40', 3, 'acf-field-group', '', 0),
(41, 1, '2018-09-10 15:29:24', '2018-09-10 18:29:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Title', 'carousel_title', 'publish', 'closed', 'closed', '', 'field_5b96b6d109612', '', '', '2018-09-12 01:10:44', '2018-09-12 04:10:44', '', 40, 'http://localhost:8888/?post_type=acf-field&#038;p=41', 0, 'acf-field', '', 0),
(42, 1, '2018-09-10 15:29:24', '2018-09-10 18:29:24', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";i:3;s:3:\"max\";i:5;s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Images', 'carousel_images', 'publish', 'closed', 'closed', '', 'field_5b96b70009613', '', '', '2018-09-12 01:10:44', '2018-09-12 04:10:44', '', 40, 'http://localhost:8888/?post_type=acf-field&#038;p=42', 1, 'acf-field', '', 0),
(43, 1, '2018-09-10 15:29:24', '2018-09-10 18:29:24', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'See More Button', 'carousel_link', 'publish', 'closed', 'closed', '', 'field_5b96b79a09614', '', '', '2018-09-12 01:10:44', '2018-09-12 04:10:44', '', 40, 'http://localhost:8888/?post_type=acf-field&#038;p=43', 2, 'acf-field', '', 0),
(44, 1, '2018-09-10 15:41:21', '2018-09-10 18:41:21', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'See More Button', 'features_link', 'publish', 'closed', 'closed', '', 'field_5b96ba1d43613', '', '', '2018-09-12 01:22:41', '2018-09-12 04:22:41', '', 28, 'http://localhost:8888/?post_type=acf-field&#038;p=44', 2, 'acf-field', '', 0),
(46, 1, '2018-09-10 16:16:52', '2018-09-10 19:16:52', '', 'Pepper and Carrot', 'by David Revoy', 'inherit', 'open', 'closed', '', 'pepper-and-carrot_by-david-revoy', '', '', '2018-09-10 16:27:50', '2018-09-10 19:27:50', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/Pepper-and-Carrot_by-David-Revoy.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-09-10 16:17:11', '2018-09-10 19:17:11', '', 'Krita texture speedpainting test', 'by Deevad', 'inherit', 'open', 'closed', '', 'krita_texture_speedpainting_test_by_deevad', '', '', '2018-09-10 22:01:45', '2018-09-11 01:01:45', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/krita_texture_speedpainting_test_by_deevad.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-09-10 16:17:14', '2018-09-10 19:17:14', '', 'T Challa', 'by Theclumsyandshy', 'inherit', 'open', 'closed', '', 't_challa_by_theclumsyandshy', '', '', '2018-09-10 16:25:05', '2018-09-10 19:25:05', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/t_challa_by_theclumsyandshy.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-09-10 16:17:17', '2018-09-10 19:17:17', '', 'The three graces', 'by Coyau', 'inherit', 'open', 'closed', '', 'the_three_graces_by_coyau-d8hluen-png', '', '', '2018-09-10 16:24:53', '2018-09-10 19:24:53', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/the_three_graces_by_coyau-d8hluen-png.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-09-10 16:21:25', '2018-09-10 19:21:25', '', 'Splash', 'by Kargall', 'inherit', 'open', 'closed', '', 'splash_by_kargall-d5cxs90', '', '', '2018-09-10 16:26:04', '2018-09-10 19:26:04', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/splash_by_kargall-d5cxs90.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-09-10 16:21:57', '2018-09-10 19:21:57', '', 'If your hands were in mine', 'by Ozhaggis', 'inherit', 'open', 'closed', '', 'if_your_hands_were_in_mine_by_ozhaggis-d59ieoa', '', '', '2018-09-10 16:27:50', '2018-09-10 19:27:50', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/if_your_hands_were_in_mine_by_ozhaggis-d59ieoa.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2018-09-10 23:49:37', '2018-09-11 02:49:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Join', 'join', 'publish', 'closed', 'closed', '', 'group_5b972b7bd43c7', '', '', '2018-09-12 04:18:40', '2018-09-12 07:18:40', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=52', 4, 'acf-field-group', '', 0),
(53, 1, '2018-09-10 23:49:37', '2018-09-11 02:49:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Title', 'join_title', 'publish', 'closed', 'closed', '', 'field_5b972bcbce3a0', '', '', '2018-09-12 01:07:21', '2018-09-12 04:07:21', '', 52, 'http://localhost:8888/?post_type=acf-field&#038;p=53', 0, 'acf-field', '', 0),
(54, 1, '2018-09-10 23:49:38', '2018-09-11 02:49:38', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Get Started', 'get_started', 'publish', 'closed', 'closed', '', 'field_5b972c83ce3a1', '', '', '2018-09-11 00:05:00', '2018-09-11 03:05:00', '', 52, 'http://localhost:8888/?post_type=acf-field&#038;p=54', 1, 'acf-field', '', 0),
(55, 1, '2018-09-10 23:49:38', '2018-09-11 02:49:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'getstarted_title', 'publish', 'closed', 'closed', '', 'field_5b972ccdce3a2', '', '', '2018-09-12 04:18:40', '2018-09-12 07:18:40', '', 52, 'http://localhost:8888/?post_type=acf-field&#038;p=55', 2, 'acf-field', '', 0),
(56, 1, '2018-09-10 23:49:38', '2018-09-11 02:49:38', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:280;s:4:\"rows\";i:3;s:9:\"new_lines\";s:2:\"br\";}', 'Description', 'getstarted_text', 'publish', 'closed', 'closed', '', 'field_5b972d24ce3a3', '', '', '2018-09-11 23:55:01', '2018-09-12 02:55:01', '', 52, 'http://localhost:8888/?post_type=acf-field&#038;p=56', 3, 'acf-field', '', 0),
(57, 1, '2018-09-10 23:49:38', '2018-09-11 02:49:38', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Get Connected', 'get_connected', 'publish', 'closed', 'closed', '', 'field_5b972d2ace3a4', '', '', '2018-09-11 23:55:01', '2018-09-12 02:55:01', '', 52, 'http://localhost:8888/?post_type=acf-field&#038;p=57', 6, 'acf-field', '', 0),
(58, 1, '2018-09-10 23:49:38', '2018-09-11 02:49:38', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:30:\"Link to documentation website.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Documentation', 'getstarted_link_documentation', 'publish', 'closed', 'closed', '', 'field_5b972d34ce3a5', '', '', '2018-09-12 01:01:34', '2018-09-12 04:01:34', '', 52, 'http://localhost:8888/?post_type=acf-field&#038;p=58', 5, 'acf-field', '', 0),
(60, 1, '2018-09-11 00:05:00', '2018-09-11 03:05:00', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:23:\"Link to downloads page.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Downloads', 'getstarted_link_downloads', 'publish', 'closed', 'closed', '', 'field_5b972ff4238e8', '', '', '2018-09-12 01:04:31', '2018-09-12 04:04:31', '', 52, 'http://localhost:8888/?post_type=acf-field&#038;p=60', 4, 'acf-field', '', 0),
(61, 1, '2018-09-11 23:55:01', '2018-09-12 02:55:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'getconnected_title', 'publish', 'closed', 'closed', '', 'field_5b987ea60f68e', '', '', '2018-09-11 23:55:01', '2018-09-12 02:55:01', '', 52, 'http://localhost:8888/?post_type=acf-field&p=61', 7, 'acf-field', '', 0),
(62, 1, '2018-09-11 23:55:01', '2018-09-12 02:55:01', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:280;s:4:\"rows\";i:3;s:9:\"new_lines\";s:2:\"br\";}', 'Description', 'getconnected_text', 'publish', 'closed', 'closed', '', 'field_5b987ec50f68f', '', '', '2018-09-11 23:55:01', '2018-09-12 02:55:01', '', 52, 'http://localhost:8888/?post_type=acf-field&p=62', 8, 'acf-field', '', 0),
(63, 1, '2018-09-11 23:55:01', '2018-09-12 02:55:01', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:3:\"row\";s:10:\"sub_fields\";a:0:{}}', 'Social Networks', 'social_networks', 'publish', 'closed', 'closed', '', 'field_5b987f210f690', '', '', '2018-09-12 00:03:32', '2018-09-12 03:03:32', '', 52, 'http://localhost:8888/?post_type=acf-field&#038;p=63', 9, 'acf-field', '', 0),
(64, 1, '2018-09-11 23:55:01', '2018-09-12 02:55:01', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:27:\"https://www.deviantart.com/\";}', 'Devian Art', 'devianart', 'publish', 'closed', 'closed', '', 'field_5b987ff50f691', '', '', '2018-09-12 04:18:40', '2018-09-12 07:18:40', '', 63, 'http://localhost:8888/?post_type=acf-field&#038;p=64', 0, 'acf-field', '', 0),
(65, 1, '2018-09-11 23:55:01', '2018-09-12 02:55:01', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"https://www.facebook.com/\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5b987ffb0f692', '', '', '2018-09-12 04:18:40', '2018-09-12 07:18:40', '', 63, 'http://localhost:8888/?post_type=acf-field&#038;p=65', 1, 'acf-field', '', 0),
(66, 1, '2018-09-12 00:03:32', '2018-09-12 03:03:32', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:24:\"https://plus.google.com/\";}', 'Google Plus', 'googleplus', 'publish', 'closed', 'closed', '', 'field_5b9880faab69a', '', '', '2018-09-12 04:18:40', '2018-09-12 07:18:40', '', 63, 'http://localhost:8888/?post_type=acf-field&#038;p=66', 2, 'acf-field', '', 0),
(67, 1, '2018-09-12 00:03:32', '2018-09-12 03:03:32', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:20:\"https://twitter.com/\";}', 'Twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5b98811fab69b', '', '', '2018-09-12 04:18:40', '2018-09-12 07:18:40', '', 63, 'http://localhost:8888/?post_type=acf-field&#038;p=67', 3, 'acf-field', '', 0),
(68, 1, '2018-09-12 00:03:32', '2018-09-12 03:03:32', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:15:\"https://vk.com/\";}', 'Vkontakte', 'vkontakte', 'publish', 'closed', 'closed', '', 'field_5b9881c5ab69c', '', '', '2018-09-12 04:18:40', '2018-09-12 07:18:40', '', 63, 'http://localhost:8888/?post_type=acf-field&#038;p=68', 4, 'acf-field', '', 0),
(69, 1, '2018-09-12 00:03:32', '2018-09-12 03:03:32', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:23:\"https://www.reddit.com/\";}', 'Reddit', 'reddit', 'publish', 'closed', 'closed', '', 'field_5b9881e6ab69d', '', '', '2018-09-12 04:18:40', '2018-09-12 07:18:40', '', 63, 'http://localhost:8888/?post_type=acf-field&#038;p=69', 5, 'acf-field', '', 0),
(70, 1, '2018-09-12 00:07:52', '2018-09-12 03:07:52', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"https://mastodon.art/\";}', 'Mastodon Art', 'mastodonart', 'publish', 'closed', 'closed', '', 'field_5b9882b995c85', '', '', '2018-09-12 04:18:40', '2018-09-12 07:18:40', '', 63, 'http://localhost:8888/?post_type=acf-field&#038;p=70', 6, 'acf-field', '', 0),
(71, 1, '2018-09-12 00:07:52', '2018-09-12 03:07:52', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Get Involved', 'get_involved', 'publish', 'closed', 'closed', '', 'field_5b98821195c81', '', '', '2018-09-12 00:07:52', '2018-09-12 03:07:52', '', 52, 'http://localhost:8888/?post_type=acf-field&p=71', 10, 'acf-field', '', 0),
(72, 1, '2018-09-12 00:07:52', '2018-09-12 03:07:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'getinvolved_title', 'publish', 'closed', 'closed', '', 'field_5b98822695c82', '', '', '2018-09-12 00:07:52', '2018-09-12 03:07:52', '', 52, 'http://localhost:8888/?post_type=acf-field&p=72', 11, 'acf-field', '', 0),
(73, 1, '2018-09-12 00:07:52', '2018-09-12 03:07:52', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:280;s:4:\"rows\";i:3;s:9:\"new_lines\";s:2:\"br\";}', 'Description', 'getinvolved_text', 'publish', 'closed', 'closed', '', 'field_5b98824395c83', '', '', '2018-09-12 00:07:52', '2018-09-12 03:07:52', '', 52, 'http://localhost:8888/?post_type=acf-field&p=73', 12, 'acf-field', '', 0),
(74, 1, '2018-09-12 00:07:52', '2018-09-12 03:07:52', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:26:\"Link to contributors page.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Contributors', 'getinvolved_link_contributors', 'publish', 'closed', 'closed', '', 'field_5b98826495c84', '', '', '2018-09-12 01:04:31', '2018-09-12 04:04:31', '', 52, 'http://localhost:8888/?post_type=acf-field&#038;p=74', 13, 'acf-field', '', 0),
(76, 1, '2018-09-13 13:00:05', '2018-09-13 16:00:05', '{\n    \"krita-theme::nav_menu_locations[header-menu]\": {\n        \"value\": -417621831,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-13 16:00:05\"\n    },\n    \"nav_menu[-417621831]\": {\n        \"value\": {\n            \"name\": \"header-menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-13 16:00:05\"\n    },\n    \"nav_menu_item[-997058080]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost:8888/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -417621831,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-13 16:00:05\"\n    },\n    \"nav_menu_item[-1017967028]\": {\n        \"value\": {\n            \"object_id\": 1,\n            \"object\": \"post\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00a1Hola mundo!\",\n            \"url\": \"http://localhost:8888/hola-mundo/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00a1Hola mundo!\",\n            \"nav_menu_term_id\": -417621831,\n            \"_invalid\": false,\n            \"type_label\": \"Entrada\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-13 16:00:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'df09c653-ec5f-4817-86e7-56fff9084938', '', '', '2018-09-13 13:00:05', '2018-09-13 16:00:05', '', 0, 'http://localhost:8888/df09c653-ec5f-4817-86e7-56fff9084938/', 0, 'customize_changeset', '', 0),
(80, 1, '2018-09-13 13:10:24', '2018-09-13 16:10:24', '', 'krita-logo', '', 'inherit', 'open', 'closed', '', 'krita-logo', '', '', '2018-09-13 13:10:51', '2018-09-13 16:10:51', '', 6, 'http://localhost:8888/wp-content/uploads/2018/09/krita-logo.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2018-09-14 00:27:45', '2018-09-14 03:27:45', '', 'Download', '', 'publish', 'closed', 'closed', '', 'download', '', '', '2018-09-14 00:27:45', '2018-09-14 03:27:45', '', 0, 'http://localhost:8888/?page_id=81', 0, 'page', '', 0),
(82, 1, '2018-09-14 00:27:45', '2018-09-14 03:27:45', '', 'Download', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-09-14 00:27:45', '2018-09-14 03:27:45', '', 81, 'http://localhost:8888/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-09-14 00:28:02', '2018-09-14 03:28:02', '', 'Art Gallery', '', 'publish', 'closed', 'closed', '', 'art-gallery', '', '', '2018-09-21 22:20:29', '2018-09-22 01:20:29', '', 0, 'http://localhost:8888/?page_id=83', 0, 'page', '', 0),
(84, 1, '2018-09-14 00:28:02', '2018-09-14 03:28:02', '', 'Art Gallery', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-09-14 00:28:02', '2018-09-14 03:28:02', '', 83, 'http://localhost:8888/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-09-14 00:28:21', '2018-09-14 03:28:21', '', 'Get Involved', '', 'publish', 'closed', 'closed', '', 'get-involved', '', '', '2018-09-14 00:28:21', '2018-09-14 03:28:21', '', 0, 'http://localhost:8888/?page_id=85', 0, 'page', '', 0),
(86, 1, '2018-09-14 00:28:21', '2018-09-14 03:28:21', '', 'Get Involved', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-09-14 00:28:21', '2018-09-14 03:28:21', '', 85, 'http://localhost:8888/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-09-14 00:28:49', '2018-09-14 03:28:49', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-09-17 00:46:49', '2018-09-17 03:46:49', '', 0, 'http://localhost:8888/?page_id=87', 0, 'page', '', 0),
(88, 1, '2018-09-14 00:28:49', '2018-09-14 03:28:49', '', 'News', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-09-14 00:28:49', '2018-09-14 03:28:49', '', 87, 'http://localhost:8888/87-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2018-09-15 16:58:38', '2018-09-15 19:58:38', '<h3><img class=\"aligncenter size-medium wp-image-92\" src=\"http://localhost:8888/wp-content/uploads/2018/09/frenchies-notext-200x300.jpg\" alt=\"\" width=\"200\" height=\"300\" /></h3>\r\n<h3>Could you tell us something about yourself?</h3>\r\nMy name is Danielle Williams. I’m a writer, an illustrator, and a fan of Krita.\r\n<h3>Do you paint professionally, as a hobby artist, or both?</h3>\r\nI’ve been paid for my work before and I use my art as covers for my ebooks, so technically I guess I am a professional…but I often feel like a hobby artist in my heart because of my desire to improve my skill.\r\n<h3>What genre(s) do you work in?</h3>\r\nI’m prone to figurative work—portraiture, animals, monsters, that sort of thing—in many styles, but I’m trying to improve and incorporate backgrounds into my art for greater impact. Drawing also helps me visualize my story characters and worlds.\r\n<h3>Whose work inspires you most — who are your role models as an artist?</h3>\r\nBetween an online youth spent browsing Yerf, DeviantArt, Side7, and Elfwood, my love of animation art, and my visual arts degree, I’ve been exposed to a tsunami of creative folks! On the fine arts side: John Singer Sargent, Norman Rockwell, and Cecelia Beaux. I’m discovering more fine artists as I follow James Gurney’s blog (<a href=\"https://GurneyJourney.blogspot.com\">GurneyJourney.blogspot.com</a>).\r\n\r\nOn the animation art side: I admire the artists behind Earthworm Jim, Oddworld Inhabitants, Glen Keane, Marc Davis, and the other Nine Old Men of Disney Animation.\r\n\r\nOn the ‘net side: Ursula Vernon, Makani, TheMinttu, Don Seegmiller, NibbledPencil.com, Dirk Grundy (StringTheoryComic.com), DimeSpin, Michelle Czajkowski (<a href=\"https://AvasDemon.com\">AvasDemon.com</a>), Enayla.\r\n\r\n… I’m forgetting lotsa folks, ha. No single one is my idol, though. I’m like a magpie—I pick out shinies wherever I see ‘em!\r\n<h3>How and when did you get to try digital painting for the first time?</h3>\r\nOh, back when I was…maybe 12 or so? We got a scanner that came with “Micrografx Picture Publisher”, a sort of imitation Photoshop. Around that time I saved my money and bought a Wacom Bamboo. Through online tutorials I taught myself how to use it and my program.\r\n\r\nThe lesson I learned from using this off-brand product for so long was that it wasn’t the tool that made your art good, but your own practice and use of solid artistic principles. That’s what makes the difference.\r\n<h3>What makes you choose digital over traditional painting?</h3>\r\nA: I’m cheap. B: I don’t feel like I have any place to safely make a mess. I had fun taking watercolor classes in college and even did an oils class…but it’s different working with staining liquid paints over concrete in a designated area vs. the corner of the apartment you’re renting or at the table in your mom’s Better-Homes-And-Garden-worthy kitchen.\r\n\r\nOther people’ve found workarounds, I know, but I’m still not comfortable with it.\r\n\r\nOh, and C: space considerations. Art supplies take up space!\r\n\r\n&nbsp;\r\n\r\n<img class=\"aligncenter size-medium wp-image-94\" src=\"http://localhost:8888/wp-content/uploads/2018/09/PurrfectChristmas-artonly-300x295.jpg\" alt=\"PurrfectChristmas-artonly\" width=\"300\" height=\"295\" />\r\n<h3>How did you find out about Krita?</h3>\r\nSome fifteen years after buying Photoshop CS2, it was finally glitching and refusing to open files on Windows 7, no matter how many trick reinstalls I did. I had to go looking for alternatives, and I just didn’t like the dated interface of the GIMP (though I know artists like DimeSpin can make that program sit up and do flips). I dunno where I got the Krita link, but I’m sure glad I found it!\r\n<h3>What was your first impression?</h3>\r\n“Oo, pretty interface. Wait, why won’t this brush make a mark?!”\r\n<h3>What do you love about Krita?</h3>\r\nThe cost (see above), the quality, the interface, the compatibility—and the ability to open a window of your painting in LUT mode and watch it update in real time while you paint on the file in color. MAN that is helpful for values! (Thanks to <a href=\"https://www.youtube.com/watch?v=F0LBVjJPb9o\">https://www.youtube.com/watch?v=F0LBVjJPb9o</a>)\r\n<h3>What do you think needs improvement in Krita? is there anything that really annoys you?</h3>\r\nAnnoys me? I refuse to be annoyed with free software. I have nothing to complain about. There are two things I miss that my old CS2 used to do, however.\r\n\r\nFirst: I haven’t tried Krita’s text tool since before the last big update, but it wasn’t much use to me in making book covers. I’ve since added Inkscape to my workflow to do my title text, but it still requires some wrangling. I look forward to the day when Krita’s text tools are as good as CS2’s were. Or better!\r\n\r\nSecond: I miss Photoshop Actions. Actions + photos = a very quick way to make differently-mooded book covers.\r\n\r\nFinally, I’m like, ack!!, knowing that I’m only scratching the surface of what Krita can do! I just learned about Liquefy this morning. I wish the documentation was more clearly written.\r\n\r\nI also wish there were more step-by-step text-with-picture tutorials (like David Revoy’s Getting Started with Krita) about the different features—so you don’t just know that the features exist, but have some idea of what they’re good for.\r\n\r\nI don’t like video tutorials as much; I’m definitely a read-the-manual, follow-the-pictures, scroll-back-up-when-you-make-a-mistake sorta gal.\r\n<h3>What sets Krita apart from the other tools that you use?</h3>\r\nThat’s easy! The beautiful modern interface, and the COMMUNITY. The community around Krita is unlike any I’ve ever experienced around an art program! David Revoy, in particular, is a treasure.\r\n<h3>If you had to pick one favourite of all your work done in Krita so far, what would it be, and why?</h3>\r\nOoh, that’s a toughie. I’ll pick the cover for my Armello fanfic The Heroes of Houndsmouth. It’s just so dang dramatic, even in greyscale, and I tackled a lot of different things in it, especially textures: teeth, fire, metal scratches, fur.\r\n<h3>What techniques and brushes did you use in it?</h3>\r\nIt’s been a couple years so I’m not exactly sure. I remember using a brush like the current “Ink 1 Precision” or “Ink 2 Fineliner” to do the whiskers and keep the fur texture sharper. I also laid a free metal texture on a layer over the shield, then used a transparency layer (applied to the metal texture layer) to erase the metal where I didn’t want it (such as in the flames). Transparency layers are your friends!\r\n\r\nOh, and I used the LUT management trick (see video link above) while painting in color to make the values *smoochy finger-kiss thing* MWAH! I really love that trick.\r\n<h3>Where can people see more of your work?</h3>\r\n<a href=\"https://PixelvaniaStudios.com\">PixelvaniaStudios.com</a>. My ebook cover paintings are in use at my author homepage, <a href=\"https://PixelvaniaPublishing.com\">PixelvaniaPublishing.com</a>.\r\n<h3>Anything else you’d like to share?</h3>\r\nI can play a piano, but never in a million years could I build one. Similarly, while I can use Krita fairly well, it’s the fine folks working\r\ntheir code sorcery behind the scenes that make Krita—and the art I create with it—possible. I salute them!', 'Interview with Danielle Williams', '', 'publish', 'open', 'open', '', 'interview-with-danielle-williams', '', '', '2018-09-15 17:45:08', '2018-09-15 20:45:08', '', 0, 'http://localhost:8888/?p=89', 0, 'post', '', 0),
(90, 1, '2018-09-15 16:57:22', '2018-09-15 19:57:22', '', 'whatthecatbroughtbacknotext', 'by Danielle Williams', 'inherit', 'open', 'closed', '', 'whatthecatbroughtbacknotext', '', '', '2018-09-15 16:58:29', '2018-09-15 19:58:29', '', 89, 'http://localhost:8888/wp-content/uploads/2018/09/whatthecatbroughtbacknotext.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2018-09-15 16:58:38', '2018-09-15 19:58:38', '<h3>Could you tell us something about yourself?</h3>\r\nMy name is Danielle Williams. I’m a writer, an illustrator, and a fan of Krita.\r\n<h3>Do you paint professionally, as a hobby artist, or both?</h3>\r\nI’ve been paid for my work before and I use my art as covers for my ebooks, so technically I guess I am a professional…but I often feel like a hobby artist in my heart because of my desire to improve my skill.\r\n<h3>What genre(s) do you work in?</h3>\r\nI’m prone to figurative work—portraiture, animals, monsters, that sort of thing—in many styles, but I’m trying to improve and incorporate backgrounds into my art for greater impact. Drawing also helps me visualize my story characters and worlds.\r\n<h3>Whose work inspires you most — who are your role models as an artist?</h3>\r\nBetween an online youth spent browsing Yerf, DeviantArt, Side7, and Elfwood, my love of animation art, and my visual arts degree, I’ve been exposed to a tsunami of creative folks! On the fine arts side: John Singer Sargent, Norman Rockwell, and Cecelia Beaux. I’m discovering more fine artists as I follow James Gurney’s blog (<a href=\"https://GurneyJourney.blogspot.com\">GurneyJourney.blogspot.com</a>).\r\n\r\nOn the animation art side: I admire the artists behind Earthworm Jim, Oddworld Inhabitants, Glen Keane, Marc Davis, and the other Nine Old Men of Disney Animation.\r\n\r\nOn the ‘net side: Ursula Vernon, Makani, TheMinttu, Don Seegmiller, NibbledPencil.com, Dirk Grundy (StringTheoryComic.com), DimeSpin, Michelle Czajkowski (<a href=\"https://AvasDemon.com\">AvasDemon.com</a>), Enayla.\r\n\r\n… I’m forgetting lotsa folks, ha. No single one is my idol, though. I’m like a magpie—I pick out shinies wherever I see ‘em!\r\n<h3>How and when did you get to try digital painting for the first time?</h3>\r\nOh, back when I was…maybe 12 or so? We got a scanner that came with “Micrografx Picture Publisher”, a sort of imitation Photoshop. Around that time I saved my money and bought a Wacom Bamboo. Through online tutorials I taught myself how to use it and my program.\r\n\r\nThe lesson I learned from using this off-brand product for so long was that it wasn’t the tool that made your art good, but your own practice and use of solid artistic principles. That’s what makes the difference.\r\n<h3>What makes you choose digital over traditional painting?</h3>\r\nA: I’m cheap. B: I don’t feel like I have any place to safely make a mess. I had fun taking watercolor classes in college and even did an oils class…but it’s different working with staining liquid paints over concrete in a designated area vs. the corner of the apartment you’re renting or at the table in your mom’s Better-Homes-And-Garden-worthy kitchen.\r\n\r\nOther people’ve found workarounds, I know, but I’m still not comfortable with it.\r\n\r\nOh, and C: space considerations. Art supplies take up space!\r\n<h3>How did you find out about Krita?</h3>\r\nSome fifteen years after buying Photoshop CS2, it was finally glitching and refusing to open files on Windows 7, no matter how many trick reinstalls I did. I had to go looking for alternatives, and I just didn’t like the dated interface of the GIMP (though I know artists like DimeSpin can make that program sit up and do flips). I dunno where I got the Krita link, but I’m sure glad I found it!\r\n<h3>What was your first impression?</h3>\r\n“Oo, pretty interface. Wait, why won’t this brush make a mark?!”\r\n<h3>What do you love about Krita?</h3>\r\nThe cost (see above), the quality, the interface, the compatibility—and the ability to open a window of your painting in LUT mode and watch it update in real time while you paint on the file in color. MAN that is helpful for values! (Thanks to <a href=\"https://www.youtube.com/watch?v=F0LBVjJPb9o\">https://www.youtube.com/watch?v=F0LBVjJPb9o</a>)\r\n<h3>What do you think needs improvement in Krita? is there anything that really annoys you?</h3>\r\nAnnoys me? I refuse to be annoyed with free software. I have nothing to complain about. There are two things I miss that my old CS2 used to do, however.\r\n\r\nFirst: I haven’t tried Krita’s text tool since before the last big update, but it wasn’t much use to me in making book covers. I’ve since added Inkscape to my workflow to do my title text, but it still requires some wrangling. I look forward to the day when Krita’s text tools are as good as CS2’s were. Or better!\r\n\r\nSecond: I miss Photoshop Actions. Actions + photos = a very quick way to make differently-mooded book covers.\r\n\r\nFinally, I’m like, ack!!, knowing that I’m only scratching the surface of what Krita can do! I just learned about Liquefy this morning. I wish the documentation was more clearly written.\r\n\r\nI also wish there were more step-by-step text-with-picture tutorials (like David Revoy’s Getting Started with Krita) about the different features—so you don’t just know that the features exist, but have some idea of what they’re good for.\r\n\r\nI don’t like video tutorials as much; I’m definitely a read-the-manual, follow-the-pictures, scroll-back-up-when-you-make-a-mistake sorta gal.\r\n<h3>What sets Krita apart from the other tools that you use?</h3>\r\nThat’s easy! The beautiful modern interface, and the COMMUNITY. The community around Krita is unlike any I’ve ever experienced around an art program! David Revoy, in particular, is a treasure.\r\n<h3>If you had to pick one favourite of all your work done in Krita so far, what would it be, and why?</h3>\r\nOoh, that’s a toughie. I’ll pick the cover for my Armello fanfic The Heroes of Houndsmouth. It’s just so dang dramatic, even in greyscale, and I tackled a lot of different things in it, especially textures: teeth, fire, metal scratches, fur.\r\n<h3>What techniques and brushes did you use in it?</h3>\r\nIt’s been a couple years so I’m not exactly sure. I remember using a brush like the current “Ink 1 Precision” or “Ink 2 Fineliner” to do the whiskers and keep the fur texture sharper. I also laid a free metal texture on a layer over the shield, then used a transparency layer (applied to the metal texture layer) to erase the metal where I didn’t want it (such as in the flames). Transparency layers are your friends!\r\n\r\nOh, and I used the LUT management trick (see video link above) while painting in color to make the values *smoochy finger-kiss thing* MWAH! I really love that trick.\r\n<h3>Where can people see more of your work?</h3>\r\n<a href=\"https://PixelvaniaStudios.com\">PixelvaniaStudios.com</a>. My ebook cover paintings are in use at my author homepage, <a href=\"https://PixelvaniaPublishing.com\">PixelvaniaPublishing.com</a>.\r\n<h3>Anything else you’d like to share?</h3>\r\nI can play a piano, but never in a million years could I build one. Similarly, while I can use Krita fairly well, it’s the fine folks working\r\ntheir code sorcery behind the scenes that make Krita—and the art I create with it—possible. I salute them!', 'Interview with Danielle Williams', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-15 16:58:38', '2018-09-15 19:58:38', '', 89, 'http://localhost:8888/89-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-09-15 17:44:19', '2018-09-15 20:44:19', '', 'frenchies-notext', '', 'inherit', 'open', 'closed', '', 'frenchies-notext', '', '', '2018-09-15 17:44:19', '2018-09-15 20:44:19', '', 89, 'http://localhost:8888/wp-content/uploads/2018/09/frenchies-notext.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-09-15 17:44:29', '2018-09-15 20:44:29', '<h3><img class=\"aligncenter size-medium wp-image-92\" src=\"http://localhost:8888/wp-content/uploads/2018/09/frenchies-notext-200x300.jpg\" alt=\"\" width=\"200\" height=\"300\" /></h3>\n<h3>Could you tell us something about yourself?</h3>\nMy name is Danielle Williams. I’m a writer, an illustrator, and a fan of Krita.\n<h3>Do you paint professionally, as a hobby artist, or both?</h3>\nI’ve been paid for my work before and I use my art as covers for my ebooks, so technically I guess I am a professional…but I often feel like a hobby artist in my heart because of my desire to improve my skill.\n<h3>What genre(s) do you work in?</h3>\nI’m prone to figurative work—portraiture, animals, monsters, that sort of thing—in many styles, but I’m trying to improve and incorporate backgrounds into my art for greater impact. Drawing also helps me visualize my story characters and worlds.\n<h3>Whose work inspires you most — who are your role models as an artist?</h3>\nBetween an online youth spent browsing Yerf, DeviantArt, Side7, and Elfwood, my love of animation art, and my visual arts degree, I’ve been exposed to a tsunami of creative folks! On the fine arts side: John Singer Sargent, Norman Rockwell, and Cecelia Beaux. I’m discovering more fine artists as I follow James Gurney’s blog (<a href=\"https://GurneyJourney.blogspot.com\">GurneyJourney.blogspot.com</a>).\n\nOn the animation art side: I admire the artists behind Earthworm Jim, Oddworld Inhabitants, Glen Keane, Marc Davis, and the other Nine Old Men of Disney Animation.\n\nOn the ‘net side: Ursula Vernon, Makani, TheMinttu, Don Seegmiller, NibbledPencil.com, Dirk Grundy (StringTheoryComic.com), DimeSpin, Michelle Czajkowski (<a href=\"https://AvasDemon.com\">AvasDemon.com</a>), Enayla.\n\n… I’m forgetting lotsa folks, ha. No single one is my idol, though. I’m like a magpie—I pick out shinies wherever I see ‘em!\n<h3>How and when did you get to try digital painting for the first time?</h3>\nOh, back when I was…maybe 12 or so? We got a scanner that came with “Micrografx Picture Publisher”, a sort of imitation Photoshop. Around that time I saved my money and bought a Wacom Bamboo. Through online tutorials I taught myself how to use it and my program.\n\nThe lesson I learned from using this off-brand product for so long was that it wasn’t the tool that made your art good, but your own practice and use of solid artistic principles. That’s what makes the difference.\n<h3>What makes you choose digital over traditional painting?</h3>\nA: I’m cheap. B: I don’t feel like I have any place to safely make a mess. I had fun taking watercolor classes in college and even did an oils class…but it’s different working with staining liquid paints over concrete in a designated area vs. the corner of the apartment you’re renting or at the table in your mom’s Better-Homes-And-Garden-worthy kitchen.\n\nOther people’ve found workarounds, I know, but I’m still not comfortable with it.\n\nOh, and C: space considerations. Art supplies take up space!\n<h3>How did you find out about Krita?</h3>\nSome fifteen years after buying Photoshop CS2, it was finally glitching and refusing to open files on Windows 7, no matter how many trick reinstalls I did. I had to go looking for alternatives, and I just didn’t like the dated interface of the GIMP (though I know artists like DimeSpin can make that program sit up and do flips). I dunno where I got the Krita link, but I’m sure glad I found it!\n<h3>What was your first impression?</h3>\n“Oo, pretty interface. Wait, why won’t this brush make a mark?!”\n<h3>What do you love about Krita?</h3>\nThe cost (see above), the quality, the interface, the compatibility—and the ability to open a window of your painting in LUT mode and watch it update in real time while you paint on the file in color. MAN that is helpful for values! (Thanks to <a href=\"https://www.youtube.com/watch?v=F0LBVjJPb9o\">https://www.youtube.com/watch?v=F0LBVjJPb9o</a>)\n<h3>What do you think needs improvement in Krita? is there anything that really annoys you?</h3>\nAnnoys me? I refuse to be annoyed with free software. I have nothing to complain about. There are two things I miss that my old CS2 used to do, however.\n\nFirst: I haven’t tried Krita’s text tool since before the last big update, but it wasn’t much use to me in making book covers. I’ve since added Inkscape to my workflow to do my title text, but it still requires some wrangling. I look forward to the day when Krita’s text tools are as good as CS2’s were. Or better!\n\nSecond: I miss Photoshop Actions. Actions + photos = a very quick way to make differently-mooded book covers.\n\nFinally, I’m like, ack!!, knowing that I’m only scratching the surface of what Krita can do! I just learned about Liquefy this morning. I wish the documentation was more clearly written.\n\nI also wish there were more step-by-step text-with-picture tutorials (like David Revoy’s Getting Started with Krita) about the different features—so you don’t just know that the features exist, but have some idea of what they’re good for.\n\nI don’t like video tutorials as much; I’m definitely a read-the-manual, follow-the-pictures, scroll-back-up-when-you-make-a-mistake sorta gal.\n<h3>What sets Krita apart from the other tools that you use?</h3>\nThat’s easy! The beautiful modern interface, and the COMMUNITY. The community around Krita is unlike any I’ve ever experienced around an art program! David Revoy, in particular, is a treasure.\n<h3>If you had to pick one favourite of all your work done in Krita so far, what would it be, and why?</h3>\nOoh, that’s a toughie. I’ll pick the cover for my Armello fanfic The Heroes of Houndsmouth. It’s just so dang dramatic, even in greyscale, and I tackled a lot of different things in it, especially textures: teeth, fire, metal scratches, fur.\n<h3>What techniques and brushes did you use in it?</h3>\nIt’s been a couple years so I’m not exactly sure. I remember using a brush like the current “Ink 1 Precision” or “Ink 2 Fineliner” to do the whiskers and keep the fur texture sharper. I also laid a free metal texture on a layer over the shield, then used a transparency layer (applied to the metal texture layer) to erase the metal where I didn’t want it (such as in the flames). Transparency layers are your friends!\n\nOh, and I used the LUT management trick (see video link above) while painting in color to make the values *smoochy finger-kiss thing* MWAH! I really love that trick.\n<h3>Where can people see more of your work?</h3>\n<a href=\"https://PixelvaniaStudios.com\">PixelvaniaStudios.com</a>. My ebook cover paintings are in use at my author homepage, <a href=\"https://PixelvaniaPublishing.com\">PixelvaniaPublishing.com</a>.\n<h3>Anything else you’d like to share?</h3>\nI can play a piano, but never in a million years could I build one. Similarly, while I can use Krita fairly well, it’s the fine folks working\ntheir code sorcery behind the scenes that make Krita—and the art I create with it—possible. I salute them!', 'Interview with Danielle Williams', '', 'inherit', 'closed', 'closed', '', '89-autosave-v1', '', '', '2018-09-15 17:44:29', '2018-09-15 20:44:29', '', 89, 'http://localhost:8888/89-autosave-v1/', 0, 'revision', '', 0),
(94, 1, '2018-09-15 17:44:46', '2018-09-15 20:44:46', '', 'PurrfectChristmas-artonly', '', 'inherit', 'open', 'closed', '', 'purrfectchristmas-artonly', '', '', '2018-09-15 17:44:55', '2018-09-15 20:44:55', '', 89, 'http://localhost:8888/wp-content/uploads/2018/09/PurrfectChristmas-artonly.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2018-09-15 17:45:08', '2018-09-15 20:45:08', '<h3><img class=\"aligncenter size-medium wp-image-92\" src=\"http://localhost:8888/wp-content/uploads/2018/09/frenchies-notext-200x300.jpg\" alt=\"\" width=\"200\" height=\"300\" /></h3>\r\n<h3>Could you tell us something about yourself?</h3>\r\nMy name is Danielle Williams. I’m a writer, an illustrator, and a fan of Krita.\r\n<h3>Do you paint professionally, as a hobby artist, or both?</h3>\r\nI’ve been paid for my work before and I use my art as covers for my ebooks, so technically I guess I am a professional…but I often feel like a hobby artist in my heart because of my desire to improve my skill.\r\n<h3>What genre(s) do you work in?</h3>\r\nI’m prone to figurative work—portraiture, animals, monsters, that sort of thing—in many styles, but I’m trying to improve and incorporate backgrounds into my art for greater impact. Drawing also helps me visualize my story characters and worlds.\r\n<h3>Whose work inspires you most — who are your role models as an artist?</h3>\r\nBetween an online youth spent browsing Yerf, DeviantArt, Side7, and Elfwood, my love of animation art, and my visual arts degree, I’ve been exposed to a tsunami of creative folks! On the fine arts side: John Singer Sargent, Norman Rockwell, and Cecelia Beaux. I’m discovering more fine artists as I follow James Gurney’s blog (<a href=\"https://GurneyJourney.blogspot.com\">GurneyJourney.blogspot.com</a>).\r\n\r\nOn the animation art side: I admire the artists behind Earthworm Jim, Oddworld Inhabitants, Glen Keane, Marc Davis, and the other Nine Old Men of Disney Animation.\r\n\r\nOn the ‘net side: Ursula Vernon, Makani, TheMinttu, Don Seegmiller, NibbledPencil.com, Dirk Grundy (StringTheoryComic.com), DimeSpin, Michelle Czajkowski (<a href=\"https://AvasDemon.com\">AvasDemon.com</a>), Enayla.\r\n\r\n… I’m forgetting lotsa folks, ha. No single one is my idol, though. I’m like a magpie—I pick out shinies wherever I see ‘em!\r\n<h3>How and when did you get to try digital painting for the first time?</h3>\r\nOh, back when I was…maybe 12 or so? We got a scanner that came with “Micrografx Picture Publisher”, a sort of imitation Photoshop. Around that time I saved my money and bought a Wacom Bamboo. Through online tutorials I taught myself how to use it and my program.\r\n\r\nThe lesson I learned from using this off-brand product for so long was that it wasn’t the tool that made your art good, but your own practice and use of solid artistic principles. That’s what makes the difference.\r\n<h3>What makes you choose digital over traditional painting?</h3>\r\nA: I’m cheap. B: I don’t feel like I have any place to safely make a mess. I had fun taking watercolor classes in college and even did an oils class…but it’s different working with staining liquid paints over concrete in a designated area vs. the corner of the apartment you’re renting or at the table in your mom’s Better-Homes-And-Garden-worthy kitchen.\r\n\r\nOther people’ve found workarounds, I know, but I’m still not comfortable with it.\r\n\r\nOh, and C: space considerations. Art supplies take up space!\r\n\r\n&nbsp;\r\n\r\n<img class=\"aligncenter size-medium wp-image-94\" src=\"http://localhost:8888/wp-content/uploads/2018/09/PurrfectChristmas-artonly-300x295.jpg\" alt=\"PurrfectChristmas-artonly\" width=\"300\" height=\"295\" />\r\n<h3>How did you find out about Krita?</h3>\r\nSome fifteen years after buying Photoshop CS2, it was finally glitching and refusing to open files on Windows 7, no matter how many trick reinstalls I did. I had to go looking for alternatives, and I just didn’t like the dated interface of the GIMP (though I know artists like DimeSpin can make that program sit up and do flips). I dunno where I got the Krita link, but I’m sure glad I found it!\r\n<h3>What was your first impression?</h3>\r\n“Oo, pretty interface. Wait, why won’t this brush make a mark?!”\r\n<h3>What do you love about Krita?</h3>\r\nThe cost (see above), the quality, the interface, the compatibility—and the ability to open a window of your painting in LUT mode and watch it update in real time while you paint on the file in color. MAN that is helpful for values! (Thanks to <a href=\"https://www.youtube.com/watch?v=F0LBVjJPb9o\">https://www.youtube.com/watch?v=F0LBVjJPb9o</a>)\r\n<h3>What do you think needs improvement in Krita? is there anything that really annoys you?</h3>\r\nAnnoys me? I refuse to be annoyed with free software. I have nothing to complain about. There are two things I miss that my old CS2 used to do, however.\r\n\r\nFirst: I haven’t tried Krita’s text tool since before the last big update, but it wasn’t much use to me in making book covers. I’ve since added Inkscape to my workflow to do my title text, but it still requires some wrangling. I look forward to the day when Krita’s text tools are as good as CS2’s were. Or better!\r\n\r\nSecond: I miss Photoshop Actions. Actions + photos = a very quick way to make differently-mooded book covers.\r\n\r\nFinally, I’m like, ack!!, knowing that I’m only scratching the surface of what Krita can do! I just learned about Liquefy this morning. I wish the documentation was more clearly written.\r\n\r\nI also wish there were more step-by-step text-with-picture tutorials (like David Revoy’s Getting Started with Krita) about the different features—so you don’t just know that the features exist, but have some idea of what they’re good for.\r\n\r\nI don’t like video tutorials as much; I’m definitely a read-the-manual, follow-the-pictures, scroll-back-up-when-you-make-a-mistake sorta gal.\r\n<h3>What sets Krita apart from the other tools that you use?</h3>\r\nThat’s easy! The beautiful modern interface, and the COMMUNITY. The community around Krita is unlike any I’ve ever experienced around an art program! David Revoy, in particular, is a treasure.\r\n<h3>If you had to pick one favourite of all your work done in Krita so far, what would it be, and why?</h3>\r\nOoh, that’s a toughie. I’ll pick the cover for my Armello fanfic The Heroes of Houndsmouth. It’s just so dang dramatic, even in greyscale, and I tackled a lot of different things in it, especially textures: teeth, fire, metal scratches, fur.\r\n<h3>What techniques and brushes did you use in it?</h3>\r\nIt’s been a couple years so I’m not exactly sure. I remember using a brush like the current “Ink 1 Precision” or “Ink 2 Fineliner” to do the whiskers and keep the fur texture sharper. I also laid a free metal texture on a layer over the shield, then used a transparency layer (applied to the metal texture layer) to erase the metal where I didn’t want it (such as in the flames). Transparency layers are your friends!\r\n\r\nOh, and I used the LUT management trick (see video link above) while painting in color to make the values *smoochy finger-kiss thing* MWAH! I really love that trick.\r\n<h3>Where can people see more of your work?</h3>\r\n<a href=\"https://PixelvaniaStudios.com\">PixelvaniaStudios.com</a>. My ebook cover paintings are in use at my author homepage, <a href=\"https://PixelvaniaPublishing.com\">PixelvaniaPublishing.com</a>.\r\n<h3>Anything else you’d like to share?</h3>\r\nI can play a piano, but never in a million years could I build one. Similarly, while I can use Krita fairly well, it’s the fine folks working\r\ntheir code sorcery behind the scenes that make Krita—and the art I create with it—possible. I salute them!', 'Interview with Danielle Williams', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-15 17:45:08', '2018-09-15 20:45:08', '', 89, 'http://localhost:8888/89-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-09-16 15:11:29', '2018-09-16 18:11:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"nav_menu\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Nav Menu', 'nav-menu', 'trash', 'closed', 'closed', '', 'group_5b9e9bf9c9bde__trashed', '', '', '2018-09-16 15:41:38', '2018-09-16 18:41:38', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=96', 0, 'acf-field-group', '', 0),
(97, 1, '2018-09-16 15:11:29', '2018-09-16 18:11:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'trash', 'closed', 'closed', '', 'field_5b9e9c22ffbc4__trashed', '', '', '2018-09-16 15:41:38', '2018-09-16 18:41:38', '', 96, 'http://localhost:8888/?post_type=acf-field&#038;p=97', 0, 'acf-field', '', 0),
(99, 1, '2018-09-16 15:14:35', '2018-09-16 18:14:35', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2018-09-16 21:29:40', '2018-09-17 00:29:40', '', 0, 'http://localhost:8888/?p=99', 5, 'nav_menu_item', '', 0),
(100, 1, '2018-09-16 15:14:36', '2018-09-16 18:14:36', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2018-09-16 21:29:40', '2018-09-17 00:29:40', '', 0, 'http://localhost:8888/?p=100', 4, 'nav_menu_item', '', 0),
(101, 1, '2018-09-16 15:14:36', '2018-09-16 18:14:36', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2018-09-16 21:29:40', '2018-09-17 00:29:40', '', 0, 'http://localhost:8888/?p=101', 3, 'nav_menu_item', '', 0),
(102, 1, '2018-09-16 15:14:36', '2018-09-16 18:14:36', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2018-09-16 21:29:40', '2018-09-17 00:29:40', '', 0, 'http://localhost:8888/?p=102', 6, 'nav_menu_item', '', 0),
(103, 1, '2018-09-16 15:17:44', '2018-09-16 18:17:44', '', 'Participate', '', 'publish', 'closed', 'closed', '', 'participate', '', '', '2018-09-16 21:29:40', '2018-09-17 00:29:40', '', 0, 'http://localhost:8888/?p=103', 2, 'nav_menu_item', '', 0),
(104, 1, '2018-09-16 15:19:13', '2018-09-16 18:19:13', '', 'Documentation', '', 'publish', 'closed', 'closed', '', 'documentation', '', '', '2018-09-16 21:29:40', '2018-09-17 00:29:40', '', 0, 'http://localhost:8888/?p=104', 1, 'nav_menu_item', '', 0),
(105, 1, '2018-09-16 15:19:37', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-16 15:19:37', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=105', 0, 'page', '', 0),
(106, 1, '2018-09-16 15:42:15', '2018-09-16 18:42:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5b9ea3e9ed815', '', '', '2018-09-16 15:42:15', '2018-09-16 18:42:15', '', 10, 'http://localhost:8888/?post_type=acf-field&p=106', 0, 'acf-field', '', 0),
(107, 1, '2018-09-16 15:48:40', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-16 15:48:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=acf-field-group&p=107', 0, 'acf-field-group', '', 0),
(108, 1, '2018-09-17 00:00:02', '2018-09-17 03:00:02', '<h3><img class=\"aligncenter size-medium wp-image-109\" src=\"http://localhost:8888/wp-content/uploads/2018/09/reader-300x169.jpg\" alt=\"reader by Serhii\" width=\"300\" height=\"169\" /></h3>\r\n<h3>Could you tell us something about yourself?</h3>\r\nHello everybody! My name is Serhii and I’m an artist from Ukraine. I like to draw illustrations and make videos about it. Lately my favourite theme has been fantasy, but I like other interesting themes. I also work with vector graphics, but that is another story. 🙂\r\n<h3>Do you paint professionally, as a hobby artist, or both?</h3>\r\nBoth, but it’s a little more my work. In other words, my hobby turns into my work, and I think that isn’t so bad.\r\n<h3>What genre(s) do you work in?</h3>\r\n<img class=\"aligncenter size-medium wp-image-110\" src=\"http://localhost:8888/wp-content/uploads/2018/09/old_witch-300x300.jpg\" alt=\"old_witch by Serhii\" width=\"300\" height=\"300\" />\r\n\r\nAs I said earlier I prefer fantasy, it’s very exciting and you can create unreal worlds and characters. With your imagination, you can do whatever you want. You can turn any plot, even the simplest, into an interesting fantasy illustration. I think it’s cool!\r\n<h3>Whose work inspires you most — who are your role models as an artist?</h3>\r\nHard to tell. I like a lot of artists, and all of them have different things to teach. Someone has wonderful graphics, someone has a great composition, and somebody else is an incredible colorist. Each one has their own amazing style and vision of art.\r\n<h3>How and when did you get to try digital painting for the first time?</h3>\r\nIt was around 2000, when my friend bought a wacom tablet. I remember that there was a small drawing program in the set. On this day, I discovered digital painting for myself.\r\n\r\n<img class=\"aligncenter size-medium wp-image-111\" src=\"http://localhost:8888/wp-content/uploads/2018/09/black_fortress-300x169.jpg\" alt=\"black fortress by Serhii\" width=\"300\" height=\"169\" />\r\n<h3>What makes you choose digital over traditional painting?</h3>\r\nI like digital painting because it has a lot of opportunities, for example you can use different tools and effects in one illustration. And the main thing: you have the magic combination of keys, Ctrl+Z 😀 It’s also important that you can quickly show your work to viewers from all over the world.\r\n<h3>How did you find out about Krita?</h3>\r\nOne day I decided to change my operating system and I chose Linux. And then I needed a program for drawing, so I tried some programs and Krita was the best for me.\r\n<h3>What was your first impression?</h3>\r\nBefore my experience with Krita I used some painting applications, so it was easy for me, because all tools and options were understandable, comfortable and useful for my art.\r\n<h3>What do you love about Krita?</h3>\r\nFirstly, I like it that there are a lot of different brushes with the opportunity for rine-tuning as you want. In the latest version of Krita all brushes from the standard set became the best of the best. These brushes are all that I need for my artworks. Also there are many cool themes and interface settings.\r\n\r\n<img class=\"aligncenter size-medium wp-image-112\" src=\"http://localhost:8888/wp-content/uploads/2018/09/lord_of_dreams-300x169.jpg\" alt=\"lor of dreams by Serhii\" width=\"300\" height=\"169\" />\r\n<h3>What do you think needs improvement in Krita? Is there anything that really annoys you?</h3>\r\nI am satisfied with everything in Krita. I would like the big brushes to work a little faster, if it’s possible. Generally, developers of Krita in each version make this app better and I want them to continue their work in the same vein and don’t stop.\r\n<h3>What sets Krita apart from the other tools that you use?</h3>\r\nFor me this is the only application for drawing and digital painting that I can use in Linux. Of course, there are Gimp and Mypaint, but they’re not really right for me, so Krita is the best app for digital painting in Linux.\r\n<h3>If you had to pick one favourite of all your work done in Krita so far, what would it be, and why?</h3>\r\n<img class=\"aligncenter size-medium wp-image-113\" src=\"http://localhost:8888/wp-content/uploads/2018/09/unstoppable-300x169.jpg\" alt=\"unstoppable by Serhii\" width=\"300\" height=\"169\" />\r\n\r\nNow I think that my favourite illustration is “Unstoppable”, because in this picture there is a funny plot, as it seems to me. Like many of my works it is in the fantasy genre, and I like that best.\r\n<h3>What techniques and brushes did you use in it?</h3>\r\nI used a technique that is similar to traditional – one canvas without any layers. What about brushes, I create my artwork with help of “Pencil-2” for sketch, “Texture Big” for basic colors, “Basic-2 Opacity” and “Bristles-2 Flat Rough” for details.\r\n<h3>Where can people see more of your work?</h3>\r\nYoutube: <a href=\"https://www.youtube.com/user/grafikwork\">https://www.youtube.com/user/grafikwork</a>\r\nInstagram: <a href=\"https://www.instagram.com/serg_grafikwork/\">https://www.instagram.com/serg_grafikwork/</a>\r\nArtstation: <a href=\"https://www.artstation.com/serggrafik\">https://www.artstation.com/serggrafik</a>\r\nTwitter: <a href=\"https://twitter.com/Serg_Grafik\">https://twitter.com/Serg_Grafik</a>\r\nFacebook: <a href=\"https://www.facebook.com/serg.grafik\">https://www.facebook.com/serg.grafik</a>\r\nDeviantart: <a href=\"https://www.deviantart.com/grafikwork\">https://www.deviantart.com/grafikwork</a>\r\n<h3>Anything else you’d like to share?</h3>\r\nI wish the team of developers to continue their fantastic work on the creation of this application and I want to see how many more artists use Krita for their creativity and making artworks.', 'Interview with Serhii', '', 'publish', 'open', 'open', '', 'interview-with-serhii', '', '', '2018-09-17 01:12:14', '2018-09-17 04:12:14', '', 0, 'http://localhost:8888/?p=108', 0, 'post', '', 0),
(109, 1, '2018-09-16 23:56:42', '2018-09-17 02:56:42', '', 'reader', '', 'inherit', 'open', 'closed', '', 'reader', '', '', '2018-09-16 23:57:02', '2018-09-17 02:57:02', '', 108, 'http://localhost:8888/wp-content/uploads/2018/09/reader.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-09-16 23:57:27', '2018-09-17 02:57:27', '', 'old_witch', '', 'inherit', 'open', 'closed', '', 'old_witch', '', '', '2018-09-16 23:57:39', '2018-09-17 02:57:39', '', 108, 'http://localhost:8888/wp-content/uploads/2018/09/old_witch.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2018-09-16 23:58:09', '2018-09-17 02:58:09', '', 'black_fortress', '', 'inherit', 'open', 'closed', '', 'black_fortress', '', '', '2018-09-16 23:58:24', '2018-09-17 02:58:24', '', 108, 'http://localhost:8888/wp-content/uploads/2018/09/black_fortress.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2018-09-16 23:58:49', '2018-09-17 02:58:49', '', 'lord_of_dreams', '', 'inherit', 'open', 'closed', '', 'lord_of_dreams', '', '', '2018-09-16 23:59:03', '2018-09-17 02:59:03', '', 108, 'http://localhost:8888/wp-content/uploads/2018/09/lord_of_dreams.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2018-09-16 23:59:24', '2018-09-17 02:59:24', '', 'unstoppable', '', 'inherit', 'open', 'closed', '', 'unstoppable', '', '', '2018-09-16 23:59:40', '2018-09-17 02:59:40', '', 108, 'http://localhost:8888/wp-content/uploads/2018/09/unstoppable.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2018-09-17 00:00:02', '2018-09-17 03:00:02', '<h3><img class=\"aligncenter size-medium wp-image-109\" src=\"http://localhost:8888/wp-content/uploads/2018/09/reader-300x169.jpg\" alt=\"reader by Serhii\" width=\"300\" height=\"169\" /></h3>\r\n<h3>Could you tell us something about yourself?</h3>\r\nHello everybody! My name is Serhii and I’m an artist from Ukraine. I like to draw illustrations and make videos about it. Lately my favourite theme has been fantasy, but I like other interesting themes. I also work with vector graphics, but that is another story. 🙂\r\n<h3>Do you paint professionally, as a hobby artist, or both?</h3>\r\nBoth, but it’s a little more my work. In other words, my hobby turns into my work, and I think that isn’t so bad.\r\n<h3>What genre(s) do you work in?</h3>\r\n<img class=\"aligncenter size-medium wp-image-110\" src=\"http://localhost:8888/wp-content/uploads/2018/09/old_witch-300x300.jpg\" alt=\"old_witch by Serhii\" width=\"300\" height=\"300\" />\r\n\r\nAs I said earlier I prefer fantasy, it’s very exciting and you can create unreal worlds and characters. With your imagination, you can do whatever you want. You can turn any plot, even the simplest, into an interesting fantasy illustration. I think it’s cool!\r\n<h3>Whose work inspires you most — who are your role models as an artist?</h3>\r\nHard to tell. I like a lot of artists, and all of them have different things to teach. Someone has wonderful graphics, someone has a great composition, and somebody else is an incredible colorist. Each one has their own amazing style and vision of art.\r\n<h3>How and when did you get to try digital painting for the first time?</h3>\r\nIt was around 2000, when my friend bought a wacom tablet. I remember that there was a small drawing program in the set. On this day, I discovered digital painting for myself.\r\n\r\n<img class=\"aligncenter size-medium wp-image-111\" src=\"http://localhost:8888/wp-content/uploads/2018/09/black_fortress-300x169.jpg\" alt=\"black fortress by Serhii\" width=\"300\" height=\"169\" />\r\n<h3>What makes you choose digital over traditional painting?</h3>\r\nI like digital painting because it has a lot of opportunities, for example you can use different tools and effects in one illustration. And the main thing: you have the magic combination of keys, Ctrl+Z 😀 It’s also important that you can quickly show your work to viewers from all over the world.\r\n<h3>How did you find out about Krita?</h3>\r\nOne day I decided to change my operating system and I chose Linux. And then I needed a program for drawing, so I tried some programs and Krita was the best for me.\r\n<h3>What was your first impression?</h3>\r\nBefore my experience with Krita I used some painting applications, so it was easy for me, because all tools and options were understandable, comfortable and useful for my art.\r\n<h3>What do you love about Krita?</h3>\r\nFirstly, I like it that there are a lot of different brushes with the opportunity for rine-tuning as you want. In the latest version of Krita all brushes from the standard set became the best of the best. These brushes are all that I need for my artworks. Also there are many cool themes and interface settings.\r\n\r\n<img class=\"aligncenter size-medium wp-image-112\" src=\"http://localhost:8888/wp-content/uploads/2018/09/lord_of_dreams-300x169.jpg\" alt=\"lor of dreams by Serhii\" width=\"300\" height=\"169\" />\r\n<h3>What do you think needs improvement in Krita? Is there anything that really annoys you?</h3>\r\nI am satisfied with everything in Krita. I would like the big brushes to work a little faster, if it’s possible. Generally, developers of Krita in each version make this app better and I want them to continue their work in the same vein and don’t stop.\r\n<h3>What sets Krita apart from the other tools that you use?</h3>\r\nFor me this is the only application for drawing and digital painting that I can use in Linux. Of course, there are Gimp and Mypaint, but they’re not really right for me, so Krita is the best app for digital painting in Linux.\r\n<h3>If you had to pick one favourite of all your work done in Krita so far, what would it be, and why?</h3>\r\n<img class=\"aligncenter size-medium wp-image-113\" src=\"http://localhost:8888/wp-content/uploads/2018/09/unstoppable-300x169.jpg\" alt=\"unstoppable by Serhii\" width=\"300\" height=\"169\" />\r\n\r\nNow I think that my favourite illustration is “Unstoppable”, because in this picture there is a funny plot, as it seems to me. Like many of my works it is in the fantasy genre, and I like that best.\r\n<h3>What techniques and brushes did you use in it?</h3>\r\nI used a technique that is similar to traditional – one canvas without any layers. What about brushes, I create my artwork with help of “Pencil-2” for sketch, “Texture Big” for basic colors, “Basic-2 Opacity” and “Bristles-2 Flat Rough” for details.\r\n<h3>Where can people see more of your work?</h3>\r\nYoutube: <a href=\"https://www.youtube.com/user/grafikwork\">https://www.youtube.com/user/grafikwork</a>\r\nInstagram: <a href=\"https://www.instagram.com/serg_grafikwork/\">https://www.instagram.com/serg_grafikwork/</a>\r\nArtstation: <a href=\"https://www.artstation.com/serggrafik\">https://www.artstation.com/serggrafik</a>\r\nTwitter: <a href=\"https://twitter.com/Serg_Grafik\">https://twitter.com/Serg_Grafik</a>\r\nFacebook: <a href=\"https://www.facebook.com/serg.grafik\">https://www.facebook.com/serg.grafik</a>\r\nDeviantart: <a href=\"https://www.deviantart.com/grafikwork\">https://www.deviantart.com/grafikwork</a>\r\n<h3>Anything else you’d like to share?</h3>\r\nI wish the team of developers to continue their fantastic work on the creation of this application and I want to see how many more artists use Krita for their creativity and making artworks.', 'Interview with Serhii', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-09-17 00:00:02', '2018-09-17 03:00:02', '', 108, 'http://localhost:8888/108-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-09-17 00:45:03', '2018-09-17 03:45:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"87\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'News', 'news', 'publish', 'closed', 'closed', '', 'group_5b9f2322bc8d5', '', '', '2018-09-17 01:09:57', '2018-09-17 04:09:57', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=115', 5, 'acf-field-group', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(116, 1, '2018-09-17 00:45:03', '2018-09-17 03:45:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'news_title', 'publish', 'closed', 'closed', '', 'field_5b9f232ba4e70', '', '', '2018-09-17 00:45:03', '2018-09-17 03:45:03', '', 115, 'http://localhost:8888/?post_type=acf-field&p=116', 0, 'acf-field', '', 0),
(117, 1, '2018-09-17 01:11:23', '2018-09-17 04:11:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Highlight Post', 'highlight-post', 'publish', 'closed', 'closed', '', 'group_5b9f291c33ad6', '', '', '2018-09-21 03:04:18', '2018-09-21 06:04:18', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=117', 6, 'acf-field-group', '', 0),
(118, 1, '2018-09-17 01:11:23', '2018-09-17 04:11:23', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:67:\"Check this box if you want display this post bigger than the others\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Highlight', 'highlight', 'publish', 'closed', 'closed', '', 'field_5b9f292c9cab4', '', '', '2018-09-21 03:04:18', '2018-09-21 06:04:18', '', 117, 'http://localhost:8888/?post_type=acf-field&#038;p=118', 0, 'acf-field', '', 0),
(119, 1, '2018-09-18 19:29:03', '2018-09-18 22:29:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-gallery.php\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:5:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:14:\"featured_image\";i:3;s:10:\"categories\";i:4;s:4:\"tags\";}s:11:\"description\";s:0:\"\";}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'group_5ba17bc65c4fe', '', '', '2018-09-21 02:16:55', '2018-09-21 05:16:55', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=119', 7, 'acf-field-group', '', 0),
(120, 1, '2018-09-18 19:29:03', '2018-09-18 22:29:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'gallery_title', 'publish', 'closed', 'closed', '', 'field_5ba17bcea8c32', '', '', '2018-09-18 19:29:03', '2018-09-18 22:29:03', '', 119, 'http://localhost:8888/?post_type=acf-field&p=120', 0, 'acf-field', '', 0),
(121, 1, '2018-09-18 19:29:03', '2018-09-18 22:29:03', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:2:\"br\";}', 'Description', 'gallery_text', 'publish', 'closed', 'closed', '', 'field_5ba17beea8c33', '', '', '2018-09-18 19:29:03', '2018-09-18 22:29:03', '', 119, 'http://localhost:8888/?post_type=acf-field&p=121', 1, 'acf-field', '', 0),
(122, 1, '2018-09-18 20:59:41', '2018-09-18 23:59:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"artworks\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:9:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:6:\"author\";i:5;s:15:\"page_attributes\";i:6;s:14:\"featured_image\";i:7;s:10:\"categories\";i:8;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Artwork Settings', 'artwork-settings', 'publish', 'closed', 'closed', '', 'group_5ba18f4a5ddfc', '', '', '2018-09-20 02:04:28', '2018-09-20 05:04:28', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=122', 8, 'acf-field-group', '', 0),
(123, 1, '2018-09-18 20:59:41', '2018-09-18 23:59:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Artist\'s name\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Artist', 'artwork_artist', 'publish', 'closed', 'closed', '', 'field_5ba18f653d29d', '', '', '2018-09-18 20:59:41', '2018-09-18 23:59:41', '', 122, 'http://localhost:8888/?post_type=acf-field&p=123', 0, 'acf-field', '', 0),
(124, 1, '2018-09-18 20:59:41', '2018-09-18 23:59:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:15:\"Artwork\'s title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'artwork_title', 'publish', 'closed', 'closed', '', 'field_5ba18f893d29e', '', '', '2018-09-18 20:59:41', '2018-09-18 23:59:41', '', 122, 'http://localhost:8888/?post_type=acf-field&p=124', 1, 'acf-field', '', 0),
(125, 1, '2018-09-18 20:59:41', '2018-09-18 23:59:41', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Artwork', 'artwork_image', 'publish', 'closed', 'closed', '', 'field_5ba190053d29f', '', '', '2018-09-19 16:43:56', '2018-09-19 19:43:56', '', 122, 'http://localhost:8888/?post_type=acf-field&#038;p=125', 2, 'acf-field', '', 0),
(127, 1, '2018-09-18 20:59:46', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-18 20:59:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=drawings&p=127', 0, 'drawings', '', 0),
(128, 1, '2018-09-18 21:03:29', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-18 21:03:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=drawings&p=128', 0, 'drawings', '', 0),
(129, 1, '2018-09-18 21:32:43', '2018-09-19 00:32:43', '', '#0', '', 'trash', 'closed', 'closed', '', '0__trashed', '', '', '2018-09-19 17:20:15', '2018-09-19 20:20:15', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=129', 0, 'artworks', '', 0),
(130, 1, '2018-09-18 21:29:17', '2018-09-19 00:29:17', '', 'fighter_by_eric_lee', '', 'inherit', 'open', 'closed', '', 'fighter_by_eric_lee', '', '', '2018-09-18 21:32:43', '2018-09-19 00:32:43', '', 129, 'http://localhost:8888/wp-content/uploads/2018/09/fighter_by_eric_lee.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2018-09-18 21:37:39', '2018-09-19 00:37:39', '', '#1', '', 'trash', 'closed', 'closed', '', '1__trashed', '', '', '2018-09-19 17:20:56', '2018-09-19 20:20:56', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=131', 0, 'artworks', '', 0),
(132, 1, '2018-09-18 21:37:26', '2018-09-19 00:37:26', '', 'elf_warrior_by_alex-sabo', '', 'inherit', 'open', 'closed', '', 'elf_warrior_by_alex-sabo', '', '', '2018-09-18 21:37:40', '2018-09-19 00:37:40', '', 131, 'http://localhost:8888/wp-content/uploads/2018/09/elf_warrior_by_alex-sabo.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2018-09-18 21:38:29', '2018-09-19 00:38:29', '', '#2', '', 'trash', 'closed', 'closed', '', '2__trashed', '', '', '2018-09-19 17:20:53', '2018-09-19 20:20:53', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=133', 0, 'artworks', '', 0),
(134, 1, '2018-09-18 21:38:09', '2018-09-19 00:38:09', '', 'cranes_by_namito', '', 'inherit', 'open', 'closed', '', 'cranes_by_namito', '', '', '2018-09-18 21:38:29', '2018-09-19 00:38:29', '', 133, 'http://localhost:8888/wp-content/uploads/2018/09/cranes_by_namito.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2018-09-19 16:33:37', '2018-09-19 19:33:37', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:170:\"Set the number of artworks to show in the gallery. \r\n\r\nIf the number n is lower than the total, it will show the last n artworks.\r\n\r\n Set -1 if you want to show them all.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:1:\"n\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:-1;s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Number of artworks', 'gallery_items', 'publish', 'closed', 'closed', '', 'field_5ba2a3a211846', '', '', '2018-09-19 16:38:17', '2018-09-19 19:38:17', '', 119, 'http://localhost:8888/?post_type=acf-field&#038;p=135', 2, 'acf-field', '', 0),
(136, 1, '2018-09-19 17:22:15', '2018-09-19 20:22:15', '', '#0', '', 'publish', 'closed', 'closed', '', '0', '', '', '2018-09-21 22:12:56', '2018-09-22 01:12:56', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=136', 0, 'artworks', '', 0),
(137, 1, '2018-09-19 19:17:07', '2018-09-19 22:17:07', '', '#1', '', 'publish', 'closed', 'closed', '', '137', '', '', '2018-09-21 22:13:36', '2018-09-22 01:13:36', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=137', 0, 'artworks', '', 0),
(138, 1, '2018-09-19 19:18:25', '2018-09-19 22:18:25', '', '#2', '', 'publish', 'closed', 'closed', '', '2', '', '', '2018-09-21 22:14:02', '2018-09-22 01:14:02', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=138', 0, 'artworks', '', 0),
(139, 1, '2018-09-19 19:27:33', '2018-09-19 22:27:33', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:8:\"vertical\";s:8:\"Vertical\";s:10:\"horizontal\";s:10:\"Horizontal\";s:6:\"square\";s:6:\"Square\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:6:\"square\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'Orientation', 'artwork_orientation', 'publish', 'closed', 'closed', '', 'field_5ba2cc3dd0f5e', '', '', '2018-09-19 19:34:03', '2018-09-19 22:34:03', '', 122, 'http://localhost:8888/?post_type=acf-field&#038;p=139', 3, 'acf-field', '', 0),
(140, 1, '2018-09-19 20:08:02', '2018-09-19 23:08:02', '', '#3', '', 'publish', 'closed', 'closed', '', '3', '', '', '2018-09-21 22:19:18', '2018-09-22 01:19:18', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=140', 0, 'artworks', '', 0),
(141, 1, '2018-09-19 20:07:40', '2018-09-19 23:07:40', '', 'wasteland_by_kateryna_herasymenko', '', 'inherit', 'open', 'closed', '', 'wasteland_by_kateryna_herasymenko', '', '', '2018-09-19 20:08:02', '2018-09-19 23:08:02', '', 140, 'http://localhost:8888/wp-content/uploads/2018/09/wasteland_by_kateryna_herasymenko.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2018-09-19 20:30:17', '2018-09-19 23:30:17', '', '#4', '', 'publish', 'closed', 'closed', '', '4', '', '', '2018-09-21 22:14:46', '2018-09-22 01:14:46', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=142', 0, 'artworks', '', 0),
(143, 1, '2018-09-19 20:29:48', '2018-09-19 23:29:48', '', 'dragon_done_in_krita_by_grzanka-dbzdx68', '', 'inherit', 'open', 'closed', '', 'dragon_done_in_krita_by_grzanka-dbzdx68', '', '', '2018-09-19 20:30:17', '2018-09-19 23:30:17', '', 142, 'http://localhost:8888/wp-content/uploads/2018/09/dragon_done_in_krita_by_grzanka-dbzdx68.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2018-09-19 20:33:01', '2018-09-19 23:33:01', '', '#5', '', 'publish', 'closed', 'closed', '', '5', '', '', '2018-09-21 22:15:31', '2018-09-22 01:15:31', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=144', 0, 'artworks', '', 0),
(145, 1, '2018-09-19 20:32:31', '2018-09-19 23:32:31', '', 'liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw.png', '', 'inherit', 'open', 'closed', '', 'liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw-png', '', '', '2018-09-19 20:33:01', '2018-09-19 23:33:01', '', 144, 'http://localhost:8888/wp-content/uploads/2018/09/liu_yun_sheng_digital_painting_study_krita_made____by_luchoinzunza-dc9bjgw-png.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2018-09-19 20:34:41', '2018-09-19 23:34:41', '', '#6', '', 'publish', 'closed', 'closed', '', '6', '', '', '2018-09-21 22:10:44', '2018-09-22 01:10:44', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=146', 0, 'artworks', '', 0),
(147, 1, '2018-09-19 20:38:38', '2018-09-19 23:38:38', '', '#7', '', 'publish', 'closed', 'closed', '', '147', '', '', '2018-09-21 22:16:00', '2018-09-22 01:16:00', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=147', 0, 'artworks', '', 0),
(148, 1, '2018-09-19 20:39:26', '2018-09-19 23:39:26', '', '#8', '', 'publish', 'closed', 'closed', '', '8', '', '', '2018-09-21 22:16:35', '2018-09-22 01:16:35', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=148', 0, 'artworks', '', 0),
(149, 1, '2018-09-19 20:39:12', '2018-09-19 23:39:12', '', 'tiger_by_eric_lee', '', 'inherit', 'open', 'closed', '', 'tiger_by_eric_lee', '', '', '2018-09-19 20:39:27', '2018-09-19 23:39:27', '', 148, 'http://localhost:8888/wp-content/uploads/2018/09/tiger_by_eric_lee.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2018-09-19 20:41:20', '2018-09-19 23:41:20', '', '#9', '', 'publish', 'closed', 'closed', '', '9', '', '', '2018-09-21 22:17:20', '2018-09-22 01:17:20', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=150', 0, 'artworks', '', 0),
(151, 1, '2018-09-19 20:40:50', '2018-09-19 23:40:50', '', 'lady_night_speedpainting_by_ramon_miranda', '', 'inherit', 'open', 'closed', '', 'lady_night_speedpainting_by_ramon_miranda', '', '', '2018-09-19 20:41:20', '2018-09-19 23:41:20', '', 150, 'http://localhost:8888/wp-content/uploads/2018/09/lady_night_speedpainting_by_ramon_miranda.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2018-09-19 20:42:05', '2018-09-19 23:42:05', '', '#10', '', 'publish', 'closed', 'closed', '', '10', '', '', '2018-09-21 22:17:46', '2018-09-22 01:17:46', '', 0, 'http://localhost:8888/?post_type=artworks&#038;p=152', 0, 'artworks', '', 0),
(153, 1, '2018-09-20 01:02:16', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-20 01:02:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=artworks&p=153', 0, 'artworks', '', 0),
(154, 1, '2018-09-20 02:13:00', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-20 02:13:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=acf-field-group&p=154', 0, 'acf-field-group', '', 0),
(157, 1, '2018-09-20 02:22:29', '2018-09-20 05:22:29', '', 'krita_peace', '', 'inherit', 'open', 'closed', '', 'krita_peace', '', '', '2018-09-20 02:22:29', '2018-09-20 05:22:29', '', 83, 'http://localhost:8888/wp-content/uploads/2018/09/krita_peace.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2018-09-21 02:20:00', '2018-09-21 05:20:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-gallery.php\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Works Form', 'works-form', 'publish', 'closed', 'closed', '', 'group_5ba47ecdd2bb5', '', '', '2018-09-21 02:31:23', '2018-09-21 05:31:23', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=158', 9, 'acf-field-group', '', 0),
(159, 1, '2018-09-21 02:20:00', '2018-09-21 05:20:00', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Display form', 'gallery_display_form', 'publish', 'closed', 'closed', '', 'field_5ba47efcca374', '', '', '2018-09-21 02:31:23', '2018-09-21 05:31:23', '', 158, 'http://localhost:8888/?post_type=acf-field&#038;p=159', 0, 'acf-field', '', 0),
(160, 1, '2018-09-21 02:20:00', '2018-09-21 05:20:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5ba47efcca374\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Form title', 'gallery_form_title', 'publish', 'closed', 'closed', '', 'field_5ba47f44ca375', '', '', '2018-09-21 02:20:00', '2018-09-21 05:20:00', '', 158, 'http://localhost:8888/?post_type=acf-field&p=160', 1, 'acf-field', '', 0),
(162, 1, '2018-09-21 03:07:02', '2018-09-21 06:07:02', 'Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!', 'lala', '', 'trash', 'open', 'open', '', 'lala__trashed', '', '', '2018-09-21 21:08:55', '2018-09-22 00:08:55', '', 0, 'http://localhost:8888/?p=162', 0, 'post', '', 0),
(163, 1, '2018-09-21 03:07:02', '2018-09-21 06:07:02', 'Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!', 'lala', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2018-09-21 03:07:02', '2018-09-21 06:07:02', '', 162, 'http://localhost:8888/162-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2018-09-21 03:08:54', '2018-09-21 06:08:54', 'Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!', 'lalala', '', 'trash', 'open', 'open', '', 'lalala__trashed', '', '', '2018-09-21 21:08:54', '2018-09-22 00:08:54', '', 0, 'http://localhost:8888/?p=164', 0, 'post', '', 0),
(165, 1, '2018-09-21 03:08:54', '2018-09-21 06:08:54', 'Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!', 'lalala', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2018-09-21 03:08:54', '2018-09-21 06:08:54', '', 164, 'http://localhost:8888/164-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2018-09-21 21:08:55', '2018-09-22 00:08:55', 'Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-21 21:08:55', '2018-09-22 00:08:55', '', 1, 'http://localhost:8888/1-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'logo', '80'),
(2, 3, '_logo', 'field_5b9e9c22ffbc4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Interview', 'interview', 0),
(3, 'Top Navigation', 'top-navigation', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(89, 2, 0),
(99, 3, 0),
(100, 3, 0),
(101, 3, 0),
(102, 3, 0),
(103, 3, 0),
(104, 3, 0),
(108, 2, 0),
(162, 1, 0),
(164, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jjjjota'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"b921400c48adcdfd862da35893b7a4dce269911f4116fad48ebde56b85dbb311\";a:4:{s:10:\"expiration\";i:1537679664;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0\";s:5:\"login\";i:1537506864;}}'),
(17, 1, 'wp_user-settings', 'editor=tinymce&hidetb=0&libraryContent=browse&mfold=o&align=center&editor_expand=on&unfold=0'),
(18, 1, 'wp_user-settings-time', '1537385819'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '75'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:\"title-attribute\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:18:\"add-post-type-post\";i:1;s:12:\"add-category\";i:2;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'closedpostboxes_page', 'a:6:{i:0;s:23:\"acf-group_5b934ac95b770\";i:1;s:23:\"acf-group_5b94b00f307cf\";i:2;s:23:\"acf-group_5b96b6b573b8d\";i:3;s:23:\"acf-group_5b972b7bd43c7\";i:4;s:13:\"pageparentdiv\";i:5;s:12:\"postimagediv\";}'),
(25, 1, 'metaboxhidden_page', 'a:13:{i:0;s:23:\"acf-group_5b91ce1bdd793\";i:1;s:23:\"acf-group_5b934ac95b770\";i:2;s:23:\"acf-group_5b94b00f307cf\";i:3;s:23:\"acf-group_5b96b6b573b8d\";i:4;s:23:\"acf-group_5b972b7bd43c7\";i:5;s:23:\"acf-group_5b9f2322bc8d5\";i:6;s:23:\"acf-group_5b9f291c33ad6\";i:7;s:23:\"acf-group_5ba18f4a5ddfc\";i:8;s:12:\"postimagediv\";i:9;s:16:\"commentstatusdiv\";i:10;s:11:\"commentsdiv\";i:11;s:7:\"slugdiv\";i:12;s:9:\"authordiv\";}'),
(26, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(27, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(29, 1, 'closedpostboxes_post', 'a:2:{i:0;s:11:\"categorydiv\";i:1;s:16:\"tagsdiv-post_tag\";}'),
(30, 1, 'metaboxhidden_post', 'a:15:{i:0;s:23:\"acf-group_5b91ce1bdd793\";i:1;s:23:\"acf-group_5b934ac95b770\";i:2;s:23:\"acf-group_5b94b00f307cf\";i:3;s:23:\"acf-group_5b96b6b573b8d\";i:4;s:23:\"acf-group_5b972b7bd43c7\";i:5;s:23:\"acf-group_5b9f2322bc8d5\";i:6;s:23:\"acf-group_5ba17bc65c4fe\";i:7;s:23:\"acf-group_5ba18f4a5ddfc\";i:8;s:23:\"acf-group_5ba47ecdd2bb5\";i:9;s:11:\"postexcerpt\";i:10;s:13:\"trackbacksdiv\";i:11;s:16:\"commentstatusdiv\";i:12;s:11:\"commentsdiv\";i:13;s:7:\"slugdiv\";i:14;s:9:\"authordiv\";}'),
(31, 1, 'closedpostboxes_drawings', 'a:0:{}'),
(32, 1, 'metaboxhidden_drawings', 'a:10:{i:0;s:23:\"acf-group_5b91ce1bdd793\";i:1;s:23:\"acf-group_5b934ac95b770\";i:2;s:23:\"acf-group_5b94b00f307cf\";i:3;s:23:\"acf-group_5b96b6b573b8d\";i:4;s:23:\"acf-group_5b972b7bd43c7\";i:5;s:23:\"acf-group_5b9f2322bc8d5\";i:6;s:23:\"acf-group_5b9f291c33ad6\";i:7;s:23:\"acf-group_5ba17bc65c4fe\";i:8;s:11:\"categorydiv\";i:9;s:7:\"slugdiv\";}'),
(33, 1, 'meta-box-order_drawings', 'a:4:{s:15:\"acf_after_title\";s:215:\"acf-group_5b91ce1bdd793,acf-group_5b934ac95b770,acf-group_5b94b00f307cf,acf-group_5b96b6b573b8d,acf-group_5b972b7bd43c7,acf-group_5b9f2322bc8d5,acf-group_5b9f291c33ad6,acf-group_5ba17bc65c4fe,acf-group_5ba18f4a5ddfc\";s:4:\"side\";s:38:\"submitdiv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(34, 1, 'screen_layout_drawings', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jjjjota', '$P$BUVfVZkDXqegFRLXUlQk5yl.vCZol2.', 'jjjjota', 'ctrl-j@outlook.es', '', '2018-09-05 00:39:21', '', 0, 'jjjjota');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_alm`
--
ALTER TABLE `wp_alm`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_alm`
--
ALTER TABLE `wp_alm`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;
--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;
--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
